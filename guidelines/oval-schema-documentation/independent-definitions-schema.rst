Open Vulnerability and Assessment Language: Independent Definition  
=========================================================
* Schema: Independent Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the tests found in Open Vulnerability and Assessment Language (OVAL) that are independent of a specific piece of software. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`family_test`  
* :ref:`filehash_test` (Deprecated)  
* :ref:`filehash58_test`  
* :ref:`environmentvariable_test` (Deprecated)  
* :ref:`environmentvariable58_test`  
* :ref:`ldap_test` (Deprecated)  
* :ref:`ldap57_test` (Deprecated)  
* :ref:`shellcommand_test`  
* :ref:`sql_test` (Deprecated)  
* :ref:`sql57_test` (Deprecated)  
* :ref:`sql512_test`  
* :ref:`textfilecontent54_test`  
* :ref:`textfilecontent_test` (Deprecated)  
* :ref:`unknown_test`  
* :ref:`variable_test`  
* :ref:`xmlfilecontent_test`  
* :ref:`yamlfilecontent_test`  
  
______________
  
.. _family_test:  
  
< family_test >  
---------------------------------------------------------
The family_test element is used to check the family a certain system belongs to. This test basically allows the high level system types (window, unix, ios, etc.) to be tested. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a family_object and the optional state element specifies the metadata to check.

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
  
.. _family_object:  
  
< family_object >  
---------------------------------------------------------
The family_object element is used by a family test to define those objects to evaluate based on a specified state. There is actually only one object relating to family and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check the family will reference the same family_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _family_state:  
  
< family_state >  
---------------------------------------------------------
The family_state element contains a single entity that is used to check the family associated with the system. The family is a high-level classification of system types.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - family  
      - ind-def:EntityStateFamilyType (0..1)  
      - This element describes the high-level system OS type to test against. Please refer to the definition of the EntityFamilyType for more information about the possible values..  
  
______________
  
.. _filehash_test:  
  
< filehash_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: Replaced by the filehash58_test.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The file hash test is used to check the hashes associated with a specified file. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a filehash_object and the optional state element specifies the different hashes to check.

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
  
.. _filehash_object:  
  
< filehash_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: Replaced by the filehash58_object.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The filehash_object element is used by a file hash test to define the specific file(s) to be evaluated. The filehash_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A filehash_object defines the path and filename of the file(s). In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileBehaviors complex type for more information about specific behaviors.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - ind-def:FileBehaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of the file.  
  
.. _filehash_state:  
  
< filehash_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: Replaced by the filehash58_state.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The filehash_state element contains entities that are used to check the file path, name, and the different hashes associated with a specific file.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The filename element specifies the name of the file.  
    * - md5  
      - oval-def:EntityStateStringType (0..1)  
      - The md5 element is the md5 hash of the file.  
    * - sha1  
      - oval-def:EntityStateStringType (0..1)  
      - The sha1 element is the sha1 hash of the file.  
    * - windows_view  
      - ind-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
______________
  
.. _filehash58_test:  
  
< filehash58_test >  
---------------------------------------------------------
The file hash test is used to check a specific hash type associated with a specified file. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a filehash58_object and the optional state element specifies an expected hash value.

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
  
.. _filehash58_object:  
  
< filehash58_object >  
---------------------------------------------------------
The filehash58_object element is used by a file hash test to define the specific file(s) to be evaluated. The filehash58_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A filehash58_object defines the path and filename of the file(s). In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileBehaviors complex type for more information about specific behaviors.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - ind-def:FileBehaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path entity specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename entity specifies the name of the file.  
    * - hash_type  
      - ind-def:EntityObjectHashTypeType (1..1)  
      - The hash_type entity specifies the hash algorithm to use when collecting the hash for each of the specifed files.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _filehash58_state:  
  
< filehash58_state >  
---------------------------------------------------------
The filehash58_state element contains entities that are used to check the file path, name, hash_type, and hash associated with a specific file.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The filepath entity specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path entity specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The filename entity specifies the name of the file.  
    * - hash_type  
      - ind-def:EntityStateHashTypeType (0..1)  
      - The hash_type entity specifies the hash algorithm to use when collecting the hash for each of the specifed files.  
    * - hash  
      - oval-def:EntityStateStringType (0..1)  
      - The hash entity specifies the result of applying the hash algorithm to the file.  
    * - windows_view  
      - ind-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
______________
  
.. _environmentvariable_test:  
  
< environmentvariable_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: Replaced by the environmentvariable58_test.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The environmentvariable_test element is used to check an environment variable found on the system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a environmentvariable_object and the optional state element specifies the metadata to check.

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
  
.. _environmentvariable_object:  
  
< environmentvariable_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: Replaced by the environmentvariable58_object.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The environmentvariable_object element is used by an environment variable test to define the specific environment variable(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-def:EntityObjectStringType (1..1)  
      - This element describes the name of an environment variable.  
  
.. _environmentvariable_state:  
  
< environmentvariable_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: Replaced by the environmentvariable58_state.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The environmentvariable_state element contains two entities that are used to check the name of the specified environment variable and the value associated with it.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - This element describes the name of an environment variable.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The actual value of the specified environment variable.  
  
______________
  
.. _environmentvariable58_test:  
  
< environmentvariable58_test >  
---------------------------------------------------------
The environmentvariable58_test element is used to check an environment variable for the specified process, which is identified by its process ID, on the system . It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a environmentvariable_object and the optional state element specifies the metadata to check.

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
  
.. _environmentvariable58_object:  
  
< environmentvariable58_object >  
---------------------------------------------------------
The environmentvariable58_object element is used by an environmentvariable58_test to define the specific environment variable(s) and process IDs to be evaluated. If a tool is unable to collect the environment variables of another process, an error must be reported. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pid  
      - oval-def:EntityObjectIntType (1..1)  
      - The process ID of the process from which the environment variable should be retrieved. If the xsi:nil attribute is set to true, the process ID shall be the tool's running process; for scanners with no process ID (e.g., an agentless network scanner), no corresponding items will exist.  
    * - name  
      - oval-def:EntityObjectStringType (1..1)  
      - This element describes the name of an environment variable.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _environmentvariable58_state:  
  
< environmentvariable58_state >  
---------------------------------------------------------
The environmentvariable58_state element contains three entities that are used to check the name of the specified environment variable, the process ID of the process from which the environment variable was retrieved, and the value associated with the environment variable.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - The process ID of the process from which the environment variable was retrieved.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - This element describes the name of an environment variable.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The actual value of the specified environment variable.  
  
______________
  
.. _ldap_test:  
  
< ldap_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The LDAP test is used to check information about specific entries in an LDAP directory. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an ldap_object and the optional state element, ldap_state, specifies the metadata to check.

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
  
.. _ldap_object:  
  
< ldap_object >  
---------------------------------------------------------
The ldap_object element is used by an LDAP test to define the objects to be evaluated based on a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - ind-def:LdapBehaviors (0..1)  
      -   
    * - suffix  
      - oval-def:EntityObjectStringType (1..1)  
      - Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.  
    * - relative_dn  
      - oval-def:EntityObjectStringType (1..1)  
      - The relative_dn field is used to uniquely identify an object inside the specified suffix. It contains all of the parts of the object's distinguished name except those outlined by the suffix. If the xsi:nil attribute is set to true, then the object being specified is the higher level suffix. In this case, the relative_dn element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every relative distinguished name under a given suffix.  
    * - attribute  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies a named value contained by the object. If the xsi:nil attribute is set to true, the attribute element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every attribute under a given relative distinguished name.  
  
.. _ldap_state:  
  
< ldap_state >  
---------------------------------------------------------
The ldap_state element defines the different information that can be used to evaluate the specified entries in an LDAP directory. An ldap_test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - suffix  
      - oval-def:EntityStateStringType (0..1)  
      - Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.  
    * - relative_dn  
      - oval-def:EntityStateStringType (0..1)  
      - The relative_dn field is used to uniquely identify an object inside the specified suffix. It contains all of the parts of the object's distinguished name except those outlined by the suffix.  
    * - attribute  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies a named value contained by the object.  
    * - object_class  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the class of which the object is an instance.  
    * - ldaptype  
      - ind-def:EntityStateLdaptypeType (0..1)  
      - Specifies the type of information that the specified attribute represents.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The actual value of the specified LDAP attribute.  
  
.. _LdapBehaviors:  
  
== LdapBehaviors ==  
---------------------------------------------------------
The LdapBehaviors complex type defines a number of behaviors that allow a more detailed definition of the ldap_object being specified.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - scope  
      - Restriction of xsd:string (optional *default*='BASE') ('BASE', 'ONE', 'SUBTREE')  
      - 'scope' defines the depth from the base distinguished name to which the search should occur. The base distinguished name is the starting point of the search and is composed of the specified suffix and relative distinguished name. A value of 'BASE' indicates to search only the entry at the base distinguished name, a value of 'ONE' indicates to search all entries one level under the base distinguished name - but NOT including the base distinguished name, and a value of 'SUBTREE' indicates to search all entries at all levels under, and including, the specified base distinguished name. The default value is 'BASE'.  
  
  
______________
  
.. _ldap57_test:  
  
< ldap57_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2  
* Reason: Use the original ldap_test. The ldap57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated LdaptypeTypes. Use the original ldap_test instead.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The LDAP test is used to check information about specific entries in an LDAP directory. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an ldap57_object and the optional state element, ldap57_state, specifies the metadata to check.

Note that this test supports complex values that are in the form of a record. For simple (string based) value collection see the ldap_test.

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
  
.. _ldap57_object:  
  
< ldap57_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2  
* Reason: Use the original ldap_object. The ldap57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated LdaptypeTypes. Use the original ldap_test instead.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The ldap57_object element is used by an LDAP test to define the objects to be evaluated based on a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

Note that this object supports complex values that are in the form of a record. For simple (string based) value collection see the ldap_object.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - ind-def:LdapBehaviors (0..1)  
      -   
    * - suffix  
      - oval-def:EntityObjectStringType (1..1)  
      - Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.  
    * - relative_dn  
      - oval-def:EntityObjectStringType (1..1)  
      - The relative_dn field is used to uniquely identify an object inside the specified suffix. It contains all of the parts of the object's distinguished name except those outlined by the suffix. If the xsi:nil attribute is set to true, then the object being specified is the higher level suffix. In this case, the relative_dn element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every relative distinguished name under a given suffix.  
    * - attribute  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies a named value contained by the object. If the xsi:nil attribute is set to true, the attribute element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every attribute under a given relative distinguished name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _ldap57_state:  
  
< ldap57_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2  
* Reason: Use the original ldap_state. The ldap57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated LdaptypeTypes. Use the original ldap_test instead.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The ldap57_state element defines the different information that can be used to evaluate the specified entries in an LDAP directory. An ldap57_test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

Note that this state supports complex values that are in the form of a record. For simple (string based) value collection see the ldap_state.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - suffix  
      - oval-def:EntityStateStringType (0..1)  
      - Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.  
    * - relative_dn  
      - oval-def:EntityStateStringType (0..1)  
      - The relative_dn field is used to uniquely identify an object inside the specified suffix. It contains all of the parts of the object's distinguished name except those outlined by the suffix.  
    * - attribute  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies a named value contained by the object.  
    * - object_class  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the class of which the object is an instance.  
    * - ldaptype  
      - ind-def:EntityStateLdaptypeType (0..1)  
      - Specifies the type of information that the specified attribute represents.  
    * - value  
      - oval-def:EntityStateRecordType (0..1)  
      - The actual value of the specified LDAP attribute. Note that while an LDAP attribute can contain structured data where it is necessary to collect multiple related fields that can be described by the 'record' datatype, it is not always the case. It also is possible that an LDAP attribute can contain only a single value or an array of values. In these cases, there is not a name to uniquely identify the corresponding field which is a requirement for fields in the 'record' datatype. As a result, the name of the LDAP attribute will be used to uniquely identify the field and satisfy this requirement.  
  
______________
  
.. _shellcommand_test:  
  
< shellcommand_test >  
---------------------------------------------------------
The shellcommand_test is used to check the values produced by the running of the 'command', or a one-liner (but not an external script file, or a multiple-line embedded script) found in the object 'command' element. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a shellcommand_object and the optional state element references a shellcommand_state that specifies the information to check. Since this test runs the command string supplied in the object command element, the content author should avoid writing command strings that may produce large amounts of output or that may be fragile causing errors and thus produce large amounts of error output. The command should produce well formed output that will result in one item stdout_line element for each line of output via STDOUT by the object evaluation. Similarly, in the item, for any output to STDERR, a stderr_line element will be created. IMPORTANT! - Since this test requires the running of code supplied by content and since OVAL interpreters commonly run with elevated privileges, significant responsibilty falls to the content author to DO NO HARM to the target system. This also requires that any content stream that employs this test MUST be from a known trusted source and be digitally signed. The use of any executables that are not supplied by the installed operating system is highly discouraged.

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
  
.. _shellcommand_object:  
  
< shellcommand_object >  
---------------------------------------------------------
The shellcommand_object is used by a shellcommand_test to define a shell to use (e.g. sh, bash, ksh, etc.), a command (or shell script) to be run, and a pattern to filter result lines. The default shell is bash. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. The evaluation of the object should always produce one item. If the command execution does not produce output, an item should still be created with the exit_status (AKA process exit code), a stdout entity with a status of 'does not exist', and any STDERR from the execution captured in stderr_line entities.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - shell  
      - ind-def:EntityObjectShellType (1..1)  
      - The shell entity defines the specific shell to use (e.g. bash, csh, ksh, etc.). Any tool collecting information for this object will need to know the shell in order to use it properly.  
    * - command  
      - oval-def:EntityObjectStringType (1..1)  
      - The command element specifies the command string to be run on the target system, which could be a single executable/binary or a one-liner which manipulates the output from one or more executables/binaries. Since this command string will be executed on the target system and since OVAL interpreters commonly run with elevated privileges, significant responsibilty falls to the content author to DO NO HARM. This also requires that any content stream that employs this test MUST be from a known trusted source and be digitally signed. The use of executables that are not supplied by the installed operating system is highly discouraged.  
    * - pattern  
      - oval-def:EntityObjectStringType (0..1)  
      - The 'pattern' is a regular expression that identifies lines in 'command' results that are to produce OVAL items. Any result line via STDOUT that matches the pattern is kept as an item stdout_line element. Any that do not are discarded. If the pattern element is empty or does not exist, all results lines are kept. A subexpression (using parentheses) can call out a piece of the matched stdout_line to test. For example, the pattern abc(.*)xyz would look for a block of text in the output that starts with abc and ends with xyz, with the subexpression being all the characters that exist in between. The value of the subexpression can then be tested using the subexpression entity of a shellcommand_state. Note that if the pattern, starting at the same point in the line, matches more than one block of text, then it matches the longest. For example, given output with abcdefxyzxyzabc, then the pattern abc(.*)xyz would match the block abcdefxyzxyz. Subexpressions also match the longest possible substrings, subject to the constraint that the whole match be as long as possible, with subexpressions starting earlier in the pattern taking priority over ones starting later.Note that when using regular expressions, OVAL supports a common subset of the regular expression character classes, operations, expressions and other lexical tokens defined within Perl 5's regular expression specification. For more information on the supported regular expression syntax in OVAL see: http://oval.mitre.org/language/about/re_support_5.6.html.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _shellcommand_state:  
  
< shellcommand_state >  
---------------------------------------------------------
The shellcommand_state contains the entities that are used to check the values returned by the shellcommand_object. Note that the state entities shell, command, and pattern are echoed, verbatim, from the same elements in the associated shellcommand_object.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - shell  
      - ind-def:EntityStateShellType (0..1)  
      - The 'shell' element contains the shell used to perform the command and must match the value in the associated object, verbatim.  
    * - command  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The 'command' element specifies the command string to be run on the target system and must match the same element in the associated shellcommand_object, verbatim.  
    * - pattern  
      - oval-def:EntityStateStringType (0..1)  
      - The 'pattern' is a regular expression that identifies lines in 'command' results that are to produce OVAL items and must match the same element in the associated shellcommand_object, verbatim.  
    * - exit_status  
      - oval-def:EntityStateIntType (0..1)  
      - The 'exit_status' entity represents the exist status returned by the system for the execution of the object command.  
    * - stdout_line  
      - oval-def:EntityStateAnySimpleType (0..unbounded)  
      - The 'stdout_line' entity represents a line from the STDOUT output of a successful run of the command string that matched the specified object pattern.  
    * - subexpression  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The subexpression entity represents a value to test against the subexpression in the specified pattern. If multiple subexpressions are specified in the pattern, this value is tested against all of them. For example, if the pattern abc(.*)mno(.*)xyp was supplied, and the state specifies a subexpression value of enabled, then the test would check that both (or at least one, none, etc. depending on the entity_check attribute) of the subexpressions have a value of enabled.  
    * - stderr_line  
      - oval-def:EntityStateStringType (0..unbounded)  
      - The 'stderr_line' element contains any and all output to STDERR from a run of the object command. Each line of STDERR should create an additional 'stderr_line' element.  
  
______________
  
.. _sql_test:  
  
< sql_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.7  
* Reason: Replaced by the sql57_test. This test allows for single fields to be selected from a database. A new test was created to allow more than one field to be selected in one statement. See the sql57_test.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The sql test is used to check information stored in a database. It is often the case that applications store configuration settings in a database as opposed to a file. This test has been designed to enable those settings to be tested. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wmi_object and the optional state element specifies the metadata to check.

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
  
.. _sql_object:  
  
< sql_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.7  
* Reason: Replaced by the sql57_object. This object allows for single fields to be selected from a database. A new object was created to allow more than one field to be selected in one statement. See the sql57_object.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The sql_object element is used by a sql test to define the specific database and query to be evaluated. Connection information is supplied allowing the tool to connect to the desired database and a query is supplied to call out the desired setting. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - engine  
      - ind-def:EntityObjectEngineType (1..1)  
      - The engine entity defines the specific database engine to use. Any tool looking to collect information about this object will need to know the engine in order to use the appropriate drivers to establish a connection.  
    * - version  
      - oval-def:EntityObjectStringType (1..1)  
      - The version entity defines the specific version of the database engine to use. This is also important in determining the correct driver to use for establishing a connection.  
    * - connection_string  
      - oval-def:EntityObjectStringType (1..1)  
      - The connection_string entity defines specific connection parameters to be used in connecting to the database. This will help a tool connect to the correct database.  
    * - sql  
      - oval-def:EntityObjectStringType (1..1)  
      - The sql entity defines a query used to identify the object(s) to test against. Any valid SQL query is usable with one exception, at most one field is allowed in the SELECT portion of the query. For example SELECT name FROM ... is valid, as is SELECT 'true' FROM ..., but SELECT name, number FROM ... is not valid. This is because the result element in the data section is only designed to work against a single field.  
  
.. _sql_state:  
  
< sql_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.7  
* Reason: Replaced by the sql57_state. This state allows for single fields to be selected from a database. A new state was created to allow more than one field to be selected in one statement. See the sql57_state.  
* Comment: This state has been deprecated and may be removed in a future version of the language.  
  
The sql_state element contains two entities that are used to check the name of the specified field and the value associated with it.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - engine  
      - ind-def:EntityStateEngineType (0..1)  
      - The engine entity defines a specific database engine.  
    * - version  
      - oval-def:EntityStateStringType (0..1)  
      - The version entity defines a specific version of a given database engine.  
    * - connection_string  
      - oval-def:EntityStateStringType (0..1)  
      - The connection_string entity defines a set of parameters that help identify the connection to the database.  
    * - sql  
      - oval-def:EntityStateStringType (0..1)  
      - the sql entity defines a query used to identify the object(s) to test against.  
    * - result  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The result entity specifies how to test objects in the result set of the specified SQL statement. Only one comparable field is allowed. So if the SQL statement look like 'SELECT name FROM ...', then a result entity with a value of 'Fred' would test the set of 'name' values returned by the SQL statement against the value 'Fred'.  
  
______________
  
.. _sql57_test:  
  
< sql57_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason: Replaced by the sql512_test.  The sql512_test removes the connection string and replaces it with 'instance' and 'database' elements.  This allows the application to perform any necessary steps to connect, and providing a simple method for content authors to determine which database(s) to query.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The sql test is used to check information stored in a database. It is often the case that applications store configuration settings in a database as opposed to a file. This test has been designed to enable those settings to be tested. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wmi_object and the optional state element specifies the metadata to check.

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
  
.. _sql57_object:  
  
< sql57_object >  
---------------------------------------------------------
The sql57_object element is used by a sql test to define the specific database and query to be evaluated. Connection information is supplied allowing the tool to connect to the desired database and a query is supplied to call out the desired setting. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - engine  
      - ind-def:EntityObjectEngineType (1..1)  
      - The engine entity defines the specific database engine to use. Any tool looking to collect information about this object will need to know the engine in order to use the appropriate drivers to establish a connection.  
    * - version  
      - oval-def:EntityObjectStringType (1..1)  
      - The version entity defines the specific version of the database engine to use. This is also important in determining the correct driver to use for establishing a connection.  
    * - connection_string  
      - oval-def:EntityObjectStringType (1..1)  
      - The connection_string entity defines specific connection parameters to be used in connecting to the database. This will help a tool connect to the correct database.  
    * - sql  
      - oval-def:EntityObjectStringType (1..1)  
      - The sql entity defines a query used to identify the object(s) to test against. Any valid SQL query is usable with one exception, all fields must be named in the SELECT portion of the query. For example, SELECT name, number FROM ... is valid. However, SELECT * FROM ... is not valid. This is because the record element in the state and item require a unique field name value to ensure that any query results can be evaluated consistently.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sql57_state:  
  
< sql57_state >  
---------------------------------------------------------
The sql57_state element contains two entities that are used to check the name of the specified field and the value associated with it.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - engine  
      - ind-def:EntityStateEngineType (0..1)  
      - The engine entity defines a specific database engine.  
    * - version  
      - oval-def:EntityStateStringType (0..1)  
      - The version entity defines a specific version of a given database engine.  
    * - connection_string  
      - oval-def:EntityStateStringType (0..1)  
      - The connection_string entity defines a set of parameters that help identify the connection to the database.  
    * - sql  
      - oval-def:EntityStateStringType (0..1)  
      - the sql entity defines a query used to identify the object(s) to test against.  
    * - result  
      - oval-def:EntityStateRecordType (0..1)  
      - The result entity specifies how to test objects in the result set of the specified SQL statement.  
  
______________
  
.. _sql512_test:  
  
< sql512_test >  
---------------------------------------------------------
The sql512 test is used to check information stored in a database. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information.

This test should only be performed by the OVAL interpreter if the content is 'trusted', such as being digitally signed by a trusted content author.

The OVAL interpeter will provide all authentication capabilities to the SQL DMBS target.

The OVAL interpeter will query the target system and find all applicable DBMS instances and databases (refer to sql512 object elements for more information on instances and databases) .

Using Microsoft SQL Server as an example, below is sample of what the OVAL intepreter will gather from a target.

Target Host: Host1 SQL Server Instances: SQLEXPRESS (version 13.0.6450.1 ) Databases: master model msdb tempdb userdb1 userdb2 SQLSERVER (version 16.0.4135.4) Databases: master model msdb tempdb testdb1 testdb2

Content can then be created that targets one or more versions, and within those versions, queries could be run against one or more instances and one ore more databases.

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
  
.. _sql512_object:  
  
< sql512_object >  
---------------------------------------------------------
The sql512_object element is used by a sql512 test to define the specific database and query to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - engine  
      - ind-def:EntityObjectEngineType (1..1)  
      - The engine entity defines the specific database engine to use. Any tool looking to collect information about this object will need to know the engine in order to use the appropriate drivers to establish a connection.  
    * - version  
      - oval-def:EntityObjectStringType (1..1)  
      - The version entity defines the specific version of the database engine to use.The version shall be reported in the format provided by the dbms application, which may differ slightly across dbms products, but should generally be in the foramt of X.Y.ZBelow are some examples, but make sure to refer to DBMS system documentation for complete/current methods to determine versionsFor Microsoft SQL Server, the version can be obtained with 'SELECT SERVERPROPERTY('productversion')'For Oracle DBMS, the version can be obtained with 'SELECT * FROM V$VERSION;'For MySQL and MariaDB, the version can be obtained with 'SELECT version();'Usage of regular expressions is recommended in order to match on a primary version or multiple versions of the dbms.  
    * - instance  
      - oval-def:EntityObjectStringType (1..1)  
      - The instance entity defines the specific instance name to be used when connecting to the correct database, where instance refers to the running instance of the DMBS software itself. This could be a separate installation of binaries (such as with MS SQL Server), or just a set of running processes used to manage the DBMS.The OVAL interpreter will automatically determine the list of available instances on the target.When a pattern or string is entered, the OVAL interpeter will consider any matching instance as in scope for analysis.  
    * - database  
      - oval-def:EntityObjectStringType (1..1)  
      - The database entity defines the specific database name to be used when connecting to the specified instance, where a database is defined as a collection of tables within a DBMS instance.When a pattern or string is entered, the OVAL interpeter will perform the query against any matching databases.If the xsi:nil attribute is set to true, then the OVAL interpreter will perform the query once per instance. This is primarily useful for queries that gather instance configuration settings, such as SQL Servers SERVERPROPERTY data. See https://learn.microsoft.com/en-us/sql/t-sql/functions/serverproperty-transact-sql?view=sql-server-ver16 Example: SELECT SERVERPROPERTY('IsClustered') AS [is_clustered]  
    * - sql  
      - oval-def:EntityObjectStringType (1..1)  
      - The sql entity defines a query used to identify the object(s) to test against. Any valid SQL query is usable with one exception, all fields must be named in the SELECT portion of the query. For example, SELECT name, number FROM ... is valid. However, SELECT * FROM ... is not valid. This is because the record element in the state and item require a unique field name value to ensure that any query results can be evaluated consistently. If the xsi:nil attribute is set to true, then no query is executed and only the existance of the specified instance and database will be considered.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sql512_state:  
  
< sql512_state >  
---------------------------------------------------------
The sql512_state element contains two entities that are used to check the name of the specified field and the value associated with it.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - engine  
      - ind-def:EntityStateEngineType (0..1)  
      - The engine entity defines a specific database engine.  
    * - version  
      - oval-def:EntityStateStringType (0..1)  
      - The version entity defines a specific version of a given database engine.  
    * - instance  
      - oval-def:EntityStateStringType (0..1)  
      - The instance entity defines the specific instance name to be used when connecting to the correct database.  
    * - database  
      - oval-def:EntityStateStringType (0..1)  
      - The database entity defines the specific database name to be used when connecting to the specified instance.  
    * - sql  
      - oval-def:EntityStateStringType (0..1)  
      - the sql entity defines a query used to identify the object(s) to test against.  
    * - result  
      - oval-def:EntityStateRecordType (0..1)  
      - The result entity specifies how to test objects in the result set of the specified SQL statement.  
  
______________
  
.. _textfilecontent54_test:  
  
< textfilecontent54_test >  
---------------------------------------------------------
The textfilecontent54_test element is used to check the contents of a text file (aka a configuration file) by looking at individual blocks of text. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a textfilecontent54_object and the optional state element specifies the metadata to check.

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
  
.. _textfilecontent54_object:  
  
< textfilecontent54_object >  
---------------------------------------------------------
The textfilecontent54_object element is used by a textfilecontent_test to define the specific block(s) of text of a file(s) to be evaluated. The textfilecontent54_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - ind-def:Textfilecontent54Behaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename entity specifies the name of a file.  
    * - pattern  
      - oval-def:EntityObjectStringType (1..1)  
      - The pattern entity defines a chunk of text in a file and is represented using a regular expression. A subexpression (using parentheses) can call out a piece of the text block to test. For example, the pattern abc(.*)xyz would look for a block of text in the file that starts with abc and ends with xyz, with the subexpression being all the characters that exist in between. The value of the subexpression can then be tested using the subexpression entity of a textfilecontent54_state. Note that if the pattern, starting at the same point in the file, matches more than one block of text, then it matches the longest. For example, given a file with abcdefxyzxyzabc, then the pattern abc(.*)xyz would match the block abcdefxyzxyz. Subexpressions also match the longest possible substrings, subject to the constraint that the whole match be as long as possible, with subexpressions starting earlier in the pattern taking priority over ones starting later.Note that when using regular expressions, OVAL supports a common subset of the regular expression character classes, operations, expressions and other lexical tokens defined within Perl 5's regular expression specification. For more information on the supported regular expression syntax in OVAL see: http://oval.mitre.org/language/about/re_support_5.6.html.  
    * - instance  
      - oval-def:EntityObjectIntType (1..1)  
      - The instance entity calls out a specific match of the pattern. It can have any integer value. If the value is a non-negative integer, the index of the specific match of the pattern is counted from the beginning of the set of matches of that pattern in the targeted file. The first match is given an instance value of 1, the second match is given an instance value of 2, and so on. For non-negative values, the 'less than' and 'less than or equal' operations imply the the object is operating only on non-negative values. Frequently, this entity will be defined as 'greater than or equal' to 1 or 'greater than' 0, either of which results in the object representing the set of all matches of the pattern.Negative values are used to simplify collection of pattern match occurrences counting backwards from the final match in the targeted file. To find the final match, use an instance of -1; the penultimate match is found using an instance value of -2, and so on. For negative values, the 'greater than' and 'greater than or equal' operations imply the object is operating only on negative values. For example, searching for instances greater than or equal to -2 would yield only the last two maches.Note that the main purpose of the instance item entity is to provide uniqueness for different textfilecontent_items that results from multiple matches of a given pattern against the same file, and they will always have positive values.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _textfilecontent54_state:  
  
< textfilecontent54_state >  
---------------------------------------------------------
The textfilecontent54_state element contains entities that are used to check the file path and name, as well as the text block in question and the value of the subexpressions.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The filename entity represents the name of a file.  
    * - pattern  
      - oval-def:EntityStateStringType (0..1)  
      - The pattern entity represents a regular expression that is used to define a block of text.  
    * - instance  
      - oval-def:EntityStateIntType (0..1)  
      - The instance entity calls out a specific match of the pattern. This can only be a positive integer.  
    * - text  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The text entity represents the block of text that matched the specified pattern.  
    * - subexpression  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The subexpression entity represents a value to test against the subexpression in the specified pattern. If multiple subexpressions are specified in the pattern, this value is tested against all of them. For example, if the pattern abc(.*)mno(.*)xyp was supplied, and the state specifies a subexpression value of enabled, then the test would check that both (or at least one, none, etc. depending on the entity_check attribute) of the subexpressions have a value of enabled.  
    * - windows_view  
      - ind-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
.. _Textfilecontent54Behaviors:  
  
== Textfilecontent54Behaviors ==  
---------------------------------------------------------
The Textfilecontent54Behaviors complex type defines a number of behaviors that allow a more detailed definition of the textfilecontent54_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

The Textfilecontent54Behaviors extend the ind-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** ind-def:FileBehaviors

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - ignore_case  
      - xsd:boolean (optional *default*='false')  
      - 'ignore_case' indicates whether case should be considered when matching system values against the regular expression provided by the pattern entity. This behavior is intended to align with the Perl regular expression 'i' modifier: if true, case will be ignored. If false, case will not be ignored. The default is false.  
    * - multiline  
      - xsd:boolean (optional *default*='true')  
      - 'multiline' enables multiple line semantics in the regular expression provided by the pattern entity. This behavior is intended to align with the Perl regular expression 'm' modifier: if true, the '^' and '$' metacharacters will match both at the beginning/end of a string, and immediately after/before newline characters. If false, they will match only at the beginning/end of a string. The default is true.  
    * - singleline  
      - xsd:boolean (optional *default*='false')  
      - 'singleline' enables single line semantics in the regular expression provided by the pattern entity. This behavior is intended to align with the Perl regular expression 's' modifier: if true, the '.' metacharacter will match newlines. If false, it will not. The default is false.  
  
  
______________
  
.. _textfilecontent_test:  
  
< textfilecontent_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.4  
* Reason: Replaced by the textfilecontent54_test. Support for multi-line pattern matching and multi-instance matching was added. Therefore, a new test was created to reflect these changes. See the textfilecontent54_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The textfilecontent_test element is used to check the contents of a text file (aka a configuration file) by looking at individual lines. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a textfilecontent_object and the optional state element specifies the metadata to check.

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
  
.. _textfilecontent_object:  
  
< textfilecontent_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.4  
* Reason: Replaced by the textfilecontent54_object. Support for multi-line pattern matching and multi-instance matching was added. Therefore, a new object was created to reflect these changes. See the textfilecontent54_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The textfilecontent_object element is used by a text file content test to define the specific line(s) of a file(s) to be evaluated. The textfilecontent_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - ind-def:FileBehaviors (0..1)  
      -   
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of the file.  
    * - line  
      - oval-def:EntityObjectStringType (1..1)  
      - The line element represents a line in the file and is represented using a regular expression. A single subexpression can be called out using parentheses. The value of this subexpression can then be checked using a textfilecontent_state.Note that when using regular expressions, OVAL supports a common subset of the regular expression character classes, operations, expressions and other lexical tokens defined within Perl 5's regular expression specification. For more information on the supported regular expression syntax in OVAL see: http://oval.mitre.org/language/about/re_support_5.6.html.  
  
.. _textfilecontent_state:  
  
< textfilecontent_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.4  
* Reason: Replaced by the textfilecontent54_state. Support for multi-line pattern matching and multi-instance matching was added. Therefore, a new state was created to reflect these changes. See the textfilecontent54_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The textfilecontent_state element contains entities that are used to check the file path and name, as well as the line in question and the value of the specific subexpression.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the file.  
    * - line  
      - oval-def:EntityStateStringType (0..1)  
      - The line element represents a line in the file that was collected.  
    * - subexpression  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - Each subexpression in the regular expression of the line element is then tested against the value specified in the subexpression element.  
    * - windows_view  
      - ind-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
______________
  
.. _unknown_test:  
  
< unknown_test >  
---------------------------------------------------------
An unknown_test acts as a placeholder for tests whose implementation is unknown. This test always evaluates to a result of 'unknown'. Any information that is known about the test should be held in the notes child element that is available through the extension of the abstract test element. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. Note that for an unknown_test, the required check attribute that is part of the extended TestType should be ignored during evaluation and hence can be set to any valid value.

**Extends:** oval-def:TestType

______________
  
.. _variable_test:  
  
< variable_test >  
---------------------------------------------------------
The variable test allows the value of a variable to be compared to a defined value. As an example one might use this test to validate that a variable being passed in from an external source falls within a specified range. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a variable_object and the optional state element specifies the value to check.

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
  
.. _variable_object:  
  
< variable_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - var_ref  
      - ind-def:EntityObjectVariableRefType (1..1)  
      - The id of the variable you want.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _variable_state:  
  
< variable_state >  
---------------------------------------------------------
The variable_state element contains two entities that are used to check the var_ref of the specified varible and the value associated with it.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - var_ref  
      - ind-def:EntityStateVariableRefType (0..1)  
      - The id of the variable.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the variable.  
  
______________
  
.. _xmlfilecontent_test:  
  
< xmlfilecontent_test >  
---------------------------------------------------------
The xmlfilecontent_test element is used to explore the contents of an xml file. This test allows specific pieces of an xml document specified using xpath to be tested. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a xmlfilecontent_object and the optional state element specifies the metadata to check.

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
  
.. _xmlfilecontent_object:  
  
< xmlfilecontent_object >  
---------------------------------------------------------
The xmlfilecontent_object element is used by a xml file content test to define the specific piece of an xml file(s) to be evaluated. The xmlfilecontent_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - ind-def:FileBehaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of the file.  
    * - xpath  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies an XPath 1.0 expression to evaluate against the XML file specified by the filename entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _xmlfilecontent_state:  
  
< xmlfilecontent_state >  
---------------------------------------------------------
The xmlfilecontent_state element contains entities that are used to check the file path and name, as well as the xpath used and the value of the this xpath.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The filename element specifies the name of the file.  
    * - xpath  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies an XPath 1.0 expression to evaluate against the XML file specified by the filename entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found.  
    * - windows_view  
      - ind-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
______________
  
.. _yamlfilecontent_test:  
  
< yamlfilecontent_test >  
---------------------------------------------------------
The yamlfilecontent_test element is used to explore the contents of an YAML file. This test allows specific pieces of an YAML document specified using YAML Path to be tested. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a yamlfilecontent_object and the optional state element specifies the metadata to check.

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
  
.. _yamlfilecontent_object:  
  
< yamlfilecontent_object >  
---------------------------------------------------------
The yamlfilecontent_object element is used by a YAML file content test to define the specific piece of an YAML file(s) to be evaluated. The yamlfilecontent_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - ind-def:FileBehaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of the file.  
    * - content  
      - oval-def:EntityObjectStringType (1..1)  
      - The content element specifies the YAML document body. It also could reference a variable containing the document using var_ref attribute. Note that "equals" is the only valid operator for the content entity.  
    * - yamlpath  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies an YAML Path expression to evaluate against the YAML file specified by the filename entity. This YAML Path expression must evaluate to a sequence or a map (part of a map) of scalar values which will be accessible in OVAL via instances of the value entity. Any results from evaluating the YAML Path expression other than a sequence (or a map) of scalar values (e.g. sequence of sequences, sequence of maps, map of maps etc.) are considered as incorrect, so the author should define the YAML Path expression carefully. Note that "equals" is the only valid operator for the yamlpath entity.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _yamlfilecontent_state:  
  
< yamlfilecontent_state >  
---------------------------------------------------------
The yamlfilecontent_state element contains entities that are used to check the file path and name, as well as the YAML Path used and the value of the this YAML Path.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The filename element specifies the name of the file.  
    * - content  
      - oval-def:EntityStateStringType (0..1)  
      - The content element specifies the YAML document body. Note that "equals" is the only valid operator for the content entity.  
    * - yamlpath  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies an YAML Path expression to evaluate against the YAML file specified by the filename entity. Note that "equals" is the only valid operator for the yamlpath entity.  
    * - value  
      - oval-def:EntityStateRecordType (0..1)  
      - The value entity specifies how to test objects in the value set of the specified YAML Path. To define tests for a single scalar value or a list of scalar values (where there is no key to associate), set the name attribute of the field element to '#'. Due to the limitation of the record type field names could not contain uppercase letters, they should be converted to the lowercase and escaped using the '^' symbol (the '^' symbol should be escaped as well). For example, to check a value associated with 'myCamelCase^Key' set the name attribute of the field to 'my^camel^case^^^key'. The check is entirely controlled by operator attributes of the field element.  
    * - windows_view  
      - ind-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.  
  
.. _FileBehaviors:  
  
== FileBehaviors ==  
---------------------------------------------------------
The FileBehaviors complex type defines a number of behaviors that allow a more detailed definition of a set of files or file related items to collect. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - max_depth  
      - Restriction of xsd:integer (optional *default*='-1')  
      - 'max_depth' defines the maximum depth of recursion to perform when a recurse_direction is specified. A value of '0' is equivalent to no recursion, '1' means to step only one directory level up/down, and so on. The default value is '-1' meaning no limitation. For a 'max_depth' of -1 or any value of 1 or more the starting directory must be considered in the recursive search.  
Note that the default recurse_direction behavior is 'none' so even though max_depth specifies no limitation by default, the recurse_direction behavior turns recursion off.  
Note that this behavior only applies with the equality operation on the path entity.  
    * - recurse  
      - Restriction of xsd:string (optional *default*='symlinks and directories') ('directories', 'symlinks', 'symlinks and directories')  
      - 'recurse' defines how to recurse into the path entity, in other words what to follow during recursion. Options include symlinks, directories, or both. Note that a max-depth other than 0 has to be specified for recursion to take place and for this attribute to mean anything. Also note that on Windows, the 'symlink' value is equivalent to the 'junction' recurse value in win-def:FileBehaviors.  
Note that this behavior only applies with the equality operation on the path entity.  
    * - recurse_direction  
      - Restriction of xsd:string (optional *default*='none') ('none', 'up', 'down')  
      - 'recurse_direction' defines the direction to recurse, either 'up' to parent directories, or 'down' into child directories. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the path entity.  
    * - recurse_file_system  
      - Restriction of xsd:string (optional *default*='all') ('all', 'local', 'defined')  
      - 'recurse_file_system' defines the file system limitation of any searching and applies to all operations as specified on the path or filepath entity. The value of 'local' limits the search scope to local file systems (as opposed to file systems mounted from an external system). The value of 'defined' keeps any recursion within the file system that the file_object (path+filename or filepath) has specified. For example, on Windows, if the path specified was "C:\", you would search only the C: drive, not other filesystems mounted to descendant paths. Similarly, on UNIX, if the path specified was "/", you would search only the filesystem mounted there, not other filesystems mounted to descendant paths. The value of 'defined' only applies when an equality operation is used for searching because the path or filepath entity must explicitly define a file system. The default value is 'all' meaning to search all available file systems for data collection.  
Note that in most cases it is recommended that the value of 'local' be used to ensure that file system searching is limited to only the local file systems. Searching 'all' file systems may have performance implications.  
    * - windows_view  
      - Restriction of xsd:string (optional *default*='64_bit') ('32_bit', '64_bit')  
      - 64-bit versions of Windows provide an alternate file system and registry views to 32-bit applications. This behavior allows the OVAL Object to specify which view should be examined. This behavior only applies to 64-bit Windows, and must not be applied on other platforms.  
Note that the values have the following meaning: '64_bit' – Indicates that the 64-bit view on 64-bit Windows operating systems must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. '32_bit' – Indicates that the 32-bit view must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. It is recommended that the corresponding 'windows_view' entity be set on the OVAL Items that are collected when this behavior is used to distinguish between the OVAL Items that are collected in the 32-bit or 64-bit views.  
  
  
.. _EntityObjectShellType:  
  
== EntityObjectShellType ==  
---------------------------------------------------------
The EntityObjectShellType complex type defines a string entity value that is restricted to a set of command shells. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - sh  
      - | The borne shell (sh)  
    * - bash  
      - | The gnu borne again shell (bash).  
    * - csh  
      - | The C shell (csh).  
    * - ksh  
      - | The korn shell (ksh).  
    * - zsh  
      - | The Z shell (zsh).  
    * - cmd  
      - | The Microsoft Windows command prompt (cmd).  
    * - powershell  
      - | The Microsoft Windows OS Native Powershell prompt (powershell).  
    * - pwsh  
      - | The open source, cross platform Microsoft Powershell prompt (pwsh). This shell is an application that can be installed on Windows, Linux or MacOS  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateShellType:  
  
== EntityStateShellType ==  
---------------------------------------------------------
The EntityStateShellType complex type defines a string entity value that is restricted to a set of command shells. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - sh  
      - | The borne shell (sh)  
    * - bash  
      - | The gnu borne again shell (bash).  
    * - csh  
      - | The C shell (csh).  
    * - ksh  
      - | The korn shell (ksh).  
    * - zsh  
      - | The Z shell (zsh).  
    * - cmd  
      - | The Microsoft Windows command prompt (cmd).  
    * - powershell  
      - | The Microsoft Powershell prompt (powershell).  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectEngineType:  
  
== EntityObjectEngineType ==  
---------------------------------------------------------
The EntityObjectEngineType complex type defines a string entity value that is restricted to a set of enumerations. Each valid enumeration is a valid database engine. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - access  
      - | The access value describes the Microsoft Access database engine.  
    * - aurora  
      - | The aurora value describes the Amazon Aurora cloud database engine.  
    * - azuresql  
      - | The azuresql value describes the Microsoft Azure SQL cloud database engine.  
    * - crunchypostgres  
      - | The crunchypostgres value describes the Crunchy Postgres cloud database engine.  
    * - derby  
      - | The derby value describes the Apache Derby database engine.  
    * - db2  
      - | The db2 value describes the IBM DB2 database engine.  
    * - cache  
      - | The cache value describes the InterSystems Cache database engine.  
    * - firebird  
      - | The firebird value describes the Firebird database engine.  
    * - firstsql  
      - | The firstsql value describes the FirstSQL database engine.  
    * - foxpro  
      - | The foxpro value describes the Microsoft FoxPro database engine.  
    * - informix  
      - | The informix value describes the IBM Informix database engine.  
    * - ingres  
      - | The ingres value describes the Ingres database engine.  
    * - interbase  
      - | The interbase value describes the Embarcadero Technologies InterBase database engine.  
    * - lightbase  
      - | The lightbase value describes the Light Infocon LightBase database engine.  
    * - mariadb  
      - | The mariadb value describes the MariaDB database engine.  
    * - maxdb  
      - | The maxdb value describes the SAP MaxDB database engine.  
    * - monetdb  
      - | The monetdb value describes the MonetDB SQL database engine.  
    * - mimer  
      - | The mimer value describes the Mimer SQL database engine.  
    * - mysql  
      - | The mysql value describes the MySQL database engine.  
    * - oracle  
      - | The oracle value describes the Oracle database engine.  
    * - paradox  
      - | The paradox value describes the Paradox database engine.  
    * - pervasive  
      - | The pervasive value describes the Pervasive PSQL database engine.  
    * - postgre  
      - | The postgre value describes the PostgreSQL database engine.  
    * - sqlbase  
      - | The sqlbase value describes the Unify SQLBase database engine.  
    * - sqlite  
      - | The sqlite value describes the SQLite database engine.  
    * - sqlserver  
      - | The sqlserver value describes the Microsoft SQL database engine.  
    * - sybase  
      - | The sybase value describes the Sybase database engine.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateEngineType:  
  
== EntityStateEngineType ==  
---------------------------------------------------------
The EntityStateEngineType complex type defines a string entity value that is restricted to a set of enumerations. Each valid enumeration is a valid database engine. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - access  
      - | The access value describes the Microsoft Access database engine.  
    * - db2  
      - | The db2 value describes the IBM DB2 database engine.  
    * - cache  
      - | The cache value describes the InterSystems Cache database engine.  
    * - firebird  
      - | The firebird value describes the Firebird database engine.  
    * - firstsql  
      - | The firstsql value describes the FirstSQL database engine.  
    * - foxpro  
      - | The foxpro value describes the Microsoft FoxPro database engine.  
    * - informix  
      - | The informix value describes the IBM Informix database engine.  
    * - ingres  
      - | The ingres value describes the Ingres database engine.  
    * - interbase  
      - | The interbase value describes the Embarcadero Technologies InterBase database engine.  
    * - lightbase  
      - | The lightbase value describes the Light Infocon LightBase database engine.  
    * - maxdb  
      - | The maxdb value describes the SAP MaxDB database engine.  
    * - monetdb  
      - | The monetdb value describes the MonetDB SQL database engine.  
    * - mimer  
      - | The mimer value describes the Mimer SQL database engine.  
    * - mysql  
      - | The mysql value describes the MySQL database engine.  
    * - oracle  
      - | The oracle value describes the Oracle database engine.  
    * - paradox  
      - | The paradox value describes the Paradox database engine.  
    * - pervasive  
      - | The pervasive value describes the Pervasive PSQL database engine.  
    * - postgre  
      - | The postgre value describes the PostgreSQL database engine.  
    * - sqlbase  
      - | The sqlbase value describes the Unify SQLBase database engine.  
    * - sqlite  
      - | The sqlite value describes the SQLite database engine.  
    * - sqlserver  
      - | The sqlserver value describes the Microsoft SQL database engine.  
    * - sybase  
      - | The sybase value describes the Sybase database engine.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
______________
  
.. _EntityStateFamilyType:  
  
== EntityStateFamilyType ==  
---------------------------------------------------------
The EntityStateFamilyType complex type defines a string entity value that is restricted to a set of enumerations. Each valid enumeration is a high-level family of system operating system. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - android  
      - | The android value describes the Android mobile operating system.  
    * - apple_ios  
      - | The apple_ios value describes the iOS mobile operating system.  
    * - asa  
      - | The asa value describes the Cisco ASA security devices.  
    * - aws  
      - | The aws value describes the Amazon Web Services platform.  
    * - catos  
      - | The catos value describes the Cisco CatOS operating system.  
    * - ios  
      - | The ios value describes the Cisco IOS operating system.  
    * - iosxe  
      - | The iosxe value describes the Cisco IOS-XE operating system.  
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
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectHashTypeType:  
  
== EntityObjectHashTypeType ==  
---------------------------------------------------------
The EntityObjectHashTypeType complex type restricts a string value to a specific set of values that specify the different hash algorithms that are supported. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - MD5  
      - | The MD5 hash algorithm.  
    * - SHA-1  
      - | The SHA-1 hash algorithm.  
    * - SHA-224  
      - | The SHA-224 hash algorithm.  
    * - SHA-256  
      - | The SHA-256 hash algorithm.  
    * - SHA-384  
      - | The SHA-384 hash algorithm.  
    * - SHA-512  
      - | The SHA-512 hash algorithm.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateHashTypeType:  
  
== EntityStateHashTypeType ==  
---------------------------------------------------------
The EntityStateHashTypeType complex type restricts a string value to a specific set of values that specify the different hash algorithms that are supported. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - MD5  
      - | The MD5 hash algorithm.  
    * - SHA-1  
      - | The SHA-1 hash algorithm.  
    * - SHA-224  
      - | The SHA-224 hash algorithm.  
    * - SHA-256  
      - | The SHA-256 hash algorithm.  
    * - SHA-384  
      - | The SHA-384 hash algorithm.  
    * - SHA-512  
      - | The SHA-512 hash algorithm.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectVariableRefType:  
  
== EntityObjectVariableRefType ==  
---------------------------------------------------------
The EntityObjectVariableRefType complex type defines a string object entity that has a valid OVAL variable id as the value. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityObjectStringType

**Pattern:** (oval:[A-Za-z0-9_\-\.]+:var:[1-9][0-9]*){0,}

.. _EntityStateVariableRefType:  
  
== EntityStateVariableRefType ==  
---------------------------------------------------------
The EntityStateVariableRefType complex type defines a string state entity that has a valid OVAL variable id as the value. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityStateStringType

**Pattern:** (oval:[A-Za-z0-9_\-\.]+:var:[1-9][0-9]*){0,}

.. _EntityStateLdaptypeType:  
  
== EntityStateLdaptypeType ==  
---------------------------------------------------------
The EntityStateLdaptypeType complex type restricts a string value to a specific set of values that specify the different types of information that an ldap attribute can represent. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - LDAPTYPE_ACI_ITEM  
      - | ACI Item, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.1  
    * - LDAPTYPE_ACCESS_POINT  
      - | Access Point, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.2  
    * - LDAPTYPE_ATTRIBUTE_TYPE_DESCRIP_STRING  
      - | Attribute Type Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.3  
    * - LDAPTYPE_AUDIO  
      - | Audio, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.4  
    * - LDAPTYPE_BINARY  
      - | Binary, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.5  
    * - LDAPTYPE_BIT_STRING  
      - | Bit String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.6  
    * - LDAPTYPE_BOOLEAN  
      - | Boolean, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.7  
    * - LDAPTYPE_CERTIFICATE  
      - | Certificate, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.8  
    * - LDAPTYPE_CERTIFICATE_LIST  
      - | Certificate List, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.9  
    * - LDAPTYPE_CERTIFICATE_PAIR  
      - | Certificate Pair, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.10  
    * - LDAPTYPE_COUNTRY_STRING  
      - | Country String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.11  
    * - LDAPTYPE_DN_STRING  
      - | DN, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.12  
    * - LDAPTYPE_DATA_QUALITY_SYNTAX  
      - | Data Quality Syntax, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.13  
    * - LDAPTYPE_DELIVERY_METHOD  
      - | Delivery Method, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.14  
    * - LDAPTYPE_DIRECTORY_STRING  
      - | Directory String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.15  
    * - LDAPTYPE_DIR_CONTENT_RULE_DESCRIPTION  
      - | DIT Content Rule Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.16  
    * - LDAPTYPE_DIT_STRUCTURE_RULE_DESCRIPTION  
      - | DIT Structure Rule Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.17  
    * - LDAPTYPE_DL_SUBMIT_PERMISSION  
      - | DL Submit Permission, corresponding to OID Y 1.3.6.1.4.1.1466.115.121.1.18  
    * - LDAPTYPE_DSA_QUALITY_SYNTAX  
      - | DSA Quality Syntax, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.19  
    * - LDAPTYPE_DSE_TYPE  
      - | DSE Type, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.20  
    * - LDAPTYPE_ENHANCED_GUIDE  
      - | Enhanced Guide, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.21  
    * - LDAPTYPE_FAX_TEL_NUMBER  
      - | Facsimile Telephone Number, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.22  
    * - LDAPTYPE_FAX  
      - | Fax, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.23  
    * - LDAPTYPE_GENERALIZED_TIME  
      - | Generalized Time, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.24  
    * - LDAPTYPE_GUIDE  
      - | Guide, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.25  
    * - LDAPTYPE_IA5_STRING  
      - | IA5 String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.26  
    * - LDAPTYPE_INTEGER  
      - | INTEGER, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.27  
    * - LDAPTYPE_JPEG  
      - | JPEG, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.28  
    * - LDAPTYPE_LDAP_SYNTAX_DESCRIPTION  
      - | LDAP Syntax Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.54  
    * - LDAPTYPE_LDAP_SCHEMA_DEFINITION  
      - | LDAP Schema Definition, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.56  
    * - LDAPTYPE_LDAP_SCHEMA_DESCRIPTION  
      - | LDAP Schema Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.57  
    * - LDAPTYPE_MASTER_AND_SHADOW_ACCESS_POINTS  
      - | Master And Shadow Access Points, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.29  
    * - LDAPTYPE_MATCHING_RULE_DESCRIPTION  
      - | Matching Rule Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.30  
    * - LDAPTYPE_MATCHING_RULE_USE_DESCRIPTION  
      - | Matching Rule Use Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.31  
    * - LDAPTYPE_MAIL_PREFERENCE  
      - | Mail Preference, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.32  
    * - LDAPTYPE_MHS_OR_ADDRESS  
      - | MHS OR Address, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.33  
    * - LDAPTYPE_MODIFY_RIGHTS  
      - | Modify Rights, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.55  
    * - LDAPTYPE_NAME_AND_OPTIONAL_UID  
      - | Name And Optional UID, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.34  
    * - LDAPTYPE_NAME_FORM_DESCRIPTION  
      - | Name Form Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.35  
    * - LDAPTYPE_NUMERIC_STRING  
      - | Numeric String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.36  
    * - LDAPTYPE_OBJECT_CLASS_DESCRIP_STRING  
      - | Object Class Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.37  
    * - LDAPTYPE_OCTET_STRING  
      - | Octet String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.40  
    * - LDAPTYPE_OID  
      - | OID, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.38  
    * - LDAPTYPE_MAILBOX  
      - | Other Mailbox, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.39  
    * - LDAPTYPE_POSTAL_ADDRESS  
      - | Postal Address, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.41  
    * - LDAPTYPE_PROTOCOL_INFORMATION  
      - | Protocol Information, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.42  
    * - LDAPTYPE_PRESENTATION_ADDRESS  
      - | Presentation Address, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.43  
    * - LDAPTYPE_PRINTABLE_STRING  
      - | Printable String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.44  
    * - LDAPTYPE_SUBSTRING_ASSERTION  
      - | Substring Assertion, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.58  
    * - LDAPTYPE_SUBTREE_SPECIFICATION  
      - | Subtree Specification, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.45  
    * - LDAPTYPE_SUPPLIER_INFORMATION  
      - | Supplier Information, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.46  
    * - LDAPTYPE_SUPPLIER_OR_CONSUMER  
      - | Supplier Or Consumer, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.47  
    * - LDAPTYPE_SUPPLIER_AND_CONSUMER  
      - | Supplier And Consumer, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.48  
    * - LDAPTYPE_SUPPORTED_ALGORITHM  
      - | Supported Algorithm, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.49  
    * - LDAPTYPE_TELEPHONE_NUMBER  
      - | Telephone Number, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.50  
    * - LDAPTYPE_TELEX_TERMINAL_ID  
      - | Teletex Terminal Identifier, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.51  
    * - LDAPTYPE_TELEX_NUMBER  
      - | Telex Number, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.52  
    * - LDAPTYPE_UTC_TIME  
      - | UTC Time, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.53  
    * - LDAPTYPE_TIMESTAMP (Deprecated)  
      - | The data is of a time stamp in seconds.  
        | **Deprecated As Of Version:** 5.7  
        | **Reason:** This value was accidently carried over from the win-def:EntityStateAdstypeType as it was used as a template for the ind-def:EntityStateLdaptypeType.  
        | **Comment:** This value has been deprecated and will be removed in version 6.0 of the language.  
    * - LDAPTYPE_EMAIL (Deprecated)  
      - | The data is of an e-mail message.  
        | **Deprecated As Of Version:** 5.7  
        | **Reason:** This value was accidently carried over from the win-def:EntityStateAdstypeType as it was used as a template for the ind-def:EntityStateLdaptypeType.  
        | **Comment:** This value has been deprecated and will be removed in version 6.0 of the language.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateWindowsViewType:  
  
== EntityStateWindowsViewType ==  
---------------------------------------------------------
The EntityStateWindowsViewType restricts a string value to a specific set of values: 32-bit and 64-bit. These values describe the different values possible for the windows view behavior.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - 32_bit  
      - | Indicates the 32_bit windows view.  
    * - 64_bit  
      - | Indicates the 64_bit windows view.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
