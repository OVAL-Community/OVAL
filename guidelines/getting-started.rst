.. _getting-started:

Getting Started
===============

Are you new to OVAL? Wondering what it is and how it's used? Read on!

What is OVAL?
-------------

OVAL is an open, standardized assertion language written in xml. With the goal of easing interoperability between security tools, it includes content for vulnerability assessment, configuration management, system inventory, and patch management. Security experts, system administrators, and software developers from industry, government, and academia have collaborated to write OVAL, and this consensus is one of its greatest attributes.

Anyone can write OVAL, and we welcome new contributors.

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

OVAL Structure
--------------

OVAL is made up of:

definitions
  collections of logical statements that combine to make an overall assertion about a system state as well as metadata about the assertion.

tests
  definitions of the relationship between an OVAL Object and zero or more OVAL States, specifying exactly how many OVAL Items must exist on the system and how many of those OVAL Items must satisfy the set of referenced OVAL States.

objects
  definitions of platform-specific capabilities.

  *A concrete OVAL Object may define a set of 0 or more OVAL Behaviors. OVAL Behaviors are actions that can further specify the set of OVAL Items that match an OVAL Object.*

states
  descriptions of the necessary conditions under which a collected OVAL Item should be considered a passing check.

variables
  brief descr of role

An Annotated Sample
-------------------

Hello world example with description of pieces.

OVAL Features
-------------

OVAL is a powerful language that supports:

* high-level feature list
* ...

The OVAL Schemas
----------------

What the schemas for, reading docs, using for validation, etc.


Related Standards
-----------------

OVAL's role in relation to XCCDF, SCE, CPE, Datastreams, etc.

XCCDF
  text

SCE
  text

CPE
  text

Datastreams
  text

Next Steps
----------

A list of ways to learn more (read the docs, view additional resources, etc.)
* `Additional Resources <http://oval-community-guidelines.readthedocs.io/en/latest/additional-resources.html>`_
