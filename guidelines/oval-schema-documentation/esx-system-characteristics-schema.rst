Open Vulnerability and Assessment Language: VMware ESX System characteristics  
=========================================================
* Schema: VMware ESX System characteristics  
* Version: 6.0  
* Release Date: 1/1/2025 09:00:00 AM

The following is a proposal for the schemas for VMware ESX that will support assessment of ESX hosts and Virtual Machines

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`host_acceptancelevel_item`  
* :ref:`host_vib_item`  
* :ref:`host_module_item`  
* :ref:`host_coredump_item`  
* :ref:`host_webserverssl_item`  
* :ref:`host_authentication_item`  
* :ref:`host_account_item`  
* :ref:`host_advancedsetting_item`  
* :ref:`host_service_item`  
* :ref:`host_ntpserver_item`  
* :ref:`host_lockdown_item`  
* :ref:`host_firewallexception_item`  
* :ref:`host_busadapter_item`  
* :ref:`host_vswitchpolicy_item`  
* :ref:`vm_advancedsetting_item`  
* :ref:`vm_device_item`  
* :ref:`vm_harddiskdevice_item`  
* :ref:`host_portgroup_item`  
* :ref:`vds_item`  
* :ref:`vds_portgroup_item`  
  
______________
  
.. _host_acceptancelevel_item:  
  
< host_acceptancelevel_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - acceptance_level  
      - esx-sc:EntityItemAcceptanceLevelType (0..1)  
      - The software acceptance level for the associated ESXi host.  
  
______________
  
.. _host_vib_item:  
  
< host_vib_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vib_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The VIB name  
    * - acceptance_level  
      - esx-sc:EntityItemAcceptanceLevelType (0..1)  
      - The software acceptance level for the associated VIB  
    * - creation_date  
      - oval-sc:EntityItemStringType (0..1)  
      - VIB Creation Date  
    * - vendor  
      - oval-sc:EntityItemStringType (0..1)  
      - VIB Vendor  
    * - version  
      - oval-sc:EntityItemStringType (0..1)  
      - VIB Version  
  
______________
  
.. _host_module_item:  
  
< host_module_item >  
---------------------------------------------------------


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
      - The name of the kernel module  
    * - license  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the license holder for the kernel module.  
    * - module_file  
      - oval-sc:EntityItemStringType (0..1)  
      - The path to the kernel module file.  
    * - version  
      - oval-sc:EntityItemStringType (0..1)  
      - The kernel module version information.  
    * - acceptance_level  
      - esx-sc:EntityItemAcceptanceLevelType (0..1)  
      - The software acceptance level of the kernel module.  
  
______________
  
.. _host_coredump_item:  
  
< host_coredump_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Displays whether or not the ESXi dump collector is enabled for the ESXi host  
    * - host_vnic  
      - oval-sc:EntityItemStringType (0..1)  
      - The ESXi host's configured core dump destination vnic  
    * - network_server_ip  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - The ESXi host's configured core dump destination IP  
    * - network_server_port  
      - oval-sc:EntityItemIntType (0..1)  
      - The ESXi host's configured core dump destination port  
  
______________
  
.. _host_webserverssl_item:  
  
< host_webserverssl_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - certificate_is_valid  
      - oval-sc:EntityItemBoolType (0..1)  
      - Whether or not the ESXi host certificate is valid for current date  
    * - issuer  
      - oval-sc:EntityItemStringType (0..1)  
      - The certificate issuer  
    * - expires  
      - oval-sc:EntityItemStringType (0..1)  
      - The certificate expiration date and time (formatted as a string)  
    * - days_till_expire  
      - oval-sc:EntityItemIntType (0..1)  
      - The number of days before the certificate expires  
  
______________
  
.. _host_authentication_item:  
  
< host_authentication_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - domain  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the domain  
    * - domain_membership_status  
      - esx-sc:EntityItemDomainMembershipStatusType (0..1)  
      - The status of the ESXi host's membership in the domain  
  
______________
  
.. _host_account_item:  
  
< host_account_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - account_name  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - domain  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - shell_access_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - role  
      - oval-sc:EntityItemStringType (0..1)  
      -   
  
______________
  
.. _host_advancedsetting_item:  
  
< host_advancedsetting_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - advanced_setting_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The host_advancedsetting_name element details the name of the VMHost's advanced configuration setting to collect.  
    * - advanced_setting_value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The advanced_setting_value element details the value of the VMHost's advanced configuration setting that was collected.  
  
______________
  
.. _host_service_item:  
  
< host_service_item >  
---------------------------------------------------------


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
      - The service_name element details the name of the VMHost's service that was collected.  
    * - service_label  
      - oval-sc:EntityItemStringType (0..1)  
      - Label  
    * - service_policy  
      - oval-sc:EntityItemStringType (0..1)  
      - Policy  
    * - service_running  
      - oval-sc:EntityItemBoolType (0..1)  
      - Running  
    * - service_required  
      - oval-sc:EntityItemBoolType (0..1)  
      - Required?  
  
______________
  
.. _host_ntpserver_item:  
  
< host_ntpserver_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ntp_server_name  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - NTPServerName, as retrieved from Get-VMHostNtpServer  
  
______________
  
.. _host_lockdown_item:  
  
< host_lockdown_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - lockdown  
      - esx-sc:EntityItemLockdownType (0..1)  
      - Lockdown mode type  
    * - lockdown_user  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The value identifying a user account that is allowed to connect when the ESXi host is in lockdown mode.  
  
______________
  
.. _host_firewallexception_item:  
  
< host_firewallexception_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - firewall_exception_name  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - exception_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - port  
      - oval-sc:EntityItemIntType (0..1)  
      -   
    * - end_port  
      - oval-sc:EntityItemIntType (0..1)  
      -   
    * - direction  
      - esx-sc:EntityItemFirewallDirectionType (0..1)  
      -   
    * - protocol  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - service_name  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - service_running  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - allowed_hosts_all_ip  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
  
______________
  
.. _host_busadapter_item:  
  
< host_busadapter_item >  
---------------------------------------------------------


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
      - Specify the devices of the HBA you want to retrieve.  
    * - busadapter_type  
      - esx-sc:EntityItemBusAdapterType (0..1)  
      - Specify the type of the HBAs you want to retrieve. The valid values are Block, FibreChannel, iSCSI, and ParallelSCSI.  
    * - busadapter_key  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - busadapter_model  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - busadapter_pci  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - busadapter_driver  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - busadapter_bus  
      - oval-sc:EntityItemIntType (0..1)  
      -   
    * - busadapter_status  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - chap_type  
      - oval-sc:EntityItemStringType (0..1)  
      - CHAP Type  
    * - chap_name  
      - oval-sc:EntityItemStringType (0..1)  
      - CHAP Name  
    * - mutual_chap_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Mutual CHAP enabled?  
    * - mutual_chap_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Mutual CHAP Name  
  
______________
  
.. _host_vswitchpolicy_item:  
  
< host_vswitchpolicy_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vswitch_name  
      - oval-sc:EntityItemStringType (0..1)  
      - vSwitch name  
    * - mac_changes  
      - esx-sc:EntityItemAcceptRejectType (0..1)  
      - MAC changes allowed  
    * - promiscuous_mode  
      - esx-sc:EntityItemAcceptRejectType (0..1)  
      - Promiscuous mode allowed  
    * - forged_transmits  
      - esx-sc:EntityItemAcceptRejectType (0..1)  
      - Forged transmits allowed  
  
.. _VMItemBaseType:  
  
== VMItemBaseType ==  
---------------------------------------------------------
Base type for VM-based States

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vm_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the Virtual Machine on the ESXi host for which information is collected.  
  
______________
  
.. _vm_advancedsetting_item:  
  
< vm_advancedsetting_item >  
---------------------------------------------------------


**Extends:** esx-sc:VMItemBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - advanced_setting_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The advanced setting name  
    * - advanced_setting_value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The advanced setting value  
  
.. _VMDeviceItemType:  
  
== VMDeviceItemType ==  
---------------------------------------------------------
Base type for VM Devices

**Extends:** esx-sc:VMItemBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device_type  
      - esx-sc:EntityItemVMDeviceType (0..1)  
      - The device type; one of the values in the enumeration (floppy, cdrom, parallel, etc).  
    * - device_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The Name of the device  
    * - allow_guest_control  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - connected  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - start_connected  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
  
______________
  
.. _vm_device_item:  
  
< vm_device_item >  
---------------------------------------------------------


**Extends:** esx-sc:VMDeviceItemType

______________
  
.. _vm_harddiskdevice_item:  
  
< vm_harddiskdevice_item >  
---------------------------------------------------------


**Extends:** esx-sc:VMDeviceItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - persistence  
      - esx-sc:EntityItemVMDevicePersistenceType (0..1)  
      - The persistence policy (Persistent, NonPersistent, Undoable, IndependentPersistent, IndependentNonPersistent, or Unknown)  
  
______________
  
.. _host_portgroup_item:  
  
< host_portgroup_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - port_group_name  
      - oval-sc:EntityItemStringType (0..1)  
      - PortGroup Name  
    * - virtual_switch_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Virtual Switch Name  
    * - vlan_id  
      - oval-sc:EntityItemIntType (0..1)  
      - VlanID  
  
______________
  
.. _vds_item:  
  
< vds_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vds_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of a vSphere Distributed Switch.  
    * - vlan_mtu_health_check_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - VLAN and MTU Health Check enabled?  
    * - teaming_failover_health_check_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Teaming and Failover Health Check enabled?  
  
______________
  
.. _vds_portgroup_item:  
  
< vds_portgroup_item >  
---------------------------------------------------------


**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vds_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of a vSphere Distributed Switch.  
    * - portgroup_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of a vSphere Distributed Portgroup.  
    * - collector_ip_address  
      - oval-sc:EntityItemIPAddressType (0..1)  
      - Authorized collector IP Address to which Virtual Disributed Switch Netflow traffic is sent  
    * - collector_port  
      - oval-sc:EntityItemIntType (0..1)  
      - Authorized collector Port to which Virtual Disributed Switch Netflow traffic is sent  
    * - override_port_policies_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Override port policies enabled?  
  
.. _EntityItemAcceptanceLevelType:  
  
== EntityItemAcceptanceLevelType ==  
---------------------------------------------------------


**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - VMwareCertified  
      - | VMwareCertified  
    * - VMwareAccepted  
      - | VMwareAccepted  
    * - PartnerSupported  
      - | PartnerSupported  
    * - CommunitySupported  
      - | CommunitySupported  
    * - Unknown  
      - | Unknown  
  
.. _EntityItemLockdownType:  
  
== EntityItemLockdownType ==  
---------------------------------------------------------


**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - disabled  
      - | disabled  
    * - normal  
      - | normal  
    * - strict  
      - | strict  
  
.. _EntityItemFirewallDirectionType:  
  
== EntityItemFirewallDirectionType ==  
---------------------------------------------------------


**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - inbound  
      - | inbound  
    * - outbound  
      - | outbound  
  
.. _EntityItemVMDeviceType:  
  
== EntityItemVMDeviceType ==  
---------------------------------------------------------


**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - floppy  
      - | Floppy Devices  
    * - cdrom  
      - | CDROM Devices  
    * - parallel_port  
      - | Parallel Ports  
    * - serial_port  
      - | Serial Ports  
    * - usb  
      - | USB Devices  
    * - hard_disk  
      - | Hard Disk Drives  
  
.. _EntityItemVMDevicePersistenceType:  
  
== EntityItemVMDevicePersistenceType ==  
---------------------------------------------------------


**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Persistent  
      - | Persistent  
    * - NonPersistent  
      - | NonPersistent  
    * - Undoable  
      - | Undoable  
    * - IndependentPersistent  
      - | IndependentPersistent  
    * - IndependentNonPersistent  
      - | IndependentNonPersistent  
    * - Append  
      - | Append  
  
.. _EntityItemBusAdapterType:  
  
== EntityItemBusAdapterType ==  
---------------------------------------------------------


**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Block  
      - | Block  
    * - FibreChannel  
      - | FibreChannel  
    * - IScsi  
      - | iSCSI  
    * - ParallelScsi  
      - | Parallel SCSI  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityItemAcceptRejectType:  
  
== EntityItemAcceptRejectType ==  
---------------------------------------------------------


**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Accept  
      - | Accept Policy Changes  
    * - Reject  
      - | Reject Policy Changes  
  
.. _EntityItemDomainMembershipStatusType:  
  
== EntityItemDomainMembershipStatusType ==  
---------------------------------------------------------


**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ClientTrustBroken  
      - | ClientTrustBroken  
    * - InconsistentTrust  
      - | InconsistentTrust  
    * - NoServers  
      - | NoServers  
    * - Ok  
      - | Ok  
    * - OtherProblem  
      - | OtherProblem  
    * - ServerTrustBroken  
      - | ServerTrustBroken  
    * - Unknown  
      - | Unknown  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
