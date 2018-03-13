# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: PixOS Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the PIX specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by Yuzheng Zhou and Eric Grey at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ line_test ](#line_test)  
 *[ version_test ](#version_test)  
  
______________
  
## <a name="line_test"></a>< line_test >

The line_test is used to check the properties of specific output lines from a SHOW command, such as SHOW RUNNING-CONFIG. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a line_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="line_object"></a>< line_object >

The line_object element is used by a line_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A line object consists of a show_subcommand entity that is the name of a SHOW sub-command to be tested.

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
  
## <a name="version_test"></a>< version_test >

The version test is used to check the version of the PIX operating system. It is based off of the SHOW VERSION command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="version_object"></a>< version_object >

The version_object element is used by a version test to define the different version information associated with a PIX system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="version_state"></a>< version_state >

The version_state element defines the version information held within a Cisco PIX software release. The pix_release element specifies the whole PIX version information. The pix_major_release, pix_minor_release and pix_build elements specify seperated parts of PIX software version information. For instance, if the PIX version is 7.1(2.3)49, then pix_release is 7.1(2.3)49, pix_major_release is 7.1, pix_minor_release is 2.3 and pix_build is 49. See the SHOW VERSION command within PIX for more information.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pix_release | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The pix_release element specifies the whole PIX version information.</div>|  
| pix_major_release | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The pix_major_release is the dotted version that starts a version string. For example the pix_release 7.1(2.3)49 has a pix_major_release of 7.1.</div>|  
| pix_minor_release | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The pix_minor_release is the dotted version that starts a version string. For example the pix_release 7.1(2.3)49 has a pix_minor_release of 2.3.</div>|  
| pix_build | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The pix_build is an integer. For example the pix_release 7.1(2.3)49 has a pix_build of 49.</div>|  
  
