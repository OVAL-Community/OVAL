# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: AIX System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the AIX specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by Yuzheng Zhou and Todd Dolinsky at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="interim_fix_item"></a>< interim_fix_item >

From emgr -l -u VUID Command. See instfix manpage for specific fields.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| vuid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Virtually Unique ID. A combination of time and cpuid, this ID can be used to differentiate fixes that are otherwise identical.</div>|  
| label | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Each efix that is installed on a given system has a unique efix label.</div>|  
| abstract | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Describes the efix package.</div>|  
| state | [aix-sc:EntityItemInterimFixStateType](#EntityItemInterimFixStateType)  (0..1) |  
||<div>The the emergency fix state.</div>|  
  
______________
  
## <a name="fileset_item"></a>< fileset_item >

Output of /usr/bin/lslpp -l FilesetName. See lslpp manpage for specific fields.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| flstinst | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Represents the name of the fileset being checked.</div>|  
| level | [oval-sc:EntityItemVersionType](oval-system-characteristics-schema.md#EntityItemVersionType)  (0..1) |  
||<div>Maintenance level (also known as version in Solaris or Linux) of the fileset. For example, "5.3.0.10" is the level for 'bos.txt.tfs' fileset in one AIX machine.</div>|  
| state | [aix-sc:EntityItemFilesetStateType](#EntityItemFilesetStateType)  (0..1) |  
||<div>This gives the state of the fileset being checked. The state can be 'APPLIED', 'APPLYING','BROKEN', 'COMMITTED', 'EFIX LOCKED', 'OBSOLETE', 'COMMITTING','REJECTING'. See the manpage of the 'lslpp' command more information.</div>|  
| description | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Short description of the fileset being checked.</div>|  
  
______________
  
## <a name="fix_item"></a>< fix_item >

From /usr/sbin/instfix -iavk APARNum Command. See instfix manpage for specific fields.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| apar_number | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>APAR is the short for 'Authorized Program Analysis Report'. APAR identifies and describes a software product defect. An APAR number can obtain a PTF (Program Temporary Fix) for the defect, if a PTF is available. An example of an apar_number is 'IY78751', it includes two alphabetic characters and a 5-digit integer.</div>|  
| abstract | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The abstract of the APAR being checked. For instance, 'LL syas rXct are available even when not susea' is the abstract of APAR 'IY78751'.</div>|  
| symptom | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The symptom text related to the APAR being checked. For example, the symptom text for 'IY75211' is 'Daylight savings change for year 2007 and beyond'.</div>|  
| installation_status | [aix-sc:EntityItemFixInstallationStatusType](#EntityItemFixInstallationStatusType)  (0..1) |  
||<div>The installation status of files associated with the APAR.</div>|  
  
______________
  
## <a name="no_item"></a>< no_item >

The no_item is used to hold information related to the /usr/sbin/no command and the tunable parameters it manages. Currently, /usr/sbin/no is used to configure network tuning parameters. The /usr/sbin/no command sets or displays current or next boot values for network tuning parameters. The /usr/sbin/no command queries the named parameter, retrieves the value associated with the specified parameter, and displays it.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| tunable | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the target parameter to be queried by the /usr/sbin/no command. Examples include ip_forwarding and tcp_keepalive_interval.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>The value entity defines the value assigned to the tunable parameter being examined.</div>|  
  
______________
  
## <a name="oslevel_item"></a>< oslevel_item >

Information about the release and maintenance level of AIX operating system. This information can be retrieved by the /usr/bin/oslevel -r command.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| maintenance_level | [oval-sc:EntityItemVersionType](oval-system-characteristics-schema.md#EntityItemVersionType)  (0..1) |  
||<div>This is the maintenance level (system version) of current AIX operating system.</div>|  
  
## <a name="EntityItemFilesetStateType"></a>== EntityItemFilesetStateType ==

The EntityStateFilesetStateType complex type defines the different values that are valid for the state entity of a fileset state. The empty string value is permitted here to allow for detailed error reporting.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| APPLIED | <div>The specified fileset is installed on the system. The APPLIED state means that the fileset can be rejected with the installp command and the previous level of the fileset restored. This state is only valid for Version 4 fileset updates and 3.2 migrated filesets.</div> |  
| APPLYING | <div>An attempt was made to apply the specified fileset, but it did not complete successfully, and cleanup was not performed.</div> |  
| BROKEN | <div>The specified fileset or fileset update is broken and should be reinstalled before being used.</div> |  
| COMMITTED | <div>The specified fileset is installed on the system. The COMMITTED state means that a commitment has been made to this level of the software. A committed fileset update cannot be rejected, but a committed fileset base level and its updates (regardless of state) can be removed or deinstalled by the installp command.</div> |  
| COMMITTING | <div>An attempt was made to commit the specified fileset, but it did not complete successfully, and cleanup was not performed.</div> |  
| EFIX LOCKED | <div>The specified fileset was installed sucessfully and locked by the interim fix (interim fix) manager.</div> |  
| OBSOLETE | <div>The specified fileset was installed with an earlier version of the operating system but has been replaced by a repackaged (renamed) newer version. Some of the files that belonged to this fileset have been replaced by versions from the repackaged fileset.</div> |  
| REJECTING | <div>An attempt was made to reject the specified fileset, but it did not complete successfully, and cleanup was not performed.</div> |  
|  |  |  
  
## <a name="EntityItemFixInstallationStatusType"></a>== EntityItemFixInstallationStatusType ==

The EntityStateFixInstallationStatusType defines the different values that are valid for the installation_status entity of a fix_state item. The empty string is also allowed as a valid value to support empty emlements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| ALL_INSTALLED | <div>All filesets for XXXXXXX were found</div> |  
| SOME_INSTALLED | <div>Not all filesets for XXXXXXX were found</div> |  
| NONE_INSTALLED | <div>No filesets which have fixes for XXXXXXX are currently installed.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemInterimFixStateType"></a>== EntityItemInterimFixStateType ==

The EntityItemInterimFixStateType complex type defines the different values that are valid for the state entity of a interim_fix_state state. Please refer to the AIX documentation of Emergency Fix States. The empty string value is permitted here to allow for detailed error reporting.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| STABLE | <div>The efix was installed with a standard installation, and successfully completed the last installation operation.</div> |  
| MOUNTED | <div>The efix was installed with a mount installation operation, and successfully completed the last installation or mount operation.</div> |  
| UNMOUNTED | <div>The efix was installed with a mount installation operation and one or more efix files were unmounted in a previous emgr command operation.</div> |  
| BROKEN | <div>An unrecoverable error occurred during an installation or removal operation. The status of the efix is unreliable.</div> |  
| INSTALLING | <div>The efix is in the process of installing.</div> |  
| REBOOT_REQUIRED | <div>The efix was installed successfully and requires a reboot to fully integrate into the target system.</div> |  
| REMOVING | <div>The efix is in the process of being removed.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
