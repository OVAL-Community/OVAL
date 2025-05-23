Open Vulnerability and Assessment Language: Junos System Characteristics  
=========================================================
* Schema: Junos System Characteristics  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Junos-specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

This schema was originally developed by David Solin at jOVAL.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`xml_config_item`  
* :ref:`show_item`  
* :ref:`version_item`  
* :ref:`xml_show_item`  
  
______________
  
.. _xml_config_item:  
  
< xml_config_item >  
---------------------------------------------------------
Stores information about the existence of a particular XPATH query result from the JunOS XML config file.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - xpath  
      - oval-sc:EntityItemStringType (0..1)  
      - An XPATH 1.0 expression that was evaluated against the XML config file.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The result of the evaluation of the XPATH expression against the XML config file.  
  
______________
  
.. _show_item:  
  
< show_item >  
---------------------------------------------------------
Stores the resulting configuration data provided by the execution of a specific show command.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - subcommand  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the SHOW sub-command.  
    * - value  
      - oval-sc:EntityItemStringType (0..1)  
      - The value returned from by the specified SHOW sub-command. This may consist of multiple lines of information.  
  
______________
  
.. _version_item:  
  
< version_item >  
---------------------------------------------------------
The version_item holds information about the version of a particular component of the JunOS operating system. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - component  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the JunOS component whose version should be retrieved.  
    * - raw_value  
      - oval-sc:EntityItemStringType (0..1)  
      - The raw release version string for the component, e.g., 12.2R6.1 or 12.1X44-D10.4.  
    * - major  
      - oval-sc:EntityItemIntType (0..1)  
      - The part of the release version of the component corresponding to the year in which the release occurred. For example, the major value for 12.2R6.1 would be '12'.  
    * - minor  
      - oval-sc:EntityItemIntType (0..1)  
      - The part of the release version of the component corresponding to the quarter in which the release occurred. For example, the minor value for 12.2R6.1 would be '2'.  
    * - type  
      - junos-sc:EntityItemJunosReleaseTypeType (0..1)  
      - The release type embedded in the version of the component. For example, the type value for 12.2R6.1 is 'R'.  
    * - build  
      - oval-sc:EntityItemIntType (0..1)  
      - The build number of the component's version. For example, the revision for 12.2R6.1 has a build number of '6'; 12.1X44-D10.4 has a build number of '44'.  
    * - maintenance_release  
      - oval-sc:EntityItemIntType (0..1)  
      - A maintenance_release value can appear in an R-type service release or an X-type release (where it takes the value of the D-number). For example, version 14.2R3-S4.5 has a maintenance_release of '4'. For version 10.4S4.2, the maintenance_release entity would have a status of 'does not exist'. For version 12.1X44-D10.4, the maintenance_release entity value would be '10'.  
    * - spin  
      - oval-sc:EntityItemIntType (0..1)  
      - The spin number of the component. For example, 12.2R6.1 has a spin value of '1'; 12.1X44-D10.4 has a spin value of '4'.  
    * - build_date  
      - oval-sc:EntityItemIntType (0..1)  
      - The build date of the component, specified in milliseconds since the Epoch (midnight, January 1, 1970 GMT).  
  
______________
  
.. _xml_show_item:  
  
< xml_show_item >  
---------------------------------------------------------
Stores the result of the application of an XPATH query applied to the JunOS configuration data provided by the execution of a specific show command, which has been piped to "display xml".

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - subcommand  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of a SHOW sub-command to be tested.  
    * - xpath  
      - oval-sc:EntityItemStringType (0..1)  
      - An XPATH 1.0 expression that should be evaluated against the XML data resulting from the XML show subcommand.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The result of the evaluation of the XPATH expression against the XML data returned from the XML show subcommand.  
  
.. _EntityItemJunosReleaseTypeType:  
  
== EntityItemJunosReleaseTypeType ==  
---------------------------------------------------------
The EntityItemJunosReleaseTypeType complex type defines the different values that are valid for the release_type entity of a system_metric state. These values describe the release type specified in the raw version string.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
