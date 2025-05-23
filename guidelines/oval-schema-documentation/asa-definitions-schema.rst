Open Vulnerability and Assessment Language: Cisco ASA Definition  
=========================================================
* Schema: Cisco ASA Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Cisco ASA specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Thanks to Omar Santos and Panos Kampanakis of Cisco for providing these tests.

Test Listing  
---------------------------------------------------------
* :ref:`acl_test` (Deprecated)  
* :ref:`class_map_test` (Deprecated)  
* :ref:`interface_test` (Deprecated)  
* :ref:`line_test`  
* :ref:`policy_map_test` (Deprecated)  
* :ref:`service_policy_test` (Deprecated)  
* :ref:`snmp_host_test` (Deprecated)  
* :ref:`snmp_user_test` (Deprecated)  
* :ref:`snmp_group_test` (Deprecated)  
* :ref:`tcp_map_test` (Deprecated)  
* :ref:`version_test`  
  
______________
  
.. _acl_test:  
  
< acl_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The acl test is used to check the properties of specific output lines from an ACL configuration.

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
  
.. _acl_object:  
  
< acl_object >  
---------------------------------------------------------
The acl_object element is used by an acl_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An acl object consists of a an acl name and an IP version entity that is the name and the IP protocol version of the access-list to be tested.

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
      - The name of the ACL.  
    * - ip_version  
      - asa-def:EntityObjectAccessListIPVersionType (1..1)  
      - The IP version of the ACL.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _acl_state:  
  
< acl_state >  
---------------------------------------------------------
The acl_state element defines the different information that can be used to evaluate the result of a specific ACL configuration. This includes the name of ths ACL and the corresponding config lines. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The name of the ACL.  
    * - ip_version  
      - asa-def:EntityStateAccessListIPVersionType (0..1)  
      - The IP version of the ACL (i.e. IPv4 or IPv6 or both for UACLs).  
    * - use  
      - asa-def:EntityStateAccessListUseType (0..1)  
      - The feature where the ACL is used.  
    * - used_in  
      - oval-def:EntityStateStringType (0..1)  
      - The name of where the ACL is used. For example if use is 'INTERFACE', use_in will be the name of the interface.  
    * - interface_direction  
      - asa-def:EntityStateAccessListInterfaceDirectionType (0..1)  
      - The direction the ACL is applied by using the access-group command. Inbound access lists apply to traffic as it enters an interface.  
    * - acl_config_lines  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned with all config lines of the ACL.  
    * - config_line  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned with one ACL config line at a time.  
  
______________
  
.. _class_map_test:  
  
< class_map_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The class_map test is used to check the properties of specific output lines from an MPF class-map configuration.

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
  
.. _class_map_object:  
  
< class_map_object >  
---------------------------------------------------------
The class_map_object element is used by an class_map test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A class_map object consists of a name entity that is the name of the ASA 'class-map' configuration to be tested.

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
      - The MPF class-map name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _class_map_state:  
  
< class_map_state >  
---------------------------------------------------------
The class_map_state element defines the different information that can be used to evaluate the result of a specific 'class-map' ASA command. This includes the name, the type, the inspection type, the match type, the match commands, the policy-map or class-map it is used and the action in the policy-map. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The name of the class-map.  
    * - type  
      - asa-def:EntityStateClassMapType (0..1)  
      - The type of the 'class-map nameX type' command.  
    * - type_inspect  
      - asa-def:EntityStateInspectionType (0..1)  
      - The inspection type of the class-map ('class-map nameX type inspect').  
    * - match_all_any  
      - asa-def:EntityStateMatchType (0..1)  
      - The 'match-all' or 'match-any' type of the class-map. ASA defaults to 'match-any'.  
    * - match  
      - oval-def:EntityStateStringType (0..1)  
      - The 'match' commands in the class-map.  
    * - used_in_class_map  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the class-map (for nested class-maps) that this class-map is used in.  
    * - used_in_policy_map  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the policy-map that this class-map is used in.  
    * - policy_map_action  
      - oval-def:EntityStateStringType (0..1)  
      - The command that identifies the action for the class. For example that could be 'inspect protocolX', 'drop' or 'police 1000' or 'set connection advanced-options tcpmapX'.  
  
______________
  
.. _interface_test:  
  
< interface_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The interface test is used to check for the existence of a particular interface on the Cisco ASA device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a interface_object and the optional state element specifies the data to check.

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
The interface_object element is used by an interface_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An interface_object consists of a name entity that is the name of the ASA interface to be tested.

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
      - The interface name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _interface_state:  
  
< interface_state >  
---------------------------------------------------------
The interface_state element defines the different information that can be used to evaluate the result of a specific ASA interface. This includes the name, status, and address information about the interface. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The interface name.  
    * - proxy_arp  
      - oval-def:EntityStateBoolType (0..1)  
      - Proxy arp enabled on the interface. The default is true.  
    * - shutdown  
      - oval-def:EntityStateBoolType (0..1)  
      - Interface is shut down.  
    * - hardware_addr  
      - oval-def:EntityStateStringType (0..1)  
      - The interface hardware (MAC) address.  
    * - ipv4_address  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - The interface IPv4 address and mask. This element should only allow 'ipv4_address' of the oval:SimpleDatatypeEnumeration.  
    * - ipv6_address  
      - oval-def:EntityStateIPAddressStringType (0..1)  
      - The interface IPv6 address and mask. This element should only allow 'ipv6_address' of the oval:SimpleDatatypeEnumeration.  
    * - ipv4_access_list  
      - oval-def:EntityStateStringType (0..1)  
      - The ingress or egress IPv4 ACL name applied on the interface.  
    * - ipv6_access_list  
      - oval-def:EntityStateStringType (0..1)  
      - The ingress or egress IPv6 ACL name applied on the interface.  
    * - ipv4_v6_access_list  
      - oval-def:EntityStateStringType (0..1)  
      - The ingress or egress UACL name applied on the interface.  
    * - crypto_map  
      - oval-def:EntityStateStringType (0..1)  
      - The crypto map name applied to the interface.  
    * - ipv4_urpf_command  
      - oval-def:EntityStateStringType (0..1)  
      - The IPv4 uRPF command under the interface.  
    * - ipv6_urpf_command  
      - oval-def:EntityStateStringType (0..1)  
      - The IPv6 uRPF command under the interface.  
    * - urpf_command (Deprecated)  
      - oval-def:EntityStateStringType (0..1)  
      - The uRPF command under the interface.  
  
______________
  
.. _line_test:  
  
< line_test >  
---------------------------------------------------------
The line_test is used to check the properties of specific output lines from a SHOW command, such as SHOW RUNNING-CONFIG. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a line_object and the optional state element specifies the data to check.

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
  
.. _line_object:  
  
< line_object >  
---------------------------------------------------------
The line_object element is used by a line_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A line object consists of a show_subcommand entity that is the name of a SHOW sub-command to be tested.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - show_subcommand  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a SHOW sub-command.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _line_state:  
  
< line_state >  
---------------------------------------------------------
The line_state element defines the different information that can be used to evaluate the result of a specific SHOW sub-command. This includes the name of ths sub-command and the corresponding config line. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - show_subcommand  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the SHOW sub-command.  
    * - config_line  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned from by the specified SHOW sub-command.  
  
______________
  
.. _policy_map_test:  
  
< policy_map_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The policy_map test is used to check the properties of specific output lines from an policy-map ASA configuration.

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
  
.. _policy_map_object:  
  
< policy_map_object >  
---------------------------------------------------------
The policy_map_object element is used by an policy_map test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A policy_map object consists of a name entity that is the name of the ASA 'policy-map' configuration to be tested.

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
      - The MPF policy-map name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _policy_map_state:  
  
< policy_map_state >  
---------------------------------------------------------
The policy_map_state element defines the different information that can be used to evaluate the result of a 'policy-map' ASA configuration. This includes the policy-map name, the inspection type, the paremeters, the match and action commands, the policy-map it is used in and the service-policy that applies it. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The policy-map name.  
    * - type_inspect  
      - asa-def:EntityStateInspectionType (0..1)  
      - The inspection type of the class-map.  
    * - parameters  
      - oval-def:EntityStateStringType (0..1)  
      - The parameter commands of the policy-map.  
    * - match_action  
      - oval-def:EntityStateStringType (0..1)  
      - The in-line match command and the action in the policy-map seperated by delimeter '_-_'. For example an http inspect policy-map could have 'match body regex regexnameX' and the action be 'drop'. Then this element would be 'body regex regexnameX_-_drop'.  
    * - used_in  
      - oval-def:EntityStateStringType (0..1)  
      - The name of policy-map that includes the policy-map('policy-map type inspect' in this case) or the service-policy that applies the policy-map (non 'type inspect' in this case). For example, the former could be when a http inspection policy-map policymapnameX is used in a policy-map policymapnameY as its 'inspect http policymapnameX' command. The latter could be when policymapnameY is applied globally with 'service-policy policymapnameY global'. There is no chance where a policy-map can be used in both a policy-map and a service policy at the same time.  
  
______________
  
.. _service_policy_test:  
  
< service_policy_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The service_policy test is used to check the properties of specific output lines from an MPF service-policy configuration.

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
  
.. _service_policy_object:  
  
< service_policy_object >  
---------------------------------------------------------
The service_policy_object element is used by an service_policy test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A service_policy object consists of a name entity that is the name of the ASA 'service-policy' configurate to be tested.

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
      - The MPF service-policy name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _service_policy_state:  
  
< service_policy_state >  
---------------------------------------------------------
The service_policy_state element defines the different information that can be used to evaluate service-policy ASA configuration. This includes the service-policy name, where it is applied and the interface it is applied (if applicable). Please refer to the individual elements in the schema for more details about what each represents.

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
      - The service-policy name.  
    * - applied  
      - asa-def:EntityStateApplyServicePolicyType (0..1)  
      - Where he service-policy is applied.  
    * - interface  
      - oval-def:EntityStateStringType (0..1)  
      - The interface the service-policy is applied (of the 'applied' element has value "INTERFACE').  
  
______________
  
.. _snmp_host_test:  
  
< snmp_host_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The snmp_host test is used to check the properties of specific output lines from an SNMP configuration.

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
  
.. _snmp_host_object:  
  
< snmp_host_object >  
---------------------------------------------------------
The snmp_host_object element is used by an snmp_host test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmp_host object consists of a host entity that is the host of the 'snmp host' ASA command to be tested.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - host  
      - oval-def:EntityObjectStringType (1..1)  
      - The SNMP host address or hostname.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _snmp_host_state:  
  
< snmp_host_state >  
---------------------------------------------------------
The snmp_host_state element defines the different information that can be used to evaluate the result of a specific 'snmp host' ASA command. This includes the host and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - interface  
      - oval-def:EntityStateStringType (0..1)  
      - The interface configured for the host.  
    * - host  
      - oval-def:EntityStateStringType (0..1)  
      - The SNMP host address or hostname.  
    * - snmpv3_user  
      - oval-def:EntityStateStringType (0..1)  
      - The community SNMPv3 user configured for the host.  
    * - version  
      - asa-def:EntityStateSNMPVersionStringType (0..1)  
      - The SNMP version.  
    * - poll  
      - oval-def:EntityStateBoolType (0..1)  
      - SNMP polls enabled for the host.  
    * - traps  
      - oval-def:EntityStateBoolType (0..1)  
      - SNMP traps enabled for the host.  
    * - udp_port  
      - oval-def:EntityStateIntType (0..1)  
      - SNMP port configured for the host.  
  
______________
  
.. _snmp_user_test:  
  
< snmp_user_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The snmp_user test is used to check the properties of specific output lines from an SNMP user configuration.

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
  
.. _snmp_user_object:  
  
< snmp_user_object >  
---------------------------------------------------------
The snmp_user_object element is used by an snmp_user test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmp_user object consists of a name entity that is the name of the SNMP user to be tested.

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
      - The SNMP user name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _snmp_user_state:  
  
< snmp_user_state >  
---------------------------------------------------------
The snmp_user_state element defines the different information that can be used to evaluate the result of a specific 'show snmp-serveruser' ASA command. This includes the user name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The SNMP user name.  
    * - group  
      - oval-def:EntityStateStringType (0..1)  
      - The SNMP group the user belongs to.  
    * - priv  
      - asa-def:EntityStateSNMPPrivStringType (0..1)  
      - The SNMP encryption type for the user (for SNMPv3).  
    * - auth  
      - asa-def:EntityStateSNMPAuthStringType (0..1)  
      - The SNMP authentication type for the user (for SNMPv3).  
  
______________
  
.. _snmp_group_test:  
  
< snmp_group_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The snmp_group test is used to check the properties of specific output lines from an SNMP group configuration.

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
  
.. _snmp_group_object:  
  
< snmp_group_object >  
---------------------------------------------------------
The snmp_group_object element is used by an snmp_group test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmp_group object consists of a name entity that is the name of the SNMP group to be tested.

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
      - The SNMP group name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _snmp_group_state:  
  
< snmp_group_state >  
---------------------------------------------------------
The snmp_group_state element defines the different information that can be used to evaluate the result of a specific 'snmp-server group' ASA command. This includes the user name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The SNMP group name.  
    * - snmpv3_sec_level  
      - asa-def:EntityStateSNMPSecLevelStringType (0..1)  
      - The SNMPv3 security configured for the group.  
  
______________
  
.. _tcp_map_test:  
  
< tcp_map_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The tcp_map test is used to check the properties of specific output lines from a tcp-map ASA configuration.

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
  
.. _tcp_map_object:  
  
< tcp_map_object >  
---------------------------------------------------------
The tcp-map_object element is used by an tcp_map test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A service_policy object consists of a name entity that is the name of the ASA 'tcp-map' configuration to be tested.

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
      - The MPF tcp-map name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _tcp_map_state:  
  
< tcp_map_state >  
---------------------------------------------------------
The tcp_map_state element defines the different information that can be used to evaluate the result of a specific 'tcp-map' ASA configuration. This includes the tcp-map name and its configured options. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The tcp-map name.  
    * - options  
      - oval-def:EntityStateStringType (0..1)  
      - The configured commends in the tcp-map. These could include TCP options, flags and other options of the tcp-map.  
  
______________
  
.. _version_test:  
  
< version_test >  
---------------------------------------------------------
The version test is used to check the version of the ASA operating system. It is based off of the SHOW VERSION command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

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
  
.. _version_object:  
  
< version_object >  
---------------------------------------------------------
The version_object element is used by a version test to define the different version information associated with a ASA system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _version_state:  
  
< version_state >  
---------------------------------------------------------
The version_state element defines the version information held within a Cisco ASA software release. The asa_release element specifies the whole ASA version information. The asa_major_release, asa_minor_release and asa_build elements specify seperated parts of ASA software version information. For instance, if the ASA version is 8.4(2.3)49, then asa_release is 8.4(2.3)49, asa_major_release is 8.4, asa_minor_release is 2.3 and asa_build is 49. See the SHOW VERSION command within ASA for more information.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - asa_release  
      - oval-def:EntityStateStringType (0..1)  
      - The asa_release element specifies the whole ASA version information.  
    * - asa_major_release  
      - oval-def:EntityStateVersionType (0..1)  
      - The asa_major_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_major_release of 8.4.  
    * - asa_minor_release  
      - oval-def:EntityStateVersionType (0..1)  
      - The asa_minor_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_minor_release of 2.3.  
    * - asa_build  
      - oval-def:EntityStateIntType (0..1)  
      - The asa_build is an integer. For example the asa_release 8.4(2.3)49 has a asa_build of 49.  
  
.. _EntityObjectAccessListIPVersionType:  
  
== EntityObjectAccessListIPVersionType ==  
---------------------------------------------------------
The EntityObjectAccessListIPVersionType complex type restricts a string value to a specific set of values: IPV4, IPV6 or IPV4_V6 (both). These values describe if an ACL is for IPv4 or IPv6 or both for UACLs in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IPV4  
      - (No Description)  
    * - IPV6  
      - (No Description)  
    * - IPV4_V6  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateAccessListIPVersionType:  
  
== EntityStateAccessListIPVersionType ==  
---------------------------------------------------------
The EntityStateAccessListIPVersionType complex type restricts a string value to a specific set of values: IPV4, IPV6 or IPV4_V6 (both). These values describe if an ACL is for IPv4 or IPv6 or both for UACLs in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IPV4  
      - (No Description)  
    * - IPV6  
      - (No Description)  
    * - IPV4_V6  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateAccessListUseType:  
  
== EntityStateAccessListUseType ==  
---------------------------------------------------------
The EntityStateAccessListUseType complex type restricts a string value to a specific set of values: INTERFACE, INTERFACE_CP (control plane interface ACL), CRYPTO_MAP_MATCH, CLASS_MAP_MATCH, ROUTE_MAP_MATCH, IGMP_FILTER, NONE. These values describe the ACL use in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - INTERFACE  
      - (No Description)  
    * - INTERFACE_CP  
      - (No Description)  
    * - CRYPTO_MAP_MATCH  
      - (No Description)  
    * - CLASS_MAP_MATCH  
      - (No Description)  
    * - ROUTE_MAP_MATCH  
      - (No Description)  
    * - IGMP_FILTER  
      - (No Description)  
    * - NONE  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateAccessListInterfaceDirectionType:  
  
== EntityStateAccessListInterfaceDirectionType ==  
---------------------------------------------------------
The EntityStateAccessListInterfaceDirectionType complex type restricts a string value to a specific set of values: IN, OUT. These values describe the inbound or outbound ACL direction on an interface in a Cisco ASA configuration. These values are defined with the access-group command. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IN  
      - (No Description)  
    * - OUT  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateClassMapType:  
  
== EntityStateClassMapType ==  
---------------------------------------------------------
The EntityStateClassMapType complex type restricts a string value to a specific set of values: INSPECT, REGEX, MANAGEMENT. These values describe the MPF class-map types in Cisco ASA MPF configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - INSPECT  
      - (No Description)  
    * - REGEX  
      - (No Description)  
    * - MANAGEMENT  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateInspectionType:  
  
== EntityStateInspectionType ==  
---------------------------------------------------------
The EntityStateInspectionType complex type restricts a string value to a specific set of values. These values describe the MPF inspection types of class-map and policy-map configurations in Cisco ASA MPF configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - DCERPC  
      - (No Description)  
    * - DNS  
      - (No Description)  
    * - ESMTP  
      - (No Description)  
    * - FTP  
      - (No Description)  
    * - GTP  
      - (No Description)  
    * - H323  
      - (No Description)  
    * - HTTP  
      - (No Description)  
    * - IM  
      - (No Description)  
    * - IPV6  
      - (No Description)  
    * - MGCP  
      - (No Description)  
    * - NETBIOS  
      - (No Description)  
    * - RADIUS-ACCOUNTING  
      - (No Description)  
    * - RTSP  
      - (No Description)  
    * - SCANSAFE  
      - (No Description)  
    * - SIP  
      - (No Description)  
    * - SKINNY  
      - (No Description)  
    * - SNMP  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateApplyServicePolicyType:  
  
== EntityStateApplyServicePolicyType ==  
---------------------------------------------------------
The EntityStateApplyServicePolicyType complex type restricts a string value to a specific set of values: GLOBAL, INTERFACE. These values describe where a service-policy is applied in a Cisco ASA MPF configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - GLOBAL  
      - (No Description)  
    * - INTERFACE  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateMatchType:  
  
== EntityStateMatchType ==  
---------------------------------------------------------
The EntityStateMatchType complex type restricts a string value to a specific set of values: ANY, ALL. These values describe the match type of a class-map in a Cisco ASA MPF configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ANY  
      - (No Description)  
    * - ALL  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateSNMPVersionStringType:  
  
== EntityStateSNMPVersionStringType ==  
---------------------------------------------------------
The EntityStateSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - 1  
      - (No Description)  
    * - 2C  
      - (No Description)  
    * - 3  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateSNMPSecLevelStringType:  
  
== EntityStateSNMPSecLevelStringType ==  
---------------------------------------------------------
The EntityStateSNMPSecLevelStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - PRIV  
      - (No Description)  
    * - AUTH  
      - (No Description)  
    * - NO_AUTH  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateSNMPAuthStringType:  
  
== EntityStateSNMPAuthStringType ==  
---------------------------------------------------------
The EntityStateSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - MD5  
      - (No Description)  
    * - SHA  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateSNMPPrivStringType:  
  
== EntityStateSNMPPrivStringType ==  
---------------------------------------------------------
The EntityStateSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES128, AES192, and AES256. These values describe the encryption algorithm in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - DES  
      - (No Description)  
    * - 3DES  
      - (No Description)  
    * - AES128  
      - (No Description)  
    * - AES192  
      - (No Description)  
    * - AES256  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
