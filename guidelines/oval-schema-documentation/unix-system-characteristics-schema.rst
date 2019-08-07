Open Vulnerability and Assessment Language: Unix System Characteristics  
=========================================================
* Schema: Unix System Characteristics  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the UNIX specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Item Listing  
---------------------------------------------------------
* :ref:`dnscache_item`  
* :ref:`file_item`  
* :ref:`fileextendedattribute_item`  
* :ref:`gconf_item`  
* :ref:`inetd_item`  
* :ref:`interface_item`  
* :ref:`password_item`  
* :ref:`process_item` (Deprecated)  
* :ref:`process58_item`  
* :ref:`routingtable_item`  
* :ref:`runlevel_item`  
* :ref:`sccs_item` (Deprecated)  
* :ref:`shadow_item`  
* :ref:`symlink_item`  
* :ref:`sysctl_item`  
* :ref:`uname_item`  
* :ref:`xinetd_item`  
  
______________
  
.. _dnscache_item:  
  
< dnscache_item >  
---------------------------------------------------------
The dnscache_item stores information retrieved from the DNS cache about a domain name, its time to live, and its corresponding IP addresses.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - domain_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The domain_name element contains a string that represents a domain name that was collected from the DNS cache on the local system.  
    * - ttl  
      - oval-sc:EntityItemIntType (0..1)  
      - The ttl element contains an integer that represents the time to live in seconds of the DNS cache entry.  
    * - ip_address  
      - oval-sc:EntityItemIPAddressStringType (0..unbounded)  
      - The ip_address element contains a string that represents an IP address associated with the specified domain name. Note that the IP address can be IPv4 or IPv6.  
  
______________
  
.. _file_item:  
  
< file_item >  
---------------------------------------------------------
The file item holds information about the individual files found on a system. Each file item contains path and filename information as well as its type, associated user and group ids, relevant dates, and the privialeges granted. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity.  
    * - type  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the file's type: regular file (regular), directory, named pipe (fifo), symbolic link, socket or block special.  
    * - group_id  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the group owner of the file, by group number.  
    * - user_id  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. This element represents the owner of the file.  
    * - a_time  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the time that the file was last accessed, in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.  
    * - c_time  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the time of the last change to the file's inode, in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970. An inode is a Unix data structure that stores all of the information about a particular file.  
    * - m_time  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the time of the last change to the file's contents, in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.  
    * - size  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the size of the file in bytes.  
    * - suid  
      - oval-sc:EntityItemBoolType (0..1)  
      - Does the program run with the uid (thus privileges) of the file's owner, rather than the calling user?  
    * - sgid  
      - oval-sc:EntityItemBoolType (0..1)  
      - Does the program run with the gid (thus privileges) of the file's group owner, rather than the calling user's group?  
    * - sticky  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can users delete each other's files in this directory, when said directory is writable by those users?  
    * - uread  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can the owner (user owner) of the file read this file or, if a directory, read the directory contents?  
    * - uwrite  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can the owner (user owner) of the file write to this file or, if a directory, write to the directory?  
    * - uexec  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can the owner (user owner) of the file execute it or, if a directory, change into the directory?  
    * - gread  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can the group owner of the file read this file or, if a directory, read the directory contents?  
    * - gwrite  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can the group owner of the file write to this file, or if a directory, write to the directory?  
    * - gexec  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can the group owner of the file execute it or, if a directory, change into the directory?  
    * - oread  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can all other users read this file or, if a directory, read the directory contents?  
    * - owrite  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can the other users write to this file, or if a directory, write to the directory?  
    * - oexec  
      - oval-sc:EntityItemBoolType (0..1)  
      - Can the other users execute this file or, if a directory, change into the directory?  
    * - has_extended_acl  
      - oval-sc:EntityItemBoolType (0..1)  
      - Does the file or directory have ACL permissions applied to it? If a system supports ACLs and the file or directory doesn't have an ACL, or it matches the standard UNIX permissions, the entity will have a status of 'exists' and a value of 'false'. If the system supports ACLs and the file or directory has an ACL, the entity will have a status of 'exists' and a value of 'true'. Lastly, if a system doesn't support ACLs, the entity will have a status of 'does not exist'.  
  
______________
  
.. _fileextendedattribute_item:  
  
< fileextendedattribute_item >  
---------------------------------------------------------
The file extended attribute item holds information about the individual file extended attributes found on a system. Each file extended attribute item contains path, filename, and attribute name information as well as the attribute's value. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity.  
    * - attribute_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the extended attribute's name, identifier or key.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - This is the extended attribute's value or contents.  
  
______________
  
.. _gconf_item:  
  
< gconf_item >  
---------------------------------------------------------
The gconf_item holds information about an individual GConf preference key found on a system. Each gconf_item contains a preference key, source, type, whether it's writable, the user who last modified it, the time it was last modified, whether it's the default value, as well as the preference key's value. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - key  
      - oval-sc:EntityItemStringType (0..1)  
      - The preference key to check.  
    * - source  
      - oval-sc:EntityItemStringType (0..1)  
      - The source used to look up the preference key.  
    * - type  
      - unix-sc:EntityItemGconfTypeType (0..1)  
      - The type of the preference key.  
    * - is_writable  
      - oval-sc:EntityItemBoolType (0..1)  
      - Is the preference key writable? If true, the preference key is writable. If false, the preference key is not writable.  
    * - mod_user  
      - oval-sc:EntityItemStringType (0..1)  
      - The user who last modified the preference key.  
    * - mod_time  
      - oval-sc:EntityItemIntType (0..1)  
      - The time the preference key was last modified in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.  
    * - is_default  
      - oval-sc:EntityItemBoolType (0..1)  
      - Is the preference key value the default value. If true, the preference key value is the default value. If false, the preference key value is not the default value.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value of the preference key.  
  
______________
  
.. _inetd_item:  
  
< inetd_item >  
---------------------------------------------------------
The inetd item holds information associated with different Internet services. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - oval-sc:EntityItemStringType (0..1)  
      - A recognized protocol listed in the file /etc/inet/protocols.  
    * - service_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of a valid service listed in the services file. For RPC services, the value of the service-name field consists of the RPC service name or program number, followed by a '/' (slash) and either a version number or a range of version numbers (for example, rstatd/2-4).  
    * - server_program  
      - oval-sc:EntityItemStringType (0..1)  
      - Either the pathname of a server program to be invoked by inetd to perform the requested service, or the value internal if inetd itself provides the service.  
    * - server_arguments  
      - oval-sc:EntityItemStringType (0..1)  
      - The arguments for running the service. These are either passed to the server program invoked by inetd, or used to configure a service provided by inetd. In the case of server programs, the arguments shall begin with argv[0], which is typically the name of the program. In the case of a service provided by inted, the first argument shall be the word "internal".  
    * - endpoint_type  
      - unix-sc:EntityItemEndpointType (0..1)  
      - The endpoint type (aka, socket type) associated with the service.  
    * - exec_as_user  
      - oval-sc:EntityItemStringType (0..1)  
      - The user id of the user the server program should run under. (This allows for running with less permission than root.)  
    * - wait_status  
      - unix-sc:EntityItemWaitStatusType (0..1)  
      - This field has values wait or nowait. This entry specifies whether the server that is invoked by inetd will take over the listening socket associated with the service, and whether once launched, inetd will wait for that server to exit, if ever, before it resumes listening for new service requests.  
  
______________
  
.. _interface_item:  
  
< interface_item >  
---------------------------------------------------------
The interface item holds information about the interfaces on a system. Each interface item contains name and address information as well as any associated flags. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name entity is the actual name of the specific interface. Examples might be eth0, eth1, fwo, etc.  
    * - type  
      - unix-sc:EntityItemInterfaceType (0..1)  
      - This element specifies the type of interface.  
    * - hardware_addr  
      - oval-sc:EntityItemStringType (0..1)  
      - The hardware_addr entity is the hardware or MAC address of the physical network card. MAC addresses should be formatted according to the IEEE 802-2001 standard which states that a MAC address is a sequence of six octet values, separated by hyphens, where each octet is represented by two hexadecimal digits. Uppercase letters should also be used to represent the hexadecimal digits A through F.  
    * - inet_addr  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - The inet_addr entity is the IP address of the specific interface. Note that the IP address can be IPv4 or IPv6. If the IP address is an IPv6 address, this entity should be expressed as an IPv6 address prefix using CIDR notation and the netmask entity should not be collected.  
    * - broadcast_addr  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - The broadcast_addr entity is the broadcast IP address for this interface's network. Note that the IP address can be IPv4 or IPv6.  
    * - netmask  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - This is the bitmask used to calculate the interface's IP network. The network number is calculated by bitwise-ANDing this with the IP address. The host number on that network is calculated by bitwise-XORing this with the IP address. Note that if the inet_addr entity contains an IPv6 address prefix, this entity should not be collected.  
    * - flag  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - This is the interface flag line, which generally contains flags like "UP" to denote an active interface, "PROMISC" to note that the interface is listening for Ethernet frames not specifically addressed to it, and others.  
  
______________
  
.. _password_item:  
  
< password_item >  
---------------------------------------------------------
/etc/passwd. See passwd(4).

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - username  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the user for which data was gathered.  
    * - password  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the encrypted version of the user's password.  
    * - user_id  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd.  
    * - group_id  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - The id of the primary UNIX group the user belongs to.  
    * - gcos  
      - oval-sc:EntityItemStringType (0..1)  
      - The GECOS (or GCOS) field from /etc/passwd; typically contains the user's full name.  
    * - home_dir  
      - oval-sc:EntityItemStringType (0..1)  
      - The user's home directory.  
    * - login_shell  
      - oval-sc:EntityItemStringType (0..1)  
      - The user's shell program.  
    * - last_login  
      - oval-sc:EntityItemIntType (0..1)  
      - The date and time when the last login occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, UTC.  
  
______________
  
.. _process_item:  
  
< process_item > (Deprecated)  
---------------------------------------------------------
**Deprecation Info**:  
* Deprecated As Of Version 5.8  
* Reason: The process_item has been deprecated and replaced by the process58_item. The entity 'command' was changed to 'command_line' in the process58_item to accurately describe what information is collected. Please see the process58_item for additional information.  
  
Output of /usr/bin/ps. See ps(1).

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - command  
      - oval-sc:EntityItemStringType (0..1)  
      - This specifies the command/program name about which data has has been collected.  
    * - exec_time  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the cumulative CPU time, formatted in [DD-]HH:MM:SS where DD is the number of days when execution time is 24 hours or more.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the process ID of the process.  
    * - ppid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the process ID of the process's parent process.  
    * - priority  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the scheduling priority with which the process runs. This can be adjusted with the nice command or nice() system call.  
    * - ruid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the real user id which represents the user who has created the process.  
    * - scheduling_class  
      - oval-sc:EntityItemStringType (0..1)  
      - A platform specific characteristic maintained by the scheduler: RT (real-time), TS (timeshare), FF (fifo), SYS (system), etc.  
    * - start_time  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the time of day the process started formatted in HH:MM:SS if the same day the process started or formatted as MMM_DD (Ex.: Feb_5) if process started the previous day or further in the past.  
    * - tty  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the TTY on which the process was started, if applicable.  
    * - user_id  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the effective user id which represents the actual privileges of the process.  
  
______________
  
.. _process58_item:  
  
< process58_item >  
---------------------------------------------------------
Output of /usr/bin/ps. See ps(1).

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - command_line  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the string used to start the process. This includes any parameters that are part of the command line.  
    * - exec_time  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the cumulative CPU time, formatted in [DD-]HH:MM:SS where DD is the number of days when execution time is 24 hours or more.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the process ID of the process.  
    * - ppid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the process ID of the process's parent process.  
    * - priority  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the scheduling priority with which the process runs. This can be adjusted with the nice command or nice() system call.  
    * - ruid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the real user id which represents the user who has created the process.  
    * - scheduling_class  
      - oval-sc:EntityItemStringType (0..1)  
      - A platform specific characteristic maintained by the scheduler: RT (real-time), TS (timeshare), FF (fifo), SYS (system), etc.  
    * - start_time  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the time of day the process started formatted in HH:MM:SS if the same day the process started or formatted as MMM_DD (Ex.: Feb_5) if process started the previous day or further in the past.  
    * - tty  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the TTY on which the process was started, if applicable.  
    * - user_id  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the effective user id which represents the actual privileges of the process.  
    * - exec_shield  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that when true would indicates that ExecShield is enabled for the process.  
    * - loginuid  
      - oval-sc:EntityItemIntType (0..1)  
      - The loginuid shows which account a user gained access to the system with. The /proc/XXXX/loginuid shows this value.  
    * - posix_capability  
      - unix-sc:EntityItemCapabilityType (0..unbounded)  
      - An effective capability associated with the process. See linux/include/linux/capability.h for more information.  
    * - selinux_domain_label  
      - oval-sc:EntityItemStringType (0..1)  
      - An selinux domain label associated with the process.  
    * - session_id  
      - oval-sc:EntityItemIntType (0..1)  
      - The session ID of the process.  
  
______________
  
.. _routingtable_item:  
  
< routingtable_item >  
---------------------------------------------------------
The routingtable_item holds information about an individual routing table entry found in a system's primary routing table. Each routingtable_item contains a destination IP address, gateway, netmask, flags, and the name of the interface associated with it. It is important to note that only numerical addresses will be collected and that their symbolic representations will not be resolved. This equivalent to using the '-n' option with route(8) or netstat(8). It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - destination  
      - oval-sc:EntityItemIPAddressType (0..1)  
      - The destination IP address prefix of the routing table entry. This is the destination IP address and netmask/prefix-length expressed using CIDR notation.  
    * - gateway  
      - oval-sc:EntityItemIPAddressType (0..1)  
      - The gateway of the specified routing table entry.  
    * - flags  
      - unix-sc:EntityItemRoutingTableFlagsType (0..unbounded)  
      - The flags associated with the specified routing table entry.  
    * - interface_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the interface associated with the routing table entry.  
  
______________
  
.. _runlevel_item:  
  
< runlevel_item >  
---------------------------------------------------------
The runlevel item holds information about the start or kill state of a specified service at a given runlevel. Each runlevel item contains service name and runlevel information as well as start and kill information. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - service_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The service_name entity is the actual name of the specific service.  
    * - runlevel  
      - oval-sc:EntityItemStringType (0..1)  
      - The runlevel entity specifies the system runlevel associated with a service.  
    * - start  
      - oval-sc:EntityItemBoolType (0..1)  
      - The start entity specifies whether the service is scheduled to start at the runlevel.  
    * - kill  
      - oval-sc:EntityItemBoolType (0..1)  
      - The kill entity specifies whether the service is scheduled to be killed at the runlevel.  
  
______________
  
.. _sccs_item:  
  
< sccs_item > (Deprecated)  
---------------------------------------------------------
**Deprecation Info**:  
* Deprecated As Of Version 5.10  
* Reason: The sccs_item has been deprecated because the Source Code Control System (SCCS) is obsolete.  The sccs_item may be removed in a future version of the language.  
  


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the absolute path to an SCCS file. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the directory component of the absolute path to an SCCS file.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of an SCCS file.  
    * - module_name  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - module_type  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - release  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - level  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - branch  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - sequence  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - what_string  
      - oval-sc:EntityItemStringType (0..1)  
      -   
  
______________
  
.. _shadow_item:  
  
< shadow_item >  
---------------------------------------------------------
/etc/shadow. See shadow(4).

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - username  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the user for which data was gathered.  
    * - password  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the encrypted version of the user's password.  
    * - chg_lst  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the date of the last password change in days since 1/1/1970.  
    * - chg_allow  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This specifies how often in days a user may change their password. It can also be thought of as the minimum age of a password.  
    * - chg_req  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This describes how long the user can keep a password before the system forces them to change it.  
    * - exp_warn  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This describes how long before password expiration the system begins warning the user. The system will warn the user at each login.  
    * - exp_inact  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This describes how many days of account inactivity the system will wait after a password expires before locking the account? This window, usually only set to a few days, gives users who are logging in very seldomly a bit of extra time to receive the password expiration warning and change their password.  
    * - exp_date  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This specifies when will the account's password expire, in days since 1/1/1970.  
    * - flag  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is a numeric reserved field that the shadow file may use in the future.  
    * - encrypt_method  
      - unix-sc:EntityItemEncryptMethodType (0..1)  
      - The encrypt_method entity describes method that is used for hashing passwords.  
  
______________
  
.. _symlink_item:  
  
< symlink_item >  
---------------------------------------------------------
The symlink_item element identifies the result generated for a symlink_object.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the filepath to the subject symbolic link file, specified by the symlink_object.  
    * - canonical_path  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the canonical path for the target of the symbolic link file specified by the filepath.  
  
______________
  
.. _sysctl_item:  
  
< sysctl_item >  
---------------------------------------------------------
The sysctl_item stores information retrieved from the local system about a kernel parameter and its respective value(s).

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name element contains a string that represents the name of a kernel parameter that was collected from the local system.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value element contains a string that represents the current value(s) for the specified kernel parameter on the local system.  
  
______________
  
.. _uname_item:  
  
< uname_item >  
---------------------------------------------------------
Information about the hardware the machine is running on. This information is the parsed equivalent of uname -a.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - machine_class  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity specifies the machine hardware name. This corresponds to the command uname -m.  
    * - node_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity specifies the host name. This corresponds to the command uname -n.  
    * - os_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity specifies the operating system name. This corresponds to the command uname -s.  
    * - os_release  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity specifies the build version. This corresponds to the command uname -r.  
    * - os_version  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity specifies the operating system version. This corresponds to the command uname -v.  
    * - processor_type  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity specifies the processor type. This corresponds to the command uname -p.  
  
______________
  
.. _xinetd_item:  
  
< xinetd_item >  
---------------------------------------------------------
The xinetd item holds information associated with different Internet services. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - oval-sc:EntityItemStringType (0..1)  
      - The protocol entity specifies the protocol that is used by the service. The list of valid protocols can be found in /etc/protocols.  
    * - service_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The service_name entity specifies the name of the service.  
    * - flags  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The flags entity specifies miscellaneous settings associated with the service.  
    * - no_access  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The no_access entity specifies the remote hosts to which the service is unavailable. Please see the xinetd.conf(5) man page for information on the different formats that can be used to describe a host.  
    * - only_from  
      - oval-sc:EntityItemIPAddressStringType (0..unbounded)  
      - The only_from entity specifies the remote hosts to which the service is available. Please see the xinetd.conf(5) man page for information on the different formats that can be used to describe a host.  
    * - port  
      - oval-sc:EntityItemIntType (0..1)  
      - The port entity specifies the port used by the service.  
    * - server  
      - oval-sc:EntityItemStringType (0..1)  
      - The server entity specifies the executable that is used to launch the service.  
    * - server_arguments  
      - oval-sc:EntityItemStringType (0..1)  
      - The server_arguments entity specifies the arguments that are passed to the executable when launching the service.  
    * - socket_type  
      - oval-sc:EntityItemStringType (0..1)  
      - The socket_type entity specifies the type of socket that is used by the service. Possible values include: stream, dgram, raw, or seqpacket.  
    * - type  
      - unix-sc:EntityItemXinetdTypeStatusType (0..unbounded)  
      - The type entity specifies the type of the service. A service may have multiple types.  
    * - user  
      - oval-sc:EntityItemStringType (0..1)  
      - The user entity specifies the user identifier of the process that is running the service. The user identifier may be expressed as a numerical value or as a user name that exists in /etc/passwd.  
    * - wait  
      - oval-sc:EntityItemBoolType (0..1)  
      - The wait entity specifies whether or not the service is single-threaded or multi-threaded and whether or not xinetd accepts the connection or the service accepts the connection. A value of 'true' indicates that the service is single-threaded and the service will accept the connection. A value of 'false' indicates that the service is multi-threaded and xinetd will accept the connection.  
    * - disabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - The disabled entity specifies whether or not the service is disabled. A value of 'true' indicates that the service is disabled and will not start. A value of 'false' indicates that the service is not disabled.  
  
.. _EntityItemCapabilityType:  
  
== EntityItemCapabilityType ==  
---------------------------------------------------------
The EntityItemCapabilityType complex type restricts a string value to a specific set of values that describe POSIX capability types associated with a process service. This list is based off the values defined in linux/include/linux/capability.h. Documentation on each allowed value can be found in capability.h. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - CAP_CHOWN  
      - |   
    * - CAP_DAC_OVERRIDE  
      - |   
    * - CAP_DAC_READ_SEARCH  
      - |   
    * - CAP_FOWNER  
      - |   
    * - CAP_FSETID  
      - |   
    * - CAP_KILL  
      - |   
    * - CAP_SETGID  
      - |   
    * - CAP_SETUID  
      - |   
    * - CAP_SETPCAP  
      - |   
    * - CAP_LINUX_IMMUTABLE  
      - |   
    * - CAP_NET_BIND_SERVICE  
      - |   
    * - CAP_NET_BROADCAST  
      - |   
    * - CAP_NET_ADMIN  
      - |   
    * - CAP_NET_RAW  
      - |   
    * - CAP_IPC_LOCK  
      - |   
    * - CAP_IPC_OWNER  
      - |   
    * - CAP_SYS_MODULE  
      - |   
    * - CAP_SYS_RAWIO  
      - |   
    * - CAP_SYS_CHROOT  
      - |   
    * - CAP_SYS_PTRACE  
      - |   
    * - CAP_SYS_ADMIN  
      - |   
    * - CAP_SYS_BOOT  
      - |   
    * - CAP_SYS_NICE  
      - |   
    * - CAP_SYS_RESOURCE  
      - |   
    * - CAP_SYS_TIME  
      - |   
    * - CAP_SYS_TTY_CONFIG  
      - |   
    * - CAP_MKNOD  
      - |   
    * - CAP_LEASE  
      - |   
    * - CAP_AUDIT_WRITE  
      - |   
    * - CAP_AUDIT_CONTROL  
      - |   
    * - CAP_SETFCAP  
      - |   
    * - CAP_MAC_OVERRIDE  
      - |   
    * - CAP_MAC_ADMIN  
      - |   
    * - CAP_SYS_PACCT  
      - |   
    * - CAP_SYSLOG  
      - |   
    * - CAP_WAKE_ALARM  
      - |   
    * - CAP_BLOCK_SUSPEND  
      - |   
    * - CAP_AUDIT_READ  
      - |   
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
______________
  
.. _EntityItemEndpointType:  
  
== EntityItemEndpointType ==  
---------------------------------------------------------
The EntityItemEndpointType complex type restricts a string value to a specific set of values that describe endpoint types associated with an Internet service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - stream  
      - | The stream value is used to describe a stream socket.  
    * - dgram  
      - | The dgram value is used to describe a datagram socket.  
    * - raw  
      - | The raw value is used to describe a raw socket.  
    * - seqpacket  
      - | The seqpacket value is used to describe a sequenced packet socket.  
    * - tli  
      - | The tli value is used to describe all TLI endpoints.  
    * - sunrpc_tcp  
      - | The sunrpc_tcp value is used to describe all SUNRPC TCP endpoints.  
    * - sunrpc_udp  
      - | The sunrpc_udp value is used to describe all SUNRPC UDP endpoints.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemGconfTypeType:  
  
== EntityItemGconfTypeType ==  
---------------------------------------------------------
The EntityItemGconfTypeType complex type restricts a string value to the seven values GCONF_VALUE_STRING, GCONF_VALUE_INT, GCONF_VALUE_FLOAT, GCONF_VALUE_BOOL, GCONF_VALUE_SCHEMA, GCONF_VALUE_LIST, and GCONF_VALUE_PAIR that specify the type of the value associated with a GConf preference key. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - GCONF_VALUE_STRING  
      - | The GCONF_VALUE_STRING type is used to describe a preference key that has a string value.  
    * - GCONF_VALUE_INT  
      - | The GCONF_VALUE_INT type is used to describe a preference key that has a integer value.  
    * - GCONF_VALUE_FLOAT  
      - | The GCONF_VALUE_FLOAT type is used to describe a preference key that has a float value.  
    * - GCONF_VALUE_BOOL  
      - | The GCONF_VALUE_BOOL type is used to describe a preference key that has a boolean value.  
    * - GCONF_VALUE_SCHEMA  
      - | The GCONF_VALUE_SCHEMA type is used to describe a preference key that has a schema value. The actual value will be the default value as specified in the GConf schema.  
    * - GCONF_VALUE_LIST  
      - | The GCONF_VALUE_LIST type is used to describe a preference key that has a list of values. The actual values will be one of the primitive GConf datatypes GCONF_VALUE_STRING, GCONF_VALUE_INT, GCONF_VALUE_FLOAT, GCONF_VALUE_BOOL, and GCONF_VALUE_SCHEMA. Note that all of the values associated with a GCONF_VALUE_LIST are required to have the same type.  
    * - GCONF_VALUE_PAIR  
      - | The GCONF_VALUE_PAIR type is used to describe a preference key that has a pair of values. The actual values will consist of the primitive GConf datatypes GCONF_VALUE_STRING, GCONF_VALUE_INT, GCONF_VALUE_FLOAT, GCONF_VALUE_BOOL, and GCONF_VALUE_SCHEMA. Note that the values associated with a GCONF_VALUE_PAIR are not required to have the same type.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemRoutingTableFlagsType:  
  
== EntityItemRoutingTableFlagsType ==  
---------------------------------------------------------
The EntityItemRoutingTableFlagsType complex type restricts a string value to a specific set of values that describe the flags associated with a routing table entry. This list is based off the values defined in the man pages of various platforms. For Linux, please see route(8). For Solaris, please see netstat(1M). For HP-UX, please see netstat(1). For Mac OS, please see netstat(1). For FreeBSD, please see netstat(1). Documentation on each allowed value can be found in the previously listed man pages. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - UP  
      - |   
    * - GATEWAY  
      - |   
    * - HOST  
      - |   
    * - REINSTATE  
      - |   
    * - DYNAMIC  
      - |   
    * - MODIFIED  
      - |   
    * - ADDRCONF  
      - |   
    * - CACHE  
      - |   
    * - REJECT  
      - |   
    * - REDUNDANT  
      - |   
    * - SETSRC  
      - |   
    * - BROADCAST  
      - |   
    * - LOCAL  
      - |   
    * - PROTOCOL_1  
      - |   
    * - PROTOCOL_2  
      - |   
    * - PROTOCOL_3  
      - |   
    * - BLACK_HOLE  
      - |   
    * - CLONING  
      - |   
    * - PROTOCOL_CLONING  
      - |   
    * - INTERFACE_SCOPE  
      - |   
    * - LINK_LAYER  
      - |   
    * - MULTICAST  
      - |   
    * - STATIC  
      - |   
    * - WAS_CLONED  
      - |   
    * - XRESOLVE  
      - |   
    * - USABLE  
      - |   
    * - PINNED  
      - |   
    * - ACTIVE_DEAD_GATEWAY_DETECTION  
      - |   
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
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

.. _EntityItemXinetdTypeStatusType:  
  
== EntityItemXinetdTypeStatusType ==  
---------------------------------------------------------
The EntityItemXinetdTypeStatusType complex type restricts a string value to five values, either RPC, INTERNAL, UNLISTED, TCPMUX, or TCPMUXPLUS that specify the type of service registered in xinetd. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - INTERNAL  
      - | The INTERNAL type is used to describe services like echo, chargen, and others whose functionality is supplied by xinetd itself.  
    * - RPC  
      - | The RPC type is used to describe services that use remote procedure call ala NFS.  
    * - UNLISTED  
      - | The UNLISTED type is used to describe services that aren't listed in /etc/protocols or /etc/rpc.  
    * - TCPMUX  
      - | The TCPMUX type is used to describe services that conform to RFC 1078. This type indiciates that the service is responsible for handling the protocol handshake.  
    * - TCPMUXPLUS  
      - | The TCPMUXPLUS type is used to describe services that conform to RFC 1078. This type indicates that xinetd is responsible for handling the protocol handshake.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemWaitStatusType:  
  
== EntityItemWaitStatusType ==  
---------------------------------------------------------
The EntityItemWaitStatusType complex type restricts a string value to two values, either wait or nowait, that specify whether the server that is invoked by inetd will take over the listening socket associated with the service, and whether once launched, inetd will wait for that server to exit, if ever, before it resumes listening for new service requests. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - wait  
      - | The value of 'wait' specifies that the server that is invoked by inetd will take over the listening socket associated with the service, and once launched, inetd will wait for that server to exit, if ever, before it resumes listening for new service requests.  
    * - nowait  
      - | The value of 'nowait' specifies that the server that is invoked by inetd will not wait for any existing server to finish before taking over the listening socket associated with the service.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemEncryptMethodType:  
  
== EntityItemEncryptMethodType ==  
---------------------------------------------------------
The EntityItemEncryptMethodType complex type restricts a string value to a set that corresponds to the allowed encrypt methods used for protected passwords in a shadow file. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - DES  
      - | The DES method corresponds to the (none) prefix.  
    * - BSDi  
      - | The BSDi method corresponds to BSDi modified DES or the '_' prefix.  
    * - MD5  
      - | The MD5 method corresponds to MD5 for Linux/BSD or the $1$ prefix.  
    * - Blowfish  
      - | The Blowfish method corresponds to Blowfish (OpenBSD) or the $2$ or $2a$ prefixes.  
    * - Sun MD5  
      - | The Sun MD5 method corresponds to the $md5$ prefix.  
    * - SHA-256  
      - | The SHA-256 method corresponds to the $5$ prefix.  
    * - SHA-512  
      - | The SHA-512 method corresponds to the $6$ prefix.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityItemInterfaceType:  
  
== EntityItemInterfaceType ==  
---------------------------------------------------------
The EntityItemInterfaceType complex type restricts a string value to a specific set of values. These values describe the different interface types which are defined in 'if_arp.h'. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ARPHRD_ETHER  
      - | The ARPHRD_ETHER type is used to describe ethernet interfaces.  
    * - ARPHRD_FDDI  
      - | The ARPHRD_FDDI type is used to describe fiber distributed data interfaces (FDDI).  
    * - ARPHRD_LOOPBACK  
      - | The ARPHRD_LOOPBACK type is used to describe loopback interfaces.  
    * - ARPHRD_VOID  
      - | The ARPHRD_VOID type is used to describe unknown interfaces.  
    * - ARPHRD_PPP  
      - | The ARPHRD_PPP type is used to describe point-to-point protocol interfaces (PPP).  
    * - ARPHRD_SLIP  
      - | The ARPHRD_SLIP type is used to describe serial line internet protocol interfaces (SLIP).  
    * - ARPHRD_PRONET  
      - | The ARPHRD_PRONET type is used to describe PROnet token ring interfaces.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
