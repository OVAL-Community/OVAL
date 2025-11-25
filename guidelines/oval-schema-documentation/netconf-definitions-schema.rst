Open Vulnerability and Assessment Language: NETCONF Definitions  
=========================================================
* Schema: NETCONF Definitions  
* Version: 5.12.2  
* Release Date: 11/25/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the NETCONF (RFC 6241) protocol-specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here

This schema was originally developed by David Solin at jOVAL.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`config_test` (Deprecated)  
  
______________
  
.. _config_test:  
  
< config_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The config_test is used to check the properties of the XML output from a GET-CONFIG command, for the running configuration. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a config_object and the optional state element specifies the data to check.

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
  
.. _config_object:  
  
< config_object >  
---------------------------------------------------------
The config_object element is used by a config_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A config_object consists of an xpath entity that contains an XPATH 1.0 query to perform on the NETCONF get-config response XML data. The response data is assumed to consist of a <data> entity in the urn:ietf:params:xml:ns:netconf:base:1.0 XML namespace, with arbitrary (i.e., vendor-specific) child nodes.

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
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at. Any valid Xpath 1.0 statement is usable with one exception, at most one field may be identified in the Xpath. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _config_state:  
  
< config_state >  
---------------------------------------------------------
The config_state element defines the different information that can be used to evaluate the result of a specific config xpath evaluation. This includes the xpath used and the value of this xpath.

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
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found.  
  
