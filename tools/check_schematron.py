#!/usr/bin/env python3
"""Audit, extract, and compile the Schematron embedded in OVAL XSD files."""

from __future__ import annotations

import argparse
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path

from lxml import etree, isoschematron


XSD_NS = "http://www.w3.org/2001/XMLSchema"
SCH_NS = "http://purl.oclc.org/dsdl/schematron"
OVAL_COMMON_NS = "http://oval.mitre.org/XMLSchema/oval-common-5"
NS = {"xsd": XSD_NS, "sch": SCH_NS, "oval": OVAL_COMMON_NS}
QNAME = re.compile(r"(?<![@\w.-])([A-Za-z_][\w.-]*):([A-Za-z_][\w.-]*)")
EXCLUDED_SCHEMAS = {"evaluation-ids.xsd", "xmldsig-core-schema.xsd"}
# Instance section that each top-level substitution group lands in.
SECTIONS = {"oval-def:test": "tests", "oval-def:object": "objects", "oval-def:state": "states"}
# A top-level element is deprecated only when the nearest enclosing xsd:element of
# the deprecated_info is the top-level declaration itself. Deprecation of a child
# entity must not mark the whole test/object/state as deprecated.
DIRECTLY_DEPRECATED = ".//oval:deprecated_info[ancestor::xsd:element[1][parent::xsd:schema]]"


class Audit:
    def __init__(self, schema_dir: Path) -> None:
        self.schema_dir = schema_dir
        self.documents: dict[Path, etree._ElementTree] = {}
        self.elements_by_namespace: dict[str, set[str]] = defaultdict(set)
        self.errors: list[str] = []

    def error(self, path: Path, message: str) -> None:
        self.errors.append(f"{path.name}: {message}")

    def load(self) -> None:
        for path in sorted(self.schema_dir.glob("*.xsd")):
            try:
                document = etree.parse(str(path))
            except etree.XMLSyntaxError as exc:
                self.error(path, f"not well-formed XML: {exc}")
                continue
            self.documents[path] = document
            namespace = document.getroot().get("targetNamespace")
            if namespace:
                self.elements_by_namespace[namespace].update(
                    document.xpath("//xsd:element/@name", namespaces=NS)
                )

    def applicable(self) -> list[tuple[Path, etree._ElementTree]]:
        return [
            (path, document)
            for path, document in self.documents.items()
            if path.name not in EXCLUDED_SCHEMAS
        ]

    def audit_xsd_compilation(self) -> None:
        for path, document in self.applicable():
            try:
                etree.XMLSchema(document)
            except etree.XMLSchemaParseError as exc:
                self.error(path, f"XSD compilation failed: {first_error(exc)}")

    def audit_rule_structure(self) -> None:
        for path, document in self.applicable():
            for node in document.xpath("//sch:*", namespaces=NS):
                if not node.xpath("ancestor::xsd:appinfo", namespaces=NS):
                    self.error(path, f"sch:{local_name(node)} must be inside xsd:appinfo")

            ids = document.xpath("//sch:pattern/@id", namespaces=NS)
            for pattern_id, count in Counter(ids).items():
                if count > 1:
                    self.error(path, f"duplicate Schematron pattern id {pattern_id!r}")

            declared = {
                node.get("prefix"): node.get("uri")
                for node in document.xpath("//sch:ns", namespaces=NS)
            }
            declared.update(
                {
                    prefix: uri
                    for prefix, uri in document.getroot().nsmap.items()
                    if prefix and prefix not in declared
                }
            )
            for rule in document.xpath("//sch:rule[@context]", namespaces=NS):
                context = rule.get("context", "")
                for prefix, name in QNAME.findall(context):
                    namespace = declared.get(prefix)
                    if namespace is None:
                        self.error(path, f"undeclared prefix {prefix!r} in context {context!r}")
                    elif name not in self.elements_by_namespace.get(namespace, set()):
                        self.error(
                            path,
                            f"unknown element {prefix}:{name} in context {context!r}",
                        )

    def audit_reference_coverage(self) -> None:
        for path, document in self.applicable():
            prefix = schema_prefix(document)
            if not prefix:
                continue
            mappings = element_mappings(document)

            for test in test_elements(document):
                test_name = test.get("name")
                has_object, has_state = reference_children(test)
                if not has_object and not has_state:
                    continue
                expected_object, expected_state = expected_names(test_name, mappings)
                if has_object and not has_reference_assertion(
                    document, prefix, test_name, "object", expected_object
                ):
                    self.error(
                        path,
                        f"{test_name} lacks an object_ref assertion for {expected_object}",
                    )
                if has_state and not has_reference_assertion(
                    document, prefix, test_name, "state", expected_state
                ):
                    self.error(
                        path,
                        f"{test_name} lacks a state_ref assertion for {expected_state}",
                    )

            for object_name, state_name in filterable_objects(document):
                if state_name is None:
                    self.error(path, f"{object_name} accepts a filter but has no matching state")
                    continue
                if not has_filter_assertion(document, prefix, object_name, state_name):
                    self.error(
                        path,
                        f"{object_name} lacks a filter assertion for {state_name}",
                    )

    def audit_deprecation_coverage(self) -> None:
        """Require reports for deprecated declarations that appear in instance XML."""
        for path, document in self.applicable():
            prefix = schema_prefix(document)
            if not prefix:
                continue
            for declaration in deprecated_elements(document):
                name = declaration.get("name")
                qname = f"{prefix}:{name}"
                reports = document.xpath(
                    "//sch:rule[contains(@context,$qname)]/sch:report",
                    namespaces=NS,
                    qname=qname,
                )
                if not reports:
                    self.error(path, f"deprecated element {name} lacks a report")

    def nothing_to_check(self) -> list[Path]:
        """Applicable schemas with no tests, no deprecated elements and no patterns."""
        return [
            path
            for path, document in self.applicable()
            if not test_elements(document)
            and not deprecated_elements(document)
            and not document.xpath("//sch:pattern", namespaces=NS)
        ]

    def extract_and_compile(self, transform_path: Path, output_dir: Path | None) -> None:
        transform = etree.XSLT(etree.parse(str(transform_path)))
        if output_dir:
            output_dir.mkdir(parents=True, exist_ok=True)
        for path in schematron_targets(self):
            document = self.documents[path]
            try:
                extracted = extract_schematron(document, transform)
                pattern_ids = extracted.xpath("//sch:pattern/@id", namespaces=NS)
                duplicates = sorted(
                    pattern_id
                    for pattern_id, count in Counter(pattern_ids).items()
                    if count > 1
                )
                if duplicates:
                    self.error(
                        path,
                        "duplicate pattern IDs in import closure: " + ", ".join(duplicates),
                    )
                    continue
                isoschematron.Schematron(extracted, store_report=True)
            except (etree.XSLTError, etree.SchematronError, etree.XMLSyntaxError) as exc:
                self.error(path, f"Schematron extraction/compilation failed: {first_error(exc)}")
                continue
            if output_dir:
                destination = output_dir / f"{path.stem}.sch"
                extracted.write(
                    str(destination),
                    encoding="UTF-8",
                    xml_declaration=True,
                    pretty_print=True,
                )


def schema_prefix(document: etree._ElementTree) -> str | None:
    """The sch:ns prefix a schema declares for its own target namespace."""
    target_namespace = document.getroot().get("targetNamespace")
    prefixes = document.xpath(
        "//sch:ns[@uri=$uri]/@prefix", namespaces=NS, uri=target_namespace
    )
    return prefixes[0] if prefixes else None


def element_mappings(document: etree._ElementTree) -> dict[str, tuple[str | None, str | None]]:
    """test name -> (object name, state name) from oval:element_mapping annotations."""
    mappings: dict[str, tuple[str | None, str | None]] = {}
    for mapping in document.xpath("//oval:element_mapping", namespaces=NS):
        test = child_text(mapping, "test")
        if test:
            mappings[test] = (child_text(mapping, "object"), child_text(mapping, "state"))
    return mappings


def section_elements(document: etree._ElementTree) -> list[etree._Element]:
    """Named top-level elements that substitute into tests, objects or states."""
    return [
        element
        for element in document.xpath("/xsd:schema/xsd:element[@name]", namespaces=NS)
        if element.get("substitutionGroup") in SECTIONS
    ]


def test_elements(document: etree._ElementTree) -> list[etree._Element]:
    return [
        element
        for element in section_elements(document)
        if element.get("substitutionGroup") == "oval-def:test"
    ]


def reference_children(test: etree._Element) -> tuple[bool, bool]:
    """Whether a test declaration carries an object child and a state child."""
    has_object = bool(test.xpath(".//xsd:element[@name='object']", namespaces=NS))
    has_state = bool(test.xpath(".//xsd:element[@name='state']", namespaces=NS))
    return has_object, has_state


def expected_names(
    test_name: str, mappings: dict[str, tuple[str | None, str | None]]
) -> tuple[str, str]:
    """The object and state names a test's references must resolve to."""
    mapped_object, mapped_state = mappings.get(test_name, (None, None))
    stem = test_name.removesuffix("_test")
    return mapped_object or f"{stem}_object", mapped_state or f"{stem}_state"


def deprecated_elements(document: etree._ElementTree) -> list[etree._Element]:
    """Top-level tests, objects and states that are themselves deprecated."""
    return [
        element
        for element in section_elements(document)
        if element.xpath(DIRECTLY_DEPRECATED, namespaces=NS)
    ]


def filterable_objects(document: etree._ElementTree) -> list[tuple[str, str | None]]:
    """(object name, expected state name) for every object that accepts oval-def:filter.

    The state comes from the object's element_mapping when one exists, otherwise
    from the ``{stem}_state`` convention when such a top-level state is declared.
    """
    state_by_object = {
        object_name: state_name
        for object_name, state_name in element_mappings(document).values()
        if object_name and state_name
    }
    declared = set(document.xpath("/xsd:schema/xsd:element/@name", namespaces=NS))
    result: list[tuple[str, str | None]] = []
    for element in section_elements(document):
        if element.get("substitutionGroup") != "oval-def:object":
            continue
        if not element.xpath(".//xsd:element[@ref='oval-def:filter']", namespaces=NS):
            continue
        object_name = element.get("name")
        state_name = state_by_object.get(object_name)
        if state_name is None:
            candidate = f"{object_name.removesuffix('_object')}_state"
            state_name = candidate if candidate in declared else None
        result.append((object_name, state_name))
    return result


def extract_schematron(
    document: etree._ElementTree, transform: etree.XSLT
) -> etree._ElementTree:
    return etree.ElementTree(transform(document).getroot())


def compile_schematron(
    document: etree._ElementTree, transform: etree.XSLT
) -> isoschematron.Schematron:
    return isoschematron.Schematron(extract_schematron(document, transform), store_report=True)


def schematron_targets(audit: Audit) -> list[Path]:
    """Applicable schemas that carry any Schematron and so produce a .sch file."""
    return [
        path
        for path, document in audit.applicable()
        if document.xpath("//sch:*", namespaces=NS)
    ]


def local_name(node: etree._Element) -> str:
    return etree.QName(node).localname


def child_text(mapping: etree._Element, name: str) -> str | None:
    child = mapping.find(f"{{{OVAL_COMMON_NS}}}{name}")
    if child is None or not child.text:
        return None
    return child.text.strip()


def has_reference_assertion(
    document: etree._ElementTree,
    prefix: str,
    test_name: str,
    child_name: str,
    expected_name: str,
) -> bool:
    expected_context = f"{prefix}:{test_name}/{prefix}:{child_name}"
    rules = document.xpath(
        "//sch:rule[@context=$context]", namespaces=NS, context=expected_context
    )
    return any(
        expected_name in " ".join(rule.xpath("sch:assert/@test", namespaces=NS))
        for rule in rules
    )


def has_filter_assertion(
    document: etree._ElementTree, prefix: str, object_name: str, state_name: str
) -> bool:
    object_qname = f"{prefix}:{object_name}"
    for rule in document.xpath("//sch:rule", namespaces=NS):
        context = rule.get("context", "")
        tests = " ".join(rule.xpath("sch:assert/@test", namespaces=NS))
        if object_qname in context and "oval-def:filter" in context and state_name in tests:
            return True
    return False


def first_error(exc: Exception) -> str:
    error_log = getattr(exc, "error_log", None)
    if error_log is not None and len(error_log):
        return str(error_log.last_error)
    return str(exc).splitlines()[0]


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--schemas", type=Path, default=Path("oval-schemas"))
    parser.add_argument(
        "--transform", type=Path, default=Path("tools/ExtractSchFromXSD.xsl")
    )
    parser.add_argument(
        "--output",
        type=Path,
        help="write extracted .sch files to this directory; omit for check-only mode",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    audit = Audit(args.schemas)
    audit.load()
    audit.audit_xsd_compilation()
    audit.audit_rule_structure()
    audit.audit_reference_coverage()
    audit.audit_deprecation_coverage()
    audit.extract_and_compile(args.transform, args.output)
    if audit.errors:
        for error in audit.errors:
            print(f"ERROR: {error}", file=sys.stderr)
        print(f"Schematron audit failed with {len(audit.errors)} error(s).", file=sys.stderr)
        return 1
    generated = f" Generated files are in {args.output}." if args.output else ""
    print(f"Schematron audit passed for {len(audit.applicable())} XSD files.{generated}")
    idle = audit.nothing_to_check()
    if idle:
        names = ", ".join(path.name for path in idle)
        print(f"{len(idle)} of those declare no tests, deprecations or patterns: {names}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
