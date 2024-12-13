Open Vulnerability and Assessment Language: Cisco ASA System Characteristics  
=========================================================
* Schema: Cisco ASA System Characteristics  
* Version: 6.0  
* Release Date: 1/1/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Cisco ASA specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Thanks to Omar Santos and Panos Kampanakis of Cisco for providing these tests.

Item Listing  
---------------------------------------------------------
* :ref:`line_item`  
* :ref:`version_item`  
  
______________
  
.. _line_item:  
  
< line_item >  
---------------------------------------------------------
Stores the configuration information associated with the evaluation of a SHOW sub-command on Cisco ASA. This includes the name of ths sub-command and the corresponding config line.

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
  
.. _version_item:  
  
< version_item >  
---------------------------------------------------------
Stores the version information held within a Cisco ASA software release. The asa_release element specifies the whole ASA version information. The asa_major_release, asa_minor_release and asa_build elements specify seperated parts of ASA software version information. For instance, if the ASA version is 8.4(2.3)49, then asa_release is 8.4(2.3)49, asa_major_release is 8.4, asa_minor_release is 2.3 and asa_build is 49. See the SHOW VERSION command within ASA for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - asa_release  
      - oval-sc:EntityItemStringType (0..1)  
      - The asa_release element specifies the whole ASA version information.  
    * - asa_major_release  
      - oval-sc:EntityItemVersionType (0..1)  
      - The asa_major_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_major_release of 8.4.  
    * - asa_minor_release  
      - oval-sc:EntityItemVersionType (0..1)  
      - The asa_minor_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_minor_release of 2.3.  
    * - asa_build  
      - oval-sc:EntityItemIntType (0..1)  
      - The asa_build is an integer. For example the asa_release 8.4(2.3)49 has a asa_build of 49.  
  
