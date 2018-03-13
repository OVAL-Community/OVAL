# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Windows Definition  
* Version: 5.11.1:1.4  
* Release Date: 01/09/2017 10:00:00 PM

The following is a description of the elements, types, and attributes that compose the Windows specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ ~~accesstoken_test~~ ](#accesstoken_test)  
 *[ activedirectory_test ](#activedirectory_test)  
 *[ ~~activedirectory57_test~~ ](#activedirectory57_test)  
 *[ auditeventpolicy_test ](#auditeventpolicy_test)  
 *[ auditeventpolicysubcategories_test ](#auditeventpolicysubcategories_test)  
 *[ cmdlet_test ](#cmdlet_test)  
 *[ dnscache_test ](#dnscache_test)  
 *[ file_test ](#file_test)  
 *[ fileauditedpermissions53_test ](#fileauditedpermissions53_test)  
 *[ ~~fileauditedpermissions_test~~ ](#fileauditedpermissions_test)  
 *[ fileeffectiverights53_test ](#fileeffectiverights53_test)  
 *[ ~~fileeffectiverights_test~~ ](#fileeffectiverights_test)  
 *[ ~~group_test~~ ](#group_test)  
 *[ group_sid_test ](#group_sid_test)  
 *[ interface_test ](#interface_test)  
 *[ junction_test ](#junction_test)  
 *[ license_test ](#license_test)  
 *[ lockoutpolicy_test ](#lockoutpolicy_test)  
 *[ metabase_test ](#metabase_test)  
 *[ ntuser_test ](#ntuser_test)  
 *[ passwordpolicy_test ](#passwordpolicy_test)  
 *[ peheader_test ](#peheader_test)  
 *[ port_test ](#port_test)  
 *[ printereffectiverights_test ](#printereffectiverights_test)  
 *[ ~~process_test~~ ](#process_test)  
 *[ process58_test ](#process58_test)  
 *[ registry_test ](#registry_test)  
 *[ regkeyauditedpermissions53_test ](#regkeyauditedpermissions53_test)  
 *[ ~~regkeyauditedpermissions_test~~ ](#regkeyauditedpermissions_test)  
 *[ regkeyeffectiverights53_test ](#regkeyeffectiverights53_test)  
 *[ ~~regkeyeffectiverights_test~~ ](#regkeyeffectiverights_test)  
 *[ service_test ](#service_test)  
 *[ serviceeffectiverights_test ](#serviceeffectiverights_test)  
 *[ sharedresource_test ](#sharedresource_test)  
 *[ sharedresourceauditedpermissions_test ](#sharedresourceauditedpermissions_test)  
 *[ sharedresourceeffectiverights_test ](#sharedresourceeffectiverights_test)  
 *[ sid_test ](#sid_test)  
 *[ sid_sid_test ](#sid_sid_test)  
 *[ systemmetric_test ](#systemmetric_test)  
 *[ uac_test ](#uac_test)  
 *[ ~~user_test~~ ](#user_test)  
 *[ user_sid55_test ](#user_sid55_test)  
 *[ ~~user_sid_test~~ ](#user_sid_test)  
 *[ userright_test ](#userright_test)  
 *[ volume_test ](#volume_test)  
 *[ ~~wmi_test~~ ](#wmi_test)  
 *[ wmi57_test ](#wmi57_test)  
 *[ wuaupdatesearcher_test ](#wuaupdatesearcher_test)  
  
______________
  
## <a name="accesstoken_test"></a><  ~~accesstoken_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the userright_test. This accesstoken_test suffers from scalability issues when run on a domain controller and should not be used. See the userright_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The accesstoken_test is used to check the properties of a Windows access token as well as individual privileges and rights associated with it. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an accesstoken_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="accesstoken_object"></a><  ~~accesstoken_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the userright_object. The accesstoken_test suffers from scalability issues when run on a domain controller and should not be used. See the userright_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The accesstoken_object element is used by an access token test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An accesstoken_object consists of a single security principle that identifies user, group, or computer account that is associated with the token.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:AccesstokenBehaviors](#AccesstokenBehaviors)  (0..1) |  
|||  
| security_principle | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The security_principle element defines the access token being specified. Security principles include users or groups with either local or domain accounts, and computer accounts created when a computer joins a domain. In Windows, security principles are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. User rights and permissions to access objects such as Active Directory objects, files, and registry settings are assigned to security principles. In a domain environment, security principles should be identified in the form: "domain\trustee name". For local security principles use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain. If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the Local Security Authority database. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="accesstoken_state"></a><  ~~accesstoken_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the userright_state. The accesstoken_test suffers from scalability issues when run on a domain controller and should not be used. See the userright_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The accesstoken_state element defines the different information that can be used to evaluate the specified access tokens. This includes the multitude of user rights and permissions that can be granted. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| security_principle | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The security_principle element identifies an access token to test for. Security principles include users or groups with either local or domain accounts, and computer accounts created when a computer joins a domain. In Windows, security principles are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. User rights and permissions to access objects such as Active Directory objects, files, and registry settings are assigned to security principles. In a domain environment, security principles should be identified in the form: "domain\trustee name". For local security principles use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| seassignprimarytokenprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seassignprimarytokenprivilege privilege is enabled, it allows a parent process to replace the access token that is associated with a child process.</div>|  
| seauditprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seauditprivilege privilege is enabled, it allows a process to generate audit records in the security log. The security log can be used to trace unauthorized system access.</div>|  
| sebackupprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the sebackupprivilege privilege is enabled, it allows the user to circumvent file and directory permissions to back up the system. The privilege is selected only when an application attempts access by using the NTFS backup application programming interface (API). Otherwise, normal file and directory permissions apply.</div>|  
| sechangenotifyprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the sechangenotifyprivilege privilege is enabled, it allows the user to pass through folders to which the user otherwise has no access while navigating an object path in the NTFS file system or in the registry. This privilege does not allow the user to list the contents of a folder; it allows the user only to traverse its directories.</div>|  
| secreateglobalprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the secreateglobalprivilege privilege is enabled, it allows the user to create named file mapping objects in the global namespace during Terminal Services sessions.</div>|  
| secreatepagefileprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the secreatepagefileprivilege privilege is enabled, it allows the user to create and change the size of a pagefile.</div>|  
| secreatepermanentprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the secreatepermanentprivilege privilege is enabled, it allows a process to create a directory object in the object manager. It is useful to kernel-mode components that extend the object namespace. Components that are running in kernel mode have this privilege inherently.</div>|  
| secreatesymboliclinkprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the secreatesymboliclinkprivilege privilege is enabled, it allows users to create symbolic links.</div>|  
| secreatetokenprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the secreatetokenprivilege privilege is enabled, it allows a process to create an access token by calling NtCreateToken() or other token-creating APIs.</div>|  
| sedebugprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the sedebugprivilege privilege is enabled, it allows the user to attach a debugger to any process. It provides access to sensitive and critical operating system components.</div>|  
| seenabledelegationprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seenabledelegationprivilege privilege is enabled, it allows the user to change the Trusted for Delegation setting on a user or computer object in Active Directory. The user or computer that is granted this privilege must also have write access to the account control flags on the object.</div>|  
| seimpersonateprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seimpersonateprivilege privilege is enabled, it allows the user to impersonate a client after authentication.</div>|  
| seincreasebasepriorityprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seincreasebasepriorityprivilege privilege is enabled, it allows a user to increase the base priority class of a process.</div>|  
| seincreasequotaprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seincreasequotaprivilege privilege is enabled, it allows a process that has access to a second process to increase the processor quota assigned to the second process.</div>|  
| seincreaseworkingsetprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seincreaseworkingsetprivilege privilege is enabled, it allows a user to increase a process working set.</div>|  
| seloaddriverprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seloaddriverprivilege privilege is enabled, it allows a user to install and remove drivers for Plug and Play devices.</div>|  
| selockmemoryprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the selockmemoryprivilege privilege is enabled, it allows a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk.</div>|  
| semachineaccountprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the semachineaccountprivilege privilege is enabled, it allows the user to add a computer to a specific domain.</div>|  
| semanagevolumeprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the semanagevolumeprivilege privilege is enabled, it allows a non-administrative or remote user to manage volumes or disks.</div>|  
| seprofilesingleprocessprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seprofilesingleprocessprivilege privilege is enabled, it allows a user to sample the performance of an application process.</div>|  
| serelabelprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the serelabelprivilege privilege is enabled, it allows a user to modify an object label.</div>|  
| seremoteshutdownprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seremoteshutdownprivilege privilege is enabled, it allows a user to shut down a computer from a remote location on the network.</div>|  
| serestoreprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the serestoreprivilege privilege is enabled, it allows a user to circumvent file and directory permissions when restoring backed-up files and directories and to set any valid security principle as the owner of an object.</div>|  
| sesecurityprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the sesecurityprivilege privilege is enabled, it allows a user to specify object access auditing options for individual resources such as files, Active Directory objects, and registry keys. A user who has this privilege can also view and clear the security log from Event Viewer.</div>|  
| seshutdownprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seshutdownprivilege privilege is enabled, it allows a user to shut down the local computer.</div>|  
| sesyncagentprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the sesyncagentprivilege privilege is enabled, it allows a process to read all objects and properties in the directory, regardless of the protection on the objects and properties. It is required in order to use Lightweight Directory Access Protocol (LDAP) directory synchronization (Dirsync) services.</div>|  
| sesystemenvironmentprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the sesystemenvironmentprivilege privilege is enabled, it allows modification of system environment variables either by a process through an API or by a user through System Properties.</div>|  
| sesystemprofileprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the sesystemprofileprivilege privilege is enabled, it allows a user to sample the performance of system processes.</div>|  
| sesystemtimeprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the sesystemtimeprivilege privilege is enabled, it allows the user to adjust the time on the computer's internal clock. It is not required to change the time zone or other display characteristics of the system time.</div>|  
| setakeownershipprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the setakeownershipprivilege privilege is enabled, it allows a user to take ownership of any securable object in the system, including Active Directory objects, NTFS files and folders, printers, registry keys, services, processes, and threads.</div>|  
| setcbprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the setcbprivilege privilege is enabled, it allows a process to assume the identity of any user and thus gain access to the resources that the user is authorized to access.</div>|  
| setimezoneprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the setimezoneprivilege privilege is enabled, it allows the user to change the time zone.</div>|  
| seundockprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seundockprivilege privilege is enabled, it allows the user of a portable computer to undock the computer by clicking Eject PC on the Start menu.</div>|  
| seunsolicitedinputprivilege | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the seunsolicitedinputprivilege privilege is enabled, it allows the user to read unsolicited data from a terminal device.</div>|  
| sebatchlogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the sebatchlogonright right, it can log on using the batch logon type.</div>|  
| seinteractivelogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the seinteractivelogonright right, it can log on using the interactive logon type.</div>|  
| senetworklogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the senetworklogonright right, it can log on using the network logon type.</div>|  
| seremoteinteractivelogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the seremoteinteractivelogonright right, it can log on to the computer by using a Remote Desktop connection.</div>|  
| seservicelogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the seservicelogonright right, it can log on using the service logon type.</div>|  
| sedenybatchLogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the sedenybatchLogonright right, it is explicitly denied the ability to log on using the batch logon type.</div>|  
| sedenyinteractivelogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the sedenyinteractivelogonright right, it is explicitly denied the ability to log on using the interactive logon type.</div>|  
| sedenynetworklogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the sedenynetworklogonright right, it is explicitly denied the ability to log on using the network logon type.</div>|  
| sedenyremoteInteractivelogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the sedenyremoteInteractivelogonright right, it is explicitly denied the ability to log on through Terminal Services.</div>|  
| sedenyservicelogonright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned the sedenyservicelogonright right, it is explicitly denied the ability to log on using the service logon type.</div>|  
| setrustedcredmanaccessnameright | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If an account is assigned this right, it can access the Credential Manager as a trusted caller.</div>|  
  
## <a name="AccesstokenBehaviors"></a>==  ~~AccesstokenBehaviors~~  ==

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the userright_test. The AccesstokenBehaviors complex type is used by the accesstoken_test which suffers from scalability issues when run on a domain controller and should not be used. As a result, the AccesstokenBehaviors complex type is no longer needed. See the userright_test.<br />**Comment:** This complex type has been deprecated and will be removed in version 6.0 of the language.<br />

The AccesstokenBehaviors complex type defines a number of behaviors that allow a more detailed definition of the accesstoken_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
If a group security principle is specified, this behavior specifies whether to include the group or not. For example, maybe you want to check the access tokens associated with every user within a group, but not the group itself. In this case, you would set the include_group behavior to 'false'. If the security_principle is not a group, then this behavior should be ignored.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved and any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="activedirectory_test"></a>< activedirectory_test >

The active directory test is used to check information about specific entries in active directory. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an activedirectory_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="activedirectory_object"></a>< activedirectory_object >

The activedirectory_object element is used by an active directory test to define those objects to evaluated based on a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An active directory object consists of three pieces of information, a naming context, a relative distinguished name, and an attribute. Each piece helps identify a specific active directory entry.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| naming_context | [win-def:EntityObjectNamingContextType](#EntityObjectNamingContextType)  (1..1) |  
||<div>Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.</div>|  
| relative_dn | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the object's distinguished name except those outlined by the naming context. If the xsi:nil attribute is set to true, then the object being specified is the higher level naming context. In this case, the relative_dn element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every relative dn under a given naming context.</div>|  
| attribute | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies a named value contained by the object. If the xsi:nil attribute is set to true, the attribute element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every attribute under a given relative dn.</div>|  
  
## <a name="activedirectory_state"></a>< activedirectory_state >

The activedirectory_state element defines the different information that can be used to evaluate the specified entries in active directory. An active directory test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| naming_context | [win-def:EntityStateNamingContextType](#EntityStateNamingContextType)  (0..1) |  
||<div>Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.</div>|  
| relative_dn | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the objects distinguished name except those outlined by the naming context.</div>|  
| attribute | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies a named value contained by the object.</div>|  
| object_class | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the class of which the object is an instance.</div>|  
| adstype | [win-def:EntityStateAdstypeType](#EntityStateAdstypeType)  (0..1) |  
||<div>Specifies the type of information that the specified attribute represents.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The actual value of the specified active directory attribute.</div>|  
  
______________
  
## <a name="activedirectory57_test"></a><  ~~activedirectory57_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.1:1.2** :small_red_triangle: <br />**Reason:** Use the original activedirectory_test. The activedirectory57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated AdstypeTypes. Use the original activedirectory_test instead.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The active directory test is used to check information about specific entries in active directory. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an activedirectory57_object and the optional state element specifies the metadata to check.

Note that this test supports complex values that are in the form of a record. For simple (string based) value collection see the activedirectory_test.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="activedirectory57_object"></a><  ~~activedirectory57_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.1:1.2** :small_red_triangle: <br />**Reason:** Use the original activedirectory_object. The activedirectory57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated AdstypeTypes. Use the original activedirectory_test instead.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The activedirectory57_object element is used by an active directory test to define those objects to evaluated based on a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An active directory object consists of three pieces of information, a naming context, a relative distinguished name, and an attribute. Each piece helps identify a specific active directory entry.

Note that this object supports complex values that are in the form of a record. For simple (string based) value collection see the activedirectory_object.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| naming_context | [win-def:EntityObjectNamingContextType](#EntityObjectNamingContextType)  (1..1) |  
||<div>Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.</div>|  
| relative_dn | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the object's distinguished name except those outlined by the naming context. If the xsi:nil attribute is set to true, then the object being specified is the higher level naming context. In this case, the relative_dn element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every relative dn under a given naming context.</div>|  
| attribute | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies a named value contained by the object. If the xsi:nil attribute is set to true, the attribute element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every attribute under a given relative dn.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="activedirectory57_state"></a><  ~~activedirectory57_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.1:1.2** :small_red_triangle: <br />**Reason:** Use the original activedirectory_state. The activedirectory57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated AdstypeTypes. Use the original activedirectory_test instead.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The activedirectory57_state element defines the different information that can be used to evaluate the specified entries in active directory. An active directory test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

Note that this state supports complex values that are in the form of a record. For simple (string based) value collection see the activedirectory_state.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| naming_context | [win-def:EntityStateNamingContextType](#EntityStateNamingContextType)  (0..1) |  
||<div>Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.</div>|  
| relative_dn | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the object's distinguished name except those outlined by the naming context.</div>|  
| attribute | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies a named value contained by the object.</div>|  
| object_class | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the class of which the object is an instance.</div>|  
| adstype | [win-def:EntityStateAdstypeType](#EntityStateAdstypeType)  (0..1) |  
||<div>The type of information that the specified attribute represents.</div>|  
| value | [oval-def:EntityStateRecordType](oval-definitions-schema.md#EntityStateRecordType)  (0..1) |  
||<div>The actual value of the specified Active Directory attribute. Note that while an Active Directory attribute can contain structured data where it is necessary to collect multiple related fields that can be described by the 'record' datatype, it is not always the case. It also is possible that an Active Directory attribute can contain only a single value or an array of values. In these cases, there is not a name to uniquely identify the corresponding field which is a requirement for fields in the 'record' datatype. As a result, the name of the Active Directory attribute will be used to uniquely identify the field and satisfy this requirement.</div>|  
  
______________
  
## <a name="auditeventpolicy_test"></a>< auditeventpolicy_test >

The auditeventpolicy_test is used to check different types of events the system should audit. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a auditeventpolicy_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="auditeventpolicy_object"></a>< auditeventpolicy_object >

The auditeventpolicy_object element is used by an audit event policy test to define those objects to evaluate based on a specified state. There is actually only one object relating to audit event policy and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check audit event policy will reference the same auditeventpolicy_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="auditeventpolicy_state"></a>< auditeventpolicy_state >

The auditeventpolicy_state element specifies the different system activities that can be audited. An audit event policy test will reference a specific instance of this state that defines the exact settings that need to be evaluated. The defined values are found in window's POLICY_AUDIT_EVENT_TYPE enumeration and accessed through the LsaQueryInformationPolicy when the InformationClass parameters are set to PolicyAuditEventsInformation. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| account_logon | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit attempts to log on to or log off of the system. Also, audit attempts to make a network connection.</div>|  
| account_management | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit attempts to create, delete, or change user or group accounts. Also, audit password changes.</div>|  
| detailed_tracking | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit specific events, such as program activation, some forms of handle duplication, indirect access to an object, and process exit. Note that this activitiy is also known as process tracking.</div>|  
| directory_service_access | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit attempts to access the directory service.</div>|  
| logon | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit attempts to log on to or log off of the system. Also, audit attempts to make a network connection.</div>|  
| object_access | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit attempts to access securable objects, such as files.</div>|  
| policy_change | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit attempts to change Policy object rules.</div>|  
| privilege_use | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit attempts to use privileges.</div>|  
| system | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit attempts to shut down or restart the computer. Also, audit events that affect system security or the security log.</div>|  
  
______________
  
## <a name="auditeventpolicysubcategories_test"></a>< auditeventpolicysubcategories_test >

The auditeventpolicysubcategories_test is used to check the audit event policy settings on a Windows system. These settings are used to specify which system and network events are monitored. For example, if the credential_validation element has a value of AUDIT_FAILURE, it means that the system is configured to log all unsuccessful attempts to validate a user account on a system. It is important to note that these audit event policy settings are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information on each setting. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a auditeventpolicy_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="auditeventpolicysubcategories_object"></a>< auditeventpolicysubcategories_object >

The auditeventpolicysubcategories_object element is used by an audit event policy subcategories test to define those objects to evaluate based on a specified state. There is actually only one object relating to audit event policy subcategories and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check audit event policy subcategories will reference the same auditeventpolicysubcategories_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="auditeventpolicysubcategories_state"></a>< auditeventpolicysubcategories_state >

The auditeventpolicysubcategories_state element specifies the different system activities that can be audited. An audit event policy subcategories test will reference a specific instance of this state that defines the exact subcategories that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| credential_validation | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced during the validation of a user's logon credentials. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Credential Validation</div>|  
| kerberos_authentication_service | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by Kerberos authentication ticket-granting requests. This state corresponds with the following GUID specified in ntsecapi.h: 0CCE9242-69AE-11D9-BED3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Kerboros Authentication Service</div>|  
| kerberos_service_ticket_operations | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by Kerberos service ticket requests. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9240-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Kerberos Service Ticket Operations</div>|  
| ~~kerberos_ticket_events~~ | ~~[win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1~~) |  
||~~<div>Audit the events produced during the validation of Kerberos tickets provided for a user account logon request.</div>~~|  
| other_account_logon_events | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to user accounts that are not covered by other events in the Account Logon category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9241-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Other Account Logon Events</div>|  
| application_group_management | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to application groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9239-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Application Group Management</div>|  
| computer_account_management | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to computer accounts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9236-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Computer Account Management</div>|  
| distribution_group_management | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to distribution groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9238-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Distribution Account Management</div>|  
| other_account_management_events | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by other user account changes that are not covered by other events in the Account Management category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Other Account Management Events</div>|  
| security_group_management | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to security groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9237-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Security Group Management</div>|  
| user_account_management | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to user accounts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9235-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit User Account Management</div>|  
| dpapi_activity | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced when requests are made to the Data Protection application interface. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit DPAPI Activity</div>|  
| process_creation | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced when a process is created or starts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit Process Creation</div>|  
| process_termination | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced when a process ends. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit Process Termination</div>|  
| rpc_events | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by inbound remote procedure call connections. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit RPC Events</div>|  
| directory_service_access | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced when a Active Directory Domain Services object is accessed. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Access</div>|  
| directory_service_changes | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced when changes are made to Active Directory Domain Services objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Changes</div>|  
| directory_service_replication | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced when two Active Directory Domain Services domain controllers are replicated. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Access</div>|  
| detailed_directory_service_replication | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by detailed Active Directory Domain Services replication between domain controllers. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Detailed Directory Service Replication</div>|  
| account_lockout | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by a failed attempt to log onto a locked out account. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9217-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Account Lockout</div>|  
| ipsec_extended_mode | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Extended Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit IPsec Extended Mode</div>|  
| ipsec_main_mode | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Main Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9218-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logof/Logoff: Audit IPsec Main Mode</div>|  
| ipsec_quick_mode | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Quick Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9219-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit IPsec Quick Mode</div>|  
| logoff | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by closing a logon session. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9216-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Logoff</div>|  
| logon | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to log onto a user account. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9215-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Logon</div>|  
| network_policy_server | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by RADIUS and Network Access Protection user access requests. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9243-69ae-11d9-bed3-505054503030.This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Network Policy Server</div>|  
| other_logon_logoff_events | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by other logon/logoff based events that are not covered in the Logon/Logoff category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Other Logon/Logoff Events</div>|  
| special_logon | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by special logons. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Special Logon</div>|  
| logon_claims | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit user and device claims information in the user's logon token. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9247-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit User / Device Claims</div>|  
| application_generated | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by applications that use the Windows Auditing API. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9222-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Application Generated</div>|  
| certification_services | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by operations on Active Directory Certificate Services. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9221-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Certification Services</div>|  
| detailed_file_share | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access files and folders on a shared folder. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9244-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Detailed File Share</div>|  
| file_share | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access a shared folder. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9224-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit File Share</div>|  
| file_system | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced user attempts to access file system objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit File System</div>|  
| filtering_platform_connection | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by connections that are allowed or blocked by Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9226-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Filtering Platform Connection</div>|  
| filtering_platform_packet_drop | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by packets that are dropped by Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9225-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Filtering Platform Packet Drop</div>|  
| handle_manipulation | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced when a handle is opened or closed. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9223-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Handle Manipulation</div>|  
| kernel_object | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access the system kernel. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Kernel Object</div>|  
| other_object_access_events | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by the management of Task Scheduler jobs or COM+ objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9227-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Other Object Access Events</div>|  
| registry | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access registry objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Registry</div>|  
| sam | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access Security Accounts Manager objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9220-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit SAM</div>|  
| removable_storage | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit events that indicate file object access attemps to removable storage. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9245-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Removable Storage</div>|  
| central_access_policy_staging | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit events that indicate permission granted or denied by a proposed policy differs from the current central access policy on an object. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9246-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Central Access Policy Staging</div>|  
| audit_policy_change | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes in security audit policy settings. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Audit Policy Change</div>|  
| authentication_policy_change | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to the authentication policy. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9230-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Authentication Policy Change</div>|  
| authorization_policy_change | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to the authorization policy. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9231-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Authorization Policy Change</div>|  
| filtering_platform_policy_change | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to the Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9233-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Filtering Platform Policy Change</div>|  
| mpssvc_rule_level_policy_change | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes to policy rules used by the Windows Firewall. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9232-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit MPSSVC Rule-Level Policy Change</div>|  
| other_policy_change_events | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by other security policy changes that are not covered other events in the Policy Change category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9234-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Other Policy Change Events</div>|  
| non_sensitive_privilege_use | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by the use of non-sensitive privileges. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9229-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Non Sensitive Privilege Use</div>|  
| other_privilege_use_events | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>This is currently not used and has been reserved by Microsoft for use in the future. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Other Privilege Use Events</div>|  
| sensitive_privilege_use | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by the use of sensitive privileges. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9228-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Sensitive Privilege Use</div>|  
| ipsec_driver | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by the IPsec filter driver. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9213-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit IPsec Driver</div>|  
| other_system_events | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by the startup and shutdown, security policy processing, and cryptography key file and migration operations of the Windows Firewall. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9214-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Other System Events</div>|  
| security_state_change | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by changes in the security state. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9210-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Security State Change</div>|  
| security_system_extension | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events produced by the security system extensions or services. This state corresponds with the following GUID specified in ntsecapi.h: cce9211-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Security System Extension</div>|  
| system_integrity | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Audit the events that indicate that the integrity security subsystem has been violated. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9212-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit System Integrity</div>|  
| group_membership | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>This subcategory audits the group membership of a token for an associated log on. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9249-69ae-11d9-bed3-505054503030.</div>|  
| pnp_activity | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>This subcategory audits events generated by plug and play (PNP). This state corresponds with the following GUID specified in ntsecapi.h: 0cce9248-69ae-11d9-bed3-505054503030.</div>|  
| user_device_claims | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>This subcategory audits the user and device claims that are present in the token of an associated logon. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9247-69ae-11d9-bed3-505054503030.</div>|  
| audit_detailedtracking_tokenrightadjusted | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>This subcategory audits when token privileges are enabled or disabled for a specific account’s token. This state corresponds with the following GUID specified in ntsecapi.h: 0cce924a-69ae-11d9-bed3-505054503030.</div>|  
  
______________
  
## <a name="cmdlet_test"></a>< cmdlet_test >

The cmdlet_test is used to levarage a PowerShell cmdlet to check a Windows system. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a cmdlet_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="cmdlet_object"></a>< cmdlet_object >

The cmdlet_object element is used by a cmdlet_test to identify the set of cmdlets to use and the parameters to provide to them for checking the state of a system. In order to ensure the consistency of PowerShell cmdlet support among OVAL interpreters as well as ensure that the state of a system is not changed, every OVAL interpreter must implement the following requirements. An OVAL interpreter must only support the processing of the verbs specified in the EntityObjectCmdletVerbType. If a cmdlet verb that is not defined in this enumeration is discovered, an error should be reported and the cmdlet must not be executed on the system. While XML Schema validation will enforce this requirement, it is strongly recommended that OVAL interpreters implement a whitelist of allowed cmdlets. This can be done using constrained runspaces which can limit the PowerShell execution environment. For more information, please see Microsoft's documentation on Windows PowerShell Host Application Concepts. Furthermore, it is strongly recommended that OVAL interpreters also implement PowerShell support with the NoLanguage mode enabled. The NoLanguage mode ensures that scripts that need to be evaluated are not allowed in the runspace. For more information about the NoLanguage mode, please see Microsoft's documentation on the PSLanguageMode enumeration.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| module_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the module that contains the cmdlet.</div>|  
| module_id | [win-def:EntityObjectGUIDType](#EntityObjectGUIDType)  (1..1) |  
||<div>The globally unique identifier for the module. If xsi:nil='true', it does not matter which module GUID the command comes from.</div>|  
| module_version | [oval-def:EntityObjectVersionType](oval-definitions-schema.md#EntityObjectVersionType)  (1..1) |  
||<div>The version of the module that contains the cmdlet in the form of MAJOR.MINOR. If xsi:nil='true', that implies it does not matter which version of the module the command refers to.</div>|  
| verb | [win-def:EntityObjectCmdletVerbType](#EntityObjectCmdletVerbType)  (1..1) |  
||<div>The cmdlet verb.</div>|  
| noun | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The cmdlet noun.</div>|  
| parameters | [oval-def:EntityObjectRecordType](oval-definitions-schema.md#EntityObjectRecordType)  (1..1) |  
||<div>A list of properties (name and value pairs) as input to invoke the cmdlet. Each property name must be unique. When xsi:nil='true', parameters are not provided to the cmdlet.</div>|  
| select | [oval-def:EntityObjectRecordType](oval-definitions-schema.md#EntityObjectRecordType)  (1..1) |  
||<div>A list of fields (name and value pairs) used as input to the Select-Object cmdlet to select specific output properties. Each property name must be unique. Please note that the use of the '*' character, to select all properties, is not permitted. This is because the value record entity, in the state and item, require unique field name values to ensure that any query results can be evaluated consistently. This is equivalent to piping the output of a cmdlet to the Select-Object cmdlet. When xsi:nil='true', the Select-Object is not used.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="cmdlet_state"></a>< cmdlet_state >

The cmdlet_state allows for assertions about the presence of PowerShell cmdlet related properties and values obtained from a cmdlet.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| module_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the module that contains the cmdlet.</div>|  
| module_id | [win-def:EntityStateGUIDType](#EntityStateGUIDType)  (0..1) |  
||<div>The globally unique identifier for the module.</div>|  
| module_version | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The version of the module that contains the cmdlet in the form of MAJOR.MINOR.</div>|  
| verb | [win-def:EntityStateCmdletVerbType](#EntityStateCmdletVerbType)  (0..1) |  
||<div>The cmdlet verb.</div>|  
| noun | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The cmdlet noun.</div>|  
| parameters | [oval-def:EntityStateRecordType](oval-definitions-schema.md#EntityStateRecordType)  (0..1) |  
||<div>A list of properties (name and value pairs) as input to invoke the cmdlet. Each property name must be unique.</div>|  
| select | [oval-def:EntityStateRecordType](oval-definitions-schema.md#EntityStateRecordType)  (0..1) |  
||<div>A list of fields (name and value pairs) used as input to the Select-Object cmdlet to select specific output properties. Each property name must be unique.</div>|  
| value | [oval-def:EntityStateRecordType](oval-definitions-schema.md#EntityStateRecordType)  (0..1) |  
||<div>The expected value represented as a set of fields (name and value pairs). Each field must be have a unique name.</div>|  
  
______________
  
## <a name="dnscache_test"></a>< dnscache_test >

The dnscache_test is used to check the time to live and IP addresses associated with a domain name. The time to live and IP addresses for a particular domain name are retrieved from the DNS cache on the local system. The entries in the DNS cache can be collected using Microsoft's DnsGetCacheDataTable() and DnsQuery() API calls. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a dnscache_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="dnscache_object"></a>< dnscache_object >

The dnscache_object is used by the dnscache_test to specify the domain name(s) that should be collected from the DNS cache on the local system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| domain_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The domain_name element specifies the domain name(s) that should be collected from the DNS cache on the local system.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="dnscache_state"></a>< dnscache_state >

The dnscache_state contains three entities that are used to check the domain name, time to live, and IP addresses associated with the DNS cache entry.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| domain_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The domain_name element contains a string that represents a domain name that was collected from the DNS cache on the local system.</div>|  
| ttl | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The ttl element contains an integer that represents the time to live in seconds of the DNS cache entry.</div>|  
| ip_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>The ip_address element contains a string that represents an IP address associated with the specified domain name that was collected from the DNS cache on the local system. Note that the IP address can be IPv4 or IPv6.</div>|  
  
______________
  
## <a name="file_test"></a>< file_test >

The file test is used to check metadata associated with Windows files. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a file_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="file_object"></a>< file_object >

The file_object element is used by a file test to define the specific file(s) to be evaluated. The file_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A file object defines the path and filename or complete filepath of the file(s). In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileBehaviors complex type for more information about specific behaviors.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:FileBehaviors](#FileBehaviors)  (0..1) |  
|||  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="file_state"></a>< file_state >

The file_state element defines the different metadata associate with a Windows file. This includes the path, filename, owner, size, last modified time, version, etc. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename element specifies the name of the file.</div>|  
| owner | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The owner element is a string that contains the name of the owner. The name should be specified in the DOMAIN\username format.</div>|  
| size | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The size element is the size of the file in bytes.</div>|  
| a_time | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Time of last access of file. Valid on NTFS but not on FAT formatted disk drives. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).</div>|  
| c_time | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Time of creation of file. Valid on NTFS but not on FAT formatted disk drives. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).</div>|  
| m_time | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Time of last modification of file. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).</div>|  
| ms_checksum | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The checksum of the file as supplied by Microsoft's MapFileAndCheckSum function.</div>|  
| version | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The version element is the delimited version string of the file.</div>|  
| type | [win-def:EntityStateFileTypeType](#EntityStateFileTypeType)  (0..1) |  
||<div>The type element marks whether the file is a named pipe, standard file, etc. These types are the return values for GetFileType. For directories, this element must have a status of 'does not exist'.</div>|  
| attribute | [win-def:EntityStateFileAttributeType](#EntityStateFileAttributeType)  (0..1) |  
||<div>The attribute element marks a Windows file attribute. These types are the return values for GetFileAttribute.</div><div>The attribute element can be included multiple times in a system characteristic item in order to record that a file has a number of different attributes. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like the attribute entity that refer to items that can occur an unbounded number of times.</div>|  
| development_class | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The development_class element allows the distinction to be made between the GDR development environment and the QFE development environment. This field holds the text found in front of the mmmmmm-nnnn version, for example srv03_gdr.</div>|  
| company | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This entity defines a company name to be found within the version-information structure.</div>|  
| internal_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This entity defines an internal name to be found within the version-information structure.</div>|  
| language | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This entity defines a language to be found within the version-information structure.</div>|  
| original_filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This entity defines an original filename to be found within the version-information structure.</div>|  
| product_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This entity defines a product name to be found within the version-information structure.</div>|  
| product_version | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This entity defines the product version held within the version-information structure. This may not necessarily be a string compatible with the OVAL version datatype, in which case the string datatype should be used.</div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="FileBehaviors"></a>== FileBehaviors ==

The FileBehaviors complex type defines a number of behaviors that allow a more detailed definition of the file_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

#### Attributes:

*	**max_depth** Restriction of xsd:integer (optional -- default='-1')  
'max_depth' defines the maximum depth of recursion to perform when a recurse_direction is specified. A value of '0' is equivalent to no recursion, '1' means to step only one directory level up/down, and so on. The default value is '-1' meaning no limitation. For a 'max_depth' of -1 or any value of 1 or more the starting directory must be considered in the recursive search.  
Note that the default recurse_direction behavior is 'none' so even though max_depth specifies no limitation by default, the recurse_direction behavior turns recursion off.  
Note that this behavior only applies with the equality operation on the path entity.  
*	**recurse** Restriction of xsd:string (optional -- default='directories') ('directories', 'junctions', 'junctions and directories')  
'recurse' defines how to recurse into the path entity, in other words what to follow during recursion. Options include junctions, directories, or both (a junction on Windows is equivalent to a symlink on Unix). Note that a max-depth other than 0 has to be specified for recursion to take place and for this attribute to mean anything.  
Note that this behavior only applies with the equality operation on the path entity.  
*	**recurse_direction** Restriction of xsd:string (optional -- default='none') ('none', 'up', 'down')  
'recurse_direction' defines the direction, either 'up' to parent directories, or 'down' into child directories to recursively search for files. When recursing up or down, one is limited by the max_depth behavior. Note that it is not an error if max_depth specifies a certain level of recursion and that level does not exist. Recursing should only go as deep as available. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the path entity.  
*	**recurse_file_system** Restriction of xsd:string (optional -- default='all') ('all', 'local', 'defined')  
'recurse_file_system' defines the file system limitation of any searching and applies to all operations as specified on the path or filepath entity. The value of 'local' limits the search scope to local file systems (as opposed to file systems mounted from an external system). The value of 'defined' keeps any recursion within the file system that the file_object (path+filename or filepath) has specified. For example, if the path specified was "C:\", you would search only the C: drive, not other filesystems mounted to descendant paths. The value of 'defined' only applies when an equality operation is used for searching because the path or filepath entity must explicitly define a file system. The default value is 'all' meaning to search all available file systems for data collection.  
Note that in most cases it is recommended that the value of 'local' be used to ensure that file system searching is limited to only the local file systems. Searching 'all' file systems may have performance implications.  
*	**windows_view** Restriction of xsd:string (optional -- default='64_bit') ('32_bit', '64_bit')  
64-bit versions of Windows provide an alternate file system and registry views to 32-bit applications. This behavior allows the OVAL Object to state which view should be examined. This behavior only applies to 64-bit Windows, and must not be applied on other platforms.  
Note that the values have the following meaning: '64_bit' - Indicates that the 64-bit view on 64-bit Windows operating systems must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. '32_bit' - Indicates that the 32-bit view must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. It is recommended that the corresponding 'windows_view' entity be set on the OVAL Items that are collected when this behavior is used to distinguish between OVAL Items that were collected in the 32-bit or 64-bit views.  
  
______________
  
## <a name="fileauditedpermissions53_test"></a>< fileauditedpermissions53_test >

The file audit permissions test is used to check the audit permissions associated with Windows files. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a fileauditedpermissions_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="fileauditedpermissions53_object"></a>< fileauditedpermissions53_object >

The fileauditedpermissions53_object element is used by a file audited permissions test to define the objects used to evalutate against the specified state. The fileauditedpermissions53_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A fileauditedpermissions53_object is defined as a combination of a Windows file and trustee SID. The file represents the file to be evaluated while the trustee SID represents the account (SID) to check audited permissions of. If multiple files or SIDs are matched by either reference, then each possible combination of file and SID is a matching file audited permissions object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileAuditPermissions53Behaviors complex type for more information about specific behaviors.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:FileAuditPermissions53Behaviors](#FileAuditPermissions53Behaviors)  (0..1) |  
|||  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path.</div>|  
| trustee_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the file's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="fileauditedpermissions53_state"></a>< fileauditedpermissions53_state >

The fileauditedpermissions53_state element defines the different audit permissions that can be associated with a given fileauditedpermissions53_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename element specifies the name of a file to test for.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| standard_synchronize | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| file_read_data | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to read data from the file.</div>|  
| file_write_data | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to write data to the file.</div>|  
| file_append_data | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to append data to the file.</div>|  
| file_read_ea | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to read extended attributes.</div>|  
| file_write_ea | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to write extended attributes.</div>|  
| file_execute | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to execute a file.</div>|  
| file_delete_child | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Right to delete a directory and all the files it contains (its children), even if the files are read-only.</div>|  
| file_read_attributes | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to read file attributes.</div>|  
| file_write_attributes | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to change file attributes.</div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="FileAuditPermissions53Behaviors"></a>== FileAuditPermissions53Behaviors ==

The FileAuditPermissions53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the fileauditpermissions53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

The FileAuditPermissions53Behaviors extend the win-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** [win-def:FileBehaviors](#FileBehaviors) 

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="fileauditedpermissions_test"></a><  ~~fileauditedpermissions_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the fileauditedpermissions53_test. This test uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. See the fileauditedpermissions53_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The file audited permissions test is used to check the audit permissions associated with Windows files. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a fileauditedpermissions_object, and the optional state element references a fileauditedpermissions_state that specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="fileauditedpermissions_object"></a><  ~~fileauditedpermissions_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the fileauditedpermissions53_object. This object uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new object was created to use trustee SIDs, which are unique. See the fileauditedpermissions53_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The fileauditedpermissions_object element is used by a file audited permissions test to define the objects used to evalutate against the specified state. The fileauditedpermissions_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A fileauditedpermissions_object is defined as a combination of a Windows file and trustee name. The file represents the file to be evaluated while the trustee name represents the account (SID) to check audited permissions of. If multiple files or SIDs are matched by either reference, then each possible combination of file and SID is a matching file audited permissions object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileAuditPermissionsBehaviors complex type for more information about specific behaviors.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:FileAuditPermissionsBehaviors](#FileAuditPermissionsBehaviors)  (0..1) |  
|||  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path.</div>|  
| trustee_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
  
## <a name="fileauditedpermissions_state"></a><  ~~fileauditedpermissions_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the fileauditedpermissions53_state. This state uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new state was created to use trustee SIDs, which are unique. See the fileauditedpermissions53_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The fileauditedpermissions_state element defines the different audit permissions that can be associated with a given fileauditedpermissions_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename element specifies the name of a file to test for.</div>|  
| trustee_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_name is the unique name associated with a particular security identifier (SID). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| standard_delete | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| standard_synchronize | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| file_read_data | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to read data from the file.</div>|  
| file_write_data | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to write data to the file.</div>|  
| file_append_data | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to append data to the file.</div>|  
| file_read_ea | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to read extended attributes.</div>|  
| file_write_ea | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to write extended attributes.</div>|  
| file_execute | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to execute a file.</div>|  
| file_delete_child | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Right to delete a directory and all the files it contains (its children), even if the files are read-only.</div>|  
| file_read_attributes | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to read file attributes.</div>|  
| file_write_attributes | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Grants the right to change file attributes.</div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="FileAuditPermissionsBehaviors"></a>==  ~~FileAuditPermissionsBehaviors~~  ==

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the FileAuditPermissionsBehaviors53. The FileAuditPermissionsBehaviors complex type is used by the fileauditedpermissions_test which uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. This new test utilizes the FileAuditPermissionsBehaviors53 complex type, and as a result, the FileAuditPermissionsBehaviors complex type is no longer needed.<br />**Comment:** This complex type has been deprecated and will be removed in version 6.0 of the language.<br />

The FileAuditPermissionsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the fileauditpermissions_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The FileAuditPermissionsBehaviors extend the win-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** [win-def:FileBehaviors](#FileBehaviors) 

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group trustee name might be to retrieve all the user SIDs that are a member of the group, but not the group trustee name itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="fileeffectiverights53_test"></a>< fileeffectiverights53_test >

The file effective rights test is used to check the effective rights associated with Windows files. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The fileeffectiverights53_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a fileeffectiverights53_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="fileeffectiverights53_object"></a>< fileeffectiverights53_object >

The fileeffectiverights53_object element is used by a file effective rights test to define the objects used to evalutate against the specified state. The fileeffectiverights53_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A fileeffectiverights53_object is defined as a combination of a Windows file and trustee SID. The file represents the file to be evaluated while the trustee SID represents the account (SID) to check effective rights of. If multiple files or SIDs are matched by either reference, then each possible combination of file and SID is a matching file effective rights object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileEffectiveRights53Behaviors complex type for more information about specific behaviors.

The set of files to be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:FileEffectiveRights53Behaviors](#FileEffectiveRights53Behaviors)  (0..1) |  
|||  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path..</div>|  
| trustee_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the file's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="fileeffectiverights53_state"></a>< fileeffectiverights53_state >

The fileeffectiverights53_state element defines the different rights that can be associated with a given fileeffectiverights53_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename element specifies the name of the file.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| standard_synchronize | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| file_read_data | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to read data from the file, or if a directory, grants the right to list the contents of the directory.</div>|  
| file_write_data | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to write data to the file, or if a directory, grants the right to add a file to the directory.</div>|  
| file_append_data | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to append data to the file, or if a directory, grants the right to add a sub-directory to the directory.</div>|  
| file_read_ea | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to read extended attributes.</div>|  
| file_write_ea | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to write extended attributes.</div>|  
| file_execute | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to execute a file, or if a directory, the right to traverse the directory.</div>|  
| file_delete_child | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Right to delete a directory and all the files it contains (its children), even if the files are read-only.</div>|  
| file_read_attributes | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to read file, or directory, attributes.</div>|  
| file_write_attributes | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to change file, or directory, attributes.</div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="FileEffectiveRights53Behaviors"></a>== FileEffectiveRights53Behaviors ==

The FileEffectiveRights53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the fileeffectiverights53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

The FileEffectiveRights53Behaviors extend the win-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** [win-def:FileBehaviors](#FileBehaviors) 

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="fileeffectiverights_test"></a><  ~~fileeffectiverights_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the fileeffectiverights53_test. This test uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. See the fileeffectiverights53_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The file effective rights test is used to check the effective rights associated with Windows files. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The fileeffectiverights_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a fileeffectiverights_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="fileeffectiverights_object"></a><  ~~fileeffectiverights_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the fileeffectiverights_object. This object uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new object was created to use trustee SIDs, which are unique. See the fileeffectiverights53_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The fileeffectiverights_object element is used by a file effective rights test to define the objects used to evalutate against the specified state. The fileeffectiverights_object will collect directories and all Windows file types (FILE_TYPE_CHAR, FILE_TYPE_DISK, FILE_TYPE_PIPE, FILE_TYPE_REMOTE, and FILE_TYPE_UNKNOWN). Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A fileeffectiverights_object is defined as a combination of a Windows file and trustee name. The file represents the file to be evaluated while the trustee name represents the account (SID) to check effective rights of. If multiple files or SIDs are matched by either reference, then each possible combination of file and SID is a matching file effective rights object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the FileEffectiveRightsBehaviors complex type for more information about specific behaviors.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:FileEffectiveRightsBehaviors](#FileEffectiveRightsBehaviors)  (0..1) |  
|||  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path.</div>|  
| trustee_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
  
## <a name="fileeffectiverights_state"></a><  ~~fileeffectiverights_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the fileeffectiverights53_state. This state uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new state was created to use trustee SIDs, which are unique. See the fileeffectiverights53_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The fileeffectiverights_state element defines the different rights that can be associated with a given fileeffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename element specifies the name of the file.</div>|  
| trustee_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The unique name associated with a particular security identifier (SID). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| standard_delete | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| standard_synchronize | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| file_read_data | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to read data from the file, or if a directory, grants the right to list the contents of the directory.</div>|  
| file_write_data | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to write data to the file, or if a directory, grants the right to add a file to the directory.</div>|  
| file_append_data | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to append data to the file, or if a directory, grants the right to add a sub-directory to the directory.</div>|  
| file_read_ea | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to read extended attributes.</div>|  
| file_write_ea | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to write extended attributes.</div>|  
| file_execute | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to execute a file, or if a directory, the right to traverse the directory.</div>|  
| file_delete_child | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Right to delete a directory and all the files it contains (its children), even if the files are read-only.</div>|  
| file_read_attributes | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to read file, or directory, attributes.</div>|  
| file_write_attributes | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Grants the right to change file, or directory, attributes.</div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="FileEffectiveRightsBehaviors"></a>==  ~~FileEffectiveRightsBehaviors~~  ==

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the FileEffectiveRightsBehaviors53. The FileEffectiveRightsBehaviors complex type is used by the fileeffectiverights_test which uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. This new test utilizes the FileEffectiveRightsBehaviors53 complex type, and as a result, the FileEffectiveRightsBehaviors complex type is no longer needed.<br />**Comment:** This complex type has been deprecated and will be removed in version 6.0 of the language.<br />

The FileEffectiveRightsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the fileeffectiverights_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The FileEffectiveRightsBehaviors extend the win-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** [win-def:FileBehaviors](#FileBehaviors) 

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group SID might be to retrieve all the user trustee names that are members of the group, but not the group trustee name itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="group_test"></a><  ~~group_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the group_sid_test. This test uses trustee names for identifying accounts on the system. Trustee names are not unique and the group_sid_test, which uses trustee SIDs which are unique, should be used instead. See the group_sid_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The group_test allows the different users and subgroups, that directly belong to specific groups (identified by name), to be tested. When the group_test collects the groups on the system, it should only include the local and built-in group accounts and not domain group accounts. However, it is important to note that domain group accounts can still be looked up. Also, note that the subgroups of the group will not be resolved to find indirect user and group members. If the subgroups need to be resolved, it should be done using the sid_object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a group_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="group_object"></a><  ~~group_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the group_sid_object. This object uses trustee names for identifying accounts on the system. Trustee names are not unique and the group_sid_object, which uses trustee SIDs which are unique, should be used instead. See the group_sid_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The group_object element is used by a group test to define the specific group(s) (identified by name) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| group | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The group element holds a string that represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, the group should be identified in the form: "domain\group name". In a local environment, the group should be identified in the form: "computer name\group name". If the group is a built-in group, the group should be identified in the form: "group name" without a domain component.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="group_state"></a><  ~~group_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the group_sid_state. This state uses trustee names for identifying accounts on the system. Trustee names are not unique and the group_sid_state, which uses trustee SIDs which are unique, should be used instead. See the group_sid_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The group_state element enumerates the different users and subgroups directly associated with a Windows group. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| group | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The group element holds a string that represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.</div>|  
| user | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The user element holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name". For built-in accounts on the system, use the user name without a domain.</div><div>The user element can be included multiple times in a system characteristic item in order to record that a group contains a number of different users. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like user that refer to items that can occur an unbounded number of times.</div>|  
| subgroup | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A string that represents the name of a particular subgroup in the specified group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, the subgroups should be identified in the form: "domain\group name". In a local environment, the subgroups should be identified in the form: "computer name\group name". If the subgroups are built-in groups, the subgroups should be identified in the form: "group name" without a domain component.</div><div>The subgroup element can be included multiple times in a system characteristic item in order to record that a group contains a number of different subgroups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like the subgroup entity that refer to items that can occur an unbounded number of times.</div>|  
  
______________
  
## <a name="group_sid_test"></a>< group_sid_test >

The group_sid_test allows the different users and subgroups, that directly belong to specific groups (identified by SID), to be tested. When the group_sid_test collects the group SIDs on the system, it should only include the local and built-in group SIDs and not domain group SIDs. However, it is important to note that domain group SIDs can still be looked up. Also, note that the subgroups of the group will not be resolved to find indirect user and group members. If the subgroups need to be resolved, it should be done using the sid_sid_object. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a group_sid_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="group_sid_object"></a>< group_sid_object >

The group_sid_object element is used by a group_test to define the specific group(s) (identified by SID) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| group_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The group_sid entity holds a string that represents the SID of a particular group.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="group_sid_state"></a>< group_sid_state >

The group_state element enumerates the different users and subgroups directly associated with a Windows group. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| group_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The group_sid entity holds a string that represents the SID of a particular group.</div>|  
| user_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The user_sid entity holds a string that represents the SID of a particular user. This entity can be included multiple times in a system characteristic item in order to record that a group contains a number of different users. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like user that refer to items that can occur an unbounded number of times.</div>|  
| subgroup_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The subgroup_sid entity holds a string that represents the SID of particular subgroup in the specified group. This entity can be included multiple times in a system characteristic item in order to record that a group contains a number of different subgroups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like subgroup_sid that refer to items that can occur an unbounded number of times.</div>|  
  
______________
  
## <a name="interface_test"></a>< interface_test >

The interface test enumerate various attributes about the interfaces on a system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an interface_object and the optional state element specifies the interface information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="interface_object"></a>< interface_object >

The interface_object element is used by an interface test to define the specific interfaces(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An interface object consists of a single name entity that identifies which interface is being specified. For help understanding this object, see the MIB_IFROW and MIB_IPADDRROW structures.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name element specifies the name of an interface.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="interface_state"></a>< interface_state >

The interface_state element enumerates the different properties associate with a Windows interface. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name element specifies the name of an interface.</div>|  
| index | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The index element specifies index that identifies the interface.</div>|  
| type | [win-def:EntityStateInterfaceTypeType](#EntityStateInterfaceTypeType)  (0..1) |  
||<div>The type element specifies the type of interface which is limited to certain set of values.</div>|  
| hardware_addr | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The hardware_addr entity is the hardware or MAC address of the physical network card. MAC addresses should be formatted according to the IEEE 802-2001 standard which states that a MAC address is a sequence of six octet values, separated by hyphens, where each octet is represented by two hexadecimal digits. Uppercase letters should also be used to represent the hexadecimal digits A through F.</div>|  
| inet_addr | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>The inet_addr element specifies the IP address. Note that the IP address can be IPv4 or IPv6. If the IP address is an IPv6 address, this entity will be expressed as an IPv6 address prefix using CIDR notation and the netmask entity will not be collected.</div>|  
| broadcast_addr | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>The broadcast_addr element specifies the broadcast address. A broadcast address is typically the IP address with the host portion set to either all zeros or all ones. Note that the IP address can be IPv4 or IPv6.</div>|  
| netmask | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>The netmask element specifies the subnet mask for the IP address. Note that if the inet_addr entity contains an IPv6 address prefix, this entity will not be collected.</div>|  
| addr_type | [win-def:EntityStateAddrTypeType](#EntityStateAddrTypeType)  (0..1) |  
||<div>The addr_type element specifies the address type or state of a specific interface. Each interface can be associated with more than one value meaning the addr_type element can occur multiple times in a system characteristic item. Note that the entity_check attribute associated with EntityStateAddrTypeType guides the evaluation of unbounded entities like addr_type.</div>|  
  
______________
  
## <a name="junction_test"></a>< junction_test >

The junction_test is used to obtain canonical path information for junctions (reparse points) on Windows filesystems.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="junction_object"></a>< junction_object >

The junction_object element is used by a junction_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A junction_object consists of a path entity that contains the path to a symbolic link file. The resulting item identifies the canonical path of the link target (followed to its final destination, if there are intermediate links), an error if the link target does not exist or is a circular link (e.g., a link to itself). If the directory located at path is not a junction, or if there is no directory located at the path, then any resulting item would itself have a status of does not exist.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:FileBehaviors](#FileBehaviors)  (0..1) |  
|||  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies the path to the junction.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="junction_state"></a>< junction_state >

The junction_state element defines a value used to evaluate the result of a specific junction_object item.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the path used to create the object.</div>|  
| canonical_path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the canonical path for the target of a Windows junction specified by the path.</div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
______________
  
## <a name="license_test"></a>< license_test >

The license_test is used to check the content of a particular entry in the Windows registry HKLM\SYSTEM\CurrentControlSet\Control\ProductOptions key, ProductPolicy value. Access to this data is exposed by the functions NtQueryLicenseValue (and also, in version 6.0 and higher, ZwQueryLicenseValue) in NTDLL.DLL.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="license_object"></a>< license_object >

The license_object element is used by a license_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name entity provides the address of a UNICODE_STRING structure for the name of the value for which data is desired, for example, TabletPCPlatformInput-core-EnableTouchUI.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="license_state"></a>< license_state >

The license_state element defines the different information that can be found in the Windows license registry value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name entity corresponds to the license_object name entity.</div>|  
| type | [win-def:EntityStateRegistryTypeType](#EntityStateRegistryTypeType)  (0..1) |  
||<div>The optional type entity provides the type of data that is expected: REG_SZ (0x01) for a string; REG_BINARY (0x03) for binary data; REG_DWORD (0x04) for a dword.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value entity allows a test to be written against the value held within the specified license entry(-ies). If the value being tested is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the value being tested is of type REG_DWORD, then the datatype attribute should be set to 'int' and the value entity should represent the data as an integer. If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string.</div><div>Note that if the intent is to test a version number held in the license entry (as a reg_sz) then instead of setting the datatype to 'string', the datatype can be set to 'version'. This allows tools performing the evaluation to know how to perform less than and greater than operations correctly.</div>|  
  
______________
  
## <a name="lockoutpolicy_test"></a>< lockoutpolicy_test >

The lockout policy test enumerates various attributes associated with lockout information for users and global groups in the security database. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a lockoutpolicy_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="lockoutpolicy_object"></a>< lockoutpolicy_object >

The lockoutpolicy_object element is used by a lockout policy test to define those objects to evaluated based on a specified state. There is actually only one object relating to lockout policy and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check lockout policy will reference the same lockoutpolicy_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="lockoutpolicy_state"></a>< lockoutpolicy_state >

The lockoutpolicy_state element specifies the various attributes associated with lockout information for users and global groups in the security database. A lockout policy test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| force_logoff | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies, in seconds (from a DWORD), the amount of time between the end of the valid logon time and the time when the user is forced to log off the network. A value of TIMEQ_FOREVER (max DWORD value, 4294967295) indicates that the user is never forced to log off. A value of zero indicates that the user will be forced to log off immediately when the valid logon time expires. See the USER_MODALS_INFO_0 structure returned by a call to NetUserModalsGet().</div>|  
| lockout_duration | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies, in seconds, how long a locked account remains locked before it is automatically unlocked. See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().</div>|  
| lockout_observation_window | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the maximum time, in seconds, that can elapse between any two failed logon attempts before lockout occurs. See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().</div>|  
| lockout_threshold | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the number of invalid password authentications that can occur before an account is marked "locked out." See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().</div>|  
  
______________
  
## <a name="metabase_test"></a>< metabase_test >

The metabase test is used to check information found in the Windows metabase. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a metabase_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="metabase_object"></a>< metabase_object >

The metabase_object element is used by a metabase test to define the specific metabase item(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A metabase object defines the key and id of the item(s).

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The key element specifies a metabase key.</div>|  
| id | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The id element specifies a particular object under the metabase key. If the xsi:nil attribute is set to true, then the object being specified is the higher level key. In this case, the id element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match, says to collect every id under a given key. The most likely use for xsi:nil within a metabase object is when checking for the existence of a particular key, without regards to the different ids associated with it.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="metabase_state"></a>< metabase_state >

The metabase_state element defines the different metadata associate with a metabase item. This includes the name, user type, data type, and the actual data. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The key element specifies a metabase key.</div>|  
| id | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The id element specifies a particular object under the metabase key.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name element describes the name of the specified metabase object. This is intended to be the string name of the constant from IIScnfg.h, e.g., MD_KEY_TYPE.</div>|  
| user_type | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The user_type element is an unsigned 32-bit integer (DWORD) that specifies the user type of the data. See the METADATA_RECORD structure.</div>|  
| data_type | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The data_type element identifies the type of data in the metabase entry. See the METADATA_RECORD structure.</div>|  
| data | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The actual data of the named item under the specified metabase key</div>|  
  
______________
  
## <a name="ntuser_test"></a>< ntuser_test >

The ntuser test is used to check metadata associated with Windows ntuser.dat files. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a ntuser_object and the optional state element specifies the ntuser data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="ntuser_object"></a>< ntuser_object >

The ntuser_object element is used to specify which metadata should be collected from a Windows ntuser.dat file. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:NTUserBehaviors](#NTUserBehaviors)  (0..1) |  
|||  
| key | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data is not neccessary for the ntuser test and would normally reside in the HKCU hive.</div>|  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name element describes the name assigned to a value associated with a specific registry key. If an empty string is specified for the name element, the registry key's default value should be collected. If the xsi:nil attribute is set to true, then the object being specified is the higher level key. In this case, the name element should not be collected or used in analysis. Setting xsi:nil equal to true on an element is different than using a .* pattern match. A .* pattern match says to collect every name under a given hive/key. The most likely use for xsi:nil within a registry object is when checking for the existence of a particular key, without regards to the different names associated with it.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="ntuser_state"></a>< ntuser_state >

The ntuser_state element defines the different metadata associated with a ntuser.dat file. This includes the key, name, type, and value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element describes a registry key normally found in the HKCU hive to be tested.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element describes the name of a value of a registry key.</div>|  
| sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element holds a string that represents the SID of a particular user.</div>|  
| username | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The username entity holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name".</div>|  
| account_type | [win-def:EntityStateNTUserAccountTypeType](#EntityStateNTUserAccountTypeType)  (0..1) |  
||<div>The account_type element describes if the user account is a local account or domain account.</div>|  
| logged_on | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The logged_on element describes if the user account is currently logged on to the computer.</div>|  
| enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The enabled element describes if the user account is enabled or disabled.</div>|  
| date_modified | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Time of last modification of file. The integer should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).</div>|  
| days_since_modified | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number of days since the ntuser.dat file was last modified. The value should be rounded up to the next whole integer.</div>|  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element describes the filepath of the ntuser.dat file.</div>|  
| last_write_time | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The last time that the key or any of its value entries was modified. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). Last write time can be queried on a key or name. When collecting only information about a registry key the last write time will be the time the key or any of its entiries was written to. When collecting only information about a registry name the last write time will be the time the name was written to. See the RegQueryInfoKey function lpftLastWriteTime.</div>|  
| type | [win-def:EntityStateRegistryTypeType](#EntityStateRegistryTypeType)  (0..1) |  
||<div>The type entity allows a test to be written against the registy type associated with the specified registry key(s). Please refer to the documentation on the EntityStateRegistryTypeType for more information about the different valid individual types.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value entity allows a test to be written against the value held within the specified registry key(s). If the value being tested is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the value being tested is of type REG_DWORD or REG_QWORD, then the datatype attribute should be set to 'int' and the value entity should represent the data as an integer. If the value being tested is of type REG_EXPAND_SZ, then the datatype attribute should be set to 'string' and the pre-expanded string should be represented by the value entity. If the value being tested is of type REG_MULTI_SZ, then only a single string (one of the multiple strings) should be tested using the value entity with the datatype attribute set to 'string'. In order to test multiple values, multiple OVAL registry tests should be used. If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string.</div><div>Note that if the intent is to test a version number held in the registry (as a reg_sz) then instead of setting the datatype to 'string', the datatype can be set to 'version'. This allows tools performing the evaluation to know how to perform less than and greater than operations correctly.</div>|  
  
## <a name="NTUserBehaviors"></a>== NTUserBehaviors ==

The NTUserBehaviors complex type defines a number of behaviors that allow a more detailed definition of the ntuser_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	**include_default** xsd:boolean (optional -- default='false')  
'include_default' defines if the Window's local Default ntuser.dat file is included in the results. By default, this file is not included in the results.  
The Default User's directory which contains the ntuser.dat file is stored in the registry at 'HKEY_LOCAL_MACHINE/SOFTWARE/Microsoft/Windows NT/CurrentVersion/ProfileList/Default'.  
*	**max_depth** Restriction of xsd:integer (optional -- default='-1')  
'max_depth' defines the maximum depth of recursion to perform when a recurse_direction is specified. A value of '0' is equivalent to no recursion, '1' means to step only one directory level up/down, and so on. The default value is '-1' meaning no limitation. For a 'max_depth' of -1 or any value of 1 or more the starting key must be considered in the recursive search.  
Note that the default recurse_direction behavior is 'none' so even though max_depth specifies no limitation by default, the recurse_direction behavior turns recursion off.  
Note that this behavior only applies with the equality operation on the key entity.  
*	**recurse_direction** Restriction of xsd:string (optional -- default='none') ('none', 'up', 'down')  
'recurse_direction' defines the direction, either 'up' to parent keys, or 'down' into child keys to recursively search for registry keys. When recursing up or down, one is limited by the max_depth behavior. Note that it is not an error if max_depth specifies a certain level of recursion and that level does not exist. Recursing should only go as deep as available. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the key entity.  
*	**windows_view** Restriction of xsd:string (optional -- default='64_bit') ('32_bit', '64_bit')  
64-bit versions of Windows provide an alternate file system and registry views to 32-bit applications. This behavior allows the OVAL Object to specify which view should be examined. This behavior only applies to 64-bit Windows, and must not be applied on other platforms.  
Note that the values have the following meaning: '64_bit' – Indicates that the 64-bit view on 64-bit Windows operating systems must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. '32_bit' – Indicates that the 32-bit view must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. It is recommended that the corresponding 'windows_view' entity be set on the OVAL Items that are collected when this behavior is used to distinguish between the OVAL Items that are collected in the 32-bit or 64-bit views.  
  
______________
  
## <a name="passwordpolicy_test"></a>< passwordpolicy_test >

The password policy test is used to check specific policy associated with passwords. It is important to note that these policies are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a passwordpolicy_object and the optional state element specifies the metadata to check.

NOTE: This information is stored in the SAM or Active Directory but is encrypted or hidden so the registry_test and activedirectory57_test are of no use. If this can be figured out, then the password_policy test is not needed.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="passwordpolicy_object"></a>< passwordpolicy_object >

The passwordpolicy_object element is used by a password policy test to define those objects to evaluated based on a specified state. There is actually only one object relating to password policy and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check password policy will reference the same passwordpolicy_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="passwordpolicy_state"></a>< passwordpolicy_state >

The passwordpolicy_state element specifies the various policies associated with passwords. A password policy test will reference a specific instance of this state that defines the exact settings that need to be evaluated.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| max_passwd_age | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies, in seconds (from a DWORD), the maximum allowable password age. A value of TIMEQ_FOREVER (max DWORD value, 4294967295) indicates that the password never expires. The minimum valid value for this element is ONE_DAY (86400). See the USER_MODALS_INFO_0 structure returned by a call to NetUserModalsGet().</div>|  
| min_passwd_age | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the minimum number of seconds that can elapse between the time a password changes and when it can be changed again. A value of zero indicates that no delay is required between password updates.</div>|  
| min_passwd_len | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the minimum allowable password length. Valid values for this element are zero through PWLEN.</div>|  
| password_hist_len | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the length of password history maintained. A new password cannot match any of the previous usrmod0_password_hist_len passwords. Valid values for this element are zero through DEF_MAX_PWHIST.</div>|  
| password_complexity | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>A boolean value that signifies whether passwords must meet the complexity requirements put forth by the operating system.</div>|  
| reversible_encryption | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Determines whether or not passwords are stored using reversible encryption.</div>|  
| anonymous_name_lookup | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Determines whether or not an anonymous user may query the local LSA policy.</div>|  
  
______________
  
## <a name="peheader_test"></a>< peheader_test >

The peheader_test is used to check data from a Portable Executable file header. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a peheader_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="peheader_object"></a>< peheader_object >

The peheader_object is used by a peheader_test to define the specific file(s) whose headers should be evaluated. The peheader_object will collect header information from PE files. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A peheader_object defines the path and filename or complete filepath of the file(s). In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the PEHeaderBehaviors complex type for more information about specific behaviors.

The set of files whose headers should be evaluated may be identified with either a complete filepath or a path and filename. Only one of these options may be selected.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:FileBehaviors](#FileBehaviors)  (0..1) |  
|||  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a PE file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a PE file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of a PE file to evaluate.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="peheader_state"></a>< peheader_state >

The peheader_state defines the different metadata associated with the header of a PE file. Please refer to the individual elements in the schema for more details about what each represents. For more information, please see the documentation for the IMAGE_FILE_HEADER and IMAGE_OPTIONAL_HEADER structures.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a PE file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a PE file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filename element specifies the name of a PE file to evaluate.</div>|  
| header_signature | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The header_signature entity is the signature of the header.</div>|  
| target_machine_type | [win-def:EntityStatePeTargetMachineType](#EntityStatePeTargetMachineType)  (0..1) |  
||<div>The target_machine_type entity is an unsigned 16-bit integer (WORD) that specifies the target architecture that the file is intended for.</div>|  
| number_of_sections | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number_of_sections entity is an unsigned 16-bit integer (WORD) that specifies the number of sections in the file.</div>|  
| time_date_stamp | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the time that the linker produced the file. The value is represented as the number of seconds since January 1, 1970, 00:00:00.</div>|  
| pointer_to_symbol_table | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The pointer_to_symbol_table entity is an unsigned 32-bit integer (DWORD) that specifies the file offset of the COFF symbol table.</div>|  
| number_of_symbols | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number_of_symbols entity is an unsigned 32-bit integer (DWORD) that specifies the number of symbols in the COFF symbol table.</div>|  
| size_of_optional_header | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The size_of_optional_header entity is an unsigned 32-bit integer (DWORD) that specifies the size of an optional header in bytes.</div>|  
| image_file_relocs_stripped | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_relocs_stripped entity is a boolean value that specifies if the relocation information is stripped from the file.</div>|  
| image_file_executable_image | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_executable_image entity is a boolean value that specifies if the file is executable.</div>|  
| image_file_line_nums_stripped | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_line_nums_stripped entity is a boolean value that specifies if the line numbers are stripped from the file.</div>|  
| image_file_local_syms_stripped | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_local_syms_stripped entity is a boolean value that specifies if the local symbols are stripped from the file.</div>|  
| image_file_aggresive_ws_trim | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_aggressive_ws_trim entity is a boolean value that specifies that the working set should be aggressively trimmed.</div>|  
| image_file_large_address_aware | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_large_address_aware entity is a boolean value that specifies that the application can handle addresses larger than 2GB.</div>|  
| image_file_16bit_machine | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_16bit_machine entity is a boolean value that specifies that the computer supports 16-bit words.</div>|  
| image_file_bytes_reversed_lo | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_bytes_reversed_lo entity is a boolean value that specifies that the bytes of the word are reversed.</div>|  
| image_file_32bit_machine | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_32bit_machine entity is a boolean value that specifies that the computer supports 32-bit words.</div>|  
| image_file_debug_stripped | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_debug_stripped entity is a boolean value that specifies that the debugging information is stored separately in a .dbg file.</div>|  
| image_file_removable_run_from_swap | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_removable_run_from_swap entity is a boolean value that specifies that the image is on removable media, copy and run from the swap file.</div>|  
| image_file_system | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_system entity is a boolean value that specifies that the image is a system file.</div>|  
| image_file_dll | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_dll entity is a boolean value that specifies that the image is a DLL.</div>|  
| image_file_up_system_only | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_up_system_only entity is a boolean value that specifies that the file should only be run on a uniprocessor computer.</div>|  
| image_file_bytes_reveresed_hi | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The image_file_bytes_reversed_hi entity is a boolean value that specifies that the bytes of the word are reversed.</div>|  
| magic_number | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The magic_number entity is an unsigned 16-bit integer (WORD) that specifies the state of the image file.</div>|  
| major_linker_version | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The major_linker_version entity is a BYTE that specifies the major version of the linker that produced the file.</div>|  
| minor_linker_version | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The minor_linker_version entity is a BYTE that specifies the minor version of the linker that produced the file.</div>|  
| size_of_code | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The size_of_code entity is an unsigned 32-bit integer (DWORD) that specifies the total size of all of the code sections.</div>|  
| size_of_initialized_data | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The size_of_initialized_data entity is an unsigned 32-bit integer (DWORD) that specifies the total size of all of the sections that are composed of initialized data.</div>|  
| size_of_uninitialized_data | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The size_of_uninitialized_data entity is an unsigned 32-bit integer (DWORD) that specifies the total size of all of the sections that are composed of uninitialized data.</div>|  
| address_of_entry_point | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The address_of_entry_point entity is an unsigned 32-bit integer (DWORD) that specifies the address where the loader will begin execution.</div>|  
| base_of_code | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The base_of_code entity is an unsigned 32-bit integer (DWORD) that specifies the relative virtual address where the file's code section begins.</div>|  
| base_of_data | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The base_of_data entity is an unsigned 32-bit integer (DWORD) that specifies the relative virtual address where the file's data section begins.</div>|  
| image_base_address | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The image_base_address entity is an unsigned 32-bit integer (DWORD) that specifies the preferred address fo the first byte of the image when it is loaded into memory.</div>|  
| section_alignment | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The section_alignment entity is an unsigned 32-bit integer (DWORD) that specifies the alignment of the sections loaded into memory.</div>|  
| file_alignment | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The file_alignment entity is an unsigned 32-bit integer (DWORD) that specifies the alignment of the raw data of sections in the image file.</div>|  
| major_operating_system_version | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The major_operating_system_version entity is an unsigned 16-bit integer (WORD) that specifies the major version of the operating system required to use this executable.</div>|  
| minor_operating_system_version | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The minor_operating_system_version entity is an unsigned 16-bit integer (WORD) that specifies the minor version of the operating system required to use this executable.</div>|  
| major_image_version | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The major_image_version entity is an unsigned 16-bit integer (WORD) that specifies the major version number of the image.</div>|  
| minor_image_version | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The minor_image_version entity is an unsigned 32-bit integer (DWORD) that specifies the minor version number of the image.</div>|  
| major_subsystem_version | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The major_subsystem_version entity is an unsigned 16-bit integer (WORD) that specifies the major version of the subsystem required to run the executable.</div>|  
| minor_susbsystem_version | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The minor_subsystem_version entity is an unsigned 16-bit integer (WORD) that specifies the minor version of the subsystem required to run the executable.</div>|  
| size_of_image | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The size_of_image entity is an unsigned 32-bit integer (DWORD) that specifies the total size of the image including all of the headers.</div>|  
| size_of_headers | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The size_of_headers entity is an unsigned 32-bit integer (DWORD) that specifies the total combined size of the MS-DOS stub, PE header, and the section headers.</div>|  
| checksum | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The checksum entity is an unsigned 32-bit integer (DWORD) that specifies the checksum of the image file.</div>|  
| subsystem | [win-def:EntityStatePeSubsystemType](#EntityStatePeSubsystemType)  (0..1) |  
||<div>The subsystem entity is an unsigned 32-bit integer (DWORD) that specifies the type of subsystem that the executable uses for its user interface.</div>|  
| dll_characteristics | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The dll_characteristics entity is an unsigned 32-bit integer (DWORD) that specifies the set of flags indicating the circumstances under which a DLL's initialization function will be called..</div>|  
| size_of_stack_reserve | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to reserve for the stack.</div>|  
| size_of_stack_commit | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to commit for the stack.</div>|  
| size_of_heap_reserve | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to reserve for the local heap.</div>|  
| size_of_heap_commit | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to commit for the local heap.</div>|  
| loader_flags | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The loader_flags entity is an unsigned 32-bit integer (DWORD) that specifies the loader flags of the header.</div>|  
| number_of_rva_and_sizes | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number_of_rva_and_sizes entity is an unsigned 32-bit integer (DWORD) that specifies the number of directory entries in the remainder of the optional header.</div>|  
| real_number_of_directory_entries | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The real_number_of_directory_entries entity is the real number of data directory entries in the remainder of the optional header calculated by enumerating the directory entries.</div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
______________
  
## <a name="port_test"></a>< port_test >

The port test is used to check information about the available ports on a Windows system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a port_object and the optional state element specifies the port information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="port_object"></a>< port_object >

The port_object element is used by a port test to define the specific port(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A port object defines the local address, port number, and protocol of the port(s).

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| local_address | [oval-def:EntityObjectIPAddressStringType](oval-definitions-schema.md#EntityObjectIPAddressStringType)  (1..1) |  
||<div>This element specifies the local IP address the listening port is bound to. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>This element specifies the number assigned to the local listening port.</div>|  
| protocol | [win-def:EntityObjectProtocolType](#EntityObjectProtocolType)  (1..1) |  
||<div>This element specifies the type of listening port. It is restricted to either TCP or UDP.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="port_state"></a>< port_state >

The port_state element defines the different metadata associate with a Windows port. This includes the local address, port number, protocol, and pid. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| local_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>This element specifies the local IP address the listening port is bound to. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This element specifies the number assigned to the local listening port.</div>|  
| protocol | [win-def:EntityStateProtocolType](#EntityStateProtocolType)  (0..1) |  
||<div>This element specifies the type of listening port. It is restricted to either TCP or UDP.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The id given to the process that is associated with the specified listening port.</div>|  
| foreign_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_port | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this is usually '0'.</div>|  
  
______________
  
## <a name="printereffectiverights_test"></a>< printereffectiverights_test >

The printer effective rights test is used to check the effective rights associated with Windows printers. The printereffectiverights_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a printereffectiverights_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="printereffectiverights_object"></a>< printereffectiverights_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:PrinterEffectiveRightsBehaviors](#PrinterEffectiveRightsBehaviors)  (0..1) |  
|||  
| printer_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The printer_name element describes a printer that a user may have rights on.</div>|  
| trustee_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the printer's Security Descriptor. The scope is limited here to ensure that it is possible to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="printereffectiverights_state"></a>< printereffectiverights_state >

The printereffectiverights_state element defines the different rights that can be associated with a given printereffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| printer_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies the name of the printer.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| standard_synchronize | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| printer_access_administer | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| printer_access_use | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| job_access_administer | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| job_access_read | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
  
## <a name="PrinterEffectiveRightsBehaviors"></a>== PrinterEffectiveRightsBehaviors ==

The PrinterEffectiveRightsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the pritnereffectiverights_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group trustee name might be to retrieve all the user trustee names that are members of the group, but not the group trustee name itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="process_test"></a><  ~~process_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** The process_test has been deprecated and replaced by the process58_test. The command line of a process cannot be used to uniquely identify a process. As a result, the pid entity was added to the process58_object. Please see the process58_test for additional information.<br />

The process_test is used to check information found in the Windows processes. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a process_object and the optional state element references a process_state element that specifies the process information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="process_object"></a><  ~~process_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** The process_object has been deprecated and replaced by the process58_object. The command line of a process cannot be used to uniquely identify a process. As a result, the pid entity was added to the process58_object. Please see the process58_object for additional information.<br />

The process_object element is used by a process test to define the specific process(es) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A process_object defines the command line used to start the process(es).

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| command_line | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The command_line entity is the string used to start the process. This includes any parameters that are part of the command line.</div>|  
  
## <a name="process_state"></a><  ~~process_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.8** :small_red_triangle: <br />**Reason:** The process_state has been deprecated and replaced by the process58_state. The command line of a process cannot be used to uniquely identify a process. As a result, the pid entity was added to the process58_object. Please see the process58_state for additional information.<br />

The process_state element defines the different metadata associate with a Windows process. This includes the command line, pid, ppid, image path, and current directory. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| command_line | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The command_line entity is the string used to start the process. This includes any parameters that are part of the command line.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The id given to the process that is created for a specified command line.</div>|  
| ppid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The id given to the parent of the process that is created for the specified command line</div>|  
| priority | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>The base priority of the process. The priority value range is from 0 to 31.</div>|  
| image_path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The image_path entity contains the name of the executable file in question.</div>|  
| current_dir | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The current_directory entity represents the current path to the executable.</div>|  
  
______________
  
## <a name="process58_test"></a>< process58_test >

The process58_test is used to check information found in the Windows processes. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a process58_object and the optional state element references a process58_state element that specifies the process information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="process58_object"></a>< process58_object >

The process58_object element is used by a process58_test to define the specific process(es) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A process58_object defines the command line used to start the process(es)and pid.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| command_line | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The command_line entity is the string used to start the process. This includes any parameters that are part of the command line. Use xsi:nil='true' to disregard (and permit processes with non-existent commane_lines, such as the System process).</div>|  
| pid | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The id given to the process that is created for a specified command line.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="process58_state"></a>< process58_state >

The process58_state element defines the different metadata associate with a Windows process. This includes the command line, pid, ppid, image path, and current directory. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| command_line | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The command_line entity is the string used to start the process. This includes any parameters that are part of the command line.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The id given to the process that is created for a specified command line.</div>|  
| ppid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The id given to the parent of the process that is created for the specified command line</div>|  
| priority | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>The base priority of the process. The priority value range is from 0 to 31.</div>|  
| image_path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The image_path entity represents the name of the executable file for the process.</div>|  
| current_dir | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The current_dir entity represents the current path to the executable file for the process.</div>|  
| creation_time | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The creation_time entity represents the creation time of the process. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). See the GetProcessTimes function lpCreationTime.</div>|  
| dep_enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The dep_enabled entity represents whether or not data execution prevention (DEP) is enabled. See the GetProcessDEPPolicy lpFlags.</div>|  
| primary_window_text | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The primary_window_text entity represents the title of the primary window of the process. See the GetWindowText function.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the process.</div>|  
  
______________
  
## <a name="registry_test"></a>< registry_test >

The registry test is used to check metadata associated with Windows registry key. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a registry_object and the optional state element specifies the registry data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="registry_object"></a>< registry_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:RegistryBehaviors](#RegistryBehaviors)  (0..1) |  
|||  
| hive | [win-def:EntityObjectRegistryHiveType](#EntityObjectRegistryHiveType)  (1..1) |  
||<div>The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS, HKEY_LOCAL_MACHINE, and HKEY_USERS.</div>|  
| key | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element. If the xsi:nil attribute is set to true, then the object being specified is the higher level hive. In this case, the key element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match. A .* pattern match says to collect every key under a given hive.</div>|  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name element describes the name assigned to a value associated with a specific registry key. If an empty string is specified for the name element, the registry key's default value should be collected. If the xsi:nil attribute is set to true, then the object being specified is the higher level hive/key. In this case, the name element should not be collected or used in analysis. Setting xsi:nil equal to true on an element is different than using a .* pattern match. A .* pattern match says to collect every name under a given hive/key. The most likely use for xsi:nil within a registry object is when checking for the existence of a particular key, without regards to the different names associated with it.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="registry_state"></a>< registry_state >

The registry_state element defines the different metadata associate with a Windows registry key. This includes the hive, key, name, type, and value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hive | [win-def:EntityStateRegistryHiveType](#EntityStateRegistryHiveType)  (0..1) |  
||<div>The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS,HKEY_LOCAL_MACHINE, and HKEY_USERS.</div>|  
| key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element describes a registry key to be tested. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element describes the name of a value of a registry key. If the xsi:nil attribute is set to true, then the name element should not be used in analysis.</div>|  
| last_write_time | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The last time that the key or any of its value entries were modified. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). Last write time can be queried on any key, with hives being classified as a type of key. When collecting only information about a registry hive or key the last write time will be the time the key or any of its entries were modified. When collecting only information about a registry name the last write time will be the time the containing key was modified. Thus when collecting information about a registry name, the last write time does not correlate directly to the specified name. See the RegQueryInfoKey function lpftLastWriteTime.</div>|  
| type | [win-def:EntityStateRegistryTypeType](#EntityStateRegistryTypeType)  (0..1) |  
||<div>The type entity allows a test to be written against the registy type associated with the specified registry key(s). Please refer to the documentation on the EntityStateRegistryTypeType for more information about the different valid individual types.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value entity allows a test to be written against the value held within the specified registry key(s). If the value being tested is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the value being tested is of type REG_DWORD, REG_QWORD, REG_DWORD_LITTLE_ENDIAN, REG_DWORD_BIG_ENDIAN, and REG_QWORD_LITTLE_ENDIAN then the datatype attribute should be set to 'int' and the value entity should represent the data as an unsigned integer. DWORD and QWORD values represnt unsigned 32-bit and 64-bit integers, respectively. If the value being tested is of type REG_EXPAND_SZ, then the datatype attribute should be set to 'string' and the pre-expanded string should be represented by the value entity. If the value being tested is of type REG_MULTI_SZ, then only a single string (one of the multiple strings) should be tested using the value entity with the datatype attribute set to 'string'. In order to test multiple values, multiple OVAL registry tests should be used. If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string. If the value being tested is of type REG_LINK, then the datatype attribute should be set to 'string' and the null-terminated Unicode string should be represented by the value entity.</div><div>Note that if the intent is to test a version number held in the registry (as a reg_sz) then instead of setting the datatype to 'string', the datatype can be set to 'version'. This allows tools performing the evaluation to know how to perform less than and greater than operations correctly.</div>|  
| expanded_value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>For registry values of type REG_EXPAND_SZ, this entity contains the expanded value. Otherwise, it should not exist.</div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="RegistryBehaviors"></a>== RegistryBehaviors ==

The RegistryBehaviors complex type defines a number of behaviors that allow a more detailed definition of the registry_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	**max_depth** Restriction of xsd:integer (optional -- default='-1')  
'max_depth' defines the maximum depth of recursion to perform when a recurse_direction is specified. A value of '0' is equivalent to no recursion, '1' means to step only one directory level up/down, and so on. The default value is '-1' meaning no limitation. For a 'max_depth' of -1 or any value of 1 or more the starting key must be considered in the recursive search.  
Note that the default recurse_direction behavior is 'none' so even though max_depth specifies no limitation by default, the recurse_direction behavior turns recursion off.  
Note that this behavior only applies with the equality operation on the key entity.  
*	**recurse_direction** Restriction of xsd:string (optional -- default='none') ('none', 'up', 'down')  
'recurse_direction' defines the direction, either 'up' to parent keys, or 'down' into child keys to recursively search for registry keys. When recursing up or down, one is limited by the max_depth behavior. Note that it is not an error if max_depth specifies a certain level of recursion and that level does not exist. Recursing should only go as deep as available. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the key entity.  
*	**windows_view** Restriction of xsd:string (optional -- default='64_bit') ('32_bit', '64_bit')  
64-bit versions of Windows provide an alternate file system and registry views to 32-bit applications. This behavior allows the OVAL Object to specify which view should be examined. This behavior only applies to 64-bit Windows, and must not be applied on other platforms.  
Note that the values have the following meaning: '64_bit' - Indicates that the 64-bit view on 64-bit Windows operating systems must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. '32_bit' - Indicates that the 32-bit view must be examined. On a 32-bit system, the Object must be evaluated without applying the behavior. It is recommended that the corresponding 'windows_view' entity be set on the OVAL Items that are collected when this behavior is used to distinguish between the OVAL Items that are collected in the 32-bit or 64-bit views.  
  
______________
  
## <a name="regkeyauditedpermissions53_test"></a>< regkeyauditedpermissions53_test >

The registry key audited permissions test is used to check the audit permissions associated with Windows registry keys. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a regkeyauditedpermissions53_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="regkeyauditedpermissions53_object"></a>< regkeyauditedpermissions53_object >

The regkeyauditedpermissions53_object element is used by a registry key audited permissions test to define the objects used to evalutate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A regkeyauditedpermissions53_object is defined as a combination of a Windows registry key and trustee name. The hive and key elements represents the registry key to be evaluated while the trustee name represents the account (SID) to check audited permissions of. If multiple keys or SIDs are matched by either reference, then each possible combination of registry key and SID is a matching registry key audited permissions object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the RegkeyAuditPermissions53Behaviors complex type for more information about specific behaviors.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:RegkeyAuditPermissions53Behaviors](#RegkeyAuditPermissions53Behaviors)  (0..1) |  
|||  
| hive | [win-def:EntityObjectRegistryHiveType](#EntityObjectRegistryHiveType)  (1..1) |  
||<div>The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS, HKEY_LOCAL_MACHINE, and HKEY_USERS.</div>|  
| key | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element. If the xsi:nil attribute is set to true, then the object being specified is the higher level hive. In this case, the key element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match. A .* pattern match says to collect every key under a given hive.</div>|  
| trustee_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the registry key's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="regkeyauditedpermissions53_state"></a>< regkeyauditedpermissions53_state >

The regkeyauditedpermissions53_state element defines the different audit permissions that can be associated with a given regkeyauditedpermissions53_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hive | [win-def:EntityStateRegistryHiveType](#EntityStateRegistryHiveType)  (0..1) |  
||<div>This element specifies the hive of a registry key on the machine from which to retrieve the SACL.</div>|  
| key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies a registry key on the machine from which to retrieve the SACL. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| ~~standard_synchronize~~ | ~~[win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1~~) |  
||~~<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>~~|  
| access_system_security | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| key_query_value | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_set_value | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_create_sub_key | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_enumerate_sub_keys | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_notify | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_create_link | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_wow64_64key | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_wow64_32key | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_wow64_res | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="RegkeyAuditPermissions53Behaviors"></a>== RegkeyAuditPermissions53Behaviors ==

The RegkeyAuditPermissions53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the registrykeyauditedpermissions53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The RegkeyAuditPermissions53Behaviors extend the win-def:RegistryBehaviors and therefore include the behaviors defined by that type.

**Extends:** [win-def:RegistryBehaviors](#RegistryBehaviors) 

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="regkeyauditedpermissions_test"></a><  ~~regkeyauditedpermissions_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the regkeyauditedpermissions53_test. This test uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. See the regkeyauditedpermissions53_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The registry key audited permissions test is used to check the audit permissions associated with Windows registry keys. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a regkeyauditedpermissions_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="regkeyauditedpermissions_object"></a><  ~~regkeyauditedpermissions_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the regkeyauditedpermissions53_object. This object uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new object was created to use trustee SIDs, which are unique. See the regkeyauditedpermissions53_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The regkeyauditedpermissions_object element is used by a registry key audited permissions test to define the objects used to evalutate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A regkeyauditedpermissions_object is defined as a combination of a Windows registry key and trustee name. The hive and key elements represents the registry key to be evaluated while the trustee name represents the account (SID) to check audited permissions of. If multiple keys or SIDs are matched by either reference, then each possible combination of file and SID is a matching file audited permissions object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the RegkeyAuditPermissionsBehaviors complex type for more information about specific behaviors.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:RegkeyAuditPermissionsBehaviors](#RegkeyAuditPermissionsBehaviors)  (0..1) |  
|||  
| hive | [win-def:EntityObjectRegistryHiveType](#EntityObjectRegistryHiveType)  (1..1) |  
||<div>The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS, HKEY_LOCAL_MACHINE, and HKEY_USERS.</div>|  
| key | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element.</div>|  
| trustee_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
  
## <a name="regkeyauditedpermissions_state"></a><  ~~regkeyauditedpermissions_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the regkeyauditedpermissions53_state. This state uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new state was created to use trustee SIDs, which are unique. See the regkeyauditedpermissions53_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The regkeyauditedpermissions_state element defines the different audit permissions that can be associated with a given regkeyauditedpermissions_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hive | [win-def:EntityStateRegistryHiveType](#EntityStateRegistryHiveType)  (0..1) |  
||<div>This element specifies the hive of a registry key on the machine from which to retrieve the SACL.</div>|  
| key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies a registry key on the machine from which to retrieve the SACL. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.</div>|  
| trustee_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The unique name associated with a particular security identifier (SID). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| standard_delete | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| standard_synchronize | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| key_query_value | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_set_value | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_create_sub_key | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_enumerate_sub_keys | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_notify | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_create_link | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_wow64_64key | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_wow64_32key | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| key_wow64_res | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div></div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="RegkeyAuditPermissionsBehaviors"></a>==  ~~RegkeyAuditPermissionsBehaviors~~  ==

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the RegkeyAuditPermissionsBehaviors53. The RegkeyAuditPermissionsBehaviors complex type is used by the regkeyauditedpermissions_test which uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. This new test utilizes the RegkeyAuditPermissionsBehaviors53 complex type, and as a result, the RegkeyAuditPermissionsBehaviors complex type is no longer needed.<br />**Comment:** This complex type has been deprecated and will be removed in version 6.0 of the language.<br />

The RegkeyAuditPermissionsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the registrykeyauditedpermissions_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The RegkeyAuditPermissionsBehaviors extend the win-def:RegistryBehaviors and therefore include the behaviors defined by that type.

**Extends:** [win-def:RegistryBehaviors](#RegistryBehaviors) 

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group trustee name might be to retrieve all the user trustee names that are members of the group, but not the group trustee name itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="regkeyeffectiverights53_test"></a>< regkeyeffectiverights53_test >

The registry key effective rights test is used to check the effective rights associated with Windows files. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The regkeyeffectiverights53_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a regkeyeffectiverights53_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="regkeyeffectiverights53_object"></a>< regkeyeffectiverights53_object >

The regkeyeffectiverights53_object element is used by a registry key effective rights test to define the objects used to evalutate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A regkeyeffectiverights53_object is defined as a combination of a Windows registry and trustee SID. The key entity represents the registry key to be evaluated while the trustee SID represents the account (SID) to check effective rights of. If multiple files or SIDs are matched by either reference, then each possible combination of registry key and SID is a matching registry key effective rights object. In addition, a number of behaviors may be provided that help guide the collection of objects. Please refer to the RegkeyEffectiveRights53Behaviors complex type for more information about specific behaviors.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:RegkeyEffectiveRights53Behaviors](#RegkeyEffectiveRights53Behaviors)  (0..1) |  
|||  
| hive | [win-def:EntityObjectRegistryHiveType](#EntityObjectRegistryHiveType)  (1..1) |  
||<div>The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS,HKEY_LOCAL_MACHINE, and HKEY_USERS.</div>|  
| key | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element. If the xsi:nil attribute is set to true, then the object being specified is the higher level hive. In this case, the key element should not be collected or used in analysis. Setting xsi:nil equal to true is different than using a .* pattern match. A .* pattern match says to collect every key under a given hive.</div>|  
| trustee_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the registry key's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="regkeyeffectiverights53_state"></a>< regkeyeffectiverights53_state >

The regkeyeffectiverights53_state element defines the different rights that can be associated with a given regkeyeffectiverights53_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hive | [win-def:EntityStateRegistryHiveType](#EntityStateRegistryHiveType)  (0..1) |  
||<div>This element specifies the hive of a registry key on the machine from which to retrieve the SACL.</div>|  
| key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies a registry key on the machine from which to retrieve the SACL. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| ~~standard_synchronize~~ | ~~[oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1~~) |  
||~~<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>~~|  
| access_system_security | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| key_query_value | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_set_value | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_create_sub_key | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_enumerate_sub_keys | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_notify | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_create_link | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_wow64_64key | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_wow64_32key | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_wow64_res | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="RegkeyEffectiveRights53Behaviors"></a>== RegkeyEffectiveRights53Behaviors ==

The RegkeyEffectiveRights53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the registrykeyeffectiverights53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The RegkeyEffectiveRights53Behaviors extend the win-def:RegistryBehaviors and therefore include the behaviors defined by that type.

**Extends:** [win-def:RegistryBehaviors](#RegistryBehaviors) 

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="regkeyeffectiverights_test"></a><  ~~regkeyeffectiverights_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the regkeyeffectiverights53_test. This test uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. See the regkeyeffectiverights53_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The registry key effective rights test is used to check the effective rights associated with Windows files. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The regkeyeffectiverights_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a regkeyeffectiverights_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="regkeyeffectiverights_object"></a><  ~~regkeyeffectiverights_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the regkeyeffectiverights53_object. This object uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new object was created to use trustee SIDs, which are unique. See the regkeyeffectiverights53_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:RegkeyEffectiveRightsBehaviors](#RegkeyEffectiveRightsBehaviors)  (0..1) |  
|||  
| hive | [win-def:EntityObjectRegistryHiveType](#EntityObjectRegistryHiveType)  (1..1) |  
||<div>The hive that the registry key belongs to. This is restricted to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS,HKEY_LOCAL_MACHINE, and HKEY_USERS.</div>|  
| key | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The key element describes a registry key to be collected. Note that the hive portion of the string should not be included, as this data should be found under the hive element.</div>|  
| trustee_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
  
## <a name="regkeyeffectiverights_state"></a><  ~~regkeyeffectiverights_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the regkeyeffectiverights53_state. This state uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new state was created to use trustee SIDs, which are unique. See the regkeyeffectiverights53_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The regkeyeffectiverights_state element defines the different rights that can be associated with a given regkeyeffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hive | [win-def:EntityStateRegistryHiveType](#EntityStateRegistryHiveType)  (0..1) |  
||<div>This element specifies the hive of a registry key on the machine from which to retrieve the SACL.</div>|  
| key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies a registry key on the machine from which to retrieve the SACL. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.</div>|  
| trustee_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The unique name associated with a particular security identifier (SID). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| standard_delete | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| standard_synchronize | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| key_query_value | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_set_value | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_create_sub_key | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_enumerate_sub_keys | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_notify | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_create_link | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_wow64_64key | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_wow64_32key | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| key_wow64_res | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div></div>|  
| windows_view | [win-def:EntityStateWindowsViewType](#EntityStateWindowsViewType)  (0..1) |  
||<div>The windows view value to which this was targeted. This is used to indicate which view (32-bit or 64-bit), the associated State applies to.</div>|  
  
## <a name="RegkeyEffectiveRightsBehaviors"></a>==  ~~RegkeyEffectiveRightsBehaviors~~  ==

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the RegkeyEffectiveRightsBehaviors53. The RegkeyEffectiveRightsBehaviors complex type is used by the regkeyeffectiverights_test which uses a trustee_name element for identifying trustees. Trustee names are not unique, and a new test was created to use trustee SIDs, which are unique. This new test utilizes the RegkeyEffectiveRightsBehaviors53 complex type, and as a result, the RegkeyEffectiveRightsBehaviors complex type is no longer needed.<br />**Comment:** This complex type has been deprecated and will be removed in version 6.0 of the language.<br />

The RegkeyEffectiveRightsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the registrykeyeffectiverights_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

The RegkeyEffectiveRightsBehaviors extend the win-def:RegistryBehaviors and therefore include the behaviors defined by that type.

**Extends:** [win-def:RegistryBehaviors](#RegistryBehaviors) 

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group trustee name should be included in the object when the object is defined by a group trustee name. For example, the intent of an object defined by a group trustee name might be to retrieve all the user trustee names that are members of the group, but not the group trustee name itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="service_test"></a>< service_test >

The service_test is used to check metadata associated with Windows services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a service_object and the optional state elements specify the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="service_object"></a>< service_object >

The service_object element is used by a service_test to define the specific service(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| service_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The service_name element specifies the service name as stored in the Service Control Manager (SCM) database on the system.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="service_state"></a>< service_state >

The service_state element defines the different metadata associated with a Windows service. This includes the service name, display name, description, type, start type, current state, controls accepted, start name, path, pid, service flag, and dependencies. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| service_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The service_name element specifies the name of the service as specified in the Service Control Manager (SCM) database.</div>|  
| display_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The display_name element specifies the name of the service as specified in tools such as Control Panel->Administrative Tools->Services.</div>|  
| description | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The description element specifies the description of the service.</div>|  
| service_type | [win-def:EntityStateServiceTypeType](#EntityStateServiceTypeType)  (0..1) |  
||<div>The service_type element specifies the type of the service.</div>|  
| start_type | [win-def:EntityStateServiceStartTypeType](#EntityStateServiceStartTypeType)  (0..1) |  
||<div>The start_type element specifies when the service should be started.</div>|  
| current_state | [win-def:EntityStateServiceCurrentStateType](#EntityStateServiceCurrentStateType)  (0..1) |  
||<div>The current_state element specifies the current state of the service.</div>|  
| controls_accepted | [win-def:EntityStateServiceControlsAcceptedType](#EntityStateServiceControlsAcceptedType)  (0..1) |  
||<div>The controls_accepted element specifies the control codes that a service will accept and process.</div>|  
| start_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The start_name element specifies the account under which the process should run.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the path to the binary of the service.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The pid element specifies the process ID of the service.</div>|  
| service_flag | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The service_flag element specifies if the service is in a system process that must always run (1) or if the service is in a non-system process or is not running (0). If the service is not running, the pid will be 0. Otherwise, the pid will be non-zero.</div>|  
| dependencies | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The dependencies element specifies the dependencies of this service on other services.</div>|  
  
______________
  
## <a name="serviceeffectiverights_test"></a>< serviceeffectiverights_test >

The service effective rights test is used to check the effective rights associated with Windows services. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. The serviceeffectiverights_test element extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a serviceeffectiverights_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="serviceeffectiverights_object"></a>< serviceeffectiverights_object >

The serviceeffectiverights_object element is used by the serviceeffectiverights_test to define the objects used to evalutate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A serviceeffectiverights_object is defined as a combination of a Windows service_name and trustee_sid. The service_name entity represents the service to be evaluated while the trustee_sid entity represents the account (SID) to check the effective rights of. If multiple services or SIDs are matched by either reference, then each possible combination of service and SID is a matching service effective rights object.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:ServiceEffectiveRightsBehaviors](#ServiceEffectiveRightsBehaviors)  (0..1) |  
|||  
| service_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The service_name element describes a service to be collected. Note that the service_name element should contain the actual name of the service and not its display name that is found in Control Panel->Administrative Tools->Services. For example, if you wanted to check the effective rights of the Automatic Updates service you would specify 'wuauserv' for the service_name element not 'Automatic Updates'.</div>|  
| trustee_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_sid entity identifies a set of SIDs associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the service's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="serviceeffectiverights_state"></a>< serviceeffectiverights_state >

The serviceeffectiverights_state element defines the different rights that can be associated with a given serviceeffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

See http://support.microsoft.com/kb/914392 for more information.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| service_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The service_name element specifies a service on the machine from which to retrieve the DACL. Note that the service_name element should contain the actual name of the service and not its display name that is found in Control Panel->Administrative Tools->Services. For example, if you wanted to check the effective rights of the Automatic Updates service you would specify 'wuauserv' for the service_name element not 'Automatic Updates'.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_sid element is the unique SID that is associated with a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the DeleteService function to delete the service.</div>|  
| standard_read_control | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the QueryServiceObjectSecurity function to query the Security Descriptor of the service object.</div>|  
| standard_write_dac | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the SetServiceObjectSecurity function to modify the DACL member of the service object's Security Descriptor.</div>|  
| standard_write_owner | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the SetServiceObjectSecurity function to modify the Owner and Group members of the service object's Security Descriptor.</div>|  
| generic_read | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read access (STANDARD_RIGHTS_READ, SERVICE_QUERY_CONFIG, SERVICE_QUERY_STATUS, SERVICE_INTERROGATE, SERVICE_ENUMERATE_DEPENDENTS).</div>|  
| generic_write | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Write access (STANDARD_RIGHTS_WRITE, SERVICE_CHANGE_CONFIG).</div>|  
| generic_execute | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Execute access (STANDARD_RIGHTS_EXECUTE, SERVICE_START, SERVICE_STOP, SERVICE_PAUSE_CONTINUE, SERVICE_USER_DEFINED_CONTROL).</div>|  
| service_query_conf | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the QueryServiceConfig and QueryServiceConfig2 functions to query the service configuration.</div>|  
| service_change_conf | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the ChangeServiceConfig or ChangeServiceConfig2 function to change the service configuration.</div>|  
| service_query_stat | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the QueryServiceStatusEx function to ask the service control manager about the status of the service.</div>|  
| service_enum_dependents | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the EnumDependentServices function to enumerate all the services dependent on the service.</div>|  
| service_start | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the StartService function to start the service.</div>|  
| service_stop | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the ControlService function to stop the service.</div>|  
| service_pause | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the ControlService function to pause or continue the service.</div>|  
| service_interrogate | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the ControlService function to ask the service to report its status immediately.</div>|  
| service_user_defined | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This permission is required to call the ControlService function to specify a user-defined control code.</div>|  
  
## <a name="ServiceEffectiveRightsBehaviors"></a>== ServiceEffectiveRightsBehaviors ==

The ServiceEffectiveRightsBehaviors complex type defines a number of behaviors that allow a more detailed definition of the serviceeffectiverights_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group trustee sid should be included in the object when the object is defined by a group trustee sid. For example, the intent of an object defined by a group trustee sid might be to retrieve all the user trustee sids that are members of the group, but not the group trustee sid itself.  
*	~~**resolve_group** xsd:boolean (optional -- default='false')~~  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="sharedresource_test"></a>< sharedresource_test >

The shared resource test is used to check properties associated with any shared resource on the system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sharedresource_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="sharedresource_object"></a>< sharedresource_object >

The sharedresource_object element is used by a shared resource test to define the object, in this case a shared resource, to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An shared resource object consists of a single netname entity that identifies a specific shared resource.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| netname | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The netname element is the unique name that is associated with a specific shared resource.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="sharedresource_state"></a>< sharedresource_state >

The sharedresource_state element defines the different metadata associated with a Windows shared resource. This includes the share type, permissions, and max uses. This state mirrors the SHARE_INFO_2 structure. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| netname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies the name associated with a particular shared resource.</div>|  
| shared_type | [win-def:EntityStateSharedResourceTypeType](#EntityStateSharedResourceTypeType)  (0..1) |  
||<div>The type of the shared resource.</div>|  
| max_uses | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The maximum number of concurrent connections that the shared resource can accommodate.</div>|  
| current_uses | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number of current connections to the resource.</div>|  
| local_path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The local path for the shared resource.</div>|  
| access_read_permission | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Permission to read data from a resource and, by default, to execute the resource.</div>|  
| access_write_permission | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Permission to write data to the resource.</div>|  
| access_create_permission | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Permission to create an instance of the resource (such as a file); data can be written to the resource as the resource is created.</div>|  
| access_exec_permission | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Permission to execute the resource.</div>|  
| access_delete_permission | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Permission to delete the resource.</div>|  
| access_atrib_permission | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Permission to modify the resource's attributes (such as the date and time when a file was last modified).</div>|  
| access_perm_permission | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Permission to modify the permissions (read, write, create, execute, and delete) assigned to a resource for a user or application.</div>|  
| access_all_permission | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Permission to read, write, create, execute, and delete resources, and to modify their attributes and permissions.</div>|  
  
______________
  
## <a name="sharedresourceauditedpermissions_test"></a>< sharedresourceauditedpermissions_test >

The shared resource audited permissions test is used to check the audit permissions associated with any shared resource on the system. Note that the trustee's audited permissions are the audit permissons that the SACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sharedresourceauditedpermissions_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="sharedresourceauditedpermissions_object"></a>< sharedresourceauditedpermissions_object >

The sharedresourceauditedpermissions_object element is used by a shared resource audited permissions test to define the objects used to evaluate against the specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic.

A shared resource audited permissions object consists of a netname entity that identifies a specific shared resource and a trustee_sid entity that identifies a specific account (SID) to check the audited permissions of.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:SharedResourceAuditedPermissionsBehaviors](#SharedResourceAuditedPermissionsBehaviors)  (0..1) |  
|||  
| netname | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The netname element is the unique name that is associated with a specific shared resource.</div>|  
| trustee_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the file's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="sharedresourceauditedpermissions_state"></a>< sharedresourceauditedpermissions_state >

The sharedresourceauditedpermissions_state element defines the different audited permissions that can be associated with a given sharedresourceauditedpermissions_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| netname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies the name associated with a particular shared resource.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| standard_synchronize | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [win-def:EntityStateAuditType](#EntityStateAuditType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
  
## <a name="SharedResourceAuditedPermissionsBehaviors"></a>== SharedResourceAuditedPermissionsBehaviors ==

The SharedResourceAuditedPermissionsBehaviors complex type defines a behavior that allows for a more detailed definition of the sharedresourceauditedpermissions_object being specified. Note that using this behavior may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
  
______________
  
## <a name="sharedresourceeffectiverights_test"></a>< sharedresourceeffectiverights_test >

The shared resource effective rights test is used to check the effective rights associated with any shared resource on the system. Note that the trustee's effective access rights are the access rights that the DACL grants to the trustee or to any groups of which the trustee is a member. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sharedresourceeffectiverights_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="sharedresourceeffectiverights_object"></a>< sharedresourceeffectiverights_object >

The sharedresourceeffectiverights_object element is used by a shared resource effective rights test to define the object, in this case a shared resource effective rights object, to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A shared resource effective rights object consists of a netname entity that identifies a specific shared resource and a trustee_sid entity that identifies a specific account (SID) to check the effective rights of.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:SharedResourceEffectiveRightsBehaviors](#SharedResourceEffectiveRightsBehaviors)  (0..1) |  
|||  
| netname | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The netname element is the unique name that is associated with a specific shared resource.</div>|  
| trustee_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service). If an operation other than equals is used to identify matching trustees (i.e. not equal, or a pattern match) then the resulting matches shall be limited to only the trustees referenced in the file's Security Descriptor. The scope is limited here to avoid unnecessarily resource intensive searches for trustees. Note that the larger scope of all known trustees may be obtained through the use of variables.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="sharedresourceeffectiverights_state"></a>< sharedresourceeffectiverights_state >

The sharedresourceeffectiverights_state element defines the different rights that can be associated with a given sharedresourceeffectiverights_object. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| netname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies the name associated with a particular shared resource.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_sid element is the unique SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to read the information in the object's Security Descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's Security Descriptor.</div>|  
| standard_write_owner | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to change the owner in the object's Security Descriptor.</div>|  
| standard_synchronize | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
  
## <a name="SharedResourceEffectiveRightsBehaviors"></a>== SharedResourceEffectiveRightsBehaviors ==

The SharedResourceEffectiveRightsBehaviors complex type defines a behavior that allows for a more detailed definition of the sharedresourceeffectiverights_object being specified. Note that using this behavior may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	~~**include_group** xsd:boolean (optional -- default='true')~~  
'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
  
______________
  
## <a name="sid_test"></a>< sid_test >

The SID test is used to check properties associated with the specified SID. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sid_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="sid_object"></a>< sid_object >

The sid_object element is used by a sid_test to define the object set, in this case a set of SIDs (identified by name), to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:SidBehaviors](#SidBehaviors)  (0..1) |  
|||  
| trustee_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_name element is the unique name that associated a particular SID. A SID can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="sid_state"></a>< sid_state >

The sid_state element defines the different metadata associate with a Windows trustee (identified by name). Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| trustee_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies the trustee name associated with a particular SID. In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The security identifier (SID) of the specified trustee name.</div>|  
| trustee_domain | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The domain of the specified trustee name.</div>|  
  
## <a name="SidBehaviors"></a>== SidBehaviors ==

The SidBehaviors complex type defines a number of behaviors that allow a more detailed definition of the sid_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	**include_group** xsd:boolean (optional -- default='true')  
'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
*	**resolve_group** xsd:boolean (optional -- default='false')  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="sid_sid_test"></a>< sid_sid_test >

The sid_sid_test is used to check properties associated with the specified SID. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a sid_sid_object and the optional state element specifies the metadata to check.

Note that this sid_sid test was added in version 5.4 as a temporary fix. There is a need within the community to identify things like users and groups by both the name and the SID. For version 6 of OVAL, work is underway for a better solution to the problem, but for now, a second test was added to satisfy the need.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="sid_sid_object"></a>< sid_sid_object >

The sid_sid_object element is used by a sid_sid_test to define the object set, in this case a set of SIDs, to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:SidSidBehaviors](#SidSidBehaviors)  (0..1) |  
|||  
| trustee_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The trustee_sid entity identifies a unique SID associated with a user, group, system, or program (such as a Windows service).</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="sid_sid_state"></a>< sid_sid_state >

The sid_state element defines the different metadata associate with a Windows trustee (identified by SID). Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The security identifier (SID) of the specified trustee name.</div>|  
| trustee_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This element specifies the trustee name associated with a particular SID. In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| trustee_domain | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The domain of the specified trustee name.</div>|  
  
## <a name="SidSidBehaviors"></a>== SidSidBehaviors ==

The SidSidBehaviors complex type defines a number of behaviors that allow a more detailed definition of the sid_sid_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	**include_group** xsd:boolean (optional -- default='true')  
'include_group' defines whether the group SID should be included in the object when the object is defined by a group SID. For example, the intent of an object defined by a group SID might be to retrieve all the user SIDs that are a member of the group, but not the group SID itself.  
*	**resolve_group** xsd:boolean (optional -- default='false')  
The 'resolve_group' behavior defines whether an object set defined by a group SID should be resolved to return a set that contains all the user SIDs that are a member of that group. Note that all child groups should also be resolved any valid domain users that are members of the group should also be included. The intent of this behavior is to end up with a list of all individual users from that system that make up the group once everything has been resolved.  
  
______________
  
## <a name="systemmetric_test"></a>< systemmetric_test >

The system metric test is used to check the value of a particular Windows system metric. Access to this information is exposed by the GetSystemMetrics function in User32.dll.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="systemmetric_object"></a>< systemmetric_object >

The system metric object element is used by a system metric test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| index | [win-def:EntityObjectSystemMetricIndexType](#EntityObjectSystemMetricIndexType)  (1..1) |  
||<div>The index entity provides the system metric index value that is desired.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="systemmetric_state"></a>< systemmetric_state >

The system metric state element defines the different information that can be found in a Windows system metric value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| index | [win-def:EntityStateSystemMetricIndexType](#EntityStateSystemMetricIndexType)  (0..1) |  
||<div>The index entity corresponds to the systemmetric_object index entity.</div>|  
| value | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The optional value entity provides the value of the system metric that is expected.</div>|  
  
______________
  
## <a name="uac_test"></a>< uac_test >

The user access control test is used to check setting related to User Access Control within Windows. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a uaac_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="uac_object"></a>< uac_object >

The uac_object element is used by a user access control test to define those objects to evaluate based on a specified state. There is actually only one object relating to user access control and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check user access control settings will reference the same uac_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="uac_state"></a>< uac_state >

The uac_state element specifies the different settings that are available under User Access Control. A user access control test will reference a specific instance of this state that defines the exact settings that need to be evaluated. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| admin_approval_mode | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Admin Approval Mode for the Built-in Administrator account.</div>|  
| elevation_prompt_admin | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Behavior of the elevation prompt for administrators in Admin Approval Mode.</div>|  
| elevation_prompt_standard | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Behavior of the elevation prompt for standard users.</div>|  
| detect_installations | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Detect application installations and prompt for elevation.</div>|  
| elevate_signed_executables | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Only elevate executables that are signed and validated.</div>|  
| elevate_uiaccess | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Only elevate UIAccess applications that are installed in secure locations.</div>|  
| run_admins_aam | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Run all administrators in Admin Approval Mode.</div>|  
| secure_desktop | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Switch to the secure desktop when prompting for elevation.</div>|  
| virtualize_write_failures | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Virtualize file and registry write failures to per-user locations.</div>|  
  
______________
  
## <a name="user_test"></a><  ~~user_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the user_sid55_test. This test uses trustee names for identifying accounts on the system. Trustee names are not unique and the user_sid55_test, which uses trustee SIDs which are unique, should be used instead. See the user_sid55_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The user_test is used to check information about Windows users. When the user_test collects the users on the system, it should only include the local and built-in user accounts and not domain user accounts. However, it is important to note that domain user accounts can still be looked up. Also, note that the collection of groups, for which a user is a member, is not recursive. The only groups that will be collected are those for which the user is a direct member. For example, if a user is a member of group A, and group A is a member of group B, the only group that will be collected is group A. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a user_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="user_object"></a><  ~~user_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the user_sid55_object. This object uses trustee names for identifying accounts on the system. Trustee names are not unique and the user_sid55_object, which uses trustee SIDs which are unique, should be used instead. See the user_sid55_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| user | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The user entity holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name". For built-in accounts on the system, use the user name without a domain.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="user_state"></a><  ~~user_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the user_sid55_state. This state uses trustee names for identifying accounts on the system. Trustee names are not unique and the user_sid55_state, which uses trustee SIDs which are unique, should be used instead. See the user_sid55_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The user_state element enumerates the different groups (identified by name) that a Windows user might belong to. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| user | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The user entity holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name". For built-in accounts on the system, use the user name without a domain.</div>|  
| enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This element holds a boolean value that specifies whether the particular user account is enabled or not.</div>|  
| group | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A string that represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.</div><div>The group element can be included multiple times in a system characteristic item in order to record that a user can be a member of a number of different groups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like group that refer to items that can occur an unbounded number of times.</div>|  
| last_logon | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The date and time when the last logon occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, GMT. If the target system is a domain controller, this data is maintained separately on each backup domain controller (BDC) in the domain. To obtain an accurate value, you must query each BDC in the domain. The last logoff occurred at the time indicated by the largest retrieved value.</div>|  
| full_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A Unicode string that contains the full name of the user. This string can be a NULL string, or it can have any number of characters before the terminating null character.</div>|  
| comment | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A Unicode string that contains a comment to associate with the user account. The string can be a NULL string, or it can have any number of characters before the terminating null character.</div>|  
| password_age_days | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number of days that have elapsed since the password was last changed. This data should be rounded up to the nearest integer.</div>|  
| lockout | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The account is currently locked out.</div>|  
| passwd_notreqd | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>No password is required.</div>|  
| dont_expire_passwd | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The password should never expire on the account.</div>|  
| encrypted_text_password_allowed | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The user's password is stored under reversible encryption in the Active Directory.</div>|  
| not_delegated | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Marks the account as "sensitive"; other users cannot act as delegates of this user account.</div>|  
| use_des_key_only | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Restrict this principal to use only Data Encryption Standard (DES) encryption types for keys.</div>|  
| dont_require_preauth | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This account does not require Kerberos preauthentication for logon.</div>|  
| password_expired | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The password expiration information. Zero if the password has not expired (and nonzero if it has).</div>|  
| smartcard_required | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Requires the user to log on to the user account with a smart card.</div>|  
| trusted_for_delegation | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The account is enabled for delegation. This is a security-sensitive setting; accounts with this option enabled should be tightly controlled. This setting allows a service running under the account to assume a client's identity and authenticate as that user to other remote servers on the network.</div>|  
| trusted_to_authenticate_for_delegation | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The account is trusted to authenticate a user outside of the Kerberos security package and delegate that user through constrained delegation. This is a security-sensitive setting; accounts with this option enabled should be tightly controlled. This setting allows a service running under the account to assert a client's identity and authenticate as that user to specifically configured services on the network. Windows 2000: This value is not supported.</div>|  
  
______________
  
## <a name="user_sid55_test"></a>< user_sid55_test >

The user_sid55_test is used to check information about Windows users. When the user_sid55_test collects the user SIDs on the system, it should only include the local and built-in user SIDs and not domain user SIDs. However, it is important to note that domain user SIDs can still be looked up. Also, note that the collection of groups, for which a user is a member, is not recursive. The only groups that will be collected are those for which the user is a direct member. For example, if a user is a member of group A, and group A is a member of group B, the only group that will be collected is group A. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a user_sid55_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="user_sid55_object"></a>< user_sid55_object >

The user_sid55_object represents a set of users on a Windows system. This set (which might contain only one user) is identified by a SID.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| user_sid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The user_sid entity holds a string that represents the SID of a particular user.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="user_sid55_state"></a>< user_sid55_state >

The user_sid55_state element enumerates the different groups (identified by SID) that a Windows user might belong to. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| user_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The user_sid entity holds a string that represents the SID of a particular user.</div>|  
| enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This element holds a boolean value that specifies whether the particular user account is enabled or not.</div>|  
| group_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A string the represents the SID of a particular group. The group_sid element can be included multiple times in a system characteristic item in order to record that a user can be a member of a number of different groups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like group that refer to items that can occur an unbounded number of times.</div>|  
| last_logon | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The date and time when the last logon occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, GMT.</div>|  
  
______________
  
## <a name="user_sid_test"></a><  ~~user_sid_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.5** :small_red_triangle: <br />**Reason:** Replaced by the user_sid55_test. This test uses user and group elements that are incorrectly named. A new test was created to change the element names to their correct values which are user_sid and group_sid. See the user_sid55_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The user_sid_test is used to check information about Windows users. When the user_sid_test collects the user SIDs on the system, it should only include the local and built-in user SIDs and not domain user SIDs. However, it is important to note that domain user SIDs can still be looked up. Also, note that the collection of groups, for which a user is a member, is not recursive. The only groups that will be collected are those for which the user is a direct member. For example, if a user is a member of group A, and group A is a member of group B, the only group that will be collected is group A. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a user_sid_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="user_sid_object"></a><  ~~user_sid_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.5** :small_red_triangle: <br />**Reason:** Replaced by the user_sid55_object. This object uses a user element that is incorrectly named. A new object was created to change the element name to its correct value which is user_sid. See the user_sid55_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The user_sid_object represents a set of users on a Windows system. This set (which might contain only one user) is identified by a SID.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| user | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The user_sid entity holds a string that represents the SID of a particular user.</div>|  
  
## <a name="user_sid_state"></a><  ~~user_sid_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.5** :small_red_triangle: <br />**Reason:** Replaced by the user_sid55_state. This state uses user and group elements that are incorrectly named. A new state was created to change the element names to their correct values which are user_sid and group_sid. See the user_sid55_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The user_sid_state element enumerates the different groups (identified by SID) that a Windows user might belong to. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| user | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The user_sid entity holds a string that represents the SID of a particular user.</div>|  
| enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This element holds a boolean value that specifies whether the particular user account is enabled or not.</div>|  
| group | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A string the represents the SID of a particular group. The group_sid element can be included multiple times in a system characteristic item in order to record that a user can be a member of a number of different groups. Note that the entity_check attribute associated with EntityStateStringType guides the evaluation of entities like group that refer to items that can occur an unbounded number of times.</div>|  
  
______________
  
## <a name="userright_test"></a>< userright_test >

The userright_test is used to enumerate all of the trustees/SIDs that have been granted a specific user right/privilege.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="userright_object"></a>< userright_object >

The userright_object is used to collect the trustees/SIDs that have been granted a specific user right/privilege.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| userright | [win-def:EntityObjectUserRightType](#EntityObjectUserRightType)  (1..1) |  
||<div>The userright entity holds a string that represents the name of a particular user right/privilege.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="userright_state"></a>< userright_state >

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| userright | [win-def:EntityStateUserRightType](#EntityStateUserRightType)  (0..1) |  
||<div>The userright entity holds a string that represents the name of a particular user right/privilege.</div>|  
| trustee_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_name entity is the unique name associated with the SID that has been granted the specified user right/privilege. A trustee can be associated with a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| trustee_sid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The trustee_sid entity identifies the SID that has been granted the specified user right/privilege.</div>|  
  
______________
  
## <a name="volume_test"></a>< volume_test >

The volume_test is used to check information about different storage volumes found on a Windows system. This includes the various system flags returned by GetVolumeInformation(). It is important to note that these system flags are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a volume_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="volume_object"></a>< volume_object >

The volume_object element is used by a volume test to define the specific volume(s) to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A volume object defines the rootpath of the volume(s).

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| rootpath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>A string that contains the root directory of the volume to be described. A trailing backslash is required. For example, you would specify \\MyServer\MyShare as "\\MyServer\MyShare\", or the C drive as "C:\".</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="volume_state"></a>< volume_state >

The volume_state element defines the different metadata associate with a storage volume in Windows. This includes the rootpath, the file system type, name, and serial number, as well as any associated flags. Please refer to the individual elements in the schema for more details about what each represents. The GetVolumeInformation function as defined by Microsoft is also a good place to look for information.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| rootpath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A string that contains the root directory of the volume to be described. A trailing backslash is required. For example, you would specify \\MyServer\MyShare as "\\MyServer\MyShare\", or the C drive as "C:\".</div>|  
| file_system | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The type of filesystem. For example FAT or NTFS.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the volume.</div>|  
| drive_type | [win-def:EntityStateDriveTypeType](#EntityStateDriveTypeType)  (0..1) |  
||<div>The drive type of the volume.</div>|  
| volume_max_component_length | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The volume_max_component_length element specifies the maximum length, in TCHARs, of a file name component that a specified file system supports. A file name component is the portion of a file name between backslashes. The value that is stored in the variable that *lpMaximumComponentLength points to is used to indicate that a specified file system supports long names. For example, for a FAT file system that supports long names, the function stores the value 255, rather than the previous 8.3 indicator. Long names can also be supported on systems that use the NTFS file system.</div>|  
| serial_number | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The volume serial number.</div>|  
| file_case_sensitive_search | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports case-sensitive file names.</div>|  
| file_case_preserved_names | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system preserves the case of file names when it places a name on disk.</div>|  
| file_unicode_on_disk | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports Unicode in file names as they appear on disk.</div>|  
| file_persistent_acls | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system preserves and enforces ACLs. For example, NTFS preserves and enforces ACLs, and FAT does not.</div>|  
| file_file_compression | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports file-based compression.</div>|  
| file_volume_quotas | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports disk quotas.</div>|  
| file_supports_sparse_files | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports sparse files.</div>|  
| file_supports_reparse_points | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports reparse points.</div>|  
| file_supports_remote_storage | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports remote storage.</div>|  
| file_volume_is_compressed | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The specified volume is a compressed volume; for example, a DoubleSpace volume.</div>|  
| file_supports_object_ids | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports object identifiers.</div>|  
| file_supports_encryption | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports the Encrypted File System (EFS).</div>|  
| file_named_streams | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports named streams.</div>|  
| file_read_only_volume | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The specified volume is read-only.</div>|  
| file_sequential_write_once | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports one time writes in sequential order.</div>|  
| file_supports_transactions | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports transaction processing.</div>|  
| file_supports_hard_links | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports direct links to other devices and partitions.</div>|  
| file_supports_extended_attributes | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports extended attributes.</div>|  
| file_supports_open_by_file_id | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports fileID.</div>|  
| file_supports_usn_journal | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The file system supports update sequence number journals.</div>|  
  
______________
  
## <a name="wmi_test"></a><  ~~wmi_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** Replaced by the wmi57_test. This test only allows for single fields to be selected from WMI. A new test was created to allow more than one field to be selected in one statement. See the wmi57_test.<br />**Comment:** This test has been deprecated and may be removed in a future version of the language.<br />

The wmi test is used to check information accessed by WMI. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wmi_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="wmi_object"></a><  ~~wmi_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** Replaced by the wmi57_object. This object allows for single fields to be selected from WMI. A new object was created to allow more than one field to be selected in one statement. See the wmi57_object.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| namespace | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies which WMI namespace to look under. Each WMI provider normally registers its own WMI namespace and then all its classes within that namespace. For example, all Win32 WMI classes can be found in the namespace "root\cimv2", all IIS WMI classes can be found at "root\microsoftiisv2", and all LDAP WMI classes can be found at "root\directory\ldap".</div>|  
| wql | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>A WQL query used to identify the object(s) to test against. Any valid WQL query is usable with one exception, at most one field is allowed in the SELECT portion of the query. For example SELECT name FROM ... is valid, as is SELECT 'true' FROM ..., but SELECT name, number FROM ... is not valid. This is because the result element in the data section is only designed to work against a single field.</div>|  
  
## <a name="wmi_state"></a><  ~~wmi_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** Replaced by the wmi57_state. This object allows for single fields to be selected from WMI. A new state was created to allow more than one field to be selected in one statement. See the wmi57_state.<br />**Comment:** This state has been deprecated and may be removed in a future version of the language.<br />



**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| namespace | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies which WMI namespace to look under. Each WMI provider normally registers its own WMI namespace and then all its classes within that namespace. For example, all Win32 WMI classes can be found in the namespace "root\cimv2", all IIS WMI classes can be found at "root\microsoftiisv2", and all LDAP WMI classes can be found at "root\directory\ldap".</div>|  
| wql | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A WQL query used to identify the object(s) to test against. Any valid WQL query is usable with one exception, at most one field is allowed in the SELECT portion of the query. For example SELECT name FROM ... is valid, as is SELECT 'true' FROM ..., but SELECT name, number FROM ... is not valid. This is because the result element in the data section is only designed to work against a single field.</div>|  
| result | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The result element specifies how to test objects in the result set of the specified WQL statement. Only one comparable field is allowed. So if the WQL statement look like 'SELECT name FROM ...', then a result element with a value of 'Fred' would test that value against the names returned by the WQL statement.</div>|  
  
______________
  
## <a name="wmi57_test"></a>< wmi57_test >

The wmi57 test is used to check information accessed by WMI. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wmi57_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="wmi57_object"></a>< wmi57_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| namespace | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies which WMI namespace to look under. Each WMI provider normally registers its own WMI namespace and then all its classes within that namespace. For example, all Win32 WMI classes can be found in the namespace "root\cimv2", all IIS WMI classes can be found at "root\microsoftiisv2", and all LDAP WMI classes can be found at "root\directory\ldap".</div>|  
| wql | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>A WQL query used to identify the object(s) to test against. Any valid WQL query is usable with one exception, all fields must be named in the SELECT portion of the query. For example SELECT name, age FROM ... is valid. However, SELECT * FROM ... is not valid. This is because the record element in the state and item require a unique field name value to ensure that any query results can be evaluated consistently.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="wmi57_state"></a>< wmi57_state >



**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| namespace | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies which WMI namespace to look under. Each WMI provider normally registers its own WMI namespace and then all its classes within that namespace. For example, all Win32 WMI classes can be found in the namespace "root\cimv2", all IIS WMI classes can be found at "root\microsoftiisv2", and all LDAP WMI classes can be found at "root\directory\ldap".</div>|  
| wql | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A WQL query used to identify the object(s) to test against. Any valid WQL query is usable with one exception, all fields must be named in the SELECT portion of the query. For example SELECT name, age FROM ... is valid. However, SELECT * FROM ... is not valid. This is because the record element in the state and item require a unique field name value to ensure that any query results can be evaluated consistantly.</div>|  
| result | [oval-def:EntityStateRecordType](oval-definitions-schema.md#EntityStateRecordType)  (0..1) |  
||<div>The result element specifies how to test items in the result set of the specified WQL statement.</div>|  
  
______________
  
## <a name="wuaupdatesearcher_test"></a>< wuaupdatesearcher_test >

The wuaupdatesearcher_test is used to evaluate patch level in a Windows environment utilizing the WUA (Windows Update Agent) interface. It is based on the Search method of the IUpdateSearcher interface found in the WUA API. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wuaupdatesearcher_object and the optional state element specifies the metadata to check.

Note that WUA can work off of many different sources including WSUS, update.microsoft.com, and a local cab file. The content source is specific to a given system evaluating a wuaupdatesearcher_test and thus is not defined by this test. The tool being used for evaluation should determine what content source is best for the system being assessed and then evaluate this test based on that selection.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="wuaupdatesearcher_object"></a>< wuaupdatesearcher_object >

The wuaupdatesearcher_object element is used by a wuaupdatesearcher_test to define the specific search criteria to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [win-def:WuaUpdateSearcherBehaviors](#WuaUpdateSearcherBehaviors)  (0..1) |  
|||  
| search_criteria | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The search_criteria entity specifies a search criteria to use when generating a search result. The string used for the search criteria entity must match the custom search language for Search method of the IUpdateSearcher interface. The string consists of criteria that are evaluated to determine which updates to return. The Search method performs a synchronous search for updates by using the current configured search options. For more information about possible search criteria, please see the Search method of the IUpdateSearcher interface.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="wuaupdatesearcher_state"></a>< wuaupdatesearcher_state >

The wuaupdatesearcher_state element defines entities that can be tested related to a uaupdatesearcher_object. This includes the search criteria and updated id. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| search_criteria | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The search_criteria entity specifies a string to examine the search criteria that was used to generate the object set. Note that since this entity is part of the state, it is not used to determine the object set, but rather is used to test the search criteria that was actually used.</div>|  
| update_id | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The update_id enity specifies a string that represents a revision-independent identifier of an update. This information is part of the IUpdateIdentity interface that is part of the result of the IUpdateSearcher interface's Search method.</div>|  
  
## <a name="WuaUpdateSearcherBehaviors"></a>== WuaUpdateSearcherBehaviors ==

The WuaUpdateSearcherBehaviors complex type defines behaviors that allow a more detailed definition of the wuaupdatesearcher_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	**include_superseded_updates** xsd:boolean (optional -- default='true')  
'include_superseded_updates' is a boolean flag that when set to true indicates that the search results should include updates that are superseded by other updates in the search results. When set to 'false' superseded updates should be excluded from the set of matching update items. The default value is 'true'.  
  
______________
  
## <a name="EntityStateAddrTypeType"></a>== EntityStateAddrTypeType ==

The EntityStateAddrTypeType complex type restricts a string value to a specific set of values that describe address types associated with an interface. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| MIB_IPADDR_DELETED | <div>The stated IP address is being deleted. The unsigned short value that this corresponds to is 0x0040</div> |  
| MIB_IPADDR_DISCONNECTED | <div>The stated IP address is on a disconnected interface. The unsigned short value that this corresponds to is 0x0008.</div> |  
| MIB_IPADDR_DYNAMIC | <div>The stated IP address is a dynamic IP address. The unsigned short value that this corresponds to is 0x0004.</div> |  
| MIB_IPADDR_PRIMARY | <div>The stated IP address is a primary IP address. The unsigned short value that this corresponds to is 0x0001.</div> |  
| MIB_IPADDR_TRANSIENT | <div>The stated IP address is a transient IP address. The unsigned short value that this corresponds to is 0x0080</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateAdstypeType"></a>== EntityStateAdstypeType ==

The EntityStateAdstypeType complex type restricts a string value to a specific set of values that specify the different types of information that an active directory attribute can represents. For more information look at the ADSTYPEENUM enumeration defined by Microsoft. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| ADSTYPE_INVALID | <div>The data type is invalid.</div> |  
| ADSTYPE_DN_STRING | <div>The string is of Distinguished Name (path) of a directory service object.</div> |  
| ADSTYPE_CASE_EXACT_STRING | <div>The string is of the case-sensitive type.</div> |  
| ADSTYPE_CASE_IGNORE_STRING | <div>The string is of the case-insensitive type.</div> |  
| ADSTYPE_PRINTABLE_STRING | <div>The string is displayable on the screen or in print.</div> |  
| ADSTYPE_NUMERIC_STRING | <div>The string is of a numeric value to be interpreted as text.</div> |  
| ADSTYPE_BOOLEAN | <div>The data is of a Boolean value.</div> |  
| ADSTYPE_INTEGER | <div>The data is of an integer value.</div> |  
| ADSTYPE_OCTET_STRING | <div>The string is of a byte array.</div> |  
| ADSTYPE_UTC_TIME | <div>The data is of the universal time as expressed in Universal Time Coordinate (UTC).</div> |  
| ADSTYPE_LARGE_INTEGER | <div>The data is of a long integer value.</div> |  
| ADSTYPE_PROV_SPECIFIC | <div>The string is of a provider-specific string.</div> |  
| ADSTYPE_OBJECT_CLASS | <div>Not used.</div> |  
| ADSTYPE_CASEIGNORE_LIST | <div>The data is of a list of case insensitive strings.</div> |  
| ADSTYPE_OCTET_LIST | <div>The data is of a list of octet strings.</div> |  
| ADSTYPE_PATH | <div>The string is of a directory path.</div> |  
| ADSTYPE_POSTALADDRESS | <div>The string is of the postal address type.</div> |  
| ADSTYPE_TIMESTAMP | <div>The data is of a time stamp in seconds.</div> |  
| ADSTYPE_BACKLINK | <div>The string is of a back link.</div> |  
| ADSTYPE_TYPEDNAME | <div>The string is of a typed name.</div> |  
| ADSTYPE_HOLD | <div>The data is of the Hold data structure.</div> |  
| ADSTYPE_NETADDRESS | <div>The string is of a net address.</div> |  
| ADSTYPE_REPLICAPOINTER | <div>The data is of a replica pointer.</div> |  
| ADSTYPE_FAXNUMBER | <div>The string is of a fax number.</div> |  
| ADSTYPE_EMAIL | <div>The data is of an e-mail message.</div> |  
| ADSTYPE_NT_SECURITY_DESCRIPTOR | <div>The data is of Windows NT/Windows 2000 Security Descriptor as represented by a byte array.</div> |  
| ADSTYPE_UNKNOWN | <div>The data is of an undefined type.</div> |  
| ADSTYPE_DN_WITH_BINARY | <div>The data is of ADS_DN_WITH_BINARY used for mapping a distinguished name to a non varying GUID.</div> |  
| ADSTYPE_DN_WITH_STRING | <div>The data is of ADS_DN_WITH_STRING used for mapping a distinguished name to a non-varying string value.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateAuditType"></a>== EntityStateAuditType ==

The EntityStateAuditType complex type restricts a string value to a specific set of values: AUDIT_NONE, AUDIT_SUCCESS, AUDIT_FAILURE, and AUDIT_SUCCESS_FAILURE. These values describe which audit records should be generated. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| AUDIT_FAILURE | <div>The audit type AUDIT_FAILURE is used to perform audits on all unsuccessful occurrences of specified events when auditing is enabled.</div> |  
| AUDIT_NONE | <div>The audit type AUDIT_NONE is used to cancel all auditing options for the specified events.</div> |  
| AUDIT_SUCCESS | <div>The audit type AUDIT_SUCCESS is used to perform audits on all successful occurrences of the specified events when auditing is enabled.</div> |  
| AUDIT_SUCCESS_FAILURE | <div>The audit type AUDIT_SUCCESS_FAILURE is used to perform audits on all successful and unsuccessful occurrences of the specified events when auditing is enabled.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateDriveTypeType"></a>== EntityStateDriveTypeType ==

The EntityStateDriveTypeType complex type defines the different values that are valid for the drive_type entity of a win-def:volume_state. Note that the Windows API returns a UINT value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the drive_type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| DRIVE_UNKNOWN | <div>The DRIVE_UNKNOWN type means that drive type cannot be determined. The UINT value that this corresponds to is 0.</div> |  
| DRIVE_NO_ROOT_DIR | <div>The DRIVE_NO_ROOT_DIR type means that the root path is not valid. The UINT value that this corresponds to is 1.</div> |  
| DRIVE_REMOVABLE | <div>The DRIVE_REMOVABLE type means that the drive contains removable media. The UINT value that this corresponds to is 2.</div> |  
| DRIVE_FIXED | <div>The DRIVE_FIXED type means that the drive contains fixed media. The UINT value that this corresponds to is 3.</div> |  
| DRIVE_REMOTE | <div>The DRIVE_REMOTE type means that the drive is a remote drive (i.e. network drive). The UINT value that this corresponds to is 4.</div> |  
| DRIVE_CDROM | <div>The DRIVE_CDROM type means that the drive is a CD-ROM drive. The UINT value that this corresponds to is 5.</div> |  
| DRIVE_RAMDISK | <div>The DRIVE_RAMDISK type means that the drive is a RAM disk. The UINT value that this corresponds to is 6.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateInterfaceTypeType"></a>== EntityStateInterfaceTypeType ==

The EntityStateInterfaceTypeType complex type restricts a string value to a specific set of values. These values describe the different interface types. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| MIB_IF_TYPE_ETHERNET | <div>The MIB_IF_TYPE_ETHERNET type is used to describe ethernet interfaces.</div> |  
| MIB_IF_TYPE_FDDI | <div>The MIB_IF_TYPE_FDDI type is used to describe fiber distributed data interfaces (FDDI).</div> |  
| MIB_IF_TYPE_LOOPBACK | <div>The MIB_IF_TYPE_LOOPBACK type is used to describe loopback interfaces.</div> |  
| MIB_IF_TYPE_OTHER | <div>The MIB_IF_TYPE_OTHER type is used to describe unknown interfaces.</div> |  
| MIB_IF_TYPE_PPP | <div>The MIB_IF_TYPE_PPP type is used to describe point-to-point protocol interfaces (PPP).</div> |  
| MIB_IF_TYPE_SLIP | <div>The MIB_IF_TYPE_SLIP type is used to describe serial line internet protocol interfaces (SLIP).</div> |  
| MIB_IF_TYPE_TOKENRING | <div>The MIB_IF_TYPE_TOKENRING type is used to describe token ring interfaces..</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateFileTypeType"></a>== EntityStateFileTypeType ==

The EntityStateFileTypeType complex type restricts a string value to a specific set of values. These values describe the type of file being represented. For more information see the GetFileType and GetFileAttributesEx functions as defined by Microsoft. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| ~~FILE_ATTRIBUTE_DIRECTORY~~ | ~~<div>The handle identifies a directory.</div>~~> :small_red_triangle: **Deprecated As Of Version 5.11.1:1.2** :small_red_triangle: <br />**Reason:** In version 5.11.1:1.2 of the OVAL Language windows schema, a file_attributes entity was added to the file_state, obviating the need to overload this attribute with the file-type enumeration.<br />**Comment:** This value has been deprecated and will be removed in version 6.0 of the language.<br /> |  
| FILE_TYPE_CHAR | <div>The specified file is a character file, typically an LPT device or a console.</div> |  
| FILE_TYPE_DISK | <div>The specified file is a disk file.</div> |  
| FILE_TYPE_PIPE | <div>The specified file is a socket, a named pipe, or an anonymous pipe.</div> |  
| FILE_TYPE_REMOTE | <div>Unused.</div> |  
| FILE_TYPE_UNKNOWN | <div>Either the type of the specified file is unknown, or the function failed.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateFileAttributeType"></a>== EntityStateFileAttributeType ==

The EntityStateFileAttributeType complex type restricts a string value to a specific set of values. These values describe the Windows file attribute being represented. For more information see the GetFileAttributes and GetFileAttributesEx functions as defined by Microsoft. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| FILE_ATTRIBUTE_ARCHIVE | <div>A file or directory that is an archive file or directory. Applications typically use this attribute to mark files for backup or removal.</div> |  
| FILE_ATTRIBUTE_COMPRESSED | <div>A file or directory that is compressed. For a file, all of the data in the file is compressed. For a directory, compression is the default for newly created files and subdirectories.</div> |  
| FILE_ATTRIBUTE_DEVICE | <div>This value is reserved for system use.</div> |  
| FILE_ATTRIBUTE_DIRECTORY | <div>The handle that identifies a directory.</div> |  
| FILE_ATTRIBUTE_ENCRYPTED | <div>A file or directory that is encrypted. For a file, all data streams in the file are encrypted. For a directory, encryption is the default for newly created files and subdirectories.</div> |  
| FILE_ATTRIBUTE_HIDDEN | <div>The file or directory is hidden. It is not included in an ordinary directory listing.</div> |  
| FILE_ATTRIBUTE_INTEGRITY_STREAM | <div>The directory or user data stream is configured with integrity (only supported on ReFS volumes). It is not included in an ordinary directory listing. The integrity setting persists with the file if it's renamed. If a file is copied the destination file will have integrity set if either the source file or destination directory have integrity set.</div><div>Windows Server 2008 R2, Windows 7, Windows Server 2008, Windows Vista, Windows Server 2003, and Windows XP: This flag is not supported until Windows Server 2012.</div> |  
| FILE_ATTRIBUTE_NORMAL | <div>A file that does not have other attributes set. This attribute is valid only when used alone.</div> |  
| FILE_ATTRIBUTE_NOT_CONTENT_INDEXED | <div>The file or directory is not to be indexed by the content indexing service.</div> |  
| FILE_ATTRIBUTE_NO_SCRUB_DATA | <div>The user data stream not to be read by the background data integrity scanner (AKA scrubber). When set on a directory it only provides inheritance. This flag is only supported on Storage Spaces and ReFS volumes. It is not included in an ordinary directory listing.</div><div>Windows Server 2008 R2, Windows 7, Windows Server 2008, Windows Vista, Windows Server 2003, and Windows XP: This flag is not supported until Windows 8 and Windows Server 2012.</div> |  
| FILE_ATTRIBUTE_OFFLINE | <div>The data of a file is not available immediately. This attribute indicates that the file data is physically moved to offline storage. This attribute is used by Remote Storage, which is the hierarchical storage management software. Applications should not arbitrarily change this attribute.</div> |  
| FILE_ATTRIBUTE_READONLY | <div>A file that is read-only. Applications can read the file, but cannot write to it or delete it. This attribute is not honored on directories.</div> |  
| FILE_ATTRIBUTE_REPARSE_POINT | <div>A file or directory that has an associated reparse point, or a file that is a symbolic link.</div> |  
| FILE_ATTRIBUTE_SPARSE_FILE | <div>A file that is a sparse file.</div> |  
| FILE_ATTRIBUTE_SYSTEM | <div>A file or directory that the operating system uses a part of, or uses exclusively.</div> |  
| FILE_ATTRIBUTE_TEMPORARY | <div>A file that is being used for temporary storage. File systems avoid writing data back to mass storage if sufficient cache memory is available, because typically, an application deletes a temporary file after the handle is closed. In that scenario, the system can entirely avoid writing the data. Otherwise, the data is written after the handle is closed.</div> |  
| FILE_ATTRIBUTE_VIRTUAL | <div>This value is reserved for system use.</div> |  
  
## <a name="EntityObjectNamingContextType"></a>== EntityObjectNamingContextType ==

The EntityObjectNamingContextType restricts a string value to a specific set of values: domain, configuration, and schema. These values describe the different default naming context found in active directory. A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| domain | <div>The domain naming context contains Active Directory objects present in the specified domain (e.g. users, computers, groups, and other objects).</div> |  
| configuration | <div>The configuration naming context contains configuration data that is required for the Active Directory to operate as a directory service.</div> |  
| schema | <div>The schema naming context contains all of the Active Directory object definitions.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateNamingContextType"></a>== EntityStateNamingContextType ==

The EntityStateNamingContextType restricts a string value to a specific set of values: domain, configuration, and schema. These values describe the different default naming context found in active directory. A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| domain | <div>The domain naming context contains Active Directory objects present in the specified domain (e.g. users, computers, groups, and other objects).</div> |  
| configuration | <div>The configuration naming context contains configuration data that is required for the Active Directory to operate as a directory service.</div> |  
| schema | <div>The schema naming context contains all of the Active Directory object definitions.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateNTUserAccountTypeType"></a>== EntityStateNTUserAccountTypeType ==

The EntityStateNTUserAccountTypeType restricts a string value to a specific set of values that describe the different types of accounts. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| local | <div>Local accounts are accounts that were created directly on the machine being tested and should be in the form of machinename\username</div> |  
| domain | <div>Domain accounts are accounts that were created on a domain controller and should be in the form of domain\username</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStatePeTargetMachineType"></a>== EntityStatePeTargetMachineType ==

The EntityStatePeTargetMachineType enumeration identifies the valid machine targets that can be specified in the PE file header. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| IMAGE_FILE_MACHINE_UNKNOWN | <div>The IMAGE_FILE_MACHINE_UNKNOWN type is used to indicate an unknown machine.</div> |  
| IMAGE_FILE_MACHINE_ALPHA | <div>The IMAGE_FILE_MACHINE_ALPHA type is used to indicate an Alpha APX machine.</div> |  
| IMAGE_FILE_MACHINE_ARM | <div>The IMAGE_FILE_MACHINE_ARM type is used to indicate an ARM little endian machine.</div> |  
| IMAGE_FILE_MACHINE_ALPHA64 | <div>The IMAGE_FILE_MACHINE_ALPHA64 type is used to indicate an 64-bit Alpha APX machine.</div> |  
| IMAGE_FILE_MACHINE_I386 | <div>The IMAGE_FILE_MACHINE_I386 type is used to indicate an Intel 386 machine.</div> |  
| IMAGE_FILE_MACHINE_IA64 | <div>The IMAGE_FILE_MACHINE_IA64 type is used to indicate an Intel Itanium machine.</div> |  
| IMAGE_FILE_MACHINE_M68K | <div>The IMAGE_FILE_MACHINE_M68K type is used to indicate an M68K machine.</div> |  
| IMAGE_FILE_MACHINE_MIPS16 | <div>The IMAGE_FILE_MACHINE_MIPS16 type is used to indicate a MIPS16 machine.</div> |  
| IMAGE_FILE_MACHINE_MIPSFPU | <div>The IMAGE_FILE_MACHINE_MIPSFPU type is used to indicate an MIPS machine with FPU.</div> |  
| IMAGE_FILE_MACHINE_MIPSFPU16 | <div>The IMAGE_FILE_MACHINE_MIPSFPU16 type is used to indicate a MIPS16 machine with FPU.</div> |  
| IMAGE_FILE_MACHINE_POWERPC | <div>The IMAGE_FILE_MACHINE_POWERPC type is used to indicate an Power PC little endian machine.</div> |  
| IMAGE_FILE_MACHINE_R3000 | <div>The IMAGE_FILE_MACHINE_R3000 type is used to indicate a MIPS little endian, 0x160 big endian machine.</div> |  
| IMAGE_FILE_MACHINE_R4000 | <div>The IMAGE_FILE_MACHINE_R4000 type is used to indicate a MIPS little endian machine.</div> |  
| IMAGE_FILE_MACHINE_R10000 | <div>The IMAGE_FILE_MACHINE_10000 type is used to indicate a MIPS little endian machine.</div> |  
| IMAGE_FILE_MACHINE_SH3 | <div>The IMAGE_FILE_MACHINE_SH3 type is used to indicate a Hitachi SH3 machine.</div> |  
| IMAGE_FILE_MACHINE_SH4 | <div>The IMAGE_FILE_MACHINE_SH4 type is used to indicate a Hitachi SH4 machine.</div> |  
| IMAGE_FILE_MACHINE_THUMB | <div>The IMAGE_FILE_MACHINE_THUMB type is used to indicate an ARM or Thumb ("interworking") machine.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStatePeSubsystemType"></a>== EntityStatePeSubsystemType ==

The EntityStatePeSubsystemType enumeration identifies the valid subsystem types that can be specified in the PE file header. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| IMAGE_SUBSYSTEM_UNKNOWN | <div>The IMAGE_SUBSYSTEM_UNKNOWN type is used to indicate an unknown subsystem.</div> |  
| IMAGE_SUBSYSTEM_NATIVE | <div>The IMAGE_SUBSYSTEM_NATIVE type is used to indicate that no subsystem is required.</div> |  
| IMAGE_SUBSYSTEM_WINDOWS_GUI | <div>The IMAGE_SUBSYSTEM_WINDOWS_GUI type is used to indicate a Windows graphical user interface (GUI) subsystem.</div> |  
| IMAGE_SUBSYSTEM_WINDOWS_CUI | <div>The IMAGE_SUBSYSTEM_WINDOWS_CUI type is used to indicate a Windows character-mode user interface (CUI) subsystem.</div> |  
| IMAGE_SUBSYSTEM_OS2_CUI | <div>The IMAGE_SUBSYSTEM_OS2_CUI type is used to indicate an OS/2 CUI subsystem.</div> |  
| IMAGE_SUBSYSTEM_POSIX_CUI | <div>The IMAGE_SUBSYSTEM_POSIX_CUI type is used to indicate a POSIX CUI subsystem.</div> |  
| IMAGE_SUBSYSTEM_WINDOWS_CE_GUI | <div>The IMAGE_SUBSYSTEM_WINDOWS_CE_GUI type is used to indicate a Windows CE system.</div> |  
| IMAGE_SUBSYSTEM_EFI_APPLICATION | <div>The IMAGE_SUBSYSTEM_EFI_APPLICATION type is used to indicate an Extensible Firmware Interface (EFI) application.</div> |  
| IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER | <div>The IMAGE_SUBSYSTEM_EFI_BOOT_SERVICE_DRIVER type is used to indicate a EFI driver with boot services.</div> |  
| IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER | <div>The IMAGE_SUBSYSTEM_EFI_RUNTIME_DRIVER type is used to indicate a EFI driver with run-time services subsystem.</div> |  
| IMAGE_SUBSYSTEM_EFI_ROM | <div>The IMAGE_SUBSYSTEM_EFI_ROM type is used to indicate an EFI ROM image.</div> |  
| IMAGE_SUBSYSTEM_XBOX | <div>The IMAGE_SUBSYSTEM_XBOX type is used to indicate an Xbox system.</div> |  
| IMAGE_SUBSYSTEM_WINDOWS_BOOT_APPLICATION | <div>The IMAGE_SUBSYSTEM_WINDOWS_BOOT_APPLICATION type is used to indicate a boot application.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityObjectProtocolType"></a>== EntityObjectProtocolType ==

The EntityObjectProtocolType restricts a string value to a specific set of values: TCP and UDP. These values describe the different protocols available to a port. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| TCP | <div>The port uses the Transmission Control Protocol (TCP).</div> |  
| UDP | <div>The port uses the User Datagram Protocol (UDP).</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateProtocolType"></a>== EntityStateProtocolType ==

The EntityStateProtocolType restricts a string value to a specific set of values: TCP and UDP. These values describe the different protocols available to a port. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| TCP | <div>The port uses the Transmission Control Protocol (TCP).</div> |  
| UDP | <div>The port uses the User Datagram Protocol (UDP).</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityObjectRegistryHiveType"></a>== EntityObjectRegistryHiveType ==

The EntityObjectRegistryHiveType restricts a string value to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_CURRENT_USER_LOCAL_SETTINGS, HKEY_LOCAL_MACHINE, and HKEY_USERS. These values describe the possible hives in the registry. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| HKEY_CLASSES_ROOT | <div>This registry subtree contains information that associates file types with programs and configuration data for automation (e.g. COM objects and Visual Basic Programs).</div> |  
| HKEY_CURRENT_CONFIG | <div>This registry subtree contains configuration data for the current hardware profile.</div> |  
| HKEY_CURRENT_USER | <div>This registry subtree contains the user profile of the user that is currently logged into the system.</div> |  
| HKEY_CURRENT_USER_LOCAL_SETTINGS | <div>Registry entries subordinate to this key define preferences of the current user that are local to the machine. These entries are not included in the per-user registry portion of a roaming user profile. This key is supported starting with Windows 7 and Windows Server 2008 R2.</div> |  
| HKEY_LOCAL_MACHINE | <div>This registry subtree contains information about the local system.</div> |  
| HKEY_USERS | <div>This registry subtree contains user-specific data.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateRegistryHiveType"></a>== EntityStateRegistryHiveType ==

The EntityStateRegistryHiveType restricts a string value to a specific set of values: HKEY_CLASSES_ROOT, HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_LOCAL_MACHINE, and HKEY_USERS. These values describe the possible hives in the registry. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| HKEY_CLASSES_ROOT | <div>This registry subtree contains information that associates file types with programs and configuration data for automation (e.g. COM objects and Visual Basic Programs).</div> |  
| HKEY_CURRENT_CONFIG | <div>This registry subtree contains configuration data for the current hardware profile.</div> |  
| HKEY_CURRENT_USER | <div>This registry subtree contains the user profile of the user that is currently logged into the system.</div> |  
| HKEY_LOCAL_MACHINE | <div>This registry subtree contains information about the local system.</div> |  
| HKEY_USERS | <div>This registry subtree contains user-specific data.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateRegistryTypeType"></a>== EntityStateRegistryTypeType ==

The EntityStateRegistryTypeType complex type defines the different values that are valid for the type entity of a registry state. These values describe the possible types of data stored in a registry key. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values. Please note that the values identified are for the type entity and are not valid values for the datatype attribute. For information about how to encode registry data in OVAL for each of the different types, please visit the registry_state documentation.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| reg_binary | <div>The reg_binary type is used by registry keys that specify binary data in any form.</div> |  
| reg_dword | <div>The reg_dword type is used by registry keys that specify an unsigned 32-bit integer.</div> |  
| ~~reg_dword_little_endian~~ | ~~<div>The reg_dword_little_endian type is used by registry keys that specify an unsigned 32-bit little-endian integer. It is designed to run on little-endian computer architectures.</div>~~> :small_red_triangle: **Deprecated As Of Version 5.11.1:1.1** :small_red_triangle: <br />**Reason:** Defined to have same value as reg_dword.<br />**Comment:** This registry type enumeration value has been deprecated and may be removed in a future version of the language.<br /> |  
| reg_dword_big_endian | <div>The reg_dword_big_endian type is used by registry keys that specify an unsigned 32-bit big-endian integer. It is designed to run on big-endian computer architectures.</div> |  
| reg_expand_sz | <div>The reg_expand_sz type is used by registry keys to specify a null-terminated string that contains unexpanded references to environment variables (for example, "%PATH%").</div> |  
| reg_link | <div>The reg_link type is used by the registry keys for null-terminated unicode strings. It is related to target path of a symbolic link created by the RegCreateKeyEx function.</div> |  
| reg_multi_sz | <div>The reg_multi_sz type is used by registry keys that specify an array of null-terminated strings, terminated by two null characters.</div> |  
| reg_none | <div>The reg_none type is used by registry keys that have no defined value type.</div> |  
| reg_qword | <div>The reg_qword type is used by registry keys that specify an unsigned 64-bit integer.</div> |  
| ~~reg_qword_little_endian~~ | ~~<div>The reg_qword_little_endian type is used by registry keys that specify an unsigned 64-bit integer in little-endian computer architectures.</div>~~> :small_red_triangle: **Deprecated As Of Version 5.11.1:1.1** :small_red_triangle: <br />**Reason:** Defined to have same value as reg_qword.<br />**Comment:** This registry type enumeration value has been deprecated and may be removed in a future version of the language.<br /> |  
| reg_sz | <div>The reg_sz type is used by registry keys that specify a single null-terminated string.</div> |  
| reg_resource_list | <div>The reg_resource_list type is used by registry keys that specify a resource list.</div> |  
| reg_full_resource_descriptor | <div>The reg_full_resource_descriptor type is used by registry keys that specify a full resource descriptor.</div> |  
| reg_resource_requirements_list | <div>The reg_resource_requirements_list type is used by registry keys that specify a resource requirements list.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateServiceControlsAcceptedType"></a>== EntityStateServiceControlsAcceptedType ==

The EntityStateServiceAcceptedControlsType complex type defines the different values that are valid for the controls_accepted entity of a service. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the controls_accepted entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| SERVICE_ACCEPT_NETBINDCHANGE | <div>The SERVICE_ACCEPT_NETBINDCHANGE type means that the service is a network component and can accept changes in its binding without being stopped or restarted. The DWORD value that this corresponds to is 0x00000010.</div> |  
| SERVICE_ACCEPT_PARAMCHANGE | <div>The SERVICE_ACCEPT_PARAMCHANGE type means that the service can re-read its startup parameters without being stopped or restarted. The DWORD value that this corresponds to is 0x00000008.</div> |  
| SERVICE_ACCEPT_PAUSE_CONTINUE | <div>The SERVICE_ACCEPT_PAUSE_CONTINUE type means that the service can be paused or continued. The DWORD value that this corresponds to is 0x00000002.</div> |  
| SERVICE_ACCEPT_PRESHUTDOWN | <div>The SERVICE_ACCEPT_PRESHUTDOWN type means that the service can receive pre-shutdown notifications. The DWORD value that this corresponds to is 0x00000100.</div> |  
| SERVICE_ACCEPT_SHUTDOWN | <div>The SERVICE_ACCEPT_SHUTDOWN type means that the service can receive shutdown notifications. The DWORD value that this corresponds to is 0x00000004.</div> |  
| SERVICE_ACCEPT_STOP | <div>The SERVICE_ACCEPT_STOP type means that the service can be stopped. The DWORD value that this corresponds to is 0x00000001.</div> |  
| SERVICE_ACCEPT_HARDWAREPROFILECHANGE | <div>The SERVICE_ACCEPT_HARDWAREPROFILECHANGE type means that the service can receive notifications when the system's hardware profile changes. The DWORD value that this corresponds to is 0x00000020.</div> |  
| SERVICE_ACCEPT_POWEREVENT | <div>The SERVICE_ACCEPT_POWEREVENT type means that the service can receive notifications when the system's power status has changed. The DWORD value that this corresponds to is 0x00000040.</div> |  
| SERVICE_ACCEPT_SESSIONCHANGE | <div>The SERVICE_ACCEPT_SESSIONCHANGE type means that the service can receive notifications when the system's session status has changed. The DWORD value that this corresponds to is 0x00000080.</div> |  
| SERVICE_ACCEPT_TIMECHANGE | <div>The SERVICE_ACCEPT_TIMECHANGE type means that the service can receive notifications when the system time changes. The DWORD value that this corresponds to is 0x00000200.</div> |  
| SERVICE_ACCEPT_TRIGGEREVENT | <div>The SERVICE_ACCEPT_TRIGGEREVENT type means that the service can receive notifications when an event that the service has registered for occurs on the system. The DWORD value that this corresponds to is 0x00000400.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateServiceCurrentStateType"></a>== EntityStateServiceCurrentStateType ==

The EntityStateServiceCurrentStateType complex type defines the different values that are valid for the current_state entity of a service. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the current_state entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| SERVICE_CONTINUE_PENDING | <div>The SERVICE_CONTINUE_PENDING type means that the service has been sent a command to continue, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000005.</div> |  
| SERVICE_PAUSE_PENDING | <div>The SERVICE_PAUSE_PENDING type means that the service has been sent a command to pause, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000006.</div> |  
| SERVICE_PAUSED | <div>The SERVICE_PAUSED type means that the service is paused. The DWORD value that this corresponds to is 0x00000007.</div> |  
| SERVICE_RUNNING | <div>The SERVICE_RUNNING type means that the service is running. The DWORD value that this corresponds to is 0x00000004.</div> |  
| SERVICE_START_PENDING | <div>The SERVICE_START_PENDING type means that the service has been sent a command to start, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000002.</div> |  
| SERVICE_STOP_PENDING | <div>The SERVICE_STOP_PENDING type means that the service has been sent a command to stop, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000003.</div> |  
| SERVICE_STOPPED | <div>The SERVICE_STOPPED type means that the service is stopped. The DWORD value that this corresponds to is 0x00000001.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateServiceStartTypeType"></a>== EntityStateServiceStartTypeType ==

The EntityStateServiceStartTypeType complex type defines the different values that are valid for the start_type entity of a service. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the start_type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| SERVICE_AUTO_START | <div>The SERVICE_AUTO_START type means that the service is started automatically by the Service Control Manager (SCM) during startup. The DWORD value that this corresponds to is 0x00000002.</div> |  
| SERVICE_BOOT_START | <div>The SERVICE_BOOT_START type means that the driver service is started by the system loader. The DWORD value that this corresponds to is 0x00000000.</div> |  
| SERVICE_DEMAND_START | <div>The SERVICE_DEMAND_START type means that the service is started by the Service Control Manager (SCM) when StartService() is called. The DWORD value that this corresponds to is 0x00000003.</div> |  
| SERVICE_DISABLED | <div>The SERVICE_DISABLED type means that the service cannot be started. The DWORD value that this corresponds to is 0x00000004.</div> |  
| SERVICE_SYSTEM_START | <div>The SERVICE_SYSTEM_START type means that the service is a device driver started by IoInitSystem(). The DWORD value that this corresponds to is 0x00000001.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateServiceTypeType"></a>== EntityStateServiceTypeType ==

The EntityStateServiceTypeType complex type defines the different values that are valid for the service_type entity of a service. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the service_type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| SERVICE_FILE_SYSTEM_DRIVER | <div>The SERVICE_FILE_SYSTEM_DRIVER type means that the service is a file system driver. The DWORD value that this corresponds to is 0x00000002.</div> |  
| SERVICE_KERNEL_DRIVER | <div>The SERVICE_KERNEL_DRIVER type means that the service is a driver. The DWORD value that this corresponds to is 0x00000001.</div> |  
| SERVICE_WIN32_OWN_PROCESS | <div>The SERVICE_WIN32_OWN_PROCESS type means that the service runs in its own process. The DWORD value that this corresponds to is 0x00000010.</div> |  
| SERVICE_WIN32_SHARE_PROCESS | <div>The SERVICE_WIN32_SHARE_PROCESS type means that the service runs in a process with other services. The DWORD value that this corresponds to is 0x00000020.</div> |  
| SERVICE_INTERACTIVE_PROCESS | <div>The SERVICE_WIN32_SHARE_PROCESS type means that the service runs in a process with other services. The DWORD value that this corresponds to is 0x00000100.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSharedResourceTypeType"></a>== EntityStateSharedResourceTypeType ==

The EntityStateSharedResourceTypeType complex type defines the different values that are valid for the type entity of a shared resource state. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the type entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

It is also important to note that special shared resources are those reserved for remote administration, interprocess communication, and administrative shares.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| STYPE_DISKTREE | <div>The STYPE_DISKTREE type means that the shared resource is a disk drive. The DWORD value that this corresponds to is 0x00000000.</div> |  
| STYPE_DISKTREE_SPECIAL | <div>The STYPE_DISKTREE_SPECIAL type means that the shared resource is a special disk drive. The DWORD value that this corresponds to is 0x80000000.</div> |  
| STYPE_DISKTREE_TEMPORARY | <div>The STYPE_DISKTREE_TEMPORARY type means that the shared resource is a temporary disk drive. The DWORD value that this corresponds to is 0x40000000.</div> |  
| STYPE_DISKTREE_SPECIAL_TEMPORARY | <div>The STYPE_DISKTREE_SPECIAL_TEMPORARY type means that the shared resource is a temporary, special disk drive. The DWORD value that this corresponds to is 0xC0000000.</div> |  
| STYPE_PRINTQ | <div>The STYPE_PRINTQ type means that the shared resource is a print queue. The DWORD value that this corresponds to is 0x00000001.</div> |  
| STYPE_PRINTQ_SPECIAL | <div>The STYPE_PRINTQ_SPECIAL type means that the shared resource is a special print queue. The DWORD value that this corresponds to is 0x80000001.</div> |  
| STYPE_PRINTQ_TEMPORARY | <div>The STYPE_PRINTQ_TEMPORARY type means that the shared resource is a temporary print queue. The DWORD value that this corresponds to is 0x40000001.</div> |  
| STYPE_PRINTQ_SPECIAL_TEMPORARY | <div>The STYPE_PRINTQ_SPECIAL_TEMPORARY type means that the shared resource is a temporary, special print queue. The DWORD value that this corresponds to is 0xC0000001.</div> |  
| STYPE_DEVICE | <div>The STYPE_DEVICE type means that the shared resource is a communication device. The DWORD value that this corresponds to is 0x00000002.</div> |  
| STYPE_DEVICE_SPECIAL | <div>The STYPE_DEVICE_SPECIAL type means that the shared resource is a special communication device. The DWORD value that this corresponds to is 0x80000002.</div> |  
| STYPE_DEVICE_TEMPORARY | <div>The STYPE_DEVICE_TEMPORARY type means that the shared resource is a temporary communication device. The DWORD value that this corresponds to is 0x40000002.</div> |  
| STYPE_DEVICE_SPECIAL_TEMPORARY | <div>The STYPE_DEVICE_SPECIAL_TEMPORARY type means that the shared resource is a temporary, special communication device. The DWORD value that this corresponds to is 0xC0000002.</div> |  
| STYPE_IPC | <div>The STYPE_IPC type means that the shared resource is a interprocess communication. The DWORD value that this corresponds to is 0x00000003.</div> |  
| STYPE_IPC_SPECIAL | <div>The STYPE_IPC_SPECIAL type means that the shared resource is a special interprocess communication. The DWORD value that this corresponds to is 0x80000003.</div> |  
| STYPE_IPC_TEMPORARY | <div>The STYPE_IPC_TEMPORARY type means that the shared resource is a temporary interprocess communication. The DWORD value that this corresponds to is 0x40000003.</div> |  
| STYPE_IPC_SPECIAL_TEMPORARY | <div>The STYPE_IPC_SPECIAL_TEMPORARY type means that the shared resource is a temporary, special interprocess communication. The DWORD value that this corresponds to is 0xC0000003.</div> |  
| ~~STYPE_SPECIAL~~ | ~~<div>The STYPE_SPECIAL type means that this is a special share reserved for interprocess communication (IPC$) or remote administration of the server (ADMIN$). Can also refer to administrative shares such as C$, D$, E$, and so forth. The DWORD value that this corresponds to is 0x40000000.</div>~~> :small_red_triangle: **Deprecated As Of Version 5.6** :small_red_triangle: <br />**Reason:** In version 5.6 of the OVAL Language, the EntityStateSharedResourceTypeType was changed to include all of the different shared resource types as specified in Microsoft's documentation of the shi2_type member of the SHARE_INFO_2 structure. As a result, the STYPE_SPECIAL value by itself is no longer valid because it would actually be equal to the value STYPE_DISKTREE_SPECIAL (0x80000000) which is STYPE_DISKTREE (0x00000000) OR'd with STYPE_SPECIAL (0x80000000).<br />**Comment:** This value has been deprecated and will be removed in version 6.0 of the language.<br /> |  
| ~~STYPE_TEMPORARY~~ | ~~<div>The STYPE_TEMPORARY type means that the shared resource is a temporary share. The DWORD value that this corresponds to is 0x80000000.</div>~~> :small_red_triangle: **Deprecated As Of Version 5.6** :small_red_triangle: <br />**Reason:** In version 5.6 of the OVAL Language, the EntityStateSharedResourceTypeType was changed to include all of the different shared resource types as specified in Microsoft's documentation of the shi2_type member of the SHARE_INFO_2 structure. As a result, the STYPE_TEMPORARY value by itself is no longer valid because it would actually be equal to the value STYPE_DISKTREE_TEMPORARY (0x40000000) which is STYPE_DISKTREE (0x00000000) OR'd with STYPE_TEMPORARY (0x40000000).<br />**Comment:** This value has been deprecated and will be removed in version 6.0 of the language.<br /> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityObjectSystemMetricIndexType"></a>== EntityObjectSystemMetricIndexType ==

The EntityObjectSystemMetricIndexType complex type defines the different values that are valid for the index entity of a system metric object. These values describe the system metric or configuration setting to be retrieved. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the index entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values. Please note that the values identified are for the index entity and are not valid values for the datatype attribute.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| SM_ARRANGE | <div>The flags that specify how the system arranged minimized windows.</div> |  
| SM_CLEANBOOT | <div>The value that specifies how the system is started.</div> |  
| SM_CMONITORS | <div>The number of display monitors on a desktop.</div> |  
| SM_CMOUSEBUTTONS | <div>The number of buttons on a mouse, or zero if no mouse is installed.</div> |  
| SM_CXBORDER | <div>The width of a window border, in pixels. This is equivalent to the SM_CXEDGE value for windows with the 3-D look.</div> |  
| SM_CXCURSOR | <div>The width of a cursor, in pixels. The system cannot create cursors of other sizes.</div> |  
| SM_CXDLGFRAME | <div>This value is the same as SM_CXFIXEDFRAME.</div> |  
| SM_CXDOUBLECLK | <div>The width of the rectangle around the location of a first click in a double-click sequence, in pixels.</div> |  
| SM_CXDRAG | <div>The number of pixels on either side of a mouse-down point that the mouse pointer can move before a drag operation begins.</div> |  
| SM_CXEDGE | <div>The width of a 3-D border, in pixels. This metric is the 3-D counterpart of SM_CXBORDER.</div> |  
| SM_CXFIXEDFRAME | <div>The thickness of the frame around the perimeter of a window that has a caption but is not sizable, in pixels.</div> |  
| SM_CXFOCUSBORDER | <div>The width of the left and right edges of the focus rectangle that the DrawFocusRect draws.</div> |  
| SM_CXFRAME | <div>This value is the same as SM_CXSIZEFRAME.</div> |  
| SM_CXFULLSCREEN | <div>The width of the client area for a full-screen window on the primary display monitor, in pixels.</div> |  
| SM_CXHSCROLL | <div>The width of the arrow bitmap on a horizontal scroll bar, in pixels.</div> |  
| SM_CXHTHUMB | <div>The width of the thumb box in a horizontal scroll bar, in pixels.</div> |  
| SM_CXICON | <div>The default width of an icon, in pixels.</div> |  
| SM_CXICONSPACING | <div>The width of a grid cell for items in large icon view, in pixels.</div> |  
| SM_CXMAXIMIZED | <div>The default width, in pixels, of a maximized top-level window on the primary display monitor.</div> |  
| SM_CXMAXTRACK | <div>The default maximum width of a window that has a caption and sizing borders, in pixels.</div> |  
| SM_CXMENUCHECK | <div>The width of the default menu check-mark bitmap, in pixels.</div> |  
| SM_CXMENUSIZE | <div>The width of menu bar buttons, such as the child window close button that is used in the multiple document interface, in pixels.</div> |  
| SM_CXMIN | <div>The minimum width of a window, in pixels.</div> |  
| SM_CXMINIMIZED | <div>The width of a minimized window, in pixels.</div> |  
| SM_CXMINSPACING | <div>The width of a grid cell for a minimized window, in pixels.</div> |  
| SM_CXMINTRACK | <div>The minimum tracking width of a window, in pixels.</div> |  
| SM_CXPADDEDBORDER | <div>The amount of border padding for captioned windows, in pixels.</div> |  
| SM_CXSCREEN | <div>The width of the screen of the primary display monitor, in pixels.</div> |  
| SM_CXSIZE | <div>The width of a button in a window caption or title bar, in pixels.</div> |  
| SM_CXSIZEFRAME | <div>The thickness of the sizing border around the perimeter of a window that can be resized, in pixels.</div> |  
| SM_CXSMICON | <div>The recommended width of a small icon, in pixels.</div> |  
| SM_CXSMSIZE | <div>The width of small caption buttons, in pixels.</div> |  
| SM_CXVIRTUALSCREEN | <div>The width of the virtual screen, in pixels.</div> |  
| SM_CXVSCROLL | <div>The width of a vertical scroll bar, in pixels.</div> |  
| SM_CYBORDER | <div>The height of a window border, in pixels.</div> |  
| SM_CYCAPTION | <div>The height of a caption area, in pixels.</div> |  
| SM_CYCURSOR | <div>The height of a cursor, in pixels.</div> |  
| SM_CYDLGFRAME | <div>This value is the same as SM_CYFIXEDFRAME.</div> |  
| SM_CYDOUBLECLK | <div>The height of the rectangle around the location of a first click in a double-click sequence, in pixels.</div> |  
| SM_CYDRAG | <div>The number of pixels above and below a mouse-down point that the mouse pointer can move before a drag operation begins.</div> |  
| SM_CYEDGE | <div>The height of a 3-D border, in pixels. This is the 3-D counterpart of SM_CYBORDER.</div> |  
| SM_CYFIXEDFRAME | <div>The thickness of the frame around the perimeter of a window that has a caption but is not sizable, in pixels.</div> |  
| SM_CYFOCUSBORDER | <div>The height of the top and bottom edges of the focus rectangle drawn by DrawFocusRect. This value is in pixels.</div> |  
| SM_CYFRAME | <div>This value is the same as SM_CYSIZEFRAME.</div> |  
| SM_CYFULLSCREEN | <div>The height of the client area for a full-screen window on the primary display monitor, in pixels.</div> |  
| SM_CYHSCROLL | <div>The height of a horizontal scroll bar, in pixels.</div> |  
| SM_CYICON | <div>The default height of an icon, in pixels.</div> |  
| SM_CYICONSPACING | <div>The height of a grid cell for items in large icon view, in pixels.</div> |  
| SM_CYKANJIWINDOW | <div>For double byte character set versions of the system, this is the height of the Kanji window at the bottom of the screen, in pixels.</div> |  
| SM_CYMAXIMIZED | <div>The default height, in pixels, of a maximized top-level window on the primary display monitor.</div> |  
| SM_CYMAXTRACK | <div>The default maximum height of a window that has a caption and sizing borders, in pixels.</div> |  
| SM_CYMENU | <div>The height of a single-line menu bar, in pixels.</div> |  
| SM_CYMENUCHECK | <div>The height of the default menu check-mark bitmap, in pixels.</div> |  
| SM_CYMENUSIZE | <div>The height of menu bar buttons, such as the child window close button that is used in the multiple document interface, in pixels.</div> |  
| SM_CYMIN | <div>The minimum height of a window, in pixels.</div> |  
| SM_CYMINIMIZED | <div>The height of a minimized window, in pixels.</div> |  
| SM_CYMINSPACING | <div>The height of a grid cell for a minimized window, in pixels.</div> |  
| SM_CYMINTRACK | <div>The minimum tracking height of a window, in pixels.</div> |  
| SM_CYSCREEN | <div>The height of the screen of the primary display monitor, in pixels.</div> |  
| SM_CYSIZE | <div>The height of a button in a window caption or title bar, in pixels.</div> |  
| SM_CYSIZEFRAME | <div>The thickness of the sizing border around the perimeter of a window that can be resized, in pixels.</div> |  
| SM_CYSMCAPTION | <div>The height of a small caption, in pixels.</div> |  
| SM_CYSMICON | <div>The recommended height of a small icon, in pixels.</div> |  
| SM_CYSMSIZE | <div>The height of small caption buttons, in pixels.</div> |  
| SM_CYVIRTUALSCREEN | <div>The height of the virtual screen, in pixels. The virtual screen is the bounding rectangle of all display monitors.</div> |  
| SM_CYVSCROLL | <div>The height of the arrow bitmap on a vertical scroll bar, in pixels.</div> |  
| SM_CYVTHUMB | <div>The height of the thumb box in a vertical scroll bar, in pixels.</div> |  
| SM_DBCSENABLED | <div>Nonzero if User32.dll supports DBCS; otherwise, 0.</div> |  
| SM_DEBUG | <div>Nonzero if the debug version of User.exe is installed; otherwise, 0.</div> |  
| SM_DIGITIZER | <div>Nonzero if the current operating system is Windows 7 or Windows Server 2008 R2 and the Tablet PC Input service is started; otherwise, 0. The return value is a bitmask that specifies the type of digitizer input supported by the device.</div> |  
| SM_IMMENABLED | <div>Nonzero if Input Method Manager/Input Method Editor features are enabled; otherwise, 0.</div> |  
| SM_MAXIMUMTOUCHES | <div>Nonzero if there are digitizers in the system; otherwise, 0.</div> |  
| SM_MEDIACENTER | <div>Nonzero if the current operating system is the Windows XP, Media Center Edition, 0 if not.</div> |  
| SM_MENUDROPALIGNMENT | <div>Nonzero if drop-down menus are right-aligned with the corresponding menu-bar item; 0 if the menus are left-aligned.</div> |  
| SM_MIDEASTENABLED | <div>Nonzero if the system is enabled for Hebrew and Arabic languages, 0 if not.</div> |  
| SM_MOUSEPRESENT | <div>Nonzero if a mouse is installed; otherwise, 0.</div> |  
| SM_MOUSEHORIZONTALWHEELPRESENT | <div>Nonzero if a mouse with a horizontal scroll wheel is installed; otherwise 0.</div> |  
| SM_MOUSEWHEELPRESENT | <div>Nonzero if a mouse with a vertical scroll wheel is installed; otherwise 0.</div> |  
| SM_NETWORK | <div>The least significant bit is set if a network is present; otherwise, it is cleared.</div> |  
| SM_PENWINDOWS | <div>Nonzero if the Microsoft Windows for Pen computing extensions are installed; zero otherwise.</div> |  
| SM_REMOTECONTROL | <div>This system metric is used in a Terminal Services environment to determine if the current Terminal Server session is being remotely controlled. Its value is nonzero if the current session is remotely controlled; otherwise, 0.</div> |  
| SM_REMOTESESSION | <div>This system metric is used in a Terminal Services environment. If the calling process is associated with a Terminal Services client session, the return value is nonzero. If the calling process is associated with the Terminal Services console session, the return value is 0.</div> |  
| SM_SAMEDISPLAYFORMAT | <div>Nonzero if all the display monitors have the same color format, otherwise, 0.</div> |  
| SM_SECURE | <div>This system metric should be ignored; it always returns 0.</div> |  
| SM_SERVERR2 | <div>The build number if the system is Windows Server 2003 R2; otherwise, 0.</div> |  
| SM_SHOWSOUNDS | <div>Nonzero if the user requires an application to present information visually in situations where it would otherwise present the information only in audible form; otherwise, 0.</div> |  
| SM_SHUTTINGDOWN | <div>Nonzero if the current session is shutting down; otherwise, 0.</div> |  
| SM_SLOWMACHINE | <div>Nonzero if the computer has a low-end (slow) processor; otherwise, 0.</div> |  
| SM_STARTER | <div>Nonzero if the current operating system is Windows 7 Starter Edition, Windows Vista Starter, or Windows XP Starter Edition; otherwise, 0.</div> |  
| SM_SWAPBUTTON | <div>Nonzero if the meanings of the left and right mouse buttons are swapped; otherwise, 0.</div> |  
| SM_TABLETPC | <div>Nonzero if the current operating system is the Windows XP Tablet PC edition or if the current operating system is Windows Vista or Windows 7 and the Tablet PC Input service is started; otherwise, 0.</div> |  
| SM_XVIRTUALSCREEN | <div>The coordinates for the left side of the virtual screen.</div> |  
| SM_YVIRTUALSCREEN | <div>The coordinates for the top of the virtual screen.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSystemMetricIndexType"></a>== EntityStateSystemMetricIndexType ==

The EntityStateSystemMetricIndexType complex type defines the different values that are valid for the index entity of a systemmetric_state. These values describe the system metric or configuration setting to be retrieved. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the index entity. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values. Please note that the values identified are for the index entity and are not valid values for the datatype attribute.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| SM_ARRANGE | <div>The flags that specify how the system arranged minimized windows.</div> |  
| SM_CLEANBOOT | <div>The value that specifies how the system is started.</div> |  
| SM_CMONITORS | <div>The number of display monitors on a desktop.</div> |  
| SM_CMOUSEBUTTONS | <div>The number of buttons on a mouse, or zero if no mouse is installed.</div> |  
| SM_CXBORDER | <div>The width of a window border, in pixels. This is equivalent to the SM_CXEDGE value for windows with the 3-D look.</div> |  
| SM_CXCURSOR | <div>The width of a cursor, in pixels. The system cannot create cursors of other sizes.</div> |  
| SM_CXDLGFRAME | <div>This value is the same as SM_CXFIXEDFRAME.</div> |  
| SM_CXDOUBLECLK | <div>The width of the rectangle around the location of a first click in a double-click sequence, in pixels.</div> |  
| SM_CXDRAG | <div>The number of pixels on either side of a mouse-down point that the mouse pointer can move before a drag operation begins.</div> |  
| SM_CXEDGE | <div>The width of a 3-D border, in pixels. This metric is the 3-D counterpart of SM_CXBORDER.</div> |  
| SM_CXFIXEDFRAME | <div>The thickness of the frame around the perimeter of a window that has a caption but is not sizable, in pixels.</div> |  
| SM_CXFOCUSBORDER | <div>The width of the left and right edges of the focus rectangle that the DrawFocusRect draws.</div> |  
| SM_CXFRAME | <div>This value is the same as SM_CXSIZEFRAME.</div> |  
| SM_CXFULLSCREEN | <div>The width of the client area for a full-screen window on the primary display monitor, in pixels.</div> |  
| SM_CXHSCROLL | <div>The width of the arrow bitmap on a horizontal scroll bar, in pixels.</div> |  
| SM_CXHTHUMB | <div>The width of the thumb box in a horizontal scroll bar, in pixels.</div> |  
| SM_CXICON | <div>The default width of an icon, in pixels.</div> |  
| SM_CXICONSPACING | <div>The width of a grid cell for items in large icon view, in pixels.</div> |  
| SM_CXMAXIMIZED | <div>The default width, in pixels, of a maximized top-level window on the primary display monitor.</div> |  
| SM_CXMAXTRACK | <div>The default maximum width of a window that has a caption and sizing borders, in pixels.</div> |  
| SM_CXMENUCHECK | <div>The width of the default menu check-mark bitmap, in pixels.</div> |  
| SM_CXMENUSIZE | <div>The width of menu bar buttons, such as the child window close button that is used in the multiple document interface, in pixels.</div> |  
| SM_CXMIN | <div>The minimum width of a window, in pixels.</div> |  
| SM_CXMINIMIZED | <div>The width of a minimized window, in pixels.</div> |  
| SM_CXMINSPACING | <div>The width of a grid cell for a minimized window, in pixels.</div> |  
| SM_CXMINTRACK | <div>The minimum tracking width of a window, in pixels.</div> |  
| SM_CXPADDEDBORDER | <div>The amount of border padding for captioned windows, in pixels.</div> |  
| SM_CXSCREEN | <div>The width of the screen of the primary display monitor, in pixels.</div> |  
| SM_CXSIZE | <div>The width of a button in a window caption or title bar, in pixels.</div> |  
| SM_CXSIZEFRAME | <div>The thickness of the sizing border around the perimeter of a window that can be resized, in pixels.</div> |  
| SM_CXSMICON | <div>The recommended width of a small icon, in pixels.</div> |  
| SM_CXSMSIZE | <div>The width of small caption buttons, in pixels.</div> |  
| SM_CXVIRTUALSCREEN | <div>The width of the virtual screen, in pixels.</div> |  
| SM_CXVSCROLL | <div>The width of a vertical scroll bar, in pixels.</div> |  
| SM_CYBORDER | <div>The height of a window border, in pixels.</div> |  
| SM_CYCAPTION | <div>The height of a caption area, in pixels.</div> |  
| SM_CYCURSOR | <div>The height of a cursor, in pixels.</div> |  
| SM_CYDLGFRAME | <div>This value is the same as SM_CYFIXEDFRAME.</div> |  
| SM_CYDOUBLECLK | <div>The height of the rectangle around the location of a first click in a double-click sequence, in pixels.</div> |  
| SM_CYDRAG | <div>The number of pixels above and below a mouse-down point that the mouse pointer can move before a drag operation begins.</div> |  
| SM_CYEDGE | <div>The height of a 3-D border, in pixels. This is the 3-D counterpart of SM_CYBORDER.</div> |  
| SM_CYFIXEDFRAME | <div>The thickness of the frame around the perimeter of a window that has a caption but is not sizable, in pixels.</div> |  
| SM_CYFOCUSBORDER | <div>The height of the top and bottom edges of the focus rectangle drawn by DrawFocusRect. This value is in pixels.</div> |  
| SM_CYFRAME | <div>This value is the same as SM_CYSIZEFRAME.</div> |  
| SM_CYFULLSCREEN | <div>The height of the client area for a full-screen window on the primary display monitor, in pixels.</div> |  
| SM_CYHSCROLL | <div>The height of a horizontal scroll bar, in pixels.</div> |  
| SM_CYICON | <div>The default height of an icon, in pixels.</div> |  
| SM_CYICONSPACING | <div>The height of a grid cell for items in large icon view, in pixels.</div> |  
| SM_CYKANJIWINDOW | <div>For double byte character set versions of the system, this is the height of the Kanji window at the bottom of the screen, in pixels.</div> |  
| SM_CYMAXIMIZED | <div>The default height, in pixels, of a maximized top-level window on the primary display monitor.</div> |  
| SM_CYMAXTRACK | <div>The default maximum height of a window that has a caption and sizing borders, in pixels.</div> |  
| SM_CYMENU | <div>The height of a single-line menu bar, in pixels.</div> |  
| SM_CYMENUCHECK | <div>The height of the default menu check-mark bitmap, in pixels.</div> |  
| SM_CYMENUSIZE | <div>The height of menu bar buttons, such as the child window close button that is used in the multiple document interface, in pixels.</div> |  
| SM_CYMIN | <div>The minimum height of a window, in pixels.</div> |  
| SM_CYMINIMIZED | <div>The height of a minimized window, in pixels.</div> |  
| SM_CYMINSPACING | <div>The height of a grid cell for a minimized window, in pixels.</div> |  
| SM_CYMINTRACK | <div>The minimum tracking height of a window, in pixels.</div> |  
| SM_CYSCREEN | <div>The height of the screen of the primary display monitor, in pixels.</div> |  
| SM_CYSIZE | <div>The height of a button in a window caption or title bar, in pixels.</div> |  
| SM_CYSIZEFRAME | <div>The thickness of the sizing border around the perimeter of a window that can be resized, in pixels.</div> |  
| SM_CYSMCAPTION | <div>The height of a small caption, in pixels.</div> |  
| SM_CYSMICON | <div>The recommended height of a small icon, in pixels.</div> |  
| SM_CYSMSIZE | <div>The height of small caption buttons, in pixels.</div> |  
| SM_CYVIRTUALSCREEN | <div>The height of the virtual screen, in pixels. The virtual screen is the bounding rectangle of all display monitors.</div> |  
| SM_CYVSCROLL | <div>The height of the arrow bitmap on a vertical scroll bar, in pixels.</div> |  
| SM_CYVTHUMB | <div>The height of the thumb box in a vertical scroll bar, in pixels.</div> |  
| SM_DBCSENABLED | <div>Nonzero if User32.dll supports DBCS; otherwise, 0.</div> |  
| SM_DEBUG | <div>Nonzero if the debug version of User.exe is installed; otherwise, 0.</div> |  
| SM_DIGITIZER | <div>Nonzero if the current operating system is Windows 7 or Windows Server 2008 R2 and the Tablet PC Input service is started; otherwise, 0. The return value is a bitmask that specifies the type of digitizer input supported by the device.</div> |  
| SM_IMMENABLED | <div>Nonzero if Input Method Manager/Input Method Editor features are enabled; otherwise, 0.</div> |  
| SM_MAXIMUMTOUCHES | <div>Nonzero if there are digitizers in the system; otherwise, 0.</div> |  
| SM_MEDIACENTER | <div>Nonzero if the current operating system is the Windows XP, Media Center Edition, 0 if not.</div> |  
| SM_MENUDROPALIGNMENT | <div>Nonzero if drop-down menus are right-aligned with the corresponding menu-bar item; 0 if the menus are left-aligned.</div> |  
| SM_MIDEASTENABLED | <div>Nonzero if the system is enabled for Hebrew and Arabic languages, 0 if not.</div> |  
| SM_MOUSEPRESENT | <div>Nonzero if a mouse is installed; otherwise, 0.</div> |  
| SM_MOUSEHORIZONTALWHEELPRESENT | <div>Nonzero if a mouse with a horizontal scroll wheel is installed; otherwise 0.</div> |  
| SM_MOUSEWHEELPRESENT | <div>Nonzero if a mouse with a vertical scroll wheel is installed; otherwise 0.</div> |  
| SM_NETWORK | <div>The least significant bit is set if a network is present; otherwise, it is cleared.</div> |  
| SM_PENWINDOWS | <div>Nonzero if the Microsoft Windows for Pen computing extensions are installed; zero otherwise.</div> |  
| SM_REMOTECONTROL | <div>This system metric is used in a Terminal Services environment to determine if the current Terminal Server session is being remotely controlled. Its value is nonzero if the current session is remotely controlled; otherwise, 0.</div> |  
| SM_REMOTESESSION | <div>This system metric is used in a Terminal Services environment. If the calling process is associated with a Terminal Services client session, the return value is nonzero. If the calling process is associated with the Terminal Services console session, the return value is 0.</div> |  
| SM_SAMEDISPLAYFORMAT | <div>Nonzero if all the display monitors have the same color format, otherwise, 0.</div> |  
| SM_SECURE | <div>This system metric should be ignored; it always returns 0.</div> |  
| SM_SERVERR2 | <div>The build number if the system is Windows Server 2003 R2; otherwise, 0.</div> |  
| SM_SHOWSOUNDS | <div>Nonzero if the user requires an application to present information visually in situations where it would otherwise present the information only in audible form; otherwise, 0.</div> |  
| SM_SHUTTINGDOWN | <div>Nonzero if the current session is shutting down; otherwise, 0.</div> |  
| SM_SLOWMACHINE | <div>Nonzero if the computer has a low-end (slow) processor; otherwise, 0.</div> |  
| SM_STARTER | <div>Nonzero if the current operating system is Windows 7 Starter Edition, Windows Vista Starter, or Windows XP Starter Edition; otherwise, 0.</div> |  
| SM_SWAPBUTTON | <div>Nonzero if the meanings of the left and right mouse buttons are swapped; otherwise, 0.</div> |  
| SM_TABLETPC | <div>Nonzero if the current operating system is the Windows XP Tablet PC edition or if the current operating system is Windows Vista or Windows 7 and the Tablet PC Input service is started; otherwise, 0.</div> |  
| SM_XVIRTUALSCREEN | <div>The coordinates for the left side of the virtual screen.</div> |  
| SM_YVIRTUALSCREEN | <div>The coordinates for the top of the virtual screen.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityObjectGUIDType"></a>== EntityObjectGUIDType ==

The EntityObjectGUIDType restricts a string value to a representation of a GUID, used for module ID. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

**Pattern:** (\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}){0,}

## <a name="EntityStateGUIDType"></a>== EntityStateGUIDType ==

The EntityStateGUIDType restricts a string value to a representation of a GUID, used for module ID. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

**Pattern:** (\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}){0,}

## <a name="EntityObjectCmdletVerbType"></a>== EntityObjectCmdletVerbType ==

The EntityObjectCmdletVerbType restricts a string value to a set of allow cmdlet verbs. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| Approve | <div>The Approve verb confirms or agrees to the status of a resource or process.</div> |  
| Assert | <div>The Assert verb affirms the state of a resource.</div> |  
| Compare | <div>The Compare verb evaluates the data from one resource against the data from another resource.</div> |  
| Confirm | <div>The Confirm verb acknowledges, verifies, or validates, the state of a resource or process.</div> |  
| Find | <div>The Find verb looks for an object in a container that is unknown, implied, optional, or specified.</div> |  
| Get | <div>The Get verb specifies an action that retrieves a resource.</div> |  
| Import | <div>The Import verb creates a resource from data that is stored in a persistent data store (such as a file) or in an interchange format.</div> |  
| Measure | <div>The Measure verb identifies resources that are consumed by a specified operation, or retrieves statistics about a resource.</div> |  
| Read | <div>The Read verb acquires information from a source.</div> |  
| Request | <div>The Request verb asks for a resource or asks for permissions.</div> |  
| Resolve | <div>The Resolve verb maps a shorthand representation of a resource to a more complete representation.</div> |  
| Search | <div>The Search verb creates a reference to a resource in a container.</div> |  
| Select | <div>The Select verb locates a resource in a container.</div> |  
| Show | <div>The Show verb makes a resource visible to the user.</div> |  
| Test | <div>The Test verb verifies the operation or consistency of a resource.</div> |  
| Trace | <div>The Trace verb tracks the activities of a resource.</div> |  
| Watch | <div>The Watch verb continually inspects or monitors a resource for changes.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateCmdletVerbType"></a>== EntityStateCmdletVerbType ==

The EntityStateCmdletVerbType restricts a string value to a set of allow cmdlet verbs. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| Approve | <div>The Approve verb confirms or agrees to the status of a resource or process.</div> |  
| Assert | <div>The Assert verb affirms the state of a resource.</div> |  
| Compare | <div>The Compare verb evaluates the data from one resource against the data from another resource.</div> |  
| Confirm | <div>The Confirm verb acknowledges, verifies, or validates, the state of a resource or process.</div> |  
| Find | <div>The Find verb looks for an object in a container that is unknown, implied, optional, or specified.</div> |  
| Get | <div>The Get verb specifies an action that retrieves a resource.</div> |  
| Import | <div>The Import verb creates a resource from data that is stored in a persistent data store (such as a file) or in an interchange format.</div> |  
| Measure | <div>The Measure verb identifies resources that are consumed by a specified operation, or retrieves statistics about a resource.</div> |  
| Read | <div>The Read verb acquires information from a source.</div> |  
| Request | <div>The Request verb asks for a resource or asks for permissions.</div> |  
| Resolve | <div>The Resolve verb maps a shorthand representation of a resource to a more complete representation.</div> |  
| Search | <div>The Search verb creates a reference to a resource in a container.</div> |  
| Select | <div>The Select verb locates a resource in a container.</div> |  
| Show | <div>The Show verb makes a resource visible to the user.</div> |  
| Test | <div>The Test verb verifies the operation or consistency of a resource.</div> |  
| Trace | <div>The Trace verb tracks the activities of a resource.</div> |  
| Watch | <div>The Watch verb continually inspects or monitors a resource for changes.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateWindowsViewType"></a>== EntityStateWindowsViewType ==

The EntityStateWindowsViewType restricts a string value to a specific set of values: 32-bit and 64-bit. These values describe the different values possible for the windows view behavior.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| 32_bit | <div>Indicates the 32_bit windows view.</div> |  
| 64_bit | <div>Indicates the 64_bit windows view.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityObjectUserRightType"></a>== EntityObjectUserRightType ==

The EntityObjectUserRightType restricts a string value to a specific set of values that describe the different user rights/privileges. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| SE_ASSIGNPRIMARYTOKEN_NAME | <div>This privilege is required to assign the primary token of a process.</div> |  
| SE_AUDIT_NAME | <div>This privilege is required to generate audit-log entries.</div> |  
| SE_BACKUP_NAME | <div>This privilege is required to perform backup operations.</div> |  
| SE_CHANGE_NOTIFY_NAME | <div>This privilege is required to receive notifications of changes to files or directories.</div> |  
| SE_CREATE_GLOBAL_NAME | <div>This privilege is required to create named file mapping objects in the global namespace during Terminal Services sessions.</div> |  
| SE_CREATE_PAGEFILE_NAME | <div>This privilege is required to create a paging file.</div> |  
| SE_CREATE_PERMANENT_NAME | <div>This privilege is required to create a permanent object.</div> |  
| SE_CREATE_SYMBOLIC_LINK_NAME | <div>This privilege is required to create a symbolic link.</div> |  
| SE_CREATE_TOKEN_NAME | <div>This privilege is required to create a primary token.</div> |  
| SE_DEBUG_NAME | <div>This privilege is required to debug and adjust the memory of a process owned by another account.</div> |  
| SE_ENABLE_DELEGATION_NAME | <div>This privilege is required to mark user and computer accounts as trusted for delegation.</div> |  
| SE_IMPERSONATE_NAME | <div>This privilege is required to impersonate.</div> |  
| SE_INC_BASE_PRIORITY_NAME | <div>This privilege is required to increase the base priority of a process.</div> |  
| SE_INCREASE_QUOTA_NAME | <div>This privilege is required to increase the quota assigned to a process.</div> |  
| SE_INC_WORKING_SET_NAME | <div>This privilege is required to allocate more memory for applications that run in the context of users.</div> |  
| SE_LOAD_DRIVER_NAME | <div>This privilege is required to load or unload a device driver.</div> |  
| SE_LOCK_MEMORY_NAME | <div>This privilege is required to lock physical pages in memory.</div> |  
| SE_MACHINE_ACCOUNT_NAME | <div>This privilege is required to create a computer account.</div> |  
| SE_MANAGE_VOLUME_NAME | <div>This privilege is required to enable volume management privileges.</div> |  
| SE_PROF_SINGLE_PROCESS_NAME | <div>This privilege is required to gather profiling information for a single process.</div> |  
| SE_RELABEL_NAME | <div>This privilege is required to modify the mandatory integrity level of an object.</div> |  
| SE_REMOTE_SHUTDOWN_NAME | <div>This privilege is required to shut down a system using a network request.</div> |  
| SE_RESTORE_NAME | <div>This privilege is required to perform restore operations.</div> |  
| SE_SECURITY_NAME | <div>This privilege is required to perform a number of security-related functions, such as controlling and viewing audit messages.</div> |  
| SE_SHUTDOWN_NAME | <div>This privilege is required to shut down a local system.</div> |  
| SE_SYNC_AGENT_NAME | <div>This privilege is required for a domain controller to use the Lightweight Directory Access Protocol directory synchronization services.</div> |  
| SE_SYSTEM_ENVIRONMENT_NAME | <div>This privilege is required to modify the nonvolatile RAM of systems that use this type of memory to store configuration information.</div> |  
| SE_SYSTEM_PROFILE_NAME | <div>This privilege is required to gather profiling information for the entire system.</div> |  
| SE_SYSTEMTIME_NAME | <div>This privilege is required to modify the system time.</div> |  
| SE_TAKE_OWNERSHIP_NAME | <div>This privilege is required to take ownership of an object without being granted discretionary access.</div> |  
| SE_TCB_NAME | <div>This privilege identifies its holder as part of the trusted computer base.</div> |  
| SE_TIME_ZONE_NAME | <div>This privilege is required to adjust the time zone associated with the computer's internal clock.</div> |  
| SE_TRUSTED_CREDMAN_ACCESS_NAME | <div>This privilege is required to access Credential Manager as a trusted caller.</div> |  
| SE_UNDOCK_NAME | <div>This privilege is required to undock a laptop.</div> |  
| SE_UNSOLICITED_INPUT_NAME | <div>This privilege is required to read unsolicited input from a terminal device.</div> |  
| SE_BATCH_LOGON_NAME | <div>This account right is required for an account to log on using the batch logon type.</div> |  
| SE_DENY_BATCH_LOGON_NAME | <div>This account right explicitly denies an account the right to log on using the batch logon type.</div> |  
| SE_DENY_INTERACTIVE_LOGON_NAME | <div>This account right explicitly denies an account the right to log on using the interactive logon type.</div> |  
| SE_DENY_NETWORK_LOGON_NAME | <div>This account right explicitly denies an account the right to log on using the network logon type.</div> |  
| SE_DENY_REMOTE_INTERACTIVE_LOGON_NAME | <div>This account right explicitly denies an account the right to log on remotely using the interactive logon type.</div> |  
| SE_DENY_SERVICE_LOGON_NAME | <div>This account right explicitly denies an account the right to log on using the service logon type.</div> |  
| SE_INTERACTIVE_LOGON_NAME | <div>This account right is required for an account to log on using the interactive logon type.</div> |  
| SE_NETWORK_LOGON_NAME | <div>This account right is required for an account to log on using the network logon type.</div> |  
| SE_REMOTE_INTERACTIVE_LOGON_NAME | <div>This account right is required for an account to log on remotely using the interactive logon type.</div> |  
| SE_SERVICE_LOGON_NAME | <div>This account right is required for an account to log on using the service logon type.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateUserRightType"></a>== EntityStateUserRightType ==

The EntityStateUserRightType restricts a string value to a specific set of values that describe the different user rights/privileges. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| SE_ASSIGNPRIMARYTOKEN_NAME | <div>This privilege is required to assign the primary token of a process.</div> |  
| SE_AUDIT_NAME | <div>This privilege is required to generate audit-log entries.</div> |  
| SE_BACKUP_NAME | <div>This privilege is required to perform backup operations.</div> |  
| SE_CHANGE_NOTIFY_NAME | <div>This privilege is required to receive notifications of changes to files or directories.</div> |  
| SE_CREATE_GLOBAL_NAME | <div>This privilege is required to create named file mapping objects in the global namespace during Terminal Services sessions.</div> |  
| SE_CREATE_PAGEFILE_NAME | <div>This privilege is required to create a paging file.</div> |  
| SE_CREATE_PERMANENT_NAME | <div>This privilege is required to create a permanent object.</div> |  
| SE_CREATE_SYMBOLIC_LINK_NAME | <div>This privilege is required to create a symbolic link.</div> |  
| SE_CREATE_TOKEN_NAME | <div>This privilege is required to create a primary token.</div> |  
| SE_DEBUG_NAME | <div>This privilege is required to debug and adjust the memory of a process owned by another account.</div> |  
| SE_ENABLE_DELEGATION_NAME | <div>This privilege is required to mark user and computer accounts as trusted for delegation.</div> |  
| SE_IMPERSONATE_NAME | <div>This privilege is required to impersonate.</div> |  
| SE_INC_BASE_PRIORITY_NAME | <div>This privilege is required to increase the base priority of a process.</div> |  
| SE_INCREASE_QUOTA_NAME | <div>This privilege is required to increase the quota assigned to a process.</div> |  
| SE_INC_WORKING_SET_NAME | <div>This privilege is required to allocate more memory for applications that run in the context of users.</div> |  
| SE_LOAD_DRIVER_NAME | <div>This privilege is required to load or unload a device driver.</div> |  
| SE_LOCK_MEMORY_NAME | <div>This privilege is required to lock physical pages in memory.</div> |  
| SE_MACHINE_ACCOUNT_NAME | <div>This privilege is required to create a computer account.</div> |  
| SE_MANAGE_VOLUME_NAME | <div>This privilege is required to enable volume management privileges.</div> |  
| SE_PROF_SINGLE_PROCESS_NAME | <div>This privilege is required to gather profiling information for a single process.</div> |  
| SE_RELABEL_NAME | <div>This privilege is required to modify the mandatory integrity level of an object.</div> |  
| SE_REMOTE_SHUTDOWN_NAME | <div>This privilege is required to shut down a system using a network request.</div> |  
| SE_RESTORE_NAME | <div>This privilege is required to perform restore operations.</div> |  
| SE_SECURITY_NAME | <div>This privilege is required to perform a number of security-related functions, such as controlling and viewing audit messages.</div> |  
| SE_SHUTDOWN_NAME | <div>This privilege is required to shut down a local system.</div> |  
| SE_SYNC_AGENT_NAME | <div>This privilege is required for a domain controller to use the Lightweight Directory Access Protocol directory synchronization services.</div> |  
| SE_SYSTEM_ENVIRONMENT_NAME | <div>This privilege is required to modify the nonvolatile RAM of systems that use this type of memory to store configuration information.</div> |  
| SE_SYSTEM_PROFILE_NAME | <div>This privilege is required to gather profiling information for the entire system.</div> |  
| SE_SYSTEMTIME_NAME | <div>This privilege is required to modify the system time.</div> |  
| SE_TAKE_OWNERSHIP_NAME | <div>This privilege is required to take ownership of an object without being granted discretionary access.</div> |  
| SE_TCB_NAME | <div>This privilege identifies its holder as part of the trusted computer base.</div> |  
| SE_TIME_ZONE_NAME | <div>This privilege is required to adjust the time zone associated with the computer's internal clock.</div> |  
| SE_TRUSTED_CREDMAN_ACCESS_NAME | <div>This privilege is required to access Credential Manager as a trusted caller.</div> |  
| SE_UNDOCK_NAME | <div>This privilege is required to undock a laptop.</div> |  
| SE_UNSOLICITED_INPUT_NAME | <div>This privilege is required to read unsolicited input from a terminal device.</div> |  
| SE_BATCH_LOGON_NAME | <div>This account right is required for an account to log on using the batch logon type.</div> |  
| SE_DENY_BATCH_LOGON_NAME | <div>This account right explicitly denies an account the right to log on using the batch logon type.</div> |  
| SE_DENY_INTERACTIVE_LOGON_NAME | <div>This account right explicitly denies an account the right to log on using the interactive logon type.</div> |  
| SE_DENY_NETWORK_LOGON_NAME | <div>This account right explicitly denies an account the right to log on using the network logon type.</div> |  
| SE_DENY_REMOTE_INTERACTIVE_LOGON_NAME | <div>This account right explicitly denies an account the right to log on remotely using the interactive logon type.</div> |  
| SE_DENY_SERVICE_LOGON_NAME | <div>This account right explicitly denies an account the right to log on using the service logon type.</div> |  
| SE_INTERACTIVE_LOGON_NAME | <div>This account right is required for an account to log on using the interactive logon type.</div> |  
| SE_NETWORK_LOGON_NAME | <div>This account right is required for an account to log on using the network logon type.</div> |  
| SE_REMOTE_INTERACTIVE_LOGON_NAME | <div>This account right is required for an account to log on remotely using the interactive logon type.</div> |  
| SE_SERVICE_LOGON_NAME | <div>This account right is required for an account to log on using the service logon type.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
