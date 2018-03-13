# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: FreeBSD System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the FreeBSD specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="portinfo_item"></a>< portinfo_item >



**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pkginst | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| category | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| version | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div></div>|  
| vendor | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| description | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
  
