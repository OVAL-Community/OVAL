# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Junos Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Junos-specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by David Solin at jOVAL.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ xml_config_test ](#xml_config_test)  
 *[ show_test ](#show_test)  
 *[ version_test ](#version_test)  
 *[ xml_show_test ](#xml_show_test)  
  
______________
  
## <a name="xml_config_test"></a>< xml_config_test >

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="xml_config_object"></a>< xml_config_object >

The xml_config_object element is used by an XML config test to define the object to be evaluated. For the most part this object checks for existence and is used without a state comparision. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| xpath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>An XPATH 1.0 expression that should be evaluated against the XML configuration file. Any valid XPATH 1.0 statement is usable with one exception, at most one field may be identified in the XPATH. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="xml_config_state"></a>< xml_config_state >

The xml_config_state element defines the different information that can be used to evaluate the result of an XPATH query against the XML configuration file. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| xpath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>An XPATH 1.0 expression that was evaluated against the XML config file.</div>|  
| value_of | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The result of the evaluation of the XPATH expression against the XML config file.</div>|  
  
______________
  
## <a name="show_test"></a>< show_test >

The show test is used to check the properties of specific output lines from a SHOW command, such as "show configuration". It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a show_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="show_object"></a>< show_object >

The show_object element is used by a show test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| subcommand | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of a SHOW sub-command to be tested.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="show_state"></a>< show_state >

The show_state element defines the different information that can be used to evaluate the result of a specific SHOW sub-command. This includes the name of the sub-command and the corresponding config output. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| subcommand | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the SHOW sub-command.</div>|  
| value | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned from by the specified SHOW sub-command. This may consist of multiple lines of information, whose raw form will be captured by the item.</div>|  
  
______________
  
## <a name="version_test"></a>< version_test >

The version_test is used to check the version of components of the JunOS operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="version_object"></a>< version_object >

The version_object element is used by a version_test to define the different version information associated with a JunOS system.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| component | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the JunOS component whose version should be retrieved.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="version_state"></a>< version_state >

The version_state element defines the version information held by a JunOS component.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| component | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the JunOS component whose version should be retrieved.</div>|  
| raw_value | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The raw release version string for the component, e.g., 12.2R6.1 or 12.1X44-D10.4.</div>|  
| major | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The part of the release version of the component corresponding to the year in which the release occurred. For example, the major value for 12.2R6.1 would be '12'.</div>|  
| minor | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The part of the release version of the component corresponding to the quarter in which the release occurred. For example, the minor value for 12.2R6.1 would be '2'.</div>|  
| type | [junos-def:EntityStateJunosReleaseTypeType](#EntityStateJunosReleaseTypeType)  (0..1) |  
||<div>The release type embedded in the version of the component. For example, the type value for 12.2R6.1 is 'R'.</div>|  
| build | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The build number of the component's version. For example, the revision for 12.2R6.1 has a build number of '6'; 12.1X44-D10.4 has a build number of '44'.</div>|  
| maintenance_release | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>A maintenance_release value can appear in an R-type service release or an X-type release (where it takes the value of the D-number). For example, version 14.2R3-S4.5 has a maintenance_release of '4'. For version 10.4S4.2, the maintenance_release entity would have a status of 'does not exist'. For version 12.1X44-D10.4, the maintenance_release entity value would be '10'.</div>|  
| spin | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The spin number of the component. For example, 12.2R6.1 has a spin value of '1'; 12.1X44-D10.4 has a spin value of '4'.</div>|  
| build_date | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The build date of the component, specified in milliseconds since the Epoch (midnight, January 1, 1970 GMT).</div>|  
  
______________
  
## <a name="xml_show_test"></a>< xml_show_test >

The XML show test is used to check the properties of specific output from an XML SHOW command, such as "show configuration | display xml". It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a xml_show_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="xml_show_object"></a>< xml_show_object >

The xml_show_object element is used by an XML show test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| subcommand | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of a SHOW sub-command to be tested.</div>|  
| xpath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>An XPATH 1.0 expression that should be evaluated against the XML data resulting from the XML show subcommand. Any valid XPATH 1.0 statement is usable with one exception, at most one field may be identified in the XPATH. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="xml_show_state"></a>< xml_show_state >

The xml_show_state element defines the different information that can be used to evaluate the result of a specific XML SHOW sub-command. This includes the name of the sub-command, the XPATH and the corresponding XPATH query result. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| subcommand | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of a SHOW sub-command to be tested.</div>|  
| xpath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>An XPATH 1.0 expression that should be evaluated against the XML data resulting from the XML show subcommand.</div>|  
| value_of | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The result of the evaluation of the XPATH expression against the XML data returned from the XML show subcommand.</div>|  
  
## <a name="EntityStateJunosReleaseTypeType"></a>== EntityStateJunosReleaseTypeType ==

The EntityStateJunosReleaseTypeType complex type defines the different values that are valid for the release_type entity of a system_metric state. These values describe the release type specified in the raw version string.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| R | <div>Indicates a normal release.</div> |  
| I | <div>Indicates an internal release.</div> |  
| F | <div>Indicates a feature release.</div> |  
| S | <div>Indicates a service release.</div> |  
| B | <div>Indicates a beta release.</div> |  
| X | <div>Indicates an exception release (e.g., every release of the SRX branch so far).</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
