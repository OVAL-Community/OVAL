# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Independent System Characteristics  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

This document outlines the items of the OVAL System Characteristics XML schema that are independent of any specific family or platform. Each iten is an extention of a basic System Characteristics item defined in the core System Characteristics XML schema.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="family_item"></a>< family_item >

This element stores high level system OS type, otherwise known as the family.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| family | [ind-sc:EntityItemFamilyType](#EntityItemFamilyType)  (0..1) |  
||<div>This element describes the high level system OS type, otherwise known as the family.</div>|  
  
______________
  
## <a name="filehash_item"></a><  ~~filehash_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** Replaced by the filehash58_item which allows the hash algorithm to be specified when collecting data. See the filehash58_item.<br />**Comment:** This item has been deprecated and may be removed in a future version of the language.<br />

This element stores the different hash values associated with a specific file.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the file.</div>|  
| md5 | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The md5 hash of the file</div>|  
| sha1 | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The sha1 hash of the file</div>|  
| windows_view | [ind-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set. This entity only applies to 64-bit Microsoft Windows operating systems.</div>|  
  
______________
  
## <a name="filehash58_item"></a>< filehash58_item >

This element stores a hash value associated with a specific file.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the file.</div>|  
| hash_type | [ind-sc:EntityItemHashTypeType](#EntityItemHashTypeType)  (0..1) |  
||<div>Identifier for the hash algorithm used to calculate the hash.</div>|  
| hash | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The result of applying the hash algorithm to the file.</div>|  
| windows_view | [ind-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set. This entity only applies to 64-bit Microsoft Windows operating systems.</div>|  
  
______________
  
## <a name="environmentvariable_item"></a><  ~~environmentvariable_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** Replaced by the environmentvariable58_item. This item allows the hash algorithm to be specified. See the filehash58_item.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

This item stores information about environment variables and their values.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes the name of an environment variable.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>The actual value of the specified environment variable.</div>|  
  
______________
  
## <a name="environmentvariable58_item"></a>< environmentvariable58_item >

This item stores information about an environment variable, the process ID of the process from which it was retrieved, and its corresponding value.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The process ID of the process from which the environment variable was retrieved.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes the name of an environment variable.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>The actual value of the specified environment variable.</div>|  
  
______________
  
## <a name="ldap_item"></a>< ldap_item >

This element holds information about specific entries in the LDAP directory. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| suffix | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.</div>|  
| relative_dn | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The relative_dn field is used to uniquely identify an item inside the specified suffix. It contains all of the parts of the item's distinguished name except those outlined by the suffix. If the xsi:nil attribute is set to true, then the item being represented is the higher level suffix.</div>|  
| attribute | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies a named value contained by the object.</div>|  
| object_class | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the class of which the object is an instance.</div>|  
| ldaptype | [ind-sc:EntityItemLdaptypeType](#EntityItemLdaptypeType)  (0..1) |  
||<div>Specifies the type of information that the specified attribute represents.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The actual value of the specified LDAP attribute.</div>|  
  
______________
  
## <a name="ldap57_item"></a><  ~~ldap57_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.2** :small_red_triangle: <br />**Reason:** Use the original ldap_item. The ldap57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated LdaptypeTypes. Use the original ldap_test instead.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

This element holds information about specific entries in the LDAP directory. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| suffix | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Each object in an LDAP directory exists under a certain suffix (also known as a naming context). A suffix is defined as a single object in the Directory Information Tree (DIT) with every object in the tree subordinate to it.</div>|  
| relative_dn | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The relative_dn field is used to uniquely identify an item inside the specified suffix. It contains all of the parts of the item's distinguished name except those outlined by the suffix. If the xsi:nil attribute is set to true, then the item being represented is the higher level suffix.</div>|  
| attribute | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies a named value contained by the object.</div>|  
| object_class | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the class of which the object is an instance.</div>|  
| ldaptype | [ind-sc:EntityItemLdaptypeType](#EntityItemLdaptypeType)  (0..1) |  
||<div>Specifies the type of information that the specified attribute represents.</div>|  
| value | [oval-sc:EntityItemRecordType](oval-system-characteristics-schema.md#EntityItemRecordType)  (0..unbounded) |  
||<div>The actual value of the specified LDAP attribute. Note that while an LDAP attribute can contain structured data where it is necessary to collect multiple related fields that can be described by the 'record' datatype, it is not always the case. It also is possible that an LDAP attribute can contain only a single value or an array of values. In these cases, there is not a name to uniquely identify the corresponding field(s) which is a requirement for fields in the 'record' datatype. As a result, the name of the LDAP attribute will be used to uniquely identify the field(s) and satisfy this requirement. If the LDAP attribute contains a single value, the 'record' will have a single field identified by the name of the LDAP attribute. If the LDAP attribute contains an array of values, the 'record' will have multiple fields all identified by the name of the LDAP attribute.</div>|  
  
______________
  
## <a name="sql_item"></a><  ~~sql_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** Replaced by the sql57_item. This item allows for single fields to be selected from a database. A new item was created to allow more than one field to be selected in one statement. See the sql57_item.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The sql_item outlines information collected from a database via an SQL query.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| engine | [ind-sc:EntityItemEngineType](#EntityItemEngineType)  (0..1) |  
||<div>The engine entity identifies the specific database engine used to connect to the database.</div>|  
| version | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The version entity identifies the version of the database engine used to connect to the database.</div>|  
| connection_string | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The connection_string entity defines connection parameters used to connect to the specific database.</div>|  
| sql | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The sql entity holds the specific query used to identify the object(s) in the database.</div>|  
| result | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The result entity specifies the result(s) of the given SQL query against the database.</div>|  
  
______________
  
## <a name="sql57_item"></a>< sql57_item >

The sql57_item outlines information collected from a database via an SQL query.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| engine | [ind-sc:EntityItemEngineType](#EntityItemEngineType)  (0..1) |  
||<div>The engine entity identifies the specific database engine used to connect to the database.</div>|  
| version | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The version entity identifies the version of the database engine used to connect to the database.</div>|  
| connection_string | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The connection_string entity defines connection parameters used to connect to the specific database.</div>|  
| sql | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The sql entity holds the specific query used to identify the object(s) in the database.</div>|  
| result | [oval-sc:EntityItemRecordType](oval-system-characteristics-schema.md#EntityItemRecordType)  (0..unbounded) |  
||<div>The result entity holds the results of the specified SQL statement.</div>|  
  
______________
  
## <a name="textfilecontent_item"></a>< textfilecontent_item >

The textfilecontent_item looks at the contents of a text file (aka a configuration file) by looking at individual lines.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filename entity specifies the name of the file (without the path) that is being represented.</div>|  
| pattern | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The pattern entity represents a regular expression that is used to define a block of text. Subexpression notation (parenthesis) is used to call out a value(s) to test against. For example, the pattern abc(.*)xyz would look for a block of text in the file that starts with abc and ends with xyz, with the subexpression being all the characters that exist inbetween. Note that if the pattern can match more than one block of text starting at the same point, then it matches the longest. Subexpressions also match the longest possible substrings, subject to the constraint that the whole match be as long as possible, with subexpressions starting earlier in the pattern taking priority over ones starting later.</div>|  
| instance | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The instance entity calls out which match of the pattern is being represented by this item. The first match is given an instance value of 1, the second match is given an instance value of 2, and so on. The main purpose of this entity is too provide uniqueness for different textfilecontent_items that results from multiple matches of a given pattern against the same file.</div>|  
| ~~line~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>The line element represents a line in the file and is represented using a regular expression.</div>~~|  
| text | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>The text entity represents the block of text that matched the specified pattern.</div>|  
| subexpression | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The subexpression entity represents the value of a subexpression in the specified pattern. If multiple subexpressions are specified in the pattern, then multiple entities are presented. Note that the textfilecontent_state in the definition schema only allows a single subexpression entity. This means that the test will check that all (or at least one, none, etc.) the subexpressions pass the same check. This means that the order of multiple subexpression entities in the item does not matter.</div>|  
| windows_view | [ind-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set. This entity only applies to 64-bit Microsoft Windows operating systems.</div>|  
  
______________
  
## <a name="variable_item"></a>< variable_item >

This item stores information about OVAL Variables and their values.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| var_ref | [ind-sc:EntityItemVariableRefType](#EntityItemVariableRefType)  (0..1) |  
||<div>The id of the variable.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value of the variable. If a variable represents and array of values, then multiple value elements should exist.</div>|  
  
______________
  
## <a name="xmlfilecontent_item"></a>< xmlfilecontent_item >

This item stores results from checking the contents of an xml file.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filename element specifies the name of the file.</div>|  
| xpath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies an XPath 1.0 expression to evaluate against the XML file specified by the filename entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.</div>|  
| value_of | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.</div>|  
| windows_view | [ind-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set. This entity only applies to 64-bit Microsoft Windows operating systems.</div>|  
  
## <a name="EntityItemEngineType"></a>== EntityItemEngineType ==

The EntityItemEngineType complex type defines a string entity value that is restricted to an enumeration. Each valid entry in the enumeration is a valid database engine.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
______________
  
## <a name="EntityItemFamilyType"></a>== EntityItemFamilyType ==

The EntityItemFamilyType complex type defines a string entity value that is restricted to a set of enumerations. Each valid enumeration is a high-level family of system operating system.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemHashTypeType"></a>== EntityItemHashTypeType ==

The EntityItemHashTypeType complex type restricts a string value to a specific set of values that specify the different hash algorithms that are supported. The empty string is also allowed to support empty elements associated with variable references.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| MD5 | <div>The MD5 hash algorithm.</div> |  
| SHA-1 | <div>The SHA-1 hash algorithm.</div> |  
| SHA-224 | <div>The SHA-224 hash algorithm.</div> |  
| SHA-256 | <div>The SHA-256 hash algorithm.</div> |  
| SHA-384 | <div>The SHA-384 hash algorithm.</div> |  
| SHA-512 | <div>The SHA-512 hash algorithm.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemVariableRefType"></a>== EntityItemVariableRefType ==

The EntityItemVariableRefType complex type defines a string item entity that has a valid OVAL variable id as the value.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

**Pattern:** oval:[A-Za-z0-9_\-\.]+:var:[1-9][0-9]*

## <a name="EntityItemLdaptypeType"></a>== EntityItemLdaptypeType ==

The EntityItemLdaptypeType complex type restricts a string value to a specific set of values that specify the different types of information that an ldap attribute can represent. The empty string value is permitted here to allow for detailed error reporting.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
| ~~LDAPTYPE_TIMESTAMP~~ | ~~<div>The data is of a time stamp in seconds.</div>~~> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** This value was accidently carried over from the win-sc:EntityItemAdstypeType as it was used as a template for the ind-sc:EntityItemLdaptypeType.<br />**Comment:** This value has been deprecated and will be removed in version 6.0 of the language.<br /> |  
| ~~LDAPTYPE_EMAIL~~ | ~~<div>The data is of an e-mail message.</div>~~> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** This value was accidently carried over from the win-sc:EntityItemAdstypeType as it was used as a template for the ind-sc:EntityItemLdaptypeType.<br />**Comment:** This value has been deprecated and will be removed in version 6.0 of the language.<br /> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemWindowsViewType"></a>== EntityItemWindowsViewType ==

The EntityItemWindowsViewType restricts a string value to a specific set of values: 32-bit and 64-bit. These values describe the different values possible for the windows view behavior.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| 32_bit | <div>Indicates the 32_bit windows view.</div> |  
| 64_bit | <div>Indicates the 64_bit windows view.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
