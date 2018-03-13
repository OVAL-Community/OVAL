# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: FreeBSD Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the FreeBSD specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ portinfo_test ](#portinfo_test)  
  
______________
  
## <a name="portinfo_test"></a>< portinfo_test >

The port info test is used to check the properties of a component of a FreeBSD system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an portinfo_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="portinfo_object"></a>< portinfo_object >

The portinfo_object element is used by a port info test to define the specific FreeBSD package to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A port info object consists of a single pkginst element that identifies a specific package.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pkginst | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div></div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="portinfo_state"></a>< portinfo_state >

The portinfo_state element defines the different information that can be used to evaluate the specified package. This includes the name, category, version, vendor, and description. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pkginst | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of a package.</div>|  
| category | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| version | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>The version of a package.</div>|  
| vendor | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| description | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
  
