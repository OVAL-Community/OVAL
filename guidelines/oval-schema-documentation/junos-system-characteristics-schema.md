# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Junos System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Junos-specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

This schema was originally developed by David Solin at jOVAL.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="xml_config_item"></a>< xml_config_item >

Stores information about the existence of a particular XPATH query result from the JunOS XML config file.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| xpath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>An XPATH 1.0 expression that was evaluated against the XML config file.</div>|  
| value_of | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The result of the evaluation of the XPATH expression against the XML config file.</div>|  
  
______________
  
## <a name="show_item"></a>< show_item >

Stores the resulting configuration data provided by the execution of a specific show command.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| subcommand | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the SHOW sub-command.</div>|  
| value | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The value returned from by the specified SHOW sub-command. This may consist of multiple lines of information.</div>|  
  
______________
  
## <a name="version_item"></a>< version_item >

The version_item holds information about the version of a particular component of the JunOS operating system. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| component | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the JunOS component whose version should be retrieved.</div>|  
| raw_value | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The raw release version string for the component, e.g., 12.2R6.1 or 12.1X44-D10.4.</div>|  
| major | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The part of the release version of the component corresponding to the year in which the release occurred. For example, the major value for 12.2R6.1 would be '12'.</div>|  
| minor | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The part of the release version of the component corresponding to the quarter in which the release occurred. For example, the minor value for 12.2R6.1 would be '2'.</div>|  
| type | [junos-sc:EntityItemJunosReleaseTypeType](#EntityItemJunosReleaseTypeType)  (0..1) |  
||<div>The release type embedded in the version of the component. For example, the type value for 12.2R6.1 is 'R'.</div>|  
| build | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The build number of the component's version. For example, the revision for 12.2R6.1 has a build number of '6'; 12.1X44-D10.4 has a build number of '44'.</div>|  
| maintenance_release | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>A maintenance_release value can appear in an R-type service release or an X-type release (where it takes the value of the D-number). For example, version 14.2R3-S4.5 has a maintenance_release of '4'. For version 10.4S4.2, the maintenance_release entity would have a status of 'does not exist'. For version 12.1X44-D10.4, the maintenance_release entity value would be '10'.</div>|  
| spin | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The spin number of the component. For example, 12.2R6.1 has a spin value of '1'; 12.1X44-D10.4 has a spin value of '4'.</div>|  
| build_date | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The build date of the component, specified in milliseconds since the Epoch (midnight, January 1, 1970 GMT).</div>|  
  
______________
  
## <a name="xml_show_item"></a>< xml_show_item >

Stores the result of the application of an XPATH query applied to the JunOS configuration data provided by the execution of a specific show command, which has been piped to "display xml".

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| subcommand | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of a SHOW sub-command to be tested.</div>|  
| xpath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>An XPATH 1.0 expression that should be evaluated against the XML data resulting from the XML show subcommand.</div>|  
| value_of | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The result of the evaluation of the XPATH expression against the XML data returned from the XML show subcommand.</div>|  
  
## <a name="EntityItemJunosReleaseTypeType"></a>== EntityItemJunosReleaseTypeType ==

The EntityItemJunosReleaseTypeType complex type defines the different values that are valid for the release_type entity of a system_metric state. These values describe the release type specified in the raw version string.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| R | <div>Indicates a normal release.</div> |  
| I | <div>Indicates an internal release.</div> |  
| F | <div>Indicates a feature release.</div> |  
| S | <div>Indicates a service release.</div> |  
| B | <div>Indicates a beta release.</div> |  
| X | <div>Indicates an exception release (e.g., every release of the SRX branch so far).</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
