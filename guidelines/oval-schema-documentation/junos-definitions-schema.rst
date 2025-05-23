Open Vulnerability and Assessment Language: Junos Definition  
=========================================================
* Schema: Junos Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Junos-specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by David Solin at jOVAL.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`xml_config_test`  
* :ref:`show_test`  
* :ref:`version_test` (Deprecated)  
* :ref:`xml_show_test` (Deprecated)  
  
______________
  
.. _xml_config_test:  
  
< xml_config_test >  
---------------------------------------------------------
**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _xml_config_object:  
  
< xml_config_object >  
---------------------------------------------------------
The xml_config_object element is used by an XML config test to define the object to be evaluated. For the most part this object checks for existence and is used without a state comparision. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - xpath  
      - oval-def:EntityObjectStringType (1..1)  
      - An XPATH 1.0 expression that should be evaluated against the XML configuration file. Any valid XPATH 1.0 statement is usable with one exception, at most one field may be identified in the XPATH. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _xml_config_state:  
  
< xml_config_state >  
---------------------------------------------------------
The xml_config_state element defines the different information that can be used to evaluate the result of an XPATH query against the XML configuration file. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - xpath  
      - oval-def:EntityStateStringType (0..1)  
      - An XPATH 1.0 expression that was evaluated against the XML config file.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The result of the evaluation of the XPATH expression against the XML config file.  
  
______________
  
.. _show_test:  
  
< show_test >  
---------------------------------------------------------
The show test is used to check the properties of specific output lines from a SHOW command, such as "show configuration". It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a show_object and the optional state element specifies the data to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _show_object:  
  
< show_object >  
---------------------------------------------------------
The show_object element is used by a show test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - subcommand  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a SHOW sub-command to be tested.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _show_state:  
  
< show_state >  
---------------------------------------------------------
The show_state element defines the different information that can be used to evaluate the result of a specific SHOW sub-command. This includes the name of the sub-command and the corresponding config output. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - subcommand  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the SHOW sub-command.  
    * - value  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned from by the specified SHOW sub-command. This may consist of multiple lines of information, whose raw form will be captured by the item.  
  
______________
  
.. _version_test:  
  
< version_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The version_test is used to check the version of components of the JunOS operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _version_object:  
  
< version_object >  
---------------------------------------------------------
The version_object element is used by a version_test to define the different version information associated with a JunOS system.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - component  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the JunOS component whose version should be retrieved.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _version_state:  
  
< version_state >  
---------------------------------------------------------
The version_state element defines the version information held by a JunOS component.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - component  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the JunOS component whose version should be retrieved.  
    * - raw_value  
      - oval-def:EntityStateStringType (0..1)  
      - The raw release version string for the component, e.g., 12.2R6.1 or 12.1X44-D10.4.  
    * - major  
      - oval-def:EntityStateIntType (0..1)  
      - The part of the release version of the component corresponding to the year in which the release occurred. For example, the major value for 12.2R6.1 would be '12'.  
    * - minor  
      - oval-def:EntityStateIntType (0..1)  
      - The part of the release version of the component corresponding to the quarter in which the release occurred. For example, the minor value for 12.2R6.1 would be '2'.  
    * - type  
      - junos-def:EntityStateJunosReleaseTypeType (0..1)  
      - The release type embedded in the version of the component. For example, the type value for 12.2R6.1 is 'R'.  
    * - build  
      - oval-def:EntityStateIntType (0..1)  
      - The build number of the component's version. For example, the revision for 12.2R6.1 has a build number of '6'; 12.1X44-D10.4 has a build number of '44'.  
    * - maintenance_release  
      - oval-def:EntityStateIntType (0..1)  
      - A maintenance_release value can appear in an R-type service release or an X-type release (where it takes the value of the D-number). For example, version 14.2R3-S4.5 has a maintenance_release of '4'. For version 10.4S4.2, the maintenance_release entity would have a status of 'does not exist'. For version 12.1X44-D10.4, the maintenance_release entity value would be '10'.  
    * - spin  
      - oval-def:EntityStateIntType (0..1)  
      - The spin number of the component. For example, 12.2R6.1 has a spin value of '1'; 12.1X44-D10.4 has a spin value of '4'.  
    * - build_date  
      - oval-def:EntityStateIntType (0..1)  
      - The build date of the component, specified in milliseconds since the Epoch (midnight, January 1, 1970 GMT).  
  
______________
  
.. _xml_show_test:  
  
< xml_show_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The XML show test is used to check the properties of specific output from an XML SHOW command, such as "show configuration | display xml". It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a xml_show_object and the optional state element specifies the data to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _xml_show_object:  
  
< xml_show_object >  
---------------------------------------------------------
The xml_show_object element is used by an XML show test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - subcommand  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a SHOW sub-command to be tested.  
    * - xpath  
      - oval-def:EntityObjectStringType (1..1)  
      - An XPATH 1.0 expression that should be evaluated against the XML data resulting from the XML show subcommand. Any valid XPATH 1.0 statement is usable with one exception, at most one field may be identified in the XPATH. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _xml_show_state:  
  
< xml_show_state >  
---------------------------------------------------------
The xml_show_state element defines the different information that can be used to evaluate the result of a specific XML SHOW sub-command. This includes the name of the sub-command, the XPATH and the corresponding XPATH query result. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - subcommand  
      - oval-def:EntityStateStringType (0..1)  
      - The name of a SHOW sub-command to be tested.  
    * - xpath  
      - oval-def:EntityStateStringType (0..1)  
      - An XPATH 1.0 expression that should be evaluated against the XML data resulting from the XML show subcommand.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The result of the evaluation of the XPATH expression against the XML data returned from the XML show subcommand.  
  
.. _EntityStateJunosReleaseTypeType:  
  
== EntityStateJunosReleaseTypeType ==  
---------------------------------------------------------
The EntityStateJunosReleaseTypeType complex type defines the different values that are valid for the release_type entity of a system_metric state. These values describe the release type specified in the raw version string.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - R  
      - | Indicates a normal release.  
    * - I  
      - | Indicates an internal release.  
    * - F  
      - | Indicates a feature release.  
    * - S  
      - | Indicates a service release.  
    * - B  
      - | Indicates a beta release.  
    * - X  
      - | Indicates an exception release (e.g., every release of the SRX branch so far).  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
