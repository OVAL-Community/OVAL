Open Vulnerability and Assessment Language: CatOS Definition  
=========================================================
* Schema: CatOS Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Cisco CatOS specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here

This schema was originally developed by Yuzheng Zhou and Eric Grey at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`line_test` (Deprecated)  
* :ref:`module_test` (Deprecated)  
* :ref:`version55_test` (Deprecated)  
* :ref:`version_test` (Deprecated)  
  
______________
  
.. _line_test:  
  
< line_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The line_test is used to check the properties of specific output lines from a SHOW command, such as show running-config. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a line_object and the optional state element specifies the data to check.

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
  
.. _line_object:  
  
< line_object >  
---------------------------------------------------------
The line_object element is used by a line_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A line_object consists of a show_subcommand entity that is the name of a SHOW sub-command to be tested.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - show_subcommand  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a SHOW sub-command.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _line_state:  
  
< line_state >  
---------------------------------------------------------
The line_state element defines the different information that can be used to evaluate the result of a specific SHOW sub-command. This includes the name of ths sub-command and the corresponding config line. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - show_subcommand  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the SHOW sub-command.  
    * - config_line  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned from by the specified SHOW sub-command.  
  
______________
  
.. _module_test:  
  
< module_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The module test reveals module information in Cisco Catalyst switches. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a module_object and the optional state element specifies the metadata to check.

The module_test is based off the SHOW MODULE command. Having a separate module_test, as opposed to a general command_test, enables running an evaluation based on OVAL without having interactive command access to the device.

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
  
.. _module_object:  
  
< module_object >  
---------------------------------------------------------
The module_object element is used by a module test to specify the module to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions schema.

A module object consists of a single module_number entity that identifies the module to be used.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - module_number  
      - oval-def:EntityObjectIntType (1..1)  
      - A number that identifies the a specific module.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _module_state:  
  
< module_state >  
---------------------------------------------------------
The module_state element defines the module information held within a Cisco Catalyst switch. The module_number, type, and model element specifies the number, type and model of the module respectively. The software_major_release, software_individual_release and software_version_id elements specify the software version information of the module. For instance, if the software version is 8.5(4c)GLX, then software_major_release is 8.5GLX, software_individual_release is 4 and software_version_id is c. Similarly, the hardware_major_release, hardware_individual_release, firmware_major_release and firmware_individual_release elements reveal the hardware and firmware version information of the module.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - module_number  
      - oval-def:EntityStateIntType (0..1)  
      - A number that identifies the a specific module.  
    * - type  
      - oval-def:EntityStateStringType (0..1)  
      - The type of module.  
    * - model  
      - oval-def:EntityStateStringType (0..1)  
      - The model of a module.  
    * - software_major_release  
      - oval-def:EntityStateVersionType (0..1)  
      - The major relase of the software of a module to check for.  
    * - software_individual_release  
      - oval-def:EntityStateIntType (0..1)  
      - The individual release of the software of the module to check for.  
    * - software_version_id  
      - oval-def:EntityStateStringType (0..1)  
      - The vesion id of the software of a module to check for.  
    * - hardware_major_release  
      - oval-def:EntityStateVersionType (0..1)  
      - The hardware major release of a module to check for.  
    * - hardware_individual_release  
      - oval-def:EntityStateIntType (0..1)  
      - The hardware individual release of a module to check for.  
    * - firmware_major_release  
      - oval-def:EntityStateVersionType (0..1)  
      - The major release of the firmware of a module to check for.  
    * - firmware_individual_release  
      - oval-def:EntityStateIntType (0..1)  
      - The individual release of the firmware of a module to check for.  
  
______________
  
.. _version55_test:  
  
< version55_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The version55_test is used to check the version of the Cisco CatOS operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

The required information of version55_test can be got via a SHOW VERSION command. The separated version55_test enables an evaluation based on OVAL without having interactive command access to the device.

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
  
.. _version55_object:  
  
< version55_object >  
---------------------------------------------------------
The version55_object element is used by a version55_test to define the different version information associated with a Cisco CatOS system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version5_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _version55_state:  
  
< version55_state >  
---------------------------------------------------------
The version55_state element defines the version information held within a Cisco CatOS software release. The switch_series element specifies the Catalyst switch series. The image_name element specifies the name of the CatOS image. The catos_release element specifies the software version information of the module.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - switch_series  
      - oval-def:EntityStateStringType (0..1)  
      - The switch_series entity defines a target Catalyst switch series to check for. Each version of CatOS traditionally has target a specific Catalyst series of switches.  
    * - image_name  
      - oval-def:EntityStateStringType (0..1)  
      - The image_name entity defines a name of a CatOS image to check for.  
    * - catos_release  
      - oval-def:EntityStateVersionType (0..1)  
      - The catos_release entity defines a release version of CatOS to check for.  
  
______________
  
.. _version_test:  
  
< version_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Replaced by the version55_test. Due to the fact it's not clear on how to separate the CatOS version, it was decided that the catos_major_release, catos_individual_release, and catos_version_id entities would be combined into a new single entity catos_release. A new test was created to reflect these changes. See the version55_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The version test is used to check the version of the Cisco CatOS operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

The required information of version_test can be got via a SHOW VERSION command. The separated version_test enables an evaluation based on OVAL without having interactive command access to the device.

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
  
.. _version_object:  
  
< version_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Replaced by the version55_object. Due to the fact it's not clear on how to separate the CatOS version, it was decided that the catos_major_release, catos_individual_release, and catos_version_id entities would be combined into a new single entity catos_release. A new object was created to reflect these changes. See the version55_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The version_object element is used by a version test to define the different version information associated with a Cisco CatOS system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _version_state:  
  
< version_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Replaced by the version55_state. Due to the fact it's not clear on how to separate the CatOS version, it was decided that the catos_major_release, catos_individual_release, and catos_version_id entities would be combined into a new single entity catos_release. A new state was created to reflect these changes. See the version55_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The version_state element defines the version information held within a Cisco CatOS software release. The swtich_series element specifies the Catalyst switch series. The image_name element specifies the name of the CatOS image. The catos_major_release, catos_individual_release and catos_version_id elements specify the software version information of the module. For instance, if the CatOS version is 8.5(4c)GLX, then catos_major_release is 8.5GLX, catos_individual_release is 4 and catos_version_id is c.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - switch_series  
      - oval-def:EntityStateStringType (0..1)  
      - A Catalyst switch series to check for.  
    * - image_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of a CatOS image to check for.  
    * - catos_major_release  
      - oval-def:EntityStateVersionType (0..1)  
      - The major release of CatOS to check for.  
    * - catos_individual_release  
      - oval-def:EntityStateIntType (0..1)  
      - The individual release of CatOS to check for.  
    * - catos_version_id  
      - oval-def:EntityStateStringType (0..1)  
      - The version id of Cat OS to check for.  
  
