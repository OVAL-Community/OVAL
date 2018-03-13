# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: MacOS Definition  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the MacOS specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The MacOS Definition Schema was initially developed by The Center for Internet Security. Many thanks to their contributions to OVAL and the security community.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ accountinfo_test ](#accountinfo_test)  
 *[ authorizationdb_test ](#authorizationdb_test)  
 *[ corestorage_test ](#corestorage_test)  
 *[ diskutil_test ](#diskutil_test)  
 *[ gatekeeper_test ](#gatekeeper_test)  
 *[ ~~inetlisteningservers_test~~ ](#inetlisteningservers_test)  
 *[ inetlisteningserver510_test ](#inetlisteningserver510_test)  
 *[ keychain_test ](#keychain_test)  
 *[ launchd_test ](#launchd_test)  
 *[ nvram_test ](#nvram_test)  
 *[ ~~plist_test~~ ](#plist_test)  
 *[ ~~plist510_test~~ ](#plist510_test)  
 *[ plist511_test ](#plist511_test)  
 *[ ~~pwpolicy_test~~ ](#pwpolicy_test)  
 *[ pwpolicy59_test ](#pwpolicy59_test)  
 *[ rlimit_test ](#rlimit_test)  
 *[ softwareupdate_test ](#softwareupdate_test)  
 *[ systemprofiler_test ](#systemprofiler_test)  
 *[ systemsetup_test ](#systemsetup_test)  
  
______________
  
## <a name="accountinfo_test"></a>< accountinfo_test >

User account information (username, uid, gid, etc.) See netinfo(5) for field information, niutil(1) for retrieving it. As of Mac OS 10.5, niutil(1) is no longer available, however, the same functionality can be obtained using dscl(1). Specifically, the command 'dscl . -list /Users' can be used to list all users and the command 'dscl . -read /Users/some_user passwd uid gid realname home shell' can be used to retrieve the attributes associated with an account.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="accountinfo_object"></a>< accountinfo_object >

The accountinfo_object element is used by an accountinfo_test to define the object(s) to be evaluated. This object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An accountinfo_object consists of a single username that identifies the account from which to gather information.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies the user of the account to gather information from.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="accountinfo_state"></a>< accountinfo_state >

The accountinfo_state element defines the different information that can be used to evaluate the specified accounts. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the user of the account to gather information from.</div>|  
| password | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Obfuscated (*****) or encrypted password for this user.</div>|  
| uid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. This element represents the owner of the file.</div>|  
| gid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Group ID of this account.</div>|  
| realname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>User's real name, aka gecos field of /etc/passwd.</div>|  
| home_dir | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The home directory for this user account.</div>|  
| login_shell | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The login shell for this user account.</div>|  
  
______________
  
## <a name="authorizationdb_test"></a>< authorizationdb_test >

The authorizationdb_test is used to check the properties of the plist-style XML output from the "security authorizationdb read >right-name<" command, for reading information about rights authorizations on MacOSX. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an authorizationdb_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="authorizationdb_object"></a>< authorizationdb_object >

The authorizationdb_object element is used by an authorizationdb_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An authorizationdb_object consists of a right_name entity that contains the name of the right to be read from the authorization dabatase. The resulting plist data can be queried using the xpath entity.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| right_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies the right name to be queried (read) from the authorization database.</div>|  
| xpath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at. Any valid Xpath 1.0 statement is usable with one exception, at most one field may be identified in the Xpath. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="authorizationdb_state"></a>< authorizationdb_state >

The authorizationdb_state element defines a value used to evaluate the result of a specific authorizationdb_object item.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| right_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the right_name used to create the object.</div>|  
| xpath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.</div>|  
| value_of | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found.</div>|  
  
______________
  
## <a name="corestorage_test"></a>< corestorage_test >

The corestorage_test is used to check the properties of the plist-style XML output from the "diskutil cs list -plist" command, for reading information about the CoreStorage setup on MacOSX. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an corestorage_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="corestorage_object"></a>< corestorage_object >

The corestorage_object element is used by an corestorage_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An corestorage_object consists of a uuid entity that contains the UUID of the volume whose information should be read (i.e., 'diskutil cs info -plist [UUID]'). The resulting plist data can be queried using the xpath entity.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| uuid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies the UUID of the volume about which the plist information should be retrieved.</div>|  
| xpath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at. Any valid Xpath 1.0 statement is usable with one exception, at most one field may be identified in the Xpath. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="corestorage_state"></a>< corestorage_state >

The corestorage_state element defines a value used to evaluate the result of a specific corestorage_object item.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| uuid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the UUID of the volume about which the plist information was retrieved.</div>|  
| xpath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.</div>|  
| value_of | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found.</div>|  
  
______________
  
## <a name="diskutil_test"></a>< diskutil_test >

The diskutil_test is used to verify packages on a Mac OS system. The information used by this test is modeled after the diskutil command's verifyPermissions option. On MacOS X 10.11 and later, this option was replaced by the repair_packages command. For more information, see diskutil(8) or repair_packages(8). It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a diskutil_object and the optional diskutil_state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="diskutil_object"></a>< diskutil_object >

The diskutil_object element is used by a diskutil_test to define the volumes containing packages to be verified on a Mac OS system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| device | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The device entity is a string that represents the name of a volume containing system packages that is mounted on a Mac OS system to verify. Please see diskutil(8) or repair_packages(8) for instructions on how to specify the volume.</div>|  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="diskutil_state"></a>< diskutil_state >

The diskutil_state element defines the different verification information associated with a disk on a Mac OS system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| device | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The device entity is a string that represents the volume on a Mac OS system to verify. Please see diskutil(8) or repair_packages(8) for instructions on how to specify the device.</div>|  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file or directory on the specified device.</div>|  
| uread | [macos-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual user read permission changed from the expected user read permission?</div>|  
| uwrite | [macos-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual user write permission changed from the expected user write permission?</div>|  
| uexec | [macos-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual user exec permission changed from the expected user exec permission?</div>|  
| gread | [macos-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual group read permission changed from the expected group read permission?</div>|  
| gwrite | [macos-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual group write permission changed from the expected group write permission?</div>|  
| gexec | [macos-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual group exec permission changed from the expected group exec permission?</div>|  
| oread | [macos-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual others read permission changed from the expected others read permission?</div>|  
| owrite | [macos-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual others write permission changed from the expected others write permission?</div>|  
| oexec | [macos-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual others exec permission changed from the expected others exec permission?</div>|  
| user_differs | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Has the actual user changed from the expected user?</div>|  
| actual_user | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The actual user of the file/directory.</div>|  
| expected_user | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The expected user of the file/directory.</div>|  
| group_differs | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Has the actual group changed from the expected group?</div>|  
| actual_group | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The actual group of the file/directory.</div>|  
| expected_group | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The expected group of the file/directory.</div>|  
| symlink_differs | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Has the actual symlink changed from the expected symlink?</div>|  
| actual_symlink | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The actual symlink of the file/directory.</div>|  
| expected_symlink | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The expected symlink of the file/directory.</div>|  
  
______________
  
## <a name="gatekeeper_test"></a>< gatekeeper_test >

The gatekeeper_test is used to check the status of Gatekeeper and any unsigned applications that have been granted execute permission.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="gatekeeper_object"></a>< gatekeeper_object >

The gatekeeper_object is a singleton used to access information about Gatekeeper.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="gatekeeper_state"></a>< gatekeeper_state >

The gatekeeper_state element makes it possible to make assertions about Gatekeeper's operational status and unsigned applications that have been granted execute permission.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The status of Gatekeeper assessments.</div>|  
| unlabeled | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path to an unsigned application folder to which Gatekeeper has granted execute permission.</div>|  
  
______________
  
## <a name="inetlisteningservers_test"></a><  ~~inetlisteningservers_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** The inetlisteningservers_test has been deprecated and replaced by the inetlisteningserver510_test. The name of an application cannot be used to uniquely identify an application that is listening on the network. As a result, the inetlisteningserver510_object utilizes the protocol, local_address, and local_port entities to uniquely identify an application listening on the network. Please see the inetlisteningserver510_test for additional information.<br />

This test's purpose is generally used to check if an application is listening on the network, either for a new connection or as part of an ongoing connection. This is limited to applications that are listening for connections that use the TCP or UDP protocols and have addresses represented as IPv4 or IPv6 addresses (AF_INET or AF_INET6). It is generally speaking the parsed output of running the command netstat -tuwlnpe with root privilege.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="inetlisteningservers_object"></a><  ~~inetlisteningservers_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** The inetlisteningservers_object has been deprecated and replaced by the inetlisteningserver510_object. The name of an application cannot be used to uniquely identify an application that is listening on the network. As a result, the inetlisteningserver510_object utilizes the protocol, local_address, and local_port entities to uniquely identify an application listening on the network. Please see the inetlisteningserver510_object for additional information.<br />

The inetlisteningservers_object element is used by an inetlisteningserver test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| program_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div></div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="inetlisteningservers_state"></a><  ~~inetlisteningservers_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** The inetlisteningservers_state has been deprecated and replaced by the inetlisteningserver510_state. The name of an application cannot be used to uniquely identify an application that is listening on the network. As a result, the inetlisteningserver510_object utilizes the protocol, local_address, and local_port entities to uniquely identify an application listening on the network. Please see the inetlisteningserver510_state for additional information.<br />

The inetlisteningservers_state element defines the different information that can be used to evaluate the specified inet listening server. This includes the local address, foreign address, port information, and process id. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| program_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the name of the communicating program.</div>|  
| local_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>This is the IP address of the network interface on which the program listens. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_full_address | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This is the TCP or UDP port on which the program listens. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will have its own entry in the table data stored by this test.</div>|  
| foreign_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_full_address | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_port | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This is the process ID of the process. The process in question is that of the program communicating on the network.</div>|  
| protocol | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the transport-layer protocol, in lowercase: tcp or udp.</div>|  
| user_id | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.</div>|  
  
______________
  
## <a name="inetlisteningserver510_test"></a>< inetlisteningserver510_test >

The inetlisteningserver510_test is used to check if an application is listening on the network, either for a new connection or as part of an ongoing connection. This is limited to applications that are listening for connections that use the TCP or UDP protocols and have addresses represented as IPv4 or IPv6 addresses (AF_INET or AF_INET6). One method for retrieving the required information is by parsing the output of the command 'lsof -i -P -n -l' with root privileges.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="inetlisteningserver510_object"></a>< inetlisteningserver510_object >

The inetlisteningserver510_object element is used by an inetlisteningserver510_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The protocol entity defines a certain transport-layer protocol, in lowercase: tcp or udp.</div>|  
| local_address | [oval-def:EntityObjectIPAddressStringType](oval-definitions-schema.md#EntityObjectIPAddressStringType)  (1..1) |  
||<div>This is the IP address of the network interface on which an application listens. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>This is the TCP or UDP port on which an application would listen. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will be represented by its own object.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="inetlisteningserver510_state"></a>< inetlisteningserver510_state >

The inetlisteningserver510_state element defines the different information that can be used to evaluate the specified inet listening server. This includes the local address, foreign address, port information, and process id. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the transport-layer protocol, in lowercase: tcp or udp.</div>|  
| local_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>This is the IP address of the network interface on which the program listens. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This is the TCP or UDP port on which the program listens. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will have its own entry in the table data stored by this test.</div>|  
| local_full_address | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| program_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the name of the communicating program.</div>|  
| foreign_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_port | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.</div>|  
| foreign_full_address | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This is the process ID of the process. The process in question is that of the program communicating on the network.</div>|  
| user_id | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.</div>|  
  
______________
  
## <a name="keychain_test"></a>< keychain_test >

The keychain_test is used to check the properties of the plist-style XML output from the "security show-keychain-info >keychain<" command, for reading information about keychain settings on MacOSX. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an keychain_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="keychain_object"></a>< keychain_object >

The keychain_object element is used by an corestorage_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A keychain_object consists of a keychain (name) entity that contains the name of the keychain whose settings will be queried.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies the filepath of the keychain to be queried. The default keychain for a user is normally located at ~/Library/Keychains/login.keychain.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="keychain_state"></a>< keychain_state >

The keychain_state element defines a value used to evaluate the result of a specific keychain_object item.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the filepath of the keychain used to create the object.</div>|  
| lock_on_sleep | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the keychain is configured to lock when the computer sleeps.</div>|  
| timeout | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the inactivity timeout (in seconds) for the keychain, or 0 if there is no timeout.</div>|  
  
______________
  
## <a name="launchd_test"></a>< launchd_test >

The launchd_test is used to check the status of daemons/agents loaded via the launchd service. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a launchd_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="launchd_object"></a>< launchd_object >

The launchd_object element is used by a launchd_test to define the daemon/agent to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A launchd_object consists of a label (name) entity that contains the name of the agent/daemon whose attributes will be queried.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| label | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies the deamon to be queried.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="launchd_state"></a>< launchd_state >

The launchd_state element defines a value used to evaluate the result of a specific launchd_object item.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| label | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the name of the agent/daemon used to create the object.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the process ID of the daemon (if any).</div>|  
| status | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the last exit code of the daemon (if any), or if $lt; 0, indicates the negative of the signal that interrupted processing. For example, a value of -15 would indicate that the job was terminated via a SIGTERM.</div>|  
  
______________
  
## <a name="nvram_test"></a>< nvram_test >

This test pulls data from the 'nvram -p' output.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="nvram_object"></a>< nvram_object >

The nvram_object element is used by a nvram test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| nvram_var | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div></div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="nvram_state"></a>< nvram_state >

This test pulls data from the 'nvram -p' output.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| nvram_var | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This specifies the nvram variable to check.</div>|  
| nvram_value | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the value of the associated nvram variable.</div>|  
  
______________
  
## <a name="plist_test"></a><  ~~plist_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the plist510_test. This test references the plist_object which does not contain an instance entity. As a result, it is not possible to differentiate between two preference keys that have the same name using the plist_object. The plist510_test was added to address this deficiency. See the plist510_test.<br />**Comment:** This test has been deprecated and may be removed in a future version of the language.<br />

The plist_test is used to check the value(s) associated with property list preference keys. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a plist_object and the optional plist_state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="plist_object"></a><  ~~plist_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the plist510_object. This object does not contain an instance entity. As a result, it is not possible to differentiate between two preference keys that have the same name using this object. The plist510_object was added to address this deficiency. See the plist510_object.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The plist_object element is used by a plist_test to define the preference keys to collect and where to look for them. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The preference key to check. If the xsi:nil attribute is set to 'true', the plist does not have any keys associated with it (i.e. it is not a CFDictionary) and the default value of the plist will be collected.</div>|  
| app_id | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).</div>|  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist). A directory cannot be specified as a filepath.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="plist_state"></a><  ~~plist_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the plist510_state. This state is used in conjunction with the plist_object which does not contain an instance entity. As a result, it is not possible to differentiate between two preference keys that have the same name using the plist_object. The plist510_state was added to address this deficiency. See the plist510_state.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The plist_state element defines the different information that can be used to evaluate the specified property list preference key. This includes the preference key, application identifier, filepath, type, as well as the preference key's value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The preference key to check.</div>|  
| app_id | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).</div>|  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist).</div>|  
| instance | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The instance of the preference key found in the plist. The first instance of a matching preference key is given the instance value of 1, the second instance of a matching preference key is given the instance value of 2, and so on. Note that the main purpose of this entity is to provide uniqueness for the different plist_items that result from multiple instances of a given preference key in the same plist file.</div>|  
| type | [macos-def:EntityStatePlistTypeType](#EntityStatePlistTypeType)  (0..1) |  
||<div>The type of the preference key.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value of the preference key.</div>|  
  
______________
  
## <a name="plist510_test"></a><  ~~plist510_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** Replaced by the plist511_test. This test references the plist_object which cannot express the context hierarchy required to differentiate between nodes with identical names. As a result, it is not possible to address a particular node when the order of their parent nodes is indeterminate. The plist511_test was added to address this deficiency. See the plist511_test.<br />**Comment:** This test has been deprecated and may be removed in a future version of the language.<br />

The plist510_test is used to check the value(s) associated with property list preference keys. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a plist510_object and the optional plist510_state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="plist510_object"></a><  ~~plist510_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** Replaced by the plist511_object. This object cannot express the context hierarchy required to differentiate between nodes with identical names. As a result, it is not possible to address a particular node when the order of their parent nodes is indeterminate. The plist511_object was added to address this deficiency. See the plist511_object.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The plist510_object element is used by a plist510_test to define the preference keys to collect and where to look for them. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The preference key to check. If the xsi:nil attribute is set to 'true', the plist does not have any keys associated with it (i.e. it is not a CFDictionary) and the default value of the plist will be collected.</div>|  
| app_id | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).</div>|  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist). A directory cannot be specified as a filepath.</div>|  
| instance | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The instance of the preference key found in the plist. The first instance of a matching preference key is given the instance value of 1, the second instance of a matching preference key is given the instance value of 2, and so on. Instance values must be assigned using a depth-first approach. Note that the main purpose of this entity is to provide uniqueness for the different plist_items that result from multiple instances of a given preference key in the same plist file.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="plist510_state"></a><  ~~plist510_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** Replaced by the plist511_state. This state is used in conjunction with the plist510_object which cannot express the context hierarchy required to differentiate between nodes with identical names. As a result, it is not possible to address a particular node when the order of their parent nodes is indeterminate. The plist511_state was added to address this deficiency. See the plist511_state.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The plist510_state element defines the different information that can be used to evaluate the specified property list preference key. This includes the preference key, application identifier, filepath, type, as well as the preference key's value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The preference key to check.</div>|  
| app_id | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).</div>|  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist).</div>|  
| instance | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The instance of the preference key found in the plist. The first instance of a matching preference key is given the instance value of 1, the second instance of a matching preference key is given the instance value of 2, and so on. Instance values must be assigned using a depth-first approach. Note that the main purpose of this entity is to provide uniqueness for the different plist_items that result from multiple instances of a given preference key in the same plist file.</div>|  
| type | [macos-def:EntityStatePlistTypeType](#EntityStatePlistTypeType)  (0..1) |  
||<div>The type of the preference key.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value of the preference key.</div>|  
  
______________
  
## <a name="plist511_test"></a>< plist511_test >

The plist511_test is used to check the value(s) associated with property list preference keys. It can be used to represent any plist file in XML form (whether its native format is ASCII text, binary, or XML), permitting the use of the XPATH query language to explore its contents. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a plist511_object and the optional plist511_state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="plist511_object"></a>< plist511_object >

The plist511_object element is used by a plist511_test to define the preference keys to collect and where to look for them. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| app_id | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).</div>|  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The absolute path to a plist file (e.g. /Library/Preferences/com.apple.TimeMachine.plist). A directory cannot be specified as a filepath.</div>|  
| xpath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies an XPath 1.0 expression to evaluate against the XML representation of the plist file specified by the filename or app_id entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of item entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="plist511_state"></a>< plist511_state >

The plist511_state element defines the different information that can be used to evaluate the specified property list preference key. This includes the preference key, application identifier, filepath, type, as well as the preference key's value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| app_id | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).</div>|  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist).</div>|  
| xpath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies an XPath expression describing the text node(s) or attribute(s) to look at.</div>|  
| value_of | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value of the preference key.</div>|  
  
______________
  
## <a name="pwpolicy_test"></a><  ~~pwpolicy_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.9** :small_red_triangle: <br />**Reason:** Replaced by the pwpolicy59_test. The username, userpass, and directory_node entities in the pwpolicy_object, pwpolicy_state, and pwpolicy_item were underspecified and as a result their meaning was uncertain. A new test was created to resolve this issue. See the pwpolicy59_test.<br />**Comment:** This test has been deprecated and may be removed in a future version of the language.<br />

This test pulls data from the 'pwpolicy -getpolicy' output. The actual values get stored under /var/db/netinfo/local.nidb/ in a Store.# file. Is this test actually needed, or can the text file content test be used instead?

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="pwpolicy_object"></a><  ~~pwpolicy_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.9** :small_red_triangle: <br />**Reason:** Replaced by the pwpolicy59_object. The username, userpass, and directory_node entities in the pwpolicy_object were underspecified and as a result their meaning was uncertain. A new object was created to resolve this issue. See the pwpolicy59_object.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The pwpolicy_object element is used by a pwpolicy_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div></div>|  
| userpass | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div></div>|  
| directory_node | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div></div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="pwpolicy_state"></a><  ~~pwpolicy_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.9** :small_red_triangle: <br />**Reason:** Replaced by the pwpolicy59_state. The username, userpass, and directory_node entities in the pwpolicy_state were underspecified and as a result their meaning was uncertain. A new state was created to resolve this issue. See the pwpolicy59_state.<br />**Comment:** This state has been deprecated and may be removed in a future version of the language.<br />



**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| userpass | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| directory_node | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| maxChars | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Maximum number of characters allowed in a password.</div>|  
| maxFailedLoginAttempts | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Maximum number of failed logins before the account is locked.</div>|  
| minChars | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum number of characters allowed in a password.</div>|  
| passwordCannotBeName | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Defines if the password is allowed to be the same as the username or not.</div>|  
| requiresAlpha | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Defines if the password must contain an alphabetical character or not.</div>|  
| requiresNumeric | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Defines if the password must contain an numeric character or not.</div>|  
  
______________
  
## <a name="pwpolicy59_test"></a>< pwpolicy59_test >

This test retrieves password policy data from the 'pwpolicy -getpolicy -u target_user [-a username] [-p userpass] [-n directory_node]' output where username, userpass, and directory_node are optional. Please see the 'pwpolicy' man page for additional information.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="pwpolicy59_object"></a>< pwpolicy59_object >

The pwpolicy59_object element is used by a pwpolicy59_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| target_user | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The target_user element specifies the user whose password policy information should be collected. If an operation other than equals is specified, the users on the system should be enumerated and the 'pwpolicy' command should be issued for each user that matches the target_user element. If the xsi:nil attribute is set to true, the global policy should be retrieved.</div>|  
| username | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The username element specifies the username of the authenticator. If the xsi:nil attribute is set to true, authentication to the directory node will not be performed (i.e. the '-a' and '-p' command line options will not be specified when issuing the 'pwpolicy' command) and the xsi:nil attribute of the userpass element should also be set to true.</div>|  
| userpass | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The userpass element specifies the password of the authenticator as specified by the username element. If the xsi:nil attribute is set to true, authentication to the directory node will not be performed (i.e. the '-a' and '-p' command line options will not be specified when issuing the 'pwpolicy' command) and the xsi:nil attribute of the username element should also be set to true.</div>|  
| directory_node | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The directory_node element specifies the directory node that you would like to retrieve the password policy information from. If the xsi:nil attribute is set to true, the default directory node is used (i.e. the '-n' command line option will not be specified when issuing the 'pwpolicy' command).</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="pwpolicy59_state"></a>< pwpolicy59_state >

The pwpolicy59_state element defines the different information that can be used to evaluate the password policy for the target user in the specified directory node. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| target_user | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The target_user element specifies the user whose password policy information should be collected.</div>|  
| username | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The username element specifies the username of the authenticator.</div>|  
| userpass | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The userpass element specifies the password of the authenticator as specified by the username element.</div>|  
| directory_node | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The directory_node element specifies the directory node that you would like to retrieve the password policy information from.</div>|  
| maxChars | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Maximum number of characters allowed in a password.</div>|  
| maxFailedLoginAttempts | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Maximum number of failed logins before the account is locked.</div>|  
| minChars | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum number of characters allowed in a password.</div>|  
| passwordCannotBeName | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Defines if the password is allowed to be the same as the username or not.</div>|  
| requiresAlpha | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Defines if the password must contain an alphabetical character or not.</div>|  
| requiresNumeric | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Defines if the password must contain an numeric character or not.</div>|  
| maxMinutesUntilChangePassword | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Maximum number of minutes until the password must be changed.</div>|  
| minMinutesUntilChangePassword | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum number of minutes between password changes.</div>|  
| requiresMixedCase | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Defines if the password must contain upper and lower case characters or not.</div>|  
| requiresSymbol | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Defines if the password must contain a symbol character or not.</div>|  
| minutesUntilFailedLoginReset | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Number of minutes after login has been disabled due to too many failed login attempts to wait before reenabling login.</div>|  
| usingHistory | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>0 = user can reuse the current pass-word, 1 = user cannot reuse the current password, 2-15 = user cannot reuse the last n passwords.</div>|  
| canModifyPasswordforSelf | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If true, the user can change the password.</div>|  
| usingExpirationDate | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If true, user is required to change password on the date in expirationDateGMT</div>|  
| usingHardExpirationDate | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If true, user's account is disabled on the date in hardExpireDateGMT</div>|  
| expirationDateGMT | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Date for the password to expire, format is: mm/dd/yyyy. NOTE: The pwpolicy command returns the year as a two digit value, but OVAL uses four digit years; the pwpolicy value is converted to an OVAL compatible value.</div>|  
| hardExpireDateGMT | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Date for the user's account to be disabled, format is: mm/dd/yyyy. NOTE: The pwpolicy command returns the year as a two digit value, but OVAL uses four digit years; the pwpolicy value is converted to an OVAL compatible value.</div>|  
| maxMinutesUntilDisabled | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>User's account is disabled after this interval</div>|  
| maxMinutesOfNonUse | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>User's account is disabled if it is not accessed by this interval</div>|  
| newPasswordRequired | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If true, the user will be prompted for a new password at the next authentication.</div>|  
| notGuessablePattern | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="rlimit_test"></a>< rlimit_test >

The rlimit_test is used to check system resource limits for launchd. It is a singleton object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The state element specifies the system setup elements to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="rlimit_object"></a>< rlimit_object >

The rlimit_object is a singleton used to access resource limit information.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="rlimit_state"></a>< rlimit_state >

The rlimit_state element makes it possible to make assertions about the resource limits for launchd.

A resource limit is specified as a soft (current) limit and a hard (max) limit. When a soft limit is exceeded a process may receive a signal (for example, if the cpu time or file size is exceeded), but it will be allowed to con-tinue continue tinue execution until it reaches the hard limit (or modifies its resource limit).

For any 'unlimited' resource, the entity will have the status of 'does not exist'.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| cpu_current | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The maximum amount of cpu time (in seconds) to be used by each process.</div>|  
| cpu_max | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>cpu hard limit.</div>|  
| filesize_current | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The largest size (in bytes) file that may be created.</div>|  
| filesize_max | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>filesize hard limit.</div>|  
| data_current | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The maximum size (in bytes) of the data segment for a process; this defines how far a program may extend its break with the sbrk(2) system call.</div>|  
| data_max | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>data hard limit.</div>|  
| stack_current | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The maximum size (in bytes) of the stack segment for a process; this defines how far a program's stack segment may be extended. Stack extension is performed automatically by the system.</div>|  
| stack_max | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>stack hard limit.</div>|  
| core_current | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The largest size (in bytes) core file that may be created.</div>|  
| core_max | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>core hard limit.</div>|  
| rss_current | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The maximum size (in bytes) to which a process's resident set size may grow. This imposes a limit on the amount of physical memory to be given to a process; if memory is tight, the system will prefer to take memory from processes that are exceeding their declared resident set size.</div>|  
| rss_max | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>rss hard limit.</div>|  
| memlock_current | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The maximum size (in bytes) which a process may lock into memory using the mlock(2) function.</div>|  
| memlock_max | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>memlock hard limit.</div>|  
| maxproc_current | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The maximum number of simultaneous processes for this user id.</div>|  
| maxproc_max | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>maxproc hard limit.</div>|  
| maxfiles_current | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The maximum number of open files for this process.</div>|  
| maxfiles_max | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>maxfiles hard limit.</div>|  
  
______________
  
## <a name="softwareupdate_test"></a>< softwareupdate_test >

The softwareupdate_test is used to check the status of automatic software updates on MacOSX. It is a singleton object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The state element specifies the softwareupdate elements to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="softwareupdate_object"></a>< softwareupdate_object >

The softwareupdate_object is a singleton used to access automatic software update information.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="softwareupdate_state"></a>< softwareupdate_state >

The softwareupdate_state element makes it possible to make assertions about the state of automatic software updates.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| schedule | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether automatic checking is enabled (true).</div>|  
| software_title | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the title string for an available (not installed) software update.</div>|  
  
______________
  
## <a name="systemprofiler_test"></a>< systemprofiler_test >

The systemprofiler_test is used to check the properties of the plist-style XML output from the "system_profiler -xml <data type>" command, for reading information about system inventory data on MacOSX. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an systemprofiler_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="systemprofiler_object"></a>< systemprofiler_object >

The systemprofiler_object element is used by an systemprofiler_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An systemprofiler_object consists of a data_type entity that contains the name of the datatype that was probed by the system_profiler utility. The resulting plist data can be queried using the xpath entity.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| data_type | [macos-def:EntityObjectDataTypeType](#EntityObjectDataTypeType)  (1..1) |  
||<div>The data_type entity provides the datatype value that is desired.</div>|  
| xpath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at. Any valid Xpath 1.0 statement is usable with one exception, at most one field may be identified in the Xpath. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="systemprofiler_state"></a>< systemprofiler_state >

The systemprofiler_state element defines a value used to evaluate the result of a specific systemprofiler_object item.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| data_type | [macos-def:EntityStateDataTypeType](#EntityStateDataTypeType)  (0..1) |  
||<div>The data_type entity provides the datatype value that is desired.</div>|  
| xpath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.</div>|  
| value_of | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found.</div>|  
  
______________
  
## <a name="systemsetup_test"></a>< systemsetup_test >

The systemsetup_test is used to check systemsetup properties. It is a singleton object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The state element specifies the system setup elements to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="systemsetup_object"></a>< systemsetup_object >

The systemsetup_object is a singleton used to access system setup information.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="systemsetup_state"></a>< systemsetup_state >

The systemsetup_state element makes it possible to make assertions about system setup settings.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| timezone | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the name of the time zone.</div>|  
| usingnetworktime | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies weather the machine is using network time.</div>|  
| networktimeserver | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the network time server.</div>|  
| computersleep | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the computer sleep inactivity timer, or 0 for never.</div>|  
| displaysleep | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the display sleep inactivity timer, or 0 for never.</div>|  
| harddisksleep | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the hard disk sleep inactivity timer, or 0 for never.</div>|  
| wakeonmodem | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the computer will wake up if the modem is accessed.</div>|  
| wakeonnetworkaccess | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the computer will wake up if the network is accessed.</div>|  
| restartfreeze | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the computer will restart after freezing.</div>|  
| allowpowerbuttontosleepcomputer | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the power button can be used to cause the computer to sleep.</div>|  
| remotelogin | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether remote logins are allowed.</div>|  
| remoteappleevents | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether remote Apple events are enabled.</div>|  
| computername | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the computer's name.</div>|  
| startupdisk | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the startup disk.</div>|  
| waitforstartupafterpowerfailure | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the number of seconds the computer waits to start up after a power failure.</div>|  
| disablekeyboardwhenenclosurelockisengaged | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the keyboard is locked when the closure lock is engaged.</div>|  
| kernelbootarchitecturesetting | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the kernel boot architecture setting.</div>|  
  
## <a name="EntityObjectDataTypeType"></a>== EntityObjectDataTypeType ==

The EntityObjectDataTypeType complex type defines the different values that are valid for the data_type entity of a system_profiler object. These values describe the system_profiler XML data to be retrieved. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the index entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values. Please note that the values identified are for the data_type entity and are not valid values for the datatype attribute.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| SPHardwareDataType |  |  
| SPNetworkDataType |  |  
| SPSoftwareDataType |  |  
| SPParallelATADataType |  |  
| SPAudioDataType |  |  
| SPBluetoothDataType |  |  
| SPDiagnosticsDataType |  |  
| SPDiscBurningDataType |  |  
| SPEthernetDataType |  |  
| SPFibreChannelDataType |  |  
| SPFireWireDataType |  |  
| SPDisplaysDataType |  |  
| SPHardwareRAIDDataType |  |  
| SPMemoryDataType |  |  
| SPPCIDataType |  |  
| SPParallelSCSIDataType |  |  
| SPPowerDataType |  |  
| SPPrintersDataType |  |  
| SPSASDataType |  |  
| SPSerialATADataType |  |  
| SPUSBDataType |  |  
| SPAirPortDataType |  |  
| SPFirewallDataType |  |  
| SPNetworkLocationDataType |  |  
| SPModemDataType |  |  
| SPNetworkVolumeDataType |  |  
| SPWWANDataType |  |  
| SPApplicationsDataType |  |  
| SPDeveloperToolsDataType |  |  
| SPExtensionsDataType |  |  
| SPFontsDataType |  |  
| SPFrameworksDataType |  |  
| SPLogsDataType |  |  
| SPManagedClientDataType |  |  
| SPPrefPaneDataType |  |  
| SPStartupItemDataType |  |  
| SPSyncServicesDataType |  |  
| SPUniversalAccessDataType |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateDataTypeType"></a>== EntityStateDataTypeType ==

The EntityStateDataTypeType complex type defines the different values that are valid for the data_type entity of a system_profiler state. These values describe the system_profiler XML data to be retrieved. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the index entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values. Please note that the values identified are for the data_type entity and are not valid values for the datatype attribute.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| SPHardwareDataType |  |  
| SPNetworkDataType |  |  
| SPSoftwareDataType |  |  
| SPParallelATADataType |  |  
| SPAudioDataType |  |  
| SPBluetoothDataType |  |  
| SPDiagnosticsDataType |  |  
| SPDiscBurningDataType |  |  
| SPEthernetDataType |  |  
| SPFibreChannelDataType |  |  
| SPFireWireDataType |  |  
| SPDisplaysDataType |  |  
| SPHardwareRAIDDataType |  |  
| SPMemoryDataType |  |  
| SPPCIDataType |  |  
| SPParallelSCSIDataType |  |  
| SPPowerDataType |  |  
| SPPrintersDataType |  |  
| SPSASDataType |  |  
| SPSerialATADataType |  |  
| SPUSBDataType |  |  
| SPAirPortDataType |  |  
| SPFirewallDataType |  |  
| SPNetworkLocationDataType |  |  
| SPModemDataType |  |  
| SPNetworkVolumeDataType |  |  
| SPWWANDataType |  |  
| SPApplicationsDataType |  |  
| SPDeveloperToolsDataType |  |  
| SPExtensionsDataType |  |  
| SPFontsDataType |  |  
| SPFrameworksDataType |  |  
| SPLogsDataType |  |  
| SPManagedClientDataType |  |  
| SPPrefPaneDataType |  |  
| SPStartupItemDataType |  |  
| SPSyncServicesDataType |  |  
| SPUniversalAccessDataType |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStatePermissionCompareType"></a>== EntityStatePermissionCompareType ==

The EntityStatePermissionCompareType complex type restricts a string value to more, less, or same which specifies if an actual permission is different than the expected permission (more or less restrictive) or if the permission is the same. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| more | <div>The actual permission is more restrictive than the expected permission.</div> |  
| less | <div>The actual permission is less restrictive than the expected permission.</div> |  
| same | <div>The actual permission is the same as the expected permission.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStatePlistTypeType"></a>==  ~~EntityStatePlistTypeType~~  ==

> :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** Used only by the deprecated plist_state and plist510_state.<br />**Comment:** This enumeration has been deprecated and may be removed in a future version of the language.<br />

The EntityStatePlistTypeType complex type restricts a string value to the seven values CFString, CFNumber, CFBoolean, CFDate, CFData, CFArray, and CFDictionary that specify the datatype of the value associated with a property list preference key. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| CFString | <div>The CFString type is used to describe a preference key that has a string value. The OVAL string datatype should be used to represent CFString values.</div> |  
| CFNumber | <div>The CFNumber type is used to describe a preference key that has a integer or float value. The OVAL int and float datatypes should be used, as appropriate, to represent CFNumber values.</div> |  
| CFBoolean | <div>The CFBoolean type is used to describe a preference key that has a boolean value. The OVAL boolean datatype should be used to represent CFBoolean values.</div> |  
| CFDate | <div>The CFDate type is used to describe a preference key that has a date value. The OVAL string datatype should be used to represent CFDate values.</div> |  
| CFData | <div>The CFData type is used to describe a preference that has a base64-encoded binary value. The OVAL string datatype should be used to represent CFData values.</div> |  
| CFArray | <div>The CFArray type is used to describe a preference key that has a collection of values. This is represented as multiple value entities.</div> |  
| CFDictionary | <div>The CFDictionary type is used to describe a preference key that has a collection of key-value pairs. Note that the collection of CFDictionary values is not supported. If an attempt is made to collect a CFDictionary value, an error should be reported.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
