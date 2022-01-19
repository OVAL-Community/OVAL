Open Vulnerability and Assessment Language: AIX System Characteristics  
=========================================================
* Schema: AIX System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the AIX specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by Yuzheng Zhou and Todd Dolinsky at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Item Listing  
---------------------------------------------------------
* :ref:`interim_fix_item`  
* :ref:`fileset_item`  
* :ref:`fix_item`  
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
  
