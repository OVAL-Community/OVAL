Open Vulnerability and Assessment Language: NETCONF System Characteristics  
=========================================================
* Schema: NETCONF System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

This document outlines the items of the OVAL System Characteristics XML schema that are composed of NETCONF (RFC 6241) protocol-specific tests. Each item is an extention of a basic System Characteristics item defined in the core System Characteristics XML schema.

This schema was originally developed by David Solin at jOVAL.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Item Listing  
---------------------------------------------------------
* :ref:`config_item`  
  
______________
  
.. _config_item:  
  
< config_item >  
---------------------------------------------------------
This item stores results from checking the contents of an xml configuration.

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
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.  
  
