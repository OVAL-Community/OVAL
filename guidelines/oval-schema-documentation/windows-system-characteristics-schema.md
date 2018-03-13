# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Windows System Characteristics  
* Version: 5.11.1:1.3  
* Release Date: 12/19/2016 10:00:00 PM

The following is a description of the elements, types, and attributes that compose the Windows specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="accesstoken_item"></a><  ~~accesstoken_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the userright_item. The accesstoken_test suffers from scalability issues when run on a domain controller and should not be used. See the userright_item.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The access token item holds information about the individual privileges and rights associated with a specific access token. It is important to note that these privileges are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information. Each privilege and right in the data section accepts a boolean value signifying whether the privilege is granted or not. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| security_principle | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Security principles include users or groups with either local or domain accounts, and computer accounts created when a computer joins a domain. In Windows, security principles are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. User rights and permissions to access objects such as Active Directory objects, files, and registry settings are assigned to security principles. In a domain environment, security principles should be identified in the form: "domain\trustee name". For local security principles use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| seassignprimarytokenprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a parent process to replace the access token that is associated with a child process.</div>|  
| seauditprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a process to generate audit records in the security log. The security log can be used to trace unauthorized system access.</div>|  
| sebackupprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to circumvent file and directory permissions to back up the system. The privilege is selected only when an application attempts access by using the NTFS backup application programming interface (API). Otherwise, normal file and directory permissions apply.</div>|  
| sechangenotifyprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to pass through folders to which the user otherwise has no access while navigating an object path in the NTFS file system or in the registry. This privilege does not allow the user to list the contents of a folder; it allows the user only to traverse its directories.</div>|  
| secreateglobalprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to create named file mapping objects in the global namespace during Terminal Services sessions.</div>|  
| secreatepagefileprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to create and change the size of a pagefile.</div>|  
| secreatepermanentprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a process to create a directory object in the object manager. It is useful to kernel-mode components that extend the object namespace. Components that are running in kernel mode have this privilege inherently.</div>|  
| secreatesymboliclinkprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user create a symbolic link.</div>|  
| secreatetokenprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a process to create an access token by calling NtCreateToken() or other token-creating APIs.</div>|  
| sedebugprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to attach a debugger to any process. It provides access to sensitive and critical operating system components.</div>|  
| seenabledelegationprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to change the Trusted for Delegation setting on a user or computer object in Active Directory. The user or computer that is granted this privilege must also have write access to the account control flags on the object.</div>|  
| seimpersonateprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to impersonate a client after authentication.</div>|  
| seincreasebasepriorityprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to increase the base priority class of a process.</div>|  
| seincreasequotaprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a process that has access to a second process to increase the processor quota assigned to the second process.</div>|  
| seincreaseworkingsetprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to increase a process working set.</div>|  
| seloaddriverprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to install and remove drivers for Plug and Play devices.</div>|  
| selockmemoryprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk.</div>|  
| semachineaccountprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to add a computer to a specific domain.</div>|  
| semanagevolumeprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a non-administrative or remote user to manage volumes or disks.</div>|  
| seprofilesingleprocessprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to sample the performance of an application process.</div>|  
| serelabelprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to modify an object label.</div>|  
| seremoteshutdownprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to shut down a computer from a remote location on the network.</div>|  
| serestoreprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to circumvent file and directory permissions when restoring backed-up files and directories and to set any valid security principle as the owner of an object.</div>|  
| sesecurityprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to specify object access auditing options for individual resources such as files, Active Directory objects, and registry keys. A user who has this privilege can also view and clear the security log from Event Viewer.</div>|  
| seshutdownprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to shut down the local computer.</div>|  
| sesyncagentprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a process to read all objects and properties in the directory, regardless of the protection on the objects and properties. It is required in order to use Lightweight Directory Access Protocol (LDAP) directory synchronization (Dirsync) services.</div>|  
| sesystemenvironmentprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows modification of system environment variables either by a process through an API or by a user through System Properties.</div>|  
| sesystemprofileprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to sample the performance of system processes.</div>|  
| sesystemtimeprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to adjust the time on the computer's internal clock. It is not required to change the time zone or other display characteristics of the system time.</div>|  
| setakeownershipprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to take ownership of any securable object in the system, including Active Directory objects, NTFS files and folders, printers, registry keys, services, processes, and threads.</div>|  
| setcbprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a process to assume the identity of any user and thus gain access to the resources that the user is authorized to access.</div>|  
| setimezoneprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows a user to change the time zone.</div>|  
| seundockprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user of a portable computer to undock the computer by clicking Eject PC on the Start menu.</div>|  
| seunsolicitedinputprivilege | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If this privilege is enabled, it allows the user to read unsolicited data from a terminal device.</div>|  
| sebatchlogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it can log on using the batch logon type.</div>|  
| seinteractivelogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it can log on using the interactive logon type.</div>|  
| senetworklogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it can log on using the network logon type.</div>|  
| seremoteinteractivelogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it can log on to the computer by using a Remote Desktop connection.</div>|  
| seservicelogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it can log on using the service logon type.</div>|  
| sedenybatchLogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it is explicitly denied the ability to log on using the batch logon type.</div>|  
| sedenyinteractivelogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it is explicitly denied the ability to log on using the interactive logon type.</div>|  
| sedenynetworklogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it is explicitly denied the ability to log on using the network logon type.</div>|  
| sedenyremoteInteractivelogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it is explicitly denied the ability to log on through Terminal Services.</div>|  
| sedenyservicelogonright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it is explicitly denied the ability to log on using the service logon type.</div>|  
| setrustedcredmanaccessnameright | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If an account is assigned this right, it can access the Credential Manager as a trusted caller.</div>|  
  
______________
  
## <a name="activedirectory_item"></a><  ~~activedirectory_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11.1:1.2** :small_red_triangle: <br />**Reason:** Use the original activedirectory_item. The activedirectory57_test suffers from ambiguity; it was never adequately specified, and it does not even seem possible to have structured data in the context of the enumerated AdstypeTypes. Use the original activedirectory_test instead.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The active directory item holds information about specific entries in the Windows Active Directory. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

Note that this ite supports only simple (string based) value collection. For more complex values see the activedirectory57_item.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| naming_context | [win-sc:EntityItemNamingContextType](#EntityItemNamingContextType)  (0..1) |  
||<div>Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.</div>|  
| relative_dn | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the objects distinguished name except those outlined by the naming context. If the xsi:nil attribute is set to true, then the item being represented is the higher level naming context.</div>|  
| attribute | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies a named value contained by the object.</div>|  
| object_class | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the class of which the object is an instance.</div>|  
| adstype | [win-sc:EntityItemAdstypeType](#EntityItemAdstypeType)  (0..1) |  
||<div>Specifies the type of information that the specified attribute represents.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The actual value of the specified active directory attribute.</div>|  
  
______________
  
## <a name="activedirectory57_item"></a>< activedirectory57_item >

The activedirectory57_item holds information about specific entries in the Windows Active Directory. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

Note that this item supports complex values that are in the form of a record. For simple (string based) value collection see the activedirectory_item.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| naming_context | [win-sc:EntityItemNamingContextType](#EntityItemNamingContextType)  (0..1) |  
||<div>Each object in active directory exists under a certain naming context (also known as a partition). A naming context is defined as a single object in the Directory Information Tree (DIT) along with every object in the tree subordinate to it. There are three default naming contexts in Active Directory: domain, configuration, and schema.</div>|  
| relative_dn | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The relative_dn field is used to uniquely identify an object inside the specified naming context. It contains all the parts of the objects distinguished name except those outlined by the naming context. If the xsi:nil attribute is set to true, then the item being represented is the higher level naming context.</div>|  
| attribute | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies a named value contained by the object.</div>|  
| object_class | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the class of which the object is an instance.</div>|  
| adstype | [win-sc:EntityItemAdstypeType](#EntityItemAdstypeType)  (0..1) |  
||<div>Specifies the type of information that the specified attribute represents.</div>|  
| value | [oval-sc:EntityItemRecordType](oval-system-characteristics-schema.md#EntityItemRecordType)  (0..unbounded) |  
||<div>The actual value of the specified Active Directory attribute. Note that while an Active Directory attribute can contain structured data where it is necessary to collect multiple related fields that can be described by the 'record' datatype, it is not always the case. It also is possible that an Active Directory attribute can contain only a single value or an array of values. In these cases, there is not a name to uniquely identify the corresponding field(s) which is a requirement for fields in the 'record' datatype. As a result, the name of the Active Directory attribute will be used to uniquely identify the field(s) and satisfy this requirement. If the Active Directory attribute contains a single value, the 'record' will have a single field identified by the name of the Active Directory attribute. If the Active Directory attribute contains an array of values, the 'record' will have multiple fields all identified by the name of the Active Directory attribute</div>|  
  
______________
  
## <a name="auditeventpolicy_item"></a>< auditeventpolicy_item >

The auditeventpolicy item enumerates the different types of events the system should audit. The defined values are found in window's POLICY_AUDIT_EVENT_TYPE enumeration and accessed through the LsaQueryInformationPolicy when the InformationClass parameters are set to PolicyAuditEventsInformation. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

Note that when audinting is disabled each of the entities listed below should be set to 'AUDIT_NONE'.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| account_logon | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit attempts to log on to or log off of the system. Also, audit attempts to make a network connection.</div>|  
| account_management | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit attempts to create, delete, or change user or group accounts. Also, audit password changes.</div>|  
| detailed_tracking | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit specific events, such as program activation, some forms of handle duplication, indirect access to an object, and process exit.</div>|  
| directory_service_access | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit attempts to access the directory service.</div>|  
| logon | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit attempts to log on to or log off of the system. Also, audit attempts to make a network connection.</div>|  
| object_access | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit attempts to access securable objects, such as files.</div>|  
| policy_change | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit attempts to change Policy object rules.</div>|  
| privilege_use | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit attempts to use privileges.</div>|  
| system | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit attempts to shut down or restart the computer. Also, audit events that affect system security or the security log.</div>|  
  
______________
  
## <a name="auditeventpolicysubcategories_item"></a>< auditeventpolicysubcategories_item >

The auditeventpolicysubcategories_item is used to hold information about the audit event policy settings on a Windows system. These settings are used to specify which system and network events are monitored. For example, if the credential_validation element has a value of AUDIT_FAILURE, it means that the system is configured to log all unsuccessful attempts to validate a user account on a system. It is important to note that these audit event policy settings are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information on each setting. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

Note that when audinting is disabled each of the entities listed below should be set to 'AUDIT_NONE'.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| credential_validation | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced during the validation of a user's logon credentials. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Credential Validation</div>|  
| kerberos_authentication_service | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by Kerberos authentication ticket-granting requests. This state corresponds with the following GUID specified in ntsecapi.h: 0CCE9242-69AE-11D9-BED3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Kerboros Authentication Service</div>|  
| kerberos_service_ticket_operations | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by Kerberos service ticket requests. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9240-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Kerberos Service Ticket Operations</div>|  
| ~~kerberos_ticket_events~~ | ~~[win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1~~) |  
||~~<div>Audit the events produced during the validation of Kerberos tickets provided for a user account logon request.</div>~~|  
| other_account_logon_events | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to user accounts that are not covered by other events in the Account Logon category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9241-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Other Account Logon Events</div>|  
| application_group_management | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to application groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9239-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Application Group Management</div>|  
| computer_account_management | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to computer accounts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9236-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Computer Account Management</div>|  
| distribution_group_management | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to distribution groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9238-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Distribution Account Management</div>|  
| other_account_management_events | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by other user account changes that are not covered by other events in the Account Management category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Other Account Management Events</div>|  
| security_group_management | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to security groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9237-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Security Group Management</div>|  
| user_account_management | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to user accounts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9235-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit User Account Management</div>|  
| dpapi_activity | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced when requests are made to the Data Protection application interface. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit DPAPI Activity</div>|  
| process_creation | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced when a process is created or starts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit Process Creation</div>|  
| process_termination | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced when a process ends. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit Process Termination</div>|  
| rpc_events | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by inbound remote procedure call connections. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit RPC Events</div>|  
| directory_service_access | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced when a Active Directory Domain Services object is accessed. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Access</div>|  
| directory_service_changes | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced when changes are made to Active Directory Domain Services objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Changes</div>|  
| directory_service_replication | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced when two Active Directory Domain Services domain controllers are replicated. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Access</div>|  
| detailed_directory_service_replication | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by detailed Active Directory Domain Services replication between domain controllers. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Detailed Directory Service Replication</div>|  
| account_lockout | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by a failed attempt to log onto a locked out account. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9217-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Account Lockout</div>|  
| ipsec_extended_mode | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Extended Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit IPsec Extended Mode</div>|  
| ipsec_main_mode | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Main Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9218-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logof/Logoff: Audit IPsec Main Mode</div>|  
| ipsec_quick_mode | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Quick Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9219-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit IPsec Quick Mode</div>|  
| logoff | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by closing a logon session. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9216-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Logoff</div>|  
| logon | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to log onto a user account. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9215-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Logon</div>|  
| network_policy_server | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by RADIUS and Network Access Protection user access requests. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9243-69ae-11d9-bed3-505054503030.This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Network Policy Server</div>|  
| other_logon_logoff_events | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by other logon/logoff based events that are not covered in the Logon/Logoff category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Other Logon/Logoff Events</div>|  
| special_logon | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by special logons. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Special Logon</div>|  
| logon_claims | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit user and device claims information in the user's logon token. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9247-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit User / Device Claims</div>|  
| application_generated | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by applications that use the Windows Auditing API. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9222-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Application Generated</div>|  
| certification_services | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by operations on Active Directory Certificate Services. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9221-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Certification Services</div>|  
| detailed_file_share | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access files and folders on a shared folder. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9244-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Detailed File Share</div>|  
| file_share | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access a shared folder. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9224-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit File Share</div>|  
| file_system | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced user attempts to access file system objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit File System</div>|  
| filtering_platform_connection | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by connections that are allowed or blocked by Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9226-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Filtering Platform Connection</div>|  
| filtering_platform_packet_drop | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by packets that are dropped by Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9225-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Filtering Platform Packet Drop</div>|  
| handle_manipulation | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced when a handle is opened or closed. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9223-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Handle Manipulation</div>|  
| kernel_object | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access the system kernel. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Kernel Object</div>|  
| other_object_access_events | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by the management of Task Scheduler jobs or COM+ objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9227-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Other Object Access Events</div>|  
| registry | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access registry objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Registry</div>|  
| sam | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by attempts to access Security Accounts Manager objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9220-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit SAM</div>|  
| removable_storage | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit events that indicate file object access attemps to removable storage. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9245-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Removable Storage</div>|  
| central_access_policy_staging | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit events that indicate permission granted or denied by a proposed policy differs from the current central access policy on an object. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9246-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Central Access Policy Staging</div>|  
| audit_policy_change | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes in security audit policy settings. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Audit Policy Change</div>|  
| authentication_policy_change | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to the authentication policy. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9230-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Authentication Policy Change</div>|  
| authorization_policy_change | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to the authorization policy. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9231-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Authorization Policy Change</div>|  
| filtering_platform_policy_change | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to the Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9233-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Filtering Platform Policy Change</div>|  
| mpssvc_rule_level_policy_change | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes to policy rules used by the Windows Firewall. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9232-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit MPSSVC Rule-Level Policy Change</div>|  
| other_policy_change_events | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by other security policy changes that are not covered other events in the Policy Change category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9234-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Other Policy Change Events</div>|  
| non_sensitive_privilege_use | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by the use of non-sensitive privileges. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9229-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Non Sensitive Privilege Use</div>|  
| other_privilege_use_events | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>This is currently not used and has been reserved by Microsoft for use in the future. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Other Privilege Use Events</div>|  
| sensitive_privilege_use | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by the use of sensitive privileges. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9228-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Sensitive Privilege Use</div>|  
| ipsec_driver | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by the IPsec filter driver. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9213-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit IPsec Driver</div>|  
| other_system_events | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by the startup and shutdown, security policy processing, and cryptography key file and migration operations of the Windows Firewall. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9214-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Other System Events</div>|  
| security_state_change | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by changes in the security state. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9210-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Security State Change</div>|  
| security_system_extension | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events produced by the security system extensions or services. This state corresponds with the following GUID specified in ntsecapi.h: cce9211-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Security System Extension</div>|  
| system_integrity | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Audit the events that indicate that the integrity security subsystem has been violated. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9212-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit System Integrity</div>|  
| group_membership | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>This subcategory audits the group membership of a token for an associated log on. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9249-69ae-11d9-bed3-505054503030.</div>|  
| pnp_activity | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>This subcategory audits events generated by plug and play (PNP). This state corresponds with the following GUID specified in ntsecapi.h: 0cce9248-69ae-11d9-bed3-505054503030.</div>|  
| user_device_claims | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>This subcategory audits the user and device claims that are present in the token of an associated logon. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9247-69ae-11d9-bed3-505054503030.</div>|  
| audit_detailedtracking_tokenrightadjusted | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>This subcategory audits when token privileges are enabled or disabled for a specific account’s token. This state corresponds with the following GUID specified in ntsecapi.h: 0cce924a-69ae-11d9-bed3-505054503030.</div>|  
  
______________
  
## <a name="cmdlet_item"></a>< cmdlet_item >

The cmdlet_item represents a PowerShell cmdlet, the parameters supplied to it, and the value it returned.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| module_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the module that contains the cmdlet.</div>|  
| module_id | [win-sc:EntityItemGUIDType](#EntityItemGUIDType)  (0..1) |  
||<div>The globally unique identifier for the module.</div>|  
| module_version | [oval-sc:EntityItemVersionType](oval-system-characteristics-schema.md#EntityItemVersionType)  (0..1) |  
||<div>The version of the module that contains the cmdlet in the form of MAJOR.MINOR.</div>|  
| verb | [win-sc:EntityItemCmdletVerbType](#EntityItemCmdletVerbType)  (0..1) |  
||<div>The cmdlet verb.</div>|  
| noun | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The cmdlet noun.</div>|  
| parameters | [oval-sc:EntityItemRecordType](oval-system-characteristics-schema.md#EntityItemRecordType)  (0..1) |  
||<div>A list of properties (name and value pairs) as input to invoke the cmdlet.</div>|  
| select | [oval-sc:EntityItemRecordType](oval-system-characteristics-schema.md#EntityItemRecordType)  (0..1) |  
||<div>A list of fields (name and value pairs) used as input to the Select-Object cmdlet to select specific output properties.</div>|  
| value | [oval-sc:EntityItemRecordType](oval-system-characteristics-schema.md#EntityItemRecordType)  (0..unbounded) |  
||<div>The expected value represented as a set of fields (name and value pairs).</div>|  
  
______________
  
## <a name="dnscache_item"></a>< dnscache_item >

The dnscache_item stores information retrieved from the DNS cache about a domain name, its time to live, and its corresponding IP addresses.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| domain_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The domain_name element contains a string that represents a domain name that was collected from the DNS cache on the local system.</div>|  
| ttl | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The ttl element contains an integer that represents the time to live in seconds of the DNS cache entry.</div>|  
| ip_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..unbounded) |  
||<div>The ip_address element contains a string that represents an IP address associated with the specified domain name. Note that the IP address can be IPv4 or IPv6.</div>|  
  
______________
  
## <a name="file_item"></a>< file_item >

This element describes file metadata. The time information can be retrieved by the _stst function. Development_class and other version information (company, internal name, language, original_filename, product_name, product_version) can be retrieved using the VerQueryValue function.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity. The other items associated with this item would then reflect the values associated with the directory.</div>|  
| owner | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string that contains the name of the owner. The name should be specified in the DOMAIN\username format.</div>|  
| size | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Size of the file in bytes.</div>|  
| a_time | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Time of last access of file. Valid on NTFS but not on FAT formatted disk drives. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).</div>|  
| c_time | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Time of creation of file. Valid on NTFS but not on FAT formatted disk drives. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).</div>|  
| m_time | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Time of last modification of file. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).</div>|  
| ms_checksum | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The checksum of the file as supplied by Microsoft's MapFileAndCheckSum function.</div>|  
| version | [oval-sc:EntityItemVersionType](oval-system-characteristics-schema.md#EntityItemVersionType)  (0..1) |  
||<div>The version of the file.</div>|  
| type | [win-sc:EntityItemFileTypeType](#EntityItemFileTypeType)  (0..1) |  
||<div>The type child element marks whether the file item describes a named pipe, standard file, etc. These types are the return values for GetFileType. For directories, this element must have a status of 'does not exist'.</div>|  
| attribute | [win-sc:EntityItemFileAttributeType](#EntityItemFileAttributeType)  (0..unbounded) |  
||<div>The attribute child elements denote the Windows file attributes associated with the file. These types are the return values for GetFileAttributes.</div>|  
| development_class | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The development_class element allows the distinction to be made between the GDR development environment and the QFE development environment. This field holds the text found in front of the mmmmmm-nnnn version, for example srv03_gdr.</div>|  
| company | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity defines the company name held within the version-information structure.</div>|  
| internal_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity defines the internal name held within the version-information structure.</div>|  
| language | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity defines the language held within the version-information structure.</div>|  
| original_filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity defines the original filename held within the version-information structure.</div>|  
| product_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This entity defines the product name held within the version-information structure.</div>|  
| product_version | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This entity defines the product version held within the version-information structure. This may not necessarily be a string compatible with the OVAL version datatype, in which case the string datatype should be used.</div>|  
| windows_view | [win-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.</div>|  
  
______________
  
## <a name="fileauditedpermissions_item"></a>< fileauditedpermissions_item >

This item stores the audited access rights of a file that a system access control list (SACL) structure grants to a specified trustee. The trustee's audited access rights are determined checking all access control entries (ACEs) in the SACL. For help with this test see the GetAuditedPermissionsFromAcl() api.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the absolute path to a file on the machine from which the DACL was retrieved. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element specifies the directory component of the absolute path to a file on the machine from which the DACL was retrieved.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity. The other items associated with this item would then reflect the values associated with the directory.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The trustee_sid entity specifies the SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| ~~trustee_name~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>This element specifies the trustee name associated with this particular SACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>~~|  
| standard_delete | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to read the information in the object's security descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to modify the DACL in the object's security descriptor.</div>|  
| standard_write_owner | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to change the owner in the object's security descriptor.</div>|  
| standard_synchronize | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| file_read_data | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Grants the right to read data from the file.</div>|  
| file_write_data | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Grants the right to write data to the file.</div>|  
| file_append_data | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Grants the right to append data to the file.</div>|  
| file_read_ea | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Grants the right to read extended attributes.</div>|  
| file_write_ea | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Grants the right to write extended attributes.</div>|  
| file_execute | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Grants the right to execute a file.</div>|  
| file_delete_child | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Right to delete a directory and all the files it contains (its children), even if the files are read-only.</div>|  
| file_read_attributes | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Grants the right to read file attributes.</div>|  
| file_write_attributes | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Grants the right to change file attributes.</div>|  
| windows_view | [win-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.</div>|  
  
______________
  
## <a name="fileeffectiverights_item"></a>< fileeffectiverights_item >

This item stores the effective rights of a file that a discretionary access control list (DACL) structure grants to a specified trustee. The trustee's effective rights are determined checking all access-allowed and access-denied access control entries (ACEs) in the DACL. For help with this test see the GetEffectiveRightsFromAcl() api.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the absolute path to a file on the machine from which the DACL was retrieved. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element specifies the absolute path to a file on the machine from which the DACL was retrieved.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity. The other items associated with this item would then reflect the values associated with the directory.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The trustee_sid entity specifies the SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| ~~trustee_name~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>~~|  
| standard_delete | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to read the information in the object's security descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's security descriptor.</div>|  
| standard_write_owner | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to change the owner in the object's security descriptor.</div>|  
| standard_synchronize | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| file_read_data | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Grants the right to read data from the file</div>|  
| file_write_data | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Grants the right to write data to the file.</div>|  
| file_append_data | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Grants the right to append data to the file.</div>|  
| file_read_ea | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Grants the right to read extended attributes.</div>|  
| file_write_ea | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Grants the right to write extended attributes.</div>|  
| file_execute | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Grants the right to execute a file.</div>|  
| file_delete_child | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Right to delete a directory and all the files it contains (its children), even if the files are read-only.</div>|  
| file_read_attributes | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Grants the right to read file attributes.</div>|  
| file_write_attributes | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Grants the right to change file attributes.</div>|  
| windows_view | [win-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.</div>|  
  
______________
  
## <a name="group_item"></a><  ~~group_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the group_sid_item. This item uses trustee names for identifying accounts on the system.  Trustee names are not unique and the group_sid_item, which uses trustee SIDs which are unique, should be used instead. See the group_sid_item.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The Windows group_item allows the different users and subgroups, that directly belong to specific groups (identified by name), to be collected. The collected subgroups will not be resolved to find indirect user or subgroup members. If the subgroups need to be resolved, it should be done using the sid_object. Note that the user and subgroup elements can appear an unlimited number of times. If a user is not found in the specified group, a single user element should exist with a status of 'does not exist'. If there is an error determining the users of a group, a single user element should exist with a status of 'error'. If a subgroup is not found in the specified group, a single subgroup element should exist with a status of 'does not exist'. If there is an error determining the subgroups of a group, a single subgroup element should exist with a status of 'error'.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| group | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.</div>|  
| user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>A string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name". For built-in accounts on the system, use the user name without a domain.</div><div>If the specified group has more than one user as a member, then multiple user elements should exist. If the specified group does not contain a single user, then a single user element should exist with a status of 'does not exist'. If there is an error determining the users that are members of the group, then a single user element should be included with a status of 'error'.</div>|  
| subgroup | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>A string that represents the name of a particular subgroup in the specified group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, the subgroups should be identified in the form: "domain\group name". In a local environment, the subgroups should be identified in the form: "computer name\group name". If the subgroups are built-in groups, the subgroups should be identified in the form: "group name" without a domain component.</div><div>If the specified group has more than one subgroup as a member, then multiple subgroup elements should exist. If the specified group does not contain a single subgroup, then a single subgroup element should exist with a status of 'does not exist'. If there is an error determining the subgroups that are members of the group, then a single subgroup element should be included with a status of 'error'.</div>|  
  
______________
  
## <a name="group_sid_item"></a>< group_sid_item >

The Windows group_sid_item allows the different users and subgroups, that directly belong to specific groups (identified by SID), to be collected. The collected subgroups will not be resolved to find indirect user or subgroup members. If the subgroups need to be resolved, it should be done using the sid_sid_object. Note that the user and subgroup elements can appear an unlimited number of times. If a user is not found in the specified group, a single user element should exist with a status of 'does not exist'. If there is an error determining the users of a group, a single user element should exist with a status of 'error'. If a subgroup is not found in the specified group, a single subgroup element should exist with a status of 'does not exist'. If there is an error determining the subgroups of a group, a single subgroup element should exist with a status of 'error'.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| group_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the SID of a particular group.</div>|  
| user_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>A string that represents the SID of a particular user. If the specified group has more than one user as a member, then multiple user_sid entities should exist. If the specified group does not contain a single user, then a single user_sid entity should exist with a status of 'does not exist'. If there is an error determining the userss that are members of the group, then a single user_sid entity should be included with a status of 'error'.</div>|  
| subgroup_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>A string that represents the SID of a particular subgroup. If the specified group has more than one subgroup as a member, then multiple subgroup_sid entities should exist. If the specified group does not contain a single subgroup, a single subgroup_sid entity should exist with a status of 'does not exist'. If there is an error determining the subgroups that are members of the group, then a single subgroup_sid entity should be included with a status of 'error'.</div>|  
  
______________
  
## <a name="interface_item"></a>< interface_item >

Enumerate various attributes about the interfaces on a system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element specifies the name of an interface.</div>|  
| index | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This element specifies index that identifies the interface.</div>|  
| type | [win-sc:EntityItemInterfaceTypeType](#EntityItemInterfaceTypeType)  (0..1) |  
||<div>This element specifies the type of interface which is limited to certain set of values.</div>|  
| hardware_addr | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element specifies the hardware or MAC address of the physical network card. MAC addresses should be formatted according to the IEEE 802-2001 standard which states that a MAC address is a sequence of six octet values, separated by hyphens, where each octet is represented by two hexadecimal digits. Uppercase letters should also be used to represent the hexadecimal digits A through F.</div>|  
| inet_addr | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This element specifies the IP address of the specific interface. Note that the IP address can be IPv4 or IPv6. If the IP address is an IPv6 address, this entity should be expressed as an IPv6 address prefix using CIDR notation and the netmask entity should not be collected.</div>|  
| broadcast_addr | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This element specifies the broadcast address. A broadcast address is typically the IP address with the host portion set to either all zeros or all ones. Note that the IP address can be IPv4 or IPv6.</div>|  
| netmask | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This element specifies the subnet mask for the IP address. Note that if the inet_addr entity contains an IPv6 address prefix, this entity should not be collected.</div>|  
| addr_type | [win-sc:EntityItemAddrTypeType](#EntityItemAddrTypeType)  (0..unbounded) |  
||<div>This element specifies the address type or state of a specific interface. Each interface can be associated with more than one value meaning the addr_type element can occur multiple times.</div>|  
  
______________
  
## <a name="junction_item"></a>< junction_item >

The junction_item element identifies the result generated for a junction_object.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the path to the subject junction, specified by the junction_object.</div>|  
| canonical_path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (1..1) |  
||<div>Specifies the canonical path for the target of the Windows junction specified by the path.</div>|  
| windows_view | [win-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.</div>|  
  
______________
  
## <a name="license_item"></a>< license_item >

The license_item element stores the different information that can be found in the Windows license registry value. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes the name of a license entry.</div>|  
| type | [win-sc:EntityItemRegistryTypeType](#EntityItemRegistryTypeType)  (0..1) |  
||<div>Specifies the type of data stored by the license entry. Valid values are REG_BINARY, REG_DWORD and REG_SZ. Please refer to the EntityItemRegistryTypeType for more information about the different possible types.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>The value entity holds the actual value of the specified license entry. The representation of the value as well as the associated datatype attribute depends on type of data stored in the license entry. If the specified license entry is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the registry key is of type REG_DWORD, then the datatype attribute should be set to 'int' and the value entity should represent the data as an integer. If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string.</div>|  
  
______________
  
## <a name="lockoutpolicy_item"></a>< lockoutpolicy_item >

The lockoutpolicy item enumerates various attributes associated with lockout information for users and global groups in the security database.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| force_logoff | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies, in seconds (from a DWORD), the amount of time between the end of the valid logon time and the time when the user is forced to log off the network. A value of TIMEQ_FOREVER (max DWORD value, 4294967295) indicates that the user is never forced to log off. A value of zero indicates that the user will be forced to log off immediately when the valid logon time expires. See the USER_MODALS_INFO_0 structure returned by a call to NetUserModalsGet().</div>|  
| lockout_duration | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies, in seconds, how long a locked account remains locked before it is automatically unlocked. See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().</div>|  
| lockout_observation_window | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies the maximum time, in seconds, that can elapse between any two failed logon attempts before lockout occurs. See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().</div>|  
| lockout_threshold | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies the number of invalid password authentications that can occur before an account is marked "locked out." See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().</div>|  
  
______________
  
## <a name="metabase_item"></a>< metabase_item >

This item gathers information from the specified metabase keys.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes a metabase key to be gathered.</div>|  
| id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The id element specifies a particular object under the metabase key. If the xsi:nil attribute is set to true, then the item being represented is the higher level metabase key. Using xsi:nil here will result in a status of 'not collected' for the other entities associated with this item since these entities are not associated with a key by itself.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes the name of the specified metabase object.</div>|  
| user_type | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user_type element is an unsigned 32-bit integer (DWORD) that specifies the user type of the data. See the METADATA_RECORD structure.</div>|  
| data_type | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The data_type element identifies the type of data in the metabase entry. See the METADATA_RECORD structure.</div>|  
| data | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The actual data of the named item under the specified metabase key. If the specified metabase key is of type multi string, then multiple value elements should exist to describe the array of strings.</div>|  
  
______________
  
## <a name="ntuser_item"></a>< ntuser_item >

The windows ntuser_item specifies information that can be collected from a particular ntuser.dat file.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| key | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes a registry key normally found in the HKCU hive to be tested.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes the name of a registry key. If the xsi:nil attribute is set to true, then the item being represented is the higher level key. Using xsi:nil here will result in a status of 'does not exist' for the type, and value entities since these entities are not associated with a key by itself.</div>|  
| sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element holds a string that represents the SID of a particular user.</div>|  
| username | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The username entity holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name".</div>|  
| account_type | [win-sc:EntityItemNTUserAccountTypeType](#EntityItemNTUserAccountTypeType)  (0..1) |  
||<div>The account_type element describes if the user account is a local account or domain account.</div>|  
| logged_on | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The logged_on element describes if the user account is currently logged on to the computer.</div>|  
| enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The enabled element describes if the user account is enabled or disabled.</div>|  
| date_modified | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Time of last modification of file. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).</div>|  
| days_since_modified | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The number of days since the ntuser.dat file was last modified. The value should be rounded up to the next whole integer.</div>|  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes the filepath of the ntuser.dat file.</div>|  
| last_write_time | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The last time that the key or any of its value entries was modified. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). Last write time can be queried on a hive, key, or name. When collecting only information about a registry hive the last write time will be the time the hive or any of its entiries was written to. When collecting only information about a registry hive and key the last write time will be the time the key or any of its entiries was written to. When collecting only information about a registry name the last write time will be the time the name was written to. See the RegQueryInfoKey function lpftLastWriteTime.</div>|  
| type | [win-sc:EntityItemRegistryTypeType](#EntityItemRegistryTypeType)  (0..1) |  
||<div>Specifies the type of data stored by the registry key. Please refer to the EntityItemRegistryTypeType for more information about the different possible types.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value entity holds the actual value of the specified registry key. The representation of the value as well as the associated datatype attribute depends on type of data stored in the registry key. If the specified registry key is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the registry key is of type REG_DWORD or REG_QWORD, then the datatype attribute should be set to 'int' and the value entity should represent the data as an integer. If the specified registry key is of type REG_EXPAND_SZ, then the datatype attribute should be set to 'string' and the pre-expanded string should be represented by the value entity. If the specified registry key is of type REG_MULTI_SZ, then multiple value entities should exist to describe the array of strings, with each value element holds a single string. In the end, there should be the same number of value entities as there are strings in the reg_multi_sz array. If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string.</div>|  
  
______________
  
## <a name="passwordpolicy_item"></a>< passwordpolicy_item >

Specific policy items associated with passwords. It is important to note that these policies are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information. Information is stored in the SAM or Active Directory but is encrypted or hidden so the registry_item and activedirectory_item are of no use. If this can be figured out, then the password_policy item is not needed.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| max_passwd_age | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies, in seconds (from a DWORD), the maximum allowable password age. A value of TIMEQ_FOREVER (max DWORD value, 4294967295) indicates that the password never expires. The minimum valid value for this element is ONE_DAY (86400). See the USER_MODALS_INFO_0 structure returned by a call to NetUserModalsGet().</div>|  
| min_passwd_age | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies the minimum number of seconds that can elapse between the time a password changes and when it can be changed again. A value of zero indicates that no delay is required between password updates.</div>|  
| min_passwd_len | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies the minimum allowable password length. Valid values for this element are zero through PWLEN.</div>|  
| password_hist_len | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies the length of password history maintained. A new password cannot match any of the previous usrmod0_password_hist_len passwords. Valid values for this element are zero through DEF_MAX_PWHIST.</div>|  
| password_complexity | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean value that signifies whether passwords must meet the complexity requirements put forth by the operating system.</div>|  
| reversible_encryption | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Determines whether or not passwords are stored using reversible encryption.</div>|  
| anonymous_name_lookup | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Determines whether or not an anonymous user may query the local LSA policy.</div>|  
  
______________
  
## <a name="peheader_item"></a>< peheader_item >

The peheader_item describes the metadata associated with a PE file header. For more information, please see the documentation for the IMAGE_FILE_HEADER and IMAGE_OPTIONAL_HEADER structures.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a PE file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a PE file on the machine.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filename element specifies the name of a PE file to evaluate.</div>|  
| header_signature | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The header_signature entity is the signature of the header.</div>|  
| target_machine_type | [win-sc:EntityItemPeTargetMachineType](#EntityItemPeTargetMachineType)  (0..1) |  
||<div>The target_machine_type entity is an unsigned 16-bit integer (WORD) that specifies the target architecture that the file is intended for.</div>|  
| number_of_sections | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The number_of_sections entity is an unsigned 16-bit integer (WORD) that specifies the number of sections in the file.</div>|  
| time_date_stamp | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the time that the linker produced the file. The value is represented as the number of seconds since January 1, 1970, 00:00:00.</div>|  
| pointer_to_symbol_table | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The pointer_to_symbol_table entity is an unsigned 32-bit integer (DWORD) that specifies the file offset of the COFF symbol table.</div>|  
| number_of_symbols | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The number_of_symbols entity is an unsigned 32-bit integer (DWORD) that specifies the number of symbols in the COFF symbol table.</div>|  
| size_of_optional_header | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The size_of_optional_header entity is an unsigned 32-bit integer (DWORD) that specifies the size of an optional header in bytes.</div>|  
| image_file_relocs_stripped | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_relocs_stripped entity is a boolean value that specifies if the relocation information is stripped from the file.</div>|  
| image_file_executable_image | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_executable_image entity is a boolean value that specifies if the file is executable.</div>|  
| image_file_line_nums_stripped | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_line_nums_stripped entity is a boolean value that specifies if the line numbers are stripped from the file.</div>|  
| image_file_local_syms_stripped | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_local_syms_stripped entity is a boolean value that specifies if the local symbols are stripped from the file.</div>|  
| image_file_aggresive_ws_trim | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_aggressive_ws_trim entity is a boolean value that specifies that the working set should be aggressively trimmed.</div>|  
| image_file_large_address_aware | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_large_address_aware entity is a boolean value that specifies that the application can handle addresses larger than 2GB.</div>|  
| image_file_16bit_machine | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_16bit_machine entity is a boolean value that specifies that the computer supports 16-bit words.</div>|  
| image_file_bytes_reversed_lo | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_bytes_reversed_lo entity is a boolean value that specifies that the bytes of the word are reversed.</div>|  
| image_file_32bit_machine | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_32bit_machine entity is a boolean value that specifies that the computer supports 32-bit words.</div>|  
| image_file_debug_stripped | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_debug_stripped entity is a boolean value that specifies that the debugging information is stored separately in a .dbg file.</div>|  
| image_file_removable_run_from_swap | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_removable_run_from_swap entity is a boolean value that specifies that the image is on removable media, copy and run from the swap file.</div>|  
| image_file_system | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_system entity is a boolean value that specifies that the image is a system file.</div>|  
| image_file_dll | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_dll entity is a boolean value that specifies that the image is a DLL.</div>|  
| image_file_up_system_only | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_up_system_only entity is a boolean value that specifies that the file should only be run on a uniprocessor computer.</div>|  
| image_file_bytes_reveresed_hi | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The image_file_bytes_reversed_hi entity is a boolean value that specifies that the bytes of the word are reversed.</div>|  
| magic_number | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The magic_number entity is an unsigned 16-bit integer (WORD) that specifies the state of the image file.</div>|  
| major_linker_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The major_linker_version entity is a BYTE that specifies the major version of the linker that produced the file.</div>|  
| minor_linker_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The minor_linker_version entity is a BYTE that specifies the minor version of the linker that produced the file.</div>|  
| size_of_code | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The size_of_code entity is an unsigned 32-bit integer (DWORD) that specifies the total size of all of the code sections.</div>|  
| size_of_initialized_data | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The size_of_initialized_data entity is an unsigned 32-bit integer (DWORD) that specifies the total size of all of the sections that are composed of initialized data.</div>|  
| size_of_uninitialized_data | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The size_of_uninitialized_data entity is an unsigned 32-bit integer (DWORD) that specifies the total size of all of the sections that are composed of uninitialized data.</div>|  
| address_of_entry_point | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The address_of_entry_point entity is an unsigned 32-bit integer (DWORD) that specifies the address where the loader will begin execution.</div>|  
| base_of_code | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The base_of_code entity is an unsigned 32-bit integer (DWORD) that specifies the relative virtual address where the file's code section begins.</div>|  
| base_of_data | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The base_of_data entity is an unsigned 32-bit integer (DWORD) that specifies the relative virtual address where the file's data section begins.</div>|  
| image_base_address | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The image_base_address entity is an unsigned 32-bit integer (DWORD) that specifies the preferred address fo the first byte of the image when it is loaded into memory.</div>|  
| section_alignment | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The section_alignment entity is an unsigned 32-bit integer (DWORD) that specifies the alignment of the sections loaded into memory.</div>|  
| file_alignment | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The file_alignment entity is an unsigned 32-bit integer (DWORD) that specifies the alignment of the raw data of sections in the image file.</div>|  
| major_operating_system_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The major_operating_system_version entity is an unsigned 16-bit integer (WORD) that specifies the major version of the operating system required to use this executable.</div>|  
| minor_operating_system_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The minor_operating_system_version entity is an unsigned 16-bit integer (WORD) that specifies the minor version of the operating system required to use this executable.</div>|  
| major_image_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The major_image_version entity is an unsigned 16-bit integer (WORD) that specifies the major version number of the image.</div>|  
| minor_image_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The minor_image_version entity is an unsigned 32-bit integer (DWORD) that specifies the minor version number of the image.</div>|  
| major_subsystem_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The major_subsystem_version entity is an unsigned 16-bit integer (WORD) that specifies the major version of the subsystem required to run the executable.</div>|  
| minor_susbsystem_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The minor_subsystem_version entity is an unsigned 16-bit integer (WORD) that specifies the minor version of the subsystem required to run the executable.</div>|  
| size_of_image | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The size_of_image entity is an unsigned 32-bit integer (DWORD) that specifies the total size of the image including all of the headers.</div>|  
| size_of_headers | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The size_of_headers entity is an unsigned 32-bit integer (DWORD) that specifies the total combined size of the MS-DOS stub, PE header, and the section headers.</div>|  
| checksum | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The checksum entity is an unsigned 32-bit integer (DWORD) that specifies the checksum of the image file.</div>|  
| subsystem | [win-sc:EntityItemPeSubsystemType](#EntityItemPeSubsystemType)  (0..1) |  
||<div>The subsystem entity is an unsigned 32-bit integer (DWORD) that specifies the type of subsystem that the executable uses for its user interface.</div>|  
| dll_characteristics | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..unbounded) |  
||<div>The dll_characteristics entity is an unsigned 32-bit integer (DWORD) that specifies the set of flags indicating the circumstances under which a DLL's initialization function will be called..</div>|  
| size_of_stack_reserve | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to reserve for the stack.</div>|  
| size_of_stack_commit | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to commit for the stack.</div>|  
| size_of_heap_reserve | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to reserve for the local heap.</div>|  
| size_of_heap_commit | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The time_date_stamp entity is an unsigned 32-bit integer (DWORD) that specifies the number of bytes to commit for the local heap.</div>|  
| loader_flags | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The loader_flags entity is an unsigned 32-bit integer (DWORD) that specifies the loader flags of the header.</div>|  
| number_of_rva_and_sizes | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The number_of_rva_and_sizes entity is an unsigned 32-bit integer (DWORD) that specifies the number of directory entries in the remainder of the optional header.</div>|  
| real_number_of_directory_entries | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The real_number_of_directory_entries entity is the real number of data directory entries in the remainder of the optional header calculated by enumerating the directory entries.</div>|  
| windows_view | [win-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.</div>|  
  
______________
  
## <a name="port_item"></a>< port_item >

Information about open listening ports.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| local_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This element specifies the local IP address the listening port is bound to. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This element specifies the number assigned to the local listening port.</div>|  
| protocol | [win-sc:EntityItemProtocolType](#EntityItemProtocolType)  (0..1) |  
||<div>This element specifies the type of listening port. It is restricted to either TCP or UDP.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The id given to the process that is associated with the specified listening port.</div>|  
| foreign_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_port | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the TCP or UDP port to which the program communicates.</div>|  
  
______________
  
## <a name="printereffectiverights_item"></a>< printereffectiverights_item >

This item stores the effective rights of a printer that a discretionary access control list (DACL) structure grants to a specified trustee. The trustee's effective rights are determined checking all access-allowed and access-denied access control entries (ACEs) in the DACL. For help with this test see the GetEffectiveRightsFromAcl() api.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| printer_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The printer_name enitity specifies the name of the printer.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The trustee_sid entity specifies the SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to read the information in the object's security descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's security descriptor.</div>|  
| standard_write_owner | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to change the owner in the object's security descriptor.</div>|  
| standard_synchronize | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| printer_access_administer | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| printer_access_use | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| job_access_administer | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| job_access_read | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="process_item"></a>< process_item >

Information about running processes.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| command_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The command_line entity is the string used to start the process. This includes any parameters that are part of the command line.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The id given to the process that is created for a specified command line.</div>|  
| ppid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The id given to the parent of the process that is created for the specified command line</div>|  
| priority | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>The base priority of the process. The priority value range is from 0 to 31.</div>|  
| image_path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The image_path entity represents the name of the executable file for the process.</div>|  
| current_dir | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The current_dir entity represents the current path to the executable file for the process.</div>|  
| creation_time | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The creation_time entity represents the creation time of the process. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). See the GetProcessTimes function lpCreationTime.</div>|  
| dep_enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The dep_enabled entity represents whether or not data execution prevention (DEP) is enabled. See the GetProcessDEPPolicy function lpFlags.</div>|  
| primary_window_text | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The primary_window_text entity represents the title of the primary window of the process. See the GetWindowText function.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the process.</div>|  
  
______________
  
## <a name="registry_item"></a>< registry_item >

The windows registry item specifies information that can be collected about a particular registry key.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hive | [win-sc:EntityItemRegistryHiveType](#EntityItemRegistryHiveType)  (0..1) |  
||<div>The hive that the registry key belongs to.</div>|  
| key | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes a registry key to be gathered. Note that the hive portion of the string should not be included, as this data can be found under the hive element. If the xsi:nil attribute is set to true, then the item being represented is the higher level hive or lower level name. Using xsi:nil here will result in a status of 'not collected' for this entity since the item is specific to a hive or name.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes the name of a registry key. If the xsi:nil attribute is set to true, then the item being represented is the higher level key or hive. Using xsi:nil here will result in a status of 'not collected' since the item is specific to a key or hive.</div>|  
| last_write_time | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The last time that the key or any of its value entries were modified. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). Last write time can be queried on any key, with hives being classified as a type of key. When collecting only information about a registry hive or key the last write time will be the time the key or any of its entries were modified. When collecting only information about a registry name the last write time will be the time the containing key was modified. Thus when collecting information about a registry name, the last write time does not correlate directly to the specified name. See the RegQueryInfoKey function lpftLastWriteTime.</div>|  
| type | [win-sc:EntityItemRegistryTypeType](#EntityItemRegistryTypeType)  (0..1) |  
||<div>Specifies the type of data stored by the registry key. Please refer to the EntityItemRegistryTypeType for more information about the different possible types.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value entity holds the actual value of the specified registry key. The representation of the value as well as the associated datatype attribute depends on type of data stored in the registry key. If the value being tested is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the value being tested is of type REG_DWORD, REG_QWORD, REG_DWORD_LITTLE_ENDIAN, REG_DWORD_BIG_ENDIAN, or REG_QWORD_LITTLE_ENDIAN then the datatype attribute should be set to 'int' and the value entity should represent the data as an unsigned integer. DWORD and QWORD values represnt unsigned 32-bit and 64-bit integers, respectively. If the value being tested is of type REG_EXPAND_SZ, then the datatype attribute should be set to 'string' and the pre-expanded string should be represented by the value entity. If the value being tested is of type REG_MULTI_SZ, then only a single string (one of the multiple strings) should be tested using the value entity with the datatype attribute set to 'string'. In order to test multiple values, multiple OVAL registry tests or multiple states should be combined. Reg_multi_sz values, with no values, should be given a status of "does not exist". If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string. If the value being tested is of type REG_LINK, then the datatype attribute should be set to 'string' and the null-terminated Unicode string should be represented by the value entity.</div>|  
| expanded_value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>For registry values of type REG_EXPAND_SZ, this entity contains the expanded value. Otherwise, it should not exist.</div>|  
| windows_view | [win-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.</div>|  
  
______________
  
## <a name="regkeyauditedpermissions_item"></a>< regkeyauditedpermissions_item >

This item stores the audited access rights of a registry key that a system access control list (SACL) structure grants to a specified trustee. The trustee's audited access rights are determined checking all access control entries (ACEs) in the SACL. For help with this test see the GetAuditedPermissionsFromAcl() api.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hive | [win-sc:EntityItemRegistryHiveType](#EntityItemRegistryHiveType)  (0..1) |  
||<div>This element specifies the hive of a registry key on the machine from which the SACL was retrieved.</div>|  
| key | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element specifies a registry key on the machine from which the SACL was retrieved. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The security identifier (SID) of the specified trustee name.</div>|  
| ~~trustee_name~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>~~|  
| standard_delete | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to read the information in the object's security descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to modify the DACL in the object's security descriptor.</div>|  
| standard_write_owner | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to change the owner in the object's security descriptor.</div>|  
| ~~standard_synchronize~~ | ~~[win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1~~) |  
||~~<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>~~|  
| access_system_security | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| key_query_value | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div></div>|  
| key_set_value | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div></div>|  
| key_create_sub_key | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div></div>|  
| key_enumerate_sub_keys | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div></div>|  
| key_notify | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div></div>|  
| key_create_link | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div></div>|  
| key_wow64_64key | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div></div>|  
| key_wow64_32key | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div></div>|  
| key_wow64_res | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div></div>|  
| windows_view | [win-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.</div>|  
  
______________
  
## <a name="regkeyeffectiverights_item"></a>< regkeyeffectiverights_item >

This item stores the effective rights of a registry key that a discretionary access control list (DACL) structure grants to a specified trustee. The trustee's effective rights are determined checking all access-allowed and access-denied access control entries (ACEs) in the DACL. For help with this test see the GetEffectiveRightsFromAcl() api.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hive | [win-sc:EntityItemRegistryHiveType](#EntityItemRegistryHiveType)  (0..1) |  
||<div>The hive that the registry key belongs to.</div>|  
| key | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element describes a registry key to be gathered. Note that the hive portion of the string should not be inclueded, as this data can be found under the hive element. If the xsi:nil attribute is set to true, then the item being represented is the higher level hive.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The trustee_sid entity specifies the SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| ~~trustee_name~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>~~|  
| standard_delete | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to read the information in the object's security descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's security descriptor.</div>|  
| standard_write_owner | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to change the owner in the object's security descriptor.</div>|  
| ~~standard_synchronize~~ | ~~[oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1~~) |  
||~~<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>~~|  
| access_system_security | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
| key_query_value | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| key_set_value | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| key_create_sub_key | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| key_enumerate_sub_keys | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| key_notify | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| key_create_link | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| key_wow64_64key | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| key_wow64_32key | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| key_wow64_res | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| windows_view | [win-sc:EntityItemWindowsViewType](#EntityItemWindowsViewType)  (0..1) |  
||<div>The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.</div>|  
  
______________
  
## <a name="service_item"></a>< service_item >

This item stores information about Windows services that are present on the system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| service_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The service_name element specifies the name of the service as specified in the Service Control Manager (SCM) database.</div>|  
| display_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The display_name element specifies the name of the service as specified in tools such as Control Panel->Administrative Tools->Services.</div>|  
| description | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The description element specifies the description of the service.</div>|  
| service_type | [win-sc:EntityItemServiceTypeType](#EntityItemServiceTypeType)  (0..unbounded) |  
||<div>The service_type element specifies the type of the service.</div>|  
| start_type | [win-sc:EntityItemServiceStartTypeType](#EntityItemServiceStartTypeType)  (0..1) |  
||<div>The start_type element specifies when the service should be started.</div>|  
| current_state | [win-sc:EntityItemServiceCurrentStateType](#EntityItemServiceCurrentStateType)  (0..1) |  
||<div>The current_state element specifies the current state of the service.</div>|  
| controls_accepted | [win-sc:EntityItemServiceControlsAcceptedType](#EntityItemServiceControlsAcceptedType)  (0..unbounded) |  
||<div>The controls_accepted element specifies the control codes that a service will accept and process.</div>|  
| start_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The start_name element specifies the account under which the process should run.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the path to the binary of the service.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The pid element specifies the process ID of the service.</div>|  
| service_flag | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The service_flag element specifies if the service is in a system process that must always run (1) or if the service is in a non-system process or is not running (0). If the service is not running, the pid will be 0. Otherwise, the pid will be non-zero.</div>|  
| dependencies | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>The dependencies element specifies the dependencies of this service on other services.</div>|  
  
______________
  
## <a name="serviceeffectiverights_item"></a>< serviceeffectiverights_item >

This item stores the effective rights of a service that a discretionary access control list (DACL) structure grants to a specified trustee. The trustee's effective rights are determined by checking all access-allowed and access-denied access control entries (ACEs) in the DACL. For help with this test see the GetEffectiveRightsFromAcl() api.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| service_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The service_name element specifies a service on the machine from which to retrieve the DACL. Note that the service_name element should contain the actual name of the service and not its display name that is found in Control Panel->Administrative Tools->Services. For example, if you wanted to check the effective rights of the Automatic Updates service you would specify 'wuauserv' for the service_name element not 'Automatic Updates'.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The trustee_sid element specifies the SID that is associated with a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the DeleteService function to delete the service.</div>|  
| standard_read_control | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the QueryServiceObjectSecurity function to query the security descriptor of the service object.</div>|  
| standard_write_dac | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the SetServiceObjectSecurity function to modify the Dacl member of the service object's security descriptor.</div>|  
| standard_write_owner | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the SetServiceObjectSecurity function to modify the Owner and Group members of the service object's security descriptor.</div>|  
| generic_read | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Read access (STANDARD_RIGHTS_READ, SERVICE_QUERY_CONFIG, SERVICE_QUERY_STATUS, SERVICE_INTERROGATE, SERVICE_ENUMERATE_DEPENDENTS).</div>|  
| generic_write | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Write access (STANDARD_RIGHTS_WRITE, SERVICE_CHANGE_CONFIG).</div>|  
| generic_execute | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Execute access (STANDARD_RIGHTS_EXECUTE, SERVICE_START, SERVICE_STOP, SERVICE_PAUSE_CONTINUE, SERVICE_USER_DEFINED_CONTROL).</div>|  
| service_query_conf | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the QueryServiceConfig and QueryServiceConfig2 functions to query the service configuration.</div>|  
| service_change_conf | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the ChangeServiceConfig or ChangeServiceConfig2 function to change the service configuration.</div>|  
| service_query_stat | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the QueryServiceStatusEx function to ask the service control manager about the status of the service.</div>|  
| service_enum_dependents | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the EnumDependentServices function to enumerate all the services dependent on the service.</div>|  
| service_start | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the StartService function to start the service.</div>|  
| service_stop | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the ControlService function to stop the service.</div>|  
| service_pause | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the ControlService function to pause or continue the service.</div>|  
| service_interrogate | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the ControlService function to ask the service to report its status immediately.</div>|  
| service_user_defined | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This permission is required to call the ControlService function to specify a user-defined control code.</div>|  
  
______________
  
## <a name="sharedresource_item"></a>< sharedresource_item >



**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| netname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The share name of the resource.</div>|  
| shared_type | [win-sc:EntityItemSharedResourceTypeType](#EntityItemSharedResourceTypeType)  (0..1) |  
||<div>The type of the shared resource.</div>|  
| max_uses | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The maximum number of concurrent connections that the shared resource can accommodate.</div>|  
| current_uses | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The number of current connections to the shared resource.</div>|  
| local_path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The local path for the shared resource.</div>|  
| access_read_permission | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Permission to read data from a resource and, by default, to execute the resource.</div>|  
| access_write_permission | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Permission to write data to the resource.</div>|  
| access_create_permission | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Permission to create an instance of the resource (such as a file); data can be written to the resource as the resource is created.</div>|  
| access_exec_permission | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Permission to execute the resource.</div>|  
| access_delete_permission | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Permission to delete the resource.</div>|  
| access_atrib_permission | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Permission to modify the resource's attributes (such as the date and time when a file was last modified).</div>|  
| access_perm_permission | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Permission to modify the permissions (read, write, create, execute, and delete) assigned to a resource for a user or application.</div>|  
| access_all_permission | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Permission to read, write, create, execute, and delete resources, and to modify their attributes and permissions.</div>|  
  
______________
  
## <a name="sharedresourceauditedpermissions_item"></a>< sharedresourceauditedpermissions_item >

This item stores the audited access rights of a shared resource that a system access control list (SACL) structure grants to a specified trustee. The trustee's audited access rights are determined checking all access control entries (ACEs) in the SACL.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| netname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The netname entity specifies the name associated with a particular shared resource.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The trustee_sid entity specifies the SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to read the information in the object's security descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to modify the DACL in the object's security descriptor.</div>|  
| standard_write_owner | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to change the owner in the object's security descriptor.</div>|  
| standard_synchronize | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [win-sc:EntityItemAuditType](#EntityItemAuditType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
  
______________
  
## <a name="sharedresourceeffectiverights_item"></a>< sharedresourceeffectiverights_item >

This item stores the effective rights of a shared resource that a discretionary access control list (DACL) structure grants to a specified trustee. The trustee's effective rights are determined checking all access-allowed and access-denied access control entries (ACEs) in the DACL.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| netname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The netname entity specifies the name associated with a particular shared resource.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The trustee_sid entity specifies the SID that associated a user, group, system, or program (such as a Windows service).</div>|  
| standard_delete | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to delete the object.</div>|  
| standard_read_control | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to read the information in the object's security descriptor, not including the information in the SACL.</div>|  
| standard_write_dac | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to modify the DACL in the object's security descriptor.</div>|  
| standard_write_owner | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to change the owner in the object's security descriptor.</div>|  
| standard_synchronize | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.</div>|  
| access_system_security | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Indicates access to a system access control list (SACL).</div>|  
| generic_read | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Read access.</div>|  
| generic_write | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Write access.</div>|  
| generic_execute | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Execute access.</div>|  
| generic_all | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Read, write, and execute access.</div>|  
  
______________
  
## <a name="sid_item"></a>< sid_item >



**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| trustee_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element specifies the trustee name associated with a particular SID. In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The security identifier (SID) of the specified trustee name.</div>|  
| trustee_domain | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The domain of the specified trustee name.</div>|  
  
______________
  
## <a name="sid_sid_item"></a>< sid_sid_item >



**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The security identifier (SID) of the specified trustee name.</div>|  
| trustee_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This element specifies the trustee name associated with a particular SID. In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| trustee_domain | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The domain of the specified trustee name.</div>|  
  
______________
  
## <a name="systemmetric_item"></a>< systemmetric_item >

The system metric item stores the value of a particular Windows system metric.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| index | [win-sc:EntityItemSystemMetricIndexType](#EntityItemSystemMetricIndexType)  (0..1) |  
||<div>This element describes the index of a system metric entry.</div>|  
| value | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The value entity holds the actual value of the specified system metric index.</div>|  
  
______________
  
## <a name="uac_item"></a>< uac_item >

The uac_item is used to hold information about settings related to User Access Control within Windows.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| admin_approval_mode | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Admin Approval Mode for the Built-in Administrator account.</div>|  
| elevation_prompt_admin | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Behavior of the elevation prompt for administrators in Admin Approval Mode.</div>|  
| elevation_prompt_standard | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Behavior of the elevation prompt for standard users.</div>|  
| detect_installations | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Detect application installations and prompt for elevation.</div>|  
| elevate_signed_executables | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Only elevate executables that are signed and validated.</div>|  
| elevate_uiaccess | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Only elevate UIAccess applications that are installed in secure locations.</div>|  
| run_admins_aam | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Run all administrators in Admin Approval Mode.</div>|  
| secure_desktop | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Switch to the secure desktop when prompting for elevation.</div>|  
| virtualize_write_failures | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Virtualize file and registry write failures to per-user locations.</div>|  
  
______________
  
## <a name="user_item"></a><  ~~user_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.11** :small_red_triangle: <br />**Reason:** Replaced by the user_sid_item. This item uses trustee names for identifying accounts on the system. Trustee names are not unique and the user_sid_item, which uses trustee SIDs which are unique, should be used instead. See the user_sid_item.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The windows user_item allows the different groups (identified by name) that a user belongs to be collected.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer_name\user_name". For built-in accounts on the system, use the user name without a domain.</div>|  
| enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents whether the particular user is enabled or not.</div>|  
| group | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>A string that represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.</div><div>If the specified user belongs to more than one group, then multiple group elements should exist. If the specified user is not a member of a single group, then a single group element should exist with a status of 'does not exist'. If there is an error determining the groups that the user belongs to, then a single group element should be included with a status of 'error'.</div>|  
| last_logon | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The date and time when the last logon occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, GMT. If the target system is a domain controller, this data is maintained separately on each backup domain controller (BDC) in the domain. To obtain an accurate value, you must query each BDC in the domain. The last logoff occurred at the time indicated by the largest retrieved value.</div>|  
| full_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A Unicode string that contains the full name of the user. This string can be a NULL string, or it can have any number of characters before the terminating null character.</div>|  
| comment | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A Unicode string that contains a comment to associate with the user account. The string can be a NULL string, or it can have any number of characters before the terminating null character.</div>|  
| password_age_days | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The number of full days that have elapsed since the password was last changed, meaning data calulated should be truncated. Ex: 89.5 days = 89, 90.01 = 90</div>|  
| lockout | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The account is currently locked out.</div>|  
| passwd_notreqd | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>No password is required.</div>|  
| dont_expire_passwd | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The password should never expire on the account.</div>|  
| encrypted_text_password_allowed | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The user's password is stored under reversible encryption in the Active Directory.</div>|  
| not_delegated | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Marks the account as "sensitive"; other users cannot act as delegates of this user account.</div>|  
| use_des_key_only | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Restrict this principal to use only Data Encryption Standard (DES) encryption types for keys.</div>|  
| dont_require_preauth | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This account does not require Kerberos preauthentication for logon.</div>|  
| password_expired | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The password expiration information. Zero if the password has not expired (and nonzero if it has).</div>|  
| smartcard_required | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Requires the user to log on to the user account with a smart card.</div>|  
| trusted_for_delegation | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The account is enabled for delegation. This is a security-sensitive setting; accounts with this option enabled should be tightly controlled. This setting allows a service running under the account to assume a client's identity and authenticate as that user to other remote servers on the network.</div>|  
| trusted_to_authenticate_for_delegation | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The account is trusted to authenticate a user outside of the Kerberos security package and delegate that user through constrained delegation. This is a security-sensitive setting; accounts with this option enabled should be tightly controlled. This setting allows a service running under the account to assert a client's identity and authenticate as that user to specifically configured services on the network. Windows 2000: This value is not supported.</div>|  
  
______________
  
## <a name="user_sid_item"></a>< user_sid_item >

The windows user_sid_item allows the different groups (identified by SID) that a user belongs to be collected.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| user_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the SID of a particular user.</div>|  
| enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents whether the particular user is enabled or not.</div>|  
| group_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>A string that represents the SID of a particular group. If the specified user belongs to more than one group, then multiple group_sid elements should exist. If the specified user is not a member of a single group, then a single group_sid element should exist with a status of 'does not exist'. If there is an error determining the groups that the user belongs to, then a single group_sid element should be included with a status of 'error'.</div>|  
| last_logon | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The date and time when the last logon occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, GMT.</div>|  
  
______________
  
## <a name="userright_item"></a>< userright_item >

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| userright | [win-sc:EntityItemUserRightType](#EntityItemUserRightType)  (0..1) |  
||<div>The userright entity holds a string that represents the name of a particular user right/privilege.</div>|  
| trustee_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The trustee_name entity is the unique name associated with the SID that has been granted the specified user right/privilege. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.</div>|  
| trustee_sid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The trustee_sid entity identifies the SID that has been granted the specified user right/privilege.</div>|  
  
______________
  
## <a name="volume_item"></a>< volume_item >

The volume item enumerates various attributes about a particular volume mounted to a machine. This includes the various system flags returned by GetVolumeInformation(). It is important to note that these system flags are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| rootpath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string that contains the root directory of the volume to be described. A trailing backslash is required. For example, you would specify \\MyServer\MyShare as "\\MyServer\MyShare\", or the C drive as "C:\".</div>|  
| file_system | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The type of filesystem. For example FAT or NTFS.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the volume.</div>|  
| drive_type | [win-sc:EntityItemDriveTypeType](#EntityItemDriveTypeType)  (0..1) |  
||<div>The drive type of the volume.</div>|  
| volume_max_component_length | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The volume_max_component_length element specifies the maximum length, in TCHARs, of a file name component that a specified file system supports. A file name component is the portion of a file name between backslashes. The value that is stored in the variable that *lpMaximumComponentLength points to is used to indicate that a specified file system supports long names. For example, for a FAT file system that supports long names, the function stores the value 255, rather than the previous 8.3 indicator. Long names can also be supported on systems that use the NTFS file system.</div>|  
| serial_number | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The volume serial number.</div>|  
| file_case_sensitive_search | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports case-sensitive file names.</div>|  
| file_case_preserved_names | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system preserves the case of file names when it places a name on disk.</div>|  
| file_unicode_on_disk | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports Unicode in file names as they appear on disk.</div>|  
| file_persistent_acls | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system preserves and enforces ACLs. For example, NTFS preserves and enforces ACLs, and FAT does not.</div>|  
| file_file_compression | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports file-based compression.</div>|  
| file_volume_quotas | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports disk quotas.</div>|  
| file_supports_sparse_files | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports sparse files.</div>|  
| file_supports_reparse_points | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports reparse points.</div>|  
| file_supports_remote_storage | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports remote storage.</div>|  
| file_volume_is_compressed | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The specified volume is a compressed volume; for example, a DoubleSpace volume.</div>|  
| file_supports_object_ids | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports object identifiers.</div>|  
| file_supports_encryption | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports the Encrypted File System (EFS).</div>|  
| file_named_streams | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports named streams.</div>|  
| file_read_only_volume | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The specified volume is read-only.</div>|  
| file_sequential_write_once | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports one time writes in sequential order.</div>|  
| file_supports_transactions | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports transaction processing.</div>|  
| file_supports_hard_links | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports direct links to other devices and partitions.</div>|  
| file_supports_extended_attributes | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports extended attributes.</div>|  
| file_supports_open_by_file_id | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports fileID.</div>|  
| file_supports_usn_journal | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The file system supports update sequence number journals.</div>|  
  
______________
  
## <a name="wmi_item"></a><  ~~wmi_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.7** :small_red_triangle: <br />**Reason:** Replaced by the wmi57_item. This item allows for single fields to be selected from WMI. A new item was created to allow more than one field to be selected in one statement. See the wmi57_item.<br />**Comment:** This object has been deprecated and may be removed in a future version of the language.<br />

The wmi_item outlines information to be checked through Microsoft's WMI interface.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| namespace | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The WMI namespaces of the specific object.</div>|  
| wql | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A WQL query used to identify the object(s) specified. Any valid WQL query is allowed with one exception, at most one field is allowed in the SELECT portion of the query. For example SELECT name FROM ... is valid, as is SELECT 'true' FROM ..., but SELECT name, number FROM ... is not valid. This is because the result element in the data section is only designed to work against a single field.</div>|  
| result | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The result element specifies how to test objects in the result set of the specified WQL statement. Only one comparable field is allowed. So if the WQL statement look like 'SELECT name FROM ...', then a result element with a value of 'Fred' would test that value against the names returned by the WQL statement. If the WQL statement returns more than one instance of the specified field, then multiple result elements should exist to describe each instance.</div>|  
  
______________
  
## <a name="wmi57_item"></a>< wmi57_item >

The wmi57_item outlines information to be checked through Microsoft's WMI interface.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| namespace | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The WMI namespaces of the specific object.</div>|  
| wql | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A WQL query used to identify the object(s) specified. Any valid WQL query is allowed with one exception, all fields must be named. For example SELECT name, age FROM ... is valid, but SELECT * FROM ... is not valid. This is because the record entity supports only named fields.</div>|  
| result | [oval-sc:EntityItemRecordType](oval-system-characteristics-schema.md#EntityItemRecordType)  (0..unbounded) |  
||<div>The result entity holds the results of the specified WQL statement.</div>|  
  
______________
  
## <a name="wuaupdatesearcher_item"></a>< wuaupdatesearcher_item >

The wuaupdatesearcher_item outlines information defined through the Search method of the IUpdateSearcher interface as part of Microsoft's WUA (Windows Update Agent) API. This information is related to the current patch level in a Windows environment. The test extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| search_criteria | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| update_id | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>The update_id entity specifies a string that represents a revision-independent identifier of an update. This information is part of the IUpdateIdentity interface that is part of the result of the IUpdateSearcher interface's Search method. Note that multiple update identifiers can be associated with a give search criteria and thus multiple entities can exist for this item.</div>|  
  
______________
  
## <a name="EntityItemAddrTypeType"></a>== EntityItemAddrTypeType ==

The EntityItemAddrTypeType restricts a string value to a specific set of values that describe the different address types of interfaces. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| MIB_IPADDR_DELETED | <div>The stated IP address is being deleted. The unsigned short value that this corresponds to is 0x0040</div> |  
| MIB_IPADDR_DISCONNECTED | <div>The stated IP address is on a disconnected interface. The unsigned short value that this corresponds to is 0x0008.</div> |  
| MIB_IPADDR_DYNAMIC | <div>The stated IP address is a dynamic IP address. The unsigned short value that this corresponds to is 0x0004.</div> |  
| MIB_IPADDR_PRIMARY | <div>The stated IP address is a primary IP address. The unsigned short value that this corresponds to is 0x0001.</div> |  
| MIB_IPADDR_TRANSIENT | <div>The stated IP address is a transient IP address. The unsigned short value that this corresponds to is 0x0080</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemAdstypeType"></a>== EntityItemAdstypeType ==

The EntityItemAdstypeType restricts a string value to a specific set of values that describe the possible types associated with an Active Directory attribute. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemAuditType"></a>== EntityItemAuditType ==

The EntityItemAuditType restricts a string value to a specific set of values: AUDIT_NONE, AUDIT_SUCCESS, AUDIT_FAILURE, and AUDIT_SUCCESS_FAILURE. These values describe which audit records should be generated. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| AUDIT_FAILURE | <div>The audit type AUDIT_FAILURE is used to perform audits on all unsuccessful occurrences of specified events when auditing is enabled.</div> |  
| AUDIT_NONE | <div>The audit type AUDIT_NONE is used to cancel all auditing options for the specified events.</div> |  
| AUDIT_SUCCESS | <div>The audit type AUDIT_SUCCESS is used to perform audits on all successful occurrences of the specified events when auditing is enabled.</div> |  
| AUDIT_SUCCESS_FAILURE | <div>The audit type AUDIT_SUCCESS_FAILURE is used to perform audits on all successful and unsuccessful occurrences of the specified events when auditing is enabled.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemDriveTypeType"></a>== EntityItemDriveTypeType ==

The EntityItemDriveTypeType complex type defines the different values that are valid for the drive_type entity of a win-sc:volume_item. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DRIVE_UNKNOWN | <div>The DRIVE_UNKNOWN type means that drive type cannot be determined. The UINT value that this corresponds to is 0.</div> |  
| DRIVE_NO_ROOT_DIR | <div>The DRIVE_NO_ROOT_DIR type means that the root path is not valid. The UINT value that this corresponds to is 1.</div> |  
| DRIVE_REMOVABLE | <div>The DRIVE_REMOVABLE type means that the drive contains removable media. The UINT value that this corresponds to is 2.</div> |  
| DRIVE_FIXED | <div>The DRIVE_FIXED type means that the drive contains fixed media. The UINT value that this corresponds to is 3.</div> |  
| DRIVE_REMOTE | <div>The DRIVE_REMOTE type means that the drive is a remote drive (i.e. network drive). The UINT value that this corresponds to is 4.</div> |  
| DRIVE_CDROM | <div>The DRIVE_CDROM type means that the drive is a CD-ROM drive. The UINT value that this corresponds to is 5.</div> |  
| DRIVE_RAMDISK | <div>The DRIVE_RAMDISK type means that the drive is a RAM disk. The UINT value that this corresponds to is 6.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemFileTypeType"></a>== EntityItemFileTypeType ==

The EntityItemFileTypeType restricts a string value to a specific set of values that describe the different types of files. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| FILE_TYPE_CHAR | <div>The specified file is a character file, typically an LPT device or a console.</div> |  
| FILE_TYPE_DISK | <div>The specified file is a disk file.</div> |  
| FILE_TYPE_PIPE | <div>The specified file is a socket, a named pipe, or an anonymous pipe.</div> |  
| FILE_TYPE_REMOTE | <div>Unused.</div> |  
| FILE_TYPE_UNKNOWN | <div>Either the type of the specified file is unknown, or the function failed.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemFileAttributeType"></a>== EntityItemFileAttributeType ==

The EntityItemFileAttributeType restricts a string value to a specific set of values that describe the different Windows file attributes. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
  
## <a name="EntityItemInterfaceTypeType"></a>== EntityItemInterfaceTypeType ==

The EntityItemInterfaceTypeType restricts a string value to a specific set of values that describe the different types of interfaces. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| MIB_IF_TYPE_ETHERNET | <div>The MIB_IF_TYPE_ETHERNET type is used to describe ethernet interfaces.</div> |  
| MIB_IF_TYPE_FDDI | <div>The MIB_IF_TYPE_FDDI type is used to describe fiber distributed data interfaces (FDDI).</div> |  
| MIB_IF_TYPE_LOOPBACK | <div>The MIB_IF_TYPE_LOOPBACK type is used to describe loopback interfaces.</div> |  
| MIB_IF_TYPE_OTHER | <div>The MIB_IF_TYPE_OTHER type is used to describe unknown interfaces.</div> |  
| MIB_IF_TYPE_PPP | <div>The MIB_IF_TYPE_PPP type is used to describe point-to-point protocol interfaces (PPP).</div> |  
| MIB_IF_TYPE_SLIP | <div>The MIB_IF_TYPE_SLIP type is used to describe serial line internet protocol interfaces (SLIP).</div> |  
| MIB_IF_TYPE_TOKENRING | <div>The MIB_IF_TYPE_TOKENRING type is used to describe token ring interfaces..</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemNamingContextType"></a>== EntityItemNamingContextType ==

The EntityItemNamingContextType restricts a string value to a specific set of values: domain, configuration, and schema. These values describe the different naming context found withing Active Directory. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| domain | <div>The domain naming context contains Active Directory objects present in the specified domain (e.g. users, computers, groups, and other objects).</div> |  
| configuration | <div>The configuration naming context contains configuration data that is required for the Active Directory to operate as a directory service.</div> |  
| schema | <div>The schema naming context contains all of the Active Directory object definitions.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemNTUserAccountTypeType"></a>== EntityItemNTUserAccountTypeType ==

The EntityItemNTUserAccountTypeType restricts a string value to a specific set of values that describe the different types of accounts. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| local | <div>Local accounts are accounts that were created directly on the machine being tested and should be in the form of machinename\username</div> |  
| domain | <div>Domain accounts are accounts that were created on a domain controller and should be in the form of domain\username</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemPeTargetMachineType"></a>== EntityItemPeTargetMachineType ==

The EntityItemPeTargetMachineType enumeration identifies the valid machine targets that can be specified in the PE file header. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemPeSubsystemType"></a>== EntityItemPeSubsystemType ==

The EntityItemPeSubsystemType enumeration identifies the valid subsystem types that can be specified in the PE file header. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemProtocolType"></a>== EntityItemProtocolType ==

The EntityItemProtocolType restricts a string value to a specific set of values that describe the different available protocols. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| TCP | <div>The port uses the Transmission Control Protocol (TCP).</div> |  
| UDP | <div>The port uses the User Datagram Protocol (UDP).</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemRegistryHiveType"></a>== EntityItemRegistryHiveType ==

The EntityItemRegistryHiveType restricts a string value to a specific set of values that describe the different registry hives. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| HKEY_CLASSES_ROOT | <div>This registry subtree contains information that associates file types with programs and configuration data for automation (e.g. COM objects and Visual Basic Programs).</div> |  
| HKEY_CURRENT_CONFIG | <div>This registry subtree contains configuration data for the current hardware profile.</div> |  
| HKEY_CURRENT_USER | <div>This registry subtree contains the user profile of the user that is currently logged into the system.</div> |  
| HKEY_CURRENT_USER_LOCAL_SETTINGS | <div>Registry entries subordinate to this key define preferences of the current user that are local to the machine. These entries are not included in the per-user registry portion of a roaming user profile. This key is supported starting with Windows 7 and Windows Server 2008 R2.</div> |  
| HKEY_LOCAL_MACHINE | <div>This registry subtree contains information about the local system.</div> |  
| HKEY_USERS | <div>This registry subtree contains user-specific data.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemRegistryTypeType"></a>== EntityItemRegistryTypeType ==

The EntityItemRegistryTypeType defines the different values that are valid for the type entity of a registry item. These values describe the possible types of data stored in a registry key. restricts a string value to a specific set of values that describe the different registry types. The empty string is also allowed as a valid value to support empty emlements associated with error conditions. Please note that the values identified are for the type entity and are not valid values for the datatype attribute. For information about how to encode registry data in OVAL for each of the different types, please visit the registry_item documentation.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemServiceControlsAcceptedType"></a>== EntityItemServiceControlsAcceptedType ==

The EntityItemServiceAcceptedControlsType complex type defines the different values that are valid for the controls_accepted entity of a service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemServiceCurrentStateType"></a>== EntityItemServiceCurrentStateType ==

The EntityItemServiceCurrentStateType complex type defines the different values that are valid for the current_state entity of a service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| SERVICE_CONTINUE_PENDING | <div>The SERVICE_CONTINUE_PENDING type means that the service has been sent a command to continue, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000005.</div> |  
| SERVICE_PAUSE_PENDING | <div>The SERVICE_PAUSE_PENDING type means that the service has been sent a command to pause, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000006.</div> |  
| SERVICE_PAUSED | <div>The SERVICE_PAUSED type means that the service is paused. The DWORD value that this corresponds to is 0x00000007.</div> |  
| SERVICE_RUNNING | <div>The SERVICE_RUNNING type means that the service is running. The DWORD value that this corresponds to is 0x00000004.</div> |  
| SERVICE_START_PENDING | <div>The SERVICE_START_PENDING type means that the service has been sent a command to start, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000002.</div> |  
| SERVICE_STOP_PENDING | <div>The SERVICE_STOP_PENDING type means that the service has been sent a command to stop, however, the command has not yet been executed. The DWORD value that this corresponds to is 0x00000003.</div> |  
| SERVICE_STOPPED | <div>The SERVICE_STOPPED type means that the service is stopped. The DWORD value that this corresponds to is 0x00000001.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemServiceStartTypeType"></a>== EntityItemServiceStartTypeType ==

The EntityItemServiceStartTypeType complex type defines the different values that are valid for the start_type entity of a service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| SERVICE_AUTO_START | <div>The SERVICE_AUTO_START type means that the service is started automatically by the Service Control Manager (SCM) during startup. The DWORD value that this corresponds to is 0x00000002.</div> |  
| SERVICE_BOOT_START | <div>The SERVICE_BOOT_START type means that the driver service is started by the system loader. The DWORD value that this corresponds to is 0x00000000.</div> |  
| SERVICE_DEMAND_START | <div>The SERVICE_DEMAND_START type means that the service is started by the Service Control Manager (SCM) when StartService() is called. The DWORD value that this corresponds to is 0x00000003.</div> |  
| SERVICE_DISABLED | <div>The SERVICE_DISABLED type means that the service cannot be started. The DWORD value that this corresponds to is 0x00000004.</div> |  
| SERVICE_SYSTEM_START | <div>The SERVICE_SYSTEM_START type means that the service is a device driver started by IoInitSystem(). The DWORD value that this corresponds to is 0x00000001.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemServiceTypeType"></a>== EntityItemServiceTypeType ==

The EntityItemServiceTypeType complex type defines the different values that are valid for the service_type entity of a service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| SERVICE_FILE_SYSTEM_DRIVER | <div>The SERVICE_FILE_SYSTEM_DRIVER type means that the service is a file system driver. The DWORD value that this corresponds to is 0x00000002.</div> |  
| SERVICE_KERNEL_DRIVER | <div>The SERVICE_KERNEL_DRIVER type means that the service is a driver. The DWORD value that this corresponds to is 0x00000001.</div> |  
| SERVICE_WIN32_OWN_PROCESS | <div>The SERVICE_WIN32_OWN_PROCESS type means that the service runs in its own process. The DWORD value that this corresponds to is 0x00000010.</div> |  
| SERVICE_WIN32_SHARE_PROCESS | <div>The SERVICE_WIN32_SHARE_PROCESS type means that the service runs in a process with other services. The DWORD value that this corresponds to is 0x00000020.</div> |  
| SERVICE_INTERACTIVE_PROCESS | <div>The SERVICE_WIN32_SHARE_PROCESS type means that the service runs in a process with other services. The DWORD value that this corresponds to is 0x00000100.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSharedResourceTypeType"></a>== EntityItemSharedResourceTypeType ==

The EntityItemSharedResourceTypeType complex type defines the different values that are valid for the type entity of a shared resource item. Note that the Windows API returns a DWORD value and OVAL uses the constant name that is normally defined for these return values. This is done to increase readability and maintainability of OVAL Definitions. The empty string is also allowed to support empty elements associated with error conditions.

It is also important to note that special shared resources are those reserved for remote administration, interprocess communication, and administrative shares.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string is also allowed to support empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSystemMetricIndexType"></a>== EntityItemSystemMetricIndexType ==

The EntityItemSystemMetricIndexType complex type defines the different values that are valid for the index entity of a system_metric item. These values describe the system metric or configuration setting to be retrieved. The empty string is also allowed to support empty elements associated with error conditions. Please note that the values identified are for the index entity and are not valid values for the datatype attribute.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemGUIDType"></a>== EntityItemGUIDType ==

The EntityItemGUIDType restricts a string value to a representation of a GUID, used for module ID. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

**Pattern:** (\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}){0,}

## <a name="EntityItemCmdletVerbType"></a>== EntityItemCmdletVerbType ==

The EntityItemCmdletVerbType restricts a string value to a set of allow cmdlet verbs. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string is also allowed to support empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemWindowsViewType"></a>== EntityItemWindowsViewType ==

The EntityItemWindowsViewType restricts a string value to a specific set of values: 32-bit and 64-bit. These values describe the different values possible for the windows view behavior.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| 32_bit | <div>Indicates the 32_bit windows view.</div> |  
| 64_bit | <div>Indicates the 64_bit windows view.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemUserRightType"></a>== EntityItemUserRightType ==

The EntityItemUserRightType restricts a string value to a specific set of values that describe the different user rights/privileges. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
