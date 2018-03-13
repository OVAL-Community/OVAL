# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Independent Definition  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the tests found in Open Vulnerability and Assessment Language (OVAL) that are independent of a specific piece of software. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ family_test ](#family_test)  
 *[ ~~filehash_test~~ ](#filehash_test)  
 *[ filehash58_test ](#filehash58_test)  
 *[ ~~environmentvariable_test~~ ](#environmentvariable_test)  
 *[ environmentvariable58_test ](#environmentvariable58_test)  
 *[ ldap_test ](#ldap_test)  
 *[ ~~ldap57_test~~ ](#ldap57_test)  
 *[ ~~sql_test~~ ](#sql_test)  
 *[ sql57_test ](#sql57_test)  
 *[ textfilecontent54_test ](#textfilecontent54_test)  
 *[ ~~textfilecontent_test~~ ](#textfilecontent_test)  
 *[ unknown_test ](#unknown_test)  
 *[ variable_test ](#variable_test)  
 *[ xmlfilecontent_test ](#xmlfilecontent_test)  
  
______________
  
## <a name="family_test"></a>< family_test >

The family_test element is used to check the family a certain system belongs to. This test basically allows the high level system types (window, unix, ios, etc.) to be tested. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a family_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="family_object"></a>< family_object >

The family_object element is used by a family test to define those objects to evaluate based on a specified state. There is actually only one object relating to family and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check the family will reference the same family_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="family_state"></a>< family_state >

The family_state element contains a single entity that is used to check the family associated with the system. The family is a high-level classification of system types.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| family | [ind-def:EntityStateFamilyType](#EntityStateFamilyType)  (0..1) |  
||<div>This element describes the high-level system OS type to test against. Please refer to the definition of the EntityFamilyType for more information about the possible values..</div>|  
  
______________
  
## <a name="filehash_test"></a><  ~~filehash_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** Replaced by the filehash58_test.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The file hash test is used to check the hashes associated with a specified file. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a filehash_object and the optional state element specifies the different hashes to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="filehash_object"></a><  ~~filehash_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** Replaced by the filehash58_object.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The filehash_object element is used by a file hash test to define the specific file(s) to be evaluated. The filehash_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A filehash_object defines the path and filename of the file(s). In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileBehaviors complex type for more information about specific behaviors.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [ind-def:FileBehaviors](#FileBehaviors)  (0..1) |  
|||  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of the file.</div>|  
  
## <a name="filehash_state"></a><  ~~filehash_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** Replaced by the filehash58_state.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The filehash_state element contains entities that are used to check the file path, name, and the different hashes associated with a specific file.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename element specifies the name of the file.</div>|  
| md5 | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The md5 element is the md5 hash of the file.</div>|  
| sha1 | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The sha1 element is the sha1 hash of the file.</div>|  
| windows_view | [ind-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.</div>|  
  
______________
  
## <a name="filehash58_test"></a>< filehash58_test >

The file hash test is used to check a specific hash type associated with a specified file. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a filehash58_object and the optional state element specifies an expected hash value.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="filehash58_object"></a>< filehash58_object >

The filehash58_object element is used by a file hash test to define the specific file(s) to be evaluated. The filehash58_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A filehash58_object defines the path and filename of the file(s). In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileBehaviors complex type for more information about specific behaviors.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [ind-def:FileBehaviors](#FileBehaviors)  (0..1) |  
|||  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path entity specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename entity specifies the name of the file.</div>|  
| hash_type | [ind-def:EntityObjectHashTypeType](#EntityObjectHashTypeType)  (1..1) |  
||<div>The hash_type entity specifies the hash algorithm to use when collecting the hash for each of the specifed files.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="filehash58_state"></a>< filehash58_state >

The filehash58_state element contains entities that are used to check the file path, name, hash_type, and hash associated with a specific file.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath entity specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path entity specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename entity specifies the name of the file.</div>|  
| hash_type | [ind-def:EntityStateHashTypeType](#EntityStateHashTypeType)  (0..1) |  
||<div>The hash_type entity specifies the hash algorithm to use when collecting the hash for each of the specifed files.</div>|  
| hash | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The hash entity specifies the result of applying the hash algorithm to the file.</div>|  
| windows_view | [ind-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.</div>|  
  
______________
  
## <a name="environmentvariable_test"></a><  ~~environmentvariable_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** Replaced by the environmentvariable58_test.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The environmentvariable_test element is used to check an environment variable found on the system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a environmentvariable_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="environmentvariable_object"></a><  ~~environmentvariable_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** Replaced by the environmentvariable58_object.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The environmentvariable_object element is used by an environment variable test to define the specific environment variable(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This element describes the name of an environment variable.</div>|  
  
## <a name="environmentvariable_state"></a><  ~~environmentvariable_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** Replaced by the environmentvariable58_state.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The environmentvariable_state element contains two entities that are used to check the name of the specified environment variable and the value associated with it.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element describes the name of an environment variable.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The actual value of the specified environment variable.</div>|  
  
______________
  
## <a name="environmentvariable58_test"></a>< environmentvariable58_test >

The environmentvariable58_test element is used to check an environment variable for the specified process, which is identified by its process ID, on the system . It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a environmentvariable_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="environmentvariable58_object"></a>< environmentvariable58_object >

The environmentvariable58_object element is used by an environmentvariable58_test to define the specific environment variable(s) and process IDs to be evaluated. If a tool is unable to collect the environment variables of another process, an error must be reported. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pid | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The process ID of the process from which the environment variable should be retrieved. If the xsi:nil attribute is set to true, the process ID shall be the tool's running process; for scanners with no process ID (e.g., an agentless network scanner), no corresponding items will exist.</div>|  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This element describes the name of an environment variable.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="environmentvariable58_state"></a>< environmentvariable58_state >

The environmentvariable58_state element contains three entities that are used to check the name of the specified environment variable, the process ID of the process from which the environment variable was retrieved, and the value associated with the environment variable.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The process ID of the process from which the environment variable was retrieved.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element describes the name of an environment variable.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The actual value of the specified environment variable.</div>|  
  
______________
  
## <a name="ldap_test"></a>< ldap_test >

The LDAP test is used to check information about specific entries in an LDAP directory. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an ldap_object and the optional state element, ldap_state, specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="ldap_object"></a>< ldap_object >

The ldap_object element is used by an LDAP test to define the objects to be evaluated based on a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [ind-def:LdapBehaviors](#LdapBehaviors)  (0..1) |  
|||  
| suffix | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.</div>|  
| relative_dn | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified suffix. It contains all of the parts of the object's distinguished name except those outlined by the suffix. If the xsi:nil attribute is set to true, then the object being specified is the higher level suffix. In this case, the relative_dn element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every relative distinguished name under a given suffix.</div>|  
| attribute | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies a named value contained by the object. If the xsi:nil attribute is set to true, the attribute element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every attribute under a given relative distinguished name.</div>|  
  
## <a name="ldap_state"></a>< ldap_state >

The ldap_state element defines the different information that can be used to evaluate the specified entries in an LDAP directory. An ldap_test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| suffix | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.</div>|  
| relative_dn | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified suffix. It contains all of the parts of the object's distinguished name except those outlined by the suffix.</div>|  
| attribute | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies a named value contained by the object.</div>|  
| object_class | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the class of which the object is an instance.</div>|  
| ldaptype | [ind-def:EntityStateLdaptypeType](#EntityStateLdaptypeType)  (0..1) |  
||<div>Specifies the type of information that the specified attribute represents.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The actual value of the specified LDAP attribute.</div>|  
  
## <a name="LdapBehaviors"></a>== LdapBehaviors ==

The LdapBehaviors complex type defines a number of behaviors that allow a more detailed definition of the ldap_object being specified.

#### Attributes:

*	**scope** Restriction of xsd:string (optional -- default='BASE') ('BASE', 'ONE', 'SUBTREE')  
'scope' defines the depth from the base distinguished name to which the search should occur. The base distinguished name is the starting point of the search and is composed of the specified suffix and relative distinguished name. A value of 'BASE' indicates to search only the entry at the base distinguished name, a value of 'ONE' indicates to search all entries one level under the base distinguished name - but NOT including the base distinguished name, and a value of 'SUBTREE' indicates to search all entries at all levels under, and including, the specified base distinguished name. The default value is 'BASE'.  
  
______________
  
## <a name="ldap57_test"></a><  ~~ldap57_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.2** :small_red_triangle: <br />**Reason:** Use the original ldap_test. The ldap57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated LdaptypeTypes. Use the original ldap_test instead.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The LDAP test is used to check information about specific entries in an LDAP directory. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an ldap57_object and the optional state element, ldap57_state, specifies the metadata to check.

Note that this test supports complex values that are in the form of a record. For simple (string based) value collection see the ldap_test.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="ldap57_object"></a><  ~~ldap57_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.2** :small_red_triangle: <br />**Reason:** Use the original ldap_object. The ldap57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated LdaptypeTypes. Use the original ldap_test instead.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The ldap57_object element is used by an LDAP test to define the objects to be evaluated based on a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

Note that this object supports complex values that are in the form of a record. For simple (string based) value collection see the ldap_object.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [ind-def:LdapBehaviors](#LdapBehaviors)  (0..1) |  
|||  
| suffix | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.</div>|  
| relative_dn | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified suffix. It contains all of the parts of the object's distinguished name except those outlined by the suffix. If the xsi:nil attribute is set to true, then the object being specified is the higher level suffix. In this case, the relative_dn element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every relative distinguished name under a given suffix.</div>|  
| attribute | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies a named value contained by the object. If the xsi:nil attribute is set to true, the attribute element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every attribute under a given relative distinguished name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="ldap57_state"></a><  ~~ldap57_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.2** :small_red_triangle: <br />**Reason:** Use the original ldap_state. The ldap57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated LdaptypeTypes. Use the original ldap_test instead.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The ldap57_state element defines the different information that can be used to evaluate the specified entries in an LDAP directory. An ldap57_test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

Note that this state supports complex values that are in the form of a record. For simple (string based) value collection see the ldap_state.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| suffix | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.</div>|  
| relative_dn | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified suffix. It contains all of the parts of the object's distinguished name except those outlined by the suffix.</div>|  
| attribute | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies a named value contained by the object.</div>|  
| object_class | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the class of which the object is an instance.</div>|  
| ldaptype | [ind-def:EntityStateLdaptypeType](#EntityStateLdaptypeType)  (0..1) |  
||<div>Specifies the type of information that the specified attribute represents.</div>|  
| value | [oval-def:EntityStateRecordType](oval-definitions-schema.md#EntityStateRecordType)  (0..1) |  
||<div>The actual value of the specified LDAP attribute. Note that while an LDAP attribute can contain structured data where it is necessary to collect multiple related fields that can be described by the 'record' datatype, it is not always the case. It also is possible that an LDAP attribute can contain only a single value or an array of values. In these cases, there is not a name to uniquely identify the corresponding field which is a requirement for fields in the 'record' datatype. As a result, the name of the LDAP attribute will be used to uniquely identify the field and satisfy this requirement.</div>|  
  
______________
  
## <a name="sql_test"></a><  ~~sql_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** Replaced by the sql57_test. This test allows for single fields to be selected from a database. A new test was created to allow more than one field to be selected in one statement. See the sql57_test.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The sql test is used to check information stored in a database. It is often the case that applications store configuration settings in a database as opposed to a file. This test has been designed to enable those settings to be tested. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wmi_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="sql_object"></a><  ~~sql_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** Replaced by the sql57_object. This object allows for single fields to be selected from a database. A new object was created to allow more than one field to be selected in one statement. See the sql57_object.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The sql_object element is used by a sql test to define the specific database and query to be evaluated. Connection information is supplied allowing the tool to connect to the desired database and a query is supplied to call out the desired setting. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| engine | [ind-def:EntityObjectEngineType](#EntityObjectEngineType)  (1..1) |  
||<div>The engine entity defines the specific database engine to use. Any tool looking to collect information about this object will need to know the engine in order to use the appropriate drivers to establish a connection.</div>|  
| version | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The version entity defines the specific version of the database engine to use. This is also important in determining the correct driver to use for establishing a connection.</div>|  
| connection_string | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The connection_string entity defines specific connection parameters to be used in connecting to the database. This will help a tool connect to the correct database.</div>|  
| sql | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The sql entity defines a query used to identify the object(s) to test against. Any valid SQL query is usable with one exception, at most one field is allowed in the SELECT portion of the query. For example SELECT name FROM ... is valid, as is SELECT 'true' FROM ..., but SELECT name, number FROM ... is not valid. This is because the result element in the data section is only designed to work against a single field.</div>|  
  
## <a name="sql_state"></a><  ~~sql_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** Replaced by the sql57_state. This state allows for single fields to be selected from a database. A new state was created to allow more than one field to be selected in one statement. See the sql57_state.<br />**Comment:** This state has been deprecated and may be removed in a future version of the language.<br />

The sql_state element contains two entities that are used to check the name of the specified field and the value associated with it.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| engine | [ind-def:EntityStateEngineType](#EntityStateEngineType)  (0..1) |  
||<div>The engine entity defines a specific database engine.</div>|  
| version | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The version entity defines a specific version of a given database engine.</div>|  
| connection_string | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The connection_string entity defines a set of parameters that help identify the connection to the database.</div>|  
| sql | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>the sql entity defines a query used to identify the object(s) to test against.</div>|  
| result | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The result entity specifies how to test objects in the result set of the specified SQL statement. Only one comparable field is allowed. So if the SQL statement look like 'SELECT name FROM ...', then a result entity with a value of 'Fred' would test the set of 'name' values returned by the SQL statement against the value 'Fred'.</div>|  
  
______________
  
## <a name="sql57_test"></a>< sql57_test >

The sql test is used to check information stored in a database. It is often the case that applications store configuration settings in a database as opposed to a file. This test has been designed to enable those settings to be tested. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wmi_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="sql57_object"></a>< sql57_object >

The sql57_object element is used by a sql test to define the specific database and query to be evaluated. Connection information is supplied allowing the tool to connect to the desired database and a query is supplied to call out the desired setting. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| engine | [ind-def:EntityObjectEngineType](#EntityObjectEngineType)  (1..1) |  
||<div>The engine entity defines the specific database engine to use. Any tool looking to collect information about this object will need to know the engine in order to use the appropriate drivers to establish a connection.</div>|  
| version | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The version entity defines the specific version of the database engine to use. This is also important in determining the correct driver to use for establishing a connection.</div>|  
| connection_string | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The connection_string entity defines specific connection parameters to be used in connecting to the database. This will help a tool connect to the correct database.</div>|  
| sql | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The sql entity defines a query used to identify the object(s) to test against. Any valid SQL query is usable with one exception, all fields must be named in the SELECT portion of the query. For example, SELECT name, number FROM ... is valid. However, SELECT * FROM ... is not valid. This is because the record element in the state and item require a unique field name value to ensure that any query results can be evaluated consistently.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="sql57_state"></a>< sql57_state >

The sql57_state element contains two entities that are used to check the name of the specified field and the value associated with it.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| engine | [ind-def:EntityStateEngineType](#EntityStateEngineType)  (0..1) |  
||<div>The engine entity defines a specific database engine.</div>|  
| version | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The version entity defines a specific version of a given database engine.</div>|  
| connection_string | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The connection_string entity defines a set of parameters that help identify the connection to the database.</div>|  
| sql | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>the sql entity defines a query used to identify the object(s) to test against.</div>|  
| result | [oval-def:EntityStateRecordType](oval-definitions-schema.md#EntityStateRecordType)  (0..1) |  
||<div>The result entity specifies how to test objects in the result set of the specified SQL statement.</div>|  
  
______________
  
## <a name="textfilecontent54_test"></a>< textfilecontent54_test >

The textfilecontent54_test element is used to check the contents of a text file (aka a configuration file) by looking at individual blocks of text. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a textfilecontent54_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="textfilecontent54_object"></a>< textfilecontent54_object >

The textfilecontent54_object element is used by a textfilecontent_test to define the specific block(s) of text of a file(s) to be evaluated. The textfilecontent54_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [ind-def:Textfilecontent54Behaviors](#Textfilecontent54Behaviors)  (0..1) |  
|||  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename entity specifies the name of a file.</div>|  
| pattern | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The pattern entity defines a chunk of text in a file and is represented using a regular expression. A subexpression (using parentheses) can call out a piece of the text block to test. For example, the pattern abc(.*)xyz would look for a block of text in the file that starts with abc and ends with xyz, with the subexpression being all the characters that exist in between. The value of the subexpression can then be tested using the subexpression entity of a textfilecontent54_state. Note that if the pattern, starting at the same point in the file, matches more than one block of text, then it matches the longest. For example, given a file with abcdefxyzxyzabc, then the pattern abc(.*)xyz would match the block abcdefxyzxyz. Subexpressions also match the longest possible substrings, subject to the constraint that the whole match be as long as possible, with subexpressions starting earlier in the pattern taking priority over ones starting later.</div><div>Note that when using regular expressions, OVAL supports a common subset of the regular expression character classes, operations, expressions and other lexical tokens defined within Perl 5's regular expression specification. For more information on the supported regular expression syntax in OVAL see: http://oval.mitre.org/language/about/re_support_5.6.html.</div>|  
| instance | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The instance entity calls out a specific match of the pattern. It can have both positive and negative values. If the value is positive, the index of the specific match of the pattern is counted from the beginning of the set of matches of that pattern. The first match is given an instance value of 1, the second match is given an instance value of 2, and so on. For positive values, the 'less than' and 'less than or equals' operations imply the the object is operating only on positive values. Frequently, this entity will be defined as 'greater than or equals' 1, which results in the object representing the set of all matches of the pattern.</div><div>Negative values are used to simplify collection of pattern match occurrences counting backwards from the last match. To find the last match, use an instance of -1; the penultimate match is found using an instance value of -2, and so on. For negative values, the 'greater than' and 'greater than or equals' operations imply the object is operating only on negative values. For example, searching for instances greater than or equal to -2 would yield only the last two maches.</div><div>Note that the main purpose of the instance item entity is to provide uniqueness for different textfilecontent_items that results from multiple matches of a given pattern against the same file, and they will always have positive values.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="textfilecontent54_state"></a>< textfilecontent54_state >

The textfilecontent54_state element contains entities that are used to check the file path and name, as well as the text block in question and the value of the subexpressions.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename entity represents the name of a file.</div>|  
| pattern | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The pattern entity represents a regular expression that is used to define a block of text.</div>|  
| instance | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The instance entity calls out a specific match of the pattern. This can only be a positive integer.</div>|  
| text | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The text entity represents the block of text that matched the specified pattern.</div>|  
| subexpression | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The subexpression entity represents a value to test against the subexpression in the specified pattern. If multiple subexpressions are specified in the pattern, this value is tested against all of them. For example, if the pattern abc(.*)mno(.*)xyp was supplied, and the state specifies a subexpression value of enabled, then the test would check that both (or at least one, none, etc. depending on the entity_check attribute) of the subexpressions have a value of enabled.</div>|  
| windows_view | [ind-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.</div>|  
  
## <a name="Textfilecontent54Behaviors"></a>== Textfilecontent54Behaviors ==

The Textfilecontent54Behaviors complex type defines a number of behaviors that allow a more detailed definition of the textfilecontent54_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

The Textfilecontent54Behaviors extend the ind-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** [ind-def:FileBehaviors](#FileBehaviors) 

#### Attributes:

*	**ignore_case** xsd:boolean (optional -- default='false')  
'ignore_case' indicates whether case should be considered when matching system values against the regular expression provided by the pattern entity. This behavior is intended to align with the Perl regular expression 'i' modifier: if true, case will be ignored. If false, case will not be ignored. The default is false.  
*	**multiline** xsd:boolean (optional -- default='true')  
'multiline' enables multiple line semantics in the regular expression provided by the pattern entity. This behavior is intended to align with the Perl regular expression 'm' modifier: if true, the '^' and '$' metacharacters will match both at the beginning/end of a string, and immediately after/before newline characters. If false, they will match only at the beginning/end of a string. The default is true.  
*	**singleline** xsd:boolean (optional -- default='false')  
'singleline' enables single line semantics in the regular expression provided by the pattern entity. This behavior is intended to align with the Perl regular expression 's' modifier: if true, the '.' metacharacter will match newlines. If false, it will not. The default is false.  
  
______________
  
## <a name="textfilecontent_test"></a><  ~~textfilecontent_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.4** :small_red_triangle: <br />**Reason:** Replaced by the textfilecontent54_test. Support for multi-line pattern matching and multi-instance matching was added. Therefore, a new test was created to reflect these changes. See the textfilecontent54_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The textfilecontent_test element is used to check the contents of a text file (aka a configuration file) by looking at individual lines. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a textfilecontent_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="textfilecontent_object"></a><  ~~textfilecontent_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.4** :small_red_triangle: <br />**Reason:** Replaced by the textfilecontent54_object. Support for multi-line pattern matching and multi-instance matching was added. Therefore, a new object was created to reflect these changes. See the textfilecontent54_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The textfilecontent_object element is used by a text file content test to define the specific line(s) of a file(s) to be evaluated. The textfilecontent_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [ind-def:FileBehaviors](#FileBehaviors)  (0..1) |  
|||  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of the file.</div>|  
| line | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The line element represents a line in the file and is represented using a regular expression. A single subexpression can be called out using parentheses. The value of this subexpression can then be checked using a textfilecontent_state.</div><div>Note that when using regular expressions, OVAL supports a common subset of the regular expression character classes, operations, expressions and other lexical tokens defined within Perl 5's regular expression specification. For more information on the supported regular expression syntax in OVAL see: http://oval.mitre.org/language/about/re_support_5.6.html.</div>|  
  
## <a name="textfilecontent_state"></a><  ~~textfilecontent_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.4** :small_red_triangle: <br />**Reason:** Replaced by the textfilecontent54_state. Support for multi-line pattern matching and multi-instance matching was added. Therefore, a new state was created to reflect these changes. See the textfilecontent54_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The textfilecontent_state element contains entities that are used to check the file path and name, as well as the line in question and the value of the specific subexpression.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the file.</div>|  
| line | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The line element represents a line in the file that was collected.</div>|  
| subexpression | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>Each subexpression in the regular expression of the line element is then tested against the value specified in the subexpression element.</div>|  
| windows_view | [ind-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.</div>|  
  
______________
  
## <a name="unknown_test"></a>< unknown_test >

An unknown_test acts as a placeholder for tests whose implementation is unknown. This test always evaluates to a result of 'unknown'. Any information that is known about the test should be held in the notes child element that is available through the extension of the abstract test element. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. Note that for an unknown_test, the required check attribute that is part of the extended TestType should be ignored during evaluation and hence can be set to any valid value.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

______________
  
## <a name="variable_test"></a>< variable_test >

The variable test allows the value of a variable to be compared to a defined value. As an example one might use this test to validate that a variable being passed in from an external source falls within a specified range. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a variable_object and the optional state element specifies the value to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="variable_object"></a>< variable_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| var_ref | [ind-def:EntityObjectVariableRefType](#EntityObjectVariableRefType)  (1..1) |  
||<div>The id of the variable you want.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="variable_state"></a>< variable_state >

The variable_state element contains two entities that are used to check the var_ref of the specified varible and the value associated with it.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| var_ref | [ind-def:EntityStateVariableRefType](#EntityStateVariableRefType)  (0..1) |  
||<div>The id of the variable.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value of the variable.</div>|  
  
______________
  
## <a name="xmlfilecontent_test"></a>< xmlfilecontent_test >

The xmlfilecontent_test element is used to explore the contents of an xml file. This test allows specific pieces of an xml document specified using xpath to be tested. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a xmlfilecontent_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="xmlfilecontent_object"></a>< xmlfilecontent_object >

The xmlfilecontent_object element is used by a xml file content test to define the specific piece of an xml file(s) to be evaluated. The xmlfilecontent_object will only collect regular files on UNIX systems and FILE_TYPE_DISK files on Windows systems. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [ind-def:FileBehaviors](#FileBehaviors)  (0..1) |  
|||  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of the file.</div>|  
| xpath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies an XPath 1.0 expression to evaluate against the XML file specified by the filename entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="xmlfilecontent_state"></a>< xmlfilecontent_state >

The xmlfilecontent_state element contains entities that are used to check the file path and name, as well as the xpath used and the value of the this xpath.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename element specifies the name of the file.</div>|  
| xpath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies an XPath 1.0 expression to evaluate against the XML file specified by the filename entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.</div>|  
| value_of | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found.</div>|  
| windows_view | [ind-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to. This entity only applies to 64-bit Microsoft Windows operating systems.</div>|  
  
## <a name="FileBehaviors"></a>== FileBehaviors ==

The FileBehaviors complex type defines a number of behaviors that allow a more detailed definition of a set of files or file related items to collect. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

#### Attributes:

*	**max_depth** Restriction of xsd:integer (optional -- default='-1')  
'max_depth' defines the maximum depth of recursion to perform when a recurse_direction is specified. A value of '0' is equivalent to no recursion, '1' means to step only one directory level up/down, and so on. The default value is '-1' meaning no limitation. For a 'max_depth' of -1 or any value of 1 or more the starting directory must be considered in the recursive search.  
Note that the default recurse_direction behavior is 'none' so even though max_depth specifies no limitation by default, the recurse_direction behavior turns recursion off.  
Note that this behavior only applies with the equality operation on the path entity.  
*	**recurse** Restriction of xsd:string (optional -- default='symlinks and directories') ('directories', 'symlinks', 'symlinks and directories')  
'recurse' defines how to recurse into the path entity, in other words what to follow during recursion. Options include symlinks, directories, or both. Note that a max-depth other than 0 has to be specified for recursion to take place and for this attribute to mean anything. Also note that on Windows, the 'symlink' value is equivalent to the 'junction' recurse value in win-def:FileBehaviors.  
Note that this behavior only applies with the equality operation on the path entity.  
*	**recurse_direction** Restriction of xsd:string (optional -- default='none') ('none', 'up', 'down')  
'recurse_direction' defines the direction to recurse, either 'up' to parent directories, or 'down' into child directories. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the path entity.  
*	**recurse_file_system** Restriction of xsd:string (optional -- default='all') ('all', 'local', 'defined')  
'recurse_file_system' defines the file system limitation of any searching and applies to all operations as specified on the path or filepath entity. The value of 'local' limits the search scope to local file systems (as opposed to file systems mounted from an external system). The value of 'defined' keeps any recursion within the file system that the file_object (path+filename or filepath) has specified. For example, on Windows, if the path specified was "C:\", you would search only the C: drive, not other filesystems mounted to descendant paths. Similarly, on UNIX, if the path specified was "/", you would search only the filesystem mounted there, not other filesystems mounted to descendant paths. The value of 'defined' only applies when an equality operation is used for searching because the path or filepath entity must explicitly define a file system. The default value is 'all' meaning to search all available file systems for data collection.  
Note that in most cases it is recommended that the value of 'local' be used to ensure that file system searching is limited to only the local file systems. Searching 'all' file systems may have performance implications.  
*	**windows_view** Restriction of xsd:string (optional -- default='64_bit') ('32_bit', '64_bit')  
64-bit versions of Windows provide an alternate file system and registry views to 32-bit applications. This behavior allows the OVAL Object to specify which view should be examined. This behavior only applies to 64-bit Windows, and must not be applied on other platforms.  
Note that the values have the following meaning: '64_bit' – Indicates that the 64-bit view on 64-bit Windows operating systems must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. '32_bit' – Indicates that the 32-bit view must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. It is recommended that the corresponding 'windows_view' entity be set on the OVAL Items that are collected when this behavior is used to distinguish between the OVAL Items that are collected in the 32-bit or 64-bit views.  
  
## <a name="EntityObjectEngineType"></a>== EntityObjectEngineType ==

The EntityObjectEngineType complex type defines a string entity value that is restricted to a set of enumerations. Each valid enumeration is a valid database engine. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| access | <div>The access value describes the Microsoft Access database engine.</div> |  
| db2 | <div>The db2 value describes the IBM DB2 database engine.</div> |  
| cache | <div>The cache value describes the InterSystems Cache database engine.</div> |  
| firebird | <div>The firebird value describes the Firebird database engine.</div> |  
| firstsql | <div>The firstsql value describes the FirstSQL database engine.</div> |  
| foxpro | <div>The foxpro value describes the Microsoft FoxPro database engine.</div> |  
| informix | <div>The informix value describes the IBM Informix database engine.</div> |  
| ingres | <div>The ingres value describes the Ingres database engine.</div> |  
| interbase | <div>The interbase value describes the Embarcadero Technologies InterBase database engine.</div> |  
| lightbase | <div>The lightbase value describes the Light Infocon LightBase database engine.</div> |  
| maxdb | <div>The maxdb value describes the SAP MaxDB database engine.</div> |  
| monetdb | <div>The monetdb value describes the MonetDB SQL database engine.</div> |  
| mimer | <div>The mimer value describes the Mimer SQL database engine.</div> |  
| mysql | <div>The mysql value describes the MySQL database engine.</div> |  
| oracle | <div>The oracle value describes the Oracle database engine.</div> |  
| paradox | <div>The paradox value describes the Paradox database engine.</div> |  
| pervasive | <div>The pervasive value describes the Pervasive PSQL database engine.</div> |  
| postgre | <div>The postgre value describes the PostgreSQL database engine.</div> |  
| sqlbase | <div>The sqlbase value describes the Unify SQLBase database engine.</div> |  
| sqlite | <div>The sqlite value describes the SQLite database engine.</div> |  
| sqlserver | <div>The sqlserver value describes the Microsoft SQL database engine.</div> |  
| sybase | <div>The sybase value describes the Sybase database engine.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateEngineType"></a>== EntityStateEngineType ==

The EntityStateEngineType complex type defines a string entity value that is restricted to a set of enumerations. Each valid enumeration is a valid database engine. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| access | <div>The access value describes the Microsoft Access database engine.</div> |  
| db2 | <div>The db2 value describes the IBM DB2 database engine.</div> |  
| cache | <div>The cache value describes the InterSystems Cache database engine.</div> |  
| firebird | <div>The firebird value describes the Firebird database engine.</div> |  
| firstsql | <div>The firstsql value describes the FirstSQL database engine.</div> |  
| foxpro | <div>The foxpro value describes the Microsoft FoxPro database engine.</div> |  
| informix | <div>The informix value describes the IBM Informix database engine.</div> |  
| ingres | <div>The ingres value describes the Ingres database engine.</div> |  
| interbase | <div>The interbase value describes the Embarcadero Technologies InterBase database engine.</div> |  
| lightbase | <div>The lightbase value describes the Light Infocon LightBase database engine.</div> |  
| maxdb | <div>The maxdb value describes the SAP MaxDB database engine.</div> |  
| monetdb | <div>The monetdb value describes the MonetDB SQL database engine.</div> |  
| mimer | <div>The mimer value describes the Mimer SQL database engine.</div> |  
| mysql | <div>The mysql value describes the MySQL database engine.</div> |  
| oracle | <div>The oracle value describes the Oracle database engine.</div> |  
| paradox | <div>The paradox value describes the Paradox database engine.</div> |  
| pervasive | <div>The pervasive value describes the Pervasive PSQL database engine.</div> |  
| postgre | <div>The postgre value describes the PostgreSQL database engine.</div> |  
| sqlbase | <div>The sqlbase value describes the Unify SQLBase database engine.</div> |  
| sqlite | <div>The sqlite value describes the SQLite database engine.</div> |  
| sqlserver | <div>The sqlserver value describes the Microsoft SQL database engine.</div> |  
| sybase | <div>The sybase value describes the Sybase database engine.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
______________
  
## <a name="EntityStateFamilyType"></a>== EntityStateFamilyType ==

The EntityStateFamilyType complex type defines a string entity value that is restricted to a set of enumerations. Each valid enumeration is a high-level family of system operating system. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| android | <div>The android value describes the Android mobile operating system.</div> |  
| apple_ios | <div>The apple_ios value describes the iOS mobile operating system.</div> |  
| asa | <div>The asa value describes the Cisco ASA security devices.</div> |  
| catos | <div>The catos value describes the Cisco CatOS operating system.</div> |  
| ios | <div>The ios value describes the Cisco IOS operating system.</div> |  
| iosxe | <div>The iosxe value describes the Cisco IOS-XE operating system.</div> |  
| junos | <div>The junos value describes the Juniper JunOS operating system.</div> |  
| macos | <div>The macos value describes the Mac operating system.</div> |  
| pixos | <div>The pixos value describes the Cisco PIX operating system.</div> |  
| undefined | <div>The undefined value is to be used when the desired family is not available.</div> |  
| unix | <div>The unix value describes the UNIX operating system.</div> |  
| vmware_infrastructure | <div>The vmware_infrastructure value describes VMWare Infrastructure.</div> |  
| windows | <div>The windows value describes the Microsoft Windows operating system.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityObjectHashTypeType"></a>== EntityObjectHashTypeType ==

The EntityObjectHashTypeType complex type restricts a string value to a specific set of values that specify the different hash algorithms that are supported. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| MD5 | <div>The MD5 hash algorithm.</div> |  
| SHA-1 | <div>The SHA-1 hash algorithm.</div> |  
| SHA-224 | <div>The SHA-224 hash algorithm.</div> |  
| SHA-256 | <div>The SHA-256 hash algorithm.</div> |  
| SHA-384 | <div>The SHA-384 hash algorithm.</div> |  
| SHA-512 | <div>The SHA-512 hash algorithm.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateHashTypeType"></a>== EntityStateHashTypeType ==

The EntityStateHashTypeType complex type restricts a string value to a specific set of values that specify the different hash algorithms that are supported. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| MD5 | <div>The MD5 hash algorithm.</div> |  
| SHA-1 | <div>The SHA-1 hash algorithm.</div> |  
| SHA-224 | <div>The SHA-224 hash algorithm.</div> |  
| SHA-256 | <div>The SHA-256 hash algorithm.</div> |  
| SHA-384 | <div>The SHA-384 hash algorithm.</div> |  
| SHA-512 | <div>The SHA-512 hash algorithm.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityObjectVariableRefType"></a>== EntityObjectVariableRefType ==

The EntityObjectVariableRefType complex type defines a string object entity that has a valid OVAL variable id as the value. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

**Pattern:** (oval:[A-Za-z0-9_\-\.]+:var:[1-9][0-9]*){0,}

## <a name="EntityStateVariableRefType"></a>== EntityStateVariableRefType ==

The EntityStateVariableRefType complex type defines a string state entity that has a valid OVAL variable id as the value. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

**Pattern:** (oval:[A-Za-z0-9_\-\.]+:var:[1-9][0-9]*){0,}

## <a name="EntityStateLdaptypeType"></a>== EntityStateLdaptypeType ==

The EntityStateLdaptypeType complex type restricts a string value to a specific set of values that specify the different types of information that an ldap attribute can represent. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| LDAPTYPE_ACI_ITEM | <div>ACI Item, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.1</div> |  
| LDAPTYPE_ACCESS_POINT | <div>Access Point, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.2</div> |  
| LDAPTYPE_ATTRIBUTE_TYPE_DESCRIP_STRING | <div>Attribute Type Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.3</div> |  
| LDAPTYPE_AUDIO | <div>Audio, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.4</div> |  
| LDAPTYPE_BINARY | <div>Binary, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.5</div> |  
| LDAPTYPE_BIT_STRING | <div>Bit String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.6</div> |  
| LDAPTYPE_BOOLEAN | <div>Boolean, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.7</div> |  
| LDAPTYPE_CERTIFICATE | <div>Certificate, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.8</div> |  
| LDAPTYPE_CERTIFICATE_LIST | <div>Certificate List, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.9</div> |  
| LDAPTYPE_CERTIFICATE_PAIR | <div>Certificate Pair, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.10</div> |  
| LDAPTYPE_COUNTRY_STRING | <div>Country String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.11</div> |  
| LDAPTYPE_DN_STRING | <div>DN, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.12</div> |  
| LDAPTYPE_DATA_QUALITY_SYNTAX | <div>Data Quality Syntax, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.13</div> |  
| LDAPTYPE_DELIVERY_METHOD | <div>Delivery Method, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.14</div> |  
| LDAPTYPE_DIRECTORY_STRING | <div>Directory String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.15</div> |  
| LDAPTYPE_DIR_CONTENT_RULE_DESCRIPTION | <div>DIT Content Rule Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.16</div> |  
| LDAPTYPE_DIT_STRUCTURE_RULE_DESCRIPTION | <div>DIT Structure Rule Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.17</div> |  
| LDAPTYPE_DL_SUBMIT_PERMISSION | <div>DL Submit Permission, corresponding to OID Y 1.3.6.1.4.1.1466.115.121.1.18</div> |  
| LDAPTYPE_DSA_QUALITY_SYNTAX | <div>DSA Quality Syntax, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.19</div> |  
| LDAPTYPE_DSE_TYPE | <div>DSE Type, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.20</div> |  
| LDAPTYPE_ENHANCED_GUIDE | <div>Enhanced Guide, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.21</div> |  
| LDAPTYPE_FAX_TEL_NUMBER | <div>Facsimile Telephone Number, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.22</div> |  
| LDAPTYPE_FAX | <div>Fax, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.23</div> |  
| LDAPTYPE_GENERALIZED_TIME | <div>Generalized Time, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.24</div> |  
| LDAPTYPE_GUIDE | <div>Guide, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.25</div> |  
| LDAPTYPE_IA5_STRING | <div>IA5 String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.26</div> |  
| LDAPTYPE_INTEGER | <div>INTEGER, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.27</div> |  
| LDAPTYPE_JPEG | <div>JPEG, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.28</div> |  
| LDAPTYPE_LDAP_SYNTAX_DESCRIPTION | <div>LDAP Syntax Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.54</div> |  
| LDAPTYPE_LDAP_SCHEMA_DEFINITION | <div>LDAP Schema Definition, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.56</div> |  
| LDAPTYPE_LDAP_SCHEMA_DESCRIPTION | <div>LDAP Schema Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.57</div> |  
| LDAPTYPE_MASTER_AND_SHADOW_ACCESS_POINTS | <div>Master And Shadow Access Points, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.29</div> |  
| LDAPTYPE_MATCHING_RULE_DESCRIPTION | <div>Matching Rule Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.30</div> |  
| LDAPTYPE_MATCHING_RULE_USE_DESCRIPTION | <div>Matching Rule Use Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.31</div> |  
| LDAPTYPE_MAIL_PREFERENCE | <div>Mail Preference, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.32</div> |  
| LDAPTYPE_MHS_OR_ADDRESS | <div>MHS OR Address, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.33</div> |  
| LDAPTYPE_MODIFY_RIGHTS | <div>Modify Rights, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.55</div> |  
| LDAPTYPE_NAME_AND_OPTIONAL_UID | <div>Name And Optional UID, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.34</div> |  
| LDAPTYPE_NAME_FORM_DESCRIPTION | <div>Name Form Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.35</div> |  
| LDAPTYPE_NUMERIC_STRING | <div>Numeric String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.36</div> |  
| LDAPTYPE_OBJECT_CLASS_DESCRIP_STRING | <div>Object Class Description, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.37</div> |  
| LDAPTYPE_OCTET_STRING | <div>Octet String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.40</div> |  
| LDAPTYPE_OID | <div>OID, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.38</div> |  
| LDAPTYPE_MAILBOX | <div>Other Mailbox, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.39</div> |  
| LDAPTYPE_POSTAL_ADDRESS | <div>Postal Address, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.41</div> |  
| LDAPTYPE_PROTOCOL_INFORMATION | <div>Protocol Information, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.42</div> |  
| LDAPTYPE_PRESENTATION_ADDRESS | <div>Presentation Address, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.43</div> |  
| LDAPTYPE_PRINTABLE_STRING | <div>Printable String, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.44</div> |  
| LDAPTYPE_SUBSTRING_ASSERTION | <div>Substring Assertion, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.58</div> |  
| LDAPTYPE_SUBTREE_SPECIFICATION | <div>Subtree Specification, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.45</div> |  
| LDAPTYPE_SUPPLIER_INFORMATION | <div>Supplier Information, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.46</div> |  
| LDAPTYPE_SUPPLIER_OR_CONSUMER | <div>Supplier Or Consumer, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.47</div> |  
| LDAPTYPE_SUPPLIER_AND_CONSUMER | <div>Supplier And Consumer, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.48</div> |  
| LDAPTYPE_SUPPORTED_ALGORITHM | <div>Supported Algorithm, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.49</div> |  
| LDAPTYPE_TELEPHONE_NUMBER | <div>Telephone Number, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.50</div> |  
| LDAPTYPE_TELEX_TERMINAL_ID | <div>Teletex Terminal Identifier, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.51</div> |  
| LDAPTYPE_TELEX_NUMBER | <div>Telex Number, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.52</div> |  
| LDAPTYPE_UTC_TIME | <div>UTC Time, corresponding to OID 1.3.6.1.4.1.1466.115.121.1.53</div> |  
| ~~LDAPTYPE_TIMESTAMP~~ | ~~<div>The data is of a time stamp in seconds.</div>~~> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** This value was accidently carried over from the win-def:EntityStateAdstypeType as it was used as a template for the ind-def:EntityStateLdaptypeType.<br />**Comment:** This value has been deprecated and will be removed in version 6.0 of the language.<br /> |  
| ~~LDAPTYPE_EMAIL~~ | ~~<div>The data is of an e-mail message.</div>~~> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** This value was accidently carried over from the win-def:EntityStateAdstypeType as it was used as a template for the ind-def:EntityStateLdaptypeType.<br />**Comment:** This value has been deprecated and will be removed in version 6.0 of the language.<br /> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateWindowsViewType"></a>== EntityStateWindowsViewType ==

The EntityStateWindowsViewType restricts a string value to a specific set of values: 32-bit and 64-bit. These values describe the different values possible for the windows view behavior.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| 32_bit | <div>Indicates the 32_bit windows view.</div> |  
| 64_bit | <div>Indicates the 64_bit windows view.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
