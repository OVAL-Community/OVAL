Open Vulnerability and Assessment Language: CatOS System Characteristics  
=========================================================
* Schema: CatOS System Characteristics  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Cisco CatOS specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by Yuzheng Zhou at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`line_item`  
* :ref:`module_item`  
* :ref:`version_item`  
  
______________
  
.. _line_item:  
  
< line_item >  
---------------------------------------------------------
Stores the properties of specific lines in the catos config file.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - show_subcommand  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the SHOW sub-command.  
    * - config_line  
      - oval-sc:EntityItemStringType (0..1)  
      - The value returned from by the specified SHOW sub-command.  
  
______________
  
.. _module_item:  
  
< module_item >  
---------------------------------------------------------
Stores results from SHOW MODULE command.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - module_number  
      - oval-sc:EntityItemIntType (0..1)  
      -   
    * - type  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - model  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - software_major_release  
      - oval-sc:EntityItemVersionType (0..1)  
      -   
    * - software_individual_release  
      - oval-sc:EntityItemIntType (0..1)  
      -   
    * - software_version_id  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - hardware_major_release  
      - oval-sc:EntityItemVersionType (0..1)  
      -   
    * - hardware_individual_release  
      - oval-sc:EntityItemIntType (0..1)  
      -   
    * - firmware_major_release  
      - oval-sc:EntityItemVersionType (0..1)  
      -   
    * - firmware_individual_release  
      - oval-sc:EntityItemIntType (0..1)  
      -   
  
______________
  
.. _version_item:  
  
< version_item >  
---------------------------------------------------------
Stores results from SHOW VERSION command.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - switch_series  
      - oval-sc:EntityItemStringType (0..1)  
      - The switch_series entity specifies the target Catalyst switch series for the given version of CatOS.  
    * - image_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The image_name entity specifies the name of the CatOS image.  
    * - catos_release  
      - oval-sc:EntityItemVersionType (0..1)  
      - The catos_release entity specifies the release version of CatOS.  
    * - catos_major_release (Deprecated)  
      - oval-sc:EntityItemVersionType (0..1)  
      -   
    * - catos_individual_release (Deprecated)  
      - oval-sc:EntityItemIntType (0..1)  
      -   
    * - catos_version_id (Deprecated)  
      - oval-sc:EntityItemStringType (0..1)  
      -   
  
