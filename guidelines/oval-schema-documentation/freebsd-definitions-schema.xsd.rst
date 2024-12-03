Open Vulnerability and Assessment Language: FreeBSD Definition  
=========================================================
* Schema: FreeBSD Definition  
* Version: 5.12  
* Release Date: 11/29/2024 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the FreeBSD specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`portinfo_test` (Deprecated)  
  
______________
  
.. _portinfo_test:  
  
< portinfo_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The port info test is used to check the properties of a component of a FreeBSD system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an portinfo_object and the optional state element specifies the data to check.

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
  
.. _portinfo_object:  
  
< portinfo_object >  
---------------------------------------------------------
The portinfo_object element is used by a port info test to define the specific FreeBSD package to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A port info object consists of a single pkginst element that identifies a specific package.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pkginst  
      - oval-def:EntityObjectStringType (1..1)  
      -   
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _portinfo_state:  
  
< portinfo_state >  
---------------------------------------------------------
The portinfo_state element defines the different information that can be used to evaluate the specified package. This includes the name, category, version, vendor, and description. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pkginst  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of a package.  
    * - category  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - version  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The version of a package.  
    * - vendor  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - description  
      - oval-def:EntityStateStringType (0..1)  
      -   
  
