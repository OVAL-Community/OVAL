# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: CatOS Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Cisco CatOS specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here

This schema was originally developed by Yuzheng Zhou and Eric Grey at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ line_test ](#line_test)  
 *[ module_test ](#module_test)  
 *[ version55_test ](#version55_test)  
 *[ ~~version_test~~ ](#version_test)  
  
______________
  
## <a name="line_test"></a>< line_test >

The line_test is used to check the properties of specific output lines from a SHOW command, such as show running-config. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a line_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="line_object"></a>< line_object >

The line_object element is used by a line_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A line_object consists of a show_subcommand entity that is the name of a SHOW sub-command to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| show_subcommand | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of a SHOW sub-command.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="line_state"></a>< line_state >

The line_state element defines the different information that can be used to evaluate the result of a specific SHOW sub-command. This includes the name of ths sub-command and the corresponding config line. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| show_subcommand | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the SHOW sub-command.</div>|  
| config_line | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned from by the specified SHOW sub-command.</div>|  
  
______________
  
## <a name="module_test"></a>< module_test >

The module test reveals module information in Cisco Catalyst switches. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a module_object and the optional state element specifies the metadata to check.

The module_test is based off the SHOW MODULE command. Having a separate module_test, as opposed to a general command_test, enables running an evaluation based on OVAL without having interactive command access to the device.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="module_object"></a>< module_object >

The module_object element is used by a module test to specify the module to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions schema.

A module object consists of a single module_number entity that identifies the module to be used.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| module_number | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>A number that identifies the a specific module.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="module_state"></a>< module_state >

The module_state element defines the module information held within a Cisco Catalyst switch. The module_number, type, and model element specifies the number, type and model of the module respectively. The software_major_release, software_individual_release and software_version_id elements specify the software version information of the module. For instance, if the software version is 8.5(4c)GLX, then software_major_release is 8.5GLX, software_individual_release is 4 and software_version_id is c. Similarly, the hardware_major_release, hardware_individual_release, firmware_major_release and firmware_individual_release elements reveal the hardware and firmware version information of the module.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| module_number | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>A number that identifies the a specific module.</div>|  
| type | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The type of module.</div>|  
| model | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The model of a module.</div>|  
| software_major_release | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The major relase of the software of a module to check for.</div>|  
| software_individual_release | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The individual release of the software of the module to check for.</div>|  
| software_version_id | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The vesion id of the software of a module to check for.</div>|  
| hardware_major_release | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The hardware major release of a module to check for.</div>|  
| hardware_individual_release | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The hardware individual release of a module to check for.</div>|  
| firmware_major_release | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The major release of the firmware of a module to check for.</div>|  
| firmware_individual_release | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The individual release of the firmware of a module to check for.</div>|  
  
______________
  
## <a name="version55_test"></a>< version55_test >

The version55_test is used to check the version of the Cisco CatOS operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

The required information of version55_test can be got via a SHOW VERSION command. The separated version55_test enables an evaluation based on OVAL without having interactive command access to the device.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="version55_object"></a>< version55_object >

The version55_object element is used by a version55_test to define the different version information associated with a Cisco CatOS system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version5_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="version55_state"></a>< version55_state >

The version55_state element defines the version information held within a Cisco CatOS software release. The switch_series element specifies the Catalyst switch series. The image_name element specifies the name of the CatOS image. The catos_release element specifies the software version information of the module.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| switch_series | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The switch_series entity defines a target Catalyst switch series to check for. Each version of CatOS traditionally has target a specific Catalyst series of switches.</div>|  
| image_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The image_name entity defines a name of a CatOS image to check for.</div>|  
| catos_release | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The catos_release entity defines a release version of CatOS to check for.</div>|  
  
______________
  
## <a name="version_test"></a><  ~~version_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.5** :small_red_triangle: <br />**Reason:** Replaced by the version55_test. Due to the fact it's not clear on how to separate the CatOS version, it was decided that the catos_major_release, catos_individual_release, and catos_version_id entities would be combined into a new single entity catos_release. A new test was created to reflect these changes. See the version55_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The version test is used to check the version of the Cisco CatOS operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

The required information of version_test can be got via a SHOW VERSION command. The separated version_test enables an evaluation based on OVAL without having interactive command access to the device.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="version_object"></a><  ~~version_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.5** :small_red_triangle: <br />**Reason:** Replaced by the version55_object. Due to the fact it's not clear on how to separate the CatOS version, it was decided that the catos_major_release, catos_individual_release, and catos_version_id entities would be combined into a new single entity catos_release. A new object was created to reflect these changes. See the version55_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The version_object element is used by a version test to define the different version information associated with a Cisco CatOS system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="version_state"></a><  ~~version_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.5** :small_red_triangle: <br />**Reason:** Replaced by the version55_state. Due to the fact it's not clear on how to separate the CatOS version, it was decided that the catos_major_release, catos_individual_release, and catos_version_id entities would be combined into a new single entity catos_release. A new state was created to reflect these changes. See the version55_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The version_state element defines the version information held within a Cisco CatOS software release. The swtich_series element specifies the Catalyst switch series. The image_name element specifies the name of the CatOS image. The catos_major_release, catos_individual_release and catos_version_id elements specify the software version information of the module. For instance, if the CatOS version is 8.5(4c)GLX, then catos_major_release is 8.5GLX, catos_individual_release is 4 and catos_version_id is c.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| switch_series | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A Catalyst switch series to check for.</div>|  
| image_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of a CatOS image to check for.</div>|  
| catos_major_release | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The major release of CatOS to check for.</div>|  
| catos_individual_release | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The individual release of CatOS to check for.</div>|  
| catos_version_id | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The version id of Cat OS to check for.</div>|  
  
