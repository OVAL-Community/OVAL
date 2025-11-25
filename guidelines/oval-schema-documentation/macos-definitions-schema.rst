Open Vulnerability and Assessment Language: MacOS Definition  
=========================================================
* Schema: MacOS Definition  
* Version: 5.12.2  
* Release Date: 11/25/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the MacOS specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The MacOS Definition Schema was initially developed by The Center for Internet Security. Many thanks to their contributions to OVAL and the security community.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`accountinfo_test`  
* :ref:`authorizationdb_test`  
* :ref:`corestorage_test` (Deprecated)  
* :ref:`disabledservice_test`  
* :ref:`diskinfo_test`  
* :ref:`diskutil_test` (Deprecated)  
* :ref:`filevault_test`  
* :ref:`firmwarepassword_test`  
* :ref:`gatekeeper_test`  
* :ref:`inetlisteningservers_test` (Deprecated)  
* :ref:`inetlisteningserver510_test` (Deprecated)  
* :ref:`installhistory_test`  
* :ref:`keychain_test`  
* :ref:`launchd_test`  
* :ref:`nvram_test` (Deprecated)  
* :ref:`nvram512_test`  
* :ref:`plist_test` (Deprecated)  
* :ref:`plist510_test` (Deprecated)  
* :ref:`plist511_test`  
* :ref:`profiles_test`  
* :ref:`pwpolicy_test` (Deprecated)  
* :ref:`pwpolicy59_test` (Deprecated)  
* :ref:`pwpolicy512_test`  
* :ref:`rlimit_test` (Deprecated)  
* :ref:`softwareupdate_test`  
* :ref:`systemprofiler_test`  
* :ref:`systemsetup_test`  
  
______________
  
.. _accountinfo_test:  
  
< accountinfo_test >  
---------------------------------------------------------
User account information (username, uid, gid, etc.) See netinfo(5) for field information, niutil(1) for retrieving it. As of Mac OS 10.5, niutil(1) is no longer available, however, the same functionality can be obtained using dscl(1). Specifically, the command 'dscl . -list /Users' can be used to list all users and the command 'dscl . -read /Users/some_user passwd uid gid realname home shell' can be used to retrieve the attributes associated with an account.

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
  
.. _accountinfo_object:  
  
< accountinfo_object >  
---------------------------------------------------------
The accountinfo_object element is used by an accountinfo_test to define the object(s) to be evaluated. This object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An accountinfo_object consists of a single username that identifies the account from which to gather information.

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
      - Specifies the user of the account to gather information from.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _accountinfo_state:  
  
< accountinfo_state >  
---------------------------------------------------------
The accountinfo_state element defines the different information that can be used to evaluate the specified accounts. Please refer to the individual elements in the schema for more details about what each represents.

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
      - Specifies the user of the account to gather information from.  
    * - password  
      - oval-def:EntityStateStringType (0..1)  
      - Obfuscated (*****) or encrypted password for this user.  
    * - uid  
      - oval-def:EntityStateIntType (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. This element represents the owner of the file.  
    * - gid  
      - oval-def:EntityStateIntType (0..1)  
      - Group ID of this account.  
    * - realname  
      - oval-def:EntityStateStringType (0..1)  
      - User's real name, aka gecos field of /etc/passwd.  
    * - home_dir  
      - oval-def:EntityStateStringType (0..1)  
      - The home directory for this user account.  
    * - login_shell  
      - oval-def:EntityStateStringType (0..1)  
      - The login shell for this user account.  
    * - generated_uid  
      - oval-def:EntityStateStringType (0..1)  
      - The generated UID for this user account. The UID is related to File Vault.  
  
______________
  
.. _authorizationdb_test:  
  
< authorizationdb_test >  
---------------------------------------------------------
The authorizationdb_test is used to check the properties of the plist-style XML output from the "security authorizationdb read >right-name<" command, for reading information about rights authorizations on MacOSX. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an authorizationdb_object and the optional state element specifies the data to check.

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
  
.. _authorizationdb_object:  
  
< authorizationdb_object >  
---------------------------------------------------------
The authorizationdb_object element is used by an authorizationdb_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An authorizationdb_object consists of a right_name entity that contains the name of the right to be read from the authorization dabatase. The resulting plist data can be queried using the xpath entity.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - right_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the right name to be queried (read) from the authorization database.  
    * - xpath  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at. Any valid Xpath 1.0 statement is usable with one exception, at most one field may be identified in the Xpath. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _authorizationdb_state:  
  
< authorizationdb_state >  
---------------------------------------------------------
The authorizationdb_state element defines a value used to evaluate the result of a specific authorizationdb_object item.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - right_name  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the right_name used to create the object.  
    * - xpath  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found.  
  
______________
  
.. _corestorage_test:  
  
< corestorage_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The corestorage_test is used to check the properties of the plist-style XML output from the "diskutil cs list -plist" command, for reading information about the CoreStorage setup on MacOSX. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an corestorage_object and the optional state element specifies the data to check.

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
  
.. _corestorage_object:  
  
< corestorage_object >  
---------------------------------------------------------
The corestorage_object element is used by an corestorage_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An corestorage_object consists of a uuid entity that contains the UUID of the volume whose information should be read (i.e., 'diskutil cs info -plist [UUID]'). The resulting plist data can be queried using the xpath entity.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - uuid  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the UUID of the volume about which the plist information should be retrieved.  
    * - xpath  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at. Any valid Xpath 1.0 statement is usable with one exception, at most one field may be identified in the Xpath. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _corestorage_state:  
  
< corestorage_state >  
---------------------------------------------------------
The corestorage_state element defines a value used to evaluate the result of a specific corestorage_object item.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - uuid  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the UUID of the volume about which the plist information was retrieved.  
    * - xpath  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found.  
  
______________
  
.. _disabledservice_test:  
  
< disabledservice_test >  
---------------------------------------------------------
The disabledservice_test is used to check the status of daemons/agents disabled via the launchd service, via the command 'launchctl print-disabled system'. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a disabledservice_object and the optional state element specifies the data to check.

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
  
.. _disabledservice_object:  
  
< disabledservice_object >  
---------------------------------------------------------
The disabledservice_object element is used by a disabledservice_test to define the service domain to be evaluated. It is a singleton object. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

.. _disabledservice_state:  
  
< disabledservice_state >  
---------------------------------------------------------
The disabledservice_state element defines a value used to evaluate the result of a specific disabledservice_object item.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - label  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the name of the service disabled in the domain.  
    * - disabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies the actual status of the service as indicated by the output of the 'launchctl print-disabled <domain>' command.  
  
______________
  
.. _diskinfo_test:  
  
< diskinfo_test >  
---------------------------------------------------------
The diskinfo_test is used to inspect the contents of 'diskutil info <device ID>' command output. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an diskinfo_object and the optional state element references an diskinfo_state that specifies the information to check.

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
  
.. _diskinfo_object:  
  
< diskinfo_object >  
---------------------------------------------------------
The diskinfo_object is used by an diskinfo_test to define the scope of disks on the local system that should be collected using the 'diskutil info <name>' command. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device_identifier  
      - oval-def:EntityObjectStringType (1..1)  
      - The device_identifier element specifies the name(s) of the disk whose information should be collected from the local system. Use a wildcard pattern to collect information for all disk devices.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _diskinfo_state:  
  
< diskinfo_state >  
---------------------------------------------------------
The diskinfo_state contains entities that are used to check against retrieved disk information.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device_identifier  
      - oval-def:EntityStateStringType (0..1)  
      - The device identifier.  
    * - volume_name  
      - oval-def:EntityStateStringType (0..1)  
      - The value of the volume name field (if any).  
    * - file_system_personality  
      - oval-def:EntityStateStringType (0..1)  
      - The value of the file system personality field (if any).  
    * - removable_media  
      - oval-def:EntityStateStringType (0..1)  
      - The value of the removable media field (if any).  
    * - device_location  
      - oval-def:EntityStateStringType (0..1)  
      - The value of the device location field (if any).  
    * - solid_state  
      - oval-def:EntityStateBoolType (0..1)  
      - The value of the solid state flag.  
    * - read_only  
      - oval-def:EntityStateBoolType (0..1)  
      - The value of the read-only volume flag.  
    * - file_vault  
      - oval-def:EntityStateBoolType (0..1)  
      - Whether or not FileVault is enabled on the disk.  
    * - mount_point  
      - oval-def:EntityStateStringType (0..1)  
      - The mount point for this disk (if any).  
    * - smart_status  
      - oval-def:EntityStateStringType (0..1)  
      - The value of the SMART status field (if any).  
    * - encrypted  
      - oval-def:EntityStateBoolType (0..1)  
      - The value of the encrypted status field (if any). This is typically present for external drives, not APFS drives with FileVault active (for which this field does not exist).  
    * - apfs_uid  
      - oval-def:EntityStateStringType (0..1)  
      - The value of an APFS userid (for non-APFS disks, this does not exist).  
  
______________
  
.. _diskutil_test:  
  
< diskutil_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2  
* Reason: The diskutil_test has been deprecated. The underlying capability was rendered obsolete in MacOS X 10.11 (El Capitan), and then removed altogether from the platform in MacOS X 10.12 (Sierra).  
  
The diskutil_test is used to verify packages on a Mac OS system. The information used by this test is modeled after the diskutil command's verifyPermissions option. On MacOS X 10.11 and later, this option was replaced by the repair_packages command. For more information, see diskutil(8) or repair_packages(8). It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a diskutil_object and the optional diskutil_state element specifies the data to check.

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
  
.. _diskutil_object:  
  
< diskutil_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2  
* Reason: The diskutil_object has been deprecated. The underlying capability was rendered obsolete in MacOS X 10.11 (El Capitan), and then removed altogether from the platform in MacOS X 10.12 (Sierra).  
  
The diskutil_object element is used by a diskutil_test to define the volumes containing packages to be verified on a Mac OS system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device  
      - oval-def:EntityObjectStringType (1..1)  
      - The device entity is a string that represents the name of a volume containing system packages that is mounted on a Mac OS system to verify. Please see diskutil(8) or repair_packages(8) for instructions on how to specify the volume.  
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file or directory in the specified package.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _diskutil_state:  
  
< diskutil_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2  
* Reason: The diskutil_state has been deprecated. The underlying capability was rendered obsolete in MacOS X 10.11 (El Capitan), and then removed altogether from the platform in MacOS X 10.12 (Sierra).  
  
The diskutil_state element defines the different verification information associated with a disk on a Mac OS system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device  
      - oval-def:EntityStateStringType (0..1)  
      - The device entity is a string that represents the volume on a Mac OS system to verify. Please see diskutil(8) or repair_packages(8) for instructions on how to specify the device.  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The filepath element specifies the absolute path for a file or directory on the specified device.  
    * - uread  
      - macos-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual user read permission changed from the expected user read permission?  
    * - uwrite  
      - macos-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual user write permission changed from the expected user write permission?  
    * - uexec  
      - macos-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual user exec permission changed from the expected user exec permission?  
    * - gread  
      - macos-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual group read permission changed from the expected group read permission?  
    * - gwrite  
      - macos-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual group write permission changed from the expected group write permission?  
    * - gexec  
      - macos-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual group exec permission changed from the expected group exec permission?  
    * - oread  
      - macos-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual others read permission changed from the expected others read permission?  
    * - owrite  
      - macos-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual others write permission changed from the expected others write permission?  
    * - oexec  
      - macos-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual others exec permission changed from the expected others exec permission?  
    * - user_differs  
      - oval-def:EntityStateBoolType (0..1)  
      - Has the actual user changed from the expected user?  
    * - actual_user  
      - oval-def:EntityStateIntType (0..1)  
      - The actual user of the file/directory.  
    * - expected_user  
      - oval-def:EntityStateIntType (0..1)  
      - The expected user of the file/directory.  
    * - group_differs  
      - oval-def:EntityStateBoolType (0..1)  
      - Has the actual group changed from the expected group?  
    * - actual_group  
      - oval-def:EntityStateIntType (0..1)  
      - The actual group of the file/directory.  
    * - expected_group  
      - oval-def:EntityStateIntType (0..1)  
      - The expected group of the file/directory.  
    * - symlink_differs  
      - oval-def:EntityStateBoolType (0..1)  
      - Has the actual symlink changed from the expected symlink?  
    * - actual_symlink  
      - oval-def:EntityStateStringType (0..1)  
      - The actual symlink of the file/directory.  
    * - expected_symlink  
      - oval-def:EntityStateStringType (0..1)  
      - The expected symlink of the file/directory.  
  
______________
  
.. _filevault_test:  
  
< filevault_test >  
---------------------------------------------------------
The filevault_test is used to determine the status of File Vault disk encryption. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an filevault_object and the optional state element references an filevault_state that specifies the information to check.

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
  
.. _filevault_object:  
  
< filevault_object >  
---------------------------------------------------------
The filevault_object is used by a filevault_test to query the status of File Vault. It is a singleton object.

**Extends:** oval-def:ObjectType

.. _filevault_state:  
  
< filevault_state >  
---------------------------------------------------------
The filevault_state is used to check the filevault status.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - status  
      - macos-def:EntityStateFileVaultStatusType (0..1)  
      - The status element describes the File Vault status of the machine.  
  
.. _EntityStateFileVaultStatusType:  
  
== EntityStateFileVaultStatusType ==  
---------------------------------------------------------
**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - enabled  
      - (No Description)  
    * - disabled  
      - (No Description)  
    * - encrypting  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for use of variables.  
  
______________
  
.. _firmwarepassword_test:  
  
< firmwarepassword_test >  
---------------------------------------------------------
The firmwarepassword_test is used to determine the status of File Vault disk encryption. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an firmwarepassword_object and the optional state element references an firmwarepassword_state that specifies the information to check.

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
  
.. _firmwarepassword_object:  
  
< firmwarepassword_object >  
---------------------------------------------------------
The firmwarepassword_object is used by a firmwarepassword_test to query the status of the firmwarepasswd command. It is a singleton object.

**Extends:** oval-def:ObjectType

.. _firmwarepassword_state:  
  
< firmwarepassword_state >  
---------------------------------------------------------
The firmwarepassword_state is used to check the firmwarepasswd status.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - The status element describes whether a firmware password is enabled.  
  
______________
  
.. _gatekeeper_test:  
  
< gatekeeper_test >  
---------------------------------------------------------
The gatekeeper_test is used to check the status of Gatekeeper and any unsigned applications that have been granted execute permission.

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
  
.. _gatekeeper_object:  
  
< gatekeeper_object >  
---------------------------------------------------------
The gatekeeper_object is a singleton used to access information about Gatekeeper.

**Extends:** oval-def:ObjectType

.. _gatekeeper_state:  
  
< gatekeeper_state >  
---------------------------------------------------------
The gatekeeper_state element makes it possible to make assertions about Gatekeeper's operational status and unsigned applications that have been granted execute permission.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - The status of Gatekeeper assessments.  
    * - require_developer_id  
      - oval-def:EntityStateBoolType (0..1)  
      - The status of Gatekeeper enforcement of app developer id.  
    * - unlabeled  
      - oval-def:EntityStateStringType (0..1)  
      - The path to an unsigned application folder to which Gatekeeper has granted execute permission.  
  
______________
  
.. _inetlisteningservers_test:  
  
< inetlisteningservers_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: The inetlisteningservers_test has been deprecated and replaced by the inetlisteningserver510_test. The name of an application cannot be used to uniquely identify an application that is listening on the network. As a result, the inetlisteningserver510_object utilizes the protocol, local_address, and local_port entities to uniquely identify an application listening on the network. Please see the inetlisteningserver510_test for additional information.  
  
This test's purpose is generally used to check if an application is listening on the network, either for a new connection or as part of an ongoing connection. This is limited to applications that are listening for connections that use the TCP or UDP protocols and have addresses represented as IPv4 or IPv6 addresses (AF_INET or AF_INET6). It is generally speaking the parsed output of running the command netstat -tuwlnpe with root privilege.

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
  
.. _inetlisteningservers_object:  
  
< inetlisteningservers_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: The inetlisteningservers_object has been deprecated and replaced by the inetlisteningserver510_object. The name of an application cannot be used to uniquely identify an application that is listening on the network. As a result, the inetlisteningserver510_object utilizes the protocol, local_address, and local_port entities to uniquely identify an application listening on the network. Please see the inetlisteningserver510_object for additional information.  
  
The inetlisteningservers_object element is used by an inetlisteningserver test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - program_name  
      - oval-def:EntityObjectStringType (1..1)  
      -   
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _inetlisteningservers_state:  
  
< inetlisteningservers_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: The inetlisteningservers_state has been deprecated and replaced by the inetlisteningserver510_state. The name of an application cannot be used to uniquely identify an application that is listening on the network. As a result, the inetlisteningserver510_object utilizes the protocol, local_address, and local_port entities to uniquely identify an application listening on the network. Please see the inetlisteningserver510_state for additional information.  
  
The inetlisteningservers_state element defines the different information that can be used to evaluate the specified inet listening server. This includes the local address, foreign address, port information, and process id. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - program_name  
      - oval-def:EntityStateStringType (0..1)  
      - This is the name of the communicating program.  
    * - local_address  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - This is the IP address of the network interface on which the program listens. Note that the IP address can be IPv4 or IPv6.  
    * - local_full_address  
      - oval-def:EntityStateStringType (0..1)  
      - This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.  
    * - local_port  
      - oval-def:EntityStateIntType (0..1)  
      - This is the TCP or UDP port on which the program listens. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will have its own entry in the table data stored by this test.  
    * - foreign_address  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.  
    * - foreign_full_address  
      - oval-def:EntityStateStringType (0..1)  
      - This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.  
    * - foreign_port  
      - oval-def:EntityStateStringType (0..1)  
      - This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - This is the process ID of the process. The process in question is that of the program communicating on the network.  
    * - protocol  
      - oval-def:EntityStateStringType (0..1)  
      - This is the transport-layer protocol, in lowercase: tcp or udp.  
    * - user_id  
      - oval-def:EntityStateStringType (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.  
  
______________
  
.. _inetlisteningserver510_test:  
  
< inetlisteningserver510_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The inetlisteningserver510_test is used to check if an application is listening on the network, either for a new connection or as part of an ongoing connection. This is limited to applications that are listening for connections that use the TCP or UDP protocols and have addresses represented as IPv4 or IPv6 addresses (AF_INET or AF_INET6). One method for retrieving the required information is by parsing the output of the command 'lsof -i -P -n -l' with root privileges.

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
  
.. _inetlisteningserver510_object:  
  
< inetlisteningserver510_object >  
---------------------------------------------------------
The inetlisteningserver510_object element is used by an inetlisteningserver510_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The protocol entity defines a certain transport-layer protocol, in lowercase: tcp or udp.  
    * - local_address  
      - oval-def:EntityObjectIPAddressStringType (1..1)  
      - This is the IP address of the network interface on which an application listens. Note that the IP address can be IPv4 or IPv6.  
    * - local_port  
      - oval-def:EntityObjectIntType (1..1)  
      - This is the TCP or UDP port on which an application would listen. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will be represented by its own object.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _inetlisteningserver510_state:  
  
< inetlisteningserver510_state >  
---------------------------------------------------------
The inetlisteningserver510_state element defines the different information that can be used to evaluate the specified inet listening server. This includes the local address, foreign address, port information, and process id. Please refer to the individual elements in the schema for more details about what each represents.

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
      - This is the transport-layer protocol, in lowercase: tcp or udp.  
    * - local_address  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - This is the IP address of the network interface on which the program listens. Note that the IP address can be IPv4 or IPv6.  
    * - local_port  
      - oval-def:EntityStateIntType (0..1)  
      - This is the TCP or UDP port on which the program listens. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will have its own entry in the table data stored by this test.  
    * - local_full_address  
      - oval-def:EntityStateStringType (0..1)  
      - This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.  
    * - program_name  
      - oval-def:EntityStateStringType (0..1)  
      - This is the name of the communicating program.  
    * - foreign_address  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.  
    * - foreign_port  
      - oval-def:EntityStateIntType (0..1)  
      - This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.  
    * - foreign_full_address  
      - oval-def:EntityStateStringType (0..1)  
      - This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - This is the process ID of the process. The process in question is that of the program communicating on the network.  
    * - user_id  
      - oval-def:EntityStateIntType (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.  
  
______________
  
.. _installhistory_test:  
  
< installhistory_test >  
---------------------------------------------------------
The installhistory_test is used to inspect the install history (SPInstallHistoryDataType) section of the system_profiler command output. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an installhistory_object and the optional state element references an installhistory_state that specifies the information to check.

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
  
.. _installhistory_object:  
  
< installhistory_object >  
---------------------------------------------------------
The installhistory_object is used by an installhistory_test to define the scope of software install history on the local system that should be collected using the "system_profiler SPInstallHistoryDataType" command. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The name element specifies the name(s) of the software item which should be collected from the local system.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _installhistory_state:  
  
< installhistory_state >  
---------------------------------------------------------
The installhistory_state contains entities that are used to check against installed software.

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
      - The name element contains a string that represents the name of a software title that was collected from the local system.  
    * - install_version  
      - oval-def:EntityStateVersionType (0..1)  
      - The install_version element contains the version of an installed software item. When this entry is blank or made up of only white-space, the status of the entity must be set to "does not exist".  
    * - install_date  
      - oval-def:EntityStateIntType (0..1)  
      - The install_date element contains the date that a software item was installed on the system. The value is an integer expressing the number of seconds which have passed since the epoch, midnight GMT Jan 1, 1970.  
    * - package_source  
      - macos-def:EntityStatePackageSourceType (0..1)  
      - The package_source element contains the source type of an installed software item.  
  
______________
  
.. _keychain_test:  
  
< keychain_test >  
---------------------------------------------------------
The keychain_test is used to check the properties of the plist-style XML output from the "security show-keychain-info >keychain<" command, for reading information about keychain settings on MacOSX. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an keychain_object and the optional state element specifies the data to check.

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
  
.. _keychain_object:  
  
< keychain_object >  
---------------------------------------------------------
The keychain_object element is used by an corestorage_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A keychain_object consists of a keychain (name) entity that contains the name of the keychain whose settings will be queried.

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
      - Specifies the filepath of the keychain to be queried. The default keychain for a user is normally located at ~/Library/Keychains/login.keychain.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _keychain_state:  
  
< keychain_state >  
---------------------------------------------------------
The keychain_state element defines a value used to evaluate the result of a specific keychain_object item.

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
      - Specifies the filepath of the keychain used to create the object.  
    * - lock_on_sleep  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the keychain is configured to lock when the computer sleeps.  
    * - timeout  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the inactivity timeout (in seconds) for the keychain, or 0 if there is no timeout.  
  
______________
  
.. _launchd_test:  
  
< launchd_test >  
---------------------------------------------------------
The launchd_test is used to check the status of daemons/agents loaded via the launchd service. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a launchd_object and the optional state element specifies the data to check.

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
  
.. _launchd_object:  
  
< launchd_object >  
---------------------------------------------------------
The launchd_object element is used by a launchd_test to define the daemon/agent to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A launchd_object consists of a label (name) entity that contains the name of the agent/daemon whose attributes will be queried.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - label  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the deamon to be queried.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _launchd_state:  
  
< launchd_state >  
---------------------------------------------------------
The launchd_state element defines a value used to evaluate the result of a specific launchd_object item.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - label  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the name of the agent/daemon used to create the object.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the process ID of the daemon (if any).  
    * - status  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the last exit code of the daemon (if any), or if $lt; 0, indicates the negative of the signal that interrupted processing. For example, a value of -15 would indicate that the job was terminated via a SIGTERM.  
  
______________
  
.. _nvram_test:  
  
< nvram_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
This test pulls firmware data from the device using the 'nvram' command.

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
  
.. _nvram_object:  
  
< nvram_object >  
---------------------------------------------------------
The nvram_object element is used by an nvram_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - nvram_var  
      - oval-def:EntityObjectStringType (1..1)  
      - Used to specify the name of the variable to retrieve. In the case of operations other than 'equals', the scope of variables will be limited to those retrieved via the 'nvram -p' command. Hidden nvram variables can be accessed through direct queries using the 'equals' operation.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _nvram_state:  
  
< nvram_state >  
---------------------------------------------------------
This test pulls data from the 'nvram -p' output.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - nvram_var  
      - oval-def:EntityStateStringType (0..1)  
      - This specifies the nvram variable to check.  
    * - nvram_value  
      - oval-def:EntityStateStringType (0..1)  
      - This is the value of the associated nvram variable.  
  
______________
  
.. _nvram512_test:  
  
< nvram512_test >  
---------------------------------------------------------
The nvram512_test is used to check the binary values of firmware variables, via the command 'nvram -x -p' or 'nvram -x <variable_name>'. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a nvram512_object and the optional state element specifies the data to check.

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
  
.. _nvram512_object:  
  
< nvram512_object >  
---------------------------------------------------------
The nvram512_object element is used by an nvram512_test to define the service domain to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - variable  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the firmware variable being queried.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _nvram512_state:  
  
< nvram512_state >  
---------------------------------------------------------
The nvram512_state element defines a value used to evaluate the result of a specific nvram512_object item.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - variable  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the name of the firmware variable that was queried.  
    * - value  
      - oval-def:EntityStateBinaryType (0..1)  
      - Specifies the binary value of the firmware variable.  
  
______________
  
.. _plist_test:  
  
< plist_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: Replaced by the plist510_test. This test references the plist_object which does not contain an instance entity. As a result, it is not possible to differentiate between two preference keys that have the same name using the plist_object. The plist510_test was added to address this deficiency. See the plist510_test.  
* Comment: This test has been deprecated and may be removed in a future version of the language.  
  
The plist_test is used to check the value(s) associated with property list preference keys. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a plist_object and the optional plist_state element specifies the data to check.

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
  
.. _plist_object:  
  
< plist_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: Replaced by the plist510_object. This object does not contain an instance entity. As a result, it is not possible to differentiate between two preference keys that have the same name using this object. The plist510_object was added to address this deficiency. See the plist510_object.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The plist_object element is used by a plist_test to define the preference keys to collect and where to look for them. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The preference key to check. If the xsi:nil attribute is set to 'true', the plist does not have any keys associated with it (i.e. it is not a CFDictionary) and the default value of the plist will be collected.  
    * - app_id  
      - oval-def:EntityObjectStringType (1..1)  
      - The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).  
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist). A directory cannot be specified as a filepath.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _plist_state:  
  
< plist_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: Replaced by the plist510_state. This state is used in conjunction with the plist_object which does not contain an instance entity. As a result, it is not possible to differentiate between two preference keys that have the same name using the plist_object. The plist510_state was added to address this deficiency. See the plist510_state.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The plist_state element defines the different information that can be used to evaluate the specified property list preference key. This includes the preference key, application identifier, filepath, type, as well as the preference key's value. Please refer to the individual elements in the schema for more details about what each represents.

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
    * - app_id  
      - oval-def:EntityStateStringType (0..1)  
      - The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist).  
    * - instance  
      - oval-def:EntityStateIntType (0..1)  
      - The instance of the preference key found in the plist. The first instance of a matching preference key is given the instance value of 1, the second instance of a matching preference key is given the instance value of 2, and so on. Note that the main purpose of this entity is to provide uniqueness for the different plist_items that result from multiple instances of a given preference key in the same plist file.  
    * - type  
      - macos-def:EntityStatePlistTypeType (0..1)  
      - The type of the preference key.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the preference key.  
  
______________
  
.. _plist510_test:  
  
< plist510_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2:1.0  
* Reason: Replaced by the plist511_test. This test references the plist_object which cannot express the context hierarchy required to differentiate between nodes with identical names. As a result, it is not possible to address a particular node when the order of their parent nodes is indeterminate. The plist511_test was added to address this deficiency. See the plist511_test.  
* Comment: This test has been deprecated and may be removed in a future version of the language.  
  
The plist510_test is used to check the value(s) associated with property list preference keys. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a plist510_object and the optional plist510_state element specifies the data to check.

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
  
.. _plist510_object:  
  
< plist510_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2:1.0  
* Reason: Replaced by the plist511_object. This object cannot express the context hierarchy required to differentiate between nodes with identical names. As a result, it is not possible to address a particular node when the order of their parent nodes is indeterminate. The plist511_object was added to address this deficiency. See the plist511_object.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The plist510_object element is used by a plist510_test to define the preference keys to collect and where to look for them. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The preference key to check. If the xsi:nil attribute is set to 'true', the plist does not have any keys associated with it (i.e. it is not a CFDictionary) and the default value of the plist will be collected.  
    * - app_id  
      - oval-def:EntityObjectStringType (1..1)  
      - The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).  
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist). A directory cannot be specified as a filepath.  
    * - instance  
      - oval-def:EntityObjectIntType (1..1)  
      - The instance of the preference key found in the plist. The first instance of a matching preference key is given the instance value of 1, the second instance of a matching preference key is given the instance value of 2, and so on. Instance values must be assigned using a depth-first approach. Note that the main purpose of this entity is to provide uniqueness for the different plist_items that result from multiple instances of a given preference key in the same plist file.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _plist510_state:  
  
< plist510_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2:1.0  
* Reason: Replaced by the plist511_state. This state is used in conjunction with the plist510_object which cannot express the context hierarchy required to differentiate between nodes with identical names. As a result, it is not possible to address a particular node when the order of their parent nodes is indeterminate. The plist511_state was added to address this deficiency. See the plist511_state.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The plist510_state element defines the different information that can be used to evaluate the specified property list preference key. This includes the preference key, application identifier, filepath, type, as well as the preference key's value. Please refer to the individual elements in the schema for more details about what each represents.

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
    * - app_id  
      - oval-def:EntityStateStringType (0..1)  
      - The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist).  
    * - instance  
      - oval-def:EntityStateIntType (0..1)  
      - The instance of the preference key found in the plist. The first instance of a matching preference key is given the instance value of 1, the second instance of a matching preference key is given the instance value of 2, and so on. Instance values must be assigned using a depth-first approach. Note that the main purpose of this entity is to provide uniqueness for the different plist_items that result from multiple instances of a given preference key in the same plist file.  
    * - type  
      - macos-def:EntityStatePlistTypeType (0..1)  
      - The type of the preference key.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the preference key.  
  
______________
  
.. _plist511_test:  
  
< plist511_test >  
---------------------------------------------------------
The plist511_test is used to check the value(s) associated with property list preference keys. It can be used to represent any plist file in XML form (whether its native format is ASCII text, binary, or XML), permitting the use of the XPATH query language to explore its contents. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a plist511_object and the optional plist511_state element specifies the data to check.

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
  
.. _plist511_object:  
  
< plist511_object >  
---------------------------------------------------------
The plist511_object element is used by a plist511_test to define the preference keys to collect and where to look for them. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - app_id  
      - oval-def:EntityObjectStringType (1..1)  
      - The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).  
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The absolute path to a plist file (e.g. /Library/Preferences/com.apple.TimeMachine.plist). A directory cannot be specified as a filepath.  
    * - xpath  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies an XPath 1.0 expression to evaluate against the XML representation of the plist file specified by the filename or app_id entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of item entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _plist511_state:  
  
< plist511_state >  
---------------------------------------------------------
The plist511_state element defines the different information that can be used to evaluate the specified property list preference key. This includes the preference key, application identifier, filepath, type, as well as the preference key's value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - app_id  
      - oval-def:EntityStateStringType (0..1)  
      - The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist).  
    * - xpath  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies an XPath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the preference key.  
  
______________
  
.. _profiles_test:  
  
< profiles_test >  
---------------------------------------------------------
The profiles_test is used to test aspects of the device configuration profiles installed on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an profiles_object and the optional state element references an profiles_state that specifies the information to check.

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
  
.. _profiles_object:  
  
< profiles_object >  
---------------------------------------------------------
The profiles_object is used by a profiles_test to query the status of the 'profiles status -type enrollment' command. It is a singleton object.

**Extends:** oval-def:ObjectType

.. _profiles_state:  
  
< profiles_state >  
---------------------------------------------------------
The profiles_state is used to check the MDM enrollment status.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - mdm_enrolled  
      - oval-def:EntityStateBoolType (0..1)  
      - The status element describes whether the device is enrolled in MDM.  
    * - dep_enrolled  
      - oval-def:EntityStateBoolType (0..1)  
      - The status element describes whether the device is enrolled in MDM via DEP.  
  
______________
  
.. _pwpolicy_test:  
  
< pwpolicy_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.9  
* Reason: Replaced by the pwpolicy59_test. The username, userpass, and directory_node entities in the pwpolicy_object, pwpolicy_state, and pwpolicy_item were underspecified and as a result their meaning was uncertain. A new test was created to resolve this issue. See the pwpolicy59_test.  
* Comment: This test has been deprecated and may be removed in a future version of the language.  
  
This test pulls data from the 'pwpolicy -getpolicy' output. The actual values get stored under /var/db/netinfo/local.nidb/ in a Store.# file. Is this test actually needed, or can the text file content test be used instead?

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
  
.. _pwpolicy_object:  
  
< pwpolicy_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.9  
* Reason: Replaced by the pwpolicy59_object. The username, userpass, and directory_node entities in the pwpolicy_object were underspecified and as a result their meaning was uncertain. A new object was created to resolve this issue. See the pwpolicy59_object.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  
The pwpolicy_object element is used by a pwpolicy_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
    * - userpass  
      - oval-def:EntityObjectStringType (1..1)  
      -   
    * - directory_node  
      - oval-def:EntityObjectStringType (1..1)  
      -   
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _pwpolicy_state:  
  
< pwpolicy_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.9  
* Reason: Replaced by the pwpolicy59_state. The username, userpass, and directory_node entities in the pwpolicy_state were underspecified and as a result their meaning was uncertain. A new state was created to resolve this issue. See the pwpolicy59_state.  
* Comment: This state has been deprecated and may be removed in a future version of the language.  
  


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
      -   
    * - userpass  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - directory_node  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - maxChars  
      - oval-def:EntityStateIntType (0..1)  
      - Maximum number of characters allowed in a password.  
    * - maxFailedLoginAttempts  
      - oval-def:EntityStateIntType (0..1)  
      - Maximum number of failed logins before the account is locked.  
    * - minChars  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum number of characters allowed in a password.  
    * - passwordCannotBeName  
      - oval-def:EntityStateBoolType (0..1)  
      - Defines if the password is allowed to be the same as the username or not.  
    * - requiresAlpha  
      - oval-def:EntityStateBoolType (0..1)  
      - Defines if the password must contain an alphabetical character or not.  
    * - requiresNumeric  
      - oval-def:EntityStateBoolType (0..1)  
      - Defines if the password must contain an numeric character or not.  
  
______________
  
.. _pwpolicy59_test:  
  
< pwpolicy59_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
This test retrieves password policy data from the 'pwpolicy -getpolicy -u target_user [-a username] [-p userpass] [-n directory_node]' output where username, userpass, and directory_node are optional. Please see the 'pwpolicy' man page for additional information.

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
  
.. _pwpolicy59_object:  
  
< pwpolicy59_object >  
---------------------------------------------------------
The pwpolicy59_object element is used by a pwpolicy59_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - target_user  
      - oval-def:EntityObjectStringType (1..1)  
      - The target_user element specifies the user whose password policy information should be collected. If an operation other than equals is specified, the users on the system should be enumerated and the 'pwpolicy' command should be issued for each user that matches the target_user element. If the xsi:nil attribute is set to true, the global policy should be retrieved.  
    * - username  
      - oval-def:EntityObjectStringType (1..1)  
      - The username element specifies the username of the authenticator. If the xsi:nil attribute is set to true, authentication to the directory node will not be performed (i.e. the '-a' and '-p' command line options will not be specified when issuing the 'pwpolicy' command) and the xsi:nil attribute of the userpass element should also be set to true.  
    * - userpass  
      - oval-def:EntityObjectStringType (1..1)  
      - The userpass element specifies the password of the authenticator as specified by the username element. If the xsi:nil attribute is set to true, authentication to the directory node will not be performed (i.e. the '-a' and '-p' command line options will not be specified when issuing the 'pwpolicy' command) and the xsi:nil attribute of the username element should also be set to true.  
    * - directory_node  
      - oval-def:EntityObjectStringType (1..1)  
      - The directory_node element specifies the directory node that you would like to retrieve the password policy information from. If the xsi:nil attribute is set to true, the default directory node is used (i.e. the '-n' command line option will not be specified when issuing the 'pwpolicy' command).  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _pwpolicy59_state:  
  
< pwpolicy59_state >  
---------------------------------------------------------
The pwpolicy59_state element defines the different information that can be used to evaluate the password policy for the target user in the specified directory node. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - target_user  
      - oval-def:EntityStateStringType (0..1)  
      - The target_user element specifies the user whose password policy information should be collected.  
    * - username  
      - oval-def:EntityStateStringType (0..1)  
      - The username element specifies the username of the authenticator.  
    * - userpass  
      - oval-def:EntityStateStringType (0..1)  
      - The userpass element specifies the password of the authenticator as specified by the username element.  
    * - directory_node  
      - oval-def:EntityStateStringType (0..1)  
      - The directory_node element specifies the directory node that you would like to retrieve the password policy information from.  
    * - maxChars  
      - oval-def:EntityStateIntType (0..1)  
      - Maximum number of characters allowed in a password.  
    * - maxFailedLoginAttempts  
      - oval-def:EntityStateIntType (0..1)  
      - Maximum number of failed logins before the account is locked.  
    * - minChars  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum number of characters allowed in a password.  
    * - passwordCannotBeName  
      - oval-def:EntityStateBoolType (0..1)  
      - Defines if the password is allowed to be the same as the username or not.  
    * - requiresAlpha  
      - oval-def:EntityStateBoolType (0..1)  
      - Defines if the password must contain an alphabetical character or not.  
    * - requiresNumeric  
      - oval-def:EntityStateBoolType (0..1)  
      - Defines if the password must contain an numeric character or not.  
    * - maxMinutesUntilChangePassword  
      - oval-def:EntityStateIntType (0..1)  
      - Maximum number of minutes until the password must be changed.  
    * - minMinutesUntilChangePassword  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum number of minutes between password changes.  
    * - requiresMixedCase  
      - oval-def:EntityStateBoolType (0..1)  
      - Defines if the password must contain upper and lower case characters or not.  
    * - requiresSymbol  
      - oval-def:EntityStateBoolType (0..1)  
      - Defines if the password must contain a symbol character or not.  
    * - minutesUntilFailedLoginReset  
      - oval-def:EntityStateIntType (0..1)  
      - Number of minutes after login has been disabled due to too many failed login attempts to wait before reenabling login.  
    * - usingHistory  
      - oval-def:EntityStateIntType (0..1)  
      - 0 = user can reuse the current pass-word, 1 = user cannot reuse the current password, 2-15 = user cannot reuse the last n passwords.  
    * - canModifyPasswordforSelf  
      - oval-def:EntityStateBoolType (0..1)  
      - If true, the user can change the password.  
    * - usingExpirationDate  
      - oval-def:EntityStateBoolType (0..1)  
      - If true, user is required to change password on the date in expirationDateGMT  
    * - usingHardExpirationDate  
      - oval-def:EntityStateBoolType (0..1)  
      - If true, user's account is disabled on the date in hardExpireDateGMT  
    * - expirationDateGMT  
      - oval-def:EntityStateStringType (0..1)  
      - Date for the password to expire, format is: mm/dd/yyyy. NOTE: The pwpolicy command returns the year as a two digit value, but OVAL uses four digit years; the pwpolicy value is converted to an OVAL compatible value.  
    * - hardExpireDateGMT  
      - oval-def:EntityStateStringType (0..1)  
      - Date for the user's account to be disabled, format is: mm/dd/yyyy. NOTE: The pwpolicy command returns the year as a two digit value, but OVAL uses four digit years; the pwpolicy value is converted to an OVAL compatible value.  
    * - maxMinutesUntilDisabled  
      - oval-def:EntityStateIntType (0..1)  
      - User's account is disabled after this interval  
    * - maxMinutesOfNonUse  
      - oval-def:EntityStateIntType (0..1)  
      - User's account is disabled if it is not accessed by this interval  
    * - newPasswordRequired  
      - oval-def:EntityStateBoolType (0..1)  
      - If true, the user will be prompted for a new password at the next authentication.  
    * - notGuessablePattern  
      - oval-def:EntityStateBoolType (0..1)  
      -   
  
______________
  
.. _pwpolicy512_test:  
  
< pwpolicy512_test >  
---------------------------------------------------------
This test retrieves password policy data from the 'pwpolicy -getaccountpolicies -u username [-a authenticator] [-p authenticator_password] [-n directory_node]' output where authenticator, authenticator_password, and directory_node are optional. Please see the 'pwpolicy' man page for additional information.

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
  
.. _pwpolicy512_object:  
  
< pwpolicy512_object >  
---------------------------------------------------------
The pwpolicy512_object element is used by a pwpolicy59_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The username element specifies the user whose password policy information should be collected. If an operation other than equals is specified, the users on the system should be enumerated and the 'pwpolicy' command should be issued for each user that matches the username element. If the xsi:nil attribute is set to true, the global policy should be retrieved.  
    * - authenticator  
      - oval-def:EntityObjectStringType (1..1)  
      - The authenticator element specifies the username of the authenticator. If the xsi:nil attribute is set to true, authentication to the directory node will not be performed (i.e. the '-a' and '-p' command line options will not be specified when issuing the 'pwpolicy' command) and the xsi:nil attribute of the authenticator_password element should also be set to true.  
    * - authenticator_password  
      - oval-def:EntityObjectStringType (1..1)  
      - The authenticator_password element specifies the password of the authenticator as specified by the username element. If the xsi:nil attribute is set to true, authentication to the directory node will not be performed (i.e. the '-a' and '-p' command line options will not be specified when issuing the 'pwpolicy' command) and the xsi:nil attribute of the username element should also be set to true.  
    * - directory_node  
      - oval-def:EntityObjectStringType (1..1)  
      - The directory_node element specifies the directory node that you would like to retrieve the password policy information from. If the xsi:nil attribute is set to true, the default directory node is used (i.e. the '-n' command line option will not be specified when issuing the 'pwpolicy' command).  
    * - xpath  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies an XPath 1.0 expression to evaluate against the XML representation of the output generated from the pwpolicy -getaccountinfo command. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of item entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _pwpolicy512_state:  
  
< pwpolicy512_state >  
---------------------------------------------------------
The pwpolicy512_state element defines the different information that can be used to evaluate the password policy for the target user in the specified directory node. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The username element specifies the user whose password policy information should be collected.  
    * - authenticator  
      - oval-def:EntityStateStringType (0..1)  
      - The authenticator element specifies the username of the authenticator.  
    * - authenticator_password  
      - oval-def:EntityStateStringType (0..1)  
      - The authenticator_password element specifies the password of the authenticator as specified by the authenticator element.  
    * - directory_node  
      - oval-def:EntityStateStringType (0..1)  
      - The directory_node element specifies the directory node that you would like to retrieve the password policy information from.  
    * - xpath  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies an XPath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the preference key.  
  
______________
  
.. _rlimit_test:  
  
< rlimit_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The rlimit_test is used to check system resource limits for launchd. It is a singleton object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The state element specifies the system setup elements to check.

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
  
.. _rlimit_object:  
  
< rlimit_object >  
---------------------------------------------------------
The rlimit_object is a singleton used to access resource limit information.

**Extends:** oval-def:ObjectType

.. _rlimit_state:  
  
< rlimit_state >  
---------------------------------------------------------
The rlimit_state element makes it possible to make assertions about the resource limits for launchd.

A resource limit is specified as a soft (current) limit and a hard (max) limit. When a soft limit is exceeded a process may receive a signal (for example, if the cpu time or file size is exceeded), but it will be allowed to con-tinue continue tinue execution until it reaches the hard limit (or modifies its resource limit).

For any 'unlimited' resource, the entity will have the status of 'does not exist'.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - cpu_current  
      - oval-def:EntityStateIntType (0..1)  
      - The maximum amount of cpu time (in seconds) to be used by each process.  
    * - cpu_max  
      - oval-def:EntityStateIntType (0..1)  
      - cpu hard limit.  
    * - filesize_current  
      - oval-def:EntityStateIntType (0..1)  
      - The largest size (in bytes) file that may be created.  
    * - filesize_max  
      - oval-def:EntityStateIntType (0..1)  
      - filesize hard limit.  
    * - data_current  
      - oval-def:EntityStateIntType (0..1)  
      - The maximum size (in bytes) of the data segment for a process; this defines how far a program may extend its break with the sbrk(2) system call.  
    * - data_max  
      - oval-def:EntityStateIntType (0..1)  
      - data hard limit.  
    * - stack_current  
      - oval-def:EntityStateIntType (0..1)  
      - The maximum size (in bytes) of the stack segment for a process; this defines how far a program's stack segment may be extended. Stack extension is performed automatically by the system.  
    * - stack_max  
      - oval-def:EntityStateIntType (0..1)  
      - stack hard limit.  
    * - core_current  
      - oval-def:EntityStateIntType (0..1)  
      - The largest size (in bytes) core file that may be created.  
    * - core_max  
      - oval-def:EntityStateIntType (0..1)  
      - core hard limit.  
    * - rss_current  
      - oval-def:EntityStateIntType (0..1)  
      - The maximum size (in bytes) to which a process's resident set size may grow. This imposes a limit on the amount of physical memory to be given to a process; if memory is tight, the system will prefer to take memory from processes that are exceeding their declared resident set size.  
    * - rss_max  
      - oval-def:EntityStateIntType (0..1)  
      - rss hard limit.  
    * - memlock_current  
      - oval-def:EntityStateIntType (0..1)  
      - The maximum size (in bytes) which a process may lock into memory using the mlock(2) function.  
    * - memlock_max  
      - oval-def:EntityStateIntType (0..1)  
      - memlock hard limit.  
    * - maxproc_current  
      - oval-def:EntityStateIntType (0..1)  
      - The maximum number of simultaneous processes for this user id.  
    * - maxproc_max  
      - oval-def:EntityStateIntType (0..1)  
      - maxproc hard limit.  
    * - maxfiles_current  
      - oval-def:EntityStateIntType (0..1)  
      - The maximum number of open files for this process.  
    * - maxfiles_max  
      - oval-def:EntityStateIntType (0..1)  
      - maxfiles hard limit.  
  
______________
  
.. _softwareupdate_test:  
  
< softwareupdate_test >  
---------------------------------------------------------
The softwareupdate_test is used to check the status of automatic software updates on MacOSX. It is a singleton object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The state element specifies the softwareupdate elements to check.

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
  
.. _softwareupdate_object:  
  
< softwareupdate_object >  
---------------------------------------------------------
The softwareupdate_object is a singleton used to access automatic software update information.

**Extends:** oval-def:ObjectType

.. _softwareupdate_state:  
  
< softwareupdate_state >  
---------------------------------------------------------
The softwareupdate_state element makes it possible to make assertions about the state of automatic software updates.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - schedule  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether automatic checking is enabled (true).  
    * - software_title  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the title string for an available (not installed) software update.  
  
______________
  
.. _systemprofiler_test:  
  
< systemprofiler_test >  
---------------------------------------------------------
The systemprofiler_test is used to check the properties of the plist-style XML output from the "system_profiler -xml <data type>" command, for reading information about system inventory data on MacOSX. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an systemprofiler_object and the optional state element specifies the data to check.

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
  
.. _systemprofiler_object:  
  
< systemprofiler_object >  
---------------------------------------------------------
The systemprofiler_object element is used by an systemprofiler_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An systemprofiler_object consists of a data_type entity that contains the name of the datatype that was probed by the system_profiler utility. The resulting plist data can be queried using the xpath entity.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - data_type  
      - oval-def:EntityObjectStringType (1..1)  
      - The data_type entity provides the datatype value that is desired.  
    * - xpath  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at. Any valid Xpath 1.0 statement is usable with one exception, at most one field may be identified in the Xpath. This is because the value_of element in the data section is only designed to work against a single field. The only valid operator for xpath is equals since there is an infinite number of possible xpaths and determinining all those that do not equal a given xpath would be impossible.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _systemprofiler_state:  
  
< systemprofiler_state >  
---------------------------------------------------------
The systemprofiler_state element defines a value used to evaluate the result of a specific systemprofiler_object item.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - data_type  
      - oval-def:EntityStateStringType (0..1)  
      - The data_type entity provides the datatype value that is desired.  
    * - xpath  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found.  
  
______________
  
.. _systemsetup_test:  
  
< systemsetup_test >  
---------------------------------------------------------
The systemsetup_test is used to check systemsetup properties. It is a singleton object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The state element specifies the system setup elements to check.

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
  
.. _systemsetup_object:  
  
< systemsetup_object >  
---------------------------------------------------------
The systemsetup_object is a singleton used to access system setup information.

**Extends:** oval-def:ObjectType

.. _systemsetup_state:  
  
< systemsetup_state >  
---------------------------------------------------------
The systemsetup_state element makes it possible to make assertions about system setup settings.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - timezone  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the name of the time zone.  
    * - usingnetworktime  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies weather the machine is using network time.  
    * - networktimeserver  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the network time server.  
    * - computersleep  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the computer sleep inactivity timer, or 0 for never.  
    * - displaysleep  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the display sleep inactivity timer, or 0 for never.  
    * - harddisksleep  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the hard disk sleep inactivity timer, or 0 for never.  
    * - wakeonmodem  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the computer will wake up if the modem is accessed.  
    * - wakeonnetworkaccess  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the computer will wake up if the network is accessed.  
    * - restartfreeze  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the computer will restart after freezing.  
    * - allowpowerbuttontosleepcomputer  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the power button can be used to cause the computer to sleep.  
    * - restartpowerfailure  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the computer will restart after a power failure.  
    * - remotelogin  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether remote logins are allowed.  
    * - remoteappleevents  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether remote Apple events are enabled.  
    * - computername  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the computer's name.  
    * - localsubnetname  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the name of the local subnet.  
    * - startupdisk  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the startup disk.  
    * - waitforstartupafterpowerfailure  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the number of seconds the computer waits to start up after a power failure.  
    * - disablekeyboardwhenenclosurelockisengaged  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the keyboard is locked when the closure lock is engaged.  
    * - kernelbootarchitecturesetting  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the kernel boot architecture setting.  
  
.. _EntityStatePermissionCompareType:  
  
== EntityStatePermissionCompareType ==  
---------------------------------------------------------
The EntityStatePermissionCompareType complex type restricts a string value to more, less, or same which specifies if an actual permission is different than the expected permission (more or less restrictive) or if the permission is the same. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - more  
      - | The actual permission is more restrictive than the expected permission.  
    * - less  
      - | The actual permission is less restrictive than the expected permission.  
    * - same  
      - | The actual permission is the same as the expected permission.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStatePlistTypeType:  
  
== EntityStatePlistTypeType == (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2:1.0  
* Reason: Used only by the deprecated plist_state and plist510_state.  
* Comment: This enumeration has been deprecated and may be removed in a future version of the language.  
  
The EntityStatePlistTypeType complex type restricts a string value to the seven values CFString, CFNumber, CFBoolean, CFDate, CFData, CFArray, and CFDictionary that specify the datatype of the value associated with a property list preference key. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - CFString  
      - | The CFString type is used to describe a preference key that has a string value. The OVAL string datatype should be used to represent CFString values.  
    * - CFNumber  
      - | The CFNumber type is used to describe a preference key that has a integer or float value. The OVAL int and float datatypes should be used, as appropriate, to represent CFNumber values.  
    * - CFBoolean  
      - | The CFBoolean type is used to describe a preference key that has a boolean value. The OVAL boolean datatype should be used to represent CFBoolean values.  
    * - CFDate  
      - | The CFDate type is used to describe a preference key that has a date value. The OVAL string datatype should be used to represent CFDate values.  
    * - CFData  
      - | The CFData type is used to describe a preference that has a base64-encoded binary value. The OVAL string datatype should be used to represent CFData values.  
    * - CFArray  
      - | The CFArray type is used to describe a preference key that has a collection of values. This is represented as multiple value entities.  
    * - CFDictionary  
      - | The CFDictionary type is used to describe a preference key that has a collection of key-value pairs. Note that the collection of CFDictionary values is not supported. If an attempt is made to collect a CFDictionary value, an error should be reported.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStatePackageSourceType:  
  
== EntityStatePackageSourceType ==  
---------------------------------------------------------
**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Apple  
      - (No Description)  
    * - AppStore  
      - (No Description)  
    * - ThirdParty  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
