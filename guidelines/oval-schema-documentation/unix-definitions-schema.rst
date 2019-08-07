Open Vulnerability and Assessment Language: UNIX Definition  
=========================================================
* Schema: UNIX Definition  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose generic UNIX tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Test Listing  
---------------------------------------------------------
* :ref:`dnscache_test`  
* :ref:`file_test`  
* :ref:`fileextendedattribute_test`  
* :ref:`gconf_test`  
* :ref:`inetd_test`  
* :ref:`interface_test`  
* :ref:`password_test`  
* :ref:`process_test` (Deprecated)  
* :ref:`process58_test`  
* :ref:`routingtable_test`  
* :ref:`runlevel_test`  
* :ref:`sccs_test` (Deprecated)  
* :ref:`shadow_test`  
* :ref:`symlink_test`  
* :ref:`sysctl_test`  
* :ref:`uname_test`  
* :ref:`xinetd_test`  
  
______________
  
.. _dnscache_test:  
  
< dnscache_test >  
---------------------------------------------------------
The dnscache_test is used to check the time to live and IP addresses associated with a domain name. The time to live and IP addresses for a particular domain name are retrieved from the DNS cache on the local system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a dnscache_object and the optional state element specifies the metadata to check.

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
  
.. _dnscache_object:  
  
< dnscache_object >  
---------------------------------------------------------
The dnscache_object is used by the dnscache_test to specify the domain name(s) that should be collected from the DNS cache on the local system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - domain_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The domain_name element specifies the domain name(s) that should be collected from the DNS cache on the local system.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _dnscache_state:  
  
< dnscache_state >  
---------------------------------------------------------
The dnscache_state contains three entities that are used to check the domain name, time to live, and IP addresses associated with the DNS cache entry.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - domain_name  
      - oval-def:EntityStateStringType (0..1)  
      - The domain_name element contains a string that represents a domain name that was collected from the DNS cache on the local system.  
    * - ttl  
      - oval-def:EntityStateIntType (0..1)  
      - The ttl element contains an integer that represents the time to live in seconds of the DNS cache entry.  
    * - ip_address  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - The ip_address element contains a string that represents an IP address associated with the specified domain name that was collected from the DNS cache on the local system. Note that the IP address can be IPv4 or IPv6.  
  
______________
  
.. _file_test:  
  
< file_test >  
---------------------------------------------------------
The file test is used to check metadata associated with UNIX files, of the sort returned by either an ls command, stat command or stat() system call. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a file_object and the optional state element specifies the metadata to check.

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
  
.. _file_object:  
  
< file_object >  
---------------------------------------------------------
The file_object element is used by a file test to define the specific file(s) to be evaluated. The file_object will collect all UNIX file types (directory, regular file, character device, block device, fifo, symbolic link, and socket). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A file object defines the path and filename of the file(s). In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileBehaviors complex type for more information about specific behaviors.

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
      - unix-def:FileBehaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _file_state:  
  
< file_state >  
---------------------------------------------------------
The file_state element defines the different metadata associate with a UNIX file. This includes the path, filename, type, group id, user id, size, etc. In addition, the permission associated with the file are also included. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The name of the file.  
    * - type  
      - oval-def:EntityStateStringType (0..1)  
      - This is the file's type: regular file (regular), directory, named pipe (fifo), symbolic link, socket or block special.  
    * - group_id  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The group_id entity represents the group owner of a file, by group number.  
    * - user_id  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. This element represents the owner of the file.  
    * - a_time  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This is the time that the file was last accessed, in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.  
    * - c_time  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This is the time of the last change to the file's inode, in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970. An inode is a Unix data structure that stores all of the information about a particular file.  
    * - m_time  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This is the time of the last change to the file's contents, in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.  
    * - size  
      - oval-def:EntityStateIntType (0..1)  
      - This is the size of the file in bytes.  
    * - suid  
      - oval-def:EntityStateBoolType (0..1)  
      - Does the program run with the uid (thus privileges) of the file's owner, rather than the calling user?  
    * - sgid  
      - oval-def:EntityStateBoolType (0..1)  
      - Does the program run with the gid (thus privileges) of the file's group owner, rather than the calling user's group?  
    * - sticky  
      - oval-def:EntityStateBoolType (0..1)  
      - Can users delete each other's files in this directory, when said directory is writable by those users?  
    * - uread  
      - oval-def:EntityStateBoolType (0..1)  
      - Can the owner (user owner) of the file read this file or, if a directory, read the directory contents?  
    * - uwrite  
      - oval-def:EntityStateBoolType (0..1)  
      - Can the owner (user owner) of the file write to this file or, if a directory, write to the directory?  
    * - uexec  
      - oval-def:EntityStateBoolType (0..1)  
      - Can the owner (user owner) of the file execute it or, if a directory, change into the directory?  
    * - gread  
      - oval-def:EntityStateBoolType (0..1)  
      - Can the group owner of the file read this file or, if a directory, read the directory contents?  
    * - gwrite  
      - oval-def:EntityStateBoolType (0..1)  
      - Can the group owner of the file write to this file or, if a directory, write to the directory?  
    * - gexec  
      - oval-def:EntityStateBoolType (0..1)  
      - Can the group owner of the file execute it or, if a directory, change into the directory?  
    * - oread  
      - oval-def:EntityStateBoolType (0..1)  
      - Can all other users read this file or, if a directory, read the directory contents?  
    * - owrite  
      - oval-def:EntityStateBoolType (0..1)  
      - Can the other users write to this file or, if a directory, write to the directory?  
    * - oexec  
      - oval-def:EntityStateBoolType (0..1)  
      - Can the other users execute this file or, if a directory, change into the directory?  
    * - has_extended_acl  
      - oval-def:EntityStateBoolType (0..1)  
      - Does the file or directory have ACL permissions applied to it? If the file or directory doesn't have an ACL, or it matches the standard UNIX permissions, the value will be 'false'. Otherwise, if a file or directory has an ACL, the value will be 'true'.  
  
.. _FileBehaviors:  
  
== FileBehaviors ==  
---------------------------------------------------------
The FileBehaviors complex type defines a number of behaviors that allow a more detailed definition of the file_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

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
      - Restriction of xsd:string (optional *default*='symlinks and directories') ('~~none~~', '~~files~~', 'directories', '~~files and directories~~', 'symlinks', 'symlinks and directories')  
      - 'recurse' defines how to recurse into the path entity, in other words what to follow during recursion. Options include symlinks, directories, or both. Note that a max-depth other than 0 has to be specified for recursion to take place and for this attribute to mean anything.  
Note that this behavior only applies with the equality operation on the path entity.  
    * - recurse_direction  
      - Restriction of xsd:string (optional *default*='none') ('none', 'up', 'down')  
      - 'recurse_direction' defines the direction to recurse, either 'up' to parent directories, or 'down' into child directories. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the path entity.  
    * - recurse_file_system  
      - Restriction of xsd:string (optional *default*='all') ('all', 'local', 'defined')  
      - 'recurse_file_system' defines the file system limitation of any searching and applies to all operations as specified on the path or filepath entity. The value of 'local' limits the search scope to local file systems (as opposed to file systems mounted from an external system). The value of 'defined' keeps any recursion within the file system that the file_object (path+filename or filepath) has specified. For example, if the path specified was "/", you would search only the filesystem mounted there, not other filesystems mounted to descendant paths. The value of 'defined' only applies when an equality operation is used for searching because the path or filepath entity must explicitly define a file system. The default value is 'all' meaning to search all available file systems for data collection.  
Note that in most cases it is recommended that the value of 'local' be used to ensure that file system searching is limited to only the local file systems. Searching 'all' file systems may have performance implications.  
  
  
______________
  
.. _fileextendedattribute_test:  
  
< fileextendedattribute_test >  
---------------------------------------------------------
The file extended attribute test is used to check extended attribute values associated with UNIX files, of the sort returned by the getfattr command or getxattr() system call. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a fileextendedattribute_object and the optional state element specifies the extended attributes to check.

NOTE: Solaris has a very different implementation of "extended attributes" in which the attributes are really an orthogonal directory hierarchy of files. See the Solaris documentation for more details. The file extended attribute test only handles simple name/value pairs as implemented by most other UNIX derived operating systems.

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
  
.. _fileextendedattribute_object:  
  
< fileextendedattribute_object >  
---------------------------------------------------------
The fileextendedattribute_object element is used by a file extended attribute test to define the specific file(s) and attribute(s) to be evaluated. The fileextendedattribute_object will collect all UNIX file types (directory, regular file, character device, block device, fifo, symbolic link, and socket). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A file extended attribute object defines the path, filename and attribute name. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileExtendedAttributeBehaviors complex type for more information about specific behaviors.

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
      - unix-def:FileBehaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path.  
    * - attribute_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The attribute_name element specifies the name of an extended attribute to evaluate.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _fileextendedattribute_state:  
  
< fileextendedattribute_state >  
---------------------------------------------------------
The fileextendedattribute_state element defines an extended attribute associated with a UNIX file. This includes the path, filename, attribute name, and attribute value.

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
      - The filepath element specifies the absolute path for a file on the machine. A directory can be specified as a filepath.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the file.  
    * - attribute_name  
      - oval-def:EntityStateStringType (0..1)  
      - This is the extended attribute's name, identifier or key.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value entity represents the extended attribute's value or contents. To test for an attribute with no value assigned to it, this entity would be used with an empty value.  
  
______________
  
.. _gconf_test:  
  
< gconf_test >  
---------------------------------------------------------
The gconf_test is used to check the attributes and value(s) associated with GConf preference keys. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a gconf_object and the optional gconf_state element specifies the data to check.

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
  
.. _gconf_object:  
  
< gconf_object >  
---------------------------------------------------------
The gconf_object element is used by a gconf_test to define the preference keys to collect and the sources from which to collect the preference keys. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - key  
      - oval-def:EntityObjectStringType (1..1)  
      - This is the preference key to check.  
    * - source  
      - oval-def:EntityObjectStringType (1..1)  
      - The source element specifies the source from which to collect the preference key. The source is represented by the absolute path to a GConf XML file as XML is the current backend for GConf. Note that other backends may become available in the future. If the xsi:nil attribute is set to 'true', the preference key is looked up using the GConf daemon. Otherwise, the preference key is looked up using the values specified in this entity.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _gconf_state:  
  
< gconf_state >  
---------------------------------------------------------
The gconf_state element defines the different information that can be used to evaluate the specified GConf preference key. This includes the preference key, source, type, whether it's writable, the user who last modified it, the time it was last modified, whether it's the default value, as well as the preference key's value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - key  
      - oval-def:EntityStateStringType (0..1)  
      - The preference key to check.  
    * - source  
      - oval-def:EntityStateStringType (0..1)  
      - The source used to look up the preference key.  
    * - type  
      - unix-def:EntityStateGconfTypeType (0..1)  
      - The type of the preference key.  
    * - is_writable  
      - oval-def:EntityStateBoolType (0..1)  
      - Is the preference key writable? If true, the preference key is writable. If false, the preference key is not writable.  
    * - mod_user  
      - oval-def:EntityStateStringType (0..1)  
      - The user who last modified the preference key.  
    * - mod_time  
      - oval-def:EntityStateIntType (0..1)  
      - The time the preference key was last modified in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.  
    * - is_default  
      - oval-def:EntityStateBoolType (0..1)  
      - Is the preference key value the default value. If true, the preference key value is the default value. If false, the preference key value is not the default value.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the preference key.  
  
______________
  
.. _inetd_test:  
  
< inetd_test >  
---------------------------------------------------------
The inetd test is used to check information associated with different Internet services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an inetd_object and the optional state element specifies the information to check.

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
  
.. _inetd_object:  
  
< inetd_object >  
---------------------------------------------------------
The inetd_object element is used by an inetd test to define the specific protocol-service to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An inetd object consists of a protocol entity and a service_name entity that identifies the specific service to be tested.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - oval-def:EntityObjectStringType (1..1)  
      - A recognized protocol listed in the file /etc/inet/protocols.  
    * - service_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a valid service listed in the services file. For RPC services, the value of the service-name field consists of the RPC service name or program number, followed by a '/' (slash) and either a version number or a range of version numbers (for example, rstatd/2-4).  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _inetd_state:  
  
< inetd_state >  
---------------------------------------------------------
The inetd_state element defines the different information associated with a specific Internet service. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - oval-def:EntityStateStringType (0..1)  
      - A recognized protocol listed in the file /etc/inet/protocols.  
    * - service_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of a valid service listed in the services file. For RPC services, the value of the service-name field consists of the RPC service name or program number, followed by a '/' (slash) and either a version number or a range of version numbers (for example, rstatd/2-4).  
    * - server_program  
      - oval-def:EntityStateStringType (0..1)  
      - Either the pathname of a server program to be invoked by inetd to perform the requested service, or the value internal if inetd itself provides the service.  
    * - server_arguments  
      - oval-def:EntityStateStringType (0..1)  
      - The arguments for running the service. These are either passed to the server program invoked by inetd, or used to configure a service provided by inetd. In the case of server programs, the arguments shall begin with argv[0], which is typically the name of the program. In the case of a service provided by inted, the first argument shall be the word "internal".  
    * - endpoint_type  
      - unix-def:EntityStateEndpointType (0..1)  
      - The endpoint type (aka, socket type) associated with the service.  
    * - exec_as_user  
      - oval-def:EntityStateStringType (0..1)  
      - The user id of the user the server program should run under. (This allows for running with less permission than root.)  
    * - wait_status  
      - unix-def:EntityStateWaitStatusType (0..1)  
      - This field has values wait or nowait. This entry specifies whether the server that is invoked by inetd will take over the listening socket associated with the service, and whether once launched, inetd will wait for that server to exit, if ever, before it resumes listening for new service requests.  
  
______________
  
.. _interface_test:  
  
< interface_test >  
---------------------------------------------------------
The interface test enumerates various attributes about the interfaces on a system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an interface_object and the optional state element specifies the interface information to check.

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
  
.. _interface_object:  
  
< interface_object >  
---------------------------------------------------------
The interface_object element is used by an interface test to define the specific interfaces(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An interface object consists of a single name entity that identifies which interface is being specified.

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
      - The name element is the interface (eth0, eth1, fw0, etc.) name to check.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _interface_state:  
  
< interface_state >  
---------------------------------------------------------
The interface_state element enumerates the different properties associate with a Unix interface. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The name element is the interface (eth0, eth1, fw0, etc.) name to check.  
    * - type  
      - unix-def:EntityStateInterfaceType (0..1)  
      - The type element specifies the type of interface.  
    * - hardware_addr  
      - oval-def:EntityStateStringType (0..1)  
      - The hardware_addr element is the hardware or MAC address of the physical network card. MAC addresses should be formatted according to the IEEE 802-2001 standard which states that a MAC address is a sequence of six octet values, separated by hyphens, where each octet is represented by two hexadecimal digits. Uppercase letters should also be used to represent the hexadecimal digits A through F.  
    * - inet_addr  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - This is the IP address of the interface. Note that the IP address can be IPv4 or IPv6. If the IP address is an IPv6 address, this entity will be expressed as an IPv6 address prefix using CIDR notation and the netmask entity will not be collected.  
    * - broadcast_addr  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - This is the broadcast IP address for this interface's network. Note that the IP address can be IPv4 or IPv6.  
    * - netmask  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - This is the bitmask used to calculate the interface's IP network. The network number is calculated by bitwise-ANDing this with the IP address. The host number on that network is calculated by bitwise-XORing this with the IP address. Note that if the inet_addr entity contains an IPv6 address prefix, this entity will not be collected.  
    * - flag  
      - oval-def:EntityStateStringType (0..1)  
      - The flag entity represents the interface flag line, which generally contains flags like "UP" to denote an active interface, "PROMISC" to note that the interface is listening for Ethernet frames not specifically addressed to it, and others. This element can be included multiple times in a system characteristic item in order to record a multitude of flags. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like this that refer to items that can occur an unbounded number of times.  
  
______________
  
.. _password_test:  
  
< password_test >  
---------------------------------------------------------
/etc/passwd. See passwd(4).

The password test is used to check metadata associated with the UNIX password file, of the sort returned by the passwd command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a password_object and the optional state element specifies the metadata to check.

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
  
.. _password_object:  
  
< password_object >  
---------------------------------------------------------
The password_object element is used by a password test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A password object consists of a single username entity that identifies the user(s) whose password is to be evaluated.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - username  
      - oval-def:EntityObjectStringType (1..1)  
      - The user(s) account whose password is to be evaluated.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _password_state:  
  
< password_state >  
---------------------------------------------------------
The password_state element defines the different information associated with the system passwords. Please refer to the individual elements in the schema for more details about what each represents.

See documentation on /etc/passwd for more details on the fields.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - username  
      - oval-def:EntityStateStringType (0..1)  
      - The UNIX account name.  
    * - password  
      - oval-def:EntityStateStringType (0..1)  
      - This is the encrypted version of the user's password.  
    * - user_id  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd.  
    * - group_id  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The id of the primary UNIX group the user belongs to.  
    * - gcos  
      - oval-def:EntityStateStringType (0..1)  
      - The GECOS (or GCOS) field from /etc/passwd; typically contains the user's full name.  
    * - home_dir  
      - oval-def:EntityStateStringType (0..1)  
      - The user's home directory.  
    * - login_shell  
      - oval-def:EntityStateStringType (0..1)  
      - The user's shell program.  
    * - last_login  
      - oval-def:EntityStateIntType (0..1)  
      - The date and time when the last login occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, UTC.  
  
______________
  
.. _process_test:  
  
< process_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: The process_test has been deprecated and replaced by the process58_test. The command line of a process cannot be used to uniquely identify a process. As a result, the pid entity was added to the process58_object. Please see the process58_test for additional information.  
  
The process test is used to check information found in the UNIX processes. It is equivalent to parsing the output of the ps command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a process_object and the optional state element specifies the process information to check.

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
  
.. _process_object:  
  
< process_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: The process_object has been deprecated and replaced by the process58_object. The command line of a process cannot be used to uniquely identify a process. As a result, the pid entity was added to the process58_object. Please see the process58_object for additional information.  
  
The process_object element is used by a process test to define the specific process(es) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A process object defines the command line used to start the process(es).

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - command  
      - oval-def:EntityObjectStringType (1..1)  
      - The command element specifies the command/program name to check.  
  
.. _process_state:  
  
< process_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: The process_state has been deprecated and replaced by the process58_state. The command line of a process cannot be used to uniquely identify a process. As a result, the pid entity was added to the process58_object. Please see the process58_state for additional information.  
  
The process_state element defines the different metadata associated with a UNIX process. This includes the command line, pid, ppid, priority, and user id. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - command  
      - oval-def:EntityStateStringType (0..1)  
      - The command element specifies the command/program name to check.  
    * - exec_time  
      - oval-def:EntityStateStringType (0..1)  
      - This is the cumulative CPU time, formatted in [DD-]HH:MM:SS where DD is the number of days when execution time is 24 hours or more.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - This is the process ID of the process.  
    * - ppid  
      - oval-def:EntityStateIntType (0..1)  
      - This is the process ID of the process's parent process.  
    * - priority  
      - oval-def:EntityStateIntType (0..1)  
      - This is the scheduling priority with which the process runs. This can be adjusted with the nice command or nice() system call.  
    * - ruid  
      - oval-def:EntityStateIntType (0..1)  
      - This is the real user id which represents the user who has created the process.  
    * - scheduling_class  
      - oval-def:EntityStateStringType (0..1)  
      - A platform specific characteristic maintained by the scheduler: RT (real-time), TS (timeshare), FF (fifo), SYS (system), etc.  
    * - start_time  
      - oval-def:EntityStateStringType (0..1)  
      - This is the time of day the process started formatted in HH:MM:SS if the same day the process started or formatted as MMM_DD (Ex.: Feb_5) if process started the previous day or further in the past.  
    * - tty  
      - oval-def:EntityStateStringType (0..1)  
      - This is the TTY on which the process was started, if applicable.  
    * - user_id  
      - oval-def:EntityStateIntType (0..1)  
      - This is the effective user id which represents the actual privileges of the process.  
  
______________
  
.. _process58_test:  
  
< process58_test >  
---------------------------------------------------------
The process58_test is used to check information found in the UNIX processes. It is equivalent to parsing the output of the ps command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a process58_object and the optional state element references a process58_state that specifies the process information to check.

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
  
.. _process58_object:  
  
< process58_object >  
---------------------------------------------------------
The process58_object element is used by a process58_test to define the specific process(es) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A process58_object defines the command line used to start the process(es) and pid.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - command_line  
      - oval-def:EntityObjectStringType (1..1)  
      - The command_line entity is the string used to start the process. This includes any parameters that are part of the command line.  
    * - pid  
      - oval-def:EntityObjectIntType (1..1)  
      - The pid entity is the process ID of the process.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _process58_state:  
  
< process58_state >  
---------------------------------------------------------
The process58_state element defines the different metadata associated with a UNIX process. This includes the command line, pid, ppid, priority, and user id. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - command_line  
      - oval-def:EntityStateStringType (0..1)  
      - This is the string used to start the process. This includes any parameters that are part of the command line.  
    * - exec_time  
      - oval-def:EntityStateStringType (0..1)  
      - This is the cumulative CPU time, formatted in [DD-]HH:MM:SS where DD is the number of days when execution time is 24 hours or more.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - This is the process ID of the process.  
    * - ppid  
      - oval-def:EntityStateIntType (0..1)  
      - This is the process ID of the process's parent process.  
    * - priority  
      - oval-def:EntityStateIntType (0..1)  
      - This is the scheduling priority with which the process runs. This can be adjusted with the nice command or nice() system call.  
    * - ruid  
      - oval-def:EntityStateIntType (0..1)  
      - This is the real user id which represents the user who has created the process.  
    * - scheduling_class  
      - oval-def:EntityStateStringType (0..1)  
      - A platform specific characteristic maintained by the scheduler: RT (real-time), TS (timeshare), FF (fifo), SYS (system), etc.  
    * - start_time  
      - oval-def:EntityStateStringType (0..1)  
      - This is the time of day the process started formatted in HH:MM:SS if the same day the process started or formatted as MMM_DD (Ex.: Feb_5) if process started the previous day or further in the past.  
    * - tty  
      - oval-def:EntityStateStringType (0..1)  
      - This is the TTY on which the process was started, if applicable.  
    * - user_id  
      - oval-def:EntityStateIntType (0..1)  
      - This is the effective user id which represents the actual privileges of the process.  
    * - exec_shield  
      - oval-def:EntityStateBoolType (0..1)  
      - A boolean that when true would indicates that ExecShield is enabled for the process. Applicable only to RedHat-based Linux distros, an example script demonstrating the collection of this entity can be found at http://people.redhat.com/sgrubb/files/lsexec  
    * - loginuid  
      - oval-def:EntityStateIntType (0..1)  
      - The loginuid shows which account a user gained access to the system with. The /proc/XXXX/loginuid shows this value.  
    * - posix_capability  
      - unix-def:EntityStateCapabilityType (0..1)  
      - An effective capability associated with the process. See linux/include/linux/capability.h for more information.  
    * - selinux_domain_label  
      - oval-def:EntityStateStringType (0..1)  
      - An selinux domain label associated with the process.  
    * - session_id  
      - oval-def:EntityStateIntType (0..1)  
      - The session ID of the process.  
  
______________
  
.. _routingtable_test:  
  
< routingtable_test >  
---------------------------------------------------------
The routingtable_test is used to check information about the IPv4 and IPv6 routing table entries found in a system's primary routing table. It is important to note that only numerical addresses will be collected and that their symbolic representations will not be resolved. This equivalent to using the '-n' option with route(8) or netstat(8). It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a routingtable_object and the optional routingtable_state element specifies the data to check.

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
  
.. _routingtable_object:  
  
< routingtable_object >  
---------------------------------------------------------
The routingtable_object element is used by a routingtable_test to define the destination IP address(es), found in a system's primary routing table, to collect. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - destination  
      - oval-def:EntityObjectIPAddressType (1..1)  
      - This is the destination IP address of the routing table entry to check.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _routingtable_state:  
  
< routingtable_state >  
---------------------------------------------------------
The routingtable_state element defines the different information that can be used to check an entry found in a system's primary routing table. This includes the destination IP address, gateway, netmask, flags, and the name of the interface associated with it. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - destination  
      - oval-def:EntityStateIPAddressType (0..1)  
      - The destination IP address prefix of the routing table entry. This is the destination IP address and netmask/prefix-length expressed using CIDR notation.  
    * - gateway  
      - oval-def:EntityStateIPAddressType (0..1)  
      - The gateway of the specified routing table entry.  
    * - flags  
      - unix-def:EntityStateRoutingTableFlagsType (0..1)  
      - The flags associated with the specified routing table entry.  
    * - interface_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the interface associated with the routing table entry.  
  
______________
  
.. _runlevel_test:  
  
< runlevel_test >  
---------------------------------------------------------
The runlevel test is used to check information about which runlevel specified services are scheduled to exist at. For more information see the output generated by a chkconfig --list. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a runlevel_object and the optional state element specifies the data to check.

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
  
.. _runlevel_object:  
  
< runlevel_object >  
---------------------------------------------------------
The runlevel_object element is used by a runlevel_test to define the specific service(s)/runlevel combination to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - service_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The service_name entity refers to the name associated with a service. This name is usually the filename of the script file located in the /etc/init.d directory.  
    * - runlevel  
      - oval-def:EntityObjectStringType (1..1)  
      - The system runlevel to examine. A runlevel is defined as a software configuration of the system that allows only a selected group of processes to exist.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _runlevel_state:  
  
< runlevel_state >  
---------------------------------------------------------
The runlevel_state element holds information about whether a specific service is scheduled to start or stop at a given runlevel. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - service_name  
      - oval-def:EntityStateStringType (0..1)  
      - The service_name entity refers the name associated with a service. This name is usually the filename of the script file located in the /etc/init.d directory.  
    * - runlevel  
      - oval-def:EntityStateStringType (0..1)  
      - The runlevel entity refers to the system runlevel associated with a service. A runlevel is defined as a software configuration of the system that allows only a selected group of processes to exist.  
    * - start  
      - oval-def:EntityStateBoolType (0..1)  
      - The start entity determines if the process is scheduled to be spawned at the specified runlevel.  
    * - kill  
      - oval-def:EntityStateBoolType (0..1)  
      - The kill entity determines if the process is supposed to be killed at the specified runlevel.  
  
______________
  
.. _sccs_test:  
  
< sccs_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: The sccs_test has been deprecated because the Source Code Control System (SCCS) is obsolete.  The sccs_test may be removed in a future version of the language.  
  


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
  
.. _sccs_object:  
  
< sccs_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: The sccs_object has been deprecated because the Source Code Control System (SCCS) is obsolete.  The sccs_object may be removed in a future version of the language.  
  
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
      - unix-def:FileBehaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to an SCCS file.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of an SCCS file.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sccs_state:  
  
< sccs_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: The sccs_state has been deprecated because the Source Code Control System (SCCS) is obsolete.  The sccs_state may be removed in a future version of the language.  
  


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
      - The path element specifies the directory component of the absolute path to an SCCS file.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - This is the name of a SCCS file.  
    * - module_name  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - module_type  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - release  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - level  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - branch  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - sequence  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - what_string  
      - oval-def:EntityStateStringType (0..1)  
      -   
  
______________
  
.. _shadow_test:  
  
< shadow_test >  
---------------------------------------------------------
The shadow test is used to check information from the /etc/shadow file for a specific user. This file contains a user's password, but also their password aging and lockout information. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an shadow_object and the optional state element specifies the information to check.

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
  
.. _shadow_object:  
  
< shadow_object >  
---------------------------------------------------------
The shadow_object element is used by a shadow test to define the shadow file to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A shdow object consists of a single user entity that identifies the username associted with the shadow file.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - username  
      - oval-def:EntityObjectStringType (1..1)  
      -   
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _shadow_state:  
  
< shadow_state >  
---------------------------------------------------------
The shadows_state element defines the different information associated with the system shadow file. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - username  
      - oval-def:EntityStateStringType (0..1)  
      - This is the name of the user being checked.  
    * - password  
      - oval-def:EntityStateStringType (0..1)  
      - This is the encrypted version of the user's password.  
    * - chg_lst  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This is the date of the last password change in days since 1/1/1970.  
    * - chg_allow  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This specifies how often in days a user may change their password. It can also be thought of as the minimum age of a password.  
    * - chg_req  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This describes how long the user can keep a password before the system forces them to change it.  
    * - exp_warn  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This describes how long before password expiration the system begins warning the user. The system will warn the user at each login.  
    * - exp_inact  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The exp_inact entity describes how many days of account inactivity the system will wait after a password expires before locking the account. Unix systems are generally configured to only allow a given password to last for a fixed period of time. When this time, the chg_req parameter, is near running out, the system begins warning the user at each login. How soon before the expiration the user receives these warnings is specified in exp_warn. The only hiccup in this design is that a user may not login in time to ever receive a warning before account expiration. The exp_inact parameter gives the sysadmin flexibility so that a user who reaches the end of their expiration time gains exp_inact more days to login and change their password manually.  
    * - exp_date  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This specifies when will the account's password expire, in days since 1/1/1970.  
    * - flag  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This is a numeric reserved field that the shadow file may use in the future.  
    * - encrypt_method  
      - unix-def:EntityStateEncryptMethodType (0..1)  
      - The encrypt_method entity describes method that is used for hashing passwords.  
  
______________
  
.. _symlink_test:  
  
< symlink_test >  
---------------------------------------------------------
The symlink_test is used to obtain canonical path information for symbolic links.

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
  
.. _symlink_object:  
  
< symlink_object >  
---------------------------------------------------------
The symlink_object element is used by a symlink_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A symlink_object consists of a filepath entity that contains the path to a symbolic link file. The resulting item identifies the canonical path of the link target (followed to its final destination, if there are intermediate links), an error if the link target does not exist or is a circular link (e.g., a link to itself). If the file located at filepath is not a symlink, or if there is no file located at the filepath, then any resulting item would itself have a status of does not exist.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the filepath for the symbolic link.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _symlink_state:  
  
< symlink_state >  
---------------------------------------------------------
The symlink_state element defines a value used to evaluate the result of a specific symlink_object item.

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
      - Specifies the filepath used to create the object.  
    * - canonical_path  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the canonical path for the target of a symbolic link file specified by the filepath.  
  
______________
  
.. _sysctl_test:  
  
< sysctl_test >  
---------------------------------------------------------
The sysctl_test is used to check the values associated with the kernel parameters that are used by the local system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sysctl_object and the optional state element references a sysctl_state that specifies the information to check.

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
  
.. _sysctl_object:  
  
< sysctl_object >  
---------------------------------------------------------
The sysctl_object is used by a sysctl_test to define which kernel parameters on the local system should be collected. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The name element specifies the name(s) of the kernel parameter(s) that should be collected from the local system.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sysctl_state:  
  
< sysctl_state >  
---------------------------------------------------------
The sysctl_state contains two entities that are used to check the kernel parameter name and value(s).

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
      - The name element contains a string that represents the name of a kernel parameter that was collected from the local system.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value element contains a string that represents the value(s) associated with the specified kernel parameter.  
  
______________
  
.. _uname_test:  
  
< uname_test >  
---------------------------------------------------------
The uname test reveals information about the hardware the machine is running on. This information is the parsed equivalent of uname -a. For example: "Linux quark 2.6.5-7.108-default #1 Wed Aug 25 13:34:40 UTC 2004 i686 i686 i386 GNU/Linux" or "Darwin TestHost 7.7.0 Darwin Kernel Version 7.7.0: Sun Nov 7 16:06:51 PST 2004; root:xnu/xnu-517.9.5.obj~1/RELEASE_PPC Power Macintosh powerpc". It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a uname_object and the optional state element specifies the metadata to check.

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
  
.. _uname_object:  
  
< uname_object >  
---------------------------------------------------------
The uname_object element is used by an uname test to define those objects to evaluated based on a specified state. There is actually only one object relating to uname and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check uname will reference the same uname_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _uname_state:  
  
< uname_state >  
---------------------------------------------------------
The uname_state element defines the information about the hardware the machine is running one. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - machine_class  
      - oval-def:EntityStateStringType (0..1)  
      - This entity specifies a machine hardware name. This corresponds to the command uname -m.  
    * - node_name  
      - oval-def:EntityStateStringType (0..1)  
      - This entity specifies a host name. This corresponds to the command uname -n.  
    * - os_name  
      - oval-def:EntityStateStringType (0..1)  
      - This entity specifies an operating system name. This corresponds to the command uname -s.  
    * - os_release  
      - oval-def:EntityStateStringType (0..1)  
      - This entity specifies a build version. This corresponds to the command uname -r.  
    * - os_version  
      - oval-def:EntityStateStringType (0..1)  
      - This entity specifies an operating system version. This corresponds to the command uname -v.  
    * - processor_type  
      - oval-def:EntityStateStringType (0..1)  
      - This entity specifies a processor type. This corresponds to the command uname -p.  
  
______________
  
.. _xinetd_test:  
  
< xinetd_test >  
---------------------------------------------------------
The xinetd test is used to check information associated with different Internet services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an inetd_object and the optional state element specifies the information to check.

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
  
.. _xinetd_object:  
  
< xinetd_object >  
---------------------------------------------------------
The xinetd_object element is used by an xinetd test to define the specific protocol-service to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An xinetd object consists of a protocol entity and a service_name entity that identifies the specific service to be tested.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - oval-def:EntityObjectStringType (1..1)  
      - The protocol entity specifies the protocol that is used by the service. The list of valid protocols can be found in /etc/protocols.  
    * - service_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The service_name entity specifies the name of the service.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _xinetd_state:  
  
< xinetd_state >  
---------------------------------------------------------
The xinetd_state element defines the different information associated with a specific Internet service. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - oval-def:EntityStateStringType (0..1)  
      - The protocol entity specifies the protocol that is used by the service. The list of valid protocols can be found in /etc/protocols.  
    * - service_name  
      - oval-def:EntityStateStringType (0..1)  
      - The service_name entity specifies the name of the service.  
    * - flags  
      - oval-def:EntityStateStringType (0..1)  
      - The flags entity specifies miscellaneous settings associated with the service.  
    * - no_access  
      - oval-def:EntityStateStringType (0..1)  
      - The no_access entity specifies the remote hosts to which the service is unavailable. Please see the xinetd.conf(5) man page for information on the different formats that can be used to describe a host.  
    * - only_from  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - The only_from entity specifies the remote hosts to which the service is available. Please see the xinetd.conf(5) man page for information on the different formats that can be used to describe a host.  
    * - port  
      - oval-def:EntityStateIntType (0..1)  
      - The port entity specifies the port used by the service.  
    * - server  
      - oval-def:EntityStateStringType (0..1)  
      - The server entity specifies the executable that is used to launch the service.  
    * - server_arguments  
      - oval-def:EntityStateStringType (0..1)  
      - The server_arguments entity specifies the arguments that are passed to the executable when launching the service.  
    * - socket_type  
      - oval-def:EntityStateStringType (0..1)  
      - The socket_type entity specifies the type of socket that is used by the service. Possible values include: stream, dgram, raw, or seqpacket.  
    * - type  
      - unix-def:EntityStateXinetdTypeStatusType (0..1)  
      - The type entity specifies the type of the service. A service may have multiple types.  
    * - user  
      - oval-def:EntityStateStringType (0..1)  
      - The user entity specifies the user identifier of the process that is running the service. The user identifier may be expressed as a numerical value or as a user name that exists in /etc/passwd.  
    * - wait  
      - oval-def:EntityStateBoolType (0..1)  
      - The wait entity specifies whether or not the service is single-threaded or multi-threaded and whether or not xinetd accepts the connection or the service accepts the connection. A value of 'true' indicates that the service is single-threaded and the service will accept the connection. A value of 'false' indicates that the service is multi-threaded and xinetd will accept the connection.  
    * - disabled  
      - oval-def:EntityStateBoolType (0..1)  
      - The disabled entity specifies whether or not the service is disabled. A value of 'true' indicates that the service is disabled and will not start. A value of 'false' indicates that the service is not disabled.  
  
.. _EntityStateCapabilityType:  
  
== EntityStateCapabilityType ==  
---------------------------------------------------------
The EntityStateCapabilityType complex type restricts a string value to a specific set of values that describe POSIX capability types associated with a process service. This list is based off the values defined in linux/include/linux/capability.h. Documentation on each allowed value can be found in capability.h. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
  
.. _EntityStateEndpointType:  
  
== EntityStateEndpointType ==  
---------------------------------------------------------
The EntityStateEndpointType complex type restricts a string value to a specific set of values that describe endpoint types associated with an Internet service. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateGconfTypeType:  
  
== EntityStateGconfTypeType ==  
---------------------------------------------------------
The EntityStateGconfTypeType complex type restricts a string value to the seven values GCONF_VALUE_STRING, GCONF_VALUE_INT, GCONF_VALUE_FLOAT, GCONF_VALUE_BOOL, GCONF_VALUE_SCHEMA, GCONF_VALUE_LIST, and GCONF_VALUE_PAIR that specify the datatype of the value associated with a GConf preference key. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateRoutingTableFlagsType:  
  
== EntityStateRoutingTableFlagsType ==  
---------------------------------------------------------
The EntityStateRoutingTableFlagsType complex type restricts a string value to a specific set of values that describe the flags associated with a routing table entry. This list is based off the values defined in the man pages of various platforms. For Linux, please see route(8). For Solaris, please see netstat(1M). For HP-UX, please see netstat(1). For Mac OS, please see netstat(1). For FreeBSD, please see netstat(1). Documentation on each allowed value can be found in the previously listed man pages. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
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

.. _EntityStateXinetdTypeStatusType:  
  
== EntityStateXinetdTypeStatusType ==  
---------------------------------------------------------
The EntityStateXinetdTypeStatusType complex type restricts a string value to five values, either RPC, INTERNAL, UNLISTED, TCPMUX, or TCPMUXPLUS that specify the type of service registered in xinetd. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateWaitStatusType:  
  
== EntityStateWaitStatusType ==  
---------------------------------------------------------
The EntityStateWaitStatusType complex type restricts a string value to two values, either wait or nowait, that specify whether the server that is invoked by inetd will take over the listening socket associated with the service, and whether once launched, inetd will wait for that server to exit, if ever, before it resumes listening for new service requests. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - wait  
      - | The value of 'wait' specifies that the server that is invoked by inetd will take over the listening socket associated with the service, and once launched, inetd will wait for that server to exit, if ever, before it resumes listening for new service requests.  
    * - nowait  
      - | The value of 'nowait' specifies that the server that is invoked by inetd will not wait for any existing server to finish before taking over the listening socket associated with the service.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateEncryptMethodType:  
  
== EntityStateEncryptMethodType ==  
---------------------------------------------------------
The EntityStateEncryptMethodType complex type restricts a string value to a set that corresponds to the allowed encrypt methods used for protected passwords in a shadow file. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
  
.. _EntityStateInterfaceType:  
  
== EntityStateInterfaceType ==  
---------------------------------------------------------
The EntityStateInterfaceType complex type restricts a string value to a specific set of values. These values describe the different interface types which are defined in 'if_arp.h'. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
