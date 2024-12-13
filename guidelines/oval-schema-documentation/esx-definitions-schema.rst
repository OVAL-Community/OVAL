Open Vulnerability and Assessment Language: Vmware ESX Definitions  
=========================================================
* Schema: Vmware ESX Definitions  
* Version: 6.0  
* Release Date: 1/1/2025 09:00:00 AM

The following is a proposal for the esx-def tests and esx-sc: items that will support assessments of VMware ESXi hosts and Virtual Machines.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`host_acceptancelevel_test`  
* :ref:`host_vib_test`  
* :ref:`host_module_test`  
* :ref:`host_coredump_test`  
* :ref:`host_webserverssl_test`  
* :ref:`host_authentication_test`  
* :ref:`host_account_test`  
* :ref:`host_advancedsetting_test`  
* :ref:`host_service_test`  
* :ref:`host_ntpserver_test`  
* :ref:`host_lockdown_test`  
* :ref:`host_firewallexception_test`  
* :ref:`host_busadapter_test`  
* :ref:`host_vswitchpolicy_test`  
* :ref:`vm_advancedsetting_test`  
* :ref:`vm_device_test`  
* :ref:`vm_harddiskdevice_test`  
* :ref:`host_portgroup_test`  
* :ref:`vds_test`  
* :ref:`vds_portgroup_test`  
  
______________
  
.. _host_acceptancelevel_test:  
  
< host_acceptancelevel_test >  
---------------------------------------------------------
The host_acceptancelevel_test is used to determine if the software installed for the VMHost represents untested code. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_acceptancelevel_object and the optional state element specifies the data to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_acceptancelevel_object:  
  
< host_acceptancelevel_object >  
---------------------------------------------------------
The host_acceptancelevel_object element is used by the host_acceptancelevel_test to define the object to be evaluated. Each object extends the standard ObjecType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_acceptancelevel_state:  
  
< host_acceptancelevel_state >  
---------------------------------------------------------
The host_acceptancelevel_state element defines the information that can be used to evaluate the specified ESXi hosts acceptance level information.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - acceptance_level  
      - esx-def:EntityStateAcceptanceLevelType (0..1)  
      - The software acceptance level for the associated ESXi host.  
  
______________
  
.. _host_vib_test:  
  
< host_vib_test >  
---------------------------------------------------------
The host_vib_test is used to test various properties of software installed for a vSphere Installation Bundle (VIB). A VIB is a collection of files that are packaged into an archive. The VIB contains a signature file that is used to verify the level of trust. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_vib_object and the optional state element specifies the data to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_vib_object:  
  
< host_vib_object >  
---------------------------------------------------------
The host_vib_object element is used by the host_vib_test to define the object to be evaluated. Each object extends the standard ObjecType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vib_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the VIB to collect.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_vib_state:  
  
< host_vib_state >  
---------------------------------------------------------
The host_vib_state element defines the information that can be used to evaluate the specified VIB information.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vib_name  
      - oval-def:EntityStateStringType (0..1)  
      - The VIB name  
    * - acceptance_level  
      - esx-def:EntityStateAcceptanceLevelType (0..1)  
      - The software acceptance level for the associated VIB  
    * - creation_date  
      - oval-def:EntityStateStringType (0..1)  
      - VIB Creation Date  
    * - vendor  
      - oval-def:EntityStateStringType (0..1)  
      - VIB Vendor  
    * - version  
      - oval-def:EntityStateStringType (0..1)  
      - VIB Version  
  
______________
  
.. _host_module_test:  
  
< host_module_test >  
---------------------------------------------------------
The host_modules_test is used to determine if any ESXi host's loaded kernel modules lack valid digital signatures. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_modules_object and the optional state element specifies the data to check.

VMware provides digital signatures for kernel modules. By default the ESXi host does not permit loading of kernel modules that lack a valid digital signature. However, this behavior can be overridden allowing unauthorized kernel modules to be loaded. Untested or malicious kernel modules loaded on the ESXi host can put the host at risk for instability and/or exploitation.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_module_object:  
  
< host_module_object >  
---------------------------------------------------------
The host_module_object element is used by the host_module_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The name of the kernel module to collect.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_module_state:  
  
< host_module_state >  
---------------------------------------------------------
The host_module_state element defines the information that can be used to evaluate the specified ESXi hosts loaded kernel module information.

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
      - The name of the kernel module  
    * - license  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the license holder for the kernel module.  
    * - module_file  
      - oval-def:EntityStateStringType (0..1)  
      - The path to the kernel module file.  
    * - version  
      - oval-def:EntityStateVersionType (0..1)  
      - The kernel module version information.  
    * - acceptance_level  
      - esx-def:EntityStateAcceptanceLevelType (0..1)  
      - The software acceptance level of the kernel module.  
  
______________
  
.. _host_coredump_test:  
  
< host_coredump_test >  
---------------------------------------------------------
The host_coredump_test is used to validate the configuration of a centralized location to collect ESXi host core dumps. The VMware vSphere Network Dump Collector service allows for collecting diagnostic information from a host that experiences a critical fault. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_coredump_object and the optional state element specifies the data to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_coredump_object:  
  
< host_coredump_object >  
---------------------------------------------------------
The host_coredump_object element is used by the host_coredump_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_coredump_state:  
  
< host_coredump_state >  
---------------------------------------------------------
The host_coredump_state element defines the information that can be used to evaluate the specified ESXi hosts core dump information.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Displays whether or not the ESXi dump collector is enabled for the ESXi host  
    * - host_vnic  
      - oval-def:EntityStateStringType (0..1)  
      - The ESXi host's configured core dump destination vnic  
    * - network_server_ip  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - The ESXi host's configured core dump destination IP  
    * - network_server_port  
      - oval-def:EntityStateIntType (0..1)  
      - The ESXi host's configured core dump destination port  
  
______________
  
.. _host_webserverssl_test:  
  
< host_webserverssl_test >  
---------------------------------------------------------
The host_webserverssl_test is used to determine if any expired or revoked SSL certificates exist on the ESXi host. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_webserverssl_object and the optional state element specifies the data to check.

Leaving expired or revoked certificates on your vCenter Server system can compromise your environment. By default, each ESXi host does not have Certificate Revocation Lists (CRL) checking available. Revoked certificates must be checked and removed manually. Replacing certificates will avoid having users get used to clicking through browser warnings. The warning might be an indication of a man-in-the-middle attack, and only inspection of the certificate and thumbprint can guard against such attacks.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_webserverssl_object:  
  
< host_webserverssl_object >  
---------------------------------------------------------
The host_webserverssl_object element is used by the host_webserverssl_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_webserverssl_state:  
  
< host_webserverssl_state >  
---------------------------------------------------------
The host_webserverssl_state element defines the information that can be used to evaluate the specified ESXi hosts web server ssl certificate information.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - certificate_is_valid  
      - oval-def:EntityStateBoolType (0..1)  
      - Whether or not the ESXi host certificate is valid for current date  
    * - issuer  
      - oval-def:EntityStateStringType (0..1)  
      - The certificate issuer  
    * - expires  
      - oval-def:EntityStateStringType (0..1)  
      - The certificate expiration date and time (formatted as a string)  
    * - days_till_expire  
      - oval-def:EntityStateIntType (0..1)  
      - The number of days before the certificate expires  
  
______________
  
.. _host_authentication_test:  
  
< host_authentication_test >  
---------------------------------------------------------
The host_authentication_test is used to determine if ESXi is configured to use a directory service such as Active Directory to manage users and groups. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_authentication_object and the optional state element specifies the data to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_authentication_object:  
  
< host_authentication_object >  
---------------------------------------------------------
The host_authentication_object element is used by the host_authentication_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_authentication_state:  
  
< host_authentication_state >  
---------------------------------------------------------
The host_authentication_state element defines the information that can be used to evaluate the specified ESXi hosts domain and domain membership information.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - domain  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the domain  
    * - domain_membership_status  
      - esx-def:EntityStateDomainMembershipStatusType (0..1)  
      - The status of the ESXi host's membership in the domain  
  
______________
  
.. _host_account_test:  
  
< host_account_test >  
---------------------------------------------------------
The host_account_test is used to determine certain aspects of the user accounts on an ESXi host. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_account_object and the optional state element specifies the data to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_account_object:  
  
< host_account_object >  
---------------------------------------------------------
The host_account_object element is used by the host_account_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - account_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The account_name element details the name of the VMHost's user account to collect.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_account_state:  
  
< host_account_state >  
---------------------------------------------------------
The host_account_state element defines the information that can be used to evaluate the specified ESXi host user account information.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - account_name  
      - oval-def:EntityStateStringType (0..1)  
      - The user account name on the ESXi host  
    * - domain  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the domain to which the user account belongs  
    * - description  
      - oval-def:EntityStateStringType (0..1)  
      - Descriptive information about the user account  
    * - shell_access_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - true if ESXi shell access is enabled for the user account; false otherwise  
    * - role  
      - oval-def:EntityStateStringType (0..1)  
      - the role granted to the host account  
  
______________
  
.. _host_advancedsetting_test:  
  
< host_advancedsetting_test >  
---------------------------------------------------------
The host_advancedsetting_test is used to collect advanced configuration information from an ESXi host. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_advancedconfig_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_advancedsetting_object:  
  
< host_advancedsetting_object >  
---------------------------------------------------------
The host_advancedsetting_object element is used by the host_advancedconfig_test to define those objects to be evaluated based on a specified state.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - advanced_setting_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The host_advancedsetting_name element details the name of the VMHost's advanced configuration setting to collect.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_advancedsetting_state:  
  
< host_advancedsetting_state >  
---------------------------------------------------------
The host_advancedsetting_state details the values which may be applied to a given advanced configuration item.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - advanced_setting_name  
      - oval-def:EntityStateStringType (0..1)  
      - The advanced_setting_name element details the name of the Host's advanced configuration setting to collect.  
    * - advanced_setting_value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The advanced_setting_value element details the value of the Host's advanced configuration setting that was collected.  
  
______________
  
.. _host_service_test:  
  
< host_service_test >  
---------------------------------------------------------
The host_service_test is used to collect service-related configuration information from an ESXi host. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_service_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_service_object:  
  
< host_service_object >  
---------------------------------------------------------
The host_service_object element is used by the host_service_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - The service_name element details the name of the Host's service setting to collect.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_service_state:  
  
< host_service_state >  
---------------------------------------------------------
The host_service_state details the values which may be applied to a given ESXi host's service item.

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
      - The host_service_name element details the name of the VMHost's service setting to collect.  
    * - service_label  
      - oval-def:EntityStateStringType (0..1)  
      - Descriptive information regarding the service  
    * - service_policy  
      - oval-def:EntityStateStringType (0..1)  
      - The activation policy for the host service.  
    * - service_running  
      - oval-def:EntityStateBoolType (0..1)  
      - true if the service is currently running; false otherwise  
    * - service_required  
      - oval-def:EntityStateBoolType (0..1)  
      - true if the service is required to be running on the host; false otherwise  
  
______________
  
.. _host_ntpserver_test:  
  
< host_ntpserver_test >  
---------------------------------------------------------
The host_ntpserver_test is used to collect configuration information for any NTP servers added to an ESXi host. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_ntpserver_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_ntpserver_object:  
  
< host_ntpserver_object >  
---------------------------------------------------------
The host_ntpserver_object element is used by the host_ntpserver_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_ntpserver_state:  
  
< host_ntpserver_state >  
---------------------------------------------------------
The host_ntpserver_state details the values which may be applied to a given ESXi host's NTP Server configuration.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ntp_server_name  
      - oval-def:EntityStateStringType (0..1)  
      - The domain name or the IP address of the NTP server(s) added to the host  
  
______________
  
.. _host_lockdown_test:  
  
< host_lockdown_test >  
---------------------------------------------------------
The host_lockdown_test is used to collect lockdown mode configuration information for an ESXi host. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_lockdown_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_lockdown_object:  
  
< host_lockdown_object >  
---------------------------------------------------------
The host_lockdown_object element is used by the host_lockdown_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_lockdown_state:  
  
< host_lockdown_state >  
---------------------------------------------------------
The host_lockdown_state details the values which may be applied to a given ESXi host's Lockdown mode configuration.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - lockdown  
      - esx-def:EntityStateLockdownType (0..1)  
      - If lockdown mode is active, all management must be done from vCenter to ensure proper permissions and roles are being applied.  
    * - lockdown_user  
      - oval-def:EntityStateStringType (0..1)  
      - The value identifying a user account that is allowed to connect when the ESXi host is in lockdown mode.  
  
______________
  
.. _host_firewallexception_test:  
  
< host_firewallexception_test >  
---------------------------------------------------------
The host_firewallexception_test is used to collect ESXi firewall configuration information for an ESXi host. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_firewallexception_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_firewallexception_object:  
  
< host_firewallexception_object >  
---------------------------------------------------------
The host_firewallexception_object element is used by the host_firewallexception_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - firewall_exception_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Firewall exception name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_firewallexception_state:  
  
< host_firewallexception_state >  
---------------------------------------------------------
The host_firewallexception_state details the values which may be applied to a given ESXi host's firewall configuration.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - firewall_exception_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the firewall exception  
    * - exception_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Whether or not the exception is enabled  
    * - port  
      - oval-def:EntityStateIntType (0..1)  
      - The port number  
    * - end_port  
      - oval-def:EntityStateIntType (0..1)  
      - For a port range, the ending port number  
    * - direction  
      - esx-def:EntityStateFirewallDirectionType (0..1)  
      - The port direction  
    * - protocol  
      - oval-def:EntityStateStringType (0..1)  
      - The protocols included in the firewall exception  
    * - service_name  
      - oval-def:EntityStateStringType (0..1)  
      - The service associated with this firewall exception  
    * - service_running  
      - oval-def:EntityStateBoolType (0..1)  
      - If the value is true, the specified firewall exceptions are enabled. If false, the firewall exceptions are disabled.  
    * - allowed_hosts_all_ip  
      - oval-def:EntityStateBoolType (0..1)  
      - If the value is true, the specified firewall exceptions are valid for all ip addresses.  
  
______________
  
.. _host_busadapter_test:  
  
< host_busadapter_test >  
---------------------------------------------------------
The host_busadapter_test is used to collect information about ESXi host bus adapters. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_busadapter_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_busadapter_object:  
  
< host_busadapter_object >  
---------------------------------------------------------
The host_busadapter_object element is used by the host_busadapter_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - busadapter_type  
      - esx-def:EntityObjectBusAdapterType (1..1)  
      - Specify the type of the HBAs you want to retrieve. The valid values are Block, FibreChannel, iSCSI, and ParallelSCSI.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_busadapter_state:  
  
< host_busadapter_state >  
---------------------------------------------------------
The host_busadapter_state details the values which may be applied to a given ESXi host's bus adapters.

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
      -   
    * - busadapter_type  
      - esx-def:EntityStateBusAdapterType (0..1)  
      -   
    * - busadapter_key  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - busadapter_model  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - busadapter_pci  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - busadapter_driver  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - busadapter_bus  
      - oval-def:EntityStateIntType (0..1)  
      -   
    * - busadapter_status  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - chap_type  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - chap_name  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - mutual_chap_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - mutual_chap_name  
      - oval-def:EntityStateStringType (0..1)  
      -   
  
______________
  
.. _host_vswitchpolicy_test:  
  
< host_vswitchpolicy_test >  
---------------------------------------------------------
The host_vswitch_policy_test is used to collect information about various vSwitch policies on ESXi host vSwitches. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_vswitch_policy_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_vswitchpolicy_object:  
  
< host_vswitchpolicy_object >  
---------------------------------------------------------
The host_vswitch_policy_object element is used by the host_vswitch_policy_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vswitch_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Specify the names of the virtual switches you want to retrieve.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_vswitchpolicy_state:  
  
< host_vswitchpolicy_state >  
---------------------------------------------------------
The host_vswitch_policy_state details the values which may be applied to the properties of an ESXi host's virtual switches.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vswitch_name  
      - oval-def:EntityStateStringType (0..1)  
      - Specify the names of the virtual switches you want to retrieve.  
    * - mac_changes  
      - esx-def:EntityStateAcceptRejectType (0..1)  
      - Get the vSwitch MAC Address Change policy for each vSwitch.  
    * - promiscuous_mode  
      - esx-def:EntityStateAcceptRejectType (0..1)  
      - Get the vSwitch Promiscuous Mode policy for each vSwitch.  
    * - forged_transmits  
      - esx-def:EntityStateAcceptRejectType (0..1)  
      - Get the vSwitch Forged Transmits policy for each vSwitch  
  
.. _VMObjectBaseType:  
  
== VMObjectBaseType ==  
---------------------------------------------------------
Base type for VM-based Objects

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vm_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the Virtual Machine on the ESXi host for which to collect the device settings.  
  
.. _VMStateBaseType:  
  
== VMStateBaseType ==  
---------------------------------------------------------
Base type for VM-based States

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vm_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the Virtual Machine on the ESXi host for which information is collected.  
  
______________
  
.. _vm_advancedsetting_test:  
  
< vm_advancedsetting_test >  
---------------------------------------------------------
The vm_advancedsetting_test is used to collect information about various virtual machine settings on an ESXi host. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a vm_advancedsetting_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _vm_advancedsetting_object:  
  
< vm_advancedsetting_object >  
---------------------------------------------------------
The vm_advancedsetting_object element is used by the vm_advancedsetting_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** esx-def:VMObjectBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - advanced_setting_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the advanced setting to be collected  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _vm_advancedsetting_state:  
  
< vm_advancedsetting_state >  
---------------------------------------------------------
The vm_advancedsetting_state details the values which may be applied to the properties of an ESXi host's virtual machines.

**Extends:** esx-def:VMStateBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - advanced_setting_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the advanced setting to be collected  
    * - advanced_setting_value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The advanced setting value  
  
.. _VMDeviceStateType:  
  
== VMDeviceStateType ==  
---------------------------------------------------------
Base type for VM Devices

**Extends:** esx-def:VMStateBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device_type  
      - esx-def:EntityStateVMDeviceType (0..1)  
      - The device type; one of the values in the enumeration (floppy, cdrom, parallel, etc).  
    * - device_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the device  
    * - allow_guest_control  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - connected  
      - oval-def:EntityStateBoolType (0..1)  
      -   
    * - start_connected  
      - oval-def:EntityStateBoolType (0..1)  
      -   
  
______________
  
.. _vm_device_test:  
  
< vm_device_test >  
---------------------------------------------------------
The vm_device_test is used to collect information about various virtual machine device settings on an ESXi host. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a vm_device_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _vm_device_object:  
  
< vm_device_object >  
---------------------------------------------------------
The vm_device_object element is used by the vm_device_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** esx-def:VMObjectBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device_type  
      - esx-def:EntityObjectVMDeviceType (1..1)  
      - The device type; one of the values in the enumeration (floppy, cdrom, parallel, etc).  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _vm_device_state:  
  
< vm_device_state >  
---------------------------------------------------------
The vm_device_state details the values which may be applied to the properties of devices attached to an ESXi host's virtual machines.

**Extends:** esx-def:VMDeviceStateType

______________
  
.. _vm_harddiskdevice_test:  
  
< vm_harddiskdevice_test >  
---------------------------------------------------------
The vm_harddisk_device_test is used to collect information about hard disk device settings on an ESXi host. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a vm_harddisk_device_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _vm_harddiskdevice_object:  
  
< vm_harddiskdevice_object >  
---------------------------------------------------------
The vm_harddisk_device_object element is used by the vm_harddisk_device_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** esx-def:VMObjectBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _vm_harddiskdevice_state:  
  
< vm_harddiskdevice_state >  
---------------------------------------------------------
The vm_harddisk_device_state details the values which may be applied to the properties of hard disk devices attached to an ESXi host's virtual machines.

**Extends:** esx-def:VMDeviceStateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - persistence  
      - esx-def:EntityStateVMDevicePersistenceType (0..1)  
      - The persistence policy (Persistent, NonPersistent, Undoable, IndependentPersistent, IndependentNonPersistent, or Unknown  
  
______________
  
.. _host_portgroup_test:  
  
< host_portgroup_test >  
---------------------------------------------------------
The host_portgroup_test is used to retrieve the available port groups of hosts, virtual machines, and virtual switches. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a host_portgroup_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _host_portgroup_object:  
  
< host_portgroup_object >  
---------------------------------------------------------
The host_portgroup_object element is used by the host_portgroup_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - port_group_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Specify the names of the port groups you want to retrieve.  
    * - virtual_switch_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Specify the virtual switches for which you want to retrieve their port groups.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _host_portgroup_state:  
  
< host_portgroup_state >  
---------------------------------------------------------
The host_portgroup_state details the values which may be applied to the port groups of hosts, virtual machines, and virtual switches.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - port_group_name  
      - oval-def:EntityStateStringType (0..1)  
      - The names of the port groups you want to retrieve  
    * - virtual_switch_name  
      - oval-def:EntityStateStringType (0..1)  
      - The virtual switches for which you want to retrieve their port groups.  
    * - vlan_id  
      - oval-def:EntityStateIntType (0..1)  
      - The ID of the VLan  
  
______________
  
.. _vds_test:  
  
< vds_test >  
---------------------------------------------------------
This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a vds_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _vds_object:  
  
< vds_object >  
---------------------------------------------------------
The vds_object element is used by the vds_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vds_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a vSphere Distributed Switch  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _vds_state:  
  
< vds_state >  
---------------------------------------------------------
The vds_state details the values which may be applied to vSphere Distributed Switch.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vds_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of a vSphere Distributed Switch  
    * - vlan_mtu_health_check_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - VLAN and MTU Health Check enabled?  
    * - teaming_failover_health_check_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Teaming and Failover Health Check enabled?  
  
______________
  
.. _vds_portgroup_test:  
  
< vds_portgroup_test >  
---------------------------------------------------------
This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a vds_portgroup_object and the optional state element specifies the metadata to check.

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
  
Example  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  
______________
XML

.. _vds_portgroup_object:  
  
< vds_portgroup_object >  
---------------------------------------------------------
The vds_portgroup_object element is used by the vds_portgroup_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vds_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a vSphere Distributed Switch  
    * - portgroup_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a vSphere Distributed port group  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _vds_portgroup_state:  
  
< vds_portgroup_state >  
---------------------------------------------------------
The vds_portgroup_state details the values which may be applied to vSphere Distributed Switch portgroup.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - vds_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of a vSphere Distributed Switch  
    * - portgroup_name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of a vSphere Distributed port group  
    * - collector_ip_address  
      - oval-def:EntityStateIPAddressType (0..1)  
      - Authorized collector IP Address to which Virtual Disributed Switch Netflow traffic is sent  
    * - collector_port  
      - oval-def:EntityStateIntType (0..1)  
      - Authorized collector Port to which Virtual Disributed Switch Netflow traffic is sent  
    * - override_port_policies_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Port-level configuration overrides enabled?  
  
.. _EntityStateAcceptanceLevelType:  
  
== EntityStateAcceptanceLevelType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - VMwareCertified  
      - | Created, tested and signed by VMware  
    * - VMwareAccepted  
      - | Created by a VMware partner but tested and signed by VMware  
    * - PartnerSupported  
      - | Created, tested and signed by a certified VMware partner  
    * - CommunitySupported  
      - | Not been tested by VMware or a VMware partner  
    * - Unknown  
      - | Unknown  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateFirewallDirectionType:  
  
== EntityStateFirewallDirectionType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - inbound  
      - | inbound  
    * - outbound  
      - | outbound  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateLockdownType:  
  
== EntityStateLockdownType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityStateStringType

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
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectVMDeviceType:  
  
== EntityObjectVMDeviceType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityObjectStringType

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
  
.. _EntityStateVMDeviceType:  
  
== EntityStateVMDeviceType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityStateStringType

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
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateVMDevicePersistenceType:  
  
== EntityStateVMDevicePersistenceType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityStateStringType

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
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectBusAdapterType:  
  
== EntityObjectBusAdapterType ==  
---------------------------------------------------------
The EntityObjectBusAdapterType restricts a string value to a specific set of values: block, fibrechannel, iscsi, and parallelscsi. These values describe the different host bus adapter types on an ESXi server. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityObjectStringType

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
  
.. _EntityStateBusAdapterType:  
  
== EntityStateBusAdapterType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityStateStringType

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
  
.. _EntityStateAcceptRejectType:  
  
== EntityStateAcceptRejectType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Accept  
      - | Accept Policy Changes  
    * - Reject  
      - | Reject Policy Changes  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectDomainMembershipStatusType:  
  
== EntityObjectDomainMembershipStatusType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityObjectStringType

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
  
.. _EntityStateDomainMembershipStatusType:  
  
== EntityStateDomainMembershipStatusType ==  
---------------------------------------------------------


**Restricts:** oval-def:EntityStateStringType

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
  
