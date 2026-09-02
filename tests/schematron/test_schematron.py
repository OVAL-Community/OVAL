#!/usr/bin/env python3
"""Runtime checks for the Schematron rules embedded in the OVAL schemas.

``RuntimeRuleTests`` synthesises minimal OVAL definition documents for every
definitions schema and confirms the generic rule classes (object/state
reference integrity, filter state typing, deprecation reporting) actually fire
under lxml's ISO Schematron implementation. ``JunosFixtureTests`` keeps the
hand-written fixtures, which document the instance shape and cover the
schema-specific semantic constraint that cannot be enumerated.
"""

from __future__ import annotations

import subprocess
import sys
import tempfile
import unittest
from pathlib import Path

from lxml import etree, isoschematron

ROOT = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(ROOT / "tools"))

import check_schematron as checker  # noqa: E402

FIXTURES = Path(__file__).with_name("fixtures")
SCHEMA_DIR = ROOT / "oval-schemas"
TRANSFORM = ROOT / "tools/ExtractSchFromXSD.xsl"
OVAL_DEF_NS = "http://oval.mitre.org/XMLSchema/oval-definitions-5"
SVRL_NS = "http://purl.oclc.org/dsdl/svrl"
SVRL = {"svrl": SVRL_NS}


def build_document(
    ns: str,
    prefix: str,
    tests: tuple = (),
    objects: tuple = (),
    states: tuple = (),
) -> etree._ElementTree:
    """Build an oval_definitions document containing only the requested sections.

    ``tests`` entries are ``(name, object_ref, state_ref)``; ``objects`` entries
    are ``(name, id, filter_ref)``; ``states`` entries are ``(name, id)``. The
    reference rules consult only ``oval-def:objects`` and ``oval-def:states``,
    so no generator or definitions section is needed.
    """
    nsmap = {"oval-def": OVAL_DEF_NS, prefix: ns}
    root = etree.Element(f"{{{OVAL_DEF_NS}}}oval_definitions", nsmap=nsmap)
    if tests:
        section = etree.SubElement(root, f"{{{OVAL_DEF_NS}}}tests")
        for index, (name, object_ref, state_ref) in enumerate(tests, start=1):
            test = etree.SubElement(section, f"{{{ns}}}{name}", id=f"oval:x:tst:{index}")
            if object_ref:
                etree.SubElement(test, f"{{{ns}}}object", object_ref=object_ref)
            if state_ref:
                etree.SubElement(test, f"{{{ns}}}state", state_ref=state_ref)
    if objects:
        section = etree.SubElement(root, f"{{{OVAL_DEF_NS}}}objects")
        for name, identifier, filter_ref in objects:
            obj = etree.SubElement(section, f"{{{ns}}}{name}", id=identifier)
            if filter_ref:
                etree.SubElement(obj, f"{{{OVAL_DEF_NS}}}filter").text = filter_ref
    if states:
        section = etree.SubElement(root, f"{{{OVAL_DEF_NS}}}states")
        for name, identifier in states:
            etree.SubElement(section, f"{{{ns}}}{name}", id=identifier)
    return etree.ElementTree(root)


def svrl(
    schematron: isoschematron.Schematron, document: etree._ElementTree
) -> tuple[list[etree._Element], list[etree._Element]]:
    schematron.validate(document)
    report = schematron.validation_report
    failed = report.xpath("//svrl:failed-assert", namespaces=SVRL)
    successful = report.xpath("//svrl:successful-report", namespaces=SVRL)
    return failed, successful


def located_at(failed: list[etree._Element], *local_names: str) -> list[etree._Element]:
    """Keep failed-asserts whose @location names every given element."""
    needles = [f"local-name()='{name}'" for name in local_names]
    return [
        node
        for node in failed
        if all(needle in node.get("location", "") for needle in needles)
    ]


def reports_deprecated(successful: list[etree._Element]) -> bool:
    return any("DEPRECATED" in "".join(node.itertext()) for node in successful)


def texts(nodes: list[etree._Element]) -> str:
    return " | ".join("".join(node.itertext()).strip() for node in nodes)


class RuntimeRuleTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.audit = checker.Audit(SCHEMA_DIR)
        cls.audit.load()
        cls.transform = etree.XSLT(etree.parse(str(TRANSFORM)))
        cls.schemas: list[tuple[Path, etree._ElementTree, str, str]] = []
        for path, document in cls.audit.applicable():
            prefix = checker.schema_prefix(document)
            if prefix and checker.test_elements(document):
                ns = document.getroot().get("targetNamespace")
                cls.schemas.append((path, document, prefix, ns))
        cls._compiled: dict[Path, isoschematron.Schematron] = {}

    @classmethod
    def schematron(cls, path: Path, document: etree._ElementTree) -> isoschematron.Schematron:
        if path not in cls._compiled:
            cls._compiled[path] = checker.compile_schematron(document, cls.transform)
        return cls._compiled[path]

    def test_definitions_schemas_are_discovered(self) -> None:
        names = sorted(path.name for path, *_ in self.schemas)
        self.assertTrue(all(name.endswith("-definitions-schema.xsd") for name in names), names)
        self.assertGreater(len(names), 20, names)

    def test_dangling_object_and_state_refs_fail(self) -> None:
        for path, document, prefix, ns in self.schemas:
            schematron = self.schematron(path, document)
            for test in checker.test_elements(document):
                name = test.get("name")
                has_object, has_state = checker.reference_children(test)
                if not (has_object or has_state):
                    continue
                with self.subTest(schema=path.name, test=name):
                    doc = build_document(
                        ns,
                        prefix,
                        tests=(
                            (
                                name,
                                "oval:x:obj:missing" if has_object else None,
                                "oval:x:ste:missing" if has_state else None,
                            ),
                        ),
                    )
                    failed, _ = svrl(schematron, doc)
                    if has_object:
                        self.assertTrue(
                            located_at(failed, name, "object"),
                            f"no failed-assert for dangling object_ref; got: {texts(failed)}",
                        )
                    if has_state:
                        self.assertTrue(
                            located_at(failed, name, "state"),
                            f"no failed-assert for dangling state_ref; got: {texts(failed)}",
                        )

    def test_resolved_object_and_state_refs_pass(self) -> None:
        for path, document, prefix, ns in self.schemas:
            schematron = self.schematron(path, document)
            mappings = checker.element_mappings(document)
            for test in checker.test_elements(document):
                name = test.get("name")
                has_object, has_state = checker.reference_children(test)
                if not (has_object or has_state):
                    continue
                expected_object, expected_state = checker.expected_names(name, mappings)
                with self.subTest(schema=path.name, test=name):
                    doc = build_document(
                        ns,
                        prefix,
                        tests=(
                            (
                                name,
                                "oval:x:obj:1" if has_object else None,
                                "oval:x:ste:1" if has_state else None,
                            ),
                        ),
                        objects=((expected_object, "oval:x:obj:1", None),) if has_object else (),
                        states=((expected_state, "oval:x:ste:1"),) if has_state else (),
                    )
                    failed, _ = svrl(schematron, doc)
                    self.assertEqual(failed, [], texts(failed))

    def test_directly_deprecated_elements_report(self) -> None:
        for path, document, prefix, ns in self.schemas:
            schematron = self.schematron(path, document)
            for element in checker.deprecated_elements(document):
                name = element.get("name")
                section = checker.SECTIONS[element.get("substitutionGroup")]
                with self.subTest(schema=path.name, element=name):
                    if section == "tests":
                        doc = build_document(ns, prefix, tests=((name, None, None),))
                    elif section == "objects":
                        doc = build_document(ns, prefix, objects=((name, "oval:x:obj:1", None),))
                    else:
                        doc = build_document(ns, prefix, states=((name, "oval:x:ste:1"),))
                    failed, successful = svrl(schematron, doc)
                    self.assertTrue(
                        reports_deprecated(successful),
                        f"no DEPRECATED report; successful: {texts(successful)}",
                    )
                    self.assertEqual(failed, [], texts(failed))

    def test_non_deprecated_elements_do_not_report(self) -> None:
        for path, document, prefix, ns in self.schemas:
            schematron = self.schematron(path, document)
            deprecated = {e.get("name") for e in checker.deprecated_elements(document)}
            for element in checker.section_elements(document):
                name = element.get("name")
                if name in deprecated:
                    continue
                section = checker.SECTIONS[element.get("substitutionGroup")]
                with self.subTest(schema=path.name, element=name):
                    if section == "tests":
                        doc = build_document(ns, prefix, tests=((name, None, None),))
                    elif section == "objects":
                        doc = build_document(ns, prefix, objects=((name, "oval:x:obj:1", None),))
                    else:
                        doc = build_document(ns, prefix, states=((name, "oval:x:ste:1"),))
                    _, successful = svrl(schematron, doc)
                    self.assertFalse(
                        reports_deprecated(successful),
                        f"non-deprecated element reported as deprecated: {texts(successful)}",
                    )

    def test_filter_wrong_state_type_fails(self) -> None:
        for path, document, prefix, ns in self.schemas:
            schematron = self.schematron(path, document)
            for object_name, expected_state in checker.filterable_objects(document):
                if expected_state is None:
                    continue
                with self.subTest(schema=path.name, object=object_name):
                    doc = build_document(
                        ns,
                        prefix,
                        objects=((object_name, "oval:x:obj:1", "oval:x:ste:1"),),
                        states=(("wrong_state", "oval:x:ste:1"),),
                    )
                    failed, _ = svrl(schematron, doc)
                    self.assertTrue(
                        any("wrong type" in "".join(node.itertext()) for node in failed),
                        f"filter with wrong state type not rejected; got: {texts(failed)}",
                    )

    def test_filter_correct_state_type_passes(self) -> None:
        for path, document, prefix, ns in self.schemas:
            schematron = self.schematron(path, document)
            for object_name, expected_state in checker.filterable_objects(document):
                if expected_state is None:
                    continue
                with self.subTest(schema=path.name, object=object_name):
                    doc = build_document(
                        ns,
                        prefix,
                        objects=((object_name, "oval:x:obj:1", "oval:x:ste:1"),),
                        states=((expected_state, "oval:x:ste:1"),),
                    )
                    failed, _ = svrl(schematron, doc)
                    self.assertEqual(failed, [], texts(failed))

    def test_repository_audit_and_generation(self) -> None:
        with tempfile.TemporaryDirectory() as output:
            result = subprocess.run(
                [
                    sys.executable,
                    str(ROOT / "tools/check_schematron.py"),
                    "--schemas",
                    str(SCHEMA_DIR),
                    "--transform",
                    str(TRANSFORM),
                    "--output",
                    output,
                ],
                cwd=ROOT,
                capture_output=True,
                text=True,
                check=False,
            )
            self.assertEqual(result.returncode, 0, result.stderr)
            expected = {f"{path.stem}.sch" for path in checker.schematron_targets(self.audit)}
            self.assertEqual({p.name for p in Path(output).glob("*.sch")}, expected)


class JunosFixtureTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        transform = etree.XSLT(etree.parse(str(TRANSFORM)))
        source = etree.parse(str(SCHEMA_DIR / "junos-definitions-schema.xsd"))
        cls.schematron = checker.compile_schematron(source, transform)

    def validate(self, fixture: str) -> tuple[list[etree._Element], list[etree._Element]]:
        return svrl(self.schematron, etree.parse(str(FIXTURES / fixture)))

    def test_valid_references_pass(self) -> None:
        failed, _ = self.validate("valid-references.xml")
        self.assertEqual(failed, [])

    def test_invalid_object_reference_fails(self) -> None:
        failed, _ = self.validate("invalid-object-reference.xml")
        self.assertTrue(any("show_object" in "".join(node.itertext()) for node in failed))

    def test_invalid_state_reference_fails(self) -> None:
        failed, _ = self.validate("invalid-state-reference.xml")
        self.assertTrue(any("show_state" in "".join(node.itertext()) for node in failed))

    def test_invalid_filter_state_fails(self) -> None:
        failed, _ = self.validate("invalid-filter-state.xml")
        self.assertTrue(any("wrong type" in "".join(node.itertext()) for node in failed))

    def test_invalid_semantic_constraint_fails(self) -> None:
        failed, _ = self.validate("invalid-semantic-constraint.xml")
        self.assertTrue(any("operation attribute" in "".join(node.itertext()) for node in failed))

    def test_deprecated_element_reports(self) -> None:
        failed, successful = self.validate("deprecated-element.xml")
        self.assertEqual(failed, [])
        self.assertTrue(
            any("DEPRECATED ELEMENT" in "".join(node.itertext()) for node in successful)
        )


if __name__ == "__main__":
    unittest.main()
