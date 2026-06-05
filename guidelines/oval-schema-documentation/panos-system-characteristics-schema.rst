Open Vulnerability and Assessment Language: Palo Alto (PAN-OS) Definitions  
=========================================================
* Schema: Palo Alto (PAN-OS) Definitions  
* Version: 5.12.3  
* Release Date: 06/04/2026 09:00:00 AM

This document outlines the items of the OVAL System Characteristics XML schema that are composed of Palo Alto-specific tests. Each item is an extention of a basic System Characteristics item defined in the core System Characteristics XML schema.

This schema was originally developed by William Munyan at cisecurity.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`config_item`  
* :ref:`version_item`  
  
______________
  
.. _config_item:  
  
< config_item >  
---------------------------------------------------------
This item stores results from checking the contents of an XML configuration.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - xpath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies an XPath expression describing the text node(s) or attribute(s) which were collected.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.  
  
______________
  
.. _version_item:  
  
< version_item >  
---------------------------------------------------------
The version_item holds information about the version of a PAN-OS system. It is retrieved from the PAN-OS XML API "show system info" response, which contains the sw-version and model fields.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - major_version  
      - oval-sc:EntityItemIntType (0..1)  
      - The major_version entity is used to check the major version piece of the version string. The value is an integer and in the example 10.1.14-h9 the major version is '10'.  
    * - minor_version  
      - oval-sc:EntityItemIntType (0..1)  
      - The minor_version entity is used to check the minor version piece of the version string. The value is an integer and in the example 10.1.14-h9 the minor version is '1'.  
    * - release  
      - oval-sc:EntityItemIntType (0..1)  
      - The release entity is used to check the release piece of the version string. The value is an integer and in the example 10.1.14-h9 the release is '14'.  
    * - hotfix  
      - oval-sc:EntityItemIntType (0..1)  
      - The hotfix entity is used to check the hotfix piece of the version string. The value is an integer and in the example 10.1.14-h9 the hotfix is '9'.  
    * - version_string  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The version_string entity is used to check the sw-version raw string output of a PAN-OS XML API request. The value is an string and the example 10.1.14-h9. This is entirely controlled by operator attributes.  
    * - model_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The model_name entity is used to check the model string output of a PAN-OS XML API request.  
  
