This directory contains authoritative OVAL schemas in form of XSD files.
If you are after a human-readable description of those schemas, check out [OVAL Schemas on readthedocs.io](https://oval-community-guidelines.readthedocs.io/en/latest/oval-schema-documentation/index.html) that are available in the HTML form.

## Schematron validation

ISO Schematron rules are embedded in `xsd:appinfo` elements in these XSD files. The embedded rules are authoritative; standalone `.sch` files are generated build artifacts and are not committed.

Install the Python tooling dependencies and run the complete audit and regression suite. These commands need a full checkout of the OVAL repository, since release branches contain only the schemas.

```sh
python3 -m pip install -r tools/requirements.txt
make check-schematron
```

The audit compiles the XSD files, checks rule contexts and namespace declarations, verifies unique pattern IDs, confirms test-reference and filter-state coverage, checks that deprecated top-level elements have reports, extracts each schema's complete import closure, and compiles the resulting ISO Schematron.

Generate standalone Schematron files for local use with:

```sh
make schematron
```

Generated files are written to the ignored `build/schematron/` directory. `evaluation-ids.xsd` is excluded because its import has no schema location, and `xmldsig-core-schema.xsd` is excluded because it is third-party schema content without an OVAL Schematron contract.

When adding or changing a test, keep its object/state reference rules and object filter-state rule in the same XSD. Every Schematron prefix used by a rule must have a corresponding `sch:ns` declaration, pattern IDs must be unique within the schema's import closure, and a top-level element containing `oval:deprecated_info` must have a matching `sch:report`.
