Open Vulnerability and Assessment Language: MacOS System Characteristics  
=========================================================
* Schema: MacOS System Characteristics  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the MacOS specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The MacOS System Characteristics Schema was initially developed by The Center for Internet Security. Many thanks to their contributions to OVAL and the security community.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`accountinfo_item`  
* :ref:`authorizationdb_item`  
* :ref:`corestorage_item`  
* :ref:`diskinfo_item`  
* :ref:`diskutil_item`  
* :ref:`disabledservice_item`  
* :ref:`filevault_item`  
* :ref:`firmwarepassword_item`  
* :ref:`gatekeeper_item`  
* :ref:`inetlisteningserver_item`  
* :ref:`inetlisteningserver510_item`  
* :ref:`installhistory_item`  
* :ref:`keychain_item`  
* :ref:`launchd_item`  
* :ref:`nvram_item`  
* :ref:`nvram512_item`  
* :ref:`plist_item`  
* :ref:`plist511_item`  
* :ref:`profiles_item`  
* :ref:`pwpolicy_item`  
* :ref:`pwpolicy59_item`  
* :ref:`pwpolicy512_item`  
* :ref:`rlimit_item`  
* :ref:`softwareupdate_item`  
* :ref:`systemprofiler_item`  
* :ref:`systemsetup_item`  
  
______________
  
.. _accountinfo_item:  
  
< accountinfo_item >  
---------------------------------------------------------
This item stores user account information (username, uid, gid, etc.).

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
      - The user associated with the information collected.  
    * - password  
      - oval-sc:EntityItemStringType (0..1)  
      - Obfuscated (*****) or encrypted password for this user.  
    * - uid  
      - oval-sc:EntityItemIntType (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. This element represents the owner of the file.  
    * - gid  
      - oval-sc:EntityItemIntType (0..1)  
      - Group ID of this account.  
    * - realname  
      - oval-sc:EntityItemStringType (0..1)  
      - User's real name, aka gecos field of /etc/passwd.  
    * - home_dir  
      - oval-sc:EntityItemStringType (0..1)  
      - The home directory for this user account.  
    * - login_shell  
      - oval-sc:EntityItemStringType (0..1)  
      - The login shell for this user account.  
    * - generated_uid  
      - oval-sc:EntityItemStringType (0..1)  
      - The generated UID for this user account. The UID is related to File Vault.  
  
______________
  
.. _authorizationdb_item:  
  
< authorizationdb_item >  
---------------------------------------------------------
This item stores results from checking the contents of an authorizationdb right.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - right_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the right_name in which the item is specified.  
    * - xpath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.  
  
______________
  
.. _corestorage_item:  
  
< corestorage_item >  
---------------------------------------------------------
This item stores results from checking the contents of the CoreStorage XML plist information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - uuid  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the UUID of the volume about which the plist information was retrieved.  
    * - xpath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.  
  
______________
  
.. _diskinfo_item:  
  
< diskinfo_item >  
---------------------------------------------------------
The diskinfo_item contains information retrieved using the 'diskutil info <device ID>' command.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device_identifier  
      - oval-sc:EntityItemStringType (0..1)  
      - The device identifier.  
    * - volume_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The value of the volume name field (if any).  
    * - file_system_personality  
      - oval-sc:EntityItemStringType (0..1)  
      - The value of the file system personality field (if any).  
    * - removable_media  
      - oval-sc:EntityItemStringType (0..1)  
      - The value of the removable media field (if any).  
    * - device_location  
      - oval-sc:EntityItemStringType (0..1)  
      - The value of the device location field (if any).  
    * - solid_state  
      - oval-sc:EntityItemBoolType (0..1)  
      - The value of the solid state flag.  
    * - read_only  
      - oval-sc:EntityItemBoolType (0..1)  
      - The value of the read-only volume flag.  
    * - file_vault  
      - oval-sc:EntityItemBoolType (0..1)  
      - Whether or not FileVault is enabled on the disk.  
    * - mount_point  
      - oval-sc:EntityItemStringType (0..1)  
      - The mount point for this disk (if any).  
    * - smart_status  
      - oval-sc:EntityItemStringType (0..1)  
      - The value of the SMART status field (if any).  
    * - encrypted  
      - oval-sc:EntityItemBoolType (0..1)  
      - The value of the encrypted status field (if any). This is typically present for external drives, not APFS drives with FileVault active (for which this field does not exist).  
    * - apfs_uid  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The value(s) of APFS cryptographic UIDs (if any) for the disk.  
  
______________
  
.. _diskutil_item:  
  
< diskutil_item > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: The diskutil_state has been deprecated. The underlying capability was rendered obsolete in MacOS X 10.11 (El Capitan), and then removed altogether from the platform in MacOS X 10.12 (Sierra).  
  
The diskutil_item holds verification information about an individual disk on a Mac OS system. Each diskutil_item contains a device, filepath, and details on how the actual permissions, ownerships and link targets differ from the expected values. For more information, see diskutil(8) or repair_packages(8). It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device  
      - oval-sc:EntityItemStringType (0..1)  
      - The device entity is a string that represents the disk on a Mac OS system to verify. Please see diskutil(8) for instructions on how to specify the device.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file or directory on the specified device.  
    * - uread  
      - macos-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual user read permission changed from the expected user read permission?  
    * - uwrite  
      - macos-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual user write permission changed from the expected user write permission?  
    * - uexec  
      - macos-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual user exec permission changed from the expected user exec permission?  
    * - gread  
      - macos-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual group read permission changed from the expected group read permission?  
    * - gwrite  
      - macos-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual group write permission changed from the expected group write permission?  
    * - gexec  
      - macos-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual group exec permission changed from the expected group exec permission?  
    * - oread  
      - macos-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual others read permission changed from the expected others read permission?  
    * - owrite  
      - macos-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual others write permission changed from the expected others write permission?  
    * - oexec  
      - macos-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual others exec permission changed from the expected others exec permission?  
    * - user_differs  
      - oval-sc:EntityItemBoolType (0..1)  
      - Has the actual user changed from the expected user?  
    * - actual_user  
      - oval-sc:EntityItemIntType (0..1)  
      - The actual user of the file/directory.  
    * - expected_user  
      - oval-sc:EntityItemIntType (0..1)  
      - The expected user of the file/directory.  
    * - group_differs  
      - oval-sc:EntityItemBoolType (0..1)  
      - Has the actual group changed from the expected group?  
    * - actual_group  
      - oval-sc:EntityItemIntType (0..1)  
      - The actual group of the file/directory.  
    * - expected_group  
      - oval-sc:EntityItemIntType (0..1)  
      - The expected group of the file/directory.  
    * - symlink_differs  
      - oval-sc:EntityItemBoolType (0..1)  
      - Has the actual symlink changed from the expected symlink?  
    * - actual_symlink  
      - oval-sc:EntityItemStringType (0..1)  
      - The actual symlink of the file/directory.  
    * - expected_symlink  
      - oval-sc:EntityItemStringType (0..1)  
      - The expected symlink of the file/directory.  
  
______________
  
.. _disabledservice_item:  
  
< disabledservice_item >  
---------------------------------------------------------
This item stores results from checking a launchd domain for disabled services.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - label  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the name of the agent/daemon.  
    * - disabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies the actual status of the service as indicated by the output of the 'launchctl print-disabled <domain>' command.  
  
______________
  
.. _filevault_item:  
  
< filevault_item >  
---------------------------------------------------------
The filevault_item stores information about the status of File Vault on the machine.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - status  
      - macos-sc:EntityItemFileVaultStatusType (0..1)  
      - The status element contains the File Vault status on the machine. If encryption is in progress, the status will be 'encrypting', otherwise it will be 'enabled' or 'disabled'.  
  
.. _EntityItemFileVaultStatusType:  
  
== EntityItemFileVaultStatusType ==  
---------------------------------------------------------
**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
______________
  
.. _firmwarepassword_item:  
  
< firmwarepassword_item >  
---------------------------------------------------------
The firmwarepassword_item stores information about the status of the firmwarepasswd command on the machine.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - The status element describes whether or not a firmware password is enabled on the machine.  
  
______________
  
.. _gatekeeper_item:  
  
< gatekeeper_item >  
---------------------------------------------------------
This item stores results from checking the settings of the Gatekeeper.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - enabled  
      - oval-sc:EntityItemBoolType (1..1)  
      - The status of Gatekeeper assessments.  
    * - require_developer_id  
      - oval-sc:EntityItemBoolType (1..1)  
      - The status of Gatekeeper enforcement of app developer id.  
    * - unlabeled  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The path to an unsigned application folder to which Gatekeeper has granted execute permission.  
  
______________
  
.. _inetlisteningserver_item:  
  
< inetlisteningserver_item > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: The inetlisteningserver_item has been deprecated and replaced by the inetlisteningserver510_item. The name of an application cannot be used to uniquely identify an application that is listening on the network. As a result, the inetlisteningserver510_object utilizes the protocol, local_address, and local_port entities to uniquely identify an application listening on the network. Please see the inetlisteningserver510_item for additional information.  
  
An inet listening server item stores the results of checking for network servers currently active on a system.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - program_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the communicating program.  
    * - local_address  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - This is the IP address of the network interface on which the program listens. Note that the IP address can be IPv4 or IPv6.  
    * - local_full_address  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.  
    * - local_port  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the TCP or UDP port on which the program listens. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will have its own entry in the table data stored by this item.  
    * - foreign_address  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.  
    * - foreign_full_address  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.  
    * - foreign_port  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the process ID of the process. The process in question is that of the program communicating on the network.  
    * - protocol  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the transport-layer protocol, in lowercase: tcp or udp.  
    * - user_id  
      - oval-sc:EntityItemStringType (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.  
  
______________
  
.. _inetlisteningserver510_item:  
  
< inetlisteningserver510_item >  
---------------------------------------------------------
An inet listening server item stores the results of checking for network servers currently active on a system.

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
      - This is the transport-layer protocol, in lowercase: tcp or udp.  
    * - local_address  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - This is the IP address of the network interface on which the program listens. Note that the IP address can be IPv4 or IPv6.  
    * - local_port  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the TCP or UDP port on which the program listens. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will have its own entry in the table data stored by this item.  
    * - local_full_address  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.  
    * - program_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the communicating program.  
    * - foreign_address  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.  
    * - foreign_port  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.  
    * - foreign_full_address  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the process ID of the process. The process in question is that of the program communicating on the network.  
    * - user_id  
      - oval-sc:EntityItemIntType (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.  
  
______________
  
.. _installhistory_item:  
  
< installhistory_item >  
---------------------------------------------------------
The installhistory_item stores information retrieved from the system_profiler about installed software on the device. Information is collected from the target endpoint using the "system_profiler SPInstallHistoryDataType" command and output values are parsed from the XML output.

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
      - The name element contains the name of the software history entry represented by the item.  
    * - install_version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The install_version element contains the version of the installed software item. When this entry is blank or made up of only white-space, the status of the entity should be "does not exist".  
    * - install_date  
      - oval-sc:EntityItemIntType (0..1)  
      - The install_date element contains the date that the software item was installed on the system. The value is an integer expressing the number of seconds which have passed since the epoch, midnight GMT Jan 1, 1970.  
    * - package_source  
      - macos-sc:EntityItemPackageSourceType (0..1)  
      - The package_source element contains the source of the installed software item.  
  
______________
  
.. _keychain_item:  
  
< keychain_item >  
---------------------------------------------------------
This item stores results from checking the settings of a keychain.

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
      - Specifies the filepath of the keychain.  
    * - lock_on_sleep  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether the keychain is configured to lock on sleep.  
    * - timeout  
      - oval-sc:EntityItemIntType (0..1)  
      - The inactivity timeout (in seconds) for the keychain, or 0 if there is no timeout.  
  
______________
  
.. _launchd_item:  
  
< launchd_item >  
---------------------------------------------------------
This item stores results from checking a launchd-controlled daemon/agent.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - label  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the name of the agent/daemon.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the process ID of the daemon (if any).  
    * - status  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the last exit code of the daemon (if any), or if $lt; 0, indicates the negative of the signal that interrupted processing. For example, a value of -15 would indicate that the job was terminated via a SIGTERM.  
  
______________
  
.. _nvram_item:  
  
< nvram_item >  
---------------------------------------------------------
Output of 'nvram -p'

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - nvram_var  
      - oval-sc:EntityItemStringType (0..1)  
      - A nvram variabl.  
    * - nvram_value  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the value of the associated nvram variable.  
  
______________
  
.. _nvram512_item:  
  
< nvram512_item >  
---------------------------------------------------------
This item stores results from checking a firmware variable via an nvram512_object.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - variable  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the name of the firmware variable that was queried.  
    * - value  
      - oval-sc:EntityItemBinaryType (0..1)  
      - Specifies the binary value of the firmware variable.  
  
______________
  
.. _plist_item:  
  
< plist_item > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2:1.0  
* Reason: The plist_item has been deprecated and replaced by the plist511_item. The plist_item cannot express the context hierarchy required to differentiate between nodes with identical names. As a result, it is not possible to address a particular node when the order of their parent nodes is indeterminate. The plist511_item was added to address this deficiency. See the plist511_item.  
  
The plist_item holds information about an individual property list preference key found on a system. Each plist_item contains a preference key, application identifier or filepath, type, as well as the preference key's value. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

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
    * - app_id  
      - oval-sc:EntityItemStringType (0..1)  
      - The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The absolute path to a plist file (e.g. ~/Library/Preferences/com.apple.Safari.plist).  
    * - instance  
      - oval-sc:EntityItemIntType (0..1)  
      - The instance of the preference key found in the plist. The first instance of a matching preference key is given the instance value of 1, the second instance of a matching preference key is given the instance value of 2, and so on. Instance values must be assigned using a depth-first approach. Note that the main purpose of this entity is to provide uniqueness for the different plist_items that result from multiple instances of a given preference key in the same plist file.  
    * - type  
      - macos-sc:EntityItemPlistTypeType (0..1)  
      - The type of the preference key.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value of the preference key.  
  
______________
  
.. _plist511_item:  
  
< plist511_item >  
---------------------------------------------------------
The plist511_item stores results from checking the contents of the XML representation of a plist file. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - app_id  
      - oval-sc:EntityItemStringType (0..1)  
      - The unique application identifier that specifies the application to use when looking up the preference key (e.g. com.apple.Safari).  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The absolute path to a plist file (e.g. /Library/Preferences/com.apple.TimeMachine.plist).  
    * - xpath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies an XPath 1.0 expression to evaluate against the XML representation of the plist file specified by the filename or app_id entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.  
  
______________
  
.. _profiles_item:  
  
< profiles_item >  
---------------------------------------------------------
The profiles_item stores information about the status of device configuration profiles on the machine.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - mdm_enrolled  
      - oval-sc:EntityItemBoolType (0..1)  
      - The status element describes whether the device is enrolled in MDM.  
    * - dep_enrolled  
      - oval-sc:EntityItemBoolType (0..1)  
      - The status element describes whether the device is enrolled in MDM via DEP.  
  
______________
  
.. _pwpolicy_item:  
  
< pwpolicy_item > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.9  
* Reason: Replaced by the pwpolicy59_item. The username, userpass, and directory_node entities in the pwpolicy_item were underspecified and as a result their meaning was uncertain. A new item was created to resolve this issue. See the pwpolicy59_item.  
* Comment: This item has been deprecated and may be removed in a future version of the language.  
  
Output of 'pwpolicy -getpolicy'. Please see the 'pwpolicy' man page for additional information.

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
      -   
    * - userpass  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - directory_node  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - maxChars  
      - oval-sc:EntityItemIntType (0..1)  
      - Maximum number of characters allowed in a password.  
    * - maxFailedLoginAttempts  
      - oval-sc:EntityItemIntType (0..1)  
      - Maximum number of failed logins before the account is locked.  
    * - minChars  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum number of characters allowed in a password.  
    * - passwordCannotBeName  
      - oval-sc:EntityItemBoolType (0..1)  
      - Defines if the password is allowed to be the same as the username or not.  
    * - requiresAlpha  
      - oval-sc:EntityItemBoolType (0..1)  
      - Defines if the password must contain an alphabetical character or not.  
    * - requiresNumeric  
      - oval-sc:EntityItemBoolType (0..1)  
      - Defines if the password must contain an numeric character or not.  
  
______________
  
.. _pwpolicy59_item:  
  
< pwpolicy59_item >  
---------------------------------------------------------
The pwpolicy59_item holds the password policy information for a particular user specified by the target_user element. Please see the 'pwpolicy' man page for additional information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - target_user  
      - oval-sc:EntityItemStringType (0..1)  
      - The target_user element specifies the user whose password policy information was collected. If xsi:nil="true", the item specifies the global policy.  
    * - username  
      - oval-sc:EntityItemStringType (0..1)  
      - The username element specifies the username of the authenticator.  
    * - userpass  
      - oval-sc:EntityItemStringType (0..1)  
      - The userpass element specifies the password of the authenticator as specified by the username element.  
    * - directory_node  
      - oval-sc:EntityItemStringType (0..1)  
      - The directory_node element specifies the directory node that the password policy information was collected from.  
    * - maxChars  
      - oval-sc:EntityItemIntType (0..1)  
      - Maximum number of characters allowed in a password.  
    * - maxFailedLoginAttempts  
      - oval-sc:EntityItemIntType (0..1)  
      - Maximum number of failed logins before the account is locked.  
    * - minChars  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum number of characters allowed in a password.  
    * - passwordCannotBeName  
      - oval-sc:EntityItemBoolType (0..1)  
      - Defines if the password is allowed to be the same as the username or not.  
    * - requiresAlpha  
      - oval-sc:EntityItemBoolType (0..1)  
      - Defines if the password must contain an alphabetical character or not.  
    * - requiresNumeric  
      - oval-sc:EntityItemBoolType (0..1)  
      - Defines if the password must contain an numeric character or not.  
    * - maxMinutesUntilChangePassword  
      - oval-sc:EntityItemIntType (0..1)  
      - Maximum number of minutes until the password must be changed.  
    * - minMinutesUntilChangePassword  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum number of minutes between password changes.  
    * - requiresMixedCase  
      - oval-sc:EntityItemBoolType (0..1)  
      - Defines if the password must contain upper and lower case characters or not.  
    * - requiresSymbol  
      - oval-sc:EntityItemBoolType (0..1)  
      - Defines if the password must contain a symbol character or not.  
    * - minutesUntilFailedLoginReset  
      - oval-sc:EntityItemIntType (0..1)  
      - Number of minutes after login has been disabled due to too many failed login attempts to wait before reenabling login.  
    * - usingHistory  
      - oval-sc:EntityItemIntType (0..1)  
      - 0 = user can reuse the current pass-word, 1 = user cannot reuse the current password, 2-15 = user cannot reuse the last n passwords.  
    * - canModifyPasswordforSelf  
      - oval-sc:EntityItemBoolType (0..1)  
      - If true, the user can change the password.  
    * - usingExpirationDate  
      - oval-sc:EntityItemBoolType (0..1)  
      - If true, user is required to change password on the date in expirationDateGMT  
    * - usingHardExpirationDate  
      - oval-sc:EntityItemBoolType (0..1)  
      - If true, user's account is disabled on the date in hardExpireDateGMT  
    * - expirationDateGMT  
      - oval-sc:EntityItemStringType (0..1)  
      - Date for the password to expire, format is: mm/dd/yyyy. NOTE: The pwpolicy command returns the year as a two digit value, but OVAL uses four digit years; the pwpolicy value is converted to an OVAL compatible value.  
    * - hardExpireDateGMT  
      - oval-sc:EntityItemStringType (0..1)  
      - Date for the user's account to be disabled, format is: mm/dd/yyyy. NOTE: The pwpolicy command returns the year as a two digit value, but OVAL uses four digit years; the pwpolicy value is converted to an OVAL compatible value.  
    * - maxMinutesUntilDisabled  
      - oval-sc:EntityItemIntType (0..1)  
      - User's account is disabled after this interval  
    * - maxMinutesOfNonUse  
      - oval-sc:EntityItemIntType (0..1)  
      - User's account is disabled if it is not accessed by this interval  
    * - newPasswordRequired  
      - oval-sc:EntityItemBoolType (0..1)  
      - If true, the user will be prompted for a new password at the next authentication.  
    * - notGuessablePattern  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
  
______________
  
.. _pwpolicy512_item:  
  
< pwpolicy512_item >  
---------------------------------------------------------
The pwpolicy512_item holds the password policy information for a particular user specified by the target_user element. Please see the 'pwpolicy' man page for additional information.

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
      - The username element specifies the user whose password policy information was collected. If xsi:nil="true", the item specifies the global policy.  
    * - authenticator  
      - oval-sc:EntityItemStringType (0..1)  
      - The authenticator element specifies the username of the authenticator.  
    * - authenticator_password  
      - oval-sc:EntityItemStringType (0..1)  
      - The authenticator_password element specifies the password of the authenticator as specified by the authenticator element.  
    * - directory_node  
      - oval-sc:EntityItemStringType (0..1)  
      - The directory_node element specifies the directory node that the password policy information was collected from.  
    * - xpath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies an XPath 1.0 expression to evaluate against the XML representation of the plist file specified by the filename or app_id entity. This XPath 1.0 expression must evaluate to a list of zero or more text values which will be accessible in OVAL via instances of the value_of entity. Any results from evaluating the XPath 1.0 expression other than a list of text strings (e.g., a nodes set) is considered an error. The intention is that the text values be drawn from instances of a single, uniquely named element or attribute. However, an OVAL interpreter is not required to verify this, so the author should define the XPath expression carefully. Note that "equals" is the only valid operator for the xpath entity.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.  
  
______________
  
.. _rlimit_item:  
  
< rlimit_item >  
---------------------------------------------------------
The rlimit_item contains information about the resource limits for launchd.

A resource limit is specified as a soft (current) limit and a hard (max) limit. When a soft limit is exceeded a process may receive a signal (for example, if the cpu time or file size is exceeded), but it will be allowed to con-tinue continue tinue execution until it reaches the hard limit (or modifies its resource limit).

For any 'unlimited' resource, the entity will have the status of 'does not exist'.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - cpu_current  
      - oval-sc:EntityItemIntType (1..1)  
      - The maximum amount of cpu time (in seconds) to be used by each process.  
    * - cpu_max  
      - oval-sc:EntityItemIntType (1..1)  
      - cpu hard limit.  
    * - filesize_current  
      - oval-sc:EntityItemIntType (1..1)  
      - The largest size (in bytes) file that may be created.  
    * - filesize_max  
      - oval-sc:EntityItemIntType (1..1)  
      - filesize hard limit.  
    * - data_current  
      - oval-sc:EntityItemIntType (1..1)  
      - The maximum size (in bytes) of the data segment for a process; this defines how far a program may extend its break with the sbrk(2) system call.  
    * - data_max  
      - oval-sc:EntityItemIntType (1..1)  
      - data hard limit.  
    * - stack_current  
      - oval-sc:EntityItemIntType (1..1)  
      - The maximum size (in bytes) of the stack segment for a process; this defines how far a program's stack segment may be extended. Stack extension is performed automatically by the system.  
    * - stack_max  
      - oval-sc:EntityItemIntType (1..1)  
      - stack hard limit.  
    * - core_current  
      - oval-sc:EntityItemIntType (1..1)  
      - The largest size (in bytes) core file that may be created.  
    * - core_max  
      - oval-sc:EntityItemIntType (1..1)  
      - core hard limit.  
    * - rss_current  
      - oval-sc:EntityItemIntType (1..1)  
      - The maximum size (in bytes) to which a process's resident set size may grow. This imposes a limit on the amount of physical memory to be given to a process; if memory is tight, the system will prefer to take memory from processes that are exceeding their declared resident set size.  
    * - rss_max  
      - oval-sc:EntityItemIntType (1..1)  
      - rss hard limit.  
    * - memlock_current  
      - oval-sc:EntityItemIntType (1..1)  
      - The maximum size (in bytes) which a process may lock into memory using the mlock(2) function.  
    * - memlock_max  
      - oval-sc:EntityItemIntType (1..1)  
      - memlock hard limit.  
    * - maxproc_current  
      - oval-sc:EntityItemIntType (1..1)  
      - The maximum number of simultaneous processes for this user id.  
    * - maxproc_max  
      - oval-sc:EntityItemIntType (1..1)  
      - maxproc hard limit.  
    * - maxfiles_current  
      - oval-sc:EntityItemIntType (1..1)  
      - The maximum number of open files for this process.  
    * - maxfiles_max  
      - oval-sc:EntityItemIntType (1..1)  
      - maxfiles hard limit.  
  
______________
  
.. _softwareupdate_item:  
  
< softwareupdate_item >  
---------------------------------------------------------
This item represents automatic software update information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - schedule  
      - oval-sc:EntityItemBoolType (1..1)  
      - Specifies whether automatic checking is enabled (true).  
    * - software_title  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Specifies the title string for an available (not installed) software update.  
  
______________
  
.. _systemprofiler_item:  
  
< systemprofiler_item >  
---------------------------------------------------------
This item stores results from performing an XPATH query on the XML result of a systemprofiler data type query.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - data_type  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the data type that was used in collection.  
    * - xpath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies an Xpath expression describing the text node(s) or attribute(s) to look at.  
    * - value_of  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value_of element checks the value(s) of the text node(s) or attribute(s) found. How this is used is entirely controlled by operator attributes.  
  
______________
  
.. _systemsetup_item:  
  
< systemsetup_item >  
---------------------------------------------------------
This item represents system setup information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - timezone  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the name of the current time zone.  
    * - usingnetworktime  
      - oval-sc:EntityItemBoolType (1..1)  
      - Specifies wither the machine is using network time.  
    * - networktimeserver  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the network time server.  
    * - computersleep  
      - oval-sc:EntityItemIntType (1..1)  
      - Specifies the computer sleep inactivity timer, or 0 for never.  
    * - displaysleep  
      - oval-sc:EntityItemIntType (1..1)  
      - Specifies the display sleep inactivity timer, or 0 for never.  
    * - harddisksleep  
      - oval-sc:EntityItemIntType (1..1)  
      - Specifies the hard disk sleep inactivity timer, or 0 for never.  
    * - wakeonmodem  
      - oval-sc:EntityItemBoolType (1..1)  
      - Specifies whether the computer will wake up if the modem is accessed.  
    * - wakeonnetworkaccess  
      - oval-sc:EntityItemBoolType (1..1)  
      - Specifies whether the computer will wake up if the network is accessed.  
    * - restartfreeze  
      - oval-sc:EntityItemBoolType (1..1)  
      - Specifies whether the computer will restart after freezing.  
    * - restartpowerfailure  
      - oval-sc:EntityItemBoolType (1..1)  
      - Specifies whether the computer will restart after a power failure.  
    * - allowpowerbuttontosleepcomputer  
      - oval-sc:EntityItemBoolType (1..1)  
      - Specifies whether the power button can be used to cause the computer to sleep.  
    * - remotelogin  
      - oval-sc:EntityItemBoolType (1..1)  
      - Specifies whether remote logins are allowed.  
    * - remoteappleevents  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether remote Apple events are enabled.  
    * - computername  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the computer's name.  
    * - localsubnetname  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the name of the local subnet.  
    * - startupdisk  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the startup disks.  
    * - waitforstartupafterpowerfailure  
      - oval-sc:EntityItemIntType (1..1)  
      - Specifies the number of seconds the computer waits to start up after a power failure.  
    * - disablekeyboardwhenenclosurelockisengaged  
      - oval-sc:EntityItemBoolType (1..1)  
      - Specifies whether the keyboard is locked when the closure lock is engaged.  
    * - kernelbootarchitecturesetting  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the kernel boot architecture setting.  
  
.. _EntityItemPermissionCompareType:  
  
== EntityItemPermissionCompareType ==  
---------------------------------------------------------
The EntityItemPermissionCompareType complex type restricts a string value to more, less, or same which specifies if an actual permission is different than the expected permission (more or less restrictive) or if the permission is the same. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemPlistTypeType:  
  
== EntityItemPlistTypeType == (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.2:1.0  
* Reason: Used only by the deprecated plist_item.  
* Comment: This enumeration has been deprecated and may be removed in a future version of the language.  
  
The EntityItemPlistTypeType complex type restricts a string value to the seven values CFString, CFNumber, CFBoolean, CFDate, CFData, CFArray, and CFDictionary that specify the type of the value associated with a property list preference key. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The CFData type is used to describe a preference key that has a base64-encoded binary value. The OVAL string datatype should be used to represent CFData values.  
    * - CFArray  
      - | The CFArray type is used to describe a preference key that has a collection of values. This is represented as multiple value entities.  
    * - CFDictionary  
      - | The CFDictionary type is used to describe a preference key that has a collection of key-value pairs. Note that the collection of CFDictionary values is not supported. If an attempt is made to collect a CFDictionary value, an error should be reported.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemPackageSourceType:  
  
== EntityItemPackageSourceType ==  
---------------------------------------------------------
**Restricts:** oval-sc:EntityItemStringType

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
  
