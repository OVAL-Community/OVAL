Open Vulnerability and Assessment Language: Windows Definition  
=========================================================
* Schema: Windows Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Windows specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`accesstoken_test` (Deprecated)  
* :ref:`activedirectory_test` (Deprecated)  
* :ref:`activedirectory57_test` (Deprecated)  
* :ref:`auditeventpolicy_test` (Deprecated)  
* :ref:`auditeventpolicysubcategories_test`  
* :ref:`cmdlet_test`  
* :ref:`dnscache_test` (Deprecated)  
* :ref:`file_test`  
* :ref:`fileauditedpermissions53_test` (Deprecated)  
* :ref:`fileauditedpermissions_test` (Deprecated)  
* :ref:`fileeffectiverights53_test`  
* :ref:`fileeffectiverights_test` (Deprecated)  
* :ref:`group_test` (Deprecated)  
* :ref:`group_sid_test`  
* :ref:`interface_test` (Deprecated)  
* :ref:`junction_test` (Deprecated)  
* :ref:`license_test` (Deprecated)  
* :ref:`lockoutpolicy_test`  
* :ref:`metabase_test` (Deprecated)  
* :ref:`ntuser_test`  
* :ref:`passwordpolicy_test`  
* :ref:`peheader_test` (Deprecated)  
* :ref:`port_test` (Deprecated)  
* :ref:`printereffectiverights_test` (Deprecated)  
* :ref:`process_test` (Deprecated)  
* :ref:`process58_test` (Deprecated)  
* :ref:`registry_test`  
* :ref:`regkeyauditedpermissions53_test` (Deprecated)  
* :ref:`regkeyauditedpermissions_test` (Deprecated)  
* :ref:`regkeyeffectiverights53_test`  
* :ref:`regkeyeffectiverights_test` (Deprecated)  
* :ref:`service_test`  
* :ref:`serviceeffectiverights_test` (Deprecated)  
* :ref:`sharedresource_test` (Deprecated)  
* :ref:`sharedresourceauditedpermissions_test` (Deprecated)  
* :ref:`sharedresourceeffectiverights_test` (Deprecated)  
* :ref:`sid_test`  
* :ref:`sid_sid_test`  
* :ref:`systemmetric_test` (Deprecated)  
* :ref:`uac_test` (Deprecated)  
* :ref:`user_test` (Deprecated)  
* :ref:`user_sid55_test`  
* :ref:`user_sid_test` (Deprecated)  
* :ref:`userright_test`  
* :ref:`appcmd_test`  
* :ref:`appcmdlistconfig_test`  
* :ref:`volume_test` (Deprecated)  
* :ref:`wmi_test` (Deprecated)  
* :ref:`wmi57_test`  
* :ref:`wuaupdatesearcher_test`  
  
______________
  
.. _accesstoken_test:  
  
< accesstoken_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the userright_test. This accesstoken_test suffers from scalability issues when run on a domain controller and should not be used. See the userright_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The accesstoken_test is used to check the properties of a Windows access token as well as individual privileges and rights associated with it. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an accesstoken_object and the optional state element specifies the data to check.

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
  
.. _accesstoken_object:  
  
< accesstoken_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the userright_object. The accesstoken_test suffers from scalability issues when run on a domain controller and should not be used. See the userright_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The accesstoken_object element is used by an access token test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An accesstoken_object consists of a single security principle that identifies user, group, or computer account that is associated with the token.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:AccesstokenBehaviors (0..1)  
      -   
    * - security_principle  
      - oval-def:EntityObjectStringType (1..1)  
      - The security_principle element defines the access token being specified. Security principles include users or groups with either local or domain accounts, and computer accounts created when a computer joins a domain. In Windows, security principles are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. User rights and permissions to access objects such as Active Directory objects, files, and registry settings are assigned to security principles. In a domain environment, security principles should be identified in the form: "domain\trustee name". For local security principles use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain. If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the Local Security Authority database. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _accesstoken_state:  
  
< accesstoken_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the userright_state. The accesstoken_test suffers from scalability issues when run on a domain controller and should not be used. See the userright_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The accesstoken_state element defines the different information that can be used to evaluate the specified access tokens. This includes the multitude of user rights and permissions that can be granted. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - security_principle  
      - oval-def:EntityStateStringType (0..1)  
      - The security_principle element identifies an access token to test for. Security principles include users or groups with either local or domain accounts, and computer accounts created when a computer joins a domain. In Windows, security principles are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. User rights and permissions to access objects such as Active Directory objects, files, and registry settings are assigned to security principles. In a domain environment, security principles should be identified in the form: "domain\trustee name". For local security principles use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - seassignprimarytokenprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seassignprimarytokenprivilege privilege is enabled, it allows a parent process to replace the access token that is associated with a child process.  
    * - seauditprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seauditprivilege privilege is enabled, it allows a process to generate audit records in the security log. The security log can be used to trace unauthorized system access.  
    * - sebackupprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the sebackupprivilege privilege is enabled, it allows the user to circumvent file and directory permissions to back up the system. The privilege is selected only when an application attempts access by using the NTFS backup application programming interface (API). Otherwise, normal file and directory permissions apply.  
    * - sechangenotifyprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the sechangenotifyprivilege privilege is enabled, it allows the user to pass through folders to which the user otherwise has no access while navigating an object path in the NTFS file system or in the registry. This privilege does not allow the user to list the contents of a folder; it allows the user only to traverse its directories.  
    * - secreateglobalprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the secreateglobalprivilege privilege is enabled, it allows the user to create named file mapping objects in the global namespace during Terminal Services sessions.  
    * - secreatepagefileprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the secreatepagefileprivilege privilege is enabled, it allows the user to create and change the size of a pagefile.  
    * - secreatepermanentprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the secreatepermanentprivilege privilege is enabled, it allows a process to create a directory object in the object manager. It is useful to kernel-mode components that extend the object namespace. Components that are running in kernel mode have this privilege inherently.  
    * - secreatesymboliclinkprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the secreatesymboliclinkprivilege privilege is enabled, it allows users to create symbolic links.  
    * - secreatetokenprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the secreatetokenprivilege privilege is enabled, it allows a process to create an access token by calling NtCreateToken() or other token-creating APIs.  
    * - sedebugprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the sedebugprivilege privilege is enabled, it allows the user to attach a debugger to any process. It provides access to sensitive and critical operating system components.  
    * - seenabledelegationprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seenabledelegationprivilege privilege is enabled, it allows the user to change the Trusted for Delegation setting on a user or computer object in Active Directory. The user or computer that is granted this privilege must also have write access to the account control flags on the object.  
    * - seimpersonateprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seimpersonateprivilege privilege is enabled, it allows the user to impersonate a client after authentication.  
    * - seincreasebasepriorityprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seincreasebasepriorityprivilege privilege is enabled, it allows a user to increase the base priority class of a process.  
    * - seincreasequotaprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seincreasequotaprivilege privilege is enabled, it allows a process that has access to a second process to increase the processor quota assigned to the second process.  
    * - seincreaseworkingsetprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seincreaseworkingsetprivilege privilege is enabled, it allows a user to increase a process working set.  
    * - seloaddriverprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seloaddriverprivilege privilege is enabled, it allows a user to install and remove drivers for Plug and Play devices.  
    * - selockmemoryprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the selockmemoryprivilege privilege is enabled, it allows a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk.  
    * - semachineaccountprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the semachineaccountprivilege privilege is enabled, it allows the user to add a computer to a specific domain.  
    * - semanagevolumeprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the semanagevolumeprivilege privilege is enabled, it allows a non-administrative or remote user to manage volumes or disks.  
    * - seprofilesingleprocessprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seprofilesingleprocessprivilege privilege is enabled, it allows a user to sample the performance of an application process.  
    * - serelabelprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the serelabelprivilege privilege is enabled, it allows a user to modify an object label.  
    * - seremoteshutdownprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seremoteshutdownprivilege privilege is enabled, it allows a user to shut down a computer from a remote location on the network.  
    * - serestoreprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the serestoreprivilege privilege is enabled, it allows a user to circumvent file and directory permissions when restoring backed-up files and directories and to set any valid security principle as the owner of an object.  
    * - sesecurityprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the sesecurityprivilege privilege is enabled, it allows a user to specify object access auditing options for individual resources such as files, Active Directory objects, and registry keys. A user who has this privilege can also view and clear the security log from Event Viewer.  
    * - seshutdownprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seshutdownprivilege privilege is enabled, it allows a user to shut down the local computer.  
    * - sesyncagentprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the sesyncagentprivilege privilege is enabled, it allows a process to read all objects and properties in the directory, regardless of the protection on the objects and properties. It is required in order to use Lightweight Directory Access Protocol (LDAP) directory synchronization (Dirsync) services.  
    * - sesystemenvironmentprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the sesystemenvironmentprivilege privilege is enabled, it allows modification of system environment variables either by a process through an API or by a user through System Properties.  
    * - sesystemprofileprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the sesystemprofileprivilege privilege is enabled, it allows a user to sample the performance of system processes.  
    * - sesystemtimeprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the sesystemtimeprivilege privilege is enabled, it allows the user to adjust the time on the computer's internal clock. It is not required to change the time zone or other display characteristics of the system time.  
    * - setakeownershipprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the setakeownershipprivilege privilege is enabled, it allows a user to take ownership of any securable object in the system, including Active Directory objects, NTFS files and folders, printers, registry keys, services, processes, and threads.  
    * - setcbprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the setcbprivilege privilege is enabled, it allows a process to assume the identity of any user and thus gain access to the resources that the user is authorized to access.  
    * - setimezoneprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the setimezoneprivilege privilege is enabled, it allows the user to change the time zone.  
    * - seundockprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seundockprivilege privilege is enabled, it allows the user of a portable computer to undock the computer by clicking Eject PC on the Start menu.  
    * - seunsolicitedinputprivilege  
      - oval-def:EntityStateBoolType (0..1)  
      - If the seunsolicitedinputprivilege privilege is enabled, it allows the user to read unsolicited data from a terminal device.  
    * - sebatchlogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the sebatchlogonright right, it can log on using the batch logon type.  
    * - seinteractivelogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the seinteractivelogonright right, it can log on using the interactive logon type.  
    * - senetworklogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the senetworklogonright right, it can log on using the network logon type.  
    * - seremoteinteractivelogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the seremoteinteractivelogonright right, it can log on to the computer by using a Remote Desktop connection.  
    * - seservicelogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the seservicelogonright right, it can log on using the service logon type.  
    * - sedenybatchLogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the sedenybatchLogonright right, it is explicitly denied the ability to log on using the batch logon type.  
    * - sedenyinteractivelogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the sedenyinteractivelogonright right, it is explicitly denied the ability to log on using the interactive logon type.  
    * - sedenynetworklogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the sedenynetworklogonright right, it is explicitly denied the ability to log on using the network logon type.  
    * - sedenyremoteInteractivelogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the sedenyremoteInteractivelogonright right, it is explicitly denied the ability to log on through Terminal Services.  
    * - sedenyservicelogonright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned the sedenyservicelogonright right, it is explicitly denied the ability to log on using the service logon type.  
    * - setrustedcredmanaccessnameright  
      - oval-def:EntityStateBoolType (0..1)  
      - If an account is assigned this right, it can access the Credential Manager as a trusted caller.  
  
.. _AccesstokenBehaviors:  
  
== AccesstokenBehaviors == (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the userright_test. The AccesstokenBehaviors complex type is used by the accesstoken_test which suffers from scalability issues when run on a domain controller and should not be used. As a result, the AccesstokenBehaviors complex type is no longer needed. See the userright_test.  
* Comment: This complex type has been deprecated and will be removed in version 6.0 of the language.  
  
The AccesstokenBehaviors complex type defines a number of behaviors that allow a more detailed definition of the accesstoken_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - If a group security principle is specified, this behavior specifies whether to include the group or not. For example, maybe you want to check the access tokens associated with every user within a group, but not the group itself. In this case, you would set the include_group behavior to 'false'. If the security_principle is not a group, then this behavior should be ignored.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved and any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _activedirectory_test:  
  
< activedirectory_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The active directory test is used to check information about specific entries in active directory. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an activedirectory_object and the optional state element specifies the metadata to check.

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
  
.. _activedirectory_object:  
  
< activedirectory_object >  
---------------------------------------------------------
The activedirectory_object element is used by an active directory test to define those objects to evaluated based on a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An active directory object consists of three pieces of information, a naming context, a relative distinguished name, and an attribute. Each piece helps identify a specific active directory entry.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - naming_context  
      - win-def:EntityObjectNamingContextType (1..1)  
      - Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.  
    * - relative_dn  
      - oval-def:EntityObjectStringType (1..1)  
      - The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the object's distinguished name except those outlined by the naming context. If the xsi:nil attribute is set to true, then the object being specified is the higher level naming context. In this case, the relative_dn element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every relative dn under a given naming context.  
    * - attribute  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies a named value contained by the object. If the xsi:nil attribute is set to true, the attribute element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every attribute under a given relative dn.  
  
.. _activedirectory_state:  
  
< activedirectory_state >  
---------------------------------------------------------
The activedirectory_state element defines the different information that can be used to evaluate the specified entries in active directory. An active directory test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - naming_context  
      - win-def:EntityStateNamingContextType (0..1)  
      - Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.  
    * - relative_dn  
      - oval-def:EntityStateStringType (0..1)  
      - The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the objects distinguished name except those outlined by the naming context.  
    * - attribute  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies a named value contained by the object.  
    * - object_class  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the class of which the object is an instance.  
    * - adstype  
      - win-def:EntityStateAdstypeType (0..1)  
      - Specifies the type of information that the specified attribute represents.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The actual value of the specified active directory attribute.  
  
______________
  
.. _activedirectory57_test:  
  
< activedirectory57_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.1:1.2  
* Reason: Use the original activedirectory_test. The activedirectory57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated AdstypeTypes. Use the original activedirectory_test instead.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The active directory test is used to check information about specific entries in active directory. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an activedirectory57_object and the optional state element specifies the metadata to check.

Note that this test supports complex values that are in the form of a record. For simple (string based) value collection see the activedirectory_test.

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
  
.. _activedirectory57_object:  
  
< activedirectory57_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.1:1.2  
* Reason: Use the original activedirectory_object. The activedirectory57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated AdstypeTypes. Use the original activedirectory_test instead.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The activedirectory57_object element is used by an active directory test to define those objects to evaluated based on a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An active directory object consists of three pieces of information, a naming context, a relative distinguished name, and an attribute. Each piece helps identify a specific active directory entry.

Note that this object supports complex values that are in the form of a record. For simple (string based) value collection see the activedirectory_object.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - naming_context  
      - win-def:EntityObjectNamingContextType (1..1)  
      - Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.  
    * - relative_dn  
      - oval-def:EntityObjectStringType (1..1)  
      - The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the object's distinguished name except those outlined by the naming context. If the xsi:nil attribute is set to true, then the object being specified is the higher level naming context. In this case, the relative_dn element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every relative dn under a given naming context.  
    * - attribute  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies a named value contained by the object. If the xsi:nil attribute is set to true, the attribute element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every attribute under a given relative dn.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _activedirectory57_state:  
  
< activedirectory57_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11.1:1.2  
* Reason: Use the original activedirectory_state. The activedirectory57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated AdstypeTypes. Use the original activedirectory_test instead.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The activedirectory57_state element defines the different information that can be used to evaluate the specified entries in active directory. An active directory test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

Note that this state supports complex values that are in the form of a record. For simple (string based) value collection see the activedirectory_state.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - naming_context  
      - win-def:EntityStateNamingContextType (0..1)  
      - Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.  
    * - relative_dn  
      - oval-def:EntityStateStringType (0..1)  
      - The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the object's distinguished name except those outlined by the naming context.  
    * - attribute  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies a named value contained by the object.  
    * - object_class  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the class of which the object is an instance.  
    * - adstype  
      - win-def:EntityStateAdstypeType (0..1)  
      - The type of information that the specified attribute represents.  
    * - value  
      - oval-def:EntityStateRecordType (0..1)  
      - The actual value of the specified Active Directory attribute. Note that while an Active Directory attribute can contain structured data where it is necessary to collect multiple related fields that can be described by the 'record' datatype, it is not always the case. It also is possible that an Active Directory attribute can contain only a single value or an array of values. In these cases, there is not a name to uniquely identify the corresponding field which is a requirement for fields in the 'record' datatype. As a result, the name of the Active Directory attribute will be used to uniquely identify the field and satisfy this requirement.  
  
______________
  
.. _auditeventpolicy_test:  
  
< auditeventpolicy_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The auditeventpolicy_test is used to check different types of events the system should audit. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a auditeventpolicy_object and the optional state element specifies the metadata to check.

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
  
.. _auditeventpolicy_object:  
  
< auditeventpolicy_object >  
---------------------------------------------------------
The auditeventpolicy_object element is used by an audit event policy test to define those objects to evaluate based on a specified state. There is actually only one object relating to audit event policy and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check audit event policy will reference the same auditeventpolicy_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _auditeventpolicy_state:  
  
< auditeventpolicy_state >  
---------------------------------------------------------
The auditeventpolicy_state element specifies the different system activities that can be audited. An audit event policy test will reference a specific instance of this state that defines the exact settings that need to be evaluated. The defined values are found in window's POLICY_AUDIT_EVENT_TYPE enumeration and accessed through the LsaQueryInformationPolicy when the InformationClass parameters are set to PolicyAuditEventsInformation. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - account_logon  
      - win-def:EntityStateAuditType (0..1)  
      - Audit attempts to log on to or log off of the system. Also, audit attempts to make a network connection.  
    * - account_management  
      - win-def:EntityStateAuditType (0..1)  
      - Audit attempts to create, delete, or change user or group accounts. Also, audit password changes.  
    * - detailed_tracking  
      - win-def:EntityStateAuditType (0..1)  
      - Audit specific events, such as program activation, some forms of handle duplication, indirect access to an object, and process exit. Note that this activitiy is also known as process tracking.  
    * - directory_service_access  
      - win-def:EntityStateAuditType (0..1)  
      - Audit attempts to access the directory service.  
    * - logon  
      - win-def:EntityStateAuditType (0..1)  
      - Audit attempts to log on to or log off of the system. Also, audit attempts to make a network connection.  
    * - object_access  
      - win-def:EntityStateAuditType (0..1)  
      - Audit attempts to access securable objects, such as files.  
    * - policy_change  
      - win-def:EntityStateAuditType (0..1)  
      - Audit attempts to change Policy object rules.  
    * - privilege_use  
      - win-def:EntityStateAuditType (0..1)  
      - Audit attempts to use privileges.  
    * - system  
      - win-def:EntityStateAuditType (0..1)  
      - Audit attempts to shut down or restart the computer. Also, audit events that affect system security or the security log.  
  
______________
  
.. _auditeventpolicysubcategories_test:  
  
< auditeventpolicysubcategories_test >  
---------------------------------------------------------
The auditeventpolicysubcategories_test is used to check the audit event policy settings on a Windows system. These settings are used to specify which system and network events are monitored. For example, if the credential_validation element has a value of AUDIT_FAILURE, it means that the system is configured to log all unsuccessful attempts to validate a user account on a system. It is important to note that these audit event policy settings are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information on each setting. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a auditeventpolicy_object and the optional state element specifies the metadata to check.

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
  
.. _auditeventpolicysubcategories_object:  
  
< auditeventpolicysubcategories_object >  
---------------------------------------------------------
The auditeventpolicysubcategories_object element is used by an audit event policy subcategories test to define those objects to evaluate based on a specified state. There is actually only one object relating to audit event policy subcategories and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check audit event policy subcategories will reference the same auditeventpolicysubcategories_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _auditeventpolicysubcategories_state:  
  
< auditeventpolicysubcategories_state >  
---------------------------------------------------------
The auditeventpolicysubcategories_state element specifies the different system activities that can be audited. An audit event policy subcategories test will reference a specific instance of this state that defines the exact subcategories that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - credential_validation  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced during the validation of a user's logon credentials. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Credential Validation  
    * - kerberos_authentication_service  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by Kerberos authentication ticket-granting requests. This state corresponds with the following GUID specified in ntsecapi.h: 0CCE9242-69AE-11D9-BED3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Kerboros Authentication Service  
    * - kerberos_service_ticket_operations  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by Kerberos service ticket requests. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9240-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Kerberos Service Ticket Operations  
    * - kerberos_ticket_events (Deprecated)  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced during the validation of Kerberos tickets provided for a user account logon request.  
    * - other_account_logon_events  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to user accounts that are not covered by other events in the Account Logon category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9241-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Other Account Logon Events  
    * - application_group_management  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to application groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9239-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Application Group Management  
    * - computer_account_management  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to computer accounts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9236-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Computer Account Management  
    * - distribution_group_management  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to distribution groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9238-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Distribution Account Management  
    * - other_account_management_events  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by other user account changes that are not covered by other events in the Account Management category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Other Account Management Events  
    * - security_group_management  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to security groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9237-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Security Group Management  
    * - user_account_management  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to user accounts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9235-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit User Account Management  
    * - dpapi_activity  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced when requests are made to the Data Protection application interface. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit DPAPI Activity  
    * - process_creation  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced when a process is created or starts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit Process Creation  
    * - process_termination  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced when a process ends. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit Process Termination  
    * - rpc_events  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by inbound remote procedure call connections. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit RPC Events  
    * - directory_service_access  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced when an Active Directory Domain Services object is accessed. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Access  
    * - directory_service_changes  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced when changes are made to Active Directory Domain Services objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Changes  
    * - directory_service_replication  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced when two Active Directory Domain Services domain controllers are replicated. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Access  
    * - detailed_directory_service_replication  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by detailed Active Directory Domain Services replication between domain controllers. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Detailed Directory Service Replication  
    * - account_lockout  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by a failed attempt to log onto a locked out account. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9217-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Account Lockout  
    * - ipsec_extended_mode  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Extended Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit IPsec Extended Mode  
    * - ipsec_main_mode  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Main Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9218-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logof/Logoff: Audit IPsec Main Mode  
    * - ipsec_quick_mode  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Quick Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9219-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit IPsec Quick Mode  
    * - logoff  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by closing a logon session. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9216-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Logoff  
    * - logon  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by attempts to log onto a user account. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9215-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Logon  
    * - network_policy_server  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by RADIUS and Network Access Protection user access requests. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9243-69ae-11d9-bed3-505054503030.This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Network Policy Server  
    * - other_logon_logoff_events  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by other logon/logoff based events that are not covered in the Logon/Logoff category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Other Logon/Logoff Events  
    * - special_logon  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by special logons. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Special Logon  
    * - logon_claims  
      - win-def:EntityStateAuditType (0..1)  
      - Audit user and device claims information in the user's logon token. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9247-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit User / Device Claims  
    * - application_generated  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by applications that use the Windows Auditing API. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9222-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Application Generated  
    * - certification_services  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by operations on Active Directory Certificate Services. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9221-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Certification Services  
    * - detailed_file_share  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by attempts to access files and folders on a shared folder. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9244-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Detailed File Share  
    * - file_share  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by attempts to access a shared folder. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9224-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit File Share  
    * - file_system  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced user attempts to access file system objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit File System  
    * - filtering_platform_connection  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by connections that are allowed or blocked by Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9226-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Filtering Platform Connection  
    * - filtering_platform_packet_drop  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by packets that are dropped by Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9225-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Filtering Platform Packet Drop  
    * - handle_manipulation  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced when a handle is opened or closed. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9223-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Handle Manipulation  
    * - kernel_object  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by attempts to access the system kernel. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Kernel Object  
    * - other_object_access_events  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by the management of Task Scheduler jobs or COM+ objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9227-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Other Object Access Events  
    * - registry  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by attempts to access registry objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Registry  
    * - sam  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by attempts to access Security Accounts Manager objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9220-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit SAM  
    * - removable_storage  
      - win-def:EntityStateAuditType (0..1)  
      - Audit events that indicate file object access attemps to removable storage. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9245-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Removable Storage  
    * - central_access_policy_staging  
      - win-def:EntityStateAuditType (0..1)  
      - Audit events that indicate permission granted or denied by a proposed policy differs from the current central access policy on an object. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9246-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Central Access Policy Staging  
    * - audit_policy_change  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes in security audit policy settings. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Audit Policy Change  
    * - authentication_policy_change  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to the authentication policy. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9230-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Authentication Policy Change  
    * - authorization_policy_change  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to the authorization policy. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9231-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Authorization Policy Change  
    * - filtering_platform_policy_change  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to the Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9233-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Filtering Platform Policy Change  
    * - mpssvc_rule_level_policy_change  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes to policy rules used by the Windows Firewall. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9232-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit MPSSVC Rule-Level Policy Change  
    * - other_policy_change_events  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by other security policy changes that are not covered other events in the Policy Change category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9234-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Other Policy Change Events  
    * - non_sensitive_privilege_use  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by the use of non-sensitive privileges. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9229-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Non Sensitive Privilege Use  
    * - other_privilege_use_events  
      - win-def:EntityStateAuditType (0..1)  
      - This is currently not used and has been reserved by Microsoft for use in the future. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Other Privilege Use Events  
    * - sensitive_privilege_use  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by the use of sensitive privileges. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9228-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Sensitive Privilege Use  
    * - ipsec_driver  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by the IPsec filter driver. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9213-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit IPsec Driver  
    * - other_system_events  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by the startup and shutdown, security policy processing, and cryptography key file and migration operations of the Windows Firewall. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9214-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Other System Events  
    * - security_state_change  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by changes in the security state. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9210-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Security State Change  
    * - security_system_extension  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events produced by the security system extensions or services. This state corresponds with the following GUID specified in ntsecapi.h: cce9211-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Security System Extension  
    * - system_integrity  
      - win-def:EntityStateAuditType (0..1)  
      - Audit the events that indicate that the integrity security subsystem has been violated. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9212-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit System Integrity  
    * - group_membership  
      - win-def:EntityStateAuditType (0..1)  
      - This subcategory audits the group membership of a token for an associated log on. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9249-69ae-11d9-bed3-505054503030.  
    * - pnp_activity  
      - win-def:EntityStateAuditType (0..1)  
      - This subcategory audits events generated by plug and play (PNP). This state corresponds with the following GUID specified in ntsecapi.h: 0cce9248-69ae-11d9-bed3-505054503030.  
    * - user_device_claims  
      - win-def:EntityStateAuditType (0..1)  
      - This subcategory audits the user and device claims that are present in the token of an associated logon. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9247-69ae-11d9-bed3-505054503030.  
    * - audit_detailedtracking_tokenrightadjusted  
      - win-def:EntityStateAuditType (0..1)  
      - This subcategory audits when token privileges are enabled or disabled for a specific account’s token. This state corresponds with the following GUID specified in ntsecapi.h: 0cce924a-69ae-11d9-bed3-505054503030.  
  
______________
  
.. _cmdlet_test:  
  
< cmdlet_test >  
---------------------------------------------------------
The cmdlet_test is used to levarage a PowerShell cmdlet to check a Windows system. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a cmdlet_object and the optional state element specifies the metadata to check.

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
  
.. _cmdlet_object:  
  
< cmdlet_object >  
---------------------------------------------------------
The cmdlet_object element is used by a cmdlet_test to identify the set of cmdlets to use and the parameters to provide to them for checking the state of a system. In order to ensure the consistency of PowerShell cmdlet support among OVAL interpreters as well as ensure that the state of a system is not changed, every OVAL interpreter must implement the following requirements. An OVAL interpreter must only support the processing of the verbs specified in the EntityObjectCmdletVerbType. If a cmdlet verb that is not defined in this enumeration is discovered, an error should be reported and the cmdlet must not be executed on the system. While XML Schema validation will enforce this requirement, it is strongly recommended that OVAL interpreters implement a whitelist of allowed cmdlets. This can be done using constrained runspaces which can limit the PowerShell execution environment. For more information, please see Microsoft's documentation on Windows PowerShell Host Application Concepts. Furthermore, it is strongly recommended that OVAL interpreters also implement PowerShell support with the NoLanguage mode enabled. The NoLanguage mode ensures that scripts that need to be evaluated are not allowed in the runspace. For more information about the NoLanguage mode, please see Microsoft's documentation on the PSLanguageMode enumeration.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - module_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the module that contains the cmdlet.  
    * - module_id  
      - win-def:EntityObjectGUIDType (1..1)  
      - The globally unique identifier for the module. If xsi:nil='true', it does not matter which module GUID the command comes from.  
    * - module_version  
      - oval-def:EntityObjectVersionType (1..1)  
      - The version of the module that contains the cmdlet in the form of MAJOR.MINOR. If xsi:nil='true', that implies it does not matter which version of the module the command refers to.  
    * - verb  
      - win-def:EntityObjectCmdletVerbType (1..1)  
      - The cmdlet verb.  
    * - noun  
      - oval-def:EntityObjectStringType (1..1)  
      - The cmdlet noun.  
    * - parameters  
      - oval-def:EntityObjectRecordType (1..1)  
      - A list of properties (name and value pairs) as input to invoke the cmdlet. Each property name must be unique. When xsi:nil='true', parameters are not provided to the cmdlet.  
    * - select  
      - oval-def:EntityObjectRecordType (1..1)  
      - A list of fields (name and value pairs) used as input to the Select-Object cmdlet to select specific output properties. Each property name must be unique. Please note that the use of the '*' character, to select all properties, is not permitted. This is because the value record entity, in the state and item, require unique field name values to ensure that any query results can be evaluated consistently. This is equivalent to piping the output of a cmdlet to the Select-Object cmdlet. When xsi:nil='true', the Select-Object is not used.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _cmdlet_state:  
  
< cmdlet_state >  
---------------------------------------------------------
The cmdlet_state allows for assertions about the presence of PowerShell cmdlet related properties and values obtained from a cmdlet.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - module_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the module that contains the cmdlet.  
    * - module_id  
      - win-def:EntityStateGUIDType (0..1)  
      - The globally unique identifier for the module.  
    * - module_version  
      - oval-def:EntityStateVersionType (0..1)  
      - The version of the module that contains the cmdlet in the form of MAJOR.MINOR.  
    * - verb  
      - win-def:EntityStateCmdletVerbType (0..1)  
      - The cmdlet verb.  
    * - noun  
      - oval-def:EntityStateStringType (0..1)  
      - The cmdlet noun.  
    * - parameters  
      - oval-def:EntityStateRecordType (0..1)  
      - A list of properties (name and value pairs) as input to invoke the cmdlet. Each property name must be unique.  
    * - select  
      - oval-def:EntityStateRecordType (0..1)  
      - A list of fields (name and value pairs) used as input to the Select-Object cmdlet to select specific output properties. Each property name must be unique.  
    * - value  
      - oval-def:EntityStateRecordType (0..1)  
      - The expected value represented as a set of fields (name and value pairs). Each field must be have a unique name.  
  
______________
  
.. _dnscache_test:  
  
< dnscache_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The dnscache_test is used to check the time to live and IP addresses associated with a domain name. The time to live and IP addresses for a particular domain name are retrieved from the DNS cache on the local system. The entries in the DNS cache can be collected using Microsoft's DnsGetCacheDataTable() and DnsQuery() API calls. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a dnscache_object and the optional state element specifies the metadata to check.

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
The file test is used to check metadata associated with Windows files. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a file_object and the optional state element specifies the metadata to check.

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
The file_object element is used by a file test to define the specific file(s) to be evaluated. The file_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A file object defines the path and filename or complete filepath of the file(s). In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileBehaviors complex type for more information about specific behaviors.

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
      - win-def:FileBehaviors (0..1)  
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
The file_state element defines the different metadata associate with a Windows file. This includes the path, filename, owner, size, last modified time, version, etc. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The filename element specifies the name of the file.  
    * - owner  
      - oval-def:EntityStateStringType (0..1)  
      - The owner element is a string that contains the name of the owner. The name should be specified in the DOMAIN\username format.  
    * - size  
      - oval-def:EntityStateIntType (0..1)  
      - The size element is the size of the file in bytes.  
    * - a_time  
      - oval-def:EntityStateIntType (0..1)  
      - Time of last access of file. Valid on NTFS but not on FAT formatted disk drives. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).  
    * - c_time  
      - oval-def:EntityStateIntType (0..1)  
      - Time of creation of file. Valid on NTFS but not on FAT formatted disk drives. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).  
    * - m_time  
      - oval-def:EntityStateIntType (0..1)  
      - Time of last modification of file. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).  
    * - ms_checksum  
      - oval-def:EntityStateStringType (0..1)  
      - The checksum of the file as supplied by Microsoft's MapFileAndCheckSum function.  
    * - version  
      - oval-def:EntityStateVersionType (0..1)  
      - The version element is the delimited version string of the file.  
    * - type  
      - win-def:EntityStateFileTypeType (0..1)  
      - The type element marks whether the file is a named pipe, standard file, etc. These types are the return values for GetFileType. For directories, this element must have a status of 'does not exist'.  
    * - attribute  
      - win-def:EntityStateFileAttributeType (0..1)  
      - The attribute element marks a Windows file attribute. These types are the return values for GetFileAttribute.The attribute element can be included multiple times in a system characteristic item in order to record that a file has a number of different attributes. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like the attribute entity that refer to items that can occur an unbounded number of times.  
    * - development_class  
      - oval-def:EntityStateStringType (0..1)  
      - The development_class element allows the distinction to be made between the GDR development environment and the QFE development environment. This field holds the text found in front of the mmmmmm-nnnn version, for example srv03_gdr.  
    * - company  
      - oval-def:EntityStateStringType (0..1)  
      - This entity defines a company name to be found within the version-information structure.  
    * - internal_name  
      - oval-def:EntityStateStringType (0..1)  
      - This entity defines an internal name to be found within the version-information structure.  
    * - language  
      - oval-def:EntityStateStringType (0..1)  
      - This entity defines a language to be found within the version-information structure.  
    * - original_filename  
      - oval-def:EntityStateStringType (0..1)  
      - This entity defines an original filename to be found within the version-information structure.  
    * - product_name  
      - oval-def:EntityStateStringType (0..1)  
      - This entity defines a product name to be found within the version-information structure.  
    * - product_version  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - This entity defines the product version held within the version-information structure. This may not necessarily be a string compatible with the OVAL version datatype, in which case the string datatype should be used.  
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
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
      - Restriction of xsd:string (optional *default*='directories') ('directories', 'junctions', 'junctions and directories')  
      - 'recurse' defines how to recurse into the path entity, in other words what to follow during recursion. Options include junctions, directories, or both (a junction on Windows is equivalent to a symlink on Unix). Note that a max-depth other than 0 has to be specified for recursion to take place and for this attribute to mean anything.  
Note that this behavior only applies with the equality operation on the path entity.  
    * - recurse_direction  
      - Restriction of xsd:string (optional *default*='none') ('none', 'up', 'down')  
      - 'recurse_direction' defines the direction, either 'up' to parent directories, or 'down' into child directories to recursively search for files. When recursing up or down, one is limited by the max_depth behavior. Note that it is not an error if max_depth specifies a certain level of recursion and that level does not exist. Recursing should only go as deep as available. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the path entity.  
    * - recurse_file_system  
      - Restriction of xsd:string (optional *default*='all') ('all', 'local', 'defined')  
      - 'recurse_file_system' defines the file system limitation of any searching and applies to all operations as specified on the path or filepath entity. The value of 'local' limits the search scope to local file systems (as opposed to file systems mounted from an external system). The value of 'defined' keeps any recursion within the file system that the file_object (path+filename or filepath) has specified. For example, if the path specified was "C:\", you would search only the C: drive, not other filesystems mounted to descendant paths. The value of 'defined' only applies when an equality operation is used for searching because the path or filepath entity must explicitly define a file system. The default value is 'all' meaning to search all available file systems for data collection.  
Note that in most cases it is recommended that the value of 'local' be used to ensure that file system searching is limited to only the local file systems. Searching 'all' file systems may have performance implications.  
    * - windows_view  
      - Restriction of xsd:string (optional *default*='64_bit') ('32_bit', '64_bit')  
      - 64-bit versions of Windows provide an alternate file system and registry views to 32-bit applications. This behavior allows the OVAL Object to state which view should be examined. This behavior only applies to 64-bit Windows, and must not be applied on other platforms.  
Note that the values have the following meaning: '64_bit' - Indicates that the 64-bit view on 64-bit Windows operating systems must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. '32_bit' - Indicates that the 32-bit view must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. It is recommended that the corresponding 'windows_view' entity be set on the OVAL Items that are collected when this behavior is used to distinguish between OVAL Items that were collected in the 32-bit or 64-bit views.  
  
  
______________
  
.. _fileauditedpermissions53_test:  
  
< fileauditedpermissions53_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The file audit permissions test is used to check the audit permissions associated with Windows files. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a fileauditedpermissions_object and the optional state element specifies the metadata to check.

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
  
.. _fileauditedpermissions53_object:  
  
< fileauditedpermissions53_object >  
---------------------------------------------------------
The fileauditedpermissions53_object element is used by a file audited permissions test to define the objects used to evalutate against the specified state. The fileauditedpermissions53_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A fileauditedpermissions53_object is defined as a combination of a Windows file and trustee SID. The file represents the file to be evaluated while the trustee SID represents the account (SID) to check audited permissions of. If multiple files or SIDs are matched by either reference, then each possible combination of file and SID is a matching file audited permissions object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileAuditPermissions53Behaviors complex type for more information about specific behaviors.

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
      - win-def:FileAuditPermissions53Behaviors (0..1)  
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
    * - trustee_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the file's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _fileauditedpermissions53_state:  
  
< fileauditedpermissions53_state >  
---------------------------------------------------------
The fileauditedpermissions53_state element defines the different audit permissions that can be associated with a given fileauditedpermissions53_object. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The filename element specifies the name of a file to test for.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - win-def:EntityStateAuditType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - win-def:EntityStateAuditType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - win-def:EntityStateAuditType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - win-def:EntityStateAuditType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize  
      - win-def:EntityStateAuditType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - win-def:EntityStateAuditType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - win-def:EntityStateAuditType (0..1)  
      - Read access.  
    * - generic_write  
      - win-def:EntityStateAuditType (0..1)  
      - Write access.  
    * - generic_execute  
      - win-def:EntityStateAuditType (0..1)  
      - Execute access.  
    * - generic_all  
      - win-def:EntityStateAuditType (0..1)  
      - Read, write, and execute access.  
    * - file_read_data  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to read data from the file.  
    * - file_write_data  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to write data to the file.  
    * - file_append_data  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to append data to the file.  
    * - file_read_ea  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to read extended attributes.  
    * - file_write_ea  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to write extended attributes.  
    * - file_execute  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to execute a file.  
    * - file_delete_child  
      - win-def:EntityStateAuditType (0..1)  
      - Right to delete a directory and all the files it contains (its children), even if the files are read-only.  
    * - file_read_attributes  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to read file attributes.  
    * - file_write_attributes  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to change file attributes.  
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
.. _FileAuditPermissions53Behaviors:  
  
== FileAuditPermissions53Behaviors ==  
---------------------------------------------------------
The FileAuditPermissions53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the fileauditpermissions53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

The FileAuditPermissions53Behaviors extend the win-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:FileBehaviors

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _fileauditedpermissions_test:  
  
< fileauditedpermissions_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the fileauditedpermissions53_test. This test uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. See the fileauditedpermissions53_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The file audited permissions test is used to check the audit permissions associated with Windows files. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a fileauditedpermissions_object, and the optional state element references a fileauditedpermissions_state that specifies the metadata to check.

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
  
.. _fileauditedpermissions_object:  
  
< fileauditedpermissions_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the fileauditedpermissions53_object. This object uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new object was created to use trustee SIDs, which are unique. See the fileauditedpermissions53_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The fileauditedpermissions_object element is used by a file audited permissions test to define the objects used to evalutate against the specified state. The fileauditedpermissions_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A fileauditedpermissions_object is defined as a combination of a Windows file and trustee name. The file represents the file to be evaluated while the trustee name represents the account (SID) to check audited permissions of. If multiple files or SIDs are matched by either reference, then each possible combination of file and SID is a matching file audited permissions object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileAuditPermissionsBehaviors complex type for more information about specific behaviors.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:FileAuditPermissionsBehaviors (0..1)  
      -   
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path.  
    * - trustee_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
  
.. _fileauditedpermissions_state:  
  
< fileauditedpermissions_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the fileauditedpermissions53_state. This state uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new state was created to use trustee SIDs, which are unique. See the fileauditedpermissions53_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The fileauditedpermissions_state element defines the different audit permissions that can be associated with a given fileauditedpermissions_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The filename element specifies the name of a file to test for.  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_name is the unique name associated with a particular security identifier (SID). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - win-def:EntityStateAuditType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - win-def:EntityStateAuditType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - win-def:EntityStateAuditType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - win-def:EntityStateAuditType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize  
      - win-def:EntityStateAuditType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - win-def:EntityStateAuditType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - win-def:EntityStateAuditType (0..1)  
      - Read access.  
    * - generic_write  
      - win-def:EntityStateAuditType (0..1)  
      - Write access.  
    * - generic_execute  
      - win-def:EntityStateAuditType (0..1)  
      - Execute access.  
    * - generic_all  
      - win-def:EntityStateAuditType (0..1)  
      - Read, write, and execute access.  
    * - file_read_data  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to read data from the file.  
    * - file_write_data  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to write data to the file.  
    * - file_append_data  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to append data to the file.  
    * - file_read_ea  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to read extended attributes.  
    * - file_write_ea  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to write extended attributes.  
    * - file_execute  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to execute a file.  
    * - file_delete_child  
      - win-def:EntityStateAuditType (0..1)  
      - Right to delete a directory and all the files it contains (its children), even if the files are read-only.  
    * - file_read_attributes  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to read file attributes.  
    * - file_write_attributes  
      - win-def:EntityStateAuditType (0..1)  
      - Grants the right to change file attributes.  
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
.. _FileAuditPermissionsBehaviors:  
  
== FileAuditPermissionsBehaviors == (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the FileAuditPermissionsBehaviors53. The FileAuditPermissionsBehaviors complex type is used by the fileauditedpermissions_test which uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. This new test utilizes the FileAuditPermissionsBehaviors53 complex type, and as a result, the FileAuditPermissionsBehaviors complex type is no longer needed.  
* Comment: This complex type has been deprecated and will be removed in version 6.0 of the language.  
  
The FileAuditPermissionsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the fileauditpermissions_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The FileAuditPermissionsBehaviors extend the win-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:FileBehaviors

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group trustee name might be to retrieve all the user SIDs that are a member of the group, but not the group trustee name itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _fileeffectiverights53_test:  
  
< fileeffectiverights53_test >  
---------------------------------------------------------
The file effective rights test is used to check the effective rights associated with Windows files. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The fileeffectiverights53_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a fileeffectiverights53_object and the optional state element specifies the metadata to check.

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
  
.. _fileeffectiverights53_object:  
  
< fileeffectiverights53_object >  
---------------------------------------------------------
The fileeffectiverights53_object element is used by a file effective rights test to define the objects used to evalutate against the specified state. The fileeffectiverights53_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A fileeffectiverights53_object is defined as a combination of a Windows file and trustee SID. The file represents the file to be evaluated while the trustee SID represents the account (SID) to check effective rights of. If multiple files or SIDs are matched by either reference, then each possible combination of file and SID is a matching file effective rights object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileEffectiveRights53Behaviors complex type for more information about specific behaviors.

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
      - win-def:FileEffectiveRights53Behaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path..  
    * - trustee_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the file's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _fileeffectiverights53_state:  
  
< fileeffectiverights53_state >  
---------------------------------------------------------
The fileeffectiverights53_state element defines the different rights that can be associated with a given fileeffectiverights53_object. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The filename element specifies the name of the file.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - oval-def:EntityStateBoolType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - oval-def:EntityStateBoolType (0..1)  
      - Read access.  
    * - generic_write  
      - oval-def:EntityStateBoolType (0..1)  
      - Write access.  
    * - generic_execute  
      - oval-def:EntityStateBoolType (0..1)  
      - Execute access.  
    * - generic_all  
      - oval-def:EntityStateBoolType (0..1)  
      - Read, write, and execute access.  
    * - file_read_data  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to read data from the file, or if a directory, grants the right to list the contents of the directory.  
    * - file_write_data  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to write data to the file, or if a directory, grants the right to add a file to the directory.  
    * - file_append_data  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to append data to the file, or if a directory, grants the right to add a sub-directory to the directory.  
    * - file_read_ea  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to read extended attributes.  
    * - file_write_ea  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to write extended attributes.  
    * - file_execute  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to execute a file, or if a directory, the right to traverse the directory.  
    * - file_delete_child  
      - oval-def:EntityStateBoolType (0..1)  
      - Right to delete a directory and all the files it contains (its children), even if the files are read-only.  
    * - file_read_attributes  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to read file, or directory, attributes.  
    * - file_write_attributes  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to change file, or directory, attributes.  
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
.. _FileEffectiveRights53Behaviors:  
  
== FileEffectiveRights53Behaviors ==  
---------------------------------------------------------
The FileEffectiveRights53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the fileeffectiverights53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

The FileEffectiveRights53Behaviors extend the win-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:FileBehaviors

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _fileeffectiverights_test:  
  
< fileeffectiverights_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the fileeffectiverights53_test. This test uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. See the fileeffectiverights53_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The file effective rights test is used to check the effective rights associated with Windows files. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The fileeffectiverights_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a fileeffectiverights_object and the optional state element specifies the metadata to check.

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
  
.. _fileeffectiverights_object:  
  
< fileeffectiverights_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the fileeffectiverights_object. This object uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new object was created to use trustee SIDs, which are unique. See the fileeffectiverights53_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The fileeffectiverights_object element is used by a file effective rights test to define the objects used to evalutate against the specified state. The fileeffectiverights_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A fileeffectiverights_object is defined as a combination of a Windows file and trustee name. The file represents the file to be evaluated while the trustee name represents the account (SID) to check effective rights of. If multiple files or SIDs are matched by either reference, then each possible combination of file and SID is a matching file effective rights object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileEffectiveRightsBehaviors complex type for more information about specific behaviors.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:FileEffectiveRightsBehaviors (0..1)  
      -   
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path.  
    * - trustee_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
  
.. _fileeffectiverights_state:  
  
< fileeffectiverights_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the fileeffectiverights53_state. This state uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new state was created to use trustee SIDs, which are unique. See the fileeffectiverights53_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The fileeffectiverights_state element defines the different rights that can be associated with a given fileeffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The filename element specifies the name of the file.  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - The unique name associated with a particular security identifier (SID). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - oval-def:EntityStateBoolType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - oval-def:EntityStateBoolType (0..1)  
      - Read access.  
    * - generic_write  
      - oval-def:EntityStateBoolType (0..1)  
      - Write access.  
    * - generic_execute  
      - oval-def:EntityStateBoolType (0..1)  
      - Execute access.  
    * - generic_all  
      - oval-def:EntityStateBoolType (0..1)  
      - Read, write, and execute access.  
    * - file_read_data  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to read data from the file, or if a directory, grants the right to list the contents of the directory.  
    * - file_write_data  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to write data to the file, or if a directory, grants the right to add a file to the directory.  
    * - file_append_data  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to append data to the file, or if a directory, grants the right to add a sub-directory to the directory.  
    * - file_read_ea  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to read extended attributes.  
    * - file_write_ea  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to write extended attributes.  
    * - file_execute  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to execute a file, or if a directory, the right to traverse the directory.  
    * - file_delete_child  
      - oval-def:EntityStateBoolType (0..1)  
      - Right to delete a directory and all the files it contains (its children), even if the files are read-only.  
    * - file_read_attributes  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to read file, or directory, attributes.  
    * - file_write_attributes  
      - oval-def:EntityStateBoolType (0..1)  
      - Grants the right to change file, or directory, attributes.  
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
.. _FileEffectiveRightsBehaviors:  
  
== FileEffectiveRightsBehaviors == (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the FileEffectiveRightsBehaviors53. The FileEffectiveRightsBehaviors complex type is used by the fileeffectiverights_test which uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. This new test utilizes the FileEffectiveRightsBehaviors53 complex type, and as a result, the FileEffectiveRightsBehaviors complex type is no longer needed.  
* Comment: This complex type has been deprecated and will be removed in version 6.0 of the language.  
  
The FileEffectiveRightsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the fileeffectiverights_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The FileEffectiveRightsBehaviors extend the win-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:FileBehaviors

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group SID might be to retrieve all the user trustee names that are members of the group, but not the group trustee name itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _group_test:  
  
< group_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the group_sid_test. This test uses trustee names for identifying accounts on the system. Trustee names are not unique and the group_sid_test, which uses trustee SIDs which are unique, should be used instead. See the group_sid_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The group_test allows the different users and subgroups, that directly belong to specific groups (identified by name), to be tested. When the group_test collects the groups on the system, it should only include the local and built-in group accounts and not domain group accounts. However, it is important to note that domain group accounts can still be looked up. Also, note that the subgroups of the group will not be resolved to find indirect user and group members. If the subgroups need to be resolved, it should be done using the sid_object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a group_object and the optional state element specifies the metadata to check.

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
  
.. _group_object:  
  
< group_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the group_sid_object. This object uses trustee names for identifying accounts on the system. Trustee names are not unique and the group_sid_object, which uses trustee SIDs which are unique, should be used instead. See the group_sid_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The group_object element is used by a group test to define the specific group(s) (identified by name) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - group  
      - oval-def:EntityObjectStringType (1..1)  
      - The group element holds a string that represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, the group should be identified in the form: "domain\group name". In a local environment, the group should be identified in the form: "computer name\group name". If the group is a built-in group, the group should be identified in the form: "group name" without a domain component.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _group_state:  
  
< group_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the group_sid_state. This state uses trustee names for identifying accounts on the system. Trustee names are not unique and the group_sid_state, which uses trustee SIDs which are unique, should be used instead. See the group_sid_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The group_state element enumerates the different users and subgroups directly associated with a Windows group. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - group  
      - oval-def:EntityStateStringType (0..1)  
      - The group element holds a string that represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.  
    * - user  
      - oval-def:EntityStateStringType (0..1)  
      - The user element holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name". For built-in accounts on the system, use the user name without a domain.The user element can be included multiple times in a system characteristic item in order to record that a group contains a number of different users. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like user that refer to items that can occur an unbounded number of times.  
    * - subgroup  
      - oval-def:EntityStateStringType (0..1)  
      - A string that represents the name of a particular subgroup in the specified group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, the subgroups should be identified in the form: "domain\group name". In a local environment, the subgroups should be identified in the form: "computer name\group name". If the subgroups are built-in groups, the subgroups should be identified in the form: "group name" without a domain component.The subgroup element can be included multiple times in a system characteristic item in order to record that a group contains a number of different subgroups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like the subgroup entity that refer to items that can occur an unbounded number of times.  
  
______________
  
.. _group_sid_test:  
  
< group_sid_test >  
---------------------------------------------------------
The group_sid_test allows the different users and subgroups, that directly belong to specific groups (identified by SID), to be tested. When the group_sid_test collects the group SIDs on the system, it should only include the local and built-in group SIDs and not domain group SIDs. However, it is important to note that domain group SIDs can still be looked up. Also, note that the subgroups of the group will not be resolved to find indirect user and group members. If the subgroups need to be resolved, it should be done using the sid_sid_object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a group_sid_object and the optional state element specifies the metadata to check.

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
  
.. _group_sid_object:  
  
< group_sid_object >  
---------------------------------------------------------
The group_sid_object element is used by a group_test to define the specific group(s) (identified by SID) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - group_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The group_sid entity holds a string that represents the SID of a particular group.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _group_sid_state:  
  
< group_sid_state >  
---------------------------------------------------------
The group_state element enumerates the different users and subgroups directly associated with a Windows group. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - group_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The group_sid entity holds a string that represents the SID of a particular group.  
    * - user_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The user_sid entity holds a string that represents the SID of a particular user. This entity can be included multiple times in a system characteristic item in order to record that a group contains a number of different users. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like user that refer to items that can occur an unbounded number of times.  
    * - subgroup_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The subgroup_sid entity holds a string that represents the SID of particular subgroup in the specified group. This entity can be included multiple times in a system characteristic item in order to record that a group contains a number of different subgroups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like subgroup_sid that refer to items that can occur an unbounded number of times.  
    * - group  
      - oval-def:EntityStateStringType (0..1)  
      - A string the represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.  
    * - user  
      - oval-def:EntityStateStringType (0..1)  
      - A string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name". For built-in accounts on the system, use the user name without a domain.If the specified group has more than one user as a member, then multiple user elements should exist. If the specified group does not contain a single user, then a single user element should exist with a status of 'does not exist'. If there is an error determining the users that are members of the group, then a single user element should be included with a status of 'error'.  
    * - subgroup  
      - oval-def:EntityStateStringType (0..1)  
      - A string that represents the name of a particular subgroup in the specified group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, the subgroups should be identified in the form: "domain\group name". In a local environment, the subgroups should be identified in the form: "computer name\group name". If the subgroups are built-in groups, the subgroups should be identified in the form: "group name" without a domain component.If the specified group has more than one subgroup as a member, then multiple subgroup elements should exist. If the specified group does not contain a single subgroup, then a single subgroup element should exist with a status of 'does not exist'. If there is an error determining the subgroups that are members of the group, then a single subgroup element should be included with a status of 'error'.  
  
______________
  
.. _interface_test:  
  
< interface_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The interface test enumerate various attributes about the interfaces on a system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an interface_object and the optional state element specifies the interface information to check.

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

An interface object consists of a single name entity that identifies which interface is being specified. For help understanding this object, see the MIB_IFROW and MIB_IPADDRROW structures.

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
      - The name element specifies the name of an interface.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _interface_state:  
  
< interface_state >  
---------------------------------------------------------
The interface_state element enumerates the different properties associate with a Windows interface. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The name element specifies the name of an interface.  
    * - index  
      - oval-def:EntityStateIntType (0..1)  
      - The index element specifies index that identifies the interface.  
    * - type  
      - win-def:EntityStateInterfaceTypeType (0..1)  
      - The type element specifies the type of interface which is limited to certain set of values.  
    * - hardware_addr  
      - oval-def:EntityStateStringType (0..1)  
      - The hardware_addr entity is the hardware or MAC address of the physical network card. MAC addresses should be formatted according to the IEEE 802-2001 standard which states that a MAC address is a sequence of six octet values, separated by hyphens, where each octet is represented by two hexadecimal digits. Uppercase letters should also be used to represent the hexadecimal digits A through F.  
    * - inet_addr  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - The inet_addr element specifies the IP address. Note that the IP address can be IPv4 or IPv6. If the IP address is an IPv6 address, this entity will be expressed as an IPv6 address prefix using CIDR notation and the netmask entity will not be collected.  
    * - broadcast_addr  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - The broadcast_addr element specifies the broadcast address. A broadcast address is typically the IP address with the host portion set to either all zeros or all ones. Note that the IP address can be IPv4 or IPv6.  
    * - netmask  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - The netmask element specifies the subnet mask for the IP address. Note that if the inet_addr entity contains an IPv6 address prefix, this entity will not be collected.  
    * - addr_type  
      - win-def:EntityStateAddrTypeType (0..1)  
      - The addr_type element specifies the address type or state of a specific interface. Each interface can be associated with more than one value meaning the addr_type element can occur multiple times in a system characteristic item. Note that the entity_check attribute associated with EntityStateAddrTypeType guides the evaluation of unbounded entities like addr_type.  
  
______________
  
.. _junction_test:  
  
< junction_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The junction_test is used to obtain canonical path information for junctions (reparse points) on Windows filesystems.

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
  
.. _junction_object:  
  
< junction_object >  
---------------------------------------------------------
The junction_object element is used by a junction_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A junction_object consists of a path entity that contains the path to a symbolic link file. The resulting item identifies the canonical path of the link target (followed to its final destination, if there are intermediate links), an error if the link target does not exist or is a circular link (e.g., a link to itself). If the directory located at path is not a junction, or if there is no directory located at the path, then any resulting item would itself have a status of does not exist.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:FileBehaviors (0..1)  
      -   
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the path to the junction.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _junction_state:  
  
< junction_state >  
---------------------------------------------------------
The junction_state element defines a value used to evaluate the result of a specific junction_object item.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the path used to create the object.  
    * - canonical_path  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the canonical path for the target of a Windows junction specified by the path.  
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
______________
  
.. _license_test:  
  
< license_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The license_test is used to check the content of a particular entry in the Windows registry HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions key, ProductPolicy value. Access to this data is exposed by the functions NtQueryLicenseValue (and also, in version 6.0 and higher, ZwQueryLicenseValue) in NTDLL.DLL.

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
  
.. _license_object:  
  
< license_object >  
---------------------------------------------------------
The license_object element is used by a license_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The name entity provides the address of a UNICODE_STRING structure for the name of the value for which data is desired, for example, TabletPCPlatformInput-core-EnableTouchUI.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _license_state:  
  
< license_state >  
---------------------------------------------------------
The license_state element defines the different information that can be found in the Windows license registry value. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The name entity corresponds to the license_object name entity.  
    * - type  
      - win-def:EntityStateRegistryTypeType (0..1)  
      - The optional type entity provides the type of data that is expected: REG_SZ (0x01) for a string; REG_BINARY (0x03) for binary data; REG_DWORD (0x04) for a dword.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value entity allows a test to be written against the value held within the specified license entry(-ies). If the value being tested is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the value being tested is of type REG_DWORD, then the datatype attribute should be set to 'int' and the value entity should represent the data as an integer. If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string.Note that if the intent is to test a version number held in the license entry (as a reg_sz) then instead of setting the datatype to 'string', the datatype can be set to 'version'. This allows tools performing the evaluation to know how to perform less than and greater than operations correctly.  
  
______________
  
.. _lockoutpolicy_test:  
  
< lockoutpolicy_test >  
---------------------------------------------------------
The lockout policy test enumerates various attributes associated with lockout information for users and global groups in the security database. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a lockoutpolicy_object and the optional state element specifies the metadata to check.

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
  
.. _lockoutpolicy_object:  
  
< lockoutpolicy_object >  
---------------------------------------------------------
The lockoutpolicy_object element is used by a lockout policy test to define those objects to evaluated based on a specified state. There is actually only one object relating to lockout policy and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check lockout policy will reference the same lockoutpolicy_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _lockoutpolicy_state:  
  
< lockoutpolicy_state >  
---------------------------------------------------------
The lockoutpolicy_state element specifies the various attributes associated with lockout information for users and global groups in the security database. A lockout policy test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - force_logoff  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies, in seconds (from a DWORD), the amount of time between the end of the valid logon time and the time when the user is forced to log off the network. A value of TIMEQ_FOREVER (max DWORD value, 4294967295) indicates that the user is never forced to log off. A value of zero indicates that the user will be forced to log off immediately when the valid logon time expires. See the USER_MODALS_INFO_0 structure returned by a call to NetUserModalsGet().  
    * - lockout_duration  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies, in seconds, how long a locked account remains locked before it is automatically unlocked. See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().  
    * - lockout_observation_window  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the maximum time, in seconds, that can elapse between any two failed logon attempts before lockout occurs. See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().  
    * - lockout_threshold  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the number of invalid password authentications that can occur before an account is marked "locked out." See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().  
  
______________
  
.. _metabase_test:  
  
< metabase_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The metabase test is used to check information found in the Windows metabase. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a metabase_object and the optional state element specifies the metadata to check.

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
  
.. _metabase_object:  
  
< metabase_object >  
---------------------------------------------------------
The metabase_object element is used by a metabase test to define the specific metabase item(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A metabase object defines the key and id of the item(s).

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
      - The key element specifies a metabase key.  
    * - id  
      - oval-def:EntityObjectIntType (1..1)  
      - The id element specifies a particular object under the metabase key. If the xsi:nil attribute is set to true, then the object being specified is the higher level key. In this case, the id element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, says to collect every id under a given key. The most likely use for xsi:nil within a metabase object is when checking for the existence of a particular key, without regards to the different ids associated with it.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _metabase_state:  
  
< metabase_state >  
---------------------------------------------------------
The metabase_state element defines the different metadata associate with a metabase item. This includes the name, user type, data type, and the actual data. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The key element specifies a metabase key.  
    * - id  
      - oval-def:EntityStateIntType (0..1)  
      - The id element specifies a particular object under the metabase key.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The name element describes the name of the specified metabase object. This is intended to be the string name of the constant from IIScnfg.h, e.g., MD_KEY_TYPE.  
    * - user_type  
      - oval-def:EntityStateStringType (0..1)  
      - The user_type element is an unsigned 32-bit integer (DWORD) that specifies the user type of the data. See the METADATA_RECORD structure.  
    * - data_type  
      - oval-def:EntityStateStringType (0..1)  
      - The data_type element identifies the type of data in the metabase entry. See the METADATA_RECORD structure.  
    * - data  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The actual data of the named item under the specified metabase key  
  
______________
  
.. _ntuser_test:  
  
< ntuser_test >  
---------------------------------------------------------
The ntuser test is used to check metadata associated with Windows ntuser.dat files. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a ntuser_object and the optional state element specifies the ntuser data to check.

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
  
.. _ntuser_object:  
  
< ntuser_object >  
---------------------------------------------------------
The ntuser_object element is used to specify which metadata should be collected from a Windows ntuser.dat file. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:NTUserBehaviors (0..1)  
      -   
    * - key  
      - oval-def:EntityObjectStringType (1..1)  
      - The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data is not neccessary for the ntuser test and would normally reside in the HKCU hive.  
    * - name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name element describes the name assigned to a value associated with a specific registry key. If an empty string is specified for the name element, the registry key's default value should be collected. If the xsi:nil attribute is set to true, then the object being specified is the higher level key. In this case, the name element should not be collected or used in analysis. Setting xsi:nil equal to true on an element is different than using a .* pattern match. A .* pattern match says to collect every name under a given hive/key. The most likely use for xsi:nil within a registry object is when checking for the existence of a particular key, without regards to the different names associated with it.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _ntuser_state:  
  
< ntuser_state >  
---------------------------------------------------------
The ntuser_state element defines the different metadata associated with a ntuser.dat file. This includes the key, name, type, and value. Please refer to the individual elements in the schema for more details about what each represents.

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
      - This element describes a registry key normally found in the HKCU hive to be tested.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - This element describes the name of a value of a registry key.  
    * - sid  
      - oval-def:EntityStateStringType (0..1)  
      - This element holds a string that represents the SID of a particular user.  
    * - username  
      - oval-def:EntityStateStringType (0..1)  
      - The username entity holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name".  
    * - account_type  
      - win-def:EntityStateNTUserAccountTypeType (0..1)  
      - The account_type element describes if the user account is a local account or domain account.  
    * - logged_on  
      - oval-def:EntityStateBoolType (0..1)  
      - The logged_on element describes if the user account is currently logged on to the computer.  
    * - days_since_last_logon  
      - oval-def:EntityStateIntType (0..1)  
      - The last_logon data, converted to days and then rounded down to the nearest integer (floor function). If the account is determined to be currently logged in, this date should be reported as 0.  
    * - enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - The enabled element describes if the user account is enabled or disabled.  
    * - date_modified  
      - oval-def:EntityStateIntType (0..1)  
      - Time of last modification of file. The integer should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).  
    * - days_since_modified  
      - oval-def:EntityStateIntType (0..1)  
      - The number of days since the ntuser.dat file was last modified. The value should be rounded up to the next whole integer.  
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - This element describes the filepath of the ntuser.dat file.  
    * - last_write_time  
      - oval-def:EntityStateIntType (0..1)  
      - The last time that the key or any of its value entries was modified. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). Last write time can be queried on a key or name. When collecting only information about a registry key the last write time will be the time the key or any of its entiries was written to. When collecting only information about a registry name the last write time will be the time the name was written to. See the RegQueryInfoKey function lpftLastWriteTime.  
    * - type  
      - win-def:EntityStateRegistryTypeType (0..1)  
      - The type entity allows a test to be written against the registy type associated with the specified registry key(s). Please refer to the documentation on the EntityStateRegistryTypeType for more information about the different valid individual types.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value entity allows a test to be written against the value held within the specified registry key(s). If the value being tested is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the value being tested is of type REG_DWORD or REG_QWORD, then the datatype attribute should be set to 'int' and the value entity should represent the data as an integer. If the value being tested is of type REG_EXPAND_SZ, then the datatype attribute should be set to 'string' and the pre-expanded string should be represented by the value entity. If the value being tested is of type REG_MULTI_SZ, then only a single string (one of the multiple strings) should be tested using the value entity with the datatype attribute set to 'string'. In order to test multiple values, multiple OVAL registry tests should be used. If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string.Note that if the intent is to test a version number held in the registry (as a reg_sz) then instead of setting the datatype to 'string', the datatype can be set to 'version'. This allows tools performing the evaluation to know how to perform less than and greater than operations correctly.  
  
.. _NTUserBehaviors:  
  
== NTUserBehaviors ==  
---------------------------------------------------------
The NTUserBehaviors complex type defines a number of behaviors that allow a more detailed definition of the ntuser_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_default  
      - xsd:boolean (optional *default*='false')  
      - 'include_default' defines if the Window's local Default ntuser.dat file is included in the results. By default, this file is not included in the results.  
The Default User's directory which contains the ntuser.dat file is stored in the registry at 'HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/Windows NT/CurrentVersion/ProfileList/Default'.  
    * - max_depth  
      - Restriction of xsd:integer (optional *default*='-1')  
      - 'max_depth' defines the maximum depth of recursion to perform when a recurse_direction is specified. A value of '0' is equivalent to no recursion, '1' means to step only one directory level up/down, and so on. The default value is '-1' meaning no limitation. For a 'max_depth' of -1 or any value of 1 or more the starting key must be considered in the recursive search.  
Note that the default recurse_direction behavior is 'none' so even though max_depth specifies no limitation by default, the recurse_direction behavior turns recursion off.  
Note that this behavior only applies with the equality operation on the key entity.  
    * - recurse_direction  
      - Restriction of xsd:string (optional *default*='none') ('none', 'up', 'down')  
      - 'recurse_direction' defines the direction, either 'up' to parent keys, or 'down' into child keys to recursively search for registry keys. When recursing up or down, one is limited by the max_depth behavior. Note that it is not an error if max_depth specifies a certain level of recursion and that level does not exist. Recursing should only go as deep as available. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the key entity.  
    * - windows_view  
      - Restriction of xsd:string (optional *default*='64_bit') ('32_bit', '64_bit')  
      - 64-bit versions of Windows provide an alternate file system and registry views to 32-bit applications. This behavior allows the OVAL Object to specify which view should be examined. This behavior only applies to 64-bit Windows, and must not be applied on other platforms.  
Note that the values have the following meaning: '64_bit' – Indicates that the 64-bit view on 64-bit Windows operating systems must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. '32_bit' – Indicates that the 32-bit view must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. It is recommended that the corresponding 'windows_view' entity be set on the OVAL Items that are collected when this behavior is used to distinguish between the OVAL Items that are collected in the 32-bit or 64-bit views.  
  
  
______________
  
.. _passwordpolicy_test:  
  
< passwordpolicy_test >  
---------------------------------------------------------
The password policy test is used to check specific policy associated with passwords. It is important to note that these policies are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a passwordpolicy_object and the optional state element specifies the metadata to check.

NOTE: This information is stored in the SAM or Active Directory but is encrypted or hidden so the registry_test and activedirectory57_test are of no use. If this can be figured out, then the password_policy test is not needed.

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
  
.. _passwordpolicy_object:  
  
< passwordpolicy_object >  
---------------------------------------------------------
The passwordpolicy_object element is used by a password policy test to define those objects to evaluated based on a specified state. There is actually only one object relating to password policy and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check password policy will reference the same passwordpolicy_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _passwordpolicy_state:  
  
< passwordpolicy_state >  
---------------------------------------------------------
The passwordpolicy_state element specifies the various policies associated with passwords. A password policy test will reference a specific instance of this state that defines the exact settings that need to be evaluated.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - max_passwd_age  
      - oval-def:EntityStateIntType (0..1)  
      - Alternate Name: "Maximum password age". Specifies, in seconds (from a DWORD), the maximum allowable password age. A value of TIMEQ_FOREVER (max DWORD value, 4294967295) indicates that the password never expires. The minimum valid value for this element is ONE_DAY (86400). See the USER_MODALS_INFO_0 structure returned by a call to NetUserModalsGet().  
    * - min_passwd_age  
      - oval-def:EntityStateIntType (0..1)  
      - Alternate Name: "Minimum password age". Specifies the minimum number of seconds that can elapse between the time a password changes and when it can be changed again. A value of zero indicates that no delay is required between password updates.  
    * - min_passwd_len  
      - oval-def:EntityStateIntType (0..1)  
      - Alternate Name: "Minimum password length". Specifies the minimum allowable password length. Valid values for this element are zero through PWLEN.  
    * - password_hist_len  
      - oval-def:EntityStateIntType (0..1)  
      - Alternate Name: "Enforce password history". Specifies the length of password history maintained. A new password cannot match any of the previous usrmod0_password_hist_len passwords. Valid values for this element are zero through DEF_MAX_PWHIST.  
    * - password_complexity  
      - oval-def:EntityStateBoolType (0..1)  
      - Alternate Name: "Password must meet complexity requirements". A boolean value that signifies whether passwords must meet the complexity requirements put forth by the operating system.  
    * - reversible_encryption  
      - oval-def:EntityStateBoolType (0..1)  
      - Alternate name: "Store passwords using reversible encryption". Determines whether or not passwords are stored using reversible encryption.  
    * - anonymous_name_lookup  
      - oval-def:EntityStateBoolType (0..1)  
      - Alternate name: "Allow anonymous SID/Name translation". Determines whether or not an anonymous user may query the local LSA policy.  
  
______________
  
.. _peheader_test:  
  
< peheader_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The peheader_test is used to check data from a Portable Executable file header. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a peheader_object and the optional state element specifies the metadata to check.

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
  
.. _peheader_object:  
  
< peheader_object >  
---------------------------------------------------------
The peheader_object is used by a peheader_test to define the specific file(s) whose headers should be evaluated. The peheader_object will collect header information from PE files. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A peheader_object defines the path and filename or complete filepath of the file(s). In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the PEHeaderBehaviors complex type for more information about specific behaviors.

The set of files whose headers should be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

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
      - win-def:FileBehaviors (0..1)  
      -   
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a PE file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path element specifies the directory component of the absolute path to a PE file on the machine.  
    * - filename  
      - oval-def:EntityObjectStringType (1..1)  
      - The filename element specifies the name of a PE file to evaluate.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _peheader_state:  
  
< peheader_state >  
---------------------------------------------------------
The peheader_state defines the different metadata associated with the header of a PE file. Please refer to the individual elements in the schema for more details about what each represents. For more information, please see the documentation for the IMAGE_FILE_HEADER and IMAGE_OPTIONAL_HEADER structures.

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
      - The filepath element specifies the absolute path for a PE file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a PE file on the machine.  
    * - filename  
      - oval-def:EntityStateStringType (0..1)  
      - The filename element specifies the name of a PE file to evaluate.  
    * - header_signature  
      - oval-def:EntityStateStringType (0..1)  
      - The header_signature entity is the signature of the header.  
    * - target_machine_type  
      - win-def:EntityStatePeTargetMachineType (0..1)  
      - The target_machine_type entity is an unsigned 16-bit integer (WORD) that specifies the target architecture that the file is intended for.  
    * - number_of_sections  
      - oval-def:EntityStateIntType (0..1)  
      - The number_of_sections entity is an unsigned 16-bit integer (WORD) that specifies the number of sections in the file.  
    * - time_date_stamp  
      - oval-def:EntityStateIntType (0..1)  
      - The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the time that the linker produced the file. The value is represented as the number of seconds since January 1, 1970, 00:00:00.  
    * - pointer_to_symbol_table  
      - oval-def:EntityStateIntType (0..1)  
      - The pointer_to_symbol_table entity is an unsigned 32-bit integer (DWORD) that specifies the file offset of the COFF symbol table.  
    * - number_of_symbols  
      - oval-def:EntityStateIntType (0..1)  
      - The number_of_symbols entity is an unsigned 32-bit integer (DWORD) that specifies the number of symbols in the COFF symbol table.  
    * - size_of_optional_header  
      - oval-def:EntityStateIntType (0..1)  
      - The size_of_optional_header entity is an unsigned 32-bit integer (DWORD) that specifies the size of an optional header in bytes.  
    * - image_file_relocs_stripped  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_relocs_stripped entity is a boolean value that specifies if the relocation information is stripped from the file.  
    * - image_file_executable_image  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_executable_image entity is a boolean value that specifies if the file is executable.  
    * - image_file_line_nums_stripped  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_line_nums_stripped entity is a boolean value that specifies if the line numbers are stripped from the file.  
    * - image_file_local_syms_stripped  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_local_syms_stripped entity is a boolean value that specifies if the local symbols are stripped from the file.  
    * - image_file_aggresive_ws_trim  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_aggressive_ws_trim entity is a boolean value that specifies that the working set should be aggressively trimmed.  
    * - image_file_large_address_aware  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_large_address_aware entity is a boolean value that specifies that the application can handle addresses larger than 2GB.  
    * - image_file_16bit_machine  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_16bit_machine entity is a boolean value that specifies that the computer supports 16-bit words.  
    * - image_file_bytes_reversed_lo  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_bytes_reversed_lo entity is a boolean value that specifies that the bytes of the word are reversed.  
    * - image_file_32bit_machine  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_32bit_machine entity is a boolean value that specifies that the computer supports 32-bit words.  
    * - image_file_debug_stripped  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_debug_stripped entity is a boolean value that specifies that the debugging information is stored separately in a .dbg file.  
    * - image_file_removable_run_from_swap  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_removable_run_from_swap entity is a boolean value that specifies that the image is on removable media, copy and run from the swap file.  
    * - image_file_system  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_system entity is a boolean value that specifies that the image is a system file.  
    * - image_file_dll  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_dll entity is a boolean value that specifies that the image is a DLL.  
    * - image_file_up_system_only  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_up_system_only entity is a boolean value that specifies that the file should only be run on a uniprocessor computer.  
    * - image_file_bytes_reveresed_hi  
      - oval-def:EntityStateBoolType (0..1)  
      - The image_file_bytes_reversed_hi entity is a boolean value that specifies that the bytes of the word are reversed.  
    * - magic_number  
      - oval-def:EntityStateIntType (0..1)  
      - The magic_number entity is an unsigned 16-bit integer (WORD) that specifies the state of the image file.  
    * - major_linker_version  
      - oval-def:EntityStateIntType (0..1)  
      - The major_linker_version entity is a BYTE that specifies the major version of the linker that produced the file.  
    * - minor_linker_version  
      - oval-def:EntityStateIntType (0..1)  
      - The minor_linker_version entity is a BYTE that specifies the minor version of the linker that produced the file.  
    * - size_of_code  
      - oval-def:EntityStateIntType (0..1)  
      - The size_of_code entity is an unsigned 32-bit integer (DWORD) that specifies the total size of all of the code sections.  
    * - size_of_initialized_data  
      - oval-def:EntityStateIntType (0..1)  
      - The size_of_initialized_data entity is an unsigned 32-bit integer (DWORD) that specifies the total size of all of the sections that are composed of initialized data.  
    * - size_of_uninitialized_data  
      - oval-def:EntityStateIntType (0..1)  
      - The size_of_uninitialized_data entity is an unsigned 32-bit integer (DWORD) that specifies the total size of all of the sections that are composed of uninitialized data.  
    * - address_of_entry_point  
      - oval-def:EntityStateIntType (0..1)  
      - The address_of_entry_point entity is an unsigned 32-bit integer (DWORD) that specifies the address where the loader will begin execution.  
    * - base_of_code  
      - oval-def:EntityStateIntType (0..1)  
      - The base_of_code entity is an unsigned 32-bit integer (DWORD) that specifies the relative virtual address where the file's code section begins.  
    * - base_of_data  
      - oval-def:EntityStateIntType (0..1)  
      - The base_of_data entity is an unsigned 32-bit integer (DWORD) that specifies the relative virtual address where the file's data section begins.  
    * - image_base_address  
      - oval-def:EntityStateIntType (0..1)  
      - The image_base_address entity is an unsigned 32-bit integer (DWORD) that specifies the preferred address fo the first byte of the image when it is loaded into memory.  
    * - section_alignment  
      - oval-def:EntityStateIntType (0..1)  
      - The section_alignment entity is an unsigned 32-bit integer (DWORD) that specifies the alignment of the sections loaded into memory.  
    * - file_alignment  
      - oval-def:EntityStateIntType (0..1)  
      - The file_alignment entity is an unsigned 32-bit integer (DWORD) that specifies the alignment of the raw data of sections in the image file.  
    * - major_operating_system_version  
      - oval-def:EntityStateIntType (0..1)  
      - The major_operating_system_version entity is an unsigned 16-bit integer (WORD) that specifies the major version of the operating system required to use this executable.  
    * - minor_operating_system_version  
      - oval-def:EntityStateIntType (0..1)  
      - The minor_operating_system_version entity is an unsigned 16-bit integer (WORD) that specifies the minor version of the operating system required to use this executable.  
    * - major_image_version  
      - oval-def:EntityStateIntType (0..1)  
      - The major_image_version entity is an unsigned 16-bit integer (WORD) that specifies the major version number of the image.  
    * - minor_image_version  
      - oval-def:EntityStateIntType (0..1)  
      - The minor_image_version entity is an unsigned 32-bit integer (DWORD) that specifies the minor version number of the image.  
    * - major_subsystem_version  
      - oval-def:EntityStateIntType (0..1)  
      - The major_subsystem_version entity is an unsigned 16-bit integer (WORD) that specifies the major version of the subsystem required to run the executable.  
    * - minor_susbsystem_version  
      - oval-def:EntityStateIntType (0..1)  
      - The minor_subsystem_version entity is an unsigned 16-bit integer (WORD) that specifies the minor version of the subsystem required to run the executable.  
    * - size_of_image  
      - oval-def:EntityStateIntType (0..1)  
      - The size_of_image entity is an unsigned 32-bit integer (DWORD) that specifies the total size of the image including all of the headers.  
    * - size_of_headers  
      - oval-def:EntityStateIntType (0..1)  
      - The size_of_headers entity is an unsigned 32-bit integer (DWORD) that specifies the total combined size of the MS-DOS stub, PE header, and the section headers.  
    * - checksum  
      - oval-def:EntityStateIntType (0..1)  
      - The checksum entity is an unsigned 32-bit integer (DWORD) that specifies the checksum of the image file.  
    * - subsystem  
      - win-def:EntityStatePeSubsystemType (0..1)  
      - The subsystem entity is an unsigned 32-bit integer (DWORD) that specifies the type of subsystem that the executable uses for its user interface.  
    * - dll_characteristics  
      - oval-def:EntityStateIntType (0..1)  
      - The dll_characteristics entity is an unsigned 32-bit integer (DWORD) that specifies the set of flags indicating the circumstances under which a DLL's initialization function will be called..  
    * - size_of_stack_reserve  
      - oval-def:EntityStateIntType (0..1)  
      - The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to reserve for the stack.  
    * - size_of_stack_commit  
      - oval-def:EntityStateIntType (0..1)  
      - The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to commit for the stack.  
    * - size_of_heap_reserve  
      - oval-def:EntityStateIntType (0..1)  
      - The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to reserve for the local heap.  
    * - size_of_heap_commit  
      - oval-def:EntityStateIntType (0..1)  
      - The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to commit for the local heap.  
    * - loader_flags  
      - oval-def:EntityStateIntType (0..1)  
      - The loader_flags entity is an unsigned 32-bit integer (DWORD) that specifies the loader flags of the header.  
    * - number_of_rva_and_sizes  
      - oval-def:EntityStateIntType (0..1)  
      - The number_of_rva_and_sizes entity is an unsigned 32-bit integer (DWORD) that specifies the number of directory entries in the remainder of the optional header.  
    * - real_number_of_directory_entries  
      - oval-def:EntityStateIntType (0..1)  
      - The real_number_of_directory_entries entity is the real number of data directory entries in the remainder of the optional header calculated by enumerating the directory entries.  
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
______________
  
.. _port_test:  
  
< port_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The port test is used to check information about the available ports on a Windows system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a port_object and the optional state element specifies the port information to check.

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
  
.. _port_object:  
  
< port_object >  
---------------------------------------------------------
The port_object element is used by a port test to define the specific port(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A port object defines the local address, port number, and protocol of the port(s).

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - local_address  
      - oval-def:EntityObjectIPAddressStringType (1..1)  
      - This element specifies the local IP address the listening port is bound to. Note that the IP address can be IPv4 or IPv6.  
    * - local_port  
      - oval-def:EntityObjectIntType (1..1)  
      - This element specifies the number assigned to the local listening port.  
    * - protocol  
      - win-def:EntityObjectProtocolType (1..1)  
      - This element specifies the type of listening port. It is restricted to either TCP or UDP.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _port_state:  
  
< port_state >  
---------------------------------------------------------
The port_state element defines the different metadata associate with a Windows port. This includes the local address, port number, protocol, and pid. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - local_address  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - This element specifies the local IP address the listening port is bound to. Note that the IP address can be IPv4 or IPv6.  
    * - local_port  
      - oval-def:EntityStateIntType (0..1)  
      - This element specifies the number assigned to the local listening port.  
    * - protocol  
      - win-def:EntityStateProtocolType (0..1)  
      - This element specifies the type of listening port. It is restricted to either TCP or UDP.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - The id given to the process that is associated with the specified listening port.  
    * - foreign_address  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.  
    * - foreign_port  
      - oval-def:EntityStateStringType (0..1)  
      - This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.  
  
______________
  
.. _printereffectiverights_test:  
  
< printereffectiverights_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The printer effective rights test is used to check the effective rights associated with Windows printers. The printereffectiverights_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a printereffectiverights_object and the optional state element specifies the metadata to check.

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
  
.. _printereffectiverights_object:  
  
< printereffectiverights_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:PrinterEffectiveRightsBehaviors (0..1)  
      -   
    * - printer_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The printer_name element describes a printer that a user may have rights on.  
    * - trustee_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the printer's Security Descriptor. The scope is limited here to ensure that it is possible to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _printereffectiverights_state:  
  
< printereffectiverights_state >  
---------------------------------------------------------
The printereffectiverights_state element defines the different rights that can be associated with a given printereffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - printer_name  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the name of the printer.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).  
    * - standard_delete  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - oval-def:EntityStateBoolType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - oval-def:EntityStateBoolType (0..1)  
      - Read access.  
    * - generic_write  
      - oval-def:EntityStateBoolType (0..1)  
      - Write access.  
    * - generic_execute  
      - oval-def:EntityStateBoolType (0..1)  
      - Execute access.  
    * - generic_all  
      - oval-def:EntityStateBoolType (0..1)  
      - Read, write, and execute access.  
    * - printer_access_administer  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - printer_access_use  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - job_access_administer  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - job_access_read  
      - oval-def:EntityStateBoolType (0..1)  
      -   
  
.. _PrinterEffectiveRightsBehaviors:  
  
== PrinterEffectiveRightsBehaviors ==  
---------------------------------------------------------
The PrinterEffectiveRightsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the pritnereffectiverights_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group trustee name might be to retrieve all the user trustee names that are members of the group, but not the group trustee name itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _process_test:  
  
< process_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: The process_test has been deprecated and replaced by the process58_test. The command line of a process cannot be used to uniquely identify a process. As a result, the pid entity was added to the process58_object. Please see the process58_test for additional information.  
  
The process_test is used to check information found in the Windows processes. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a process_object and the optional state element references a process_state element that specifies the process information to check.

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

A process_object defines the command line used to start the process(es).

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
  
.. _process_state:  
  
< process_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.8  
* Reason: The process_state has been deprecated and replaced by the process58_state. The command line of a process cannot be used to uniquely identify a process. As a result, the pid entity was added to the process58_object. Please see the process58_state for additional information.  
  
The process_state element defines the different metadata associate with a Windows process. This includes the command line, pid, ppid, image path, and current directory. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The command_line entity is the string used to start the process. This includes any parameters that are part of the command line.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - The id given to the process that is created for a specified command line.  
    * - ppid  
      - oval-def:EntityStateIntType (0..1)  
      - The id given to the parent of the process that is created for the specified command line  
    * - priority  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The base priority of the process. The priority value range is from 0 to 31.  
    * - image_path  
      - oval-def:EntityStateStringType (0..1)  
      - The image_path entity contains the name of the executable file in question.  
    * - current_dir  
      - oval-def:EntityStateStringType (0..1)  
      - The current_directory entity represents the current path to the executable.  
  
______________
  
.. _process58_test:  
  
< process58_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The process58_test is used to check information found in the Windows processes. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a process58_object and the optional state element references a process58_state element that specifies the process information to check.

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

A process58_object defines the command line used to start the process(es)and pid.

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
      - The command_line entity is the string used to start the process. This includes any parameters that are part of the command line. Use xsi:nil='true' to disregard (and permit processes with non-existent commane_lines, such as the System process).  
    * - pid  
      - oval-def:EntityObjectIntType (1..1)  
      - The id given to the process that is created for a specified command line.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _process58_state:  
  
< process58_state >  
---------------------------------------------------------
The process58_state element defines the different metadata associate with a Windows process. This includes the command line, pid, ppid, image path, and current directory. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The command_line entity is the string used to start the process. This includes any parameters that are part of the command line.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - The id given to the process that is created for a specified command line.  
    * - ppid  
      - oval-def:EntityStateIntType (0..1)  
      - The id given to the parent of the process that is created for the specified command line  
    * - priority  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The base priority of the process. The priority value range is from 0 to 31.  
    * - image_path  
      - oval-def:EntityStateStringType (0..1)  
      - The image_path entity represents the name of the executable file for the process.  
    * - current_dir  
      - oval-def:EntityStateStringType (0..1)  
      - The current_dir entity represents the current path to the executable file for the process.  
    * - creation_time  
      - oval-def:EntityStateIntType (0..1)  
      - The creation_time entity represents the creation time of the process. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). See the GetProcessTimes function lpCreationTime.  
    * - dep_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - The dep_enabled entity represents whether or not data execution prevention (DEP) is enabled. See the GetProcessDEPPolicy lpFlags.  
    * - primary_window_text  
      - oval-def:EntityStateStringType (0..1)  
      - The primary_window_text entity represents the title of the primary window of the process. See the GetWindowText function.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the process.  
  
______________
  
.. _registry_test:  
  
< registry_test >  
---------------------------------------------------------
The registry test is used to check metadata associated with Windows registry key. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a registry_object and the optional state element specifies the registry data to check.

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
  
.. _registry_object:  
  
< registry_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:RegistryBehaviors (0..1)  
      -   
    * - hive  
      - win-def:EntityObjectRegistryHiveType (1..1)  
      - The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS, HKEY_LOCAL_MACHINE, and HKEY_USERS.  
    * - key  
      - oval-def:EntityObjectStringType (1..1)  
      - The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element. If the xsi:nil attribute is set to true, then the object being specified is the higher level hive. In this case, the key element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match. A .* pattern match says to collect every key under a given hive.  
    * - name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name element describes the name assigned to a value associated with a specific registry key. If an empty string is specified for the name element, the registry key's default value should be collected. If the xsi:nil attribute is set to true, then the object being specified is the higher level hive/key. In this case, the name element should not be collected or used in analysis. Setting xsi:nil equal to true on an element is different than using a .* pattern match. A .* pattern match says to collect every name under a given hive/key. The most likely use for xsi:nil within a registry object is when checking for the existence of a particular key, without regards to the different names associated with it.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _registry_state:  
  
< registry_state >  
---------------------------------------------------------
The registry_state element defines the different metadata associate with a Windows registry key. This includes the hive, key, name, type, and value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hive  
      - win-def:EntityStateRegistryHiveType (0..1)  
      - The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS,HKEY_LOCAL_MACHINE, and HKEY_USERS.  
    * - key  
      - oval-def:EntityStateStringType (0..1)  
      - This element describes a registry key to be tested. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - This element describes the name of a value of a registry key. If the xsi:nil attribute is set to true, then the name element should not be used in analysis.  
    * - last_write_time  
      - oval-def:EntityStateIntType (0..1)  
      - The last time that the key or any of its value entries were modified. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). Last write time can be queried on any key, with hives being classified as a type of key. When collecting only information about a registry hive or key the last write time will be the time the key or any of its entries were modified. When collecting only information about a registry name the last write time will be the time the containing key was modified. Thus when collecting information about a registry name, the last write time does not correlate directly to the specified name. See the RegQueryInfoKey function lpftLastWriteTime.  
    * - type  
      - win-def:EntityStateRegistryTypeType (0..1)  
      - The type entity allows a test to be written against the registy type associated with the specified registry key(s). Please refer to the documentation on the EntityStateRegistryTypeType for more information about the different valid individual types.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value entity allows a test to be written against the value held within the specified registry key(s). If the value being tested is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the value being tested is of type REG_DWORD, REG_QWORD, REG_DWORD_LITTLE_ENDIAN, REG_DWORD_BIG_ENDIAN, and REG_QWORD_LITTLE_ENDIAN then the datatype attribute should be set to 'int' and the value entity should represent the data as an unsigned integer. DWORD and QWORD values represnt unsigned 32-bit and 64-bit integers, respectively. If the value being tested is of type REG_EXPAND_SZ, then the datatype attribute should be set to 'string' and the pre-expanded string should be represented by the value entity. If the value being tested is of type REG_MULTI_SZ, then only a single string (one of the multiple strings) should be tested using the value entity with the datatype attribute set to 'string'. In order to test multiple values, multiple OVAL registry tests should be used. If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string. If the value being tested is of type REG_LINK, then the datatype attribute should be set to 'string' and the null-terminated Unicode string should be represented by the value entity.Note that if the intent is to test a version number held in the registry (as a reg_sz) then instead of setting the datatype to 'string', the datatype can be set to 'version'. This allows tools performing the evaluation to know how to perform less than and greater than operations correctly.  
    * - expanded_value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - For registry values of type REG_EXPAND_SZ, this entity contains the expanded value. Otherwise, it should not exist.  
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
.. _RegistryBehaviors:  
  
== RegistryBehaviors ==  
---------------------------------------------------------
The RegistryBehaviors complex type defines a number of behaviors that allow a more detailed definition of the registry_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - max_depth  
      - Restriction of xsd:integer (optional *default*='-1')  
      - 'max_depth' defines the maximum depth of recursion to perform when a recurse_direction is specified. A value of '0' is equivalent to no recursion, '1' means to step only one directory level up/down, and so on. The default value is '-1' meaning no limitation. For a 'max_depth' of -1 or any value of 1 or more the starting key must be considered in the recursive search.  
Note that the default recurse_direction behavior is 'none' so even though max_depth specifies no limitation by default, the recurse_direction behavior turns recursion off.  
Note that this behavior only applies with the equality operation on the key entity.  
    * - recurse_direction  
      - Restriction of xsd:string (optional *default*='none') ('none', 'up', 'down')  
      - 'recurse_direction' defines the direction, either 'up' to parent keys, or 'down' into child keys to recursively search for registry keys. When recursing up or down, one is limited by the max_depth behavior. Note that it is not an error if max_depth specifies a certain level of recursion and that level does not exist. Recursing should only go as deep as available. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the key entity.  
    * - windows_view  
      - Restriction of xsd:string (optional *default*='64_bit') ('32_bit', '64_bit')  
      - 64-bit versions of Windows provide an alternate file system and registry views to 32-bit applications. This behavior allows the OVAL Object to specify which view should be examined. This behavior only applies to 64-bit Windows, and must not be applied on other platforms.  
Note that the values have the following meaning: '64_bit' - Indicates that the 64-bit view on 64-bit Windows operating systems must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. '32_bit' - Indicates that the 32-bit view must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. It is recommended that the corresponding 'windows_view' entity be set on the OVAL Items that are collected when this behavior is used to distinguish between the OVAL Items that are collected in the 32-bit or 64-bit views.  
  
  
______________
  
.. _regkeyauditedpermissions53_test:  
  
< regkeyauditedpermissions53_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The registry key audited permissions test is used to check the audit permissions associated with Windows registry keys. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a regkeyauditedpermissions53_object and the optional state element specifies the metadata to check.

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
  
.. _regkeyauditedpermissions53_object:  
  
< regkeyauditedpermissions53_object >  
---------------------------------------------------------
The regkeyauditedpermissions53_object element is used by a registry key audited permissions test to define the objects used to evalutate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A regkeyauditedpermissions53_object is defined as a combination of a Windows registry key and trustee name. The hive and key elements represents the registry key to be evaluated while the trustee name represents the account (SID) to check audited permissions of. If multiple keys or SIDs are matched by either reference, then each possible combination of registry key and SID is a matching registry key audited permissions object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the RegkeyAuditPermissions53Behaviors complex type for more information about specific behaviors.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:RegkeyAuditPermissions53Behaviors (0..1)  
      -   
    * - hive  
      - win-def:EntityObjectRegistryHiveType (1..1)  
      - The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS, HKEY_LOCAL_MACHINE, and HKEY_USERS.  
    * - key  
      - oval-def:EntityObjectStringType (1..1)  
      - The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element. If the xsi:nil attribute is set to true, then the object being specified is the higher level hive. In this case, the key element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match. A .* pattern match says to collect every key under a given hive.  
    * - trustee_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the registry key's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _regkeyauditedpermissions53_state:  
  
< regkeyauditedpermissions53_state >  
---------------------------------------------------------
The regkeyauditedpermissions53_state element defines the different audit permissions that can be associated with a given regkeyauditedpermissions53_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hive  
      - win-def:EntityStateRegistryHiveType (0..1)  
      - This element specifies the hive of a registry key on the machine from which to retrieve the SACL.  
    * - key  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies a registry key on the machine from which to retrieve the SACL. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - win-def:EntityStateAuditType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - win-def:EntityStateAuditType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - win-def:EntityStateAuditType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - win-def:EntityStateAuditType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize (Deprecated)  
      - win-def:EntityStateAuditType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - win-def:EntityStateAuditType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - win-def:EntityStateAuditType (0..1)  
      - Read access.  
    * - generic_write  
      - win-def:EntityStateAuditType (0..1)  
      - Write access.  
    * - generic_execute  
      - win-def:EntityStateAuditType (0..1)  
      - Execute access.  
    * - generic_all  
      - win-def:EntityStateAuditType (0..1)  
      - Read, write, and execute access.  
    * - key_query_value  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_set_value  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_create_sub_key  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_enumerate_sub_keys  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_notify  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_create_link  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_wow64_64key  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_wow64_32key  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_wow64_res  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
.. _RegkeyAuditPermissions53Behaviors:  
  
== RegkeyAuditPermissions53Behaviors ==  
---------------------------------------------------------
The RegkeyAuditPermissions53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the registrykeyauditedpermissions53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The RegkeyAuditPermissions53Behaviors extend the win-def:RegistryBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:RegistryBehaviors

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _regkeyauditedpermissions_test:  
  
< regkeyauditedpermissions_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the regkeyauditedpermissions53_test. This test uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. See the regkeyauditedpermissions53_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The registry key audited permissions test is used to check the audit permissions associated with Windows registry keys. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a regkeyauditedpermissions_object and the optional state element specifies the metadata to check.

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
  
.. _regkeyauditedpermissions_object:  
  
< regkeyauditedpermissions_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the regkeyauditedpermissions53_object. This object uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new object was created to use trustee SIDs, which are unique. See the regkeyauditedpermissions53_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The regkeyauditedpermissions_object element is used by a registry key audited permissions test to define the objects used to evalutate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A regkeyauditedpermissions_object is defined as a combination of a Windows registry key and trustee name. The hive and key elements represents the registry key to be evaluated while the trustee name represents the account (SID) to check audited permissions of. If multiple keys or SIDs are matched by either reference, then each possible combination of file and SID is a matching file audited permissions object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the RegkeyAuditPermissionsBehaviors complex type for more information about specific behaviors.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:RegkeyAuditPermissionsBehaviors (0..1)  
      -   
    * - hive  
      - win-def:EntityObjectRegistryHiveType (1..1)  
      - The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS, HKEY_LOCAL_MACHINE, and HKEY_USERS.  
    * - key  
      - oval-def:EntityObjectStringType (1..1)  
      - The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element.  
    * - trustee_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
  
.. _regkeyauditedpermissions_state:  
  
< regkeyauditedpermissions_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the regkeyauditedpermissions53_state. This state uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new state was created to use trustee SIDs, which are unique. See the regkeyauditedpermissions53_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The regkeyauditedpermissions_state element defines the different audit permissions that can be associated with a given regkeyauditedpermissions_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hive  
      - win-def:EntityStateRegistryHiveType (0..1)  
      - This element specifies the hive of a registry key on the machine from which to retrieve the SACL.  
    * - key  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies a registry key on the machine from which to retrieve the SACL. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - The unique name associated with a particular security identifier (SID). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - win-def:EntityStateAuditType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - win-def:EntityStateAuditType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - win-def:EntityStateAuditType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - win-def:EntityStateAuditType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize  
      - win-def:EntityStateAuditType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - win-def:EntityStateAuditType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - win-def:EntityStateAuditType (0..1)  
      - Read access.  
    * - generic_write  
      - win-def:EntityStateAuditType (0..1)  
      - Write access.  
    * - generic_execute  
      - win-def:EntityStateAuditType (0..1)  
      - Execute access.  
    * - generic_all  
      - win-def:EntityStateAuditType (0..1)  
      - Read, write, and execute access.  
    * - key_query_value  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_set_value  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_create_sub_key  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_enumerate_sub_keys  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_notify  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_create_link  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_wow64_64key  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_wow64_32key  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - key_wow64_res  
      - win-def:EntityStateAuditType (0..1)  
      -   
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
.. _RegkeyAuditPermissionsBehaviors:  
  
== RegkeyAuditPermissionsBehaviors == (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the RegkeyAuditPermissionsBehaviors53. The RegkeyAuditPermissionsBehaviors complex type is used by the regkeyauditedpermissions_test which uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. This new test utilizes the RegkeyAuditPermissionsBehaviors53 complex type, and as a result, the RegkeyAuditPermissionsBehaviors complex type is no longer needed.  
* Comment: This complex type has been deprecated and will be removed in version 6.0 of the language.  
  
The RegkeyAuditPermissionsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the registrykeyauditedpermissions_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The RegkeyAuditPermissionsBehaviors extend the win-def:RegistryBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:RegistryBehaviors

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group trustee name might be to retrieve all the user trustee names that are members of the group, but not the group trustee name itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _regkeyeffectiverights53_test:  
  
< regkeyeffectiverights53_test >  
---------------------------------------------------------
The registry key effective rights test is used to check the effective rights associated with Windows files. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The regkeyeffectiverights53_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a regkeyeffectiverights53_object and the optional state element specifies the metadata to check.

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
  
.. _regkeyeffectiverights53_object:  
  
< regkeyeffectiverights53_object >  
---------------------------------------------------------
The regkeyeffectiverights53_object element is used by a registry key effective rights test to define the objects used to evalutate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A regkeyeffectiverights53_object is defined as a combination of a Windows registry and trustee SID. The key entity represents the registry key to be evaluated while the trustee SID represents the account (SID) to check effective rights of. If multiple files or SIDs are matched by either reference, then each possible combination of registry key and SID is a matching registry key effective rights object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the RegkeyEffectiveRights53Behaviors complex type for more information about specific behaviors.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:RegkeyEffectiveRights53Behaviors (0..1)  
      -   
    * - hive  
      - win-def:EntityObjectRegistryHiveType (1..1)  
      - The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS,HKEY_LOCAL_MACHINE, and HKEY_USERS.  
    * - key  
      - oval-def:EntityObjectStringType (1..1)  
      - The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element. If the xsi:nil attribute is set to true, then the object being specified is the higher level hive. In this case, the key element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match. A .* pattern match says to collect every key under a given hive.  
    * - trustee_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the registry key's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _regkeyeffectiverights53_state:  
  
< regkeyeffectiverights53_state >  
---------------------------------------------------------
The regkeyeffectiverights53_state element defines the different rights that can be associated with a given regkeyeffectiverights53_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hive  
      - win-def:EntityStateRegistryHiveType (0..1)  
      - This element specifies the hive of a registry key on the machine from which to retrieve the SACL.  
    * - key  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies a registry key on the machine from which to retrieve the SACL. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize (Deprecated)  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - oval-def:EntityStateBoolType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - oval-def:EntityStateBoolType (0..1)  
      - Read access.  
    * - generic_write  
      - oval-def:EntityStateBoolType (0..1)  
      - Write access.  
    * - generic_execute  
      - oval-def:EntityStateBoolType (0..1)  
      - Execute access.  
    * - generic_all  
      - oval-def:EntityStateBoolType (0..1)  
      - Read, write, and execute access.  
    * - key_query_value  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_set_value  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_create_sub_key  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_enumerate_sub_keys  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_notify  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_create_link  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_wow64_64key  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_wow64_32key  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_wow64_res  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
.. _RegkeyEffectiveRights53Behaviors:  
  
== RegkeyEffectiveRights53Behaviors ==  
---------------------------------------------------------
The RegkeyEffectiveRights53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the registrykeyeffectiverights53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The RegkeyEffectiveRights53Behaviors extend the win-def:RegistryBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:RegistryBehaviors

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _regkeyeffectiverights_test:  
  
< regkeyeffectiverights_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the regkeyeffectiverights53_test. This test uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. See the regkeyeffectiverights53_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The registry key effective rights test is used to check the effective rights associated with Windows files. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The regkeyeffectiverights_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a regkeyeffectiverights_object and the optional state element specifies the metadata to check.

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
  
.. _regkeyeffectiverights_object:  
  
< regkeyeffectiverights_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the regkeyeffectiverights53_object. This object uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new object was created to use trustee SIDs, which are unique. See the regkeyeffectiverights53_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:RegkeyEffectiveRightsBehaviors (0..1)  
      -   
    * - hive  
      - win-def:EntityObjectRegistryHiveType (1..1)  
      - The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS,HKEY_LOCAL_MACHINE, and HKEY_USERS.  
    * - key  
      - oval-def:EntityObjectStringType (1..1)  
      - The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element.  
    * - trustee_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
  
.. _regkeyeffectiverights_state:  
  
< regkeyeffectiverights_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the regkeyeffectiverights53_state. This state uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new state was created to use trustee SIDs, which are unique. See the regkeyeffectiverights53_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The regkeyeffectiverights_state element defines the different rights that can be associated with a given regkeyeffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hive  
      - win-def:EntityStateRegistryHiveType (0..1)  
      - This element specifies the hive of a registry key on the machine from which to retrieve the SACL.  
    * - key  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies a registry key on the machine from which to retrieve the SACL. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - The unique name associated with a particular security identifier (SID). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - oval-def:EntityStateBoolType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - oval-def:EntityStateBoolType (0..1)  
      - Read access.  
    * - generic_write  
      - oval-def:EntityStateBoolType (0..1)  
      - Write access.  
    * - generic_execute  
      - oval-def:EntityStateBoolType (0..1)  
      - Execute access.  
    * - generic_all  
      - oval-def:EntityStateBoolType (0..1)  
      - Read, write, and execute access.  
    * - key_query_value  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_set_value  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_create_sub_key  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_enumerate_sub_keys  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_notify  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_create_link  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_wow64_64key  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_wow64_32key  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - key_wow64_res  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - windows_view  
      - win-def:EntityStateWindowsViewType (0..1)  
      - The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.  
  
.. _RegkeyEffectiveRightsBehaviors:  
  
== RegkeyEffectiveRightsBehaviors == (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the RegkeyEffectiveRightsBehaviors53. The RegkeyEffectiveRightsBehaviors complex type is used by the regkeyeffectiverights_test which uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. This new test utilizes the RegkeyEffectiveRightsBehaviors53 complex type, and as a result, the RegkeyEffectiveRightsBehaviors complex type is no longer needed.  
* Comment: This complex type has been deprecated and will be removed in version 6.0 of the language.  
  
The RegkeyEffectiveRightsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the registrykeyeffectiverights_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The RegkeyEffectiveRightsBehaviors extend the win-def:RegistryBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:RegistryBehaviors

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group trustee name might be to retrieve all the user trustee names that are members of the group, but not the group trustee name itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _service_test:  
  
< service_test >  
---------------------------------------------------------
The service_test is used to check metadata associated with Windows services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a service_object and the optional state elements specify the metadata to check.

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
  
.. _service_object:  
  
< service_object >  
---------------------------------------------------------
The service_object element is used by a service_test to define the specific service(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The service_name element specifies the service name as stored in the Service Control Manager (SCM) database on the system.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _service_state:  
  
< service_state >  
---------------------------------------------------------
The service_state element defines the different metadata associated with a Windows service. This includes the service name, display name, description, type, start type, current state, controls accepted, start name, path, pid, service flag, and dependencies. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The service_name element specifies the name of the service as specified in the Service Control Manager (SCM) database.  
    * - display_name  
      - oval-def:EntityStateStringType (0..1)  
      - The display_name element specifies the name of the service as specified in tools such as Control Panel->Administrative Tools->Services.  
    * - description  
      - oval-def:EntityStateStringType (0..1)  
      - The description element specifies the description of the service.  
    * - service_type  
      - win-def:EntityStateServiceTypeType (0..1)  
      - The service_type element specifies the type of the service.  
    * - start_type  
      - win-def:EntityStateServiceStartTypeType (0..1)  
      - The start_type element specifies when the service should be started.  
    * - current_state  
      - win-def:EntityStateServiceCurrentStateType (0..1)  
      - The current_state element specifies the current state of the service.  
    * - controls_accepted  
      - win-def:EntityStateServiceControlsAcceptedType (0..1)  
      - The controls_accepted element specifies the control codes that a service will accept and process.  
    * - start_name  
      - oval-def:EntityStateStringType (0..1)  
      - The start_name element specifies the account under which the process should run.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path element specifies the path to the binary of the service.  
    * - pid  
      - oval-def:EntityStateIntType (0..1)  
      - The pid element specifies the process ID of the service.  
    * - service_flag  
      - oval-def:EntityStateBoolType (0..1)  
      - The service_flag element specifies if the service is in a system process that must always run (1) or if the service is in a non-system process or is not running (0). If the service is not running, the pid will be 0. Otherwise, the pid will be non-zero.  
    * - dependencies  
      - oval-def:EntityStateStringType (0..1)  
      - The dependencies element specifies the dependencies of this service on other services.  
  
______________
  
.. _serviceeffectiverights_test:  
  
< serviceeffectiverights_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The service effective rights test is used to check the effective rights associated with Windows services. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The serviceeffectiverights_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a serviceeffectiverights_object and the optional state element specifies the metadata to check.

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
  
.. _serviceeffectiverights_object:  
  
< serviceeffectiverights_object >  
---------------------------------------------------------
The serviceeffectiverights_object element is used by the serviceeffectiverights_test to define the objects used to evalutate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A serviceeffectiverights_object is defined as a combination of a Windows service_name and trustee_sid. The service_name entity represents the service to be evaluated while the trustee_sid entity represents the account (SID) to check the effective rights of. If multiple services or SIDs are matched by either reference, then each possible combination of service and SID is a matching service effective rights object.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:ServiceEffectiveRightsBehaviors (0..1)  
      -   
    * - service_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The service_name element describes a service to be collected. Note that the service_name element should contain the actual name of the service and not its display name that is found in Control Panel->Administrative Tools->Services. For example, if you wanted to check the effective rights of the Automatic Updates service you would specify 'wuauserv' for the service_name element not 'Automatic Updates'.  
    * - trustee_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_sid entity identifies a set of SIDs associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the service's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _serviceeffectiverights_state:  
  
< serviceeffectiverights_state >  
---------------------------------------------------------
The serviceeffectiverights_state element defines the different rights that can be associated with a given serviceeffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

See http://support.microsoft.com/kb/914392 for more information.

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
      - The service_name element specifies a service on the machine from which to retrieve the DACL. Note that the service_name element should contain the actual name of the service and not its display name that is found in Control Panel->Administrative Tools->Services. For example, if you wanted to check the effective rights of the Automatic Updates service you would specify 'wuauserv' for the service_name element not 'Automatic Updates'.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_sid element is the unique SID that is associated with a user, group, system, or program (such as a Windows service).  
    * - standard_delete  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the DeleteService function to delete the service.  
    * - standard_read_control  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the QueryServiceObjectSecurity function to query the Security Descriptor of the service object.  
    * - standard_write_dac  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the SetServiceObjectSecurity function to modify the DACL member of the service object's Security Descriptor.  
    * - standard_write_owner  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the SetServiceObjectSecurity function to modify the Owner and Group members of the service object's Security Descriptor.  
    * - generic_read  
      - oval-def:EntityStateBoolType (0..1)  
      - Read access (STANDARD_RIGHTS_READ, SERVICE_QUERY_CONFIG, SERVICE_QUERY_STATUS, SERVICE_INTERROGATE, SERVICE_ENUMERATE_DEPENDENTS).  
    * - generic_write  
      - oval-def:EntityStateBoolType (0..1)  
      - Write access (STANDARD_RIGHTS_WRITE, SERVICE_CHANGE_CONFIG).  
    * - generic_execute  
      - oval-def:EntityStateBoolType (0..1)  
      - Execute access (STANDARD_RIGHTS_EXECUTE, SERVICE_START, SERVICE_STOP, SERVICE_PAUSE_CONTINUE, SERVICE_USER_DEFINED_CONTROL).  
    * - service_query_conf  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the QueryServiceConfig and QueryServiceConfig2 functions to query the service configuration.  
    * - service_change_conf  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the ChangeServiceConfig or ChangeServiceConfig2 function to change the service configuration.  
    * - service_query_stat  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the QueryServiceStatusEx function to ask the service control manager about the status of the service.  
    * - service_enum_dependents  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the EnumDependentServices function to enumerate all the services dependent on the service.  
    * - service_start  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the StartService function to start the service.  
    * - service_stop  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the ControlService function to stop the service.  
    * - service_pause  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the ControlService function to pause or continue the service.  
    * - service_interrogate  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the ControlService function to ask the service to report its status immediately.  
    * - service_user_defined  
      - oval-def:EntityStateBoolType (0..1)  
      - This permission is required to call the ControlService function to specify a user-defined control code.  
  
.. _ServiceEffectiveRightsBehaviors:  
  
== ServiceEffectiveRightsBehaviors ==  
---------------------------------------------------------
The ServiceEffectiveRightsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the serviceeffectiverights_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group trustee sid should be included in the object when the object is defined by a group trustee sid. For example, the intent of an object defined by a group trustee sid might be to retrieve all the user trustee sids that are members of the group, but not the group trustee sid itself.  
    * - resolve_group (Deprecated)  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _sharedresource_test:  
  
< sharedresource_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The shared resource test is used to check properties associated with any shared resource on the system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sharedresource_object and the optional state element specifies the metadata to check.

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
  
.. _sharedresource_object:  
  
< sharedresource_object >  
---------------------------------------------------------
The sharedresource_object element is used by a shared resource test to define the object, in this case a shared resource, to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An shared resource object consists of a single netname entity that identifies a specific shared resource.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - netname  
      - oval-def:EntityObjectStringType (1..1)  
      - The netname element is the unique name that is associated with a specific shared resource.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sharedresource_state:  
  
< sharedresource_state >  
---------------------------------------------------------
The sharedresource_state element defines the different metadata associated with a Windows shared resource. This includes the share type, permissions, and max uses. This state mirrors the SHARE_INFO_2 structure. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - netname  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the name associated with a particular shared resource.  
    * - shared_type  
      - win-def:EntityStateSharedResourceTypeType (0..1)  
      - The type of the shared resource.  
    * - max_uses  
      - oval-def:EntityStateIntType (0..1)  
      - The maximum number of concurrent connections that the shared resource can accommodate.  
    * - current_uses  
      - oval-def:EntityStateIntType (0..1)  
      - The number of current connections to the resource.  
    * - local_path  
      - oval-def:EntityStateStringType (0..1)  
      - The local path for the shared resource.  
    * - access_read_permission  
      - oval-def:EntityStateBoolType (0..1)  
      - Permission to read data from a resource and, by default, to execute the resource.  
    * - access_write_permission  
      - oval-def:EntityStateBoolType (0..1)  
      - Permission to write data to the resource.  
    * - access_create_permission  
      - oval-def:EntityStateBoolType (0..1)  
      - Permission to create an instance of the resource (such as a file); data can be written to the resource as the resource is created.  
    * - access_exec_permission  
      - oval-def:EntityStateBoolType (0..1)  
      - Permission to execute the resource.  
    * - access_delete_permission  
      - oval-def:EntityStateBoolType (0..1)  
      - Permission to delete the resource.  
    * - access_atrib_permission  
      - oval-def:EntityStateBoolType (0..1)  
      - Permission to modify the resource's attributes (such as the date and time when a file was last modified).  
    * - access_perm_permission  
      - oval-def:EntityStateBoolType (0..1)  
      - Permission to modify the permissions (read, write, create, execute, and delete) assigned to a resource for a user or application.  
    * - access_all_permission  
      - oval-def:EntityStateBoolType (0..1)  
      - Permission to read, write, create, execute, and delete resources, and to modify their attributes and permissions.  
  
______________
  
.. _sharedresourceauditedpermissions_test:  
  
< sharedresourceauditedpermissions_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The shared resource audited permissions test is used to check the audit permissions associated with any shared resource on the system. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sharedresourceauditedpermissions_object and the optional state element specifies the metadata to check.

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
  
.. _sharedresourceauditedpermissions_object:  
  
< sharedresourceauditedpermissions_object >  
---------------------------------------------------------
The sharedresourceauditedpermissions_object element is used by a shared resource audited permissions test to define the objects used to evaluate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A shared resource audited permissions object consists of a netname entity that identifies a specific shared resource and a trustee_sid entity that identifies a specific account (SID) to check the audited permissions of.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:SharedResourceAuditedPermissionsBehaviors (0..1)  
      -   
    * - netname  
      - oval-def:EntityObjectStringType (1..1)  
      - The netname element is the unique name that is associated with a specific shared resource.  
    * - trustee_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the file's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sharedresourceauditedpermissions_state:  
  
< sharedresourceauditedpermissions_state >  
---------------------------------------------------------
The sharedresourceauditedpermissions_state element defines the different audited permissions that can be associated with a given sharedresourceauditedpermissions_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - netname  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the name associated with a particular shared resource.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).  
    * - standard_delete  
      - win-def:EntityStateAuditType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - win-def:EntityStateAuditType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - win-def:EntityStateAuditType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - win-def:EntityStateAuditType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize  
      - win-def:EntityStateAuditType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - win-def:EntityStateAuditType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - win-def:EntityStateAuditType (0..1)  
      - Read access.  
    * - generic_write  
      - win-def:EntityStateAuditType (0..1)  
      - Write access.  
    * - generic_execute  
      - win-def:EntityStateAuditType (0..1)  
      - Execute access.  
    * - generic_all  
      - win-def:EntityStateAuditType (0..1)  
      - Read, write, and execute access.  
  
.. _SharedResourceAuditedPermissionsBehaviors:  
  
== SharedResourceAuditedPermissionsBehaviors ==  
---------------------------------------------------------
The SharedResourceAuditedPermissionsBehaviors complex type defines a behavior that allows for a more detailed definition of the sharedresourceauditedpermissions_object being specified. Note that using this behavior may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
  
  
______________
  
.. _sharedresourceeffectiverights_test:  
  
< sharedresourceeffectiverights_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The shared resource effective rights test is used to check the effective rights associated with any shared resource on the system. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sharedresourceeffectiverights_object and the optional state element specifies the metadata to check.

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
  
.. _sharedresourceeffectiverights_object:  
  
< sharedresourceeffectiverights_object >  
---------------------------------------------------------
The sharedresourceeffectiverights_object element is used by a shared resource effective rights test to define the object, in this case a shared resource effective rights object, to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A shared resource effective rights object consists of a netname entity that identifies a specific shared resource and a trustee_sid entity that identifies a specific account (SID) to check the effective rights of.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:SharedResourceEffectiveRightsBehaviors (0..1)  
      -   
    * - netname  
      - oval-def:EntityObjectStringType (1..1)  
      - The netname element is the unique name that is associated with a specific shared resource.  
    * - trustee_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the file's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sharedresourceeffectiverights_state:  
  
< sharedresourceeffectiverights_state >  
---------------------------------------------------------
The sharedresourceeffectiverights_state element defines the different rights that can be associated with a given sharedresourceeffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - netname  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the name associated with a particular shared resource.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).  
    * - standard_delete  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to read the information in the object's Security Descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to modify the DACL in the object's Security Descriptor.  
    * - standard_write_owner  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to change the owner in the object's Security Descriptor.  
    * - standard_synchronize  
      - oval-def:EntityStateBoolType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - oval-def:EntityStateBoolType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - oval-def:EntityStateBoolType (0..1)  
      - Read access.  
    * - generic_write  
      - oval-def:EntityStateBoolType (0..1)  
      - Write access.  
    * - generic_execute  
      - oval-def:EntityStateBoolType (0..1)  
      - Execute access.  
    * - generic_all  
      - oval-def:EntityStateBoolType (0..1)  
      - Read, write, and execute access.  
  
.. _SharedResourceEffectiveRightsBehaviors:  
  
== SharedResourceEffectiveRightsBehaviors ==  
---------------------------------------------------------
The SharedResourceEffectiveRightsBehaviors complex type defines a behavior that allows for a more detailed definition of the sharedresourceeffectiverights_object being specified. Note that using this behavior may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group (Deprecated)  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
  
  
______________
  
.. _sid_test:  
  
< sid_test >  
---------------------------------------------------------
The SID test is used to check properties associated with the specified SID. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sid_object and the optional state element specifies the metadata to check.

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
  
.. _sid_object:  
  
< sid_object >  
---------------------------------------------------------
The sid_object element is used by a sid_test to define the object set, in this case a set of SIDs (identified by name), to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:SidBehaviors (0..1)  
      -   
    * - trustee_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sid_state:  
  
< sid_state >  
---------------------------------------------------------
The sid_state element defines the different metadata associate with a Windows trustee (identified by name). Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the trustee name associated with a particular SID. In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The security identifier (SID) of the specified trustee name.  
    * - trustee_domain  
      - oval-def:EntityStateStringType (0..1)  
      - The domain of the specified trustee name.  
  
.. _SidBehaviors:  
  
== SidBehaviors ==  
---------------------------------------------------------
The SidBehaviors complex type defines a number of behaviors that allow a more detailed definition of the sid_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
    * - resolve_group  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _sid_sid_test:  
  
< sid_sid_test >  
---------------------------------------------------------
The sid_sid_test is used to check properties associated with the specified SID. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sid_sid_object and the optional state element specifies the metadata to check.

Note that this sid_sid test was added in version 5.4 as a temporary fix. There is a need within the community to identify things like users and groups by both the name and the SID. For version 6 of OVAL, work is underway for a better solution to the problem, but for now, a second test was added to satisfy the need.

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
  
.. _sid_sid_object:  
  
< sid_sid_object >  
---------------------------------------------------------
The sid_sid_object element is used by a sid_sid_test to define the object set, in this case a set of SIDs, to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:SidSidBehaviors (0..1)  
      -   
    * - trustee_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service).  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sid_sid_state:  
  
< sid_sid_state >  
---------------------------------------------------------
The sid_state element defines the different metadata associate with a Windows trustee (identified by SID). Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The security identifier (SID) of the specified trustee name.  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - This element specifies the trustee name associated with a particular SID. In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - trustee_domain  
      - oval-def:EntityStateStringType (0..1)  
      - The domain of the specified trustee name.  
  
.. _SidSidBehaviors:  
  
== SidSidBehaviors ==  
---------------------------------------------------------
The SidSidBehaviors complex type defines a number of behaviors that allow a more detailed definition of the sid_sid_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_group  
      - xsd:boolean (optional *default*='true')  
      - 'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
    * - resolve_group  
      - xsd:boolean (optional *default*='false')  
      - The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
  
______________
  
.. _systemmetric_test:  
  
< systemmetric_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The system metric test is used to check the value of a particular Windows system metric. Access to this information is exposed by the GetSystemMetrics function in User32.dll.

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
  
.. _systemmetric_object:  
  
< systemmetric_object >  
---------------------------------------------------------
The system metric object element is used by a system metric test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - index  
      - win-def:EntityObjectSystemMetricIndexType (1..1)  
      - The index entity provides the system metric index value that is desired.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _systemmetric_state:  
  
< systemmetric_state >  
---------------------------------------------------------
The system metric state element defines the different information that can be found in a Windows system metric value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - index  
      - win-def:EntityStateSystemMetricIndexType (0..1)  
      - The index entity corresponds to the systemmetric_object index entity.  
    * - value  
      - oval-def:EntityStateIntType (0..1)  
      - The optional value entity provides the value of the system metric that is expected.  
  
______________
  
.. _uac_test:  
  
< uac_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The user access control test is used to check setting related to User Access Control within Windows. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a uaac_object and the optional state element specifies the metadata to check.

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
  
.. _uac_object:  
  
< uac_object >  
---------------------------------------------------------
The uac_object element is used by a user access control test to define those objects to evaluate based on a specified state. There is actually only one object relating to user access control and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check user access control settings will reference the same uac_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _uac_state:  
  
< uac_state >  
---------------------------------------------------------
The uac_state element specifies the different settings that are available under User Access Control. A user access control test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - admin_approval_mode  
      - oval-def:EntityStateBoolType (0..1)  
      - Admin Approval Mode for the Built-in Administrator account.  
    * - elevation_prompt_admin  
      - oval-def:EntityStateStringType (0..1)  
      - Behavior of the elevation prompt for administrators in Admin Approval Mode.  
    * - elevation_prompt_standard  
      - oval-def:EntityStateStringType (0..1)  
      - Behavior of the elevation prompt for standard users.  
    * - detect_installations  
      - oval-def:EntityStateBoolType (0..1)  
      - Detect application installations and prompt for elevation.  
    * - elevate_signed_executables  
      - oval-def:EntityStateBoolType (0..1)  
      - Only elevate executables that are signed and validated.  
    * - elevate_uiaccess  
      - oval-def:EntityStateBoolType (0..1)  
      - Only elevate UIAccess applications that are installed in secure locations.  
    * - run_admins_aam  
      - oval-def:EntityStateBoolType (0..1)  
      - Run all administrators in Admin Approval Mode.  
    * - secure_desktop  
      - oval-def:EntityStateBoolType (0..1)  
      - Switch to the secure desktop when prompting for elevation.  
    * - virtualize_write_failures  
      - oval-def:EntityStateBoolType (0..1)  
      - Virtualize file and registry write failures to per-user locations.  
  
______________
  
.. _user_test:  
  
< user_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the user_sid55_test. This test uses trustee names for identifying accounts on the system. Trustee names are not unique and the user_sid55_test, which uses trustee SIDs which are unique, should be used instead. See the user_sid55_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The user_test is used to check information about Windows users. When the user_test collects the users on the system, it should only include the local and built-in user accounts and not domain user accounts. However, it is important to note that domain user accounts can still be looked up. Also, note that the collection of groups, for which a user is a member, is not recursive. The only groups that will be collected are those for which the user is a direct member. For example, if a user is a member of group A, and group A is a member of group B, the only group that will be collected is group A. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a user_object and the optional state element specifies the metadata to check.

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
  
.. _user_object:  
  
< user_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the user_sid55_object. This object uses trustee names for identifying accounts on the system. Trustee names are not unique and the user_sid55_object, which uses trustee SIDs which are unique, should be used instead. See the user_sid55_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - user  
      - oval-def:EntityObjectStringType (1..1)  
      - The user entity holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name". For built-in accounts on the system, use the user name without a domain.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _user_state:  
  
< user_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.11  
* Reason: Replaced by the user_sid55_state. This state uses trustee names for identifying accounts on the system. Trustee names are not unique and the user_sid55_state, which uses trustee SIDs which are unique, should be used instead. See the user_sid55_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The user_state element enumerates the different groups (identified by name) that a Windows user might belong to. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - user  
      - oval-def:EntityStateStringType (0..1)  
      - The user entity holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name". For built-in accounts on the system, use the user name without a domain.  
    * - enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - This element holds a boolean value that specifies whether the particular user account is enabled or not.  
    * - group  
      - oval-def:EntityStateStringType (0..1)  
      - A string that represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.The group element can be included multiple times in a system characteristic item in order to record that a user can be a member of a number of different groups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like group that refer to items that can occur an unbounded number of times.  
    * - last_logon  
      - oval-def:EntityStateIntType (0..1)  
      - The date and time when the last logon occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, GMT. If the target system is a domain controller, this data is maintained separately on each backup domain controller (BDC) in the domain. To obtain an accurate value, you must query each BDC in the domain. The last logoff occurred at the time indicated by the largest retrieved value.  
    * - full_name  
      - oval-def:EntityStateStringType (0..1)  
      - A string that contains the full name of the user.  
    * - comment  
      - oval-def:EntityStateStringType (0..1)  
      - A string that contains a comment to associate with the user account.  
    * - password_age_days  
      - oval-def:EntityStateIntType (0..1)  
      - The number of days that have elapsed since the password was last changed. This data should be rounded down to the nearest integer (floor function).  
    * - lockout  
      - oval-def:EntityStateBoolType (0..1)  
      - The account is currently locked out.  
    * - passwd_notreqd  
      - oval-def:EntityStateBoolType (0..1)  
      - No password is required.  
    * - dont_expire_passwd  
      - oval-def:EntityStateBoolType (0..1)  
      - The password should never expire on the account.  
    * - encrypted_text_password_allowed  
      - oval-def:EntityStateBoolType (0..1)  
      - The user's password is stored under reversible encryption in the Active Directory.  
    * - not_delegated  
      - oval-def:EntityStateBoolType (0..1)  
      - Marks the account as "sensitive"; other users cannot act as delegates of this user account.  
    * - use_des_key_only  
      - oval-def:EntityStateBoolType (0..1)  
      - Restrict this principal to use only Data Encryption Standard (DES) encryption types for keys.  
    * - dont_require_preauth  
      - oval-def:EntityStateBoolType (0..1)  
      - This account does not require Kerberos preauthentication for logon.  
    * - password_expired  
      - oval-def:EntityStateBoolType (0..1)  
      - The password expiration information. Zero if the password has not expired (and nonzero if it has).  
    * - smartcard_required  
      - oval-def:EntityStateBoolType (0..1)  
      - Requires the user to log on to the user account with a smart card.  
    * - trusted_for_delegation  
      - oval-def:EntityStateBoolType (0..1)  
      - The account is enabled for delegation. This is a security-sensitive setting; accounts with this option enabled should be tightly controlled. This setting allows a service running under the account to assume a client's identity and authenticate as that user to other remote servers on the network.  
    * - trusted_to_authenticate_for_delegation  
      - oval-def:EntityStateBoolType (0..1)  
      - The account is trusted to authenticate a user outside of the Kerberos security package and delegate that user through constrained delegation. This is a security-sensitive setting; accounts with this option enabled should be tightly controlled. This setting allows a service running under the account to assert a client's identity and authenticate as that user to specifically configured services on the network. Windows 2000: This value is not supported.  
  
______________
  
.. _user_sid55_test:  
  
< user_sid55_test >  
---------------------------------------------------------
The user_sid55_test is used to check information about Windows users. When the user_sid55_test collects the user SIDs on the system, it should only include the local and built-in user SIDs and not domain user SIDs. However, it is important to note that domain user SIDs can still be looked up. Also, note that the collection of groups, for which a user is a member, is not recursive. The only groups that will be collected are those for which the user is a direct member. For example, if a user is a member of group A, and group A is a member of group B, the only group that will be collected is group A. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a user_sid55_object and the optional state element specifies the metadata to check.

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
  
.. _user_sid55_object:  
  
< user_sid55_object >  
---------------------------------------------------------
The user_sid55_object represents a set of users on a Windows system. This set (which might contain only one user) is identified by a SID.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - user_sid  
      - oval-def:EntityObjectStringType (1..1)  
      - The user_sid entity holds a string that represents the SID of a particular user.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _user_sid55_state:  
  
< user_sid55_state >  
---------------------------------------------------------
The user_sid55_state element enumerates the different groups (identified by SID) that a Windows user might belong to. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - user_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The user_sid entity holds a string that represents the SID of a particular user.  
    * - enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - This element holds a boolean value that specifies whether the particular user account is enabled or not.  
    * - group_sid  
      - oval-def:EntityStateStringType (0..1)  
      - A string the represents the SID of a particular group. The group_sid element can be included multiple times in a system characteristic item in order to record that a user can be a member of a number of different groups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like group that refer to items that can occur an unbounded number of times.  
    * - last_logon  
      - oval-def:EntityStateIntType (0..1)  
      - The date and time when the last logon occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, GMT.  
    * - user  
      - oval-def:EntityStateStringType (0..1)  
      - A string the represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer_name\user_name". For built-in accounts on the system, use the user name without a domain.  
    * - group  
      - oval-def:EntityStateStringType (0..1)  
      - A string that represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.If the specified user belongs to more than one group, then multiple group elements should exist. If the specified user is not a member of a single group, then a single group element should exist with a status of 'does not exist'. If there is an error determining the groups that the user belongs to, then a single group element should be included with a status of 'error'.  
    * - full_name  
      - oval-def:EntityStateStringType (0..1)  
      - A string that contains the full name of the user.  
    * - comment  
      - oval-def:EntityStateStringType (0..1)  
      - A string that contains a comment to associate with the user account.  
    * - password_age_days  
      - oval-def:EntityStateIntType (0..1)  
      - The number of full days that have elapsed since the password was last changed. This data should be rounded down to the nearest integer, (floor function).  
  
______________
  
.. _user_sid_test:  
  
< user_sid_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Replaced by the user_sid55_test. This test uses user and group elements that are incorrectly named. A new test was created to change the element names to their correct values which are user_sid and group_sid. See the user_sid55_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The user_sid_test is used to check information about Windows users. When the user_sid_test collects the user SIDs on the system, it should only include the local and built-in user SIDs and not domain user SIDs. However, it is important to note that domain user SIDs can still be looked up. Also, note that the collection of groups, for which a user is a member, is not recursive. The only groups that will be collected are those for which the user is a direct member. For example, if a user is a member of group A, and group A is a member of group B, the only group that will be collected is group A. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a user_sid_object and the optional state element specifies the metadata to check.

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
  
.. _user_sid_object:  
  
< user_sid_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Replaced by the user_sid55_object. This object uses a user element that is incorrectly named. A new object was created to change the element name to its correct value which is user_sid. See the user_sid55_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The user_sid_object represents a set of users on a Windows system. This set (which might contain only one user) is identified by a SID.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - user  
      - oval-def:EntityObjectStringType (1..1)  
      - The user_sid entity holds a string that represents the SID of a particular user.  
  
.. _user_sid_state:  
  
< user_sid_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Replaced by the user_sid55_state. This state uses user and group elements that are incorrectly named. A new state was created to change the element names to their correct values which are user_sid and group_sid. See the user_sid55_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The user_sid_state element enumerates the different groups (identified by SID) that a Windows user might belong to. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - user  
      - oval-def:EntityStateStringType (0..1)  
      - The user_sid entity holds a string that represents the SID of a particular user.  
    * - enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - This element holds a boolean value that specifies whether the particular user account is enabled or not.  
    * - group  
      - oval-def:EntityStateStringType (0..1)  
      - A string the represents the SID of a particular group. The group_sid element can be included multiple times in a system characteristic item in order to record that a user can be a member of a number of different groups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like group that refer to items that can occur an unbounded number of times.  
  
______________
  
.. _userright_test:  
  
< userright_test >  
---------------------------------------------------------
The userright_test is used to enumerate all of the trustees/SIDs that have been granted a specific user right/privilege.

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
  
.. _userright_object:  
  
< userright_object >  
---------------------------------------------------------
The userright_object is used to collect the trustees/SIDs that have been granted a specific user right/privilege.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - userright  
      - win-def:EntityObjectUserRightType (1..1)  
      - The userright entity holds a string that represents the name of a particular user right/privilege.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _userright_state:  
  
< userright_state >  
---------------------------------------------------------
**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - userright  
      - win-def:EntityStateUserRightType (0..1)  
      - The userright entity holds a string that represents the name of a particular user right/privilege.  
    * - trustee_name  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_name entity is the unique name associated with the SID that has been granted the specified user right/privilege. A trustee can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - trustee_sid  
      - oval-def:EntityStateStringType (0..1)  
      - The trustee_sid entity identifies the SID that has been granted the specified user right/privilege.  
  
______________
  
.. _appcmd_test:  
  
< appcmd_test >  
---------------------------------------------------------
The appcmd_test is one of two tests used to gather Microsoft Internet Information Server (IIS) configuration settings. It is used to gather Apppool, Site, and VDir settings. The second of the two tests is appcmdlistconfig_test which is used to gather Webserver, Site, and VDir settings. Note Webserver and Application Pool (Apppool) data gathering are limited to one of the two tests respectively. Whereas certain website (Site) and virtual directory (VDir) data gathering are found in both or either test. In test content development certain data gathering attempts for Site or VDir could only be done utilizing one test or the other. Meaning to be able capture larger sets of Site or VDir data both tests may be needed to gather all data.

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
  
.. _appcmd_object:  
  
< appcmd_object >  
---------------------------------------------------------
The appcmd_object is used to gather Apppool, Site, and VDir IIS settings.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - identifier_type  
      - win-def:EntityObjectAppCmdIdentifierType (1..1)  
      - The identifier_type defines the identifier type (Apppool, Site, or VDir).  
    * - identifier  
      - oval-def:EntityObjectStringType (1..1)  
      - The identifier defines information about the location of the found result (apppool name, vdir name or site name).  
    * - parameter  
      - oval-def:EntityObjectStringType (1..1)  
      - The parameter value defines the location of the setting.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _appcmd_state:  
  
< appcmd_state >  
---------------------------------------------------------
**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - identifier_type  
      - win-def:EntityStateAppCmdIdentifierType (0..1)  
      - The identifier_type defines the identifier type (Apppool, Site, or VDir).  
    * - identifier  
      - oval-def:EntityStateStringType (0..1)  
      - The identifier defines information about the location of the found result (such as apppool name or site name).  
    * - parameter  
      - oval-def:EntityStateStringType (0..1)  
      - The parameter value defines the location of the setting.  
    * - result  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the collected setting.  
  
______________
  
.. _appcmdlistconfig_test:  
  
< appcmdlistconfig_test >  
---------------------------------------------------------
The appcmdlistconfig_test is one of two tests used to gather Microsoft Internet Information Server (IIS) configuration settings. It is used to gather Webserver, Site, and VDir settings. The second of the two tests is appcmd_test which is used to gather Apppool, Site, and VDir settings. Note Webserver and Application Pool (Apppool) data gathering are limited to one of the two tests respectively. Whereas certain website (Site) and virtual directory (VDir) data gathering are found in both or either test. In test content development certain data gathering attempts for Site or VDir could only be done utilizing one test or the other. Meaning to be able capture larger sets of Site or VDir data both tests may be needed to gather all data.

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
  
.. _appcmdlistconfig_object:  
  
< appcmdlistconfig_object >  
---------------------------------------------------------
The appcmdlistconfig_object is used to gather Webserver, Site, and VDir IIS settings.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - identifier_type  
      - win-def:EntityObjectAppCmdListConfigIdentifierType (1..1)  
      - The identifier_type defines the identifier type (Webserver, Site, or VDir).  
    * - identifier  
      - oval-def:EntityObjectStringType (1..1)  
      - The identifier defines the location of the found result (vdir name or site name). If the xsi:nil attribute is set to true, the identifier element is not used and the identifier_type must be set to Webserver. xsi:nil attribute should not be set to true if the identifier_type is set to Site or VDir.  
    * - section  
      - oval-def:EntityObjectStringType (1..1)  
      - The section value defines the section which contains the parameter.  
    * - parameter  
      - oval-def:EntityObjectStringType (1..1)  
      - The parameter value defines the location of the configuration setting.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _appcmdlistconfig_state:  
  
< appcmdlistconfig_state >  
---------------------------------------------------------
**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - identifier_type  
      - win-def:EntityStateAppCmdListConfigIdentifierType (0..1)  
      - The identifier_type defines the identifier type (Webserver, Site, or VDir).  
    * - identifier  
      - oval-def:EntityStateStringType (0..1)  
      - The identifier defines the location of the found result (vdir name or site name). If the identifier_type is set to Webserver, the identifier is not populated.  
    * - section  
      - oval-def:EntityStateStringType (0..1)  
      - The section value defines the section which contains the parameter.  
    * - parameter  
      - oval-def:EntityStateStringType (0..1)  
      - The parameter value defines the location of the configuration setting.  
    * - result  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the collected setting.  
  
______________
  
.. _volume_test:  
  
< volume_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The volume_test is used to check information about different storage volumes found on a Windows system. This includes the various system flags returned by GetVolumeInformation(). It is important to note that these system flags are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a volume_object and the optional state element specifies the metadata to check.

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
  
.. _volume_object:  
  
< volume_object >  
---------------------------------------------------------
The volume_object element is used by a volume test to define the specific volume(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A volume object defines the rootpath of the volume(s).

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - rootpath  
      - oval-def:EntityObjectStringType (1..1)  
      - A string that contains the root directory of the volume to be described. A trailing backslash is required. For example, you would specify \\MyServer\MyShare as "\\MyServer\MyShare\", or the C drive as "C:\".  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _volume_state:  
  
< volume_state >  
---------------------------------------------------------
The volume_state element defines the different metadata associate with a storage volume in Windows. This includes the rootpath, the file system type, name, and serial number, as well as any associated flags. Please refer to the individual elements in the schema for more details about what each represents. The GetVolumeInformation function as defined by Microsoft is also a good place to look for information.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - rootpath  
      - oval-def:EntityStateStringType (0..1)  
      - A string that contains the root directory of the volume to be described. A trailing backslash is required. For example, you would specify \\MyServer\MyShare as "\\MyServer\MyShare\", or the C drive as "C:\".  
    * - file_system  
      - oval-def:EntityStateStringType (0..1)  
      - The type of filesystem. For example FAT or NTFS.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the volume.  
    * - drive_type  
      - win-def:EntityStateDriveTypeType (0..1)  
      - The drive type of the volume.  
    * - volume_max_component_length  
      - oval-def:EntityStateIntType (0..1)  
      - The volume_max_component_length element specifies the maximum length, in TCHARs, of a file name component that a specified file system supports. A file name component is the portion of a file name between backslashes. The value that is stored in the variable that *lpMaximumComponentLength points to is used to indicate that a specified file system supports long names. For example, for a FAT file system that supports long names, the function stores the value 255, rather than the previous 8.3 indicator. Long names can also be supported on systems that use the NTFS file system.  
    * - serial_number  
      - oval-def:EntityStateIntType (0..1)  
      - The volume serial number.  
    * - file_case_sensitive_search  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports case-sensitive file names.  
    * - file_case_preserved_names  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system preserves the case of file names when it places a name on disk.  
    * - file_unicode_on_disk  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports Unicode in file names as they appear on disk.  
    * - file_persistent_acls  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system preserves and enforces ACLs. For example, NTFS preserves and enforces ACLs, and FAT does not.  
    * - file_file_compression  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports file-based compression.  
    * - file_volume_quotas  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports disk quotas.  
    * - file_supports_sparse_files  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports sparse files.  
    * - file_supports_reparse_points  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports reparse points.  
    * - file_supports_remote_storage  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports remote storage.  
    * - file_volume_is_compressed  
      - oval-def:EntityStateBoolType (0..1)  
      - The specified volume is a compressed volume; for example, a DoubleSpace volume.  
    * - file_supports_object_ids  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports object identifiers.  
    * - file_supports_encryption  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports the Encrypted File System (EFS).  
    * - file_named_streams  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports named streams.  
    * - file_read_only_volume  
      - oval-def:EntityStateBoolType (0..1)  
      - The specified volume is read-only.  
    * - file_sequential_write_once  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports one time writes in sequential order.  
    * - file_supports_transactions  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports transaction processing.  
    * - file_supports_hard_links  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports direct links to other devices and partitions.  
    * - file_supports_extended_attributes  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports extended attributes.  
    * - file_supports_open_by_file_id  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports fileID.  
    * - file_supports_usn_journal  
      - oval-def:EntityStateBoolType (0..1)  
      - The file system supports update sequence number journals.  
  
______________
  
.. _wmi_test:  
  
< wmi_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.7  
* Reason: Replaced by the wmi57_test. This test only allows for single fields to be selected from WMI. A new test was created to allow more than one field to be selected in one statement. See the wmi57_test.  
* Comment: This test has been deprecated and may be removed in a future version of the language.  
  
The wmi test is used to check information accessed by WMI. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wmi_object and the optional state element specifies the metadata to check.

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
  
.. _wmi_object:  
  
< wmi_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.7  
* Reason: Replaced by the wmi57_object. This object allows for single fields to be selected from WMI. A new object was created to allow more than one field to be selected in one statement. See the wmi57_object.  
* Comment: This object has been deprecated and may be removed in a future version of the language.  
  


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - namespace  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies which WMI namespace to look under. Each WMI provider normally registers its own WMI namespace and then all its classes within that namespace. For example, all Win32 WMI classes can be found in the namespace "root\cimv2", all IIS WMI classes can be found at "root\microsoftiisv2", and all LDAP WMI classes can be found at "root\directory\ldap".  
    * - wql  
      - oval-def:EntityObjectStringType (1..1)  
      - A WQL query used to identify the object(s) to test against. Any valid WQL query is usable with one exception, at most one field is allowed in the SELECT portion of the query. For example SELECT name FROM ... is valid, as is SELECT 'true' FROM ..., but SELECT name, number FROM ... is not valid. This is because the result element in the data section is only designed to work against a single field.  
  
.. _wmi_state:  
  
< wmi_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.7  
* Reason: Replaced by the wmi57_state. This object allows for single fields to be selected from WMI. A new state was created to allow more than one field to be selected in one statement. See the wmi57_state.  
* Comment: This state has been deprecated and may be removed in a future version of the language.  
  


**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - namespace  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies which WMI namespace to look under. Each WMI provider normally registers its own WMI namespace and then all its classes within that namespace. For example, all Win32 WMI classes can be found in the namespace "root\cimv2", all IIS WMI classes can be found at "root\microsoftiisv2", and all LDAP WMI classes can be found at "root\directory\ldap".  
    * - wql  
      - oval-def:EntityStateStringType (0..1)  
      - A WQL query used to identify the object(s) to test against. Any valid WQL query is usable with one exception, at most one field is allowed in the SELECT portion of the query. For example SELECT name FROM ... is valid, as is SELECT 'true' FROM ..., but SELECT name, number FROM ... is not valid. This is because the result element in the data section is only designed to work against a single field.  
    * - result  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The result element specifies how to test objects in the result set of the specified WQL statement. Only one comparable field is allowed. So if the WQL statement look like 'SELECT name FROM ...', then a result element with a value of 'Fred' would test that value against the names returned by the WQL statement.  
  
______________
  
.. _wmi57_test:  
  
< wmi57_test >  
---------------------------------------------------------
The wmi57 test is used to check information accessed by WMI. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wmi57_object and the optional state element specifies the metadata to check.

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
  
.. _wmi57_object:  
  
< wmi57_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - namespace  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies which WMI namespace to look under. Each WMI provider normally registers its own WMI namespace and then all its classes within that namespace. For example, all Win32 WMI classes can be found in the namespace "root\cimv2", all IIS WMI classes can be found at "root\microsoftiisv2", and all LDAP WMI classes can be found at "root\directory\ldap".  
    * - wql  
      - oval-def:EntityObjectStringType (1..1)  
      - A WQL query used to identify the object(s) to test against. Any valid WQL query is usable with one exception, all fields must be named in the SELECT portion of the query. For example SELECT name, age FROM ... is valid. However, SELECT * FROM ... is not valid. This is because the record element in the state and item require a unique field name value to ensure that any query results can be evaluated consistently.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _wmi57_state:  
  
< wmi57_state >  
---------------------------------------------------------


**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - namespace  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies which WMI namespace to look under. Each WMI provider normally registers its own WMI namespace and then all its classes within that namespace. For example, all Win32 WMI classes can be found in the namespace "root\cimv2", all IIS WMI classes can be found at "root\microsoftiisv2", and all LDAP WMI classes can be found at "root\directory\ldap".  
    * - wql  
      - oval-def:EntityStateStringType (0..1)  
      - A WQL query used to identify the object(s) to test against. Any valid WQL query is usable with one exception, all fields must be named in the SELECT portion of the query. For example SELECT name, age FROM ... is valid. However, SELECT * FROM ... is not valid. This is because the record element in the state and item require a unique field name value to ensure that any query results can be evaluated consistantly.  
    * - result  
      - oval-def:EntityStateRecordType (0..1)  
      - The result element specifies how to test items in the result set of the specified WQL statement.  
  
______________
  
.. _wuaupdatesearcher_test:  
  
< wuaupdatesearcher_test >  
---------------------------------------------------------
The wuaupdatesearcher_test is used to evaluate patch level in a Windows environment utilizing the WUA (Windows Update Agent) interface. It is based on the Search method of the IUpdateSearcher interface found in the WUA API. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wuaupdatesearcher_object and the optional state element specifies the metadata to check.

Note that WUA can work off of many different sources including WSUS, update.microsoft.com, and a local cab file. The content source is specific to a given system evaluating a wuaupdatesearcher_test and thus is not defined by this test. The tool being used for evaluation should determine what content source is best for the system being assessed and then evaluate this test based on that selection.

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
  
.. _wuaupdatesearcher_object:  
  
< wuaupdatesearcher_object >  
---------------------------------------------------------
The wuaupdatesearcher_object element is used by a wuaupdatesearcher_test to define the specific search criteria to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - win-def:WuaUpdateSearcherBehaviors (0..1)  
      -   
    * - search_criteria  
      - oval-def:EntityObjectStringType (1..1)  
      - The search_criteria entity specifies a search criteria to use when generating a search result. The string used for the search criteria entity must match the custom search language for Search method of the IUpdateSearcher interface. The string consists of criteria that are evaluated to determine which updates to return. The Search method performs a synchronous search for updates by using the current configured search options. For more information about possible search criteria, please see the Search method of the IUpdateSearcher interface.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _wuaupdatesearcher_state:  
  
< wuaupdatesearcher_state >  
---------------------------------------------------------
The wuaupdatesearcher_state element defines entities that can be tested related to a uaupdatesearcher_object. This includes the search criteria and updated id. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - search_criteria  
      - oval-def:EntityStateStringType (0..1)  
      - The search_criteria entity specifies a string to examine the search criteria that was used to generate the object set. Note that since this entity is part of the state, it is not used to determine the object set, but rather is used to test the search criteria that was actually used.  
    * - update_id  
      - oval-def:EntityStateStringType (0..1)  
      - The update_id enity specifies a string that represents a revision-independent identifier of an update. This information is part of the IUpdateIdentity interface that is part of the result of the IUpdateSearcher interface's Search method.  
    * - title  
      - oval-def:EntityStateStringType (0..1)  
      - The title entity is the short text provided from Micrsoft related to the update ID  
    * - support_url  
      - oval-def:EntityStateStringType (0..1)  
      - The support entity is the URL provideded by Microsoft related to this update ID  
    * - is_installed  
      - oval-def:EntityStateBoolType (0..1)  
      - The IsInstalled entity is the URL provided by Microsoft related to this update ID  
    * - is_hidden  
      - oval-def:EntityStateBoolType (0..1)  
      - The IsHidden entity is the URL provided by Microsoft related to this update ID  
    * - msrc_severity  
      - oval-def:EntityStateStringType (0..1)  
      - The Microsoft Security Response Center (MSRC) rating provided by Microsoft related to this update ID, includes 'Critical', 'Important', 'Moderate', 'Low', 'Unspecified', ''  
    * - last_deployment_change_time  
      - xsd:date (0..1)  
      - The last published date of the update, provided by Microsoft related to this update ID  
    * - source  
      - win-def:EntityStateWuaSourceType (0..1)  
      - Where the update information was obtained.  
    * - days_since_source_modified  
      - oval-def:EntityStateIntType (0..1)  
      - The number of days since the wsusscn2.cab file was last modified, rounded down to the nearest integer (floor function). If the source was Windows Update or WSUS, this value should be set to 0.  
  
.. _WuaUpdateSearcherBehaviors:  
  
== WuaUpdateSearcherBehaviors ==  
---------------------------------------------------------
The WuaUpdateSearcherBehaviors complex type defines behaviors that allow a more detailed definition of the wuaupdatesearcher_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_superseded_updates  
      - xsd:boolean (optional *default*='true')  
      - 'include_superseded_updates' is a boolean flag that when set to true indicates that the search results should include updates that are superseded by other updates in the search results. When set to 'false' superseded updates should be excluded from the set of matching update items. The default value is 'true'.  
  
  
.. _EntityStateWuaSourceType:  
  
== EntityStateWuaSourceType ==  
---------------------------------------------------------
The EntityStateWuaSourceType restricts a string value to a specific set of values: Windows_Update, WSUS and Offline_Cab_File

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Windows_Update  
      - | Indicates the source for the wuaupdatesearcher_item is from Windows Update via the Internet  
    * - WSUS  
      - | Indicates the source for the wuaupdatesearcher_item is from an Intranet WSUS server  
    * - Offline_Cab_File  
      - | Indicates the source for the wuaupdatesearcher_item is from wsusscn2.cab file download from Microsoft  
  
______________
  
.. _EntityStateAddrTypeType:  
  
== EntityStateAddrTypeType ==  
---------------------------------------------------------
The EntityStateAddrTypeType complex type restricts a string value to a specific set of values that describe address types associated with an interface. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - MIB_IPADDR_DELETED  
      - | The stated IP address is being deleted. The unsigned short value that this corresponds to is 0x0040  
    * - MIB_IPADDR_DISCONNECTED  
      - | The stated IP address is on a disconnected interface. The unsigned short value that this corresponds to is 0x0008.  
    * - MIB_IPADDR_DYNAMIC  
      - | The stated IP address is a dynamic IP address. The unsigned short value that this corresponds to is 0x0004.  
    * - MIB_IPADDR_PRIMARY  
      - | The stated IP address is a primary IP address. The unsigned short value that this corresponds to is 0x0001.  
    * - MIB_IPADDR_TRANSIENT  
      - | The stated IP address is a transient IP address. The unsigned short value that this corresponds to is 0x0080  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateAdstypeType:  
  
== EntityStateAdstypeType ==  
---------------------------------------------------------
The EntityStateAdstypeType complex type restricts a string value to a specific set of values that specify the different types of information that an active directory attribute can represents. For more information look at the ADSTYPEENUM enumeration defined by Microsoft. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ADSTYPE_INVALID  
      - | The data type is invalid.  
    * - ADSTYPE_DN_STRING  
      - | The string is of Distinguished Name (path) of a directory service object.  
    * - ADSTYPE_CASE_EXACT_STRING  
      - | The string is of the case-sensitive type.  
    * - ADSTYPE_CASE_IGNORE_STRING  
      - | The string is of the case-insensitive type.  
    * - ADSTYPE_PRINTABLE_STRING  
      - | The string is displayable on the screen or in print.  
    * - ADSTYPE_NUMERIC_STRING  
      - | The string is of a numeric value to be interpreted as text.  
    * - ADSTYPE_BOOLEAN  
      - | The data is of a Boolean value.  
    * - ADSTYPE_INTEGER  
      - | The data is of an integer value.  
    * - ADSTYPE_OCTET_STRING  
      - | The string is of a byte array.  
    * - ADSTYPE_UTC_TIME  
      - | The data is of the universal time as expressed in Universal Time Coordinate (UTC).  
    * - ADSTYPE_LARGE_INTEGER  
      - | The data is of a long integer value.  
    * - ADSTYPE_PROV_SPECIFIC  
      - | The string is of a provider-specific string.  
    * - ADSTYPE_OBJECT_CLASS  
      - | Not used.  
    * - ADSTYPE_CASEIGNORE_LIST  
      - | The data is of a list of case insensitive strings.  
    * - ADSTYPE_OCTET_LIST  
      - | The data is of a list of octet strings.  
    * - ADSTYPE_PATH  
      - | The string is of a directory path.  
    * - ADSTYPE_POSTALADDRESS  
      - | The string is of the postal address type.  
    * - ADSTYPE_TIMESTAMP  
      - | The data is of a time stamp in seconds.  
    * - ADSTYPE_BACKLINK  
      - | The string is of a back link.  
    * - ADSTYPE_TYPEDNAME  
      - | The string is of a typed name.  
    * - ADSTYPE_HOLD  
      - | The data is of the Hold data structure.  
    * - ADSTYPE_NETADDRESS  
      - | The string is of a net address.  
    * - ADSTYPE_REPLICAPOINTER  
      - | The data is of a replica pointer.  
    * - ADSTYPE_FAXNUMBER  
      - | The string is of a fax number.  
    * - ADSTYPE_EMAIL  
      - | The data is of an e-mail message.  
    * - ADSTYPE_NT_SECURITY_DESCRIPTOR  
      - | The data is of Windows NT/Windows 2000 Security Descriptor as represented by a byte array.  
    * - ADSTYPE_UNKNOWN  
      - | The data is of an undefined type.  
    * - ADSTYPE_DN_WITH_BINARY  
      - | The data is of ADS_DN_WITH_BINARY used for mapping a distinguished name to a non varying GUID.  
    * - ADSTYPE_DN_WITH_STRING  
      - | The data is of ADS_DN_WITH_STRING used for mapping a distinguished name to a non-varying string value.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateAuditType:  
  
== EntityStateAuditType ==  
---------------------------------------------------------
The EntityStateAuditType complex type restricts a string value to a specific set of values: AUDIT_NONE, AUDIT_SUCCESS, AUDIT_FAILURE, and AUDIT_SUCCESS_FAILURE. These values describe which audit records should be generated. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - AUDIT_FAILURE  
      - | The audit type AUDIT_FAILURE is used to perform audits on all unsuccessful occurrences of specified events when auditing is enabled.  
    * - AUDIT_NONE  
      - | The audit type AUDIT_NONE is used to cancel all auditing options for the specified events.  
    * - AUDIT_SUCCESS  
      - | The audit type AUDIT_SUCCESS is used to perform audits on all successful occurrences of the specified events when auditing is enabled.  
    * - AUDIT_SUCCESS_FAILURE  
      - | The audit type AUDIT_SUCCESS_FAILURE is used to perform audits on all successful and unsuccessful occurrences of the specified events when auditing is enabled.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateDriveTypeType:  
  
== EntityStateDriveTypeType ==  
---------------------------------------------------------
The EntityStateDriveTypeType complex type defines the different values that are valid for the drive_type entity of a win-def:volume_state. Note that the Windows API returns a UINT value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the drive_type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - DRIVE_UNKNOWN  
      - | The DRIVE_UNKNOWN type means that drive type cannot be determined. The UINT value that this corresponds to is 0.  
    * - DRIVE_NO_ROOT_DIR  
      - | The DRIVE_NO_ROOT_DIR type means that the root path is not valid. The UINT value that this corresponds to is 1.  
    * - DRIVE_REMOVABLE  
      - | The DRIVE_REMOVABLE type means that the drive contains removable media. The UINT value that this corresponds to is 2.  
    * - DRIVE_FIXED  
      - | The DRIVE_FIXED type means that the drive contains fixed media. The UINT value that this corresponds to is 3.  
    * - DRIVE_REMOTE  
      - | The DRIVE_REMOTE type means that the drive is a remote drive (i.e. network drive). The UINT value that this corresponds to is 4.  
    * - DRIVE_CDROM  
      - | The DRIVE_CDROM type means that the drive is a CD-ROM drive. The UINT value that this corresponds to is 5.  
    * - DRIVE_RAMDISK  
      - | The DRIVE_RAMDISK type means that the drive is a RAM disk. The UINT value that this corresponds to is 6.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateInterfaceTypeType:  
  
== EntityStateInterfaceTypeType ==  
---------------------------------------------------------
The EntityStateInterfaceTypeType complex type restricts a string value to a specific set of values. These values describe the different interface types. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - MIB_IF_TYPE_ETHERNET  
      - | The MIB_IF_TYPE_ETHERNET type is used to describe ethernet interfaces.  
    * - MIB_IF_TYPE_FDDI  
      - | The MIB_IF_TYPE_FDDI type is used to describe fiber distributed data interfaces (FDDI).  
    * - MIB_IF_TYPE_LOOPBACK  
      - | The MIB_IF_TYPE_LOOPBACK type is used to describe loopback interfaces.  
    * - MIB_IF_TYPE_OTHER  
      - | The MIB_IF_TYPE_OTHER type is used to describe unknown interfaces.  
    * - MIB_IF_TYPE_PPP  
      - | The MIB_IF_TYPE_PPP type is used to describe point-to-point protocol interfaces (PPP).  
    * - MIB_IF_TYPE_SLIP  
      - | The MIB_IF_TYPE_SLIP type is used to describe serial line internet protocol interfaces (SLIP).  
    * - MIB_IF_TYPE_TOKENRING  
      - | The MIB_IF_TYPE_TOKENRING type is used to describe token ring interfaces..  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateFileTypeType:  
  
== EntityStateFileTypeType ==  
---------------------------------------------------------
The EntityStateFileTypeType complex type restricts a string value to a specific set of values. These values describe the type of file being represented. For more information see the GetFileType and GetFileAttributesEx functions as defined by Microsoft. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - FILE_ATTRIBUTE_DIRECTORY (Deprecated)  
      - | The handle identifies a directory.  
        | **Deprecated As Of Version:** 5.11.1:1.2  
        | **Reason:** In version 5.11.1:1.2 of the OVAL Language windows schema, a file_attributes entity was added to the file_state, obviating the need to overload this attribute with the file-type enumeration.  
        | **Comment:** This value has been deprecated and will be removed in version 6.0 of the language.  
    * - FILE_TYPE_CHAR  
      - | The specified file is a character file, typically an LPT device or a console.  
    * - FILE_TYPE_DISK  
      - | The specified file is a disk file.  
    * - FILE_TYPE_PIPE  
      - | The specified file is a socket, a named pipe, or an anonymous pipe.  
    * - FILE_TYPE_REMOTE  
      - | Unused.  
    * - FILE_TYPE_UNKNOWN  
      - | Either the type of the specified file is unknown, or the function failed.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateFileAttributeType:  
  
== EntityStateFileAttributeType ==  
---------------------------------------------------------
The EntityStateFileAttributeType complex type restricts a string value to a specific set of values. These values describe the Windows file attribute being represented. For more information see the GetFileAttributes and GetFileAttributesEx functions as defined by Microsoft. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - FILE_ATTRIBUTE_ARCHIVE  
      - | A file or directory that is an archive file or directory. Applications typically use this attribute to mark files for backup or removal.  
    * - FILE_ATTRIBUTE_COMPRESSED  
      - | A file or directory that is compressed. For a file, all of the data in the file is compressed. For a directory, compression is the default for newly created files and subdirectories.  
    * - FILE_ATTRIBUTE_DEVICE  
      - | This value is reserved for system use.  
    * - FILE_ATTRIBUTE_DIRECTORY  
      - | The handle that identifies a directory.  
    * - FILE_ATTRIBUTE_ENCRYPTED  
      - | A file or directory that is encrypted. For a file, all data streams in the file are encrypted. For a directory, encryption is the default for newly created files and subdirectories.  
    * - FILE_ATTRIBUTE_HIDDEN  
      - | The file or directory is hidden. It is not included in an ordinary directory listing.  
    * - FILE_ATTRIBUTE_INTEGRITY_STREAM  
      - | The directory or user data stream is configured with integrity (only supported on ReFS volumes). It is not included in an ordinary directory listing. The integrity setting persists with the file if it's renamed. If a file is copied the destination file will have integrity set if either the source file or destination directory have integrity set.Windows Server 2008 R2, Windows 7, Windows Server 2008, Windows Vista, Windows Server 2003, and Windows XP: This flag is not supported until Windows Server 2012.  
    * - FILE_ATTRIBUTE_NORMAL  
      - | A file that does not have other attributes set. This attribute is valid only when used alone.  
    * - FILE_ATTRIBUTE_NOT_CONTENT_INDEXED  
      - | The file or directory is not to be indexed by the content indexing service.  
    * - FILE_ATTRIBUTE_NO_SCRUB_DATA  
      - | The user data stream not to be read by the background data integrity scanner (AKA scrubber). When set on a directory it only provides inheritance. This flag is only supported on Storage Spaces and ReFS volumes. It is not included in an ordinary directory listing.Windows Server 2008 R2, Windows 7, Windows Server 2008, Windows Vista, Windows Server 2003, and Windows XP: This flag is not supported until Windows 8 and Windows Server 2012.  
    * - FILE_ATTRIBUTE_OFFLINE  
      - | The data of a file is not available immediately. This attribute indicates that the file data is physically moved to offline storage. This attribute is used by Remote Storage, which is the hierarchical storage management software. Applications should not arbitrarily change this attribute.  
    * - FILE_ATTRIBUTE_READONLY  
      - | A file that is read-only. Applications can read the file, but cannot write to it or delete it. This attribute is not honored on directories.  
    * - FILE_ATTRIBUTE_REPARSE_POINT  
      - | A file or directory that has an associated reparse point, or a file that is a symbolic link.  
    * - FILE_ATTRIBUTE_SPARSE_FILE  
      - | A file that is a sparse file.  
    * - FILE_ATTRIBUTE_SYSTEM  
      - | A file or directory that the operating system uses a part of, or uses exclusively.  
    * - FILE_ATTRIBUTE_TEMPORARY  
      - | A file that is being used for temporary storage. File systems avoid writing data back to mass storage if sufficient cache memory is available, because typically, an application deletes a temporary file after the handle is closed. In that scenario, the system can entirely avoid writing the data. Otherwise, the data is written after the handle is closed.  
    * - FILE_ATTRIBUTE_VIRTUAL  
      - | This value is reserved for system use.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectNamingContextType:  
  
== EntityObjectNamingContextType ==  
---------------------------------------------------------
The EntityObjectNamingContextType restricts a string value to a specific set of values: domain, configuration, and schema. These values describe the different default naming context found in active directory. A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - domain  
      - | The domain naming context contains Active Directory objects present in the specified domain (e.g. users, computers, groups, and other objects).  
    * - configuration  
      - | The configuration naming context contains configuration data that is required for the Active Directory to operate as a directory service.  
    * - schema  
      - | The schema naming context contains all of the Active Directory object definitions.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateNamingContextType:  
  
== EntityStateNamingContextType ==  
---------------------------------------------------------
The EntityStateNamingContextType restricts a string value to a specific set of values: domain, configuration, and schema. These values describe the different default naming context found in active directory. A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - domain  
      - | The domain naming context contains Active Directory objects present in the specified domain (e.g. users, computers, groups, and other objects).  
    * - configuration  
      - | The configuration naming context contains configuration data that is required for the Active Directory to operate as a directory service.  
    * - schema  
      - | The schema naming context contains all of the Active Directory object definitions.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateNTUserAccountTypeType:  
  
== EntityStateNTUserAccountTypeType ==  
---------------------------------------------------------
The EntityStateNTUserAccountTypeType restricts a string value to a specific set of values that describe the different types of accounts. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - local  
      - | Local accounts are accounts that were created directly on the machine being tested and should be in the form of machinename\username  
    * - domain  
      - | Domain accounts are accounts that were created on a domain controller and should be in the form of domain\username  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStatePeTargetMachineType:  
  
== EntityStatePeTargetMachineType ==  
---------------------------------------------------------
The EntityStatePeTargetMachineType enumeration identifies the valid machine targets that can be specified in the PE file header. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IMAGE_FILE_MACHINE_UNKNOWN  
      - | The IMAGE_FILE_MACHINE_UNKNOWN type is used to indicate an unknown machine.  
    * - IMAGE_FILE_MACHINE_ALPHA  
      - | The IMAGE_FILE_MACHINE_ALPHA type is used to indicate an Alpha APX machine.  
    * - IMAGE_FILE_MACHINE_ARM  
      - | The IMAGE_FILE_MACHINE_ARM type is used to indicate an ARM little endian machine.  
    * - IMAGE_FILE_MACHINE_ALPHA64  
      - | The IMAGE_FILE_MACHINE_ALPHA64 type is used to indicate an 64-bit Alpha APX machine.  
    * - IMAGE_FILE_MACHINE_I386  
      - | The IMAGE_FILE_MACHINE_I386 type is used to indicate an Intel 386 machine.  
    * - IMAGE_FILE_MACHINE_IA64  
      - | The IMAGE_FILE_MACHINE_IA64 type is used to indicate an Intel Itanium machine.  
    * - IMAGE_FILE_MACHINE_M68K  
      - | The IMAGE_FILE_MACHINE_M68K type is used to indicate an M68K machine.  
    * - IMAGE_FILE_MACHINE_MIPS16  
      - | The IMAGE_FILE_MACHINE_MIPS16 type is used to indicate a MIPS16 machine.  
    * - IMAGE_FILE_MACHINE_MIPSFPU  
      - | The IMAGE_FILE_MACHINE_MIPSFPU type is used to indicate an MIPS machine with FPU.  
    * - IMAGE_FILE_MACHINE_MIPSFPU16  
      - | The IMAGE_FILE_MACHINE_MIPSFPU16 type is used to indicate a MIPS16 machine with FPU.  
    * - IMAGE_FILE_MACHINE_POWERPC  
      - | The IMAGE_FILE_MACHINE_POWERPC type is used to indicate an Power PC little endian machine.  
    * - IMAGE_FILE_MACHINE_R3000  
      - | The IMAGE_FILE_MACHINE_R3000 type is used to indicate a MIPS little endian, 0x160 big endian machine.  
    * - IMAGE_FILE_MACHINE_R4000  
      - | The IMAGE_FILE_MACHINE_R4000 type is used to indicate a MIPS little endian machine.  
    * - IMAGE_FILE_MACHINE_R10000  
      - | The IMAGE_FILE_MACHINE_R10000 type is used to indicate a MIPS little endian machine.  
    * - IMAGE_FILE_MACHINE_SH3  
      - | The IMAGE_FILE_MACHINE_SH3 type is used to indicate a Hitachi SH3 machine.  
    * - IMAGE_FILE_MACHINE_SH4  
      - | The IMAGE_FILE_MACHINE_SH4 type is used to indicate a Hitachi SH4 machine.  
    * - IMAGE_FILE_MACHINE_THUMB  
      - | The IMAGE_FILE_MACHINE_THUMB type is used to indicate an ARM or Thumb ("interworking") machine.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStatePeSubsystemType:  
  
== EntityStatePeSubsystemType ==  
---------------------------------------------------------
The EntityStatePeSubsystemType enumeration identifies the valid subsystem types that can be specified in the PE file header. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IMAGE_SUBSYSTEM_UNKNOWN  
      - | The IMAGE_SUBSYSTEM_UNKNOWN type is used to indicate an unknown subsystem.  
    * - IMAGE_SUBSYSTEM_NATIVE  
      - | The IMAGE_SUBSYSTEM_NATIVE type is used to indicate that no subsystem is required.  
    * - IMAGE_SUBSYSTEM_WINDOWS_GUI  
      - | The IMAGE_SUBSYSTEM_WINDOWS_GUI type is used to indicate a Windows graphical user interface (GUI) subsystem.  
    * - IMAGE_SUBSYSTEM_WINDOWS_CUI  
      - | The IMAGE_SUBSYSTEM_WINDOWS_CUI type is used to indicate a Windows character-mode user interface (CUI) subsystem.  
    * - IMAGE_SUBSYSTEM_OS2_CUI  
      - | The IMAGE_SUBSYSTEM_OS2_CUI type is used to indicate an OS/2 CUI subsystem.  
    * - IMAGE_SUBSYSTEM_POSIX_CUI  
      - | The IMAGE_SUBSYSTEM_POSIX_CUI type is used to indicate a POSIX CUI subsystem.  
    * - IMAGE_SUBSYSTEM_WINDOWS_CE_GUI  
      - | The IMAGE_SUBSYSTEM_WINDOWS_CE_GUI type is used to indicate a Windows CE system.  
    * - IMAGE_SUBSYSTEM_EFI_APPLICATION  
      - | The IMAGE_SUBSYSTEM_EFI_APPLICATION type is used to indicate an Extensible Firmware Interface (EFI) application.  
    * - IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER  
      - | The IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER type is used to indicate a EFI driver with boot services.  
    * - IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER  
      - | The IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER type is used to indicate a EFI driver with run-time services subsystem.  
    * - IMAGE_SUBSYSTEM_EFI_ROM  
      - | The IMAGE_SUBSYSTEM_EFI_ROM type is used to indicate an EFI ROM image.  
    * - IMAGE_SUBSYSTEM_XBOX  
      - | The IMAGE_SUBSYSTEM_XBOX type is used to indicate an Xbox system.  
    * - IMAGE_SUBSYSTEM_WINDOWS_BOOT_APPLICATION  
      - | The IMAGE_SUBSYSTEM_WINDOWS_BOOT_APPLICATION type is used to indicate a boot application.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectProtocolType:  
  
== EntityObjectProtocolType ==  
---------------------------------------------------------
The EntityObjectProtocolType restricts a string value to a specific set of values: TCP and UDP. These values describe the different protocols available to a port. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - TCP  
      - | The port uses the Transmission Control Protocol (TCP).  
    * - UDP  
      - | The port uses the User Datagram Protocol (UDP).  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateProtocolType:  
  
== EntityStateProtocolType ==  
---------------------------------------------------------
The EntityStateProtocolType restricts a string value to a specific set of values: TCP and UDP. These values describe the different protocols available to a port. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - TCP  
      - | The port uses the Transmission Control Protocol (TCP).  
    * - UDP  
      - | The port uses the User Datagram Protocol (UDP).  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectRegistryHiveType:  
  
== EntityObjectRegistryHiveType ==  
---------------------------------------------------------
The EntityObjectRegistryHiveType restricts a string value to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS, HKEY_LOCAL_MACHINE, and HKEY_USERS. These values describe the possible hives in the registry. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - HKEY_CLASSES_ROOT  
      - | This registry subtree contains information that associates file types with programs and configuration data for automation (e.g. COM objects and Visual Basic Programs).  
    * - HKEY_CURRENT_CONFIG  
      - | This registry subtree contains configuration data for the current hardware profile.  
    * - HKEY_CURRENT_USER  
      - | This registry subtree contains the user profile of the user that is currently logged into the system.  
    * - HKEY_CURRENT_USER_LOCAL_SETTINGS  
      - | Registry entries subordinate to this key define preferences of the current user that are local to the machine. These entries are not included in the per-user registry portion of a roaming user profile. This key is supported starting with Windows 7 and Windows Server 2008 R2.  
    * - HKEY_LOCAL_MACHINE  
      - | This registry subtree contains information about the local system.  
    * - HKEY_USERS  
      - | This registry subtree contains user-specific data.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateRegistryHiveType:  
  
== EntityStateRegistryHiveType ==  
---------------------------------------------------------
The EntityStateRegistryHiveType restricts a string value to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_LOCAL_MACHINE, and HKEY_USERS. These values describe the possible hives in the registry. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - HKEY_CLASSES_ROOT  
      - | This registry subtree contains information that associates file types with programs and configuration data for automation (e.g. COM objects and Visual Basic Programs).  
    * - HKEY_CURRENT_CONFIG  
      - | This registry subtree contains configuration data for the current hardware profile.  
    * - HKEY_CURRENT_USER  
      - | This registry subtree contains the user profile of the user that is currently logged into the system.  
    * - HKEY_CURRENT_USER_LOCAL_SETTINGS  
      - | Registry entries subordinate to this key define preferences of the current user that are local to the machine. These entries are not included in the per-user registry portion of a roaming user profile. This key is supported starting with Windows 7 and Windows Server 2008 R2.  
    * - HKEY_LOCAL_MACHINE  
      - | This registry subtree contains information about the local system.  
    * - HKEY_USERS  
      - | This registry subtree contains user-specific data.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateRegistryTypeType:  
  
== EntityStateRegistryTypeType ==  
---------------------------------------------------------
The EntityStateRegistryTypeType complex type defines the different values that are valid for the type entity of a registry state. These values describe the possible types of data stored in a registry key. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values. Please note that the values identified are for the type entity and are not valid values for the datatype attribute. For information about how to encode registry data in OVAL for each of the different types, please visit the registry_state documentation.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - reg_binary  
      - | The reg_binary type is used by registry keys that specify binary data in any form.  
    * - reg_dword  
      - | The reg_dword type is used by registry keys that specify an unsigned 32-bit integer.  
    * - reg_dword_little_endian (Deprecated)  
      - | The reg_dword_little_endian type is used by registry keys that specify an unsigned 32-bit little-endian integer. It is designed to run on little-endian computer architectures.  
        | **Deprecated As Of Version:** 5.11.1:1.1  
        | **Reason:** Defined to have same value as reg_dword.  
        | **Comment:** This registry type enumeration value has been deprecated and may be removed in a future version of the language.  
    * - reg_dword_big_endian  
      - | The reg_dword_big_endian type is used by registry keys that specify an unsigned 32-bit big-endian integer. It is designed to run on big-endian computer architectures.  
    * - reg_expand_sz  
      - | The reg_expand_sz type is used by registry keys to specify a null-terminated string that contains unexpanded references to environment variables (for example, "%PATH%").  
    * - reg_link  
      - | The reg_link type is used by the registry keys for null-terminated unicode strings. It is related to target path of a symbolic link created by the RegCreateKeyEx function.  
    * - reg_multi_sz  
      - | The reg_multi_sz type is used by registry keys that specify an array of null-terminated strings, terminated by two null characters.  
    * - reg_none  
      - | The reg_none type is used by registry keys that have no defined value type.  
    * - reg_qword  
      - | The reg_qword type is used by registry keys that specify an unsigned 64-bit integer.  
    * - reg_qword_little_endian (Deprecated)  
      - | The reg_qword_little_endian type is used by registry keys that specify an unsigned 64-bit integer in little-endian computer architectures.  
        | **Deprecated As Of Version:** 5.11.1:1.1  
        | **Reason:** Defined to have same value as reg_qword.  
        | **Comment:** This registry type enumeration value has been deprecated and may be removed in a future version of the language.  
    * - reg_sz  
      - | The reg_sz type is used by registry keys that specify a single null-terminated string.  
    * - reg_resource_list  
      - | The reg_resource_list type is used by registry keys that specify a resource list.  
    * - reg_full_resource_descriptor  
      - | The reg_full_resource_descriptor type is used by registry keys that specify a full resource descriptor.  
    * - reg_resource_requirements_list  
      - | The reg_resource_requirements_list type is used by registry keys that specify a resource requirements list.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateServiceControlsAcceptedType:  
  
== EntityStateServiceControlsAcceptedType ==  
---------------------------------------------------------
The EntityStateServiceAcceptedControlsType complex type defines the different values that are valid for the controls_accepted entity of a service. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the controls_accepted entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - SERVICE_ACCEPT_NETBINDCHANGE  
      - | The SERVICE_ACCEPT_NETBINDCHANGE type means that the service is a network component and can accept changes in its binding without being stopped or restarted. The DWORD value that this corresponds to is 0x00000010.  
    * - SERVICE_ACCEPT_PARAMCHANGE  
      - | The SERVICE_ACCEPT_PARAMCHANGE type means that the service can re-read its startup parameters without being stopped or restarted. The DWORD value that this corresponds to is 0x00000008.  
    * - SERVICE_ACCEPT_PAUSE_CONTINUE  
      - | The SERVICE_ACCEPT_PAUSE_CONTINUE type means that the service can be paused or continued. The DWORD value that this corresponds to is 0x00000002.  
    * - SERVICE_ACCEPT_PRESHUTDOWN  
      - | The SERVICE_ACCEPT_PRESHUTDOWN type means that the service can receive pre-shutdown notifications. The DWORD value that this corresponds to is 0x00000100.  
    * - SERVICE_ACCEPT_SHUTDOWN  
      - | The SERVICE_ACCEPT_SHUTDOWN type means that the service can receive shutdown notifications. The DWORD value that this corresponds to is 0x00000004.  
    * - SERVICE_ACCEPT_STOP  
      - | The SERVICE_ACCEPT_STOP type means that the service can be stopped. The DWORD value that this corresponds to is 0x00000001.  
    * - SERVICE_ACCEPT_HARDWAREPROFILECHANGE  
      - | The SERVICE_ACCEPT_HARDWAREPROFILECHANGE type means that the service can receive notifications when the system's hardware profile changes. The DWORD value that this corresponds to is 0x00000020.  
    * - SERVICE_ACCEPT_POWEREVENT  
      - | The SERVICE_ACCEPT_POWEREVENT type means that the service can receive notifications when the system's power status has changed. The DWORD value that this corresponds to is 0x00000040.  
    * - SERVICE_ACCEPT_SESSIONCHANGE  
      - | The SERVICE_ACCEPT_SESSIONCHANGE type means that the service can receive notifications when the system's session status has changed. The DWORD value that this corresponds to is 0x00000080.  
    * - SERVICE_ACCEPT_TIMECHANGE  
      - | The SERVICE_ACCEPT_TIMECHANGE type means that the service can receive notifications when the system time changes. The DWORD value that this corresponds to is 0x00000200.  
    * - SERVICE_ACCEPT_TRIGGEREVENT  
      - | The SERVICE_ACCEPT_TRIGGEREVENT type means that the service can receive notifications when an event that the service has registered for occurs on the system. The DWORD value that this corresponds to is 0x00000400.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateServiceCurrentStateType:  
  
== EntityStateServiceCurrentStateType ==  
---------------------------------------------------------
The EntityStateServiceCurrentStateType complex type defines the different values that are valid for the current_state entity of a service. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the current_state entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - SERVICE_CONTINUE_PENDING  
      - | The SERVICE_CONTINUE_PENDING type means that the service has been sent a command to continue, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000005.  
    * - SERVICE_PAUSE_PENDING  
      - | The SERVICE_PAUSE_PENDING type means that the service has been sent a command to pause, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000006.  
    * - SERVICE_PAUSED  
      - | The SERVICE_PAUSED type means that the service is paused. The DWORD value that this corresponds to is 0x00000007.  
    * - SERVICE_RUNNING  
      - | The SERVICE_RUNNING type means that the service is running. The DWORD value that this corresponds to is 0x00000004.  
    * - SERVICE_START_PENDING  
      - | The SERVICE_START_PENDING type means that the service has been sent a command to start, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000002.  
    * - SERVICE_STOP_PENDING  
      - | The SERVICE_STOP_PENDING type means that the service has been sent a command to stop, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000003.  
    * - SERVICE_STOPPED  
      - | The SERVICE_STOPPED type means that the service is stopped. The DWORD value that this corresponds to is 0x00000001.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateServiceStartTypeType:  
  
== EntityStateServiceStartTypeType ==  
---------------------------------------------------------
The EntityStateServiceStartTypeType complex type defines the different values that are valid for the start_type entity of a service. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the start_type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - SERVICE_AUTO_START  
      - | The SERVICE_AUTO_START type means that the service is started automatically by the Service Control Manager (SCM) during startup. The DWORD value that this corresponds to is 0x00000002.  
    * - SERVICE_BOOT_START  
      - | The SERVICE_BOOT_START type means that the driver service is started by the system loader. The DWORD value that this corresponds to is 0x00000000.  
    * - SERVICE_DEMAND_START  
      - | The SERVICE_DEMAND_START type means that the service is started by the Service Control Manager (SCM) when StartService() is called. The DWORD value that this corresponds to is 0x00000003.  
    * - SERVICE_DISABLED  
      - | The SERVICE_DISABLED type means that the service cannot be started. The DWORD value that this corresponds to is 0x00000004.  
    * - SERVICE_SYSTEM_START  
      - | The SERVICE_SYSTEM_START type means that the service is a device driver started by IoInitSystem(). The DWORD value that this corresponds to is 0x00000001.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateServiceTypeType:  
  
== EntityStateServiceTypeType ==  
---------------------------------------------------------
The EntityStateServiceTypeType complex type defines the different values that are valid for the service_type entity of a service. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the service_type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - SERVICE_FILE_SYSTEM_DRIVER  
      - | The SERVICE_FILE_SYSTEM_DRIVER type means that the service is a file system driver. The DWORD value that this corresponds to is 0x00000002.  
    * - SERVICE_KERNEL_DRIVER  
      - | The SERVICE_KERNEL_DRIVER type means that the service is a driver. The DWORD value that this corresponds to is 0x00000001.  
    * - SERVICE_WIN32_OWN_PROCESS  
      - | The SERVICE_WIN32_OWN_PROCESS type means that the service runs in its own process. The DWORD value that this corresponds to is 0x00000010.  
    * - SERVICE_WIN32_SHARE_PROCESS  
      - | The SERVICE_WIN32_SHARE_PROCESS type means that the service runs in a process with other services. The DWORD value that this corresponds to is 0x00000020.  
    * - SERVICE_INTERACTIVE_PROCESS  
      - | The SERVICE_WIN32_SHARE_PROCESS type means that the service runs in a process with other services. The DWORD value that this corresponds to is 0x00000100.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateSharedResourceTypeType:  
  
== EntityStateSharedResourceTypeType ==  
---------------------------------------------------------
The EntityStateSharedResourceTypeType complex type defines the different values that are valid for the type entity of a shared resource state. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

It is also important to note that special shared resources are those reserved for remote administration, interprocess communication, and administrative shares.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - STYPE_DISKTREE  
      - | The STYPE_DISKTREE type means that the shared resource is a disk drive. The DWORD value that this corresponds to is 0x00000000.  
    * - STYPE_DISKTREE_SPECIAL  
      - | The STYPE_DISKTREE_SPECIAL type means that the shared resource is a special disk drive. The DWORD value that this corresponds to is 0x80000000.  
    * - STYPE_DISKTREE_TEMPORARY  
      - | The STYPE_DISKTREE_TEMPORARY type means that the shared resource is a temporary disk drive. The DWORD value that this corresponds to is 0x40000000.  
    * - STYPE_DISKTREE_SPECIAL_TEMPORARY  
      - | The STYPE_DISKTREE_SPECIAL_TEMPORARY type means that the shared resource is a temporary, special disk drive. The DWORD value that this corresponds to is 0xC0000000.  
    * - STYPE_PRINTQ  
      - | The STYPE_PRINTQ type means that the shared resource is a print queue. The DWORD value that this corresponds to is 0x00000001.  
    * - STYPE_PRINTQ_SPECIAL  
      - | The STYPE_PRINTQ_SPECIAL type means that the shared resource is a special print queue. The DWORD value that this corresponds to is 0x80000001.  
    * - STYPE_PRINTQ_TEMPORARY  
      - | The STYPE_PRINTQ_TEMPORARY type means that the shared resource is a temporary print queue. The DWORD value that this corresponds to is 0x40000001.  
    * - STYPE_PRINTQ_SPECIAL_TEMPORARY  
      - | The STYPE_PRINTQ_SPECIAL_TEMPORARY type means that the shared resource is a temporary, special print queue. The DWORD value that this corresponds to is 0xC0000001.  
    * - STYPE_DEVICE  
      - | The STYPE_DEVICE type means that the shared resource is a communication device. The DWORD value that this corresponds to is 0x00000002.  
    * - STYPE_DEVICE_SPECIAL  
      - | The STYPE_DEVICE_SPECIAL type means that the shared resource is a special communication device. The DWORD value that this corresponds to is 0x80000002.  
    * - STYPE_DEVICE_TEMPORARY  
      - | The STYPE_DEVICE_TEMPORARY type means that the shared resource is a temporary communication device. The DWORD value that this corresponds to is 0x40000002.  
    * - STYPE_DEVICE_SPECIAL_TEMPORARY  
      - | The STYPE_DEVICE_SPECIAL_TEMPORARY type means that the shared resource is a temporary, special communication device. The DWORD value that this corresponds to is 0xC0000002.  
    * - STYPE_IPC  
      - | The STYPE_IPC type means that the shared resource is a interprocess communication. The DWORD value that this corresponds to is 0x00000003.  
    * - STYPE_IPC_SPECIAL  
      - | The STYPE_IPC_SPECIAL type means that the shared resource is a special interprocess communication. The DWORD value that this corresponds to is 0x80000003.  
    * - STYPE_IPC_TEMPORARY  
      - | The STYPE_IPC_TEMPORARY type means that the shared resource is a temporary interprocess communication. The DWORD value that this corresponds to is 0x40000003.  
    * - STYPE_IPC_SPECIAL_TEMPORARY  
      - | The STYPE_IPC_SPECIAL_TEMPORARY type means that the shared resource is a temporary, special interprocess communication. The DWORD value that this corresponds to is 0xC0000003.  
    * - STYPE_SPECIAL (Deprecated)  
      - | The STYPE_SPECIAL type means that this is a special share reserved for interprocess communication (IPC$) or remote administration of the server (ADMIN$). Can also refer to administrative shares such as C$, D$, E$, and so forth. The DWORD value that this corresponds to is 0x40000000.  
        | **Deprecated As Of Version:** 5.6  
        | **Reason:** In version 5.6 of the OVAL Language, the EntityStateSharedResourceTypeType was changed to include all of the different shared resource types as specified in Microsoft's documentation of the shi2_type member of the SHARE_INFO_2 structure. As a result, the STYPE_SPECIAL value by itself is no longer valid because it would actually be equal to the value STYPE_DISKTREE_SPECIAL (0x80000000) which is STYPE_DISKTREE (0x00000000) OR'd with STYPE_SPECIAL (0x80000000).  
        | **Comment:** This value has been deprecated and will be removed in version 6.0 of the language.  
    * - STYPE_TEMPORARY (Deprecated)  
      - | The STYPE_TEMPORARY type means that the shared resource is a temporary share. The DWORD value that this corresponds to is 0x80000000.  
        | **Deprecated As Of Version:** 5.6  
        | **Reason:** In version 5.6 of the OVAL Language, the EntityStateSharedResourceTypeType was changed to include all of the different shared resource types as specified in Microsoft's documentation of the shi2_type member of the SHARE_INFO_2 structure. As a result, the STYPE_TEMPORARY value by itself is no longer valid because it would actually be equal to the value STYPE_DISKTREE_TEMPORARY (0x40000000) which is STYPE_DISKTREE (0x00000000) OR'd with STYPE_TEMPORARY (0x40000000).  
        | **Comment:** This value has been deprecated and will be removed in version 6.0 of the language.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectSystemMetricIndexType:  
  
== EntityObjectSystemMetricIndexType ==  
---------------------------------------------------------
The EntityObjectSystemMetricIndexType complex type defines the different values that are valid for the index entity of a system metric object. These values describe the system metric or configuration setting to be retrieved. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the index entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values. Please note that the values identified are for the index entity and are not valid values for the datatype attribute.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - SM_ARRANGE  
      - | The flags that specify how the system arranged minimized windows.  
    * - SM_CLEANBOOT  
      - | The value that specifies how the system is started.  
    * - SM_CMONITORS  
      - | The number of display monitors on a desktop.  
    * - SM_CMOUSEBUTTONS  
      - | The number of buttons on a mouse, or zero if no mouse is installed.  
    * - SM_CXBORDER  
      - | The width of a window border, in pixels. This is equivalent to the SM_CXEDGE value for windows with the 3-D look.  
    * - SM_CXCURSOR  
      - | The width of a cursor, in pixels. The system cannot create cursors of other sizes.  
    * - SM_CXDLGFRAME  
      - | This value is the same as SM_CXFIXEDFRAME.  
    * - SM_CXDOUBLECLK  
      - | The width of the rectangle around the location of a first click in a double-click sequence, in pixels.  
    * - SM_CXDRAG  
      - | The number of pixels on either side of a mouse-down point that the mouse pointer can move before a drag operation begins.  
    * - SM_CXEDGE  
      - | The width of a 3-D border, in pixels. This metric is the 3-D counterpart of SM_CXBORDER.  
    * - SM_CXFIXEDFRAME  
      - | The thickness of the frame around the perimeter of a window that has a caption but is not sizable, in pixels.  
    * - SM_CXFOCUSBORDER  
      - | The width of the left and right edges of the focus rectangle that the DrawFocusRect draws.  
    * - SM_CXFRAME  
      - | This value is the same as SM_CXSIZEFRAME.  
    * - SM_CXFULLSCREEN  
      - | The width of the client area for a full-screen window on the primary display monitor, in pixels.  
    * - SM_CXHSCROLL  
      - | The width of the arrow bitmap on a horizontal scroll bar, in pixels.  
    * - SM_CXHTHUMB  
      - | The width of the thumb box in a horizontal scroll bar, in pixels.  
    * - SM_CXICON  
      - | The default width of an icon, in pixels.  
    * - SM_CXICONSPACING  
      - | The width of a grid cell for items in large icon view, in pixels.  
    * - SM_CXMAXIMIZED  
      - | The default width, in pixels, of a maximized top-level window on the primary display monitor.  
    * - SM_CXMAXTRACK  
      - | The default maximum width of a window that has a caption and sizing borders, in pixels.  
    * - SM_CXMENUCHECK  
      - | The width of the default menu check-mark bitmap, in pixels.  
    * - SM_CXMENUSIZE  
      - | The width of menu bar buttons, such as the child window close button that is used in the multiple document interface, in pixels.  
    * - SM_CXMIN  
      - | The minimum width of a window, in pixels.  
    * - SM_CXMINIMIZED  
      - | The width of a minimized window, in pixels.  
    * - SM_CXMINSPACING  
      - | The width of a grid cell for a minimized window, in pixels.  
    * - SM_CXMINTRACK  
      - | The minimum tracking width of a window, in pixels.  
    * - SM_CXPADDEDBORDER  
      - | The amount of border padding for captioned windows, in pixels.  
    * - SM_CXSCREEN  
      - | The width of the screen of the primary display monitor, in pixels.  
    * - SM_CXSIZE  
      - | The width of a button in a window caption or title bar, in pixels.  
    * - SM_CXSIZEFRAME  
      - | The thickness of the sizing border around the perimeter of a window that can be resized, in pixels.  
    * - SM_CXSMICON  
      - | The recommended width of a small icon, in pixels.  
    * - SM_CXSMSIZE  
      - | The width of small caption buttons, in pixels.  
    * - SM_CXVIRTUALSCREEN  
      - | The width of the virtual screen, in pixels.  
    * - SM_CXVSCROLL  
      - | The width of a vertical scroll bar, in pixels.  
    * - SM_CYBORDER  
      - | The height of a window border, in pixels.  
    * - SM_CYCAPTION  
      - | The height of a caption area, in pixels.  
    * - SM_CYCURSOR  
      - | The height of a cursor, in pixels.  
    * - SM_CYDLGFRAME  
      - | This value is the same as SM_CYFIXEDFRAME.  
    * - SM_CYDOUBLECLK  
      - | The height of the rectangle around the location of a first click in a double-click sequence, in pixels.  
    * - SM_CYDRAG  
      - | The number of pixels above and below a mouse-down point that the mouse pointer can move before a drag operation begins.  
    * - SM_CYEDGE  
      - | The height of a 3-D border, in pixels. This is the 3-D counterpart of SM_CYBORDER.  
    * - SM_CYFIXEDFRAME  
      - | The thickness of the frame around the perimeter of a window that has a caption but is not sizable, in pixels.  
    * - SM_CYFOCUSBORDER  
      - | The height of the top and bottom edges of the focus rectangle drawn by DrawFocusRect. This value is in pixels.  
    * - SM_CYFRAME  
      - | This value is the same as SM_CYSIZEFRAME.  
    * - SM_CYFULLSCREEN  
      - | The height of the client area for a full-screen window on the primary display monitor, in pixels.  
    * - SM_CYHSCROLL  
      - | The height of a horizontal scroll bar, in pixels.  
    * - SM_CYICON  
      - | The default height of an icon, in pixels.  
    * - SM_CYICONSPACING  
      - | The height of a grid cell for items in large icon view, in pixels.  
    * - SM_CYKANJIWINDOW  
      - | For double byte character set versions of the system, this is the height of the Kanji window at the bottom of the screen, in pixels.  
    * - SM_CYMAXIMIZED  
      - | The default height, in pixels, of a maximized top-level window on the primary display monitor.  
    * - SM_CYMAXTRACK  
      - | The default maximum height of a window that has a caption and sizing borders, in pixels.  
    * - SM_CYMENU  
      - | The height of a single-line menu bar, in pixels.  
    * - SM_CYMENUCHECK  
      - | The height of the default menu check-mark bitmap, in pixels.  
    * - SM_CYMENUSIZE  
      - | The height of menu bar buttons, such as the child window close button that is used in the multiple document interface, in pixels.  
    * - SM_CYMIN  
      - | The minimum height of a window, in pixels.  
    * - SM_CYMINIMIZED  
      - | The height of a minimized window, in pixels.  
    * - SM_CYMINSPACING  
      - | The height of a grid cell for a minimized window, in pixels.  
    * - SM_CYMINTRACK  
      - | The minimum tracking height of a window, in pixels.  
    * - SM_CYSCREEN  
      - | The height of the screen of the primary display monitor, in pixels.  
    * - SM_CYSIZE  
      - | The height of a button in a window caption or title bar, in pixels.  
    * - SM_CYSIZEFRAME  
      - | The thickness of the sizing border around the perimeter of a window that can be resized, in pixels.  
    * - SM_CYSMCAPTION  
      - | The height of a small caption, in pixels.  
    * - SM_CYSMICON  
      - | The recommended height of a small icon, in pixels.  
    * - SM_CYSMSIZE  
      - | The height of small caption buttons, in pixels.  
    * - SM_CYVIRTUALSCREEN  
      - | The height of the virtual screen, in pixels. The virtual screen is the bounding rectangle of all display monitors.  
    * - SM_CYVSCROLL  
      - | The height of the arrow bitmap on a vertical scroll bar, in pixels.  
    * - SM_CYVTHUMB  
      - | The height of the thumb box in a vertical scroll bar, in pixels.  
    * - SM_DBCSENABLED  
      - | Nonzero if User32.dll supports DBCS; otherwise, 0.  
    * - SM_DEBUG  
      - | Nonzero if the debug version of User.exe is installed; otherwise, 0.  
    * - SM_DIGITIZER  
      - | Nonzero if the current operating system is Windows 7 or Windows Server 2008 R2 and the Tablet PC Input service is started; otherwise, 0. The return value is a bitmask that specifies the type of digitizer input supported by the device.  
    * - SM_IMMENABLED  
      - | Nonzero if Input Method Manager/Input Method Editor features are enabled; otherwise, 0.  
    * - SM_MAXIMUMTOUCHES  
      - | Nonzero if there are digitizers in the system; otherwise, 0.  
    * - SM_MEDIACENTER  
      - | Nonzero if the current operating system is the Windows XP, Media Center Edition, 0 if not.  
    * - SM_MENUDROPALIGNMENT  
      - | Nonzero if drop-down menus are right-aligned with the corresponding menu-bar item; 0 if the menus are left-aligned.  
    * - SM_MIDEASTENABLED  
      - | Nonzero if the system is enabled for Hebrew and Arabic languages, 0 if not.  
    * - SM_MOUSEPRESENT  
      - | Nonzero if a mouse is installed; otherwise, 0.  
    * - SM_MOUSEHORIZONTALWHEELPRESENT  
      - | Nonzero if a mouse with a horizontal scroll wheel is installed; otherwise 0.  
    * - SM_MOUSEWHEELPRESENT  
      - | Nonzero if a mouse with a vertical scroll wheel is installed; otherwise 0.  
    * - SM_NETWORK  
      - | The least significant bit is set if a network is present; otherwise, it is cleared.  
    * - SM_PENWINDOWS  
      - | Nonzero if the Microsoft Windows for Pen computing extensions are installed; zero otherwise.  
    * - SM_REMOTECONTROL  
      - | This system metric is used in a Terminal Services environment to determine if the current Terminal Server session is being remotely controlled. Its value is nonzero if the current session is remotely controlled; otherwise, 0.  
    * - SM_REMOTESESSION  
      - | This system metric is used in a Terminal Services environment. If the calling process is associated with a Terminal Services client session, the return value is nonzero. If the calling process is associated with the Terminal Services console session, the return value is 0.  
    * - SM_SAMEDISPLAYFORMAT  
      - | Nonzero if all the display monitors have the same color format, otherwise, 0.  
    * - SM_SECURE  
      - | This system metric should be ignored; it always returns 0.  
    * - SM_SERVERR2  
      - | The build number if the system is Windows Server 2003 R2; otherwise, 0.  
    * - SM_SHOWSOUNDS  
      - | Nonzero if the user requires an application to present information visually in situations where it would otherwise present the information only in audible form; otherwise, 0.  
    * - SM_SHUTTINGDOWN  
      - | Nonzero if the current session is shutting down; otherwise, 0.  
    * - SM_SLOWMACHINE  
      - | Nonzero if the computer has a low-end (slow) processor; otherwise, 0.  
    * - SM_STARTER  
      - | Nonzero if the current operating system is Windows 7 Starter Edition, Windows Vista Starter, or Windows XP Starter Edition; otherwise, 0.  
    * - SM_SWAPBUTTON  
      - | Nonzero if the meanings of the left and right mouse buttons are swapped; otherwise, 0.  
    * - SM_TABLETPC  
      - | Nonzero if the current operating system is the Windows XP Tablet PC edition or if the current operating system is Windows Vista or Windows 7 and the Tablet PC Input service is started; otherwise, 0.  
    * - SM_XVIRTUALSCREEN  
      - | The coordinates for the left side of the virtual screen.  
    * - SM_YVIRTUALSCREEN  
      - | The coordinates for the top of the virtual screen.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateSystemMetricIndexType:  
  
== EntityStateSystemMetricIndexType ==  
---------------------------------------------------------
The EntityStateSystemMetricIndexType complex type defines the different values that are valid for the index entity of a systemmetric_state. These values describe the system metric or configuration setting to be retrieved. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the index entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values. Please note that the values identified are for the index entity and are not valid values for the datatype attribute.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - SM_ARRANGE  
      - | The flags that specify how the system arranged minimized windows.  
    * - SM_CLEANBOOT  
      - | The value that specifies how the system is started.  
    * - SM_CMONITORS  
      - | The number of display monitors on a desktop.  
    * - SM_CMOUSEBUTTONS  
      - | The number of buttons on a mouse, or zero if no mouse is installed.  
    * - SM_CXBORDER  
      - | The width of a window border, in pixels. This is equivalent to the SM_CXEDGE value for windows with the 3-D look.  
    * - SM_CXCURSOR  
      - | The width of a cursor, in pixels. The system cannot create cursors of other sizes.  
    * - SM_CXDLGFRAME  
      - | This value is the same as SM_CXFIXEDFRAME.  
    * - SM_CXDOUBLECLK  
      - | The width of the rectangle around the location of a first click in a double-click sequence, in pixels.  
    * - SM_CXDRAG  
      - | The number of pixels on either side of a mouse-down point that the mouse pointer can move before a drag operation begins.  
    * - SM_CXEDGE  
      - | The width of a 3-D border, in pixels. This metric is the 3-D counterpart of SM_CXBORDER.  
    * - SM_CXFIXEDFRAME  
      - | The thickness of the frame around the perimeter of a window that has a caption but is not sizable, in pixels.  
    * - SM_CXFOCUSBORDER  
      - | The width of the left and right edges of the focus rectangle that the DrawFocusRect draws.  
    * - SM_CXFRAME  
      - | This value is the same as SM_CXSIZEFRAME.  
    * - SM_CXFULLSCREEN  
      - | The width of the client area for a full-screen window on the primary display monitor, in pixels.  
    * - SM_CXHSCROLL  
      - | The width of the arrow bitmap on a horizontal scroll bar, in pixels.  
    * - SM_CXHTHUMB  
      - | The width of the thumb box in a horizontal scroll bar, in pixels.  
    * - SM_CXICON  
      - | The default width of an icon, in pixels.  
    * - SM_CXICONSPACING  
      - | The width of a grid cell for items in large icon view, in pixels.  
    * - SM_CXMAXIMIZED  
      - | The default width, in pixels, of a maximized top-level window on the primary display monitor.  
    * - SM_CXMAXTRACK  
      - | The default maximum width of a window that has a caption and sizing borders, in pixels.  
    * - SM_CXMENUCHECK  
      - | The width of the default menu check-mark bitmap, in pixels.  
    * - SM_CXMENUSIZE  
      - | The width of menu bar buttons, such as the child window close button that is used in the multiple document interface, in pixels.  
    * - SM_CXMIN  
      - | The minimum width of a window, in pixels.  
    * - SM_CXMINIMIZED  
      - | The width of a minimized window, in pixels.  
    * - SM_CXMINSPACING  
      - | The width of a grid cell for a minimized window, in pixels.  
    * - SM_CXMINTRACK  
      - | The minimum tracking width of a window, in pixels.  
    * - SM_CXPADDEDBORDER  
      - | The amount of border padding for captioned windows, in pixels.  
    * - SM_CXSCREEN  
      - | The width of the screen of the primary display monitor, in pixels.  
    * - SM_CXSIZE  
      - | The width of a button in a window caption or title bar, in pixels.  
    * - SM_CXSIZEFRAME  
      - | The thickness of the sizing border around the perimeter of a window that can be resized, in pixels.  
    * - SM_CXSMICON  
      - | The recommended width of a small icon, in pixels.  
    * - SM_CXSMSIZE  
      - | The width of small caption buttons, in pixels.  
    * - SM_CXVIRTUALSCREEN  
      - | The width of the virtual screen, in pixels.  
    * - SM_CXVSCROLL  
      - | The width of a vertical scroll bar, in pixels.  
    * - SM_CYBORDER  
      - | The height of a window border, in pixels.  
    * - SM_CYCAPTION  
      - | The height of a caption area, in pixels.  
    * - SM_CYCURSOR  
      - | The height of a cursor, in pixels.  
    * - SM_CYDLGFRAME  
      - | This value is the same as SM_CYFIXEDFRAME.  
    * - SM_CYDOUBLECLK  
      - | The height of the rectangle around the location of a first click in a double-click sequence, in pixels.  
    * - SM_CYDRAG  
      - | The number of pixels above and below a mouse-down point that the mouse pointer can move before a drag operation begins.  
    * - SM_CYEDGE  
      - | The height of a 3-D border, in pixels. This is the 3-D counterpart of SM_CYBORDER.  
    * - SM_CYFIXEDFRAME  
      - | The thickness of the frame around the perimeter of a window that has a caption but is not sizable, in pixels.  
    * - SM_CYFOCUSBORDER  
      - | The height of the top and bottom edges of the focus rectangle drawn by DrawFocusRect. This value is in pixels.  
    * - SM_CYFRAME  
      - | This value is the same as SM_CYSIZEFRAME.  
    * - SM_CYFULLSCREEN  
      - | The height of the client area for a full-screen window on the primary display monitor, in pixels.  
    * - SM_CYHSCROLL  
      - | The height of a horizontal scroll bar, in pixels.  
    * - SM_CYICON  
      - | The default height of an icon, in pixels.  
    * - SM_CYICONSPACING  
      - | The height of a grid cell for items in large icon view, in pixels.  
    * - SM_CYKANJIWINDOW  
      - | For double byte character set versions of the system, this is the height of the Kanji window at the bottom of the screen, in pixels.  
    * - SM_CYMAXIMIZED  
      - | The default height, in pixels, of a maximized top-level window on the primary display monitor.  
    * - SM_CYMAXTRACK  
      - | The default maximum height of a window that has a caption and sizing borders, in pixels.  
    * - SM_CYMENU  
      - | The height of a single-line menu bar, in pixels.  
    * - SM_CYMENUCHECK  
      - | The height of the default menu check-mark bitmap, in pixels.  
    * - SM_CYMENUSIZE  
      - | The height of menu bar buttons, such as the child window close button that is used in the multiple document interface, in pixels.  
    * - SM_CYMIN  
      - | The minimum height of a window, in pixels.  
    * - SM_CYMINIMIZED  
      - | The height of a minimized window, in pixels.  
    * - SM_CYMINSPACING  
      - | The height of a grid cell for a minimized window, in pixels.  
    * - SM_CYMINTRACK  
      - | The minimum tracking height of a window, in pixels.  
    * - SM_CYSCREEN  
      - | The height of the screen of the primary display monitor, in pixels.  
    * - SM_CYSIZE  
      - | The height of a button in a window caption or title bar, in pixels.  
    * - SM_CYSIZEFRAME  
      - | The thickness of the sizing border around the perimeter of a window that can be resized, in pixels.  
    * - SM_CYSMCAPTION  
      - | The height of a small caption, in pixels.  
    * - SM_CYSMICON  
      - | The recommended height of a small icon, in pixels.  
    * - SM_CYSMSIZE  
      - | The height of small caption buttons, in pixels.  
    * - SM_CYVIRTUALSCREEN  
      - | The height of the virtual screen, in pixels. The virtual screen is the bounding rectangle of all display monitors.  
    * - SM_CYVSCROLL  
      - | The height of the arrow bitmap on a vertical scroll bar, in pixels.  
    * - SM_CYVTHUMB  
      - | The height of the thumb box in a vertical scroll bar, in pixels.  
    * - SM_DBCSENABLED  
      - | Nonzero if User32.dll supports DBCS; otherwise, 0.  
    * - SM_DEBUG  
      - | Nonzero if the debug version of User.exe is installed; otherwise, 0.  
    * - SM_DIGITIZER  
      - | Nonzero if the current operating system is Windows 7 or Windows Server 2008 R2 and the Tablet PC Input service is started; otherwise, 0. The return value is a bitmask that specifies the type of digitizer input supported by the device.  
    * - SM_IMMENABLED  
      - | Nonzero if Input Method Manager/Input Method Editor features are enabled; otherwise, 0.  
    * - SM_MAXIMUMTOUCHES  
      - | Nonzero if there are digitizers in the system; otherwise, 0.  
    * - SM_MEDIACENTER  
      - | Nonzero if the current operating system is the Windows XP, Media Center Edition, 0 if not.  
    * - SM_MENUDROPALIGNMENT  
      - | Nonzero if drop-down menus are right-aligned with the corresponding menu-bar item; 0 if the menus are left-aligned.  
    * - SM_MIDEASTENABLED  
      - | Nonzero if the system is enabled for Hebrew and Arabic languages, 0 if not.  
    * - SM_MOUSEPRESENT  
      - | Nonzero if a mouse is installed; otherwise, 0.  
    * - SM_MOUSEHORIZONTALWHEELPRESENT  
      - | Nonzero if a mouse with a horizontal scroll wheel is installed; otherwise 0.  
    * - SM_MOUSEWHEELPRESENT  
      - | Nonzero if a mouse with a vertical scroll wheel is installed; otherwise 0.  
    * - SM_NETWORK  
      - | The least significant bit is set if a network is present; otherwise, it is cleared.  
    * - SM_PENWINDOWS  
      - | Nonzero if the Microsoft Windows for Pen computing extensions are installed; zero otherwise.  
    * - SM_REMOTECONTROL  
      - | This system metric is used in a Terminal Services environment to determine if the current Terminal Server session is being remotely controlled. Its value is nonzero if the current session is remotely controlled; otherwise, 0.  
    * - SM_REMOTESESSION  
      - | This system metric is used in a Terminal Services environment. If the calling process is associated with a Terminal Services client session, the return value is nonzero. If the calling process is associated with the Terminal Services console session, the return value is 0.  
    * - SM_SAMEDISPLAYFORMAT  
      - | Nonzero if all the display monitors have the same color format, otherwise, 0.  
    * - SM_SECURE  
      - | This system metric should be ignored; it always returns 0.  
    * - SM_SERVERR2  
      - | The build number if the system is Windows Server 2003 R2; otherwise, 0.  
    * - SM_SHOWSOUNDS  
      - | Nonzero if the user requires an application to present information visually in situations where it would otherwise present the information only in audible form; otherwise, 0.  
    * - SM_SHUTTINGDOWN  
      - | Nonzero if the current session is shutting down; otherwise, 0.  
    * - SM_SLOWMACHINE  
      - | Nonzero if the computer has a low-end (slow) processor; otherwise, 0.  
    * - SM_STARTER  
      - | Nonzero if the current operating system is Windows 7 Starter Edition, Windows Vista Starter, or Windows XP Starter Edition; otherwise, 0.  
    * - SM_SWAPBUTTON  
      - | Nonzero if the meanings of the left and right mouse buttons are swapped; otherwise, 0.  
    * - SM_TABLETPC  
      - | Nonzero if the current operating system is the Windows XP Tablet PC edition or if the current operating system is Windows Vista or Windows 7 and the Tablet PC Input service is started; otherwise, 0.  
    * - SM_XVIRTUALSCREEN  
      - | The coordinates for the left side of the virtual screen.  
    * - SM_YVIRTUALSCREEN  
      - | The coordinates for the top of the virtual screen.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectGUIDType:  
  
== EntityObjectGUIDType ==  
---------------------------------------------------------
The EntityObjectGUIDType restricts a string value to a representation of a GUID, used for module ID. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** oval-def:EntityObjectStringType

**Pattern:** (\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}){0,}

.. _EntityStateGUIDType:  
  
== EntityStateGUIDType ==  
---------------------------------------------------------
The EntityStateGUIDType restricts a string value to a representation of a GUID, used for module ID. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** oval-def:EntityStateStringType

**Pattern:** (\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}){0,}

.. _EntityObjectCmdletVerbType:  
  
== EntityObjectCmdletVerbType ==  
---------------------------------------------------------
The EntityObjectCmdletVerbType restricts a string value to a set of allow cmdlet verbs. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Approve  
      - | The Approve verb confirms or agrees to the status of a resource or process.  
    * - Assert  
      - | The Assert verb affirms the state of a resource.  
    * - Compare  
      - | The Compare verb evaluates the data from one resource against the data from another resource.  
    * - Confirm  
      - | The Confirm verb acknowledges, verifies, or validates, the state of a resource or process.  
    * - Find  
      - | The Find verb looks for an object in a container that is unknown, implied, optional, or specified.  
    * - Get  
      - | The Get verb specifies an action that retrieves a resource.  
    * - Import  
      - | The Import verb creates a resource from data that is stored in a persistent data store (such as a file) or in an interchange format.  
    * - Measure  
      - | The Measure verb identifies resources that are consumed by a specified operation, or retrieves statistics about a resource.  
    * - Read  
      - | The Read verb acquires information from a source.  
    * - Request  
      - | The Request verb asks for a resource or asks for permissions.  
    * - Resolve  
      - | The Resolve verb maps a shorthand representation of a resource to a more complete representation.  
    * - Search  
      - | The Search verb creates a reference to a resource in a container.  
    * - Select  
      - | The Select verb locates a resource in a container.  
    * - Show  
      - | The Show verb makes a resource visible to the user.  
    * - Test  
      - | The Test verb verifies the operation or consistency of a resource.  
    * - Trace  
      - | The Trace verb tracks the activities of a resource.  
    * - Watch  
      - | The Watch verb continually inspects or monitors a resource for changes.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateAppCmdIdentifierType:  
  
== EntityStateAppCmdIdentifierType ==  
---------------------------------------------------------
The EntityStateAppCmdIdentifierType restricts a string value to a set of allowed appcmd objects.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Site  
      - | Administration of virtual sites  
    * - VDir  
      - | Administration of virtual directories  
    * - Apppool  
      - | Administration of application pools  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectAppCmdIdentifierType:  
  
== EntityObjectAppCmdIdentifierType ==  
---------------------------------------------------------
The EntityObjectAppCmdIdentifierType restricts a string value to a set of allowed appcmd objects.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Site  
      - | Administration of virtual sites  
    * - VDir  
      - | Administration of virtual directories  
    * - Apppool  
      - | Administration of application pools  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateAppCmdListConfigIdentifierType:  
  
== EntityStateAppCmdListConfigIdentifierType ==  
---------------------------------------------------------
The EntityStateAppCmdListConfigIdentifierType restricts a string value to a set of allowed appcmd objects.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Site  
      - | Administration of virtual sites  
    * - VDir  
      - | Administration of virtual directories  
    * - Webserver  
      - | Server level configuration  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectAppCmdListConfigIdentifierType:  
  
== EntityObjectAppCmdListConfigIdentifierType ==  
---------------------------------------------------------
The EntityObjectAppCmdListConfigIdentifierType restricts a string value to a set of allowed appcmd objects.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Site  
      - | Administration of virtual sites  
    * - VDir  
      - | Administration of virtual directories  
    * - Webserver  
      - | Server level configuration  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateCmdletVerbType:  
  
== EntityStateCmdletVerbType ==  
---------------------------------------------------------
The EntityStateCmdletVerbType restricts a string value to a set of allow cmdlet verbs. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Approve  
      - | The Approve verb confirms or agrees to the status of a resource or process.  
    * - Assert  
      - | The Assert verb affirms the state of a resource.  
    * - Compare  
      - | The Compare verb evaluates the data from one resource against the data from another resource.  
    * - Confirm  
      - | The Confirm verb acknowledges, verifies, or validates, the state of a resource or process.  
    * - Find  
      - | The Find verb looks for an object in a container that is unknown, implied, optional, or specified.  
    * - Get  
      - | The Get verb specifies an action that retrieves a resource.  
    * - Import  
      - | The Import verb creates a resource from data that is stored in a persistent data store (such as a file) or in an interchange format.  
    * - Measure  
      - | The Measure verb identifies resources that are consumed by a specified operation, or retrieves statistics about a resource.  
    * - Read  
      - | The Read verb acquires information from a source.  
    * - Request  
      - | The Request verb asks for a resource or asks for permissions.  
    * - Resolve  
      - | The Resolve verb maps a shorthand representation of a resource to a more complete representation.  
    * - Search  
      - | The Search verb creates a reference to a resource in a container.  
    * - Select  
      - | The Select verb locates a resource in a container.  
    * - Show  
      - | The Show verb makes a resource visible to the user.  
    * - Test  
      - | The Test verb verifies the operation or consistency of a resource.  
    * - Trace  
      - | The Trace verb tracks the activities of a resource.  
    * - Watch  
      - | The Watch verb continually inspects or monitors a resource for changes.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateWindowsViewType:  
  
== EntityStateWindowsViewType ==  
---------------------------------------------------------
The EntityStateWindowsViewType restricts a string value to a specific set of values: 32-bit and 64-bit. These values describe the different values possible for the windows view behavior.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - 32_bit  
      - | Indicates the 32_bit windows view.  
    * - 64_bit  
      - | Indicates the 64_bit windows view.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectUserRightType:  
  
== EntityObjectUserRightType ==  
---------------------------------------------------------
The EntityObjectUserRightType restricts a string value to a specific set of values that describe the different user rights/privileges. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - SE_ASSIGNPRIMARYTOKEN_NAME  
      - | This privilege is required to assign the primary token of a process.  
    * - SE_AUDIT_NAME  
      - | This privilege is required to generate audit-log entries.  
    * - SE_BACKUP_NAME  
      - | This privilege is required to perform backup operations.  
    * - SE_CHANGE_NOTIFY_NAME  
      - | This privilege is required to receive notifications of changes to files or directories.  
    * - SE_CREATE_GLOBAL_NAME  
      - | This privilege is required to create named file mapping objects in the global namespace during Terminal Services sessions.  
    * - SE_CREATE_PAGEFILE_NAME  
      - | This privilege is required to create a paging file.  
    * - SE_CREATE_PERMANENT_NAME  
      - | This privilege is required to create a permanent object.  
    * - SE_CREATE_SYMBOLIC_LINK_NAME  
      - | This privilege is required to create a symbolic link.  
    * - SE_CREATE_TOKEN_NAME  
      - | This privilege is required to create a primary token.  
    * - SE_DEBUG_NAME  
      - | This privilege is required to debug and adjust the memory of a process owned by another account.  
    * - SE_ENABLE_DELEGATION_NAME  
      - | This privilege is required to mark user and computer accounts as trusted for delegation.  
    * - SE_IMPERSONATE_NAME  
      - | This privilege is required to impersonate.  
    * - SE_INC_BASE_PRIORITY_NAME  
      - | This privilege is required to increase the base priority of a process.  
    * - SE_INCREASE_QUOTA_NAME  
      - | This privilege is required to increase the quota assigned to a process.  
    * - SE_INC_WORKING_SET_NAME  
      - | This privilege is required to allocate more memory for applications that run in the context of users.  
    * - SE_LOAD_DRIVER_NAME  
      - | This privilege is required to load or unload a device driver.  
    * - SE_LOCK_MEMORY_NAME  
      - | This privilege is required to lock physical pages in memory.  
    * - SE_MACHINE_ACCOUNT_NAME  
      - | This privilege is required to create a computer account.  
    * - SE_MANAGE_VOLUME_NAME  
      - | This privilege is required to enable volume management privileges.  
    * - SE_PROF_SINGLE_PROCESS_NAME  
      - | This privilege is required to gather profiling information for a single process.  
    * - SE_RELABEL_NAME  
      - | This privilege is required to modify the mandatory integrity level of an object.  
    * - SE_REMOTE_SHUTDOWN_NAME  
      - | This privilege is required to shut down a system using a network request.  
    * - SE_RESTORE_NAME  
      - | This privilege is required to perform restore operations.  
    * - SE_SECURITY_NAME  
      - | This privilege is required to perform a number of security-related functions, such as controlling and viewing audit messages.  
    * - SE_SHUTDOWN_NAME  
      - | This privilege is required to shut down a local system.  
    * - SE_SYNC_AGENT_NAME  
      - | This privilege is required for a domain controller to use the Lightweight Directory Access Protocol directory synchronization services.  
    * - SE_SYSTEM_ENVIRONMENT_NAME  
      - | This privilege is required to modify the nonvolatile RAM of systems that use this type of memory to store configuration information.  
    * - SE_SYSTEM_PROFILE_NAME  
      - | This privilege is required to gather profiling information for the entire system.  
    * - SE_SYSTEMTIME_NAME  
      - | This privilege is required to modify the system time.  
    * - SE_TAKE_OWNERSHIP_NAME  
      - | This privilege is required to take ownership of an object without being granted discretionary access.  
    * - SE_TCB_NAME  
      - | This privilege identifies its holder as part of the trusted computer base.  
    * - SE_TIME_ZONE_NAME  
      - | This privilege is required to adjust the time zone associated with the computer's internal clock.  
    * - SE_TRUSTED_CREDMAN_ACCESS_NAME  
      - | This privilege is required to access Credential Manager as a trusted caller.  
    * - SE_UNDOCK_NAME  
      - | This privilege is required to undock a laptop.  
    * - SE_UNSOLICITED_INPUT_NAME  
      - | This privilege is required to read unsolicited input from a terminal device.  
    * - SE_BATCH_LOGON_NAME  
      - | This account right is required for an account to log on using the batch logon type.  
    * - SE_DENY_BATCH_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on using the batch logon type.  
    * - SE_DENY_INTERACTIVE_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on using the interactive logon type.  
    * - SE_DENY_NETWORK_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on using the network logon type.  
    * - SE_DENY_REMOTE_INTERACTIVE_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on remotely using the interactive logon type.  
    * - SE_DENY_SERVICE_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on using the service logon type.  
    * - SE_INTERACTIVE_LOGON_NAME  
      - | This account right is required for an account to log on using the interactive logon type.  
    * - SE_NETWORK_LOGON_NAME  
      - | This account right is required for an account to log on using the network logon type.  
    * - SE_REMOTE_INTERACTIVE_LOGON_NAME  
      - | This account right is required for an account to log on remotely using the interactive logon type.  
    * - SE_SERVICE_LOGON_NAME  
      - | This account right is required for an account to log on using the service logon type.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateUserRightType:  
  
== EntityStateUserRightType ==  
---------------------------------------------------------
The EntityStateUserRightType restricts a string value to a specific set of values that describe the different user rights/privileges. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - SE_ASSIGNPRIMARYTOKEN_NAME  
      - | This privilege is required to assign the primary token of a process.  
    * - SE_AUDIT_NAME  
      - | This privilege is required to generate audit-log entries.  
    * - SE_BACKUP_NAME  
      - | This privilege is required to perform backup operations.  
    * - SE_CHANGE_NOTIFY_NAME  
      - | This privilege is required to receive notifications of changes to files or directories.  
    * - SE_CREATE_GLOBAL_NAME  
      - | This privilege is required to create named file mapping objects in the global namespace during Terminal Services sessions.  
    * - SE_CREATE_PAGEFILE_NAME  
      - | This privilege is required to create a paging file.  
    * - SE_CREATE_PERMANENT_NAME  
      - | This privilege is required to create a permanent object.  
    * - SE_CREATE_SYMBOLIC_LINK_NAME  
      - | This privilege is required to create a symbolic link.  
    * - SE_CREATE_TOKEN_NAME  
      - | This privilege is required to create a primary token.  
    * - SE_DEBUG_NAME  
      - | This privilege is required to debug and adjust the memory of a process owned by another account.  
    * - SE_ENABLE_DELEGATION_NAME  
      - | This privilege is required to mark user and computer accounts as trusted for delegation.  
    * - SE_IMPERSONATE_NAME  
      - | This privilege is required to impersonate.  
    * - SE_INC_BASE_PRIORITY_NAME  
      - | This privilege is required to increase the base priority of a process.  
    * - SE_INCREASE_QUOTA_NAME  
      - | This privilege is required to increase the quota assigned to a process.  
    * - SE_INC_WORKING_SET_NAME  
      - | This privilege is required to allocate more memory for applications that run in the context of users.  
    * - SE_LOAD_DRIVER_NAME  
      - | This privilege is required to load or unload a device driver.  
    * - SE_LOCK_MEMORY_NAME  
      - | This privilege is required to lock physical pages in memory.  
    * - SE_MACHINE_ACCOUNT_NAME  
      - | This privilege is required to create a computer account.  
    * - SE_MANAGE_VOLUME_NAME  
      - | This privilege is required to enable volume management privileges.  
    * - SE_PROF_SINGLE_PROCESS_NAME  
      - | This privilege is required to gather profiling information for a single process.  
    * - SE_RELABEL_NAME  
      - | This privilege is required to modify the mandatory integrity level of an object.  
    * - SE_REMOTE_SHUTDOWN_NAME  
      - | This privilege is required to shut down a system using a network request.  
    * - SE_RESTORE_NAME  
      - | This privilege is required to perform restore operations.  
    * - SE_SECURITY_NAME  
      - | This privilege is required to perform a number of security-related functions, such as controlling and viewing audit messages.  
    * - SE_SHUTDOWN_NAME  
      - | This privilege is required to shut down a local system.  
    * - SE_SYNC_AGENT_NAME  
      - | This privilege is required for a domain controller to use the Lightweight Directory Access Protocol directory synchronization services.  
    * - SE_SYSTEM_ENVIRONMENT_NAME  
      - | This privilege is required to modify the nonvolatile RAM of systems that use this type of memory to store configuration information.  
    * - SE_SYSTEM_PROFILE_NAME  
      - | This privilege is required to gather profiling information for the entire system.  
    * - SE_SYSTEMTIME_NAME  
      - | This privilege is required to modify the system time.  
    * - SE_TAKE_OWNERSHIP_NAME  
      - | This privilege is required to take ownership of an object without being granted discretionary access.  
    * - SE_TCB_NAME  
      - | This privilege identifies its holder as part of the trusted computer base.  
    * - SE_TIME_ZONE_NAME  
      - | This privilege is required to adjust the time zone associated with the computer's internal clock.  
    * - SE_TRUSTED_CREDMAN_ACCESS_NAME  
      - | This privilege is required to access Credential Manager as a trusted caller.  
    * - SE_UNDOCK_NAME  
      - | This privilege is required to undock a laptop.  
    * - SE_UNSOLICITED_INPUT_NAME  
      - | This privilege is required to read unsolicited input from a terminal device.  
    * - SE_BATCH_LOGON_NAME  
      - | This account right is required for an account to log on using the batch logon type.  
    * - SE_DENY_BATCH_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on using the batch logon type.  
    * - SE_DENY_INTERACTIVE_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on using the interactive logon type.  
    * - SE_DENY_NETWORK_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on using the network logon type.  
    * - SE_DENY_REMOTE_INTERACTIVE_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on remotely using the interactive logon type.  
    * - SE_DENY_SERVICE_LOGON_NAME  
      - | This account right explicitly denies an account the right to log on using the service logon type.  
    * - SE_INTERACTIVE_LOGON_NAME  
      - | This account right is required for an account to log on using the interactive logon type.  
    * - SE_NETWORK_LOGON_NAME  
      - | This account right is required for an account to log on using the network logon type.  
    * - SE_REMOTE_INTERACTIVE_LOGON_NAME  
      - | This account right is required for an account to log on remotely using the interactive logon type.  
    * - SE_SERVICE_LOGON_NAME  
      - | This account right is required for an account to log on using the service logon type.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
