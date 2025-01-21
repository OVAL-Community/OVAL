Open Vulnerability and Assessment Language: Junos Definition  
=========================================================
* Schema: Junos Definition  
* Version: 6.0  
* Release Date: 1/24/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Junos-specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by David Solin at jOVAL.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`show_test`  
  
______________
  
.. _show_test:  
  
< show_test >  
---------------------------------------------------------
The show test is used to check the properties of specific output lines from a SHOW command, such as "show configuration". It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a show_object and the optional state element specifies the data to check.

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
  
.. _show_object:  
  
< show_object >  
---------------------------------------------------------
The show_object element is used by a show test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - subcommand  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a SHOW sub-command to be tested.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _show_state:  
  
< show_state >  
---------------------------------------------------------
The show_state element defines the different information that can be used to evaluate the result of a specific SHOW sub-command. This includes the name of the sub-command and the corresponding config output. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - subcommand  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the SHOW sub-command.  
    * - value  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned from by the specified SHOW sub-command. This may consist of multiple lines of information, whose raw form will be captured by the item.  
  
