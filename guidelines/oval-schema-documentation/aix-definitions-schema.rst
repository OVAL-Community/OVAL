Open Vulnerability and Assessment Language: AIX Definition  
=========================================================
* Schema: AIX Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the AIX specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by Yuzheng Zhou and Todd Dolinsky at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Test Listing  
---------------------------------------------------------
* :ref:`interim_fix_test`  
* :ref:`fileset_test`  
* :ref:`fix_test`  
* :ref:`no_test`  
* :ref:`oslevel_test`  
  
______________
  
.. _interim_fix_test:  
  
< interim_fix_test >  
---------------------------------------------------------
The interim fix test is used to check information associated with different interim or emergency fixes installed on the system. The information being tested is based off the emgr -l -u VUID command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an interim_fix_object and the optional state element specifies the information to check.

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
  
.. _interim_fix_object:  
  
< interim_fix_object >  
---------------------------------------------------------
The interim_fix_object element is used by a interim_fix_test to define the specific fix to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An interim_fix_object consists of a single vuid entity that identifies the fix to be used.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vuid  
      - oval-def:EntityObjectStringType (1..1)  
      - Virtually Unique ID. A combination of time and cpuid, this ID can be used to differentiate fixes that are otherwise identical.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _interim_fix_state:  
  
< interim_fix_state >  
---------------------------------------------------------
The interim_fix_state element defines the different information associated with a specific interim fix installed on the system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vuid  
      - oval-def:EntityStateStringType (0..1)  
      - Virtually Unique ID. A combination of time and cpuid, this ID can be used to differentiate fixes that are otherwise identical.  
    * - label  
      - oval-def:EntityStateStringType (0..1)  
      - Each efix that is installed on a given system has a unique efix label.  
    * - abstract  
      - oval-def:EntityStateStringType (0..1)  
      - Describes the efix package.  
    * - state  
      - aix-def:EntityStateInterimFixStateType (0..1)  
      - The the emergency fix state.  
  
______________
  
.. _fileset_test:  
  
< fileset_test >  
---------------------------------------------------------
The fileset_test is used to check information associated with different filesets installed on the system. The information used by this test is modeled after the /usr/bin/lslpp -l command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an inetd_object and the optional state element specifies the information to check.

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
  
.. _fileset_object:  
  
< fileset_object >  
---------------------------------------------------------
The fileset_object element is used by a fileset_test to define the fileset to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A fileset_object consists of a single flstinst entity that identifies the fileset to be used.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - flstinst  
      - oval-def:EntityObjectStringType (1..1)  
      - The flstinst entity represents the fileset name we want to check. For example, if we want to check the status of the fileset 'bos.rte', we can use fileset test and the flstinst entity will be 'bos.rte' or 'bot.*' or etc.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _fileset_state:  
  
< fileset_state >  
---------------------------------------------------------
The fileset_state element defines the different information associated with filesets installed on the system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - flstinst  
      - oval-def:EntityStateStringType (0..1)  
      - Represents the name of a fileset.  
    * - level  
      - oval-def:EntityStateVersionType (0..1)  
      - Maintenance level (also known as version in Solaris or Linux) of a fileset. For example, "5.3.0.10" is the level for 'bos.txt.tfs' fileset in one AIX machine.  
    * - state  
      - aix-def:EntityStateFilesetStateType (0..1)  
      - This gives the state of a fileset. The state can be 'APPLIED', 'APPLYING','BROKEN', 'COMMITTED', 'EFIX LOCKED', 'OBSOLETE', 'COMMITTING','REJECTING'. See the manpage of the 'lslpp' command more information.  
    * - description  
      - oval-def:EntityStateStringType (0..1)  
      - Short description of a fileset.  
  
______________
  
.. _fix_test:  
  
< fix_test >  
---------------------------------------------------------
The fix test is used to check information associated with different fixes installed on the system. The information being tested is based off the /usr/sbin/instfix -iavk command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an fix_object and the optional state element specifies the information to check.

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
  
.. _fix_object:  
  
< fix_object >  
---------------------------------------------------------
The fix_object element is used by a fix test to define the specific fix to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A fix object consists of a single apar_number entity that identifies the fix to be used.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - apar_number  
      - oval-def:EntityObjectStringType (1..1)  
      - APAR is the short for 'Authorized Program Analysis Report'. APAR identifies and describes a software product defect. An APAR number can obtain a PTF (Program Temporary Fix) for the defect, if a PTF is available. An example of an apar_number is 'IY78751', it includes two alphabetic characters and a 5-digit integer.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _fix_state:  
  
< fix_state >  
---------------------------------------------------------
The fix_state element defines the different information associated with a specific fix installed on the system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - apar_number  
      - oval-def:EntityStateStringType (0..1)  
      - APAR is the short for 'Authorized Program Analysis Report'. APAR identifies and describes a software product defect. An APAR number can obtain a PTF (Program Temporary Fix) for the defect, if a PTF is available. An example of an apar_number is 'IY78751', it includes two alphabetic characters and a 5-digit integer.  
    * - abstract  
      - oval-def:EntityStateStringType (0..1)  
      - The abstract of an APAR. For instance, 'LL syas rXct are available even when not susea' is the abstract of APAR 'IY78751'.  
    * - symptom  
      - oval-def:EntityStateStringType (0..1)  
      - The symptom text related to an APAR. For example, the symptom text for 'IY75211' is 'Daylight savings change for year 2007 and beyond'.  
    * - installation_status  
      - aix-def:EntityStateFixInstallationStatusType (0..1)  
      - The installation status of files associated with the APAR. This cannot be got from the output of the instfix command directly. The last line of the output is 'All filesets for XXXXXXX were found', or 'Not all filesets for XXXXXXX were found' or 'No filesets which have fixes for XXXXXXX are currently installed.'. These can be translated to the correct value as defined by the EntityStateFixInstallationStatusType.  
  
______________
  
.. _no_test:  
  
< no_test >  
---------------------------------------------------------
The no test is used to check information related to the /usr/sbin/no command and the parameters it manages. The no command sets or displays current or next boot values for network tuning parameters. The information being tested is based off the /usr/sbin/no -o command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a no_object and the optional state element specifies the value to check for.

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
  
.. _no_object:  
  
< no_object >  
---------------------------------------------------------
The no_object element is used by a no_test to define the specific parameter to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A no_object consists of a single tunable entity that identifies the parameter to be looked at.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - tunable  
      - oval-def:EntityObjectStringType (1..1)  
      - The tunable entity holds the name of the tunable parameter to be queried by the /usr/sbin/no command. Examples include ip_forwarding and tcp_keepalive_interval.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _no_state:  
  
< no_state >  
---------------------------------------------------------
The no_state element defines the different information associated with a specific call to /usr/sbin/no. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - tunable  
      - oval-def:EntityStateStringType (0..1)  
      - The tunable entity is used to check the name of the tunable parameter that was used by the /usr/sbin/no command. Examples include ip_forwarding and tcp_keepalive_interval.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value entity defines the value to check against the tunable parameter being examined.  
  
______________
  
.. _oslevel_test:  
  
< oslevel_test >  
---------------------------------------------------------
The oslevel test reveals information about the release and maintenance level of AIX operating system. This information can be retrieved by the /usr/bin/oslevel -r command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an oslevel_object and the optional state element specifies the metadata to check.

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
  
.. _oslevel_object:  
  
< oslevel_object >  
---------------------------------------------------------
The oslevel_object element is used by an oslevel test to define those objects to be evaluated based on a specified state. There is actually only one object relating to oslevel and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check oslevel will reference the same oslevel_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _oslevel_state:  
  
< oslevel_state >  
---------------------------------------------------------
The oslevel_state element defines the information about maintenance level (system version). Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - maintenance_level  
      - oval-def:EntityStateVersionType (1..1)  
      - This is the maintenance level (system version) of current AIX operating system.  
  
.. _EntityStateFilesetStateType:  
  
== EntityStateFilesetStateType ==  
---------------------------------------------------------
The EntityStateFilesetStateType complex type defines the different values that are valid for the state entity of a fileset state. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the state entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateFixInstallationStatusType:  
  
== EntityStateFixInstallationStatusType ==  
---------------------------------------------------------
The EntityStateFixInstallationStatusType complex type defines the different values that are valid for the installation_status entity of a fix_state state. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the installation_status entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateInterimFixStateType:  
  
== EntityStateInterimFixStateType ==  
---------------------------------------------------------
The EntityStateInterimFixStateType complex type defines the different values that are valid for the state entity of a interim_fix_state state. Please refer to the AIX documentation of Emergency Fix States. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the state entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
