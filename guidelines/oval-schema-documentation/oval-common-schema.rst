Open Vulnerability and Assessment Language: Core Common  
=========================================================
* Schema: Core Common  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the common types that are shared across the different schemas within Open Vulnerability and Assessment Language (OVAL). Each type is described in detail and should provide the information necessary to understand what each represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between these type is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

______________
  
.. _deprecated_info:  
  
< deprecated_info >  
---------------------------------------------------------
The deprecated_info element is used in documenting deprecation information for items in the OVAL Language. It is declared globally as it can be found in any of the OVAL schemas and is used as part of the appinfo documentation and therefore it is not an element that can be declared locally and based off a global type..

oval:DeprecatedInfoType

.. _element_mapping:  
  
< element_mapping >  
---------------------------------------------------------
The element_mapping element is used in documenting which tests, objects, states, and system characteristic items are associated with each other. It provides a way to explicitly and programatically associate the test, object, state, and item definitions.

oval:ElementMapType

.. _notes:  
  
< notes >  
---------------------------------------------------------
Element for containing notes; can be replaced using a substitution group.

oval:NotesType

.. _ElementMapType:  
  
== ElementMapType ==  
---------------------------------------------------------
The ElementMapType is used to document the association between OVAL test, object, state, and item entities.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - test  
      - oval:ElementMapItemType (1..1)  
      - The local name of an OVAL test.  
    * - object  
      - oval:ElementMapItemType (0..1)  
      - The local name of an OVAL object.  
    * - state  
      - oval:ElementMapItemType (0..1)  
      - The local name of an OVAL state.  
    * - item  
      - oval:ElementMapItemType (0..1)  
      - The local name of an OVAL item.  
  
.. _ElementMapItemType:  
  
== ElementMapItemType ==  
---------------------------------------------------------
Defines a reference to an OVAL entity using the schema namespace and element name.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - target_namespace  
      - xsd:anyURI (optional)  
      - The target_namespace attributes indicates what XML namespace the element belongs to. If not present, the namespace is that of the document in which the ElementMapItemType instance element appears.  
  
  
**Simple Content:** xsd:NCName

.. _DeprecatedInfoType:  
  
== DeprecatedInfoType ==  
---------------------------------------------------------
The DeprecatedInfoType complex type defines a structure that will be used to flag schema-defined constructs as deprecated. It holds information related to the version of OVAL when the construct was deprecated along with a reason and comment.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - version  
      - n/a (1..1)  
      - The required version child element details the version of OVAL in which the construct became deprecated.  
    * - reason  
      - xsd:string (1..1)  
      - The required reason child element is used to provide an explanation as to why an item was deprecated and to direct a reader to possible alternative structures within OVAL.  
    * - comment  
      - xsd:string (0..1)  
      - The optional comment child element is used to supply additional information regarding the element's deprecated status.  
  
______________
  
.. _GeneratorType:  
  
== GeneratorType ==  
---------------------------------------------------------
The GeneratorType complex type defines an element that is used to hold information about when a particular OVAL document was compiled, what version of the schema was used, what tool compiled the document, and what version of that tool was used.

Additional generator information is also allowed although it is not part of the official OVAL Schema. Individual organizations can place generator information that they feel are important and these will be skipped during the validation. All OVAL really cares about is that the stated generator information is there.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - product_name  
      - xsd:string (0..1)  
      - The optional product_name specifies the name of the application used to generate the file. Product names SHOULD be expressed as CPE Names according to the Common Platform Enumeration: Name Matching Specification Version 2.3.  
    * - product_version  
      - xsd:string (0..1)  
      - The optional product_version specifies the version of the application used to generate the file.  
    * - schema_version  
      - oval:SchemaVersionType (1..unbounded)  
      - The required schema_version specifies the version of the OVAL Schema that the document has been written in and that should be used for validation. The versions for both the Core and any platform extensions used should be declared in separate schema_version elements.  
    * - timestamp  
      - xsd:dateTime (1..1)  
      - The required timestamp specifies when the particular OVAL document was compiled. The format for the timestamp is yyyy-mm-ddThh:mm:ss. Note that the timestamp element does not specify when a definition (or set of definitions) was created or modified but rather when the actual XML document that contains the definition was created. For example, the document might have pulled a bunch of existing OVAL Definitions together, each of the definitions having been created at some point in the past. The timestamp in this case would be when the combined document was created.  
    * - xsd:any  
      - n/a (0..unbounded)  
      - The Asset Identification specification (http://scap.nist.gov/specifications/ai/) provides a standardized way of reporting asset information across different organizations.Asset Identification elements can hold data useful for identifying what tool, what version of that tool was used, and identify other assets used to compile an OVAL document, such as persons or organizations.To support greater interoperability, an ai:assets element describing assets used to produce an OVAL document may appear at this point in an OVAL document.  
  
.. _SchemaVersionType:  
  
== SchemaVersionType ==  
---------------------------------------------------------
The core version MUST match on all platform schema versions.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - platform  
      - xsd:anyURI (optional)  
      - The platform attribute is available to indicate the URI of the target namespace for any platform extension being included. This platform attribute is to be omitted when specifying the core schema version.  
  
  
**Simple Content:** oval:SchemaVersionPattern

.. _MessageType:  
  
== MessageType ==  
---------------------------------------------------------
The MessageType complex type defines the structure for which messages are relayed from the data collection engine. Each message is a text string that has an associated level attribute identifying the type of message being sent. These messages could be error messages, warning messages, debug messages, etc. How the messages are used by tools and whether or not they are displayed to the user is up to the specific implementation. Please refer to the description of the MessageLevelEnumeration for more information about each type of message.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - level  
      - oval:MessageLevelEnumeration (optional *default*='info')  
      - (No Description)  
  
  
**Simple Content:** xsd:string

.. _NotesType:  
  
== NotesType ==  
---------------------------------------------------------
The NotesType complex type is a container for one or more note child elements. Each note contains some information about the definition or tests that it references. A note may record an unresolved question about the definition or test or present the reason as to why a particular approach was taken.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - note  
      - xsd:string (0..unbounded)  
      -   
  
______________
  
.. _CheckEnumeration:  
  
-- CheckEnumeration --  
---------------------------------------------------------
The CheckEnumeration simple type defines acceptable check values, which are used to determine the final result of something based on the results of individual components. When used to define the relationship between objects and states, each check value defines how many of the matching objects (items except those with a status of does not exist) must satisfy the given state for the test to return true. When used to define the relationship between instances of a given entity, the different check values defines how many instances must be true for the entity to return true. When used to define the relationship between entities and multiple variable values, each check value defines how many variable values must be true for the entity to return true.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - all  
      - | A value of 'all' means that a final result of true is given if all the individual results under consideration are true.  
    * - at least one  
      - | A value of 'at least one' means that a final result of true is given if at least one of the individual results under consideration is true.  
    * - none exist (Deprecated)  
      - | A value of 'none exists' means that a test evaluates to true if no matching object exists that satisfy the data requirements.  
        | **Deprecated As Of Version:** 5.3  
        | **Reason:** Replaced by the 'none satisfy' value. In version 5.3 of the OVAL Language, the checking of existence and state were separated into two distinct checks CheckEnumeration (state) and ExistenceEnumeration (existence). Since CheckEnumeration is now used to specify how many objects should satisfy a given state for a test to return true, and no longer used for specifying how many objects must exist for a test to return true, a value of 'none exist' is no longer needed. See the 'none satisfy' value.  
        | **Comment:** This value has been deprecated and will be removed in version 6.0 of the language.  
    * - none satisfy  
      - | A value of 'none satisfy' means that a final result of true is given if none the individual results under consideration are true.  
    * - only one  
      - | A value of 'only one' means that a final result of true is given if one and only one of the individual results under consideration are true.  
  
Below are some tables that outline how each check attribute effects evaluation. The far left column identifies the check attribute in question. The middle column specifies the different combinations of individual results that the check attribute may bind together. (T=true, F=false, E=error, U=unknown, NE=not evaluated, NA=not applicable) For example, a 1+ under T means that one or more individual results are true, while a 0 under U means that zero individual results are unknown. The last column specifies what the final result would be according to each combination of individual results. Note that if the individual test is negated, then a true result is false and a false result is true, all other results stay as is.  
```
               ||  num of individual results  ||
 check attr is ||                             ||  final result is
               || T  | F  | E  | U  | NE | NA ||
---------------||-----------------------------||------------------
               || 1+ | 0  | 0  | 0  | 0  | 0+ ||  True
               || 0+ | 1+ | 0+ | 0+ | 0+ | 0+ ||  False
     ALL       || 0+ | 0  | 1+ | 0+ | 0+ | 0+ ||  Error
               || 0+ | 0  | 0  | 1+ | 0+ | 0+ ||  Unknown
               || 0+ | 0  | 0  | 0  | 1+ | 0+ ||  Not Evaluated
               || 0  | 0  | 0  | 0  | 0  | 1+ ||  Not Applicable
---------------||-----------------------------||------------------  
```

  
```
               ||  num of individual results  ||
 check attr is ||                             ||  final result is
               || T  | F  | E  | U  | NE | NA ||
---------------||-----------------------------||------------------
               || 1+ | 0+ | 0+ | 0+ | 0+ | 0+ ||  True
               || 0  | 1+ | 0  | 0  | 0  | 0+ ||  False
  AT LEAST ONE || 0  | 0+ | 1+ | 0+ | 0+ | 0+ ||  Error
               || 0  | 0+ | 0  | 1+ | 0+ | 0+ ||  Unknown
               || 0  | 0+ | 0  | 0  | 1+ | 0+ ||  Not Evaluated
               || 0  | 0  | 0  | 0  | 0  | 1+ ||  Not Applicable
---------------||-----------------------------||------------------  
```

  
```
               ||  num of individual results  ||
 check attr is ||                             ||  final result is
               || T  | F  | E  | U  | NE | NA ||
---------------||-----------------------------||------------------
               || 1  | 0+ | 0  | 0  | 0  | 0+ ||  True
               || 2+ | 0+ | 0+ | 0+ | 0+ | 0+ ||  ** False **
               || 0  | 1+ | 0  | 0  | 0  | 0+ ||  ** False **
   ONLY ONE    ||0,1 | 0+ | 1+ | 0+ | 0+ | 0+ ||  Error
               ||0,1 | 0+ | 0  | 1+ | 0+ | 0+ ||  Unknown
               ||0,1 | 0+ | 0  | 0  | 1+ | 0+ ||  Not Evaluated
               || 0  | 0  | 0  | 0  | 0  | 1+ ||  Not Applicable
---------------||-----------------------------||------------------  
```

  
```
               ||  num of individual results  ||
 check attr is ||                             ||  final result is
               || T  | F  | E  | U  | NE | NA ||
---------------||-----------------------------||------------------
               || 0  | 1+ | 0  | 0  | 0  | 0+ ||  True
               || 1+ | 0+ | 0+ | 0+ | 0+ | 0+ ||  False
  NONE SATISFY || 0  | 0+ | 1+ | 0+ | 0+ | 0+ ||  Error
               || 0  | 0+ | 0  | 1+ | 0+ | 0+ ||  Unknown
               || 0  | 0+ | 0  | 0  | 1+ | 0+ ||  Not Evaluated
               || 0  | 0  | 0  | 0  | 0  | 1+ ||  Not Applicable
---------------||-----------------------------||------------------  
```

.. _ClassEnumeration:  
  
-- ClassEnumeration --  
---------------------------------------------------------
The ClassEnumeration simple type defines the different classes of definitions. Each class defines a certain intent regarding how an OVAL Definition is written and what that definition is describing. The specified class gives a hint about the definition so a user can know what the definition writer is trying to say. Note that the class does not make a statement about whether a true result is good or bad as this depends on the use of an OVAL Definition. These classes are also used to group definitions by the type of system state they are describing. For example, this allows users to find all the vulnerability (or patch, or inventory, etc) definitions.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - compliance  
      - | A compliance definition describes the state of a machine as it complies with a specific policy. A definition of this class will evaluate to true when the system is found to be compliant with the stated policy. Another way of thinking about this is that a compliance definition is stating "the system is compliant if ...".  
    * - inventory  
      - | An inventory definition describes whether a specific piece of software is installed on the system. A definition of this class will evaluate to true when the specified software is found on the system. Another way of thinking about this is that an inventory definition is stating "the software is installed if ...".  
    * - miscellaneous  
      - | The 'miscellaneous' class is used to identify definitions that do not fall into any of the other defined classes.  
    * - patch  
      - | A patch definition details the machine state of whether a patch executable should be installed. A definition of this class will evaluate to true when the specified patch is missing from the system. Another way of thinking about this is that a patch definition is stating "the patch should be installed if ...". Note that word SHOULD is intended to mean more than just CAN the patch executable be installed. In other words, if a more recent patch is already installed then the specified patch might not need to be installed.  
    * - vulnerability  
      - | A vulnerability definition describes the conditions under which a machine is vulnerable. A definition of this class will evaluate to true when the system is found to be vulnerable with the stated issue. Another way of thinking about this is that a vulnerability definition is stating "the system is vulnerable if ...".  
  
.. _SimpleDatatypeEnumeration:  
  
-- SimpleDatatypeEnumeration --  
---------------------------------------------------------
The SimpleDatatypeEnumeration simple type defines the legal datatypes that are used to describe the values of individual entities that can be represented in a XML string field. The value may have structure and a pattern, but it is represented as string content.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - binary  
      - | The binary datatype is used to represent hex-encoded data that is in raw (non-printable) form. This datatype conforms to the W3C Recommendation for binary data meaning that each binary octet is encoded as a character tuple, consisting of two hexadecimal digits {[0-9a-fA-F]} representing the octet code. Expected operations within OVAL for binary values are 'equals' and 'not equal'.  
    * - boolean  
      - | The boolean datatype represents standard boolean data, either true or false. This datatype conforms to the W3C Recommendation for boolean data meaning that the following literals are legal values: {true, false, 1, 0}. Expected operations within OVAL for boolean values are 'equals' and 'not equal'.  
    * - evr_string  
      - | The evr_string datatype represents the epoch, version, and release fields as a single version string. It has the form "EPOCH:VERSION-RELEASE". Comparisons involving this datatype should follow the algorithm of librpm's rpmvercmp() function. Expected operations within OVAL for evr_string values are 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', and 'less than or equal'.  
    * - debian_evr_string  
      - | The debian_evr_string datatype represents the epoch, upstream_version, and debian_revision fields, for a Debian package, as a single version string. It has the form "EPOCH:UPSTREAM_VERSION-DEBIAN_REVISION". Comparisons involving this datatype should follow the algorithm outlined in Chapter 5 of the "Debian Policy Manual" (https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Version). Note that a null epoch is equivalent to a value of '0'. An implementation of this is the cmpversions() function in dpkg's enquiry.c. Expected operations within OVAL for debian_evr_string values are 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', and 'less than or equal'.  
    * - fileset_revision  
      - | The fileset_revision datatype represents the version string related to filesets in HP-UX. An example would be 'A.03.61.00'. For more information, see the HP-UX "Software Distributor Administration Guide" (http://h20000.www2.hp.com/bc/docs/support/SupportManual/c01919399/c01919399.pdf). Expected operations within OVAL for fileset_version values are 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', and 'less than or equal'.  
    * - float  
      - | The float datatype describes standard float data. This datatype conforms to the W3C Recommendation for float data meaning it is patterned after the IEEE single-precision 32-bit floating point type. The format consists of a decimal followed, optionally, by the character 'E' or 'e', followed by an integer exponent. The special values positive and negative infinity and not-a-number have are represented by INF, -INF and NaN, respectively. Expected operations within OVAL for float values are 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', and 'less than or equal'.  
    * - ios_version  
      - | The ios_version datatype describes Cisco IOS Train strings. These are in essence version strings for IOS. Please refer to Cisco's IOS Reference Guide for information on how to compare different Trains as they follow a very specific pattern. Expected operations within OVAL for ios_version values are 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', and 'less than or equal'.  
    * - int  
      - | The int datatype describes standard integer data. This datatype conforms to the W3C Recommendation for integer data which follows the standard mathematical concept of the integer numbers. (no decimal point and infinite range) Expected operations within OVAL for int values are 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', 'bitwise and', and 'bitwise or'.  
    * - ipv4_address  
      - | The ipv4_address datatype represents IPv4 addresses and IPv4 address prefixes. Its value space consists of the set of ordered pairs of integers where the first element of each pair is in the range [0,2^32) (the representable range of a 32-bit unsigned int), and the second is in the range [0,32]. The first element is an address, and the second is a prefix length.The lexical space is dotted-quad CIDR-like notation ('a.b.c.d' where 'a', 'b', 'c', and 'd' are integers from 0-255), optionally followed by a slash ('/') and either a prefix length (an integer from 0-32) or a netmask represented in the dotted-quad notation described previously. Examples of legal values are '192.0.2.0', '192.0.2.0/32', and '192.0.2.0/255.255.255.255'. Additionally, leading zeros are permitted such that '192.0.2.0' is equal to '192.000.002.000'. If a prefix length is not specified, it is implicitly equal to 32.The expected operations within OVAL for ipv4_address values are 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', 'subset of', and 'superset of'. All operations are defined in terms of the value space. Let A and B be ipv4_address values (i.e. ordered pairs from the value space). The following definitions assume that bits outside the prefix have been zeroed out. By zeroing the low order bits, they are effectively ignored for all operations. Implementations of the following operations MUST behave as if this has been done.The following defines how to perform each operation for the ipv4_address datatype. Let P_addr mean the first element of ordered pair P and P_prefix mean the second element.equals: A equals B if and only if A_addr == B_addr and A_prefix == B_prefix.not equal: A is not equal to B if and only if they don't satisfy the criteria for operator "equals".greater than: A is greater than B if and only if A_prefix == B_prefix and A_addr > B_addr. If A_prefix != B_prefix, i.e. prefix lengths are not equal, an error MUST be reported.greater than or equal: A is greater than or equal to B if and only if A_prefix == B_prefix and they satisfy either the criteria for operators "equal" or "greater than". If A_prefix != B_prefix, i.e. prefix lengths are not equal, an error MUST be reported.less than: A is less than B if and only if A_prefix == B_prefix and they don't satisfy the criteria for operator "greater than or equal". If A_prefix != B_prefix, i.e. prefix lengths are not equal, an error MUST be reported.less than or equal: A is less than or equal to B if and only if A_prefix == B_prefix and they don't satisfy the criteria for operator "greater than". If A_prefix != B_prefix, i.e. prefix lengths are not equal, an error MUST be reported.subset of: A is a subset of B if and only if every IPv4 address in subnet A is present in subnet B. In other words, A_prefix >= B_prefix and the high B_prefix bits of A_addr and B_addr are equal.superset of: A is a superset of B if and only if B is a subset of A.  
    * - ipv6_address  
      - | The ipv6_address datatype represents IPv6 addresses and IPv6 address prefixes. Its value space consists of the set of ordered pairs of integers where the first element of each pair is in the range [0,2^128) (the representable range of a 128-bit unsigned int), and the second is in the range [0,128]. The first element is an address, and the second is a prefix length.The lexical space is CIDR notation given in IETF specification RFC 4291 for textual representations of IPv6 addresses and IPv6 address prefixes (see sections 2.2 and 2.3). If a prefix-length is not specified, it is implicitly equal to 128.The expected operations within OVAL for ipv6_address values are 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', 'less than or equal', 'subset of', and 'superset of'. All operations are defined in terms of the value space. Let A and B be ipv6_address values (i.e. ordered pairs from the value space). The following definitions assume that bits outside the prefix have been zeroed out. By zeroing the low order bits, they are effectively ignored for all operations. Implementations of the following operations MUST behave as if this has been done.The following defines how to perform each operation for the ipv6_address datatype. Let P_addr mean the first element of ordered pair P and P_prefix mean the second element.equals: A equals B if and only if A_addr == B_addr and A_prefix == B_prefix.not equal: A is not equal to B if and only if they don't satisfy the criteria for operator "equals".greater than: A is greater than B if and only if A_prefix == B_prefix and A_addr > B_addr. If A_prefix != B_prefix, an error MUST be reported.greater than or equal: A is greater than or equal to B if and only if A_prefix == B_prefix and they satisfy either the criteria for operators "equal" or "greater than". If A_prefix != B_prefix, an error MUST be reported.less than: A is less than B if and only if A_prefix == B_prefix and they don't satisfy the criteria for operator "greater than or equal". If A_prefix != B_prefix, an error MUST be reported.less than or equal: A is less than or equal to B if and only if A_prefix == B_prefix and they don't satisfy the criteria for operator "greater than". If A_prefix != B_prefix, an error MUST be reported.subset of: A is a subset of B if and only if every IPv6 address in subnet A is present in subnet B. In other words, A_prefix >= B_prefix and the high B_prefix bits of A_addr and B_addr are equal.superset of: A is a superset of B if and only if B is a subset of A.  
    * - string  
      - | The string datatype describes standard string data. This datatype conforms to the W3C Recommendation for string data. Expected operations within OVAL for string values are 'equals', 'not equal', 'case insensitive equals', 'case insensitive not equal', 'pattern match'.  
    * - version  
      - | The version datatype represents a value that is a hierarchical list of non-negative integers separated by a single character delimiter. Note that any non-number character can be used as a delimiter and that different characters can be used within the same version string. So '#.#-#' is the same as '#.#.#' or '#c#c#' where '#' is any non-negative integer. Expected operations within OVAL for version values are 'equals', 'not equal', 'greater than', 'greater than or equal', 'less than', and 'less than or equal'.For example '#.#.#' or '#-#-#-#' where the numbers to the left are more significant than the numbers to the right. When performing an 'equals' operation on a version datatype, you should first check the left most number for equality. If that fails, then the values are not equal. If it succeeds, then check the second left most number for equality. Continue checking the numbers from left to right until the last number has been checked. If, after testing all the previous numbers, the last number is equal then the two versions are equal. When performing other operations, such as 'less than', 'less than or equal', 'greater than, or 'greater than or equal', similar logic as above is used. Start with the left most number and move from left to right. For each number, check if it is less than the number you are testing against. If it is, then the version in question is less than the version you are testing against. If the number is equal, then move to check the next number to the right. For example, to test if 5.7.23 is less than or equal to 5.8.0 you first compare 5 to 5. They are equal so you move on to compare 7 to 8. 7 is less than 8 so the entire test succeeds and 5.7.23 is 'less than or equal' to 5.8.0. The difference between the 'less than' and 'less than or equal' operations is how the last number is handled. If the last number is reached, the check should use the given operation (either 'less than' and 'less than or equal') to test the number. For example, to test if 4.23.6 is greater than 4.23.6 you first compare 4 to 4. They are equal so you move on to compare 23 to 23. They are equal so you move on to compare 6 to 6. This is the last number in the version and since 6 is not greater than 6, the entire test fails and 4.23.6 is not greater than 4.23.6.Version strings with a different number of components shall be padded with zeros to make them the same size. For example, if the version strings '1.2.3' and '6.7.8.9' are being compared, then the short one should be padded to become '1.2.3.0'.  
  
.. _ComplexDatatypeEnumeration:  
  
-- ComplexDatatypeEnumeration --  
---------------------------------------------------------
The ComplexDatatypeEnumeration simple type defines the complex legal datatypes that are supported in OVAL. These datatype describe the values of individual entities where the entity has some complex structure beyond simple string like content.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - record  
      - | The record datatype describes an entity with structured set of named fields and values as its content. The only allowed operation within OVAL for record values is 'equals'. Note that the record datatype is not currently allowed when using variables.  
  
.. _DatatypeEnumeration:  
  
-- DatatypeEnumeration --  
---------------------------------------------------------
The DatatypeEnumeration simple type defines the legal datatypes that are used to describe the values of individual entities. A value should be interpreted according to the specified type. This is most important during comparisons. For example, is '21' less than '123'? will evaluate to true if the datatypes are 'int', but will evaluate to 'false' if the datatypes are 'string'. Another example is applying the 'equal' operation to '1.0.0.0' and '1.0'. With datatype 'string' they are not equal, with datatype 'version' they are.

** Union of **oval:SimpleDatatypeEnumeration, oval:ComplexDatatypeEnumeration  
.. _ExistenceEnumeration:  
  
-- ExistenceEnumeration --  
---------------------------------------------------------
The ExistenceEnumeration simple type defines acceptable existence values, which are used to determine a result based on the existence of individual components. The main use for this is for a test regarding the existence of objects on the system. Its secondary use is for a state regarding the existence of entities in corresponding items.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - all_exist  
      - | When used in the context of an OVAL state entity's check_existence attribute, a value of 'all_exist' means that every item entity for an object defined by the description exists on the system. When used in the context of an OVAL test's check_existence attribute, this value is equivalent to 'at_least_one_exists' because non-existent items have no impact upon evaluation.  
    * - any_exist  
      - | A value of 'any_exist' means that zero or more objects defined by the description exist on the system.  
    * - at_least_one_exists  
      - | A value of 'at_least_one_exists' means that at least one object defined by the description exists on the system.  
    * - none_exist  
      - | A value of 'none_exist' means that none of the objects defined by the description exist on the system.  
    * - only_one_exists  
      - | A value of 'only_one_exists' means that only one object defined by the description exists on the system.  
  
Below are some tables that outline how each ExistenceEnumeration value effects evaluation of a given test.  Note that this is related to the existence of an object(s) and not the object(s) compliance with a state.  The left column identifies the ExistenceEnumeration value in question. The middle column specifies the different combinations of individual item status values that have been found in the system characteristics file related to the given object. (EX=exists, DE=does not exist, ER=error, NC=not collected) For example, a 1+ under EX means that one or more individual item status attributes are set to exists, while a 0 under NC means that zero individual item status attributes are set to not collected.  The last column specifies what the result of the existence piece would be according to each combination of individual item status values.  
```
                    ||  item status value count  ||
       attr value   ||                           || existence piece is
                    ||  EX  |  DE  |  ER  |  NC  ||
--------------------||---------------------------||------------------
                    ||  1+  |  0   |  0   |  0   ||  True
                    ||  0   |  0   |  0   |  0   ||  False
                    ||  0+  |  1+  |  0+  |  0+  ||  False  
        all_exist   ||  0+  |  0   |  1+  |  0+  ||  Error
                    ||  0+  |  0   |  0   |  1+  ||  Unknown
                    ||  --  |  --  |  --  |  --  ||  Not Evaluated
                    ||  --  |  --  |  --  |  --  ||  Not Applicable
--------------------||---------------------------||------------------  
```

  
```
                    ||  item status value count  ||
       attr value   ||                           ||  existence piece is
                    ||  EX  |  DE  |  ER  |  NC  ||
--------------------||---------------------------||------------------
                    ||  0+  |  0+  |  0   |  0+  ||  True 
                    ||  1+  |  0+  |  1+  |  0+  ||  True
                    ||  --  |  --  |  --  |  --  ||  False
        any_exist   ||  0   |  0+  |  1+  |  0+  ||  Error
                    ||  --  |  --  |  --  |  --  ||  Unknown
                    ||  --  |  --  |  --  |  --  ||  Not Evaluated
                    ||  --  |  --  |  --  |  --  ||  Not Applicable
--------------------||---------------------------||------------------  
```

  
```
                    ||  item status value count  ||
       attr value   ||                           ||  existence piece is
                    ||  EX  |  DE  |  ER  |  NC  ||
--------------------||---------------------------||------------------
                    ||  1+  |  0+  |  0+  |  0+  ||  True 
                    ||  0   |  0+  |  0   |  0   ||  False
at_least_one_exists ||  0   |  0+  |  1+  |  0+  ||  Error
                    ||  0   |  0+  |  0   |  1+  ||  Unknown
                    ||  --  |  --  |  --  |  --  ||  Not Evaluated
                    ||  --  |  --  |  --  |  --  ||  Not Applicable
--------------------||---------------------------||------------------  
```

  
```
                    ||  item status value count  ||
       attr value   ||                           ||  existence piece is
                    ||  EX  |  DE  |  ER  |  NC  ||
--------------------||---------------------------||------------------
                    ||  0   |  0+  |  0   |  0   ||  True 
                    ||  1+  |  0+  |  0+  |  0+  ||  False
       none_exist   ||  0   |  0+  |  1+  |  0+  ||  Error
                    ||  0   |  0+  |  0   |  1+  ||  Unknown
                    ||  --  |  --  |  --  |  --  ||  Not Evaluated
                    ||  --  |  --  |  --  |  --  ||  Not Applicable
--------------------||---------------------------||------------------  
```

  
```
                    ||  item status value count  ||
       attr value   ||                           ||  existence piece is
                    ||  EX  |  DE  |  ER  |  NC  ||
--------------------||---------------------------||------------------
                    ||  1   |  0+  |  0   |  0   ||  True 
                    ||  2+  |  0+  |  0+  |  0+  ||  False
                    ||  0   |  0+  |  0   |  0   ||  False
  only_one_exists   ||  0,1 |  0+  |  1+  |  0+  ||  Error
                    ||  0,1 |  0+  |  0   |  1+  ||  Unknown
                    ||  --  |  --  |  --  |  --  ||  Not Evaluated
                    ||  --  |  --  |  --  |  --  ||  Not Applicable
--------------------||---------------------------||------------------  
```

.. _FamilyEnumeration:  
  
-- FamilyEnumeration --  
---------------------------------------------------------
The FamilyEnumeration simple type is a listing of families that OVAL supports at this time. Since new family values can only be added with new version of the schema, the value of 'undefined' is to be used when the desired family is not available. Note that use of the undefined family value does not target all families, rather it means that some family other than one of the defined values is targeted.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - android  
      - | The android value describes the Android mobile operating system.  
    * - asa  
      - | The asa value describes the Cisco ASA security devices.  
    * - apple_ios  
      - | The apple_ios value describes the iOS mobile operating system.  
    * - aws  
      - | The aws value describes the Amazon Web Services platform.  
    * - catos  
      - | The catos value describes the Cisco CatOS operating system.  
    * - ios  
      - | The ios value describes the Cisco IOS operating system.  
    * - iosxe  
      - | The iosxe value describes the Cisco IOS XE operating system.  
    * - junos  
      - | The junos value describes the Juniper JunOS operating system.  
    * - macos  
      - | The macos value describes the Mac operating system.  
    * - panos  
      - | The panos value describes the Palo Alto Networks operating system.  
    * - pixos  
      - | The pixos value describes the Cisco PIX operating system.  
    * - undefined  
      - | The undefined value is to be used when the desired family is not available.  
    * - unix  
      - | The unix value describes the UNIX operating system.  
    * - vmware_infrastructure  
      - | The vmware_infrastructure value describes VMWare Infrastructure.  
    * - windows  
      - | The windows value describes the Microsoft Windows operating system.  
  
.. _MessageLevelEnumeration:  
  
-- MessageLevelEnumeration --  
---------------------------------------------------------
The MessageLevelEnumeration simple type defines the different levels associated with a message. There is no specific criteria about which messages get assigned which level. This is completely arbitrary and up to the content producer to decide what is an error message and what is a debug message.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - debug  
      - | Debug messages should only be displayed by a tool when run in some sort of verbose mode.  
    * - error  
      - | Error messages should be recorded when there was an error that did not allow the collection of specific data.  
    * - fatal  
      - | A fatal message should be recorded when an error causes the failure of more than just a single piece of data.  
    * - info  
      - | Info messages are used to pass useful information about the data collection to a user.  
    * - warning  
      - | A warning message reports something that might not correct but information was still collected.  
  
.. _OperationEnumeration:  
  
-- OperationEnumeration --  
---------------------------------------------------------
The OperationEnumeration simple type defines acceptable operations. Each operation defines how to compare entities against their actual values.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - equals  
      - | The 'equals' operation returns true if the actual value on the system is equal to the stated entity. When the specified datatype is a string, this results in a case-sensitive comparison.  
    * - not equal  
      - | The 'not equal' operation returns true if the actual value on the system is not equal to the stated entity. When the specified datatype is a string, this results in a case-sensitive comparison.  
    * - case insensitive equals  
      - | The 'case insensitive equals' operation is meant for string data and returns true if the actual value on the system is equal (using a case insensitive comparison) to the stated entity.  
    * - case insensitive not equal  
      - | The 'case insensitive not equal' operation is meant for string data and returns true if the actual value on the system is not equal (using a case insensitive comparison) to the stated entity.  
    * - greater than  
      - | The 'greater than' operation returns true if the actual value on the system is greater than the stated entity.  
    * - less than  
      - | The 'less than' operation returns true if the actual value on the system is less than the stated entity.  
    * - greater than or equal  
      - | The 'greater than or equal' operation returns true if the actual value on the system is greater than or equal to the stated entity.  
    * - less than or equal  
      - | The 'less than or equal' operation returns true if the actual value on the system is less than or equal to the stated entity.  
    * - bitwise and  
      - | The 'bitwise and' operation is used to determine if a specific bit is set. It returns true if performing a BITWISE AND with the binary representation of the stated entity against the binary representation of the actual value on the system results in a binary value that is equal to the binary representation of the stated entity. For example, assuming a datatype of 'int', if the actual integer value of the setting on your machine is 6 (same as 0110 in binary), then performing a 'bitwise and' with the stated integer 4 (0100) returns 4 (0100). Since the result is the same as the state mask, then the test returns true. If the actual value on your machine is 1 (0001), then the 'bitwise and' with the stated integer 4 (0100) returns 0 (0000). Since the result is not the same as the stated mask, then the test fails.  
    * - bitwise or  
      - | The 'bitwise or' operation is used to determine if a specific bit is not set. It returns true if performing a BITWISE OR with the binary representation of the stated entity against the binary representation of the actual value on the system results in a binary value that is equal to the binary representation of the stated entity. For example, assuming a datatype of 'int', if the actual integer value of the setting on your machine is 6 (same as 0110 in binary), then performing a 'bitwise or' with the stated integer 14 (1110) returns 14 (1110). Since the result is the same as the state mask, then the test returns true. If the actual value on your machine is 1 (0001), then the 'bitwise or' with the stated integer 14 (1110) returns 15 (1111). Since the result is not the same as the stated mask, then the test fails.  
    * - pattern match  
      - | The 'pattern match' operation allows an item to be tested against a regular expression. When used by an entity in an OVAL Object, the regular expression represents the unique set of matching items on the system. OVAL supports a common subset of the regular expression character classes, operations, expressions and other lexical tokens defined within Perl 5's regular expression specification. For more information on the supported regular expression syntax in OVAL see: http://oval.mitre.org/language/about/re_support_5.6.html  
    * - subset of  
      - | The 'subset of' operation returns true if the actual set on the system is a subset of the set defined by the stated entity.  
    * - superset of  
      - | The 'superset of' operation returns true if the actual set on the system is a superset of the set defined by the stated entity.  
  
.. _OperatorEnumeration:  
  
-- OperatorEnumeration --  
---------------------------------------------------------
The OperatorEnumeration simple type defines acceptable operators. Each operator defines how to evaluate multiple arguments.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - AND  
      - | The AND operator produces a true result if every argument is true. If one or more arguments are false, the result of the AND is false. If one or more of the arguments are unknown, and if none of the arguments are false, then the AND operator produces a result of unknown.  
    * - ONE  
      - | The ONE operator produces a true result if one and only one argument is true. If there are more than argument is true (or if there are no true arguments), the result of the ONE is false. If one or more of the arguments are unknown, then the ONE operator produces a result of unknown.  
    * - OR  
      - | The OR operator produces a true result if one or more arguments is true. If every argument is false, the result of the OR is false. If one or more of the arguments are unknown and if none of arguments are true, then the OR operator produces a result of unknown.  
    * - XOR  
      - | XOR is defined to be true if an odd number of its arguments are true, and false otherwise. If any of the arguments are unknown, then the XOR operator produces a result of unknown.  
  
Below are some tables that outline how each operator effects evaluation. The far left column identifies the operator in question. The middle column specifies the different combinations of individual results that the operator may bind together. (T=true, F=false, E=error, U=unknown, NE=not evaluated, NA=not applicable) For example, a 1+ under T means that one or more individual results are true, while a 0 under U means that zero individual results are unknown. The last column specifies what the final result would be according to each combination of individual results. Note that if the individual test is negated, then a true result is false and a false result is true, all other results stay as is.  
```
               ||  num of individual results  ||
  operator is  ||                             ||  final result is
               || T  | F  | E  | U  | NE | NA ||
---------------||-----------------------------||------------------
               || 1+ | 0  | 0  | 0  | 0  | 0+ ||  True
               || 0+ | 1+ | 0+ | 0+ | 0+ | 0+ ||  False
      AND      || 0+ | 0  | 1+ | 0+ | 0+ | 0+ ||  Error
               || 0+ | 0  | 0  | 1+ | 0+ | 0+ ||  Unknown
               || 0+ | 0  | 0  | 0  | 1+ | 0+ ||  Not Evaluated
               || 0  | 0  | 0  | 0  | 0  | 1+ ||  Not Applicable
---------------||-----------------------------||------------------  
```

  
```
               ||  num of individual results  || 
  operator is  ||                             ||  final result is
               || T  | F  | E  | U  | NE | NA ||
---------------||-----------------------------||------------------
               || 1  | 0+ | 0  | 0  | 0  | 0+ ||  True
               || 2+ | 0+ | 0+ | 0+ | 0+ | 0+ ||  ** False **
               || 0  | 1+ | 0  | 0  | 0  | 0+ ||  ** False **
      ONE      ||0,1 | 0+ | 1+ | 0+ | 0+ | 0+ ||  Error
               ||0,1 | 0+ | 0  | 1+ | 0+ | 0+ ||  Unknown
               ||0,1 | 0+ | 0  | 0  | 1+ | 0+ ||  Not Evaluated
               || 0  | 0  | 0  | 0  | 0  | 1+ ||  Not Applicable
---------------||-----------------------------||------------------  
```

  
```
               ||  num of individual results  || 
  operator is  ||                             ||  final result is
               || T  | F  | E  | U  | NE | NA ||
---------------||-----------------------------||------------------
               || 1+ | 0+ | 0+ | 0+ | 0+ | 0+ ||  True
               || 0  | 1+ | 0  | 0  | 0  | 0+ ||  False
      OR       || 0  | 0+ | 1+ | 0+ | 0+ | 0+ ||  Error
               || 0  | 0+ | 0  | 1+ | 0+ | 0+ ||  Unknown
               || 0  | 0+ | 0  | 0  | 1+ | 0+ ||  Not Evaluated
               || 0  | 0  | 0  | 0  | 0  | 1+ ||  Not Applicable
---------------||-----------------------------||------------------  
```

  
```
               ||  num of individual results  ||
  operator is  ||                             ||  final result is
               || T  | F  | E  | U  | NE | NA ||
---------------||-----------------------------||------------------
               ||odd | 0+ | 0  | 0  | 0  | 0+ ||  True
               ||even| 0+ | 0  | 0  | 0  | 0+ ||  False
      XOR      || 0+ | 0+ | 1+ | 0+ | 0+ | 0+ ||  Error
               || 0+ | 0+ | 0  | 1+ | 0+ | 0+ ||  Unknown
               || 0+ | 0+ | 0  | 0  | 1+ | 0+ ||  Not Evaluated
               || 0  | 0  | 0  | 0  | 0  | 1+ ||  Not Applicable
---------------||-----------------------------||------------------  
```

______________
  
.. _DefinitionIDPattern:  
  
-- DefinitionIDPattern --  
---------------------------------------------------------
Define the format for acceptable OVAL Definition ids. An urn format is used with the id starting with the word oval followed by a unique string, followed by the three letter code 'def', and ending with an integer.

oval:[A-Za-z0-9_\-\.]+:def:[1-9][0-9]*.. _ObjectIDPattern:  
  
-- ObjectIDPattern --  
---------------------------------------------------------
Define the format for acceptable OVAL Object ids. An urn format is used with the id starting with the word oval followed by a unique string, followed by the three letter code 'obj', and ending with an integer.

oval:[A-Za-z0-9_\-\.]+:obj:[1-9][0-9]*.. _StateIDPattern:  
  
-- StateIDPattern --  
---------------------------------------------------------
Define the format for acceptable OVAL State ids. An urn format is used with the id starting with the word oval followed by a unique string, followed by the three letter code 'ste', and ending with an integer.

oval:[A-Za-z0-9_\-\.]+:ste:[1-9][0-9]*.. _TestIDPattern:  
  
-- TestIDPattern --  
---------------------------------------------------------
Define the format for acceptable OVAL Test ids. An urn format is used with the id starting with the word oval followed by a unique string, followed by the three letter code 'tst', and ending with an integer.

oval:[A-Za-z0-9_\-\.]+:tst:[1-9][0-9]*.. _VariableIDPattern:  
  
-- VariableIDPattern --  
---------------------------------------------------------
Define the format for acceptable OVAL Variable ids. An urn format is used with the id starting with the word oval followed by a unique string, followed by the three letter code 'var', and ending with an integer.

oval:[A-Za-z0-9_\-\.]+:var:[1-9][0-9]*.. _ItemIDPattern:  
  
-- ItemIDPattern --  
---------------------------------------------------------
Define the format for acceptable OVAL Item ids. The format is an integer. An item id is used to identify the different items found in an OVAL System Characteristics file.

.. _SchemaVersionPattern:  
  
-- SchemaVersionPattern --  
---------------------------------------------------------
Define the format for acceptable OVAL Language version strings.

[0-9]+\.[0-9]+(\.[0-9]+)?(:[0-9]+\.[0-9]+(\.[0-9]+)?)?______________
  
.. _EmptyStringType:  
  
-- EmptyStringType --  
---------------------------------------------------------
The EmptyStringType simple type is a restriction of the built-in string simpleType. The only allowed string is the empty string with a length of zero. This type is used by certain elements to allow empty content when non-string data is accepted. See the EntityIntType in the OVAL Definition Schema for an example of its use.

.. _NonEmptyStringType:  
  
-- NonEmptyStringType --  
---------------------------------------------------------
The NonEmptyStringType simple type is a restriction of the built-in string simpleType. Empty strings are not allowed. This type is used by comment attributes where an empty value is not allowed.

