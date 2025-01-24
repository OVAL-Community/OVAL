Open Vulnerability and Assessment Language: MacOS Definition  
=========================================================
* Schema: MacOS Definition  
* Version: 6.0  
* Release Date: 1/24/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the MacOS specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The MacOS Definition Schema was initially developed by The Center for Internet Security. Many thanks to their contributions to OVAL and the security community.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`accountinfo_test`  
* :ref:`authorizationdb_test`  
* :ref:`disabledservice_test`  
* :ref:`diskinfo_test`  
* :ref:`filevault_test`  
* :ref:`firmwarepassword_test`  
* :ref:`gatekeeper_test`  
* :ref:`installhistory_test`  
* :ref:`keychain_test`  
* :ref:`launchd_test`  
* :ref:`nvram512_test`  
* :ref:`plist511_test`  
* :ref:`profiles_test`  
* :ref:`pwpolicy512_test`  
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
  
