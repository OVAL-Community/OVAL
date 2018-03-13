# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: MacOS System Characteristics  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the MacOS specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The MacOS System Characteristics Schema was initially developed by The Center for Internet Security. Many thanks to their contributions to OVAL and the security community.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="accountinfo_item"></a>< accountinfo_item >

This item stores sser account information (username, uid, gid, etc.).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user associated with the information collected.</div>|  
| password | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Obfuscated (*****) or encrypted password for this user.</div>|  
| uid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. This element represents the owner of the file.</div>|  
| gid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Group ID of this account.</div>|  
| realname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>User's real name, aka gecos field of /etc/passwd.</div>|  
| home_dir | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The home directory for this user account.</div>|  
| login_shell | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The login shell for this user account.</div>|  
  
______________
  
## <a name="authorizationdb_item"></a>< authorizationdb_item >

This item stores results from checking the contents of an authorizationdb right.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| right_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the right_name in which the item is specified.</div>|  
| xpath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.</div>|  
| value_of | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.</div>|  
  
______________
  
## <a name="corestorage_item"></a>< corestorage_item >

This item stores results from checking the contents of the CoreStorage XML plist information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| uuid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the UUID of the volume about which the plist information was retrieved.</div>|  
| xpath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.</div>|  
| value_of | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.</div>|  
  
______________
  
## <a name="diskutil_item"></a>< diskutil_item >

The diskutil_item holds verification information about an individual disk on a Mac OS system. Each diskutil_item contains a device, filepath, and details on how the actual permissions, ownerships and link targets differ from the expected values. For more information, see diskutil(8) or repair_packages(8). It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| device | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The device entity is a string that represents the disk on a Mac OS system to verify. Please see diskutil(8) for instructions on how to specify the device.</div>|  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file or directory on the specified device.</div>|  
| uread | [macos-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual user read permission changed from the expected user read permission?</div>|  
| uwrite | [macos-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual user write permission changed from the expected user write permission?</div>|  
| uexec | [macos-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual user exec permission changed from the expected user exec permission?</div>|  
| gread | [macos-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual group read permission changed from the expected group read permission?</div>|  
| gwrite | [macos-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual group write permission changed from the expected group write permission?</div>|  
| gexec | [macos-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual group exec permission changed from the expected group exec permission?</div>|  
| oread | [macos-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual others read permission changed from the expected others read permission?</div>|  
| owrite | [macos-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual others write permission changed from the expected others write permission?</div>|  
| oexec | [macos-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual others exec permission changed from the expected others exec permission?</div>|  
| user_differs | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Has the actual user changed from the expected user?</div>|  
| actual_user | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The actual user of the file/directory.</div>|  
| expected_user | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The expected user of the file/directory.</div>|  
| group_differs | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Has the actual group changed from the expected group?</div>|  
| actual_group | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The actual group of the file/directory.</div>|  
| expected_group | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The expected group of the file/directory.</div>|  
| symlink_differs | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Has the actual symlink changed from the expected symlink?</div>|  
| actual_symlink | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The actual symlink of the file/directory.</div>|  
| expected_symlink | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The expected symlink of the file/directory.</div>|  
  
______________
  
## <a name="gatekeeper_item"></a>< gatekeeper_item >

This item stores results from checking the settings of the Gatekeeper.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>The status of Gatekeeper assessments.</div>|  
| unlabeled | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>The path to an unsigned application folder to which Gatekeeper has granted execute permission.</div>|  
  
______________
  
## <a name="inetlisteningserver_item"></a><  ~~inetlisteningserver_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** The inetlisteningserver_item has been deprecated and replaced by the inetlisteningserver510_item. The name of an application cannot be used to uniquely identify an application that is listening on the network. As a result, the inetlisteningserver510_object utilizes the protocol, local_address, and local_port entities to uniquely identify an application listening on the network. Please see the inetlisteningserver510_item for additional information.<br />

An inet listening server item stores the results of checking for network servers currently active on a system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| program_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the communicating program.</div>|  
| local_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This is the IP address of the network interface on which the program listens. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_full_address | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the TCP or UDP port on which the program listens. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will have its own entry in the table data stored by this item.</div>|  
| foreign_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_full_address | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_port | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the process ID of the process. The process in question is that of the program communicating on the network.</div>|  
| protocol | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the transport-layer protocol, in lowercase: tcp or udp.</div>|  
| user_id | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.</div>|  
  
______________
  
## <a name="inetlisteningserver510_item"></a>< inetlisteningserver510_item >

An inet listening server item stores the results of checking for network servers currently active on a system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the transport-layer protocol, in lowercase: tcp or udp.</div>|  
| local_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This is the IP address of the network interface on which the program listens. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the TCP or UDP port on which the program listens. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will have its own entry in the table data stored by this item.</div>|  
| local_full_address | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| program_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the communicating program.</div>|  
| foreign_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_port | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.</div>|  
| foreign_full_address | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the process ID of the process. The process in question is that of the program communicating on the network.</div>|  
| user_id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.</div>|  
  
______________
  
## <a name="keychain_item"></a>< keychain_item >

This item stores results from checking the settings of a keychain.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the filepath of the keychain.</div>|  
| lock_on_sleep | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies the whether the keychain is configured to lock on sleep.</div>|  
| timeout | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The inactivity timeout (in seconds) for the keychain, or 0 if there is no timeout.</div>|  
  
______________
  
## <a name="launchd_item"></a>< launchd_item >

This item stores results from checking a launchd-controlled daemon/agent.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| label | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the name of the agent/daemon.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies the process ID of the daemon (if any).</div>|  
| status | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies the last exit code of the daemon (if any), or if $lt; 0, indicates the negative of the signal that interrupted processing. For example, a value of -15 would indicate that the job was terminated via a SIGTERM.</div>|  
  
______________
  
## <a name="nvram_item"></a>< nvram_item >

Output of 'nvram -p'

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| nvram_var | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A nvram variabl.</div>|  
| nvram_value | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the value of the associated nvram variable.</div>|  
  
______________
  
## <a name="plist_item"></a><  ~~plist_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** The plist_item has been deprecated and replaced by the plist511_item. The plist_item cannot express the context hierarchy required to differentiate between nodes with identical names. As a result, it is not possible to address a particular node when the order of their parent nodes is indeterminate. The plist511_item was added to address this deficiency. See the plist511_item.<br />

The plist_item holds information about an individual property list preference key found on a system. Each plist_item contains a preference key, application identifier or filepath, type, as well as the preference key's value. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The preference key to check.</div>|  
| app_id | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).</div>|  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist).</div>|  
| instance | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The instance of the preference key found in the plist. The first instance of a matching preference key is given the instance value of 1, the second instance of a matching preference key is given the instance value of 2, and so on. Instance values must be assigned using a depth-first approach. Note that the main purpose of this entity is to provide uniqueness for the different plist_items that result from multiple instances of a given preference key in the same plist file.</div>|  
| type | [macos-sc:EntityItemPlistTypeType](#EntityItemPlistTypeType)  (0..1) |  
||<div>The type of the preference key.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value of the preference key.</div>|  
  
______________
  
## <a name="plist511_item"></a>< plist511_item >

The plist511_item stores results from checking the contents of the XML representation of a plist file. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| app_id | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).</div>|  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The absolute path to a plist file (e.g. /Library/Preferences/com.apple.TimeMachine.plist).</div>|  
| xpath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies an XPath 1.0 expression to evaluate against the XML representation of the plist file specified by the filename or app_id entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.</div>|  
| value_of | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.</div>|  
  
______________
  
## <a name="pwpolicy_item"></a><  ~~pwpolicy_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.9** :small_red_triangle: <br />**Reason:** Replaced by the pwpolicy59_item. The username, userpass, and directory_node entities in the pwpolicy_item were underspecified and as a result their meaning was uncertain. A new item was created to resolve this issue. See the pwpolicy59_item.<br />**Comment:** This item has been deprecated and may be removed in a future version of the language.<br />

Output of 'pwpolicy -getpolicy'. Please see the 'pwpolicy' man page for additional information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| userpass | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| directory_node | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| maxChars | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Maximum number of characters allowed in a password.</div>|  
| maxFailedLoginAttempts | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Maximum number of failed logins before the account is locked.</div>|  
| minChars | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum number of characters allowed in a password.</div>|  
| passwordCannotBeName | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Defines if the password is allowed to be the same as the username or not.</div>|  
| requiresAlpha | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Defines if the password must contain an alphabetical character or not.</div>|  
| requiresNumeric | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Defines if the password must contain an numeric character or not.</div>|  
  
______________
  
## <a name="pwpolicy59_item"></a>< pwpolicy59_item >

The pwpolicy59_item holds the password policy information for a particular user specified by the target_user element. Please see the 'pwpolicy' man page for additional information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| target_user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The target_user element specifies the user whose password policy information was collected. If xsi:nil="true", the item specifies the global policy.</div>|  
| username | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The username element specifies the username of the authenticator.</div>|  
| userpass | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The userpass element specifies the password of the authenticator as specified by the username element.</div>|  
| directory_node | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The directory_node element specifies the directory node that the password policy information was collected from.</div>|  
| maxChars | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Maximum number of characters allowed in a password.</div>|  
| maxFailedLoginAttempts | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Maximum number of failed logins before the account is locked.</div>|  
| minChars | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum number of characters allowed in a password.</div>|  
| passwordCannotBeName | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Defines if the password is allowed to be the same as the username or not.</div>|  
| requiresAlpha | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Defines if the password must contain an alphabetical character or not.</div>|  
| requiresNumeric | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Defines if the password must contain an numeric character or not.</div>|  
| maxMinutesUntilChangePassword | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Maximum number of minutes until the password must be changed.</div>|  
| minMinutesUntilChangePassword | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum number of minutes between password changes.</div>|  
| requiresMixedCase | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Defines if the password must contain upper and lower case characters or not.</div>|  
| requiresSymbol | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Defines if the password must contain a symbol character or not.</div>|  
| minutesUntilFailedLoginReset | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Number of minutes after login has been disabled due to too many failed login attempts to wait before reenabling login.</div>|  
| usingHistory | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>0 = user can reuse the current pass-word, 1 = user cannot reuse the current password, 2-15 = user cannot reuse the last n passwords.</div>|  
| canModifyPasswordforSelf | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If true, the user can change the password.</div>|  
| usingExpirationDate | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If true, user is required to change password on the date in expirationDateGMT</div>|  
| usingHardExpirationDate | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If true, user's account is disabled on the date in hardExpireDateGMT</div>|  
| expirationDateGMT | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Date for the password to expire, format is: mm/dd/yyyy. NOTE: The pwpolicy command returns the year as a two digit value, but OVAL uses four digit years; the pwpolicy value is converted to an OVAL compatible value.</div>|  
| hardExpireDateGMT | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Date for the user's account to be disabled, format is: mm/dd/yyyy. NOTE: The pwpolicy command returns the year as a two digit value, but OVAL uses four digit years; the pwpolicy value is converted to an OVAL compatible value.</div>|  
| maxMinutesUntilDisabled | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>User's account is disabled after this interval</div>|  
| maxMinutesOfNonUse | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>User's account is disabled if it is not accessed by this interval</div>|  
| newPasswordRequired | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If true, the user will be prompted for a new password at the next authentication.</div>|  
| notGuessablePattern | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="rlimit_item"></a>< rlimit_item >

The rlimit_item contains information about the resource limits for launchd.

A resource limit is specified as a soft (current) limit and a hard (max) limit. When a soft limit is exceeded a process may receive a signal (for example, if the cpu time or file size is exceeded), but it will be allowed to con-tinue continue tinue execution until it reaches the hard limit (or modifies its resource limit).

For any 'unlimited' resource, the entity will have the status of 'does not exist'.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| cpu_current | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>The maximum amount of cpu time (in seconds) to be used by each process.</div>|  
| cpu_max | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>cpu hard limit.</div>|  
| filesize_current | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>The largest size (in bytes) file that may be created.</div>|  
| filesize_max | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>filesize hard limit.</div>|  
| data_current | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>The maximum size (in bytes) of the data segment for a process; this defines how far a program may extend its break with the sbrk(2) system call.</div>|  
| data_max | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>data hard limit.</div>|  
| stack_current | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>The maximum size (in bytes) of the stack segment for a process; this defines how far a program's stack segment may be extended. Stack extension is performed automatically by the system.</div>|  
| stack_max | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>stack hard limit.</div>|  
| core_current | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>The largest size (in bytes) core file that may be created.</div>|  
| core_max | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>core hard limit.</div>|  
| rss_current | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>The maximum size (in bytes) to which a process's resident set size may grow. This imposes a limit on the amount of physical memory to be given to a process; if memory is tight, the system will prefer to take memory from processes that are exceeding their declared resident set size.</div>|  
| rss_max | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>rss hard limit.</div>|  
| memlock_current | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>The maximum size (in bytes) which a process may lock into memory using the mlock(2) function.</div>|  
| memlock_max | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>memlock hard limit.</div>|  
| maxproc_current | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>The maximum number of simultaneous processes for this user id.</div>|  
| maxproc_max | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>maxproc hard limit.</div>|  
| maxfiles_current | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>The maximum number of open files for this process.</div>|  
| maxfiles_max | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>maxfiles hard limit.</div>|  
  
______________
  
## <a name="softwareupdate_item"></a>< softwareupdate_item >

This item represents automatic software update information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| schedule | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>Specifies whether automatic checking is enabled (true).</div>|  
| software_title | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Specifies the title string for an available (not installed) software update.</div>|  
  
______________
  
## <a name="systemprofiler_item"></a>< systemprofiler_item >

This item stores results from performing an XPATH query on the XML result of a systemprofiler data type query.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| data_type | [macos-sc:EntityItemDataTypeType](#EntityItemDataTypeType)  (0..1) |  
||<div>Specifies the data type that was used in collection.</div>|  
| xpath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.</div>|  
| value_of | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.</div>|  
  
______________
  
## <a name="systemsetup_item"></a>< systemsetup_item >

This item represents system setup information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| timezone | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the name of the current time zone.</div>|  
| usingnetworktime | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>Specifies wither the machine is using network time.</div>|  
| networktimeserver | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the network time server.</div>|  
| computersleep | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>Specifies the computer sleep inactivity timer, or 0 for never.</div>|  
| displaysleep | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>Specifies the display sleep inactivity timer, or 0 for never.</div>|  
| harddisksleep | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>Specifies the hard disk sleep inactivity timer, or 0 for never.</div>|  
| wakeonmodem | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>Specifies whether the computer will wake up if the modem is accessed.</div>|  
| wakeonnetworkaccess | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>Specifies whether the computer will wake up if the network is accessed.</div>|  
| restartfreeze | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>Specifies whether the computer will restart after freezing.</div>|  
| restartpowerfailure | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>Specifies whether the computer will restart after a power failure.</div>|  
| allowpowerbuttontosleepcomputer | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>Specifies whether the power button can be used to cause the computer to sleep.</div>|  
| remotelogin | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>Specifies whether remote logins are allowed.</div>|  
| remoteappleevents | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether remote Apple events are enabled.</div>|  
| computername | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the computer's name.</div>|  
| localsubnetname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the name of the local subnet.</div>|  
| startupdisk | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the startup disks.</div>|  
| waitforstartupafterpowerfailure | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (1..1) |  
||<div>Specifies the number of seconds the computer waits to start up after a power failure.</div>|  
| disablekeyboardwhenenclosurelockisengaged | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (1..1) |  
||<div>Specifies whether the keyboard is locked when the closure lock is engaged.</div>|  
| kernelbootarchitecturesetting | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the kernel boot architecture setting.</div>|  
  
## <a name="EntityItemDataTypeType"></a>== EntityItemDataTypeType ==

The EntityItemDataTypeType complex type defines the different values that are valid for the data_type entity of a system_profiler item. These values describe the system_profiler XML data to be retrieved. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the index entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values. Please note that the values identified are for the data_type entity and are not valid values for the datatype attribute.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemPermissionCompareType"></a>== EntityItemPermissionCompareType ==

The EntityItemPermissionCompareType complex type restricts a string value to more, less, or same which specifies if an actual permission is different than the expected permission (more or less restrictive) or if the permission is the same. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| more | <div>The actual permission is more restrictive than the expected permission.</div> |  
| less | <div>The actual permission is less restrictive than the expected permission.</div> |  
| same | <div>The actual permission is the same as the expected permission.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemPlistTypeType"></a>==  ~~EntityItemPlistTypeType~~  ==

> :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** Used only by the deprecated plist_item.<br />**Comment:** This enumeration has been deprecated and may be removed in a future version of the language.<br />

The EntityItemPlistTypeType complex type restricts a string value to the seven values CFString, CFNumber, CFBoolean, CFDate, CFData, CFArray, and CFDictionary that specify the type of the value associated with a property list preference key. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| CFString | <div>The CFString type is used to describe a preference key that has a string value. The OVAL string datatype should be used to represent CFString values.</div> |  
| CFNumber | <div>The CFNumber type is used to describe a preference key that has a integer or float value. The OVAL int and float datatypes should be used, as appropriate, to represent CFNumber values.</div> |  
| CFBoolean | <div>The CFBoolean type is used to describe a preference key that has a boolean value. The OVAL boolean datatype should be used to represent CFBoolean values.</div> |  
| CFDate | <div>The CFDate type is used to describe a preference key that has a date value. The OVAL string datatype should be used to represent CFDate values.</div> |  
| CFData | <div>The CFData type is used to describe a preference key that has a base64-encoded binary value. The OVAL string datatype should be used to represent CFData values.</div> |  
| CFArray | <div>The CFArray type is used to describe a preference key that has a collection of values. This is represented as multiple value entities.</div> |  
| CFDictionary | <div>The CFDictionary type is used to describe a preference key that has a collection of key-value pairs. Note that the collection of CFDictionary values is not supported. If an attempt is made to collect a CFDictionary value, an error should be reported.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
