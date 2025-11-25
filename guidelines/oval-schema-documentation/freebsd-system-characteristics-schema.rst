Open Vulnerability and Assessment Language: FreeBSD System Characteristics  
=========================================================
* Schema: FreeBSD System Characteristics  
* Version: 5.12.2  
* Release Date: 11/25/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the FreeBSD specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`portinfo_item`  
  
______________
  
.. _portinfo_item:  
  
< portinfo_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pkginst  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - category  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - version  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      -   
    * - vendor  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      -   
  
