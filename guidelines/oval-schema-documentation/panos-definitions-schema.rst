Open Vulnerability and Assessment Language: Palo Alto (PAN-OS) Definitions  
=========================================================
* Schema: Palo Alto (PAN-OS) Definitions  
* Version: 5.12.3  
* Release Date: 06/04/2026 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Palo Alto (PAN-OS)-specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by William Munyan at cisecurity.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`config_test`  
* :ref:`version_test`  
  
______________
  
.. _config_test:  
  
< config_test >  
---------------------------------------------------------
The config_test is used to check the properties of the XML output from a PAN-OS XML API request to export the current running configuration. This is a request to the API at "https://[PAN-OS-DEVICE]/api/?type=export&category=configuration". The response to this request is an XML payload rooted with a "response" element and including device-specific information. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a config_object and the optional state element specifies the data to check.

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

A config_object consists of an xpath entity that contains an XPATH 1.0 query to perform on the PAN-OS API response XML data. The response data is assumed to consist of a <response> entity, with arbitrary (i.e., vendor-specific) child nodes.

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
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at. Any valid XPath 1.0 statement is usable with one exception, at most one field may be identified in the XPath. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible XPaths and determinining all those that do not equal a given XPath would be impossible.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _config_state:  
  
< config_state >  
---------------------------------------------------------
The config_state element defines the different information that can be used to evaluate the result of a specific config XPath evaluation. This includes the XPath used and the value of this XPath.

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
      - Specifies an XPath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found.  
  
______________
  
.. _version_test:  
  
< version_test >  
---------------------------------------------------------
The version_test is used to check the version from a PAN-OS XML API request. This is a request to the API at "https://[PAN-OS-DEVICE]/api/?type=op&cmd=<show><system><info></info></system></show>". The response to this request is an XML payload rooted with a "response" element and including device-specific information. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

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
  
< version_object >  
---------------------------------------------------------
The version_object element is used by a version_test to define the different version information associated with an PANOS system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _version_state:  
  
< version_state >  
---------------------------------------------------------
The version_state element defines the version information held within a PANOS Release.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - major_version  
      - oval-def:EntityStateIntType (0..1)  
      - The major_version entity is used to check the major version piece of the version string. The value is an integer and in the example 10.1.14-h9 the major version is '10'.  
    * - minor_version  
      - oval-def:EntityStateIntType (0..1)  
      - The minor_version entity is used to check the minor version piece of the version string. The value is an integer and in the example 10.1.14-h9 the minor version is '1'.  
    * - release  
      - oval-def:EntityStateIntType (0..1)  
      - The release entity is used to check the release piece of the version string. The value is an integer and in the example 10.1.14-h9 the release is '14'.  
    * - hotfix  
      - oval-def:EntityStateIntType (0..1)  
      - The Hotfix entity is used to check the hotfix piece of the version string. The value is an integer and in the example 10.1.14-h9 the hotfix is '9'.  
    * - version_string  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The version_string entity is used to check the sw-version raw string output of a PAN-OS XML API request. The value is an string and the example 10.1.14-h9  
    * - model_name  
      - oval-def:EntityStateStringType (0..1)  
      - The model_name entity is used to check the model string output of a PAN-OS XML API request.  
  
