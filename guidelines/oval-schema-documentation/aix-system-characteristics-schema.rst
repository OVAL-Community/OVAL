Open Vulnerability and Assessment Language: AIX System Characteristics  
=========================================================
* Schema: AIX System Characteristics  
* Version: 5.12  
* Release Date: 11/29/2024 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the AIX specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by Yuzheng Zhou and Todd Dolinsky at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`interim_fix_item`  
* :ref:`fileset_item`  
* :ref:`fix_item`  
* :ref:`deviceattribute_item`  
* :ref:`inittab_item`  
* :ref:`securitystanza_item`  
* :ref:`useraccount_item`  
* :ref:`nfso_item`  
* :ref:`no_item`  
* :ref:`oslevel_item`  
  
______________
  
.. _interim_fix_item:  
  
< interim_fix_item >  
---------------------------------------------------------
From emgr -l -u VUID Command. See instfix manpage for specific fields.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vuid  
      - oval-sc:EntityItemStringType (0..1)  
      - Virtually Unique ID. A combination of time and cpuid, this ID can be used to differentiate fixes that are otherwise identical.  
    * - label  
      - oval-sc:EntityItemStringType (0..1)  
      - Each efix that is installed on a given system has a unique efix label.  
    * - abstract  
      - oval-sc:EntityItemStringType (0..1)  
      - Describes the efix package.  
    * - state  
      - aix-sc:EntityItemInterimFixStateType (0..1)  
      - The the emergency fix state.  
  
______________
  
.. _fileset_item:  
  
< fileset_item >  
---------------------------------------------------------
Output of /usr/bin/lslpp -l FilesetName. See lslpp manpage for specific fields.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - flstinst  
      - oval-sc:EntityItemStringType (0..1)  
      - Represents the name of the fileset being checked.  
    * - level  
      - oval-sc:EntityItemVersionType (0..1)  
      - Maintenance level (also known as version in Solaris or Linux) of the fileset. For example, "5.3.0.10" is the level for 'bos.txt.tfs' fileset in one AIX machine.  
    * - state  
      - aix-sc:EntityItemFilesetStateType (0..1)  
      - This gives the state of the fileset being checked. The state can be 'APPLIED', 'APPLYING','BROKEN', 'COMMITTED', 'EFIX LOCKED', 'OBSOLETE', 'COMMITTING','REJECTING'. See the manpage of the 'lslpp' command more information.  
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      - Short description of the fileset being checked.  
  
______________
  
.. _fix_item:  
  
< fix_item >  
---------------------------------------------------------
From /usr/sbin/instfix -iavk APARNum Command. See instfix manpage for specific fields.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - apar_number  
      - oval-sc:EntityItemStringType (0..1)  
      - APAR is the short for 'Authorized Program Analysis Report'. APAR identifies and describes a software product defect. An APAR number can obtain a PTF (Program Temporary Fix) for the defect, if a PTF is available. An example of an apar_number is 'IY78751', it includes two alphabetic characters and a 5-digit integer.  
    * - abstract  
      - oval-sc:EntityItemStringType (0..1)  
      - The abstract of the APAR being checked. For instance, 'LL syas rXct are available even when not susea' is the abstract of APAR 'IY78751'.  
    * - symptom  
      - oval-sc:EntityItemStringType (0..1)  
      - The symptom text related to the APAR being checked. For example, the symptom text for 'IY75211' is 'Daylight savings change for year 2007 and beyond'.  
    * - installation_status  
      - aix-sc:EntityItemFixInstallationStatusType (0..1)  
      - The installation status of files associated with the APAR.  
  
______________
  
.. _deviceattribute_item:  
  
< deviceattribute_item >  
---------------------------------------------------------
The deviceattribute_item is used to hold information related to the execution of the /usr/sbin/lsattr -EOl [device] -a [attribute] command.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the device logical name in the Customized Devices object class whose attribute names or values you want displayed  
    * - attribute_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Displays information for the specified attributes of a specific device or type of device  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The effective value of the attribute for a customized device.  
  
______________
  
.. _inittab_item:  
  
< inittab_item >  
---------------------------------------------------------
The inittab_item is used to hold information related to the /usr/sbin/lsitab command and information stored in /etc/inittab. Currently, /usr/sbin/lsitab is used to configure records in the /etc/inittab file which controls the initialization process.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - identifier  
      - oval-sc:EntityItemStringType (0..1)  
      - A string (one or more than one character) that uniquely identifies an object  
    * - runlevel  
      - aix-sc:EntityItemInittabRunlevelType (0..1)  
      - The run level in which this entry can be processed. Run levels effectively correspond to a configuration of processes in the system. Run levels are represented by the numbers 0 through 9. There are three other values that appear in the runlevel field, even though they are not true run levels: a, b, and c. Entries that have these characters in the runlevel field are processed only when the telinit command requests them to be run (regardless of the current run level of the system).  
    * - action  
      - aix-sc:EntityItemInittabActionType (0..1)  
      - Tells the init command how to treat the process specified in the identifier field.  
    * - command  
      - oval-sc:EntityItemStringType (0..1)  
      - A shell command to execute.  
  
______________
  
.. _securitystanza_item:  
  
< securitystanza_item >  
---------------------------------------------------------
The securitystanza_item element defines the different information associated with a specific call to /usr/bin/lssec. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - stanza_file  
      - aix-sc:EntityItemStanzaFileType (1..1)  
      - The stanza_file entity is an enumeration of values representing the security configuration file containing the desired attributes.  
    * - stanza_name  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the name of the stanza to list.  
    * - attribute_name  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the attribute to list.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The value entity defines the value to check against the security parameter being examined.  
  
______________
  
.. _useraccount_item:  
  
< useraccount_item >  
---------------------------------------------------------
The useraccount_item is used to hold information related to the /usr/sbin/lsuser command and the attributes it manages. Currently, /usr/sbin/lsuser is used to display user account attributes. The /usr/sbin/lsuser command queries the named attribute for the provided user account(s).

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
      - The name of the user to be queried by the /usr/sbin/lsuser command.  
    * - account_attribute  
      - aix-sc:EntityItemUserAccountAttributeType (0..1)  
      - The name of the user attribute to be queried by the /usr/sbin/lsuser command. This value can include any attribute that is defined by the /usr/bin/chuser command.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The value entity defines the value assigned to the user attribute being examined.  
  
______________
  
.. _nfso_item:  
  
< nfso_item >  
---------------------------------------------------------
The nfso_item is used to hold information related to the /usr/sbin/nfso command and the tunable parameters it manages. Currently, /usr/sbin/nfso is used to configure network file system (NFS) tuning parameters. The /usr/sbin/nfso command sets or displays current or next boot values for network tuning parameters. The /usr/sbin/nfso command queries the named parameter, retrieves the value associated with the specified parameter, and displays it.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - tunable  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the target parameter to be queried by the /usr/sbin/nfso command. Examples include nfs_max_read_size and nfs_max_write_size.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The value entity defines the value assigned to the tunable parameter being examined.  
  
______________
  
.. _no_item:  
  
< no_item >  
---------------------------------------------------------
The no_item is used to hold information related to the /usr/sbin/no command and the tunable parameters it manages. Currently, /usr/sbin/no is used to configure network tuning parameters. The /usr/sbin/no command sets or displays current or next boot values for network tuning parameters. The /usr/sbin/no command queries the named parameter, retrieves the value associated with the specified parameter, and displays it.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - tunable  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the target parameter to be queried by the /usr/sbin/no command. Examples include ip_forwarding and tcp_keepalive_interval.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The value entity defines the value assigned to the tunable parameter being examined.  
  
______________
  
.. _oslevel_item:  
  
< oslevel_item >  
---------------------------------------------------------
Information about the release and maintenance level of AIX operating system. This information can be retrieved by the /usr/bin/oslevel -r command.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - maintenance_level  
      - oval-sc:EntityItemVersionType (0..1)  
      - This is the maintenance level (system version) of current AIX operating system.  
  
.. _EntityItemFilesetStateType:  
  
== EntityItemFilesetStateType ==  
---------------------------------------------------------
The EntityStateFilesetStateType complex type defines the different values that are valid for the state entity of a fileset state. The empty string value is permitted here to allow for detailed error reporting.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - APPLIED  
      - | The specified fileset is installed on the system. The APPLIED state means that the fileset can be rejected with the installp command and the previous level of the fileset restored. This state is only valid for Version 4 fileset updates and 3.2 migrated filesets.  
    * - APPLYING  
      - | An attempt was made to apply the specified fileset, but it did not complete successfully, and cleanup was not performed.  
    * - BROKEN  
      - | The specified fileset or fileset update is broken and should be reinstalled before being used.  
    * - COMMITTED  
      - | The specified fileset is installed on the system. The COMMITTED state means that a commitment has been made to this level of the software. A committed fileset update cannot be rejected, but a committed fileset base level and its updates (regardless of state) can be removed or deinstalled by the installp command.  
    * - COMMITTING  
      - | An attempt was made to commit the specified fileset, but it did not complete successfully, and cleanup was not performed.  
    * - EFIX LOCKED  
      - | The specified fileset was installed sucessfully and locked by the interim fix (interim fix) manager.  
    * - OBSOLETE  
      - | The specified fileset was installed with an earlier version of the operating system but has been replaced by a repackaged (renamed) newer version. Some of the files that belonged to this fileset have been replaced by versions from the repackaged fileset.  
    * - REJECTING  
      - | An attempt was made to reject the specified fileset, but it did not complete successfully, and cleanup was not performed.  
    * -   
      - (No Description)  
  
.. _EntityItemFixInstallationStatusType:  
  
== EntityItemFixInstallationStatusType ==  
---------------------------------------------------------
The EntityStateFixInstallationStatusType defines the different values that are valid for the installation_status entity of a fix_state item. The empty string is also allowed as a valid value to support empty emlements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ALL_INSTALLED  
      - | All filesets for XXXXXXX were found  
    * - SOME_INSTALLED  
      - | Not all filesets for XXXXXXX were found  
    * - NONE_INSTALLED  
      - | No filesets which have fixes for XXXXXXX are currently installed.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemInterimFixStateType:  
  
== EntityItemInterimFixStateType ==  
---------------------------------------------------------
The EntityItemInterimFixStateType complex type defines the different values that are valid for the state entity of a interim_fix_state state. Please refer to the AIX documentation of Emergency Fix States. The empty string value is permitted here to allow for detailed error reporting.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - STABLE  
      - | The efix was installed with a standard installation, and successfully completed the last installation operation.  
    * - MOUNTED  
      - | The efix was installed with a mount installation operation, and successfully completed the last installation or mount operation.  
    * - UNMOUNTED  
      - | The efix was installed with a mount installation operation and one or more efix files were unmounted in a previous emgr command operation.  
    * - BROKEN  
      - | An unrecoverable error occurred during an installation or removal operation. The status of the efix is unreliable.  
    * - INSTALLING  
      - | The efix is in the process of installing.  
    * - REBOOT_REQUIRED  
      - | The efix was installed successfully and requires a reboot to fully integrate into the target system.  
    * - REMOVING  
      - | The efix is in the process of being removed.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemStanzaFileType:  
  
== EntityItemStanzaFileType ==  
---------------------------------------------------------
The lssec command lists attributes stored in the security configuration stanza files. The following security configuration files contain attributes that you can specify with the Attribute parameter.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ENVIRON  
      - | /etc/security/environ  
    * - GROUP  
      - | /etc/security/group  
    * - HOSTS  
      - | /etc/security/audit/hosts  
    * - LASTLOG  
      - | /etc/security/lastlog  
    * - LIMITS  
      - | /etc/security/limits  
    * - LOGIN  
      - | /etc/security/login.cfg  
    * - MKUSER  
      - | /usr/lib/security/mkuser.default  
    * - NSCONTROL  
      - | /etc/nscontrol.conf  
    * - PASSWD  
      - | /etc/security/passwd  
    * - PORTLOG  
      - | /etc/security/portlog  
    * - PWDALG  
      - | /etc/security/pwdalg.cfg  
    * - ROLES  
      - | /etc/security/roles  
    * - SMITACL_USER  
      - | /etc/security/smitacl.user  
    * - SMITACL_GROUP  
      - | /etc/security/smitacl.group  
    * - USER  
      - | /etc/security/user  
    * - USER_ROLES  
      - | /etc/security/user.roles  
    * - RTCD_POLICY  
      - | /etc/security/rtc/rtcd_policy.conf  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityItemUserAccountAttributeType:  
  
== EntityItemUserAccountAttributeType ==  
---------------------------------------------------------
The name of the user attribute to be queried by the /usr/sbin/lsuser command. This value can include any attribute that is defined by the /usr/bin/chuser command.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ACCOUNT_LOCKED  
      - | Indicates if the user account is locked  
    * - ADMIN  
      - | Defines the administrative status of the user.  
    * - ADMGROUPS  
      - | Defines the groups that the user administrates  
    * - AUDITCLASSES  
      - | Defines the user's audit classes  
    * - AUTH1  
      - | Defines the primary methods for authenticating the user  
    * - AUTH2  
      - | Defines the secondary methods for authenticating the user  
    * - CAPABILITIES  
      - | Defines the system privileges (capabilities) which are granted to a user by the login or su commands  
    * - CORE  
      - | Specifies the soft limit for the largest core file a user's process can create  
    * - CORE_COMPRESS  
      - | Enables or disables core file compression  
    * - CORE_HARD  
      - | Specifies the largest core file a user's process can create  
    * - CORE_NAMING  
      - | Selects a choice of core file naming strategies. Valid values for this attribute are On and Off  
    * - CORE_PATH  
      - | Enables or disables core file path specification  
    * - CORE_PATHNAME  
      - | Specifies a location to be used to place core files, if the core_path attribute is set to On  
    * - CPU  
      - | Identifies the soft limit for the largest amount of system unit time (in seconds) that a user's process can use  
    * - CPU_HARD  
      - | Identifies the largest amount of system unit time (in seconds) that a user's process can use  
    * - DAEMON  
      - | Indicates whether the user specified by the Name parameter can run programs using the cron daemon or the src (system resource controller) daemon  
    * - DATA  
      - | Specifies the soft limit for the largest data segment for a user's process  
    * - DATA_HARD  
      - | Specifies the largest data segment for a user's process  
    * - DCE_EXPORT  
      - | Allows the DCE registry to overwrite the local user information with the DCE user information during a DCE export operation  
    * - DEFAULT_ROLES  
      - | Specifies the default roles for the user  
    * - DICTIONLIST  
      - | Defines the password dictionaries used by the composition restrictions when checking new passwords  
    * - DOMAINS  
      - | Defines the list of domains that the user belongs to  
    * - EXPIRES  
      - | Identifies the expiration date of the account  
    * - FSIZE  
      - | Defines the soft limit for the largest file a user's process can create or extend  
    * - FSIZE_HARD  
      - | Defines the largest file a user's process can create or extend  
    * - GECOS  
      - | Supplies general information about the user specified by the Name parameter  
    * - GROUPS  
      - | Identifies the groups to which user belongs  
    * - HISTEXPIRE  
      - | Defines the period of time (in weeks) that a user cannot reuse a password  
    * - HISTSIZE  
      - | Defines the number of previous passwords that a user cannot reuse  
    * - HOME  
      - | Identifies the home directory of the user specified by the Name parameter  
    * - ID  
      - | Specifies the user ID  
    * - LOGIN  
      - | Indicates whether the user can log in to the system with the login command  
    * - LOGINRETRIES  
      - | Defines the number of unsuccessful login attempts allowed after the last successful login before the system locks the account  
    * - LOGINTIMES  
      - | Defines the days and times that the user is allowed to access the system  
    * - MAXAGE  
      - | Defines the maximum age (in weeks) of a password  
    * - MAXEXPIRED  
      - | Defines the maximum time (in weeks) beyond the maxage value that a user can change an expired password  
    * - MAXREPEATS  
      - | Defines the maximum number of times a character can be repeated in a new password  
    * - MAXULOGS  
      - | Specifies the maximum number of concurrent logins per user  
    * - MINAGE  
      - | Defines the minimum age (in weeks) a password must be before it can be changed  
    * - MINALPHA  
      - | Defines the minimum number of alphabetic characters that must be in a new password  
    * - MINDIFF  
      - | Defines the minimum number of characters required in a new password that were not in the old password  
    * - MINLEN  
      - | Defines the minimum length of a password  
    * - MINOTHER  
      - | Defines the minimum number of non-alphabetic characters that must be in a new password  
    * - NOFILES  
      - | Defines the soft limit for the number of file descriptors a user process may have open at one time  
    * - NOFILES_HARD  
      - | Defines the hard limit for the number of file descriptors a user process may have open at one time  
    * - NPROC  
      - | Defines the soft limit on the number of processes a user can have running at one time  
    * - NPROC_HARD  
      - | Defines the hard limit on the number of processes a user can have running at one time  
    * - PGRP  
      - | Identifies the primary group of the user  
    * - PROJECTS  
      - | Defines the list of projects to which the user's processes can be assigned  
    * - PWDCHECKS  
      - | Defines the password restriction methods enforced on new passwords  
    * - PWDWARNTIME  
      - | Defines the number of days before the system issues a warning that a password change is required  
    * - RCMDS  
      - | Controls the remote execution of the r-commands (rsh, rexec, and rcp)  
    * - RLOGIN  
      - | Permits access to the account from a remote location with the telnet orrlogin commands  
    * - ROLES  
      - | Defines the administrative roles for this user  
    * - RSS  
      - | The soft limit for the largest amount of physical memory a user's process can allocate  
    * - RSS_HARD  
      - | The largest amount of physical memory a user's process can allocate  
    * - SHELL  
      - | Defines the program run for the user at session initiation  
    * - STACK  
      - | Specifies the soft limit for the largest process stack segment for a user's process  
    * - STACK_HARD  
      - | Specifies the largest process stack segment of a user's process  
    * - SU  
      - | Indicates whether another user can switch to the specified user account with the su command  
    * - SUGROUPS  
      - | Defines the groups that can use the su command to switch to the specified user account  
    * - SYSENV  
      - | Identifies the system-state (protected) environment  
    * - THREADS  
      - | Specifies the soft limit for the largest number of threads that a user process can create  
    * - THREADS_HARD  
      - | Specifies the largest possible number of threads that a user process can create  
    * - TPATH  
      - | Indicates the user's trusted path status  
    * - TTYS  
      - | Defines the terminals that can access the account specified by the Name parameter  
    * - UMASK  
      - | Determines file permissions  
    * - USRENV  
      - | Defines the user-state (unprotected) environment  
    * - EFS_KEYSTORE_ACCESS  
      - | Specifies the database type of the user keystore. The attribute is valid only when the system is EFS-enabled  
    * - EFS_ADMINKS_ACCESS  
      - | Represents the database type for the efs_admin keystore. The attribute is valid only when the system is EFS-enabled  
    * - EFS_INITIALKS_MODE  
      - | Specifies the initial mode of the user keystore. The attribute is valid only when the system is EFS-enabled  
    * - EFS_ALLOWKSMODECHANGEBYUSER  
      - | Specifies whether the mode can be changed. The attribute is valid only when the system is EFS-enabled  
    * - EFS_KEYSTORE_ALGO  
      - | Specifies the algorithm that is used to generate the private key of the user during the keystore creation. The attribute is valid only when the system is EFS-enabled  
    * - EFS_FILE_ALGO  
      - | Specifies the encryption algorithm for user files. The attribute is valid only when the system is EFS-enabled  
    * - MINSL  
      - | Defines the minimum sensitivity-clearance level that the user can have. This attribute is valid only for Trusted AIX.  
    * - MAXSL  
      - | Defines the maximum sensitivity-clearance level that the user can have. This attribute is valid only for Trusted AIX.  
    * - DEFSL  
      - | Defines the default sensitivity level that the user is assigned during login. This attribute is valid only for Trusted AIX.  
    * - MINTL  
      - | Defines the minimum integrity clearance level that the user can have. This attribute is valid only for Trusted AIX.  
    * - MAXTL  
      - | Defines the maximum integrity clearance level that the user can have. This attribute is valid only for Trusted AIX.  
    * - DEFTL  
      - | Defines the default integrity clearance level that the user is assigned during login. This attribute is valid only for Trusted AIX.  
    * - MINLOWERALPHA  
      - | Defines the minimum number of lower case alphabetic characters that must be in a new password  
    * - MINUPPERALPHA  
      - | Defines the minimum number of upper case alphabetic characters that must be in a new password  
    * - MINDIGIT  
      - | Defines the minimum number of digits that must be in a new password  
    * - MINSPECIALCHAR  
      - | Defines the minimum number of special characters that must be in a new password  
  
.. _EntityItemInittabRunlevelType:  
  
== EntityItemInittabRunlevelType ==  
---------------------------------------------------------
The EntityItemInittabRunlevelType describes the enumeration of runlevel values present in /etc/inittab. The empty string value is permitted here to allow for detailed error reporting and variable references.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - 0  
      - | Run levels are represented by the numbers 0 through 9  
    * - 1  
      - | Run levels are represented by the numbers 0 through 9  
    * - 2  
      - | Run levels are represented by the numbers 0 through 9  
    * - 3  
      - | Run levels are represented by the numbers 0 through 9  
    * - 4  
      - | Run levels are represented by the numbers 0 through 9  
    * - 5  
      - | Run levels are represented by the numbers 0 through 9  
    * - 6  
      - | Run levels are represented by the numbers 0 through 9  
    * - 7  
      - | Run levels are represented by the numbers 0 through 9  
    * - 8  
      - | Run levels are represented by the numbers 0 through 9  
    * - 9  
      - | Run levels are represented by the numbers 0 through 9  
    * - a  
      - | There are three other values that appear in the runlevel field, even though they are not true run levels: a, b, and c. Entries that have these characters in the runlevel field are processed only when the telinit command requests them to be run (regardless of the current run level of the system).  
    * - b  
      - | There are three other values that appear in the runlevel field, even though they are not true run levels: a, b, and c. Entries that have these characters in the runlevel field are processed only when the telinit command requests them to be run (regardless of the current run level of the system).  
    * - c  
      - | There are three other values that appear in the runlevel field, even though they are not true run levels: a, b, and c. Entries that have these characters in the runlevel field are processed only when the telinit command requests them to be run (regardless of the current run level of the system).  
    * -   
      - | The empty string is allowed for variable references  
  
.. _EntityItemInittabActionType:  
  
== EntityItemInittabActionType ==  
---------------------------------------------------------
The EntityItemInittabActionType indicates how to treat the process specified in the identifier field. The empty string value is permitted here to allow for detailed error reporting.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - respawn  
      - | If the process does not exist, start the process. Do not wait for its termination (continue scanning the /etc/inittab file). Restart the process when it dies. If the process exists, do nothing and continue scanning the /etc/inittab file.  
    * - wait  
      - | When the init command enters the run level that matches the entry's run level, start the process and wait for its termination  
    * - once  
      - | When the init command enters a run level that matches the entry's run level, start the process, and do not wait for its termination  
    * - boot  
      - | Process the entry only during system boot, which is when the init command reads the /etc/inittab file during system startup  
    * - bootwait  
      - | Process the entry the first time that the init command goes from single-user to multi-user state after the system is booted  
    * - powerfail  
      - | Execute the process associated with this entry only when the init command receives a power fail signal (SIGPWR)  
    * - powerwait  
      - | Execute the process associated with this entry only when the init command receives a power fail signal (SIGPWR), and wait until it terminates  
    * - off  
      - | If the process associated with this entry is currently running, send the warning signal (SIGTERM), and wait 20 seconds before terminating the process with the kill signal (SIGKILL)  
    * - ondemand  
      - | Functionally identical to respawn, except this action applies to the a, b, or c values, not to run levels  
    * - initdefault  
      - | An entry with this action is only scanned when the init command is initially invoked  
    * - sysinit  
      - | Entries of this type are executed before the init command tries to access the console before login  
    * -   
      - (No Description)  
  
