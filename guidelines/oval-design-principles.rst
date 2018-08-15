.. _oval-design-principles:

OVAL Design Principles
======================

Requirements language in this document are defined in `RFC 2119 <https://www.ietf.org/rfc/rfc2119.txt>`_.
Design principles are categorized as generally applicable or applicable to the versions as indicated. An
update mechanism is built into the language development process to account for the fact that new design
principles may be desired in the future.

General OVAL Design Princples
-----------------------------

High-Level
^^^^^^^^^^

* Capabilities SHOULD NOT require changes to scanned systems in order to implement (e.g. be read-only)
* Changes SHOULD NOT impose security issues
* Changes SHOULD NOT result in inconsistency
* Changes SHOULD NOT require obsoleted technologies or methodologies
* Changes SHOULD NOT require the use of undocumented APIs
* Changes SHOULD NOT duplicate existing capabilities unless there is a compelling reason to do so (e.g. major simplification), in which case they should be designed to allow for the deprecation and ultimate replacement of the constructs that are duplicated
* OVAL capabilities should fit into the OVAL use cases
* Capabilities SHOULD NOT dictate implementation, but should document at least one practical implementation method

Construct-Specific
^^^^^^^^^^^^^^^^^^

* An OVAL Item MUST model the posture attribute data being collected off an endpoint
* An OVAL Item MUST NOT combine multiple system-level structures
* OVAL Items SHOULD only include the OVAL Entities that the community requires
* An OVAL Object SHOULD include the minimum set of OVAL Entities needed to uniquely identify an OVAL Item collected from an endpoint

Mechanics (naming, versioning, etc.)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

* Changes SHOULD NOT break backwards compatibility within their major version (i.e. 5.x, 6.x, etc.)
* OVAL constructs MUST conform to naming conventions (http://ovalproject.github.io/getting-started/best-practices/#4-naming-conventions)
* OVAL constructs MUST follow the versioning policy

OVAL Use Cases
--------------

* **Security Advisory Distribution:** allows application and operating system vendors to release advisories in a machine-readable format, moving authoring of technical details of a vulnerability from second-hand (e.g. scanner product developers) to first-hand (product developers)
* **Vulnerability Assessment:** increases transparency into vulnerability management process, quality of checks, and ease of feature comparison between tools
* **Patch Management:** allows patch management vendors to quickly consume data from multiple sources
* **Configuration Management:** eliminates the need for IT professionals to translate paper configuration documents into something that can be applied and enforced
* **System Inventory:** shifts burden of inventory definition from best guesses by system inventory tool vendors to authoritative knowledge sources including application and operating system authors
* **Malware Artifact Hunting:** provides a standardized format for encoding malware artifacts
* **Network Access Control (NAC):** standardizes policy expression for policy checking and enforcement when an endpoint requests access to a network and on an ongoing basis for continued policy conformance
* **Auditing and Centralized Audit Validation:** captures machine configuration information that allows organizations to monitor, track, and reconstruct the transition of a system’s configuration from one state to another
* **Security Information Management Systems:** simplifies the interoperability of SIMS with a standardized data exchange format
