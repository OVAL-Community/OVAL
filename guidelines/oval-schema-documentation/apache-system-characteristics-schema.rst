Open Vulnerability and Assessment Language: Apache System Characteristics  
=========================================================
* Schema: Apache System Characteristics  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Apache specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`httpd_item`  
  
______________
  
.. _httpd_item:  
  
< httpd_item > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: The httpd_item does not specify how to detect instances of httpd and cannot be reasonably specified to allow for products to detect all instances of httpd across platforms, packaging systems, and typical user compiled and configured installations. Without a proper definition of how to identify instances of httpd products will not reliably produce consistent assessment results because they will naturally utilize different approaches to locating instances of httpd which will lead to differences in the set of collected instances of https.  
* Comment: This item has been deprecated and may be removed in a future version of the language.  
  
The httpd item holds information about a installed Apache HTTPD binary. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a httpd binary found on the system.  
    * - binary_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the httpd binary.  
    * - version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The version entity holds the version of the specified httpd binary.  
  
