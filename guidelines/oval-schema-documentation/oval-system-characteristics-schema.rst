Open Vulnerability and Assessment Language: Core System Characteristics  
=========================================================
* Schema: Core System Characteristics  
* Version: 5.12.2  
* Release Date: 11/25/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the core schema for encoding Open Vulnerability and Assessment Language (OVAL) System Characteristics. The Core System Characteristics Schema defines all operating system independent objects. These objects are extended and enhanced by individual family schemas, which are described in separate documents. Each of the elements, types, and attributes that make up the Core System Characteristics Schema are described in detail and should provide the information necessary to understand what each object represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between these objects is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

______________
  
.. _oval_system_characteristics:  
  
< oval_system_characteristics >  
---------------------------------------------------------
The system_characteristics element is the root of an OVAL System Characteristics Document, and must occur exactly once. Its purpose is to bind together the four major sections of a system characteristics file - generator, system_info, collected_objects, and system_data - which are the children of the oval_system_characteristics element.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - generator  
      - oval:GeneratorType (1..1)  
      - The generator section must be present and provides information about when the system characteristics file was compiled and under what version.  
    * - system_info  
      - oval-sc:SystemInfoType (1..1)  
      - The required system_info element is used to record information about the system being described.  
    * - collected_objects  
      - oval-sc:CollectedObjectsType (0..1)  
      - The optional collected_objects section is used to associated the ids of the OVAL Objects collected with the system characteristics items that have been defined. The collected_objects section provides a listing of all the objects used to generate this system characteristics file.  
    * - system_data  
      - oval-sc:SystemDataType (0..1)  
      - The optional system_data section defines the specific characteristics that have been collected from the system.  
    * - ds:Signature  
      - n/a (0..1)  
      - The optional Signature element allows an XML Signature as defined by the W3C to be attached to the document. This allows authentication and data integrity to be provided to the user. Enveloped signatures are supported. More information about the official W3C Recommendation regarding XML digital signatures can be found at http://www.w3.org/TR/xmldsig-core/.  
  
______________
  
.. _SystemInfoType:  
  
== SystemInfoType ==  
---------------------------------------------------------
The SystemInfoType complex type specifies general information about the system that data was collected from, including information that can be used to identify the system. See the description of the InterfacesType complex type for more information. Note that the high level interfaces is required due to the inclusion of the xsd:any tag that follows it. The interfaces tag can be empty if no single interface is present.

Additional system information is also allowed although it is not part of the official OVAL Schema. Individual organizations can place system information that they feel is important and these will be skipped during the validation. All OVAL really cares about is that the required system information items are there.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - os_name  
      - xsd:string (1..1)  
      - The required os_name elements describes the operating system of the machine the data was collected on.  
    * - os_version  
      - xsd:string (1..1)  
      - The required os_version elements describe the operating system version of the machine the data was collected on.  
    * - architecture  
      - xsd:string (1..1)  
      - The required architecture element describes the hardware architecture type of the system data was collected on.  
    * - primary_host_name  
      - xsd:string (1..1)  
      - The required primary_host_name element is the primary host name of the machine the data was collected on.  
    * - interfaces  
      - oval-sc:InterfacesType (1..1)  
      - The required interfaces element outlines the network interfaces that exist on the system.  
    * - xsd:any  
      - n/a (0..unbounded)  
      - The Asset Identification specification (http://scap.nist.gov/specifications/ai/) provides a standardized way of reporting asset information across different organizations.The information contained within an AI computing-device element is similar to the information collected by OVAL's SystemInfoType.To support greater interoperability, an ai:computing-device element describing the system that data was collected from may appear at this point in an OVAL System Characteristics document.  
  
.. _InterfacesType:  
  
== InterfacesType ==  
---------------------------------------------------------
The InterfacesType complex type is a container for zero or more interface elements. Each interface element is used to describe an existing network interface on the system.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - interface  
      - oval-sc:InterfaceType (0..unbounded)  
      - Please refer to the description of the InterfaceType for more information.  
  
.. _InterfaceType:  
  
== InterfaceType ==  
---------------------------------------------------------
The InterfaceType complex type is used to describe an existing network interface on the system. This information can help identify a specific system on a given network.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - interface_name  
      - xsd:string (1..1)  
      - The required interface_name element is the name of the interface  
    * - ip_address  
      - xsd:string (0..unbounded)  
      - The ipv4_address element holds the IPV4 address for the interface.  
    * - ipv6_address  
      - xsd:string (0..unbounded)  
      - The ipv6_address element holds the IPV6 address for the interface.  
    * - mac_address  
      - xsd:string (0..1)  
      - The required mac_address element holds the MAC address for the interface. MAC addresses should be formatted according to the IEEE 802-2001 standard which states that a MAC address is a sequence of six octet values, separated by hyphens, where each octet is represented by two hexadecimal digits. Uppercase letters should also be used to represent the hexadecimal digits A through F.  
  
______________
  
.. _CollectedObjectsType:  
  
== CollectedObjectsType ==  
---------------------------------------------------------
The CollectedObjectsType complex type states all the objects that have been collected by the system characteristics file. The details of each object are defined by the global OVAL object that is identified by the id.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-sc:ObjectType (1..unbounded)  
      -   
  
.. _ObjectType:  
  
== ObjectType ==  
---------------------------------------------------------
The ObjectType complex type provides a reference between items collected and a related global OVAL Object.

If an OVAL Object does not exist on the system, then an object element is still provided but with the flag attribute set to 'does not exist'. For details on how to handle items, when an OVAL Object does not exist on the system, please see the ItemType documentation. This shows that the object was looked for but not found on the system. If no object element is written in this case, users of the system characteristics file will not know whether the object was not found or no attempt was made to collect it.

The required id attribute is the id of the global OVAL Object.

The required version attribute is the specific version of the global OVAL Object that was used by the data collection engine. The version is necessary so that analysis using a system characteristics file knows exactly what was collected.

The optional variable_instance identifier is a unique id that differentiates each unique instance of an object. Capabilities that use OVAL may reference the same definition multiple times and provide different variable values each time the definition is referenced. This will result in multiple instances of an object being included in the OVAL System Characteristics file (definitions that do not use variables can only have one unique instance). The inclusion of this unique instance identifier allows the OVAL Results document to associate the correct objects and items for each combination of supplied values.

The optional comment attribute provides a short description of the object.

The required flag attribute holds information regarding the outcome of the data collection. For example, if there was an error looking for items that match the object specification, then the flag would be 'error'. Please refer to the description of FlagEnumeration for details about the different flag values.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - id  
      - oval:ObjectIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - variable_instance  
      - xsd:nonNegativeInteger (optional *default*='1')  
      - (No Description)  
    * - comment  
      - xsd:string (optional)  
      - (No Description)  
    * - flag  
      - oval-sc:FlagEnumeration (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - message  
      - oval:MessageType (0..unbounded)  
      - The optional message element holds an error message or some other string that the data collection engine wishes to pass along.  
    * - variable_value  
      - oval-sc:VariableValueType (0..unbounded)  
      - The optional variable_value elements define the actual value(s) used during data collection of any variable referenced by the object (as well as any object referenced via a set element). An OVAL Object that includes a variable maybe have a different unique set of matching items depending on the value assigned to the variable. A tool that is given an OVAL System Characteristics file in order to analyze an OVAL Definition needs to be able to determine the exact instance of an object to use based on the variable values supplied. If a variable represents a collection of values, then multiple variable_value elements would exist with the same variable_id attribute.  
    * - reference  
      - oval-sc:ReferenceType (0..unbounded)  
      - The optional reference element links the collected item found by the data collection engine and the global OVAL Object. A global OVAL Object my have multiple matching items on a system. For example a global file object that is a pattern match might match 10 different files on a specific system. In this case, there would be 10 reference elements, one for each of the files found on the system.  
  
.. _VariableValueType:  
  
== VariableValueType ==  
---------------------------------------------------------
The VariableValueType complex type holds the value to a variable used during the collection of an object. The required variable_id attribute is the unique id of the variable being identified.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - variable_id  
      - oval:VariableIDPattern (required)  
      - (No Description)  
  
  
**Simple Content:** xsd:anySimpleType

.. _ReferenceType:  
  
== ReferenceType ==  
---------------------------------------------------------
The ReferenceType complex type specifies an item in the system characteristics file. This reference is used to link global OVAL Objects to specific items.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - item_ref  
      - oval:ItemIDPattern (required)  
      - (No Description)  
  
  
______________
  
.. _SystemDataType:  
  
== SystemDataType ==  
---------------------------------------------------------
The SystemDataType complex type is a container for zero or more item elements. Each item defines a specific piece of data on the system.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-sc:item  
      - n/a (0..unbounded)  
      -   
  
.. _item:  
  
< item >  
---------------------------------------------------------
The abstract item element holds information about a specific item on a system. An item might be a file, a rpm, a process, etc. This element is extended by the different component schemas through substitution groups. Each item represents a unique instance of an object as specified by an OVAL Object. For example, a single file or a single user. Each item may be referenced by more than one object in the collected object section. Please refer to the description of ItemType for more details about the information stored in items.

oval-sc:ItemType

.. _ItemType:  
  
== ItemType ==  
---------------------------------------------------------
The ItemType complex type specifies an optional message element that is used to pass things like error messages during data collection to a tool that will utilize the information.

The required id attribute is a unique (to the file) identifier that allows the specific item to be referenced.

The required status attribute holds information regarding the success of the data collection. For example, if an item exists on the system then the status would reflect this with a value of 'exists'. If an error occurs which is not associated with any item entities, or if an error occurs that is associated with an item entity matching an associated object entity, then the status would be 'error'. An error specific to any particular entity should be addressed at the entity level and, for item entities not associated with an object entity, not the item level. When creating items, any entities that can successfully be collected should be reported.

In some cases, when an item for a specified object does not exist, it may be beneficial to report a partial match of an item showing what entities did exist and what entities did not exist for debugging purposes. This is especially true when considering items that are collected by objects with hierarchical object entities. An example of such a case is when a file_object has a path entity equal to 'C:\' and a filename entity equal to 'test.txt' where 'test.txt' does not exist in the 'C:\' directory. This would result in the creation of a partially matching file_item with a status of 'does not exist' where the path entity equals 'C:\' and the filename entity equals 'test.txt' with a status of 'does not exist'. By showing the partial match, someone reading a system-characteristics document can quickly see that a matching file_item did not exist because the specified filename did not exist and not that the specified path did not exist. Again, please note that the implementation of partial matches, when an item for a specified object does not exist, is completely optional.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - id  
      - oval:ItemIDPattern (required)  
      - (No Description)  
    * - status  
      - oval-sc:StatusEnumeration (optional *default*='exists')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - message  
      - oval:MessageType (0..50)  
      -   
  
______________
  
.. _FlagEnumeration:  
  
-- FlagEnumeration --  
---------------------------------------------------------
The FlagEnumeration simple type defines the valid flags associated with a collected object. These flags are meant to provide information about how the specified object was handled by the data collector. In order to evaluate an OVAL Definition, information about the defined objects needs to be available. The flags help detail the outcome of attempting to collect information related to these objects..

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - error  
      - | A flag of 'error' indicates that there was an error trying to identify items on the system that match the specified object declaration. This flag is not meant to be used when there was an error retrieving a specific entity, but rather when it could not be determined if an item exists or not. Any error in retrieving a specific entity should be represented by setting the status of that specific entity to 'error'.  
    * - complete  
      - | A flag of 'complete' indicates that every matching item on the system has been identified and is represented in the system characteristics file. It can be assumed that no additional matching items exist on the system.  
    * - incomplete  
      - | A flag of 'incomplete' indicates that a matching item exists on the system, but only some of the matching items have been identified and are represented in the system characteristics file. It is unknown if additional matching items also exist. Note that with a flag of 'incomplete', each item that has been identified matches the object declaration, but additional items might also exist on the system.  
    * - does not exist  
      - | A flag of 'does not exist' indicates that the underlying structure is installed on the system but no matching item was found. For example, the Windows metabase is installed but there were no items that matched the metabase_object. In this example, if the metabase itself was not installed, then the flag would have been 'not applicable'.  
    * - not collected  
      - | A flag of 'not collected' indicates that no attempt was made to collect items on the system. An object with this flag will produce an 'unknown' result during analysis since it is unknown if matching items exists on the system or not. This is different from an 'error' flag because an 'error' flag indicates that an attempt was made to collect items on system whereas a 'not collected' flag indicates that an attempt was not made to collect items on the system.  
    * - not applicable  
      - | A flag of 'not applicable' indicates that the specified object is not applicable to the system being characterized. This could be because the data repository is not installed or that the object structure is for a different flavor of systems. An example would be trying to collect objects related to a Red Hat system off of a Windows system. Another example would be trying to collect an rpminfo_object on a Linux system if the rpm packaging system is not installed. If the rpm packaging system is installed and the specified rpminfo_object could not be found, then the flag would be 'does not exist'.  
  
Below is a table that outlines how each FlagEnumeration value effects evaluation of a given test. Note that this is related to the existence of a unique set of items identified by an object and not each item's compliance with a state. The left column identifies the FlagEnumeration value in question. The right column specifies the ResultEnumeration value that should be used when evaluating the collected object.  
```
                 ||
  flag value     ||      test result is
                 ||  
-----------------||----------------------------
  error          ||  error
  complete       ||    (test result depends on
  incomplete     ||     check_existence and
  does not exist ||     check attributes)
  not collected  ||  unknown
  not applicable ||  not applicable
-----------------||-----------------------------  
```

.. _StatusEnumeration:  
  
-- StatusEnumeration --  
---------------------------------------------------------
The StatusEnumeration simple type defines the valid status messages associated with collection of specific information associated with an item.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - error  
      - | A status of 'error' says that there was an error collecting information associated with an item as a whole or any specific entity. An item would have a status of 'error' if a problem occurred that prevented the item from being collected. For example, a file_item would have a status of 'error' if a handle to the file could not be opened because the handle was already in use by another program. See the documentation for ItemType for information about when an item entity status of 'error' should propagate up to the item status level.  
    * - exists  
      - | A status of 'exists' says that the item or specific piece of information exists on the system and has been collected.  
    * - does not exist  
      - | A status of 'does not exist' says that the item or specific piece of information does not exist and therefore has not been collected. This status assumes that an attempt was made to collect the information, but the information just does not exist. This can happen when a certain entity is only pertinent to particular instances or if the information for that entity is not set.  
    * - not collected  
      - | A status of 'not collected' says that no attempt was made to collect the item or specific piece of information so it is unknown what the value is and if it even exists.  
  
.. _EntityAttributeGroup:  
  
-- EntityAttributeGroup --  
---------------------------------------------------------
The EntityAttributeGroup is a collection of attributes that are common to all entities. This group defines these attributes and their default values. Individual entities may limit allowed values for these attributes, but all entities will support these attributes.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:DatatypeEnumeration (optional *default*='string')  
      - The optional datatype attribute determines the type of data expected (the default datatype is 'string'). Note that the datatype attribute simply defines the type of data as found on the system, it is not used during evaluation. An OVAL Definition defines how the data should be interpreted during analysis. If the definition states a datatype that is different than what the system characteristics presents, then a type cast must be made.  
    * - mask  
      - xsd:boolean (optional *default*='false')  
      - The optional mask attribute is used to identify values that have been hidden for sensitivity concerns. This is used by the Result document which uses the System Characteristics schema to format the information found on a specific system. When the mask attribute is set to 'true' on an OVAL Entity or an OVAL Field, the corresponding collected value of that OVAL Entity or OVAL Field MUST NOT be present in the "results" section of the OVAL Results document; the "oval_definitions" section must not be altered and must be an exact copy of the definitions evaluated. Values MUST NOT be masked in OVAL System Characteristics documents that are not contained within an OVAL Results document. It is possible for masking conflicts to occur where one entity has mask set to true and another entity has mask set to false. A conflict will occur when the mask attribute is set differently on an OVAL Object and matching OVAL State or when more than one OVAL Objects identify the same OVAL Item(s). When such a conflict occurs the result is always to mask the entity.  
    * - status  
      - oval-sc:StatusEnumeration (optional *default*='exists')  
      - The optional status attribute holds information regarding the success of the data collection. For example, if there was an error collecting a particular piece of data, then the status would be 'error'.  
  
  
.. _EntityItemSimpleBaseType:  
  
== EntityItemSimpleBaseType ==  
---------------------------------------------------------
The EntityItemSimpleBaseType complex type is an abstract type that serves as the base type for all simple item entities.

**Simple Content:** xsd:anySimpleType

.. _EntityItemComplexBaseType:  
  
== EntityItemComplexBaseType ==  
---------------------------------------------------------
The EntityItemComplexBaseType complex type is an abstract type that serves as the base type for all complex item entities.

.. _EntityItemIPAddressType:  
  
== EntityItemIPAddressType ==  
---------------------------------------------------------
The EntityItemIPAddressType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type describes any IPv4/IPv6 address or address prefix.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - Restriction of oval:SimpleDatatypeEnumeration (required) ('ipv4_address', 'ipv6_address')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityItemIPAddressStringType:  
  
== EntityItemIPAddressStringType ==  
---------------------------------------------------------
The EntityItemIPAddressStringType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type describes any IPv4/IPv6 address, address prefix, or its string representation.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - Restriction of oval:SimpleDatatypeEnumeration (optional *default*='string') ('ipv4_address', 'ipv6_address', 'string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityItemAnySimpleType:  
  
== EntityItemAnySimpleType ==  
---------------------------------------------------------
The EntityItemAnySimpleType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type describes any simple data.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (optional *default*='string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityItemDateType:  
  
== EntityItemDateType ==  
---------------------------------------------------------
The EntityDateType type is extended by the entities of an individual OVAL State. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type is an XML date.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (optional *fixed*='string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:date

.. _EntityItemBinaryType:  
  
== EntityItemBinaryType ==  
---------------------------------------------------------
The EntityItemBinaryType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type describes simple binary data. The empty string is also allowed for cases where there was an error in the data collection of an entity and a status needs to be reported.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='binary')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:hexBinary, oval:EmptyStringType

.. _EntityItemBoolType:  
  
== EntityItemBoolType ==  
---------------------------------------------------------
The EntityItemBoolType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type describes simple boolean data. The empty string is also allowed for cases where there was an error in the data collection of an entity and a status needs to be reported.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='boolean')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:boolean, oval:EmptyStringType

.. _EntityItemFloatType:  
  
== EntityItemFloatType ==  
---------------------------------------------------------
The EntityItemFloatType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type describes simple float data. The empty string is also allowed for cases where there was an error in the data collection of an entity and a status needs to be reported.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='float')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:float, oval:EmptyStringType

.. _EntityItemIntType:  
  
== EntityItemIntType ==  
---------------------------------------------------------
The EntityItemIntType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type describes simple integer data. The empty string is also allowed for cases where there was an error in the data collection of an entity and a status needs to be reported.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='int')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:integer, oval:EmptyStringType

.. _EntityItemStringType:  
  
== EntityItemStringType ==  
---------------------------------------------------------
The EntityItemStringType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type describes simple string data.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (optional *fixed*='string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityItemRecordType:  
  
== EntityItemRecordType ==  
---------------------------------------------------------
The EntityItemRecordType defines an entity that consists of a number of named fields. This structure is used for representing a record from a database query and other similar structures where multiple related fields must be collected at once. Note that for all entities of this type, the only allowed datatype is 'record'.

Note the datatype attribute must be set to 'record'.

Note that when the mask attribute is set to 'true', all child field elements must be masked regardless of the child field's mask attribute value.

**Extends:** oval-sc:EntityItemComplexBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - field  
      - oval-sc:EntityItemFieldType (0..unbounded)  
      -   
  
.. _EntityItemFieldType:  
  
== EntityItemFieldType ==  
---------------------------------------------------------
The EntityItemFieldType defines an element with simple content that represents a named field in a record that may contain any number of named fields. The EntityItemFieldType is much like all other entities with one significant difference, the EntityItemFieldType has a name attribute.

The required name attribute specifies a name for the field. Field names are lowercase and may occur more than once to allow for a field to have multiple values.

Note that when the mask attribute is set to 'true' on a field's parent element the field must be masked regardless of the field's mask attribute value.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - name  
      - Restriction of xsd:string (required)  
      - A string restricted to disallow upper case characters.  
  
  
**Simple Content:** xsd:anySimpleType

.. _EntityItemVersionType:  
  
== EntityItemVersionType ==  
---------------------------------------------------------
The EntityItemVersionType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type describes version data.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='version')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityItemFilesetRevisionType:  
  
== EntityItemFilesetRevisionType ==  
---------------------------------------------------------
The EntityItemFilesetRevisionType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type represents the version string related to filesets in HP-UX.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='fileset_revision')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityItemIOSVersionType:  
  
== EntityItemIOSVersionType ==  
---------------------------------------------------------
The EntityItemIOSVersionType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This specific type represents the version string for IOS.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='ios_version')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityItemEVRStringType:  
  
== EntityItemEVRStringType ==  
---------------------------------------------------------
The EntityItemEVRStringType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This type represents the epoch, version, and release fields, for an RPM package, as a single version string. It has the form "EPOCH:VERSION-RELEASE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form 0:VERSION-RELEASE. Comparisons involving this datatype should follow the algorithm of librpm's rpmvercmp() function.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='evr_string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityItemDebianEVRStringType:  
  
== EntityItemDebianEVRStringType ==  
---------------------------------------------------------
The EntityItemDebianEVRStringType type is extended by the entities of an individual item. This type provides uniformity to each entity by including the attributes found in the EntityItemSimpleBaseType. This type represents the epoch, upstream_version, and debian_revision fields, for a Debian package, as a single version string. It has the form "EPOCH:UPSTREAM_VERSION-DEBIAN_REVISION". Note that a null epoch (or '(none)' as returned by dpkg) is equivalent to '0' and would hence have the form 0:UPSTREAM_VERSION-DEBIAN_REVISION. Comparisons involving this datatype should follow the algorithm outlined in Chapter 5 of the "Debian Policy Manual" (https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Version). An implementation of this is the cmpversions() function in dpkg's enquiry.c.

**Restricts:** oval-sc:EntityItemSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='debian_evr_string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

