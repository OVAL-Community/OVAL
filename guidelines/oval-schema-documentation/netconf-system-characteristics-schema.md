# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: NETCONF System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

This document outlines the items of the OVAL System Characteristics XML schema that are composed of NETCONF (RFC 6241) protocol-specific tests. Each item is an extention of a basic System Characteristics item defined in the core System Characteristics XML schema.

This schema was originally developed by David Solin at jOVAL.org. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="config_item"></a>< config_item >

This item stores results from checking the contents of an xml configuration.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| xpath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.</div>|  
| value_of | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.</div>|  
  
