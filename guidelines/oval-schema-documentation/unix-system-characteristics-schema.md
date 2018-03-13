# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Unix System Characteristics  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the UNIX specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="dnscache_item"></a>< dnscache_item >

The dnscache_item stores information retrieved from the DNS cache about a domain name, its time to live, and its corresponding IP addresses.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| domain_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The domain_name element contains a string that represents a domain name that was collected from the DNS cache on the local system.</div>|  
| ttl | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The ttl element contains an integer that represents the time to live in seconds of the DNS cache entry.</div>|  
| ip_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..unbounded) |  
||<div>The ip_address element contains a string that represents an IP address associated with the specified domain name. Note that the IP address can be IPv4 or IPv6.</div>|  
  
______________
  
## <a name="file_item"></a>< file_item >

The file item holds information about the individual files found on a system. Each file item contains path and filename information as well as its type, associated user and group ids, relevant dates, and the privialeges granted. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity.</div>|  
| type | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the file's type: regular file (regular), directory, named pipe (fifo), symbolic link, socket or block special.</div>|  
| group_id | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the group owner of the file, by group number.</div>|  
| user_id | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. This element represents the owner of the file.</div>|  
| a_time | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the time that the file was last accessed, in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.</div>|  
| c_time | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the time of the last change to the file's inode, in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970. An inode is a Unix data structure that stores all of the information about a particular file.</div>|  
| m_time | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the time of the last change to the file's contents, in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.</div>|  
| size | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the size of the file in bytes.</div>|  
| suid | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Does the program run with the uid (thus privileges) of the file's owner, rather than the calling user?</div>|  
| sgid | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Does the program run with the gid (thus privileges) of the file's group owner, rather than the calling user's group?</div>|  
| sticky | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can users delete each other's files in this directory, when said directory is writable by those users?</div>|  
| uread | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can the owner (user owner) of the file read this file or, if a directory, read the directory contents?</div>|  
| uwrite | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can the owner (user owner) of the file write to this file or, if a directory, write to the directory?</div>|  
| uexec | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can the owner (user owner) of the file execute it or, if a directory, change into the directory?</div>|  
| gread | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can the group owner of the file read this file or, if a directory, read the directory contents?</div>|  
| gwrite | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can the group owner of the file write to this file, or if a directory, write to the directory?</div>|  
| gexec | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can the group owner of the file execute it or, if a directory, change into the directory?</div>|  
| oread | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can all other users read this file or, if a directory, read the directory contents?</div>|  
| owrite | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can the other users write to this file, or if a directory, write to the directory?</div>|  
| oexec | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Can the other users execute this file or, if a directory, change into the directory?</div>|  
| has_extended_acl | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Does the file or directory have ACL permissions applied to it? If a system supports ACLs and the file or directory doesn't have an ACL, or it matches the standard UNIX permissions, the entity will have a status of 'exists' and a value of 'false'. If the system supports ACLs and the file or directory has an ACL, the entity will have a status of 'exists' and a value of 'true'. Lastly, if a system doesn't support ACLs, the entity will have a status of 'does not exist'.</div>|  
  
______________
  
## <a name="fileextendedattribute_item"></a>< fileextendedattribute_item >

The file extended attribute item holds information about the individual file extended attributes found on a system. Each file extended attribute item contains path, filename, and attribute name information as well as the attribute's value. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity.</div>|  
| attribute_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the extended attribute's name, identifier or key.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>This is the extended attribute's value or contents.</div>|  
  
______________
  
## <a name="gconf_item"></a>< gconf_item >

The gconf_item holds information about an individual GConf preference key found on a system. Each gconf_item contains a preference key, source, type, whether it's writable, the user who last modified it, the time it was last modified, whether it's the default value, as well as the preference key's value. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The preference key to check.</div>|  
| source | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The source used to look up the preference key.</div>|  
| type | [unix-sc:EntityItemGconfTypeType](#EntityItemGconfTypeType)  (0..1) |  
||<div>The type of the preference key.</div>|  
| is_writable | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Is the preference key writable? If true, the preference key is writable. If false, the preference key is not writable.</div>|  
| mod_user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user who last modified the preference key.</div>|  
| mod_time | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The time the preference key was last modified in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.</div>|  
| is_default | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Is the preference key value the default value. If true, the preference key value is the default value. If false, the preference key value is not the default value.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value of the preference key.</div>|  
  
______________
  
## <a name="inetd_item"></a>< inetd_item >

The inetd item holds information associated with different Internet services. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A recognized protocol listed in the file /etc/inet/protocols.</div>|  
| service_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of a valid service listed in the services file. For RPC services, the value of the service-name field consists of the RPC service name or program number, followed by a '/' (slash) and either a version number or a range of version numbers (for example, rstatd/2-4).</div>|  
| server_program | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Either the pathname of a server program to be invoked by inetd to perform the requested service, or the value internal if inetd itself provides the service.</div>|  
| server_arguments | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The arguments for running the service. These are either passed to the server program invoked by inetd, or used to configure a service provided by inetd. In the case of server programs, the arguments shall begin with argv[0], which is typically the name of the program. In the case of a service provided by inted, the first argument shall be the word "internal".</div>|  
| endpoint_type | [unix-sc:EntityItemEndpointType](#EntityItemEndpointType)  (0..1) |  
||<div>The endpoint type (aka, socket type) associated with the service.</div>|  
| exec_as_user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user id of the user the server program should run under. (This allows for running with less permission than root.)</div>|  
| wait_status | [unix-sc:EntityItemWaitStatusType](#EntityItemWaitStatusType)  (0..1) |  
||<div>This field has values wait or nowait. This entry specifies whether the server that is invoked by inetd will take over the listening socket associated with the service, and whether once launched, inetd will wait for that server to exit, if ever, before it resumes listening for new service requests.</div>|  
  
______________
  
## <a name="interface_item"></a>< interface_item >

The interface item holds information about the interfaces on a system. Each interface item contains name and address information as well as any associated flags. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name entity is the actual name of the specific interface. Examples might be eth0, eth1, fwo, etc.</div>|  
| type | [unix-sc:EntityItemInterfaceType](#EntityItemInterfaceType)  (0..1) |  
||<div>This element specifies the type of interface.</div>|  
| hardware_addr | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The hardware_addr entity is the hardware or MAC address of the physical network card. MAC addresses should be formatted according to the IEEE 802-2001 standard which states that a MAC address is a sequence of six octet values, separated by hyphens, where each octet is represented by two hexadecimal digits. Uppercase letters should also be used to represent the hexadecimal digits A through F.</div>|  
| inet_addr | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>The inet_addr entity is the IP address of the specific interface. Note that the IP address can be IPv4 or IPv6. If the IP address is an IPv6 address, this entity should be expressed as an IPv6 address prefix using CIDR notation and the netmask entity should not be collected.</div>|  
| broadcast_addr | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>The broadcast_addr entity is the broadcast IP address for this interface's network. Note that the IP address can be IPv4 or IPv6.</div>|  
| netmask | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This is the bitmask used to calculate the interface's IP network. The network number is calculated by bitwise-ANDing this with the IP address. The host number on that network is calculated by bitwise-XORing this with the IP address. Note that if the inet_addr entity contains an IPv6 address prefix, this entity should not be collected.</div>|  
| flag | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>This is the interface flag line, which generally contains flags like "UP" to denote an active interface, "PROMISC" to note that the interface is listening for Ethernet frames not specifically addressed to it, and others.</div>|  
  
______________
  
## <a name="password_item"></a>< password_item >

/etc/passwd. See passwd(4).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the user for which data was gathered.</div>|  
| password | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the encrypted version of the user's password.</div>|  
| user_id | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd.</div>|  
| group_id | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>The id of the primary UNIX group the user belongs to.</div>|  
| gcos | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The GECOS (or GCOS) field from /etc/passwd; typically contains the user's full name.</div>|  
| home_dir | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user's home directory.</div>|  
| login_shell | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user's shell program.</div>|  
| last_login | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The date and time when the last login occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, UTC.</div>|  
  
______________
  
## <a name="process_item"></a><  ~~process_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** The process_item has been deprecated and replaced by the process58_item. The entity 'command' was changed to 'command_line' in the process58_item to accurately describe what information is collected. Please see the process58_item for additional information.<br />

Output of /usr/bin/ps. See ps(1).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| command | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This specifies the command/program name about which data has has been collected.</div>|  
| exec_time | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the cumulative CPU time, formatted in [DD-]HH:MM:SS where DD is the number of days when execution time is 24 hours or more.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the process ID of the process.</div>|  
| ppid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the process ID of the process's parent process.</div>|  
| priority | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the scheduling priority with which the process runs. This can be adjusted with the nice command or nice() system call.</div>|  
| ruid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the real user id which represents the user who has created the process.</div>|  
| scheduling_class | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A platform specific characteristic maintained by the scheduler: RT (real-time), TS (timeshare), FF (fifo), SYS (system), etc.</div>|  
| start_time | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the time of day the process started formatted in HH:MM:SS if the same day the process started or formatted as MMM_DD (Ex.: Feb_5) if process started the previous day or further in the past.</div>|  
| tty | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the TTY on which the process was started, if applicable.</div>|  
| user_id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the effective user id which represents the actual privileges of the process.</div>|  
  
______________
  
## <a name="process58_item"></a>< process58_item >

Output of /usr/bin/ps. See ps(1).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| command_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the string used to start the process. This includes any parameters that are part of the command line.</div>|  
| exec_time | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the cumulative CPU time, formatted in [DD-]HH:MM:SS where DD is the number of days when execution time is 24 hours or more.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the process ID of the process.</div>|  
| ppid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the process ID of the process's parent process.</div>|  
| priority | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the scheduling priority with which the process runs. This can be adjusted with the nice command or nice() system call.</div>|  
| ruid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the real user id which represents the user who has created the process.</div>|  
| scheduling_class | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A platform specific characteristic maintained by the scheduler: RT (real-time), TS (timeshare), FF (fifo), SYS (system), etc.</div>|  
| start_time | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the time of day the process started formatted in HH:MM:SS if the same day the process started or formatted as MMM_DD (Ex.: Feb_5) if process started the previous day or further in the past.</div>|  
| tty | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the TTY on which the process was started, if applicable.</div>|  
| user_id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the effective user id which represents the actual privileges of the process.</div>|  
| exec_shield | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that when true would indicates that ExecShield is enabled for the process.</div>|  
| loginuid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The loginuid shows which account a user gained access to the system with. The /proc/XXXX/loginuid shows this value.</div>|  
| posix_capability | [unix-sc:EntityItemCapabilityType](#EntityItemCapabilityType)  (0..unbounded) |  
||<div>An effective capability associated with the process. See linux/include/linux/capability.h for more information.</div>|  
| selinux_domain_label | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>An selinux domain label associated with the process.</div>|  
| session_id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The session ID of the process.</div>|  
  
______________
  
## <a name="routingtable_item"></a>< routingtable_item >

The routingtable_item holds information about an individual routing table entry found in a system's primary routing table. Each routingtable_item contains a destination IP address, gateway, netmask, flags, and the name of the interface associated with it. It is important to note that only numerical addresses will be collected and that their symbolic representations will not be resolved. This equivalent to using the '-n' option with route(8) or netstat(8). It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| destination | [oval-sc:EntityItemIPAddressType](oval-system-characteristics-schema.md#EntityItemIPAddressType)  (0..1) |  
||<div>The destination IP address prefix of the routing table entry. This is the destination IP address and netmask/prefix-length expressed using CIDR notation.</div>|  
| gateway | [oval-sc:EntityItemIPAddressType](oval-system-characteristics-schema.md#EntityItemIPAddressType)  (0..1) |  
||<div>The gateway of the specified routing table entry.</div>|  
| flags | [unix-sc:EntityItemRoutingTableFlagsType](#EntityItemRoutingTableFlagsType)  (0..unbounded) |  
||<div>The flags associated with the specified routing table entry.</div>|  
| interface_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the interface associated with the routing table entry.</div>|  
  
______________
  
## <a name="runlevel_item"></a>< runlevel_item >

The runlevel item holds information about the start or kill state of a specified service at a given runlevel. Each runlevel item contains service name and runlevel information as well as start and kill information. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| service_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The service_name entity is the actual name of the specific service.</div>|  
| runlevel | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The runlevel entity specifies the system runlevel associated with a service.</div>|  
| start | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The start entity specifies whether the service is scheduled to start at the runlevel.</div>|  
| kill | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The kill entity specifies whether the service is scheduled to be killed at the runlevel.</div>|  
  
______________
  
## <a name="sccs_item"></a><  ~~sccs_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** The sccs_item has been deprecated because the Source Code Control System (SCCS) is obsolete.  The sccs_item may be removed in a future version of the language.<br />



**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the absolute path to an SCCS file. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to an SCCS file.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of an SCCS file.</div>|  
| module_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| module_type | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| release | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| level | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| branch | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| sequence | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| what_string | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="shadow_item"></a>< shadow_item >

/etc/shadow. See shadow(4).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the user for which data was gathered.</div>|  
| password | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the encrypted version of the user's password.</div>|  
| chg_lst | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the date of the last password change in days since 1/1/1970.</div>|  
| chg_allow | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This specifies how often in days a user may change their password. It can also be thought of as the minimum age of a password.</div>|  
| chg_req | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This describes how long the user can keep a password before the system forces them to change it.</div>|  
| exp_warn | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This describes how long before password expiration the system begins warning the user. The system will warn the user at each login.</div>|  
| exp_inact | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This describes how many days of account inactivity the system will wait after a password expires before locking the account? This window, usually only set to a few days, gives users who are logging in very seldomly a bit of extra time to receive the password expiration warning and change their password.</div>|  
| exp_date | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This specifies when will the account's password expire, in days since 1/1/1970.</div>|  
| flag | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is a numeric reserved field that the shadow file may use in the future.</div>|  
| encrypt_method | [unix-sc:EntityItemEncryptMethodType](#EntityItemEncryptMethodType)  (0..1) |  
||<div>The encrypt_method entity describes method that is used for hashing passwords.</div>|  
  
______________
  
## <a name="symlink_item"></a>< symlink_item >

The symlink_item element identifies the result generated for a symlink_object.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the filepath to the subject symbolic link file, specified by the symlink_object.</div>|  
| canonical_path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the canonical path for the target of the symbolic link file specified by the filepath.</div>|  
  
______________
  
## <a name="sysctl_item"></a>< sysctl_item >

The sysctl_item stores information retrieved from the local system about a kernel parameter and its respective value(s).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name element contains a string that represents the name of a kernel parameter that was collected from the local system.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value element contains a string that represents the current value(s) for the specified kernel parameter on the local system.</div>|  
  
______________
  
## <a name="uname_item"></a>< uname_item >

Information about the hardware the machine is running on. This information is the parsed equivalent of uname -a.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| machine_class | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity specifies the machine hardware name. This corresponds to the command uname -m.</div>|  
| node_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity specifies the host name. This corresponds to the command uname -n.</div>|  
| os_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity specifies the operating system name. This corresponds to the command uname -s.</div>|  
| os_release | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity specifies the build version. This corresponds to the command uname -r.</div>|  
| os_version | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity specifies the operating system version. This corresponds to the command uname -v.</div>|  
| processor_type | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity specifies the processor type. This corresponds to the command uname -p.</div>|  
  
______________
  
## <a name="xinetd_item"></a>< xinetd_item >

The xinetd item holds information associated with different Internet services. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The protocol entity specifies the protocol that is used by the service. The list of valid protocols can be found in /etc/protocols.</div>|  
| service_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The service_name entity specifies the name of the service.</div>|  
| flags | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>The flags entity specifies miscellaneous settings associated with the service.</div>|  
| no_access | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>The no_access entity specifies the remote hosts to which the service is unavailable. Please see the xinetd.conf(5) man page for information on the different formats that can be used to describe a host.</div>|  
| only_from | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..unbounded) |  
||<div>The only_from entity specifies the remote hosts to which the service is available. Please see the xinetd.conf(5) man page for information on the different formats that can be used to describe a host.</div>|  
| port | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The port entity specifies the port used by the service.</div>|  
| server | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The server entity specifies the executable that is used to launch the service.</div>|  
| server_arguments | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The server_arguments entity specifies the arguments that are passed to the executable when launching the service.</div>|  
| socket_type | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The socket_type entity specifies the type of socket that is used by the service. Possible values include: stream, dgram, raw, or seqpacket.</div>|  
| type | [unix-sc:EntityItemXinetdTypeStatusType](#EntityItemXinetdTypeStatusType)  (0..unbounded) |  
||<div>The type entity specifies the type of the service. A service may have multiple types.</div>|  
| user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user entity specifies the user identifier of the process that is running the service. The user identifier may be expressed as a numerical value or as a user name that exists in /etc/passwd.</div>|  
| wait | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The wait entity specifies whether or not the service is single-threaded or multi-threaded and whether or not xinetd accepts the connection or the service accepts the connection. A value of 'true' indicates that the service is single-threaded and the service will accept the connection. A value of 'false' indicates that the service is multi-threaded and xinetd will accept the connection.</div>|  
| disabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The disabled entity specifies whether or not the service is disabled. A value of 'true' indicates that the service is disabled and will not start. A value of 'false' indicates that the service is not disabled.</div>|  
  
## <a name="EntityItemCapabilityType"></a>== EntityItemCapabilityType ==

The EntityItemCapabilityType complex type restricts a string value to a specific set of values that describe POSIX capability types associated with a process service. This list is based off the values defined in linux/include/linux/capability.h. Documentation on each allowed value can be found in capability.h. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| CAP_CHOWN | <div></div> |  
| CAP_DAC_OVERRIDE | <div></div> |  
| CAP_DAC_READ_SEARCH | <div></div> |  
| CAP_FOWNER | <div></div> |  
| CAP_FSETID | <div></div> |  
| CAP_KILL | <div></div> |  
| CAP_SETGID | <div></div> |  
| CAP_SETUID | <div></div> |  
| CAP_SETPCAP | <div></div> |  
| CAP_LINUX_IMMUTABLE | <div></div> |  
| CAP_NET_BIND_SERVICE | <div></div> |  
| CAP_NET_BROADCAST | <div></div> |  
| CAP_NET_ADMIN | <div></div> |  
| CAP_NET_RAW | <div></div> |  
| CAP_IPC_LOCK | <div></div> |  
| CAP_IPC_OWNER | <div></div> |  
| CAP_SYS_MODULE | <div></div> |  
| CAP_SYS_RAWIO | <div></div> |  
| CAP_SYS_CHROOT | <div></div> |  
| CAP_SYS_PTRACE | <div></div> |  
| CAP_SYS_ADMIN | <div></div> |  
| CAP_SYS_BOOT | <div></div> |  
| CAP_SYS_NICE | <div></div> |  
| CAP_SYS_RESOURCE | <div></div> |  
| CAP_SYS_TIME | <div></div> |  
| CAP_SYS_TTY_CONFIG | <div></div> |  
| CAP_MKNOD | <div></div> |  
| CAP_LEASE | <div></div> |  
| CAP_AUDIT_WRITE | <div></div> |  
| CAP_AUDIT_CONTROL | <div></div> |  
| CAP_SETFCAP | <div></div> |  
| CAP_MAC_OVERRIDE | <div></div> |  
| CAP_MAC_ADMIN | <div></div> |  
| CAP_SYS_PACCT | <div></div> |  
| CAP_SYSLOG | <div></div> |  
| CAP_WAKE_ALARM | <div></div> |  
| CAP_BLOCK_SUSPEND | <div></div> |  
| CAP_AUDIT_READ | <div></div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
______________
  
## <a name="EntityItemEndpointType"></a>== EntityItemEndpointType ==

The EntityItemEndpointType complex type restricts a string value to a specific set of values that describe endpoint types associated with an Internet service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| stream | <div>The stream value is used to describe a stream socket.</div> |  
| dgram | <div>The dgram value is used to describe a datagram socket.</div> |  
| raw | <div>The raw value is used to describe a raw socket.</div> |  
| seqpacket | <div>The seqpacket value is used to describe a sequenced packet socket.</div> |  
| tli | <div>The tli value is used to describe all TLI endpoints.</div> |  
| sunrpc_tcp | <div>The sunrpc_tcp value is used to describe all SUNRPC TCP endpoints.</div> |  
| sunrpc_udp | <div>The sunrpc_udp value is used to describe all SUNRPC UDP endpoints.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemGconfTypeType"></a>== EntityItemGconfTypeType ==

The EntityItemGconfTypeType complex type restricts a string value to the seven values GCONF_VALUE_STRING, GCONF_VALUE_INT, GCONF_VALUE_FLOAT, GCONF_VALUE_BOOL, GCONF_VALUE_SCHEMA, GCONF_VALUE_LIST, and GCONF_VALUE_PAIR that specify the type of the value associated with a GConf preference key. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| GCONF_VALUE_STRING | <div>The GCONF_VALUE_STRING type is used to describe a preference key that has a string value.</div> |  
| GCONF_VALUE_INT | <div>The GCONF_VALUE_INT type is used to describe a preference key that has a integer value.</div> |  
| GCONF_VALUE_FLOAT | <div>The GCONF_VALUE_FLOAT type is used to describe a preference key that has a float value.</div> |  
| GCONF_VALUE_BOOL | <div>The GCONF_VALUE_BOOL type is used to describe a preference key that has a boolean value.</div> |  
| GCONF_VALUE_SCHEMA | <div>The GCONF_VALUE_SCHEMA type is used to describe a preference key that has a schema value. The actual value will be the default value as specified in the GConf schema.</div> |  
| GCONF_VALUE_LIST | <div>The GCONF_VALUE_LIST type is used to describe a preference key that has a list of values. The actual values will be one of the primitive GConf datatypes GCONF_VALUE_STRING, GCONF_VALUE_INT, GCONF_VALUE_FLOAT, GCONF_VALUE_BOOL, and GCONF_VALUE_SCHEMA. Note that all of the values associated with a GCONF_VALUE_LIST are required to have the same type.</div> |  
| GCONF_VALUE_PAIR | <div>The GCONF_VALUE_PAIR type is used to describe a preference key that has a pair of values. The actual values will consist of the primitive GConf datatypes GCONF_VALUE_STRING, GCONF_VALUE_INT, GCONF_VALUE_FLOAT, GCONF_VALUE_BOOL, and GCONF_VALUE_SCHEMA. Note that the values associated with a GCONF_VALUE_PAIR are not required to have the same type.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemRoutingTableFlagsType"></a>== EntityItemRoutingTableFlagsType ==

The EntityItemRoutingTableFlagsType complex type restricts a string value to a specific set of values that describe the flags associated with a routing table entry. This list is based off the values defined in the man pages of various platforms. For Linux, please see route(8). For Solaris, please see netstat(1M). For HP-UX, please see netstat(1). For Mac OS, please see netstat(1). For FreeBSD, please see netstat(1). Documentation on each allowed value can be found in the previously listed man pages. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| UP | <div></div> |  
| GATEWAY | <div></div> |  
| HOST | <div></div> |  
| REINSTATE | <div></div> |  
| DYNAMIC | <div></div> |  
| MODIFIED | <div></div> |  
| ADDRCONF | <div></div> |  
| CACHE | <div></div> |  
| REJECT | <div></div> |  
| REDUNDANT | <div></div> |  
| SETSRC | <div></div> |  
| BROADCAST | <div></div> |  
| LOCAL | <div></div> |  
| PROTOCOL_1 | <div></div> |  
| PROTOCOL_2 | <div></div> |  
| PROTOCOL_3 | <div></div> |  
| BLACK_HOLE | <div></div> |  
| CLONING | <div></div> |  
| PROTOCOL_CLONING | <div></div> |  
| INTERFACE_SCOPE | <div></div> |  
| LINK_LAYER | <div></div> |  
| MULTICAST | <div></div> |  
| STATIC | <div></div> |  
| WAS_CLONED | <div></div> |  
| XRESOLVE | <div></div> |  
| USABLE | <div></div> |  
| PINNED | <div></div> |  
| ACTIVE_DEAD_GATEWAY_DETECTION | <div></div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
The following table is a mapping between the generic flag enumeration values and the actual flag values found on the various platforms. If the flag value is not specified, for a particular generic flag enumeration value, the flag value is not defined for that platform.  
```
Name                           Linux    Solaris    HPUX    Mac OS    FreeBSD    AIX
UP                             U        U          U       U         U          U
GATEWAY                        G        G          G       G         G          G
HOST                           H        H          H       H         H          H
REINSTATE                      R                                      
DYNAMIC                        D        D                  D         D          D
MODIFIED                       M                           M         M          M
ADDRCONF                       A        A                             
CACHE                          C                                                e
REJECT                         !                           R         R          R
REDUNDANT                               M (>=9)                                      
SETSRC                                  S                             
BROADCAST                               B                  b         b          b
LOCAL                                   L                                       l
PROTOCOL_1                                                 1         1          1
PROTOCOL_2                                                 2         2          2
PROTOCOL_3                                                 3         3          3
BLACK_HOLE                                                 B         B
CLONING                                                    C         C          c
PROTOCOL_CLONING                                           c         c
INTERFACE_SCOPE                                            I          
LINK_LAYER                                                 L         L          L
MULTICAST                                                  m                    m
STATIC                                                     S         S          S
WAS_CLONED                                                 W         W          W
XRESOLVE                                                   X         X
USABLE                                                                          u 
PINNED                                                                          P 
ACTIVE_DEAD_GATEWAY_DETECTION                                                   A (>=5.1)   
```

## <a name="EntityItemXinetdTypeStatusType"></a>== EntityItemXinetdTypeStatusType ==

The EntityItemXinetdTypeStatusType complex type restricts a string value to five values, either RPC, INTERNAL, UNLISTED, TCPMUX, or TCPMUXPLUS that specify the type of service registered in xinetd. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| INTERNAL | <div>The INTERNAL type is used to describe services like echo, chargen, and others whose functionality is supplied by xinetd itself.</div> |  
| RPC | <div>The RPC type is used to describe services that use remote procedure call ala NFS.</div> |  
| UNLISTED | <div>The UNLISTED type is used to describe services that aren't listed in /etc/protocols or /etc/rpc.</div> |  
| TCPMUX | <div>The TCPMUX type is used to describe services that conform to RFC 1078. This type indiciates that the service is responsible for handling the protocol handshake.</div> |  
| TCPMUXPLUS | <div>The TCPMUXPLUS type is used to describe services that conform to RFC 1078. This type indicates that xinetd is responsible for handling the protocol handshake.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemWaitStatusType"></a>== EntityItemWaitStatusType ==

The EntityItemWaitStatusType complex type restricts a string value to two values, either wait or nowait, that specify whether the server that is invoked by inetd will take over the listening socket associated with the service, and whether once launched, inetd will wait for that server to exit, if ever, before it resumes listening for new service requests. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| wait | <div>The value of 'wait' specifies that the server that is invoked by inetd will take over the listening socket associated with the service, and once launched, inetd will wait for that server to exit, if ever, before it resumes listening for new service requests.</div> |  
| nowait | <div>The value of 'nowait' specifies that the server that is invoked by inetd will not wait for any existing server to finish before taking over the listening socket associated with the service.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemEncryptMethodType"></a>== EntityItemEncryptMethodType ==

The EntityItemEncryptMethodType complex type restricts a string value to a set that corresponds to the allowed encrypt methods used for protected passwords in a shadow file. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DES | <div>The DES method corresponds to the (none) prefix.</div> |  
| BSDi | <div>The BSDi method corresponds to BSDi modified DES or the '_' prefix.</div> |  
| MD5 | <div>The MD5 method corresponds to MD5 for Linux/BSD or the $1$ prefix.</div> |  
| Blowfish | <div>The Blowfish method corresponds to Blowfish (OpenBSD) or the $2$ or $2a$ prefixes.</div> |  
| Sun MD5 | <div>The Sun MD5 method corresponds to the $md5$ prefix.</div> |  
| SHA-256 | <div>The SHA-256 method corresponds to the $5$ prefix.</div> |  
| SHA-512 | <div>The SHA-512 method corresponds to the $6$ prefix.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityItemInterfaceType"></a>== EntityItemInterfaceType ==

The EntityItemInterfaceType complex type restricts a string value to a specific set of values. These values describe the different interface types which are defined in 'if_arp.h'. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| ARPHRD_ETHER | <div>The ARPHRD_ETHER type is used to describe ethernet interfaces.</div> |  
| ARPHRD_FDDI | <div>The ARPHRD_FDDI type is used to describe fiber distributed data interfaces (FDDI).</div> |  
| ARPHRD_LOOPBACK | <div>The ARPHRD_LOOPBACK type is used to describe loopback interfaces.</div> |  
| ARPHRD_VOID | <div>The ARPHRD_VOID type is used to describe unknown interfaces.</div> |  
| ARPHRD_PPP | <div>The ARPHRD_PPP type is used to describe point-to-point protocol interfaces (PPP).</div> |  
| ARPHRD_SLIP | <div>The ARPHRD_SLIP type is used to describe serial line internet protocol interfaces (SLIP).</div> |  
| ARPHRD_PRONET | <div>The ARPHRD_PRONET type is used to describe PROnet token ring interfaces.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
