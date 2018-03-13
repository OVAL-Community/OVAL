# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Apache Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Apache specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ ~~httpd_test~~ ](#httpd_test)  
  
______________
  
## <a name="httpd_test"></a><  ~~httpd_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** The httpd_test does not specify how to detect instances of httpd and cannot be reasonably specified to allow for products to detect all instances of httpd across platforms, packaging systems, and typical user compiled and configured installations. Without a proper definition of how to identify instances of httpd products will not reliably produce consistent assessment results because they will naturally utilize different approaches to locating instances of httpd which will lead to differences in the set of collected instances of https.<br />**Comment:** This test has been deprecated and may be removed in a future version of the language.<br />

The httpd test is used to check the version of an installed httpd binary. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an httpd_test and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="httpd_object"></a><  ~~httpd_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** The httpd_object does not specify how to detect instances of httpd and cannot be reasonably specified to allow for products to detect all instances of httpd across platforms, packaging systems, and typical user compiled and configured installations. Without a proper definition of how to identify instances of httpd products will not reliably produce consistent assessment results because they will naturally utilize different approaches to locating instances of httpd which will lead to differences in the set of collected instances of https.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The httpd_object element is used by a httpd test to define the different httpd binary installed on a system. There is actually only one object relating to this and it is the collection of all httpd binaries. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same httpd_object which is basically an empty object element. A tool that implements the httpd_test and collects the httpd_object must know how to find all the httpd binaries on the system and verify that they are in fact httpd binaries.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="httpd_state"></a><  ~~httpd_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** The httpd_state does not specify how to detect instances of httpd and cannot be reasonably specified to allow for products to detect all instances of httpd across platforms, packaging systems, and typical user compiled and configured installations. Without a proper definition of how to identify instances of httpd products will not reliably produce consistent assessment results because they will naturally utilize different approaches to locating instances of httpd which will lead to differences in the set of collected instances of https.<br />**Comment:** This state has been deprecated and may be removed in a future version of the language.<br />

The httpd_state element defines information associated with a specific httpd binary.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a httpd binary on the system.</div>|  
| binary_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The binary_name element specifies the name of the file. If the xsi:nil attribute is set to true, then the object being specified is the higher level path. In this case, the binary_name element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, says to collect every file under a given path.</div>|  
| version | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The version entity is used to check the version of the httpd binary. The datatype for the version entity is 'version' which means the value should be a delimited set of numbers. It is obtained by running 'httpd -v'.</div>|  
  
