Open Vulnerability and Assessment Language: MacOS System Characteristics  
=========================================================
* Schema: MacOS System Characteristics  
* Version: 6.0  
* Release Date: 1/24/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the MacOS specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The MacOS System Characteristics Schema was initially developed by The Center for Internet Security. Many thanks to their contributions to OVAL and the security community.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`accountinfo_item`  
* :ref:`authorizationdb_item`  
* :ref:`diskinfo_item`  
* :ref:`disabledservice_item`  
* :ref:`filevault_item`  
* :ref:`firmwarepassword_item`  
* :ref:`gatekeeper_item`  
* :ref:`installhistory_item`  
* :ref:`keychain_item`  
* :ref:`launchd_item`  
* :ref:`nvram512_item`  
* :ref:`plist511_item`  
* :ref:`profiles_item`  
* :ref:`pwpolicy512_item`  
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
  
