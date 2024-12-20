.. _getting-started:

Getting Started
===============

Are you new to OVAL? Wondering what it is and how it's used? Read on!

What is OVAL?
-------------

OVAL is an open, standardized assertion language written in XML that standardizes how to assess and report on the machine state of computer systems. Used by the U.S. Government, the Center for Internet Security, Cisco, and McAfee, among many others, it is the most mature and widely adopted open source standard for security assessment. With the goal of easing interoperability between security tools, it includes content for vulnerability assessment, configuration management, system inventory, and patch management. Security experts, system administrators, and software developers from industry, government, and academia have collaborated to write OVAL, and this consensus is one of its greatest attributes.

Anyone can write OVAL, and we always welcome new contributors.

OVAL Use Cases
--------------

OVAL is primarily used for assessing vulnerabilities in security configurations. OVAL content can also be used in other ways, documented in the `Use Cases <http://oval-community-guidelines.readthedocs.io/en/latest/oval-design-principles.html#oval-use-cases>`_.

OVAL Structure
--------------

OVAL can be broken down into a series of components that together represent a check, validation, or idea. This can generally be expressed as a prose sentence:

|Prose|
^^^^^^^^^^^^^
.. |Prose| image:: images/oval_component_0.png
   :width: 500px
   :height: 170px

This is expressed as a definition, which references or includes the other components as seen below.

|Definitions|
^^^^^^^^^^^^^
.. |Definitions| image:: images/oval_component_1.png
   :width: 500px
   :height: 170px

definitions
  Definitions are specifications of what endpoint information should be checked and what corresponding values are expected to be found, as well as how to interpret the results of that comparison. They comprise one or more tests, which taken together represent an externally meaningful datum, such as a vulnerability state or inventory status.
|

|Tests|
^^^^^^^
.. |Tests| image:: images/oval_component_2.png
    :width: 500px
    :height: 170px

tests
  Tests are the concrete building blocks of definitions. They specify the relationship between an OVAL Object and zero or more OVAL States, matching the information to be collected with the corresponding values expected to be found.
|

|Objects|
^^^^^^^^^
.. |Objects| image:: images/oval_component_3.png
    :width: 500px
    :height: 170px

objects
  Objects define what should be collected from an endpoint.

  *A concrete OVAL Object may define a set of 0 or more OVAL Behaviors. OVAL Behaviors are actions that can further specify the set of OVAL Items that match an OVAL Object.*
|

|States|
^^^^^^^^
.. |States| image:: images/oval_component_4.png
    :width: 500px
    :height: 170px

states
  States are the expected values from an object that are compared to the information collected from an endpoint.
|

variables
  Variables provide a way to group one or more values for consistent reference within other OVAL content.
|

Sample Definition (OVAL 6.0 encapsulated style)
  tests, objects, states and variables are encapsulated within the OVAL definition.  This makes for much easier to read defintions, and much more portable content, you can copy a defintion from one content file to another.
-------------------
<snippet>
  <content><![CDATA[
.. code-block:: ${1:type}
  :linenos:
  
    <oval_definitions xmlns="urn:oval:v6:definitions" 
    xmlns:independent-def="urn:oval:v6:definitions:independent" 
    xmlns:win-def="urn:oval:v6:definitions:windows" 
    xmlns:oval="urn:oval:v6:common" 
    xmlns:oval-def="urn:oval:v6:definitions" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    
    xsi:schemaLocation="urn:oval:v6:definitions https://raw.githubusercontent.com/OVAL-Community/OVAL/refs/heads/6.0_release/oval-schemas/oval-definitions-schema.xsd 
    urn:oval:v6:common https://raw.githubusercontent.com/OVAL-Community/OVAL/refs/heads/6.0_release/oval-schemas/oval-common-schema.xsd
    urn:oval:v6:definitions:windows https://raw.githubusercontent.com/OVAL-Community/OVAL/refs/heads/6.0_release/oval-schemas/windows-definitions-schema.xsd
    urn:oval:v6:definitions:independent https://raw.githubusercontent.com/OVAL-Community/OVAL/refs/heads/6.0_release/oval-schemas/independent-definitions-schema.xsd">
    <generator>
        <oval:product_name>A human being</oval:product_name>
        <oval:schema_version>6.0</oval:schema_version>
        <oval:timestamp>2024-12-13T17:30:20</oval:timestamp>
    </generator>
    <definitions>
        <encapsulated_definition id="oval:oval-community:def:1" version="2" class="inventory">
            <metadata>
                <title>Windows is installed</title>
                <description>Computer is in the windows family</description>
            </metadata>
            <criteria>
                <criterion test_ref="oval:oval-community:tst:1" comment="The installed operating system belongs to the Microsoft Windows family" />
            </criteria>
            <tests>
                <family_test xmlns="urn:oval:v6:definitions:independent" id="oval:oval-community:tst:1" version="1" check="all" comment="The installed operating system belongs to the Microsoft Windows family">
                    <object object_ref="oval:oval-community:obj:1" />
                    <state state_ref="oval:oval-community:ste:1" />
                </family_test>
            </tests>
            <objects>
                <family_object xmlns="urn:oval:v6:definitions:independent" id="oval:oval-community:obj:1" version="1" comment="OS family" />
            </objects>
            <states>
                <family_state xmlns="urn:oval:v6:definitions:independent" id="oval:oval-community:ste:1" version="1" comment="Microsoft Windows family">
                    <family>windows</family>
                </family_state>
            </states>
        </encapsulated_definition>
    </definitions>
    </oval_definitions>


Sample OVAL 6.0 definition file (non-encapsulated style)
  This style has seperate silos of data for defintion, tests, objects, states, variables.  This makes for easy sharing of existing tests, objects, states, variables within a single file, but can make the file very hard to read/understand/maintain.  It also makes it very challenging to copy a defintion from one file to another.
-------------------
<snippet>
  <content><![CDATA[
.. code-block:: ${1:type}
  :linenos:

  <oval_definitions xmlns="urn:oval:v6:definitions" 
    xmlns:independent-def="urn:oval:v6:definitions:independent" 
    xmlns:win-def="urn:oval:v6:definitions:windows" 
    xmlns:oval="urn:oval:v6:common" 
    xmlns:oval-def="urn:oval:v6:definitions" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    
    xsi:schemaLocation="urn:oval:v6:definitions https://raw.githubusercontent.com/OVAL-Community/OVAL/refs/heads/6.0_release/oval-schemas/oval-definitions-schema.xsd 
    urn:oval:v6:common https://raw.githubusercontent.com/OVAL-Community/OVAL/refs/heads/6.0_release/oval-schemas/oval-common-schema.xsd
    urn:oval:v6:definitions:windows https://raw.githubusercontent.com/OVAL-Community/OVAL/refs/heads/6.0_release/oval-schemas/windows-definitions-schema.xsd
    urn:oval:v6:definitions:independent https://raw.githubusercontent.com/OVAL-Community/OVAL/refs/heads/6.0_release/oval-schemas/independent-definitions-schema.xsd">
    <generator>
        <oval:product_name>A human being</oval:product_name>
        <oval:schema_version>6.0</oval:schema_version>
        <oval:timestamp>2024-12-13T17:30:20</oval:timestamp>
    </generator>
    <definitions>
        <definition id="oval:oval-community:def:1" version="2" class="inventory">
            <metadata>
                <title>Windows is installed</title>
                <description>Computer is in the windows family</description>
            </metadata>
            <criteria>
                <criterion test_ref="oval:oval-community:tst:1" comment="The installed operating system belongs to the Microsoft Windows family" />
            </criteria>
        </definition>
    </definitions>
    <tests>
        <family_test xmlns="urn:oval:v6:definitions:independent" id="oval:oval-community:tst:1" version="1" check="all" comment="The installed operating system belongs to the Microsoft Windows family">
            <object object_ref="oval:oval-community:obj:1" />
            <state state_ref="oval:oval-community:ste:1" />
        </family_test>
    </tests>
    <objects>
        <family_object xmlns="urn:oval:v6:definitions:independent" id="oval:oval-community:obj:1" version="1" comment="OS family" />
    </objects>
    <states>
        <family_state xmlns="urn:oval:v6:definitions:independent" id="oval:oval-community:ste:1" version="1" comment="Microsoft Windows family">
            <family>windows</family>
        </family_state>
    </states>
  </oval_definitions>


OVAL Features
-------------

* XML- and assertion-based language 
* implementation-neutral, semantic content authoring
* enables enforcement of script-free, read-only policy
* supports content reuse
* complex first order logic
* variables in a variety of functions for string manipulation
* supports technology-neutral policy authoring
* extensible
* supports trust management through digital signatures and verifications
* automatically checkable for conformance with standard
* brings consistency and transparency to the results produced by security scanning tools
* assists in the exchange of machine-readable information between security tools
* reduces the need for IT Security Professionals to learn the proprietary languages of each of their tools

**Use OVAL to:**

* make implementation-neutral assertions about platforms and their machine states (e.g. files, registry keys, etc.)
* express policy content without defining implementation method


The OVAL Schemas
----------------

OVAL comprises a set of schemas, which correspond to unique Models that establish the logical framework for making assertions about the posture of an endpoint. The Models provide the building blocks for representing the expected and actual states of endpoints and the results of the comparison of those elements.

There are two main sets of schemas: Core and Platform Extensions. The Core Schemas form the foundation of the language, while Platform Extensions extend the Core Schemas to support different platforms, such as Windows, Linux, and Cisco IOS.



Related Standards
-----------------

XCCDF
  The `eXtensible Configuration Checklist Description Format <https://csrc.nist.gov/projects/security-content-automation-protocol/scap-specifications/xccdf>`_ language describes security checklists. Documents in this format may reference OVAL components or documents, as well as ones from other standards, creating a portable and flexible checklist.
|

CPE
  The `Common Platform Enumeration <https://cpe.mitre.org/specification/>`_ provides a standard naming scheme for IT platforms and systems. OVAL uses it to consistently identify the target platforms of checks and definitions.
|

OCIL
  The `Open Checklist Interactive Language <https://csrc.nist.gov/Projects/Security-Content-Automation-Protocol/Specifications/ocil>`_ provides a method for interviewing the end user to answer test that cannot be automated.
|

SCAP Datastreams
  The 'SCAP Datastream <https://csrc.nist.gov/projects/security-content-automation-protocol/scap-releases/scap-1-3>`_ is a format that consolidates multiple SCAP components into a single file (including OVAL).
|

ARF
  The `Asset Reporting Format <https://csrc.nist.gov/Projects/Security-Content-Automation-Protocol/Specifications/arf>`_ , is also called Result Datastream. It consolidates multiple results files into one.
|

Next Steps
----------

* `Additional Resources <http://oval-community-guidelines.readthedocs.io/en/latest/additional-resources.html>`_
