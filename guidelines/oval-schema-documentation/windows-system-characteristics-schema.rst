Open Vulnerability and Assessment Language: Windows System Characteristics  
=========================================================
* Schema: Windows System Characteristics  
* Version: 6.0  
* Release Date: 1/24/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Windows specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`auditeventpolicysubcategories_item`  
* :ref:`cmdlet_item`  
* :ref:`file_item`  
* :ref:`fileeffectiverights_item`  
* :ref:`group_sid_item`  
* :ref:`lockoutpolicy_item`  
* :ref:`ntuser_item`  
* :ref:`passwordpolicy_item`  
* :ref:`registry_item`  
* :ref:`regkeyauditedpermissions_item`  
* :ref:`regkeyeffectiverights_item`  
* :ref:`service_item`  
* :ref:`sid_item`  
* :ref:`sid_sid_item`  
* :ref:`user_sid_item`  
* :ref:`userright_item`  
* :ref:`appcmd_item`  
* :ref:`appcmdlistconfig_item`  
* :ref:`wmi57_item`  
  
______________
  
.. _auditeventpolicysubcategories_item:  
  
< auditeventpolicysubcategories_item >  
---------------------------------------------------------
The auditeventpolicysubcategories_item is used to hold information about the audit event policy settings on a Windows system. These settings are used to specify which system and network events are monitored. For example, if the credential_validation element has a value of AUDIT_FAILURE, it means that the system is configured to log all unsuccessful attempts to validate a user account on a system. It is important to note that these audit event policy settings are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information on each setting. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

Note that when auditing is disabled each of the entities listed below should be set to 'AUDIT_NONE'.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - credential_validation  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced during the validation of a user's logon credentials. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Credential Validation  
    * - kerberos_authentication_service  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by Kerberos authentication ticket-granting requests. This state corresponds with the following GUID specified in ntsecapi.h: 0CCE9242-69AE-11D9-BED3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Kerboros Authentication Service  
    * - kerberos_service_ticket_operations  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by Kerberos service ticket requests. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9240-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Kerberos Service Ticket Operations  
    * - other_account_logon_events  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to user accounts that are not covered by other events in the Account Logon category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9241-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Logon: Audit Other Account Logon Events  
    * - application_group_management  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to application groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9239-69ae-11d9-bed3-5e corresponds with the following Advanced Audit Policy: Account Management: Audit Application Group Management  
    * - computer_account_management  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to computer accounts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9236-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Computer Account Management  
    * - distribution_group_management  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to distribution groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9238-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Distribution Account Management  
    * - other_account_management_events  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by other user account changes that are not covered by other events in the Account Management category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Other Account Management Events  
    * - security_group_management  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to security groups. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9237-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit Security Group Management  
    * - user_account_management  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to user accounts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9235-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Account Management: Audit User Account Management  
    * - dpapi_activity  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced when requests are made to the Data Protection application interface. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit DPAPI Activity  
    * - process_creation  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced when a process is created or starts. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit Process Creation  
    * - process_termination  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced when a process ends. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit Process Termination  
    * - rpc_events  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by inbound remote procedure call connections. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Detailed Tracking: Audit RPC Events  
    * - directory_service_access  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced when an Active Directory Domain Services object is accessed. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Access  
    * - directory_service_changes  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced when changes are made to Active Directory Domain Services objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Changes  
    * - directory_service_replication  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced when two Active Directory Domain Services domain controllers are replicated. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Directory Service Access  
    * - detailed_directory_service_replication  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by detailed Active Directory Domain Services replication between domain controllers. This state corresponds with the following GUID specified in ntsecapi.h: 0cce923e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: DS Access: Audit Detailed Directory Service Replication  
    * - account_lockout  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by a failed attempt to log onto a locked out account. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9217-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Account Lockout  
    * - ipsec_extended_mode  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Extended Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit IPsec Extended Mode  
    * - ipsec_main_mode  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Main Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9218-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logof/Logoff: Audit IPsec Main Mode  
    * - ipsec_quick_mode  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by Internet Key Exchange and Authenticated Internet protocol during Quick Mode negotiations. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9219-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit IPsec Quick Mode  
    * - logoff  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by closing a logon session. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9216-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Logoff  
    * - logon  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by attempts to log onto a user account. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9215-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Logon  
    * - network_policy_server  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by RADIUS and Network Access Protection user access requests. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9243-69ae-11d9-bed3-505054503030.This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Network Policy Server  
    * - other_logon_logoff_events  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by other logon/logoff based events that are not covered in the Logon/Logoff category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921c-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Other Logon/Logoff Events  
    * - special_logon  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by special logons. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921b-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit Special Logon  
    * - logon_claims  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit user and device claims information in the user's logon token. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9247-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Logon/Logoff: Audit User / Device Claims  
    * - application_generated  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by applications that use the Windows Auditing API. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9222-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Application Generated  
    * - certification_services  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by operations on Active Directory Certificate Services. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9221-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Certification Services  
    * - detailed_file_share  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by attempts to access files and folders on a shared folder. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9244-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Detailed File Share  
    * - file_share  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by attempts to access a shared folder. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9224-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit File Share  
    * - file_system  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced user attempts to access file system objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921d-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit File System  
    * - filtering_platform_connection  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by connections that are allowed or blocked by Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9226-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Filtering Platform Connection  
    * - filtering_platform_packet_drop  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by packets that are dropped by Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9225-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Filtering Platform Packet Drop  
    * - handle_manipulation  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced when a handle is opened or closed. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9223-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Handle Manipulation  
    * - kernel_object  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by attempts to access the system kernel. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Kernel Object  
    * - other_object_access_events  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by the management of Task Scheduler jobs or COM+ objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9227-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Other Object Access Events  
    * - registry  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by attempts to access registry objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce921e-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Registry  
    * - sam  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by attempts to access Security Accounts Manager objects. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9220-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit SAM  
    * - removable_storage  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit events that indicate file object access attempts to removable storage. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9245-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Audit Removable Storage  
    * - central_access_policy_staging  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit events that indicate permission granted or denied by a proposed policy differs from the current central access policy on an object. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9246-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Object Access: Central Access Policy Staging  
    * - audit_policy_change  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes in security audit policy settings. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922f-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Audit Policy Change  
    * - authentication_policy_change  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to the authentication policy. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9230-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Authentication Policy Change  
    * - authorization_policy_change  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to the authorization policy. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9231-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Authorization Policy Change  
    * - filtering_platform_policy_change  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to the Windows Filtering Platform. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9233-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Filtering Platform Policy Change  
    * - mpssvc_rule_level_policy_change  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes to policy rules used by the Windows Firewall. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9232-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit MPSSVC Rule-Level Policy Change  
    * - other_policy_change_events  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by other security policy changes that are not covered other events in the Policy Change category. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9234-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Policy Change: Audit Other Policy Change Events  
    * - non_sensitive_privilege_use  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by the use of non-sensitive privileges. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9229-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Non Sensitive Privilege Use  
    * - other_privilege_use_events  
      - win-sc:EntityItemAuditType (0..1)  
      - This is currently not used and has been reserved by Microsoft for use in the future. This state corresponds with the following GUID specified in ntsecapi.h: 0cce922a-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Other Privilege Use Events  
    * - sensitive_privilege_use  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by the use of sensitive privileges. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9228-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: Privilege Use: Audit Sensitive Privilege Use  
    * - ipsec_driver  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by the IPsec filter driver. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9213-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit IPsec Driver  
    * - other_system_events  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by the startup and shutdown, security policy processing, and cryptography key file and migration operations of the Windows Firewall. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9214-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Other System Events  
    * - security_state_change  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by changes in the security state. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9210-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Security State Change  
    * - security_system_extension  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events produced by the security system extensions or services. This state corresponds with the following GUID specified in ntsecapi.h: cce9211-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit Security System Extension  
    * - system_integrity  
      - win-sc:EntityItemAuditType (0..1)  
      - Audit the events that indicate that the integrity security subsystem has been violated. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9212-69ae-11d9-bed3-505054503030. This state corresponds with the following Advanced Audit Policy: System: Audit System Integrity  
    * - group_membership  
      - win-sc:EntityItemAuditType (0..1)  
      - This subcategory audits the group membership of a token for an associated log on. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9249-69ae-11d9-bed3-505054503030.  
    * - pnp_activity  
      - win-sc:EntityItemAuditType (0..1)  
      - This subcategory audits events generated by plug and play (PNP). This state corresponds with the following GUID specified in ntsecapi.h: 0cce9248-69ae-11d9-bed3-505054503030.  
    * - user_device_claims  
      - win-sc:EntityItemAuditType (0..1)  
      - This subcategory audits the user and device claims that are present in the token of an associated logon. This state corresponds with the following GUID specified in ntsecapi.h: 0cce9247-69ae-11d9-bed3-505054503030.  
    * - audit_detailedtracking_tokenrightadjusted  
      - win-sc:EntityItemAuditType (0..1)  
      - This subcategory audits when token privileges are enabled or disabled for a specific account’s token. This state corresponds with the following GUID specified in ntsecapi.h: 0cce924a-69ae-11d9-bed3-505054503030.  
  
______________
  
.. _cmdlet_item:  
  
< cmdlet_item >  
---------------------------------------------------------
The cmdlet_item represents a PowerShell cmdlet, the parameters supplied to it, and the value it returned.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - module_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the module that contains the cmdlet.  
    * - module_id  
      - win-sc:EntityItemGUIDType (0..1)  
      - The globally unique identifier for the module.  
    * - module_version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The version of the module that contains the cmdlet in the form of MAJOR.MINOR.  
    * - verb  
      - win-sc:EntityItemCmdletVerbType (0..1)  
      - The cmdlet verb.  
    * - noun  
      - oval-sc:EntityItemStringType (0..1)  
      - The cmdlet noun.  
    * - parameters  
      - oval-sc:EntityItemRecordType (0..1)  
      - A list of properties (name and value pairs) as input to invoke the cmdlet.  
    * - select  
      - oval-sc:EntityItemRecordType (0..1)  
      - A list of fields (name and value pairs) used as input to the Select-Object cmdlet to select specific output properties.  
    * - value  
      - oval-sc:EntityItemRecordType (0..unbounded)  
      - The expected value represented as a set of fields (name and value pairs).  
  
______________
  
.. _file_item:  
  
< file_item >  
---------------------------------------------------------
This element describes file metadata. The time information can be retrieved by the _stst function. Development_class and other version information (company, internal name, language, original_filename, product_name, product_version) can be retrieved using the VerQueryValue function.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity. The other items associated with this item would then reflect the values associated with the directory.  
    * - owner  
      - oval-sc:EntityItemStringType (0..1)  
      - A string that contains the name of the owner. The name should be specified in the DOMAIN\username format.  
    * - size  
      - oval-sc:EntityItemIntType (0..1)  
      - Size of the file in bytes.  
    * - a_time  
      - oval-sc:EntityItemIntType (0..1)  
      - Time of last access of file. Valid on NTFS but not on FAT formatted disk drives. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).  
    * - c_time  
      - oval-sc:EntityItemIntType (0..1)  
      - Time of creation of file. Valid on NTFS but not on FAT formatted disk drives. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).  
    * - m_time  
      - oval-sc:EntityItemIntType (0..1)  
      - Time of last modification of file. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).  
    * - ms_checksum  
      - oval-sc:EntityItemStringType (0..1)  
      - The checksum of the file as supplied by Microsoft's MapFileAndCheckSum function.  
    * - version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The version of the file.  
    * - type  
      - win-sc:EntityItemFileTypeType (0..1)  
      - The type child element marks whether the file item describes a named pipe, standard file, etc. These types are the return values for GetFileType. For directories, this element must have a status of 'does not exist'.  
    * - attribute  
      - win-sc:EntityItemFileAttributeType (0..unbounded)  
      - The attribute child elements denote the Windows file attributes associated with the file. These types are the return values for GetFileAttributes.  
    * - development_class  
      - oval-sc:EntityItemStringType (0..1)  
      - The development_class element allows the distinction to be made between the GDR development environment and the QFE development environment. This field holds the text found in front of the mmmmmm-nnnn version, for example srv03_gdr.  
    * - company  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity defines the company name held within the version-information structure.  
    * - internal_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity defines the internal name held within the version-information structure.  
    * - language  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity defines the language held within the version-information structure.  
    * - original_filename  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity defines the original filename held within the version-information structure.  
    * - product_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This entity defines the product name held within the version-information structure.  
    * - product_version  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This entity defines the product version held within the version-information structure. This may not necessarily be a string compatible with the OVAL version datatype, in which case the string datatype should be used.  
    * - windows_view  
      - win-sc:EntityItemWindowsViewType (0..1)  
      - The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.  
  
______________
  
.. _fileeffectiverights_item:  
  
< fileeffectiverights_item >  
---------------------------------------------------------
This item stores the effective rights of a file that a discretionary access control list (DACL) structure grants to a specified trustee. The trustee's effective rights are determined checking all access-allowed and access-denied access control entries (ACEs) in the DACL. For help with this test see the GetEffectiveRightsFromAcl() api.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the absolute path to a file on the machine from which the DACL was retrieved. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - This element specifies the absolute path to a file on the machine from which the DACL was retrieved.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity. The other items associated with this item would then reflect the values associated with the directory.  
    * - trustee_sid  
      - oval-sc:EntityItemStringType (0..1)  
      - The trustee_sid entity specifies the SID that associated a user, group, system, or program (such as a Windows service).  
    * - trustee_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - oval-sc:EntityItemBoolType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - oval-sc:EntityItemBoolType (0..1)  
      - The right to read the information in the object's security descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - oval-sc:EntityItemBoolType (0..1)  
      - The right to modify the DACL in the object's security descriptor.  
    * - standard_write_owner  
      - oval-sc:EntityItemBoolType (0..1)  
      - The right to change the owner in the object's security descriptor.  
    * - standard_synchronize  
      - oval-sc:EntityItemBoolType (0..1)  
      - The right to use the object for synchronization. This enables a thread to wait until the object is in the signaled state. Some object types do not support this access right.  
    * - access_system_security  
      - oval-sc:EntityItemBoolType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - oval-sc:EntityItemBoolType (0..1)  
      - Read access.  
    * - generic_write  
      - oval-sc:EntityItemBoolType (0..1)  
      - Write access.  
    * - generic_execute  
      - oval-sc:EntityItemBoolType (0..1)  
      - Execute access.  
    * - generic_all  
      - oval-sc:EntityItemBoolType (0..1)  
      - Read, write, and execute access.  
    * - file_read_data  
      - oval-sc:EntityItemBoolType (0..1)  
      - Grants the right to read data from the file  
    * - file_write_data  
      - oval-sc:EntityItemBoolType (0..1)  
      - Grants the right to write data to the file.  
    * - file_append_data  
      - oval-sc:EntityItemBoolType (0..1)  
      - Grants the right to append data to the file.  
    * - file_read_ea  
      - oval-sc:EntityItemBoolType (0..1)  
      - Grants the right to read extended attributes.  
    * - file_write_ea  
      - oval-sc:EntityItemBoolType (0..1)  
      - Grants the right to write extended attributes.  
    * - file_execute  
      - oval-sc:EntityItemBoolType (0..1)  
      - Grants the right to execute a file.  
    * - file_delete_child  
      - oval-sc:EntityItemBoolType (0..1)  
      - Right to delete a directory and all the files it contains (its children), even if the files are read-only.  
    * - file_read_attributes  
      - oval-sc:EntityItemBoolType (0..1)  
      - Grants the right to read file attributes.  
    * - file_write_attributes  
      - oval-sc:EntityItemBoolType (0..1)  
      - Grants the right to change file attributes.  
    * - windows_view  
      - win-sc:EntityItemWindowsViewType (0..1)  
      - The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.  
  
______________
  
.. _group_sid_item:  
  
< group_sid_item >  
---------------------------------------------------------
The Windows group_sid_item allows the different users and subgroups, that directly belong to specific groups (identified by SID), to be collected. The collected subgroups will not be resolved to find indirect user or subgroup members. If the subgroups need to be resolved, it should be done using the sid_sid_object. Note that the user and subgroup elements can appear an unlimited number of times. If a user is not found in the specified group, a single user element should exist with a status of 'does not exist'. If there is an error determining the users of a group, a single user element should exist with a status of 'error'. If a subgroup is not found in the specified group, a single subgroup element should exist with a status of 'does not exist'. If there is an error determining the subgroups of a group, a single subgroup element should exist with a status of 'error'.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - group_sid  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the SID of a particular group.  
    * - user_sid  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - A string that represents the SID of a particular user. If the specified group has more than one user as a member, then multiple user_sid entities should exist. If the specified group does not contain a single user, then a single user_sid entity should exist with a status of 'does not exist'. If there is an error determining the userss that are members of the group, then a single user_sid entity should be included with a status of 'error'.  
    * - subgroup_sid  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - A string that represents the SID of a particular subgroup. If the specified group has more than one subgroup as a member, then multiple subgroup_sid entities should exist. If the specified group does not contain a single subgroup, a single subgroup_sid entity should exist with a status of 'does not exist'. If there is an error determining the subgroups that are members of the group, then a single subgroup_sid entity should be included with a status of 'error'.  
    * - group  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.  
    * - user  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - A string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name". For built-in accounts on the system, use the user name without a domain.If the specified group has more than one user as a member, then multiple user elements should exist. If the specified group does not contain a single user, then a single user element should exist with a status of 'does not exist'. If there is an error determining the users that are members of the group, then a single user element should be included with a status of 'error'.  
    * - subgroup  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - A string that represents the name of a particular subgroup in the specified group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, the subgroups should be identified in the form: "domain\group name". In a local environment, the subgroups should be identified in the form: "computer name\group name". If the subgroups are built-in groups, the subgroups should be identified in the form: "group name" without a domain component.If the specified group has more than one subgroup as a member, then multiple subgroup elements should exist. If the specified group does not contain a single subgroup, then a single subgroup element should exist with a status of 'does not exist'. If there is an error determining the subgroups that are members of the group, then a single subgroup element should be included with a status of 'error'.  
  
______________
  
.. _lockoutpolicy_item:  
  
< lockoutpolicy_item >  
---------------------------------------------------------
The lockoutpolicy item enumerates various attributes associated with lockout information for users and global groups in the security database.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - force_logoff  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies, in seconds (from a DWORD), the amount of time between the end of the valid logon time and the time when the user is forced to log off the network. A value of TIMEQ_FOREVER (max DWORD value, 4294967295) indicates that the user is never forced to log off. A value of zero indicates that the user will be forced to log off immediately when the valid logon time expires. See the USER_MODALS_INFO_0 structure returned by a call to NetUserModalsGet().  
    * - lockout_duration  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies, in seconds, how long a locked account remains locked before it is automatically unlocked. See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().  
    * - lockout_observation_window  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the maximum time, in seconds, that can elapse between any two failed logon attempts before lockout occurs. See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().  
    * - lockout_threshold  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the number of invalid password authentications that can occur before an account is marked "locked out." See the USER_MODALS_INFO_3 structure returned by a call to NetUserModalsGet().  
  
______________
  
.. _ntuser_item:  
  
< ntuser_item >  
---------------------------------------------------------
To ensure consistent results across OVAL interpreters should comply with the following:

* Create a 'does not exist' item for each ntuser.dat file that does not contain the specified registry key.

This requirement goes against normal item creation in OVAL, but is essential in accurately verifying all ntuser.dat files are compliant, when tests have check_existence="all_exist". It is also very useful in reporting to the end user which ntuser.dat files failed registry key existence checks when tests mandate 'all_exist'

Example: If a computer contains 3 user profiles of human users, and one user has the registry key/name/value specified, and is configured correctly, but the other 2 users do not have the specified registry key, creating 'does not exist' items, informs the end user, which ntuser.dat files, (which corresponds to which specific user(s)) are not compliant. If the 'does not exist' items are not created, and at least one ntuser.dat file is configured correctly, then the overall result will be 'true', which will cause false negatives for any ntuser.dat file that does not contain the specified registry key.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - key  
      - oval-sc:EntityItemStringType (0..1)  
      - This element describes a registry key normally found in the HKCU hive to be tested.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - This element describes the name of a registry key. If the xsi:nil attribute is set to true, then the item being represented is the higher level key. Using xsi:nil here will result in a status of 'does not exist' for the type, and value entities since these entities are not associated with a key by itself.  
    * - sid  
      - oval-sc:EntityItemStringType (0..1)  
      - This element holds a string that represents the SID of a particular user.  
    * - username  
      - oval-sc:EntityItemStringType (0..1)  
      - The username entity holds a string that represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer name\user name".  
    * - account_type  
      - win-sc:EntityItemNTUserAccountTypeType (0..1)  
      - The account_type element describes if the user account is a local account or domain account.  
    * - logged_on  
      - oval-sc:EntityItemBoolType (0..1)  
      - The logged_on element describes if the user account is currently logged on to the computer.  
    * - enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - The enabled element describes if the user account is enabled or disabled.  
    * - date_modified  
      - oval-sc:EntityItemIntType (0..1)  
      - Time of last modification of file. The string should represent the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC).  
    * - days_since_modified  
      - oval-sc:EntityItemIntType (0..1)  
      - The number of days since the ntuser.dat file was last modified. The value should be rounded up to the next whole integer.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - This element describes the filepath of the ntuser.dat file.  
    * - last_write_time  
      - oval-sc:EntityItemIntType (0..1)  
      - The last time that the key or any of its value entries was modified. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). Last write time can be queried on a hive, key, or name. When collecting only information about a registry hive the last write time will be the time the hive or any of its entiries was written to. When collecting only information about a registry hive and key the last write time will be the time the key or any of its entiries was written to. When collecting only information about a registry name the last write time will be the time the name was written to. See the RegQueryInfoKey function lpftLastWriteTime.  
    * - type  
      - win-sc:EntityItemRegistryTypeType (0..1)  
      - Specifies the type of data stored by the registry key. Please refer to the EntityItemRegistryTypeType for more information about the different possible types.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value entity holds the actual value of the specified registry key. The representation of the value as well as the associated datatype attribute depends on type of data stored in the registry key. If the specified registry key is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the registry key is of type REG_DWORD or REG_QWORD, then the datatype attribute should be set to 'int' and the value entity should represent the data as an integer. If the specified registry key is of type REG_EXPAND_SZ, then the datatype attribute should be set to 'string' and the pre-expanded string should be represented by the value entity. If the specified registry key is of type REG_MULTI_SZ, then multiple value entities should exist to describe the array of strings, with each value element holds a single string. In the end, there should be the same number of value entities as there are strings in the reg_multi_sz array. If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string.  
  
______________
  
.. _passwordpolicy_item:  
  
< passwordpolicy_item >  
---------------------------------------------------------
Specific policy items associated with passwords. It is important to note that these policies are specific to certain versions of Windows. As a result, the documentation for that version of Windows should be consulted for more information. Information is stored in the SAM or Active Directory but is encrypted or hidden so the registry_item and activedirectory_item are of no use. If this can be figured out, then the password_policy item is not needed.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - max_passwd_age  
      - oval-sc:EntityItemIntType (0..1)  
      - Alternate Name: "Maximum password age". Specifies, in seconds (from a DWORD), the maximum allowable password age. A value of TIMEQ_FOREVER (max DWORD value, 4294967295) indicates that the password never expires. The minimum valid value for this element is ONE_DAY (86400). See the USER_MODALS_INFO_0 structure returned by a call to NetUserModalsGet().  
    * - min_passwd_age  
      - oval-sc:EntityItemIntType (0..1)  
      - Alternate Name: "Minimum password age". Specifies the minimum number of seconds that can elapse between the time a password changes and when it can be changed again. A value of zero indicates that no delay is required between password updates.  
    * - min_passwd_len  
      - oval-sc:EntityItemIntType (0..1)  
      - Alternate Name: "Minimum password length". Specifies the minimum allowable password length. Valid values for this element are zero through PWLEN.  
    * - password_hist_len  
      - oval-sc:EntityItemIntType (0..1)  
      - Alternate Name: "Enforce password history". Specifies the length of password history maintained. A new password cannot match any of the previous usrmod0_password_hist_len passwords. Valid values for this element are zero through DEF_MAX_PWHIST.  
    * - password_complexity  
      - oval-sc:EntityItemBoolType (0..1)  
      - Alternate Name: "Password must meet complexity requirements". A boolean value that signifies whether passwords must meet the complexity requirements put forth by the operating system.  
    * - reversible_encryption  
      - oval-sc:EntityItemBoolType (0..1)  
      - Alternate name: "Store passwords using reversible encryption". Determines whether or not passwords are stored using reversible encryption.  
    * - anonymous_name_lookup  
      - oval-sc:EntityItemBoolType (0..1)  
      - Alternate name: "Allow anonymous SID/Name translation". Determines whether or not an anonymous user may query the local LSA policy.  
  
______________
  
.. _registry_item:  
  
< registry_item >  
---------------------------------------------------------
The windows registry item specifies information that can be collected about a particular registry key.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hive  
      - win-sc:EntityItemRegistryHiveType (0..1)  
      - The hive that the registry key belongs to.  
    * - key  
      - oval-sc:EntityItemStringType (0..1)  
      - This element describes a registry key to be gathered. Note that the hive portion of the string should not be included, as this data can be found under the hive element. If the xsi:nil attribute is set to true, then the item being represented is the higher level hive or lower level name. Using xsi:nil here will result in a status of 'not collected' for this entity since the item is specific to a hive or name.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - This element describes the name of a registry key. If the xsi:nil attribute is set to true, then the item being represented is the higher level key or hive. Using xsi:nil here will result in a status of 'not collected' since the item is specific to a key or hive.  
    * - last_write_time  
      - oval-sc:EntityItemIntType (0..1)  
      - The last time that the key or any of its value entries were modified. The value of this entity represents the FILETIME structure which is a 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601 (UTC). Last write time can be queried on any key, with hives being classified as a type of key. When collecting only information about a registry hive or key the last write time will be the time the key or any of its entries were modified. When collecting only information about a registry name the last write time will be the time the containing key was modified. Thus when collecting information about a registry name, the last write time does not correlate directly to the specified name. See the RegQueryInfoKey function lpftLastWriteTime.  
    * - type  
      - win-sc:EntityItemRegistryTypeType (0..1)  
      - Specifies the type of data stored by the registry key. Please refer to the EntityItemRegistryTypeType for more information about the different possible types.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value entity holds the actual value of the specified registry key. The representation of the value as well as the associated datatype attribute depends on type of data stored in the registry key. If the value being tested is of type REG_BINARY, then the datatype attribute should be set to 'binary' and the data represented by the value entity should follow the xsd:hexBinary form. (each binary octet is encoded as two hex digits) If the value being tested is of type REG_DWORD, REG_QWORD, REG_DWORD_LITTLE_ENDIAN, REG_DWORD_BIG_ENDIAN, or REG_QWORD_LITTLE_ENDIAN then the datatype attribute should be set to 'int' and the value entity should represent the data as an unsigned integer. DWORD and QWORD values represnt unsigned 32-bit and 64-bit integers, respectively. If the value being tested is of type REG_EXPAND_SZ, then the datatype attribute should be set to 'string' and the pre-expanded string should be represented by the value entity. If the value being tested is of type REG_MULTI_SZ, then only a single string (one of the multiple strings) should be tested using the value entity with the datatype attribute set to 'string'. In order to test multiple values, multiple OVAL registry tests or multiple states should be combined. Reg_multi_sz values, with no values, should be given a status of "does not exist". If the specified registry key is of type REG_SZ, then the datatype should be 'string' and the value entity should be a copy of the string. If the value being tested is of type REG_LINK, then the datatype attribute should be set to 'string' and the null-terminated Unicode string should be represented by the value entity.  
    * - expanded_value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - For registry values of type REG_EXPAND_SZ, this entity contains the expanded value. Otherwise, it should not exist.  
    * - windows_view  
      - win-sc:EntityItemWindowsViewType (0..1)  
      - The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.  
  
______________
  
.. _regkeyauditedpermissions_item:  
  
< regkeyauditedpermissions_item >  
---------------------------------------------------------
This item stores the audited access rights of a registry key that a system access control list (SACL) structure grants to a specified trustee. The trustee's audited access rights are determined checking all access control entries (ACEs) in the SACL. For help with this test see the GetAuditedPermissionsFromAcl() api.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hive  
      - win-sc:EntityItemRegistryHiveType (0..1)  
      - This element specifies the hive of a registry key on the machine from which the SACL was retrieved.  
    * - key  
      - oval-sc:EntityItemStringType (0..1)  
      - This element specifies a registry key on the machine from which the SACL was retrieved. Note that the hive portion of the string should not be inclueded, as this data should be found under the hive element.  
    * - trustee_sid  
      - oval-sc:EntityItemStringType (0..1)  
      - The security identifier (SID) of the specified trustee name.  
    * - trustee_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - win-sc:EntityItemAuditType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - win-sc:EntityItemAuditType (0..1)  
      - The right to read the information in the object's security descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - win-sc:EntityItemAuditType (0..1)  
      - The right to modify the DACL in the object's security descriptor.  
    * - standard_write_owner  
      - win-sc:EntityItemAuditType (0..1)  
      - The right to change the owner in the object's security descriptor.  
    * - access_system_security  
      - win-sc:EntityItemAuditType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - win-sc:EntityItemAuditType (0..1)  
      - Read access.  
    * - generic_write  
      - win-sc:EntityItemAuditType (0..1)  
      - Write access.  
    * - generic_execute  
      - win-sc:EntityItemAuditType (0..1)  
      - Execute access.  
    * - generic_all  
      - win-sc:EntityItemAuditType (0..1)  
      - Read, write, and execute access.  
    * - key_query_value  
      - win-sc:EntityItemAuditType (0..1)  
      -   
    * - key_set_value  
      - win-sc:EntityItemAuditType (0..1)  
      -   
    * - key_create_sub_key  
      - win-sc:EntityItemAuditType (0..1)  
      -   
    * - key_enumerate_sub_keys  
      - win-sc:EntityItemAuditType (0..1)  
      -   
    * - key_notify  
      - win-sc:EntityItemAuditType (0..1)  
      -   
    * - key_create_link  
      - win-sc:EntityItemAuditType (0..1)  
      -   
    * - key_wow64_64key  
      - win-sc:EntityItemAuditType (0..1)  
      -   
    * - key_wow64_32key  
      - win-sc:EntityItemAuditType (0..1)  
      -   
    * - key_wow64_res  
      - win-sc:EntityItemAuditType (0..1)  
      -   
    * - windows_view  
      - win-sc:EntityItemWindowsViewType (0..1)  
      - The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.  
  
______________
  
.. _regkeyeffectiverights_item:  
  
< regkeyeffectiverights_item >  
---------------------------------------------------------
This item stores the effective rights of a registry key that a discretionary access control list (DACL) structure grants to a specified trustee. The trustee's effective rights are determined checking all access-allowed and access-denied access control entries (ACEs) in the DACL. For help with this test see the GetEffectiveRightsFromAcl() api.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hive  
      - win-sc:EntityItemRegistryHiveType (0..1)  
      - The hive that the registry key belongs to.  
    * - key  
      - oval-sc:EntityItemStringType (0..1)  
      - This element describes a registry key to be gathered. Note that the hive portion of the string should not be inclueded, as this data can be found under the hive element. If the xsi:nil attribute is set to true, then the item being represented is the higher level hive.  
    * - trustee_sid  
      - oval-sc:EntityItemStringType (0..1)  
      - The trustee_sid entity specifies the SID that associated a user, group, system, or program (such as a Windows service).  
    * - trustee_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This element specifies the trustee name associated with this particular DACL. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - standard_delete  
      - oval-sc:EntityItemBoolType (0..1)  
      - The right to delete the object.  
    * - standard_read_control  
      - oval-sc:EntityItemBoolType (0..1)  
      - The right to read the information in the object's security descriptor, not including the information in the SACL.  
    * - standard_write_dac  
      - oval-sc:EntityItemBoolType (0..1)  
      - The right to modify the DACL in the object's security descriptor.  
    * - standard_write_owner  
      - oval-sc:EntityItemBoolType (0..1)  
      - The right to change the owner in the object's security descriptor.  
    * - access_system_security  
      - oval-sc:EntityItemBoolType (0..1)  
      - Indicates access to a system access control list (SACL).  
    * - generic_read  
      - oval-sc:EntityItemBoolType (0..1)  
      - Read access.  
    * - generic_write  
      - oval-sc:EntityItemBoolType (0..1)  
      - Write access.  
    * - generic_execute  
      - oval-sc:EntityItemBoolType (0..1)  
      - Execute access.  
    * - generic_all  
      - oval-sc:EntityItemBoolType (0..1)  
      - Read, write, and execute access.  
    * - key_query_value  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - key_set_value  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - key_create_sub_key  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - key_enumerate_sub_keys  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - key_notify  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - key_create_link  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - key_wow64_64key  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - key_wow64_32key  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - key_wow64_res  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - windows_view  
      - win-sc:EntityItemWindowsViewType (0..1)  
      - The windows view value from which this OVAL Item was collected. This is used to indicate from which view (32-bit or 64-bit), the associated Item was collected. A value of '32_bit' indicates the Item was collected from the 32-bit view. A value of '64-bit' indicates the Item was collected from the 64-bit view. Omitting this entity removes any assertion about which view the Item was collected from, and therefore it is strongly suggested that this entity be set.  
  
______________
  
.. _service_item:  
  
< service_item >  
---------------------------------------------------------
This item stores information about Windows services that are present on the system.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - service_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The service_name element specifies the name of the service as specified in the Service Control Manager (SCM) database.  
    * - display_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The display_name element specifies the name of the service as specified in tools such as Control Panel->Administrative Tools->Services.  
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      - The description element specifies the description of the service.  
    * - service_type  
      - win-sc:EntityItemServiceTypeType (0..unbounded)  
      - The service_type element specifies the type of the service.  
    * - start_type  
      - win-sc:EntityItemServiceStartTypeType (0..1)  
      - The start_type element specifies when the service should be started.  
    * - current_state  
      - win-sc:EntityItemServiceCurrentStateType (0..1)  
      - The current_state element specifies the current state of the service.  
    * - controls_accepted  
      - win-sc:EntityItemServiceControlsAcceptedType (0..unbounded)  
      - The controls_accepted element specifies the control codes that a service will accept and process.  
    * - start_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The start_name element specifies the account under which the process should run.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the path to the binary of the service.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - The pid element specifies the process ID of the service.  
    * - service_flag  
      - oval-sc:EntityItemBoolType (0..1)  
      - The service_flag element specifies if the service is in a system process that must always run (1) or if the service is in a non-system process or is not running (0). If the service is not running, the pid will be 0. Otherwise, the pid will be non-zero.  
    * - dependencies  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The dependencies element specifies the dependencies of this service on other services.  
  
______________
  
.. _sid_item:  
  
< sid_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - trustee_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This element specifies the trustee name associated with a particular SID. In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - trustee_sid  
      - oval-sc:EntityItemStringType (0..1)  
      - The security identifier (SID) of the specified trustee name.  
    * - trustee_domain  
      - oval-sc:EntityItemStringType (0..1)  
      - The domain of the specified trustee name.  
  
______________
  
.. _sid_sid_item:  
  
< sid_sid_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - trustee_sid  
      - oval-sc:EntityItemStringType (0..1)  
      - The security identifier (SID) of the specified trustee name.  
    * - trustee_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This element specifies the trustee name associated with a particular SID. In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - trustee_domain  
      - oval-sc:EntityItemStringType (0..1)  
      - The domain of the specified trustee name.  
  
______________
  
.. _user_sid_item:  
  
< user_sid_item >  
---------------------------------------------------------
The windows user_sid_item allows the different groups (identified by SID) that a user belongs to be collected.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - user_sid  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the SID of a particular user.  
    * - enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents whether the particular user is enabled or not.  
    * - group_sid  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - A string that represents the SID of a particular group. If the specified user belongs to more than one group, then multiple group_sid elements should exist. If the specified user is not a member of a single group, then a single group_sid element should exist with a status of 'does not exist'. If there is an error determining the groups that the user belongs to, then a single group_sid element should be included with a status of 'error'.  
    * - last_logon  
      - oval-sc:EntityItemIntType (0..1)  
      - The date and time when the last logon occurred. This value is stored as the number of seconds that have elapsed since 00:00:00, January 1, 1970, GMT.  
    * - user  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the name of a particular user. In Windows, user names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, users should be identified in the form: "domain\user name". For local users use: "computer_name\user_name". For built-in accounts on the system, use the user name without a domain.  
    * - group  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - A string that represents the name of a particular group. In Windows, group names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, groups should be identified in the form: "domain\group name". For local groups use: "computer name\group name". For built-in accounts on the system, use the group name without a domain.If the specified user belongs to more than one group, then multiple group elements should exist. If the specified user is not a member of a single group, then a single group element should exist with a status of 'does not exist'. If there is an error determining the groups that the user belongs to, then a single group element should be included with a status of 'error'.  
  
______________
  
.. _userright_item:  
  
< userright_item >  
---------------------------------------------------------
**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - userright  
      - win-sc:EntityItemUserRightType (0..1)  
      - The userright entity holds a string that represents the name of a particular user right/privilege.  
    * - trustee_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The trustee_name entity is the unique name associated with the SID that has been granted the specified user right/privilege. A trustee can be a user, group, or program (such as a Windows service). In Windows, trustee names are case-insensitive. As a result, it is recommended that the case-insensitive operations are used for this entity. In a domain environment, trustee names should be identified in the form: "domain\trustee name". For local trustee names use: "computer name\trustee name". For built-in accounts on the system, use the trustee name without a domain.  
    * - trustee_sid  
      - oval-sc:EntityItemStringType (0..1)  
      - The trustee_sid entity identifies the SID that has been granted the specified user right/privilege.  
  
______________
  
.. _appcmd_item:  
  
< appcmd_item >  
---------------------------------------------------------
**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - identifier_type  
      - win-sc:EntityItemAppCmdIdentifierType (0..1)  
      - The identifier_type defines the identifier type (Apppool, Site, or VDir).  
    * - identifier  
      - oval-sc:EntityItemStringType (0..1)  
      - The identifier defines the location of the found result (application pool name/site name).  
    * - parameter  
      - oval-sc:EntityItemStringType (0..1)  
      - The parameter value defines the location of the setting.  
    * - result  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The value of the collected collected setting.  
  
______________
  
.. _appcmdlistconfig_item:  
  
< appcmdlistconfig_item >  
---------------------------------------------------------
**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - identifier_type  
      - win-sc:EntityItemAppCmdListConfigIdentifierType (0..1)  
      - The identifier_type defines the identifier type (Webserver, Site, or VDir).  
    * - identifier  
      - oval-sc:EntityItemStringType (0..1)  
      - The identifier defines the location of the found result (vdir name or site name). If the identifier_type is set to Webserver, this item element is not populated.  
    * - section  
      - oval-sc:EntityItemStringType (0..1)  
      - The section value defines the section which contains the parameter.  
    * - parameter  
      - oval-sc:EntityItemStringType (0..1)  
      - The parameter value defines the location of the configuration setting.  
    * - result  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The value of the collected setting.  
  
______________
  
.. _wmi57_item:  
  
< wmi57_item >  
---------------------------------------------------------
The wmi57_item outlines information to be checked through Microsoft's WMI interface.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - namespace  
      - oval-sc:EntityItemStringType (0..1)  
      - The WMI namespaces of the specific object.  
    * - wql  
      - oval-sc:EntityItemStringType (0..1)  
      - A WQL query used to identify the object(s) specified. Any valid WQL query is allowed with one exception, all fields must be named. For example SELECT name, age FROM ... is valid, but SELECT * FROM ... is not valid. This is because the record entity supports only named fields.  
    * - result  
      - oval-sc:EntityItemRecordType (0..unbounded)  
      - The result entity holds the results of the specified WQL statement.  
  
.. _EntityItemAuditType:  
  
== EntityItemAuditType ==  
---------------------------------------------------------
The EntityItemAuditType restricts a string value to a specific set of values: AUDIT_NONE, AUDIT_SUCCESS, AUDIT_FAILURE, and AUDIT_SUCCESS_FAILURE. These values describe which audit records should be generated. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemFileTypeType:  
  
== EntityItemFileTypeType ==  
---------------------------------------------------------
The EntityItemFileTypeType restricts a string value to a specific set of values that describe the different types of files. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemFileAttributeType:  
  
== EntityItemFileAttributeType ==  
---------------------------------------------------------
The EntityItemFileAttributeType restricts a string value to a specific set of values that describe the different Windows file attributes. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemNTUserAccountTypeType:  
  
== EntityItemNTUserAccountTypeType ==  
---------------------------------------------------------
The EntityItemNTUserAccountTypeType restricts a string value to a specific set of values that describe the different types of accounts. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - local  
      - | Local accounts are accounts that were created directly on the machine being tested and should be in the form of machinename\username  
    * - domain  
      - | Domain accounts are accounts that were created on a domain controller and should be in the form of domain\username  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemRegistryHiveType:  
  
== EntityItemRegistryHiveType ==  
---------------------------------------------------------
The EntityItemRegistryHiveType restricts a string value to a specific set of values that describe the different registry hives. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemRegistryTypeType:  
  
== EntityItemRegistryTypeType ==  
---------------------------------------------------------
The EntityItemRegistryTypeType defines the different values that are valid for the type entity of a registry item. These values describe the possible types of data stored in a registry key. restricts a string value to a specific set of values that describe the different registry types. The empty string is also allowed as a valid value to support empty emlements associated with error conditions. Please note that the values identified are for the type entity and are not valid values for the datatype attribute. For information about how to encode registry data in OVAL for each of the different types, please visit the registry_item documentation.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemServiceControlsAcceptedType:  
  
== EntityItemServiceControlsAcceptedType ==  
---------------------------------------------------------
The EntityItemServiceAcceptedControlsType complex type defines the different values that are valid for the controls_accepted entity of a service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemServiceCurrentStateType:  
  
== EntityItemServiceCurrentStateType ==  
---------------------------------------------------------
The EntityItemServiceCurrentStateType complex type defines the different values that are valid for the current_state entity of a service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemServiceStartTypeType:  
  
== EntityItemServiceStartTypeType ==  
---------------------------------------------------------
The EntityItemServiceStartTypeType complex type defines the different values that are valid for the start_type entity of a service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemServiceTypeType:  
  
== EntityItemServiceTypeType ==  
---------------------------------------------------------
The EntityItemServiceTypeType complex type defines the different values that are valid for the service_type entity of a service. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemGUIDType:  
  
== EntityItemGUIDType ==  
---------------------------------------------------------
The EntityItemGUIDType restricts a string value to a representation of a GUID, used for module ID. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

**Pattern:** (\{[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}\}){0,}

.. _EntityItemCmdletVerbType:  
  
== EntityItemCmdletVerbType ==  
---------------------------------------------------------
The EntityItemCmdletVerbType restricts a string value to a set of allow cmdlet verbs. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string is also allowed to support empty elements associated with error conditions.  
  
.. _EntityItemAppCmdIdentifierType:  
  
== EntityItemAppCmdIdentifierType ==  
---------------------------------------------------------
The EntityItemAppCmdIdentifierType restricts a string value to a set of allowed appcmd objects.

**Restricts:** oval-sc:EntityItemStringType

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
  
.. _EntityItemAppCmdListConfigIdentifierType:  
  
== EntityItemAppCmdListConfigIdentifierType ==  
---------------------------------------------------------
Restricts a string value to a set of allowed appcmd objects.

**Restricts:** oval-sc:EntityItemStringType

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
  
.. _EntityItemWindowsViewType:  
  
== EntityItemWindowsViewType ==  
---------------------------------------------------------
The EntityItemWindowsViewType restricts a string value to a specific set of values: 32-bit and 64-bit. These values describe the different values possible for the windows view behavior.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - 32_bit  
      - | Indicates the 32_bit windows view.  
    * - 64_bit  
      - | Indicates the 64_bit windows view.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemUserRightType:  
  
== EntityItemUserRightType ==  
---------------------------------------------------------
The EntityItemUserRightType restricts a string value to a specific set of values that describe the different user rights/privileges. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
