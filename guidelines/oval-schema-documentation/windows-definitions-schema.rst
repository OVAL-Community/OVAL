Open Vulnerability and Assessment Language: Windows Definition  
=========================================================
* Schema: Windows Definition  
* Version: 6.0  
* Release Date: 1/1/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Windows specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`auditeventpolicysubcategories_test`  
* :ref:`cmdlet_test`  
* :ref:`file_test`  
* :ref:`fileeffectiverights53_test`  
* :ref:`group_sid_test`  
* :ref:`lockoutpolicy_test`  
* :ref:`ntuser_test`  
* :ref:`passwordpolicy_test`  
* :ref:`registry_test`  
* :ref:`regkeyeffectiverights53_test`  
* :ref:`service_test`  
* :ref:`sid_test`  
* :ref:`sid_sid_test`  
* :ref:`user_sid55_test`  
* :ref:`userright_test`  
* :ref:`appcmd_test`  
* :ref:`appcmdlistconfig_test`  
* :ref:`wmi57_test`  
  
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
The FileEffectiveRights53Behaviors extend the win-def:FileBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:FileBehaviors

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

To ensure consistent results across OVAL interpreters should comply with the following:

1. Only include ntuser.dat files from 'human' accounts that have interactively logged into the system, with the exception of the 'Default' user if the 'include_default' behavior is true.

2. Create a 'does not exist' item for each ntuser.dat file that does not contain the specified registry key.



For requirement #1, OVAL interpreters are at their discretion to determine which ntuser.dat files have been logged into interactively, but the following is one method to determine this information.

a. Obtain a list of user profiles from the registry key: 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList'

b. Only include profiles from which the string SID can be translated into a trustee name, where the string SID is determined from they keynames in 'ProfileList'

c. Determine if each ntuser.dat file has been used by a human being via registry key: 'Software\Microsoft\Windows\CurrentVersion\Explorer\' with name 'UserSignedIn'

For requirement #2, This requirement goes against normal item creation in OVAL, but is essential in accurately verifying all ntuser.dat files are compliant, when tests have check_existence="all_exist". It is also very useful in reporting to the end user which ntuser.dat files failed registry key existence checks when tests mandate 'all_exist'

Example: If a computer contains 3 user profiles of human users, and one user has the registry key/name/value specified, and is configured correctly, but the other 2 users do not have the specified registry key, creating 'does not exist' items, informs the end user, which ntuser.dat files, (which corresponds to which specific user(s)) are not compliant. If the 'does not exist' items are not created, and at least one ntuser.dat file is configured correctly, then the overall result will be 'true', which will cause false negatives for any ntuser.dat file that does not contain the specified registry key.

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
The RegkeyEffectiveRights53Behaviors extend the win-def:RegistryBehaviors and therefore include the behaviors defined by that type.

**Extends:** win-def:RegistryBehaviors

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
  
.. _EntityStateFileTypeType:  
  
== EntityStateFileTypeType ==  
---------------------------------------------------------
The EntityStateFileTypeType complex type restricts a string value to a specific set of values. These values describe the type of file being represented. For more information see the GetFileType and GetFileAttributesEx functions as defined by Microsoft. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
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
  
