Open Vulnerability and Assessment Language: AIX Definition  
=========================================================
* Schema: AIX Definition  
* Version: 6.0  
* Release Date: 1/24/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the AIX specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by Yuzheng Zhou and Todd Dolinsky at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`interim_fix_test`  
* :ref:`fileset_test`  
* :ref:`fix_test`  
* :ref:`deviceattribute_test`  
* :ref:`inittab_test`  
* :ref:`securitystanza_test`  
* :ref:`useraccount_test`  
* :ref:`nfso_test`  
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
  
.. _deviceattribute_test:  
  
< deviceattribute_test >  
---------------------------------------------------------
The deviceattribute_test is used to hold information related to the execution of the /usr/sbin/lsattr -EOl [device] -a [attribute] command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a deviceattribute_object and the optional state element specifies the value to check.

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
  
.. _deviceattribute_object:  
  
< deviceattribute_object >  
---------------------------------------------------------
The deviceattribute_object element is used by a deviceattribute_test to determine the collection of information related to the execution of the /usr/sbin/lsattr -EOl [device] -a [attribute] command. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the device logical name in the Customized Devices object class whose attribute names or values you want displayed  
    * - attribute_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the attribute of a specific device or type of device.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _deviceattribute_state:  
  
< deviceattribute_state >  
---------------------------------------------------------
The deviceattribute_state element defines the different information associated with a specific call to /usr/sbin/lsattr -EOl [device] -a [attribute]. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device_name  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the device logical name in the Customized Devices object class whose attribute names or values you want displayed  
    * - attribute_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the attribute of a specific device or type of device.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value entity defines the value to check against the device attribute being examined.  
  
______________
  
.. _inittab_test:  
  
< inittab_test >  
---------------------------------------------------------
The inittab_item is used to hold information related to the /usr/sbin/lsitab command and information stored in /etc/inittab. Currently, /usr/sbin/lsitab is used to configure records in the /etc/inittab file which controls the initialization process. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a inittab_object and the optional state element specifies the value to check.

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
  
.. _inittab_object:  
  
< inittab_object >  
---------------------------------------------------------
The inittab_object element is used by an inittab_test to determine the collection of entries in the /etc/inittab file. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - identifier  
      - oval-def:EntityObjectStringType (1..1)  
      - A string (one or more than one character) that uniquely identifies an object  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _inittab_state:  
  
< inittab_state >  
---------------------------------------------------------
The inittab_state element defines the different information associated with a specific call to /usr/bin/lsitab. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - identifier  
      - oval-def:EntityStateStringType (0..1)  
      - A string (one or more than one character) that uniquely identifies an object  
    * - runlevel  
      - aix-def:EntityStateInittabRunlevelType (0..1)  
      - The run level in which this entry can be processed. Run levels effectively correspond to a configuration of processes in the system. Run levels are represented by the numbers 0 through 9. There are three other values that appear in the runlevel field, even though they are not true run levels: a, b, and c. Entries that have these characters in the runlevel field are processed only when the telinit command requests them to be run (regardless of the current run level of the system).  
    * - action  
      - aix-def:EntityStateInittabActionType (0..1)  
      - Tells the init command how to treat the process specified in the identifier field.  
    * - command  
      - oval-def:EntityStateStringType (0..1)  
      - A shell command to execute.  
  
______________
  
.. _securitystanza_test:  
  
< securitystanza_test >  
---------------------------------------------------------
The securitystanza_test is used to check information related to the /usr/bin/lssec command and the parameters it manages. The lssec command lists attributes stored in the security configuration stanza files. The following security configuration files contain attributes that you can specify with the Attribute parameter. The information being tested is based off the /usr/bin/lssec [ -f File ] [ -s Stanza ] [ -a Attribute ] command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a securitystanza_object and the optional state element specifies the value to check.

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
  
.. _securitystanza_object:  
  
< securitystanza_object >  
---------------------------------------------------------
The securitystanza_object element is used by a securitystanza_test to determine the collection of attributes in the security stanza files. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - stanza_file  
      - aix-def:EntityObjectStanzaFileType (1..1)  
      - The stanza_file entity is an enumeration of values representing the security configuration file containing the desired attributes.  
    * - stanza_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the name of the stanza to list.  
    * - attribute_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the attribute to list.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _securitystanza_state:  
  
< securitystanza_state >  
---------------------------------------------------------
The securitystanza_state element defines the different information associated with a specific call to /usr/bin/lssec. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - stanza_file  
      - aix-def:EntityStateStanzaFileType (0..1)  
      - The stanza_file entity is an enumeration of values representing the security configuration file containing the desired attributes.  
    * - stanza_name  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the name of the stanza to list.  
    * - attribute_name  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the attribute to list.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value entity defines the value to check against the security parameter being examined.  
  
______________
  
.. _useraccount_test:  
  
< useraccount_test >  
---------------------------------------------------------
The useraccount_test is used to assess information related to the /usr/sbin/lsuser command and the attributes it manages. Currently, /usr/sbin/lsuser is used to display user account attributes. The /usr/sbin/lsuser command queries the named attribute for the provided user account(s). It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a useraccount_object and the optional state element specifies the value to check.

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
  
.. _useraccount_object:  
  
< useraccount_object >  
---------------------------------------------------------
The useraccount_object is used to collect information related to the /usr/sbin/lsuser command and the user account attributes it manages. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The name of the user to be queried by the /usr/sbin/lsuser command.  
    * - account_attribute  
      - aix-def:EntityObjectUserAccountAttributeType (1..1)  
      - The name of the user attribute to be queried by the /usr/sbin/lsuser command. This value can include any attribute that is defined by the /usr/bin/chuser command.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _useraccount_state:  
  
< useraccount_state >  
---------------------------------------------------------
The useraccount_state element defines the different information associated with a specific call to /usr/sbin/lsuser. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The name of the user to be queried by the /usr/sbin/lsuser command.  
    * - account_attribute  
      - aix-def:EntityStateUserAccountAttributeType (0..1)  
      - The name of the user attribute to be queried by the /usr/sbin/lsuser command. This value can include any attribute that is defined by the /usr/bin/chuser command.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value entity defines the value assigned to the user attribute being examined.  
  
______________
  
.. _nfso_test:  
  
< nfso_test >  
---------------------------------------------------------
The nfso test is used to check information related to the /usr/sbin/nfso command and the parameters it manages. The nfso command sets or displays current or next boot values for network file system (NFS) tuning parameters. The information being tested is based off the /usr/sbin/nfso -o command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a nfso_object and the optional state element specifies the value to check for.

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
  
.. _nfso_object:  
  
< nfso_object >  
---------------------------------------------------------
The nfso_object element is used by a nfso_test to define the specific parameter to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A nfso_object consists of a single tunable entity that identifies the parameter to be looked at.

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
      - The tunable entity holds the name of the tunable parameter to be queried by the /usr/sbin/nfso command. Examples include nfs_max_read_size and nfs_max_write_size.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _nfso_state:  
  
< nfso_state >  
---------------------------------------------------------
The nfso_state element defines the different information associated with a specific call to /usr/sbin/nfso. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The tunable entity is used to check the name of the tunable parameter that was used by the /usr/sbin/nfso command. Examples include nfs_max_read_size and nfs_max_write_size.  
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
  
.. _EntityObjectStanzaFileType:  
  
== EntityObjectStanzaFileType ==  
---------------------------------------------------------
The lssec command lists attributes stored in the security configuration stanza files. The following security configuration files contain attributes that you can specify with the Attribute parameter.

**Restricts:** oval-def:EntityObjectStringType

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
  
.. _EntityStateStanzaFileType:  
  
== EntityStateStanzaFileType ==  
---------------------------------------------------------
The lssec command lists attributes stored in the security configuration stanza files. The following security configuration files contain attributes that you can specify with the Attribute parameter.

**Restricts:** oval-def:EntityStateStringType

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
  
.. _EntityObjectUserAccountAttributeType:  
  
== EntityObjectUserAccountAttributeType ==  
---------------------------------------------------------
The name of the user attribute to be queried by the /usr/sbin/lsuser command. This value can include any attribute that is defined by the /usr/bin/chuser command.

**Restricts:** oval-def:EntityObjectStringType

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
  
.. _EntityStateUserAccountAttributeType:  
  
== EntityStateUserAccountAttributeType ==  
---------------------------------------------------------
The name of the user attribute to be queried by the /usr/sbin/lsuser command. This value can include any attribute that is defined by the /usr/bin/chuser command.

**Restricts:** oval-def:EntityStateStringType

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
  
.. _EntityStateInittabRunlevelType:  
  
== EntityStateInittabRunlevelType ==  
---------------------------------------------------------
The EntityStateInittabRunlevelType describes the enumeration of runlevel values present in /etc/inittab. The empty string value is permitted here to allow for detailed error reporting and variable references.

**Restricts:** oval-def:EntityStateStringType

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
  
.. _EntityStateInittabActionType:  
  
== EntityStateInittabActionType ==  
---------------------------------------------------------
The EntityStateInittabActionType indicates how to treat the process specified in the identifier field. The empty string value is permitted here to allow for detailed error reporting.

**Restricts:** oval-def:EntityStateStringType

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
  
