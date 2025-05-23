Open Vulnerability and Assessment Language: IOS Definition  
=========================================================
* Schema: IOS Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the IOS specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`acl_test` (Deprecated)  
* :ref:`bgpneighbor_test`  
* :ref:`global_test`  
* :ref:`interface_test`  
* :ref:`line_test`  
* :ref:`router_test` (Deprecated)  
* :ref:`routingprotocolauthintf_test`  
* :ref:`section_test`  
* :ref:`snmp_test`  
* :ref:`snmpcommunity_test`  
* :ref:`snmpgroup_test`  
* :ref:`snmphost_test`  
* :ref:`snmpuser_test`  
* :ref:`snmpview_test` (Deprecated)  
* :ref:`tclsh_test` (Deprecated)  
* :ref:`version55_test`  
* :ref:`version_test` (Deprecated)  
  
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
The acl_object element is used by an acl test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
      - ios-def:EntityObjectAccessListIPVersionType (1..1)  
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
      - ios-def:EntityStateAccessListIPVersionType (0..1)  
      - The IP version of the ACL.  
    * - use  
      - ios-def:EntityStateAccessListUseType (0..1)  
      - The feature where the ACL is used.  
    * - used_in  
      - oval-def:EntityStateStringType (0..1)  
      - The name of where the ACL is used. For example if use is 'INTERFACE', use_in will be the name of the interface.  
    * - interface_direction  
      - ios-def:EntityStateAccessListInterfaceDirectionType (0..1)  
      - The direction the ACL is applied on an interface.  
    * - acl_config_lines  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned with all config lines of the ACL.  
    * - config_line  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned with one ACL config line at a time.  
  
______________
  
.. _bgpneighbor_test:  
  
< bgpneighbor_test >  
---------------------------------------------------------
The bgpneighbor test is used to check the bgp neighbpr properties of bgp instances instances in IOS.

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
  
.. _bgpneighbor_object:  
  
< bgpneighbor_object >  
---------------------------------------------------------
The bgpneighbor_object element is used by a bgpneighbor test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A bgpneighbor object consists of a neighbor entity.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - neighbor  
      - oval-def:EntityObjectStringType (1..1)  
      - The bgp neighbor.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _bgpneighbor_state:  
  
< bgpneighbor_state >  
---------------------------------------------------------
The bgpneighbor_state element defines the different information that can be used to evaluate the result of a bgp neighbor configuration. This includes the neighbor and the password option, if configured. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - neighbor  
      - oval-def:EntityStateStringType (0..1)  
      - The bgp neighbor.  
    * - password  
      - oval-def:EntityStateStringType (0..1)  
      - The bgp authentication password, if configured. If Encryption type is configured it should be included in the password string. For example '0 cisco123'.  
  
______________
  
.. _global_test:  
  
< global_test >  
---------------------------------------------------------
The global test is used to check for the existence of a particular line in the ios config file under the global context. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a global_object and the optional state element specifies the data to check.

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
  
.. _global_object:  
  
< global_object >  
---------------------------------------------------------
The global_object element is used by a global test to define the object to be evaluated. For the most part this object checks for existence and is used without a state comparision. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - global_command  
      - oval-def:EntityObjectStringType (1..1)  
      - The global_command entity identifies a specific line in the ios config file under the global context.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _global_state:  
  
< global_state >  
---------------------------------------------------------
The global_state element defines the different information that can be found in the ios config file under the global context. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - global_command  
      - oval-def:EntityStateStringType (0..1)  
      - The global_command entity identifies a specific line in the ios config file under the global context.  
  
______________
  
.. _interface_test:  
  
< interface_test >  
---------------------------------------------------------
The interface test is used to check for the existence of a particular interface on the Cisco IOS device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a interface_object and the optional state element specifies the data to check.

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

An interface_object consists of a name entity that is the name of the IOS interface to be tested.

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
      -   
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _interface_state:  
  
< interface_state >  
---------------------------------------------------------
The interface_state element defines the different information that can be used to evaluate the result of a specific IOS interface. This includes the name, status, and address information about the interface. Please refer to the individual elements in the schema for more details about what each represents.

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
      -   
    * - ip_directed_broadcast_command  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - Directed broadcast command enabled on the interface. The default is false.  
    * - no_ip_directed_broadcast_command (Deprecated)  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - proxy_arp_command  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - Element that is true if the proxy_arp command is enabled on the interface. The default is true.  
    * - shutdown_command  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - Element that is true if the interface is shut down. The default is false.  
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
    * - switchport_trunk_encapsulation  
      - ios-def:EntityStateTrunkEncapType (0..1)  
      - The switchport trunk encapsulation option configured on the interface (if applicable).  
    * - switchport_mode  
      - ios-def:EntityStateSwitchportModeType (0..1)  
      - The switchport mode option configured on the interface (if applicable).  
    * - switchport_native_vlan  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The trunk native vlan configured on the interface (if applicable).  
    * - switchport_access_vlan  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The access vlan configured on the interface (if applicable).  
    * - switchport_trunked_vlans  
      - oval-def:EntityStateStringType (0..1)  
      - The vlans that are trunked configured on the interface (if applicable).  
    * - switchport_pruned_vlans  
      - oval-def:EntityStateStringType (0..1)  
      - The vlans that are pruned from the trunk (if applicable).  
    * - switchport_port_security  
      - oval-def:EntityStateStringType (0..1)  
      - The switchport port-security commands configured on the interface (if applicable).  
  
______________
  
.. _line_test:  
  
< line_test >  
---------------------------------------------------------
The line test is used to check the properties of specific output lines from a SHOW command, such as show running-config. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a line_object and the optional state element specifies the data to check.

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
The line_object element is used by a line test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
  
.. _router_test:  
  
< router_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The router test is used to check the properties of specific output lines from a router configurated instance in IOS.

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
  
.. _router_object:  
  
< router_object >  
---------------------------------------------------------
The router_object element is used by a router test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A router object consists of a router protocol and router identifier entity.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - ios-def:EntityObjectRoutingProtocolType (1..1)  
      - The routing protocol of the router instance.  
    * - id  
      - oval-def:EntityObjectIntType (1..1)  
      - The IOS router id.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _router_state:  
  
< router_state >  
---------------------------------------------------------
The router_state element defines the different information that can be used to evaluate the result of a specific router command. This includes the protocol of the router instance, the id, the networks, bgp neighbor, ospf authentication area commands and the corresponding config lines. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - ios-def:EntityStateRoutingProtocolType (1..1)  
      - The routing protocol of the router instance. If there are more than one router configurations, for example ospf instances, different objects should be created for each.  
    * - id  
      - oval-def:EntityStateIntType (0..1)  
      - The IOS router id  
    * - network  
      - oval-def:EntityStateStringType (0..1)  
      - The subnet in the network command of the router instance. The area can be included in the string for OSPF.  
    * - bgp_neighbor  
      - oval-def:EntityStateStringType (0..1)  
      - The BGP neighbors, if applicable.  
    * - ospf_authentication_area  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The OSPF area that is authenticated, if applicable.  
    * - router_config_lines  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned with all config lines of the router instance.  
  
______________
  
.. _routingprotocolauthintf_test:  
  
< routingprotocolauthintf_test >  
---------------------------------------------------------
The routing protocol authentication interface test is used to check the properties of routing protocol authentication configured under interfaces in IOS.

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
  
.. _routingprotocolauthintf_object:  
  
< routingprotocolauthintf_object >  
---------------------------------------------------------
The routingprotocolauthintf_object element is used by a routingprotocolauthintf test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A routingprotocolauthintf object consists of an interface and the routing protocol that is authenticated entity.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - interface  
      - oval-def:EntityObjectStringType (1..1)  
      - The interface name.  
    * - protocol  
      - ios-def:EntityObjectRoutingProtocolType (1..1)  
      - The routing protocol.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _routingprotocolauthintf_state:  
  
< routingprotocolauthintf_state >  
---------------------------------------------------------
The routingprotocolauthintf_state element defines the different information that can be used to evaluate the result of a specific routing protocol interface authentication configurations. This includes the interface, the protocol, the id, the authentication type, the ospf area, the key chain command and the corresponding config lines. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The interface name.  
    * - protocol  
      - ios-def:EntityStateRoutingProtocolType (0..1)  
      - The routing protocol.  
    * - id  
      - oval-def:EntityStateIntType (0..1)  
      - The routing protocol id, if applicable.  
    * - auth_type  
      - ios-def:EntityStateRoutingAuthTypeStringType (0..1)  
      - The routing protocol authentication type.  
    * - ospf_area  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      - The OSPF area that is authenticated, if applicable.  
    * - key_chain  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the key chain, if applicable.  
  
______________
  
.. _section_test:  
  
< section_test >  
---------------------------------------------------------
The section test is used to check the properties of specific output lines from a configuration section.

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
  
.. _section_object:  
  
< section_object >  
---------------------------------------------------------
The section_object element is used by a section test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A section object consists of a section_command entity that is the name of a section command to be tested.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - section_command  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of a section command.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _section_state:  
  
< section_state >  
---------------------------------------------------------
The section_state element defines the different information that can be used to evaluate the result of a specific section command. This includes the name of ths section_command and the corresponding config lines. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - section_command  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the section command.  
    * - section_config_lines  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned with all config lines of the section.  
    * - config_line  
      - oval-def:EntityStateStringType (0..1)  
      - The value returned with one config line of the section at a time.  
  
______________
  
.. _snmp_test:  
  
< snmp_test >  
---------------------------------------------------------
Tests if lines under the global context associated with snmp that have a specifiec access list or community name.

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
  
.. _snmp_object:  
  
< snmp_object >  
---------------------------------------------------------
The snmp_object element is used by a snmp test to define those objects to evaluated based on a specified state. There is actually only one object relating to snmp and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check snmp will reference the same snmp_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _snmp_state:  
  
< snmp_state >  
---------------------------------------------------------


**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - access_list  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - community_name  
      - oval-def:EntityStateStringType (0..1)  
      -   
  
______________
  
.. _snmpcommunity_test:  
  
< snmpcommunity_test >  
---------------------------------------------------------
The snmpcommunity test is used to check the properties of specific output lines from an SNMP configuration.

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
  
.. _snmpcommunity_object:  
  
< snmpcommunity_object >  
---------------------------------------------------------
The snmpcommunity_object element is used by an snmpcommunity test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An snmpcommunity object consists of a community name entity to be tested.

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
      - The SNMP community name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _snmpcommunity_state:  
  
< snmpcommunity_state >  
---------------------------------------------------------
The snmpcommunity_state element defines the different information that can be used to evaluate the result of a specific 'snmp community' IOS command. This includes the community name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The SNMP community name.  
    * - view  
      - oval-def:EntityStateStringType (0..1)  
      - The view that restricts the OIDs of this community.  
    * - mode  
      - ios-def:EntityStateSNMPModeStringType (0..1)  
      - The read-write privileges of the community.  
    * - ipv4_acl  
      - oval-def:EntityStateStringType (0..1)  
      - The IPv4 ACL name applied to the community.  
    * - ipv6_acl  
      - oval-def:EntityStateStringType (0..1)  
      - The IPv6 ACL name applied to the community.  
  
______________
  
.. _snmpgroup_test:  
  
< snmpgroup_test >  
---------------------------------------------------------
The snmpgroup test is used to check the properties of specific output lines from an SNMP group configuration.

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
  
.. _snmpgroup_object:  
  
< snmpgroup_object >  
---------------------------------------------------------
The snmpgroup_object element is used by an snmpgroup test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmpgroup object consists of a name entity that is the name of the SNMP group to be tested.

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
  
.. _snmpgroup_state:  
  
< snmpgroup_state >  
---------------------------------------------------------
The snmpgroup_state element defines the different information that can be used to evaluate the result of a specific 'snmp-server group' IOS command. This includes the user name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

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
    * - version  
      - ios-def:EntityStateSNMPVersionStringType (0..1)  
      - The SNMP version of the group.  
    * - snmpv3_sec_level  
      - ios-def:EntityStateSNMPSecLevelStringType (0..1)  
      - The SNMPv3 security configured for the group.  
    * - ipv4_acl  
      - oval-def:EntityStateStringType (0..1)  
      - The IPv4 ACL name applied to the group.  
    * - ipv6_acl  
      - oval-def:EntityStateStringType (0..1)  
      - The IPv6 ACL name applied to the group.  
    * - read_view  
      - oval-def:EntityStateStringType (0..1)  
      - The SNMP read view applied to the group.  
    * - write_view  
      - oval-def:EntityStateStringType (0..1)  
      - The SNMP write view applied to the group.  
    * - notify_view  
      - oval-def:EntityStateStringType (0..1)  
      - The SNMP notify view applied to the group.  
  
______________
  
.. _snmphost_test:  
  
< snmphost_test >  
---------------------------------------------------------
The snmphost test is used to check the properties of specific output lines from an SNMP configuration.

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
  
.. _snmphost_object:  
  
< snmphost_object >  
---------------------------------------------------------
The snmphost_object element is used by an snmphost test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmphost object consists of a host entity that is the host of the 'snmp host' IOS command to be tested.

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
  
.. _snmphost_state:  
  
< snmphost_state >  
---------------------------------------------------------
The snmphost_state element defines the different information that can be used to evaluate the result of a specific 'snmp host' IOS command. This includes the host and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - host  
      - oval-def:EntityStateStringType (0..1)  
      - The SNMP host address or hostname.  
    * - community_or_user  
      - oval-def:EntityStateStringType (0..1)  
      - The community string or SNMPv3 user configured for the host.  
    * - version  
      - ios-def:EntityStateSNMPVersionStringType (0..1)  
      - The SNMP version.  
    * - snmpv3_sec_level  
      - ios-def:EntityStateSNMPSecLevelStringType (0..1)  
      - The SNMPv3 security configured for the host.  
    * - traps  
      - oval-def:EntityStateStringType (0..1)  
      - The SNMP traps configured.  
  
______________
  
.. _snmpuser_test:  
  
< snmpuser_test >  
---------------------------------------------------------
The snmpuser test is used to check the properties of specific output lines from an SNMP user configuration.

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
  
.. _snmpuser_object:  
  
< snmpuser_object >  
---------------------------------------------------------
The snmpuser_object element is used by an snmpuser test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmpuser object consists of a name entity that is the name of the SNMP user to be tested.

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
  
.. _snmpuser_state:  
  
< snmpuser_state >  
---------------------------------------------------------
The snmpuser_state element defines the different information that can be used to evaluate the result of a specific 'show snmp user' IOS command. This includes the user name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

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
    * - version  
      - ios-def:EntityStateSNMPVersionStringType (0..1)  
      - The SNMP version of the user.  
    * - ipv4_acl  
      - oval-def:EntityStateStringType (0..1)  
      - The IPv4 ACL name applied to the user.  
    * - ipv6_acl  
      - oval-def:EntityStateStringType (0..1)  
      - The IPv6 ACL name applied to the user.  
    * - priv  
      - ios-def:EntityStateSNMPPrivStringType (0..1)  
      - The SNMP encryption type for the user (for SNMPv3).  
    * - auth  
      - ios-def:EntityStateSNMPAuthStringType (0..1)  
      - The SNMP authentication type for the user (for SNMPv3).  
  
______________
  
.. _snmpview_test:  
  
< snmpview_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The snmpview test is used to check the properties of specific output lines from an SNMP view configuration.

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
  
.. _snmpview_object:  
  
< snmpview_object >  
---------------------------------------------------------
The snmpview_object element is used by an snmpview test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmpview object consists of a name entity that is the name of the SNMP view to be tested.

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
      - The SNMP view name.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _snmpview_state:  
  
< snmpview_state >  
---------------------------------------------------------
The snmpview_state element defines the different information that can be used to evaluate the result of a specific 'snmp-server view' IOS command. This includes the view name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

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
      - The SNMP view name.  
    * - mib_family  
      - oval-def:EntityStateStringType (0..1)  
      - The SNMP MIB family of the view.  
    * - include  
      - oval-def:EntityStateBoolType (0..1)  
      - It is true if the included option is used in the view.  
  
______________
  
.. _tclsh_test:  
  
< tclsh_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The tclsh test is used to check tclsh information of the IOS operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a tclsh_object and the optional state element specifies the data to check.

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
  
.. _tclsh_object:  
  
< tclsh_object >  
---------------------------------------------------------
The tclsh_object element is used by a tclsh test to define those objects to evaluated based on a specified state. There is actually only one object relating to tchlsh and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check tclsh will reference the same tclsh_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _tclsh_state:  
  
< tclsh_state >  
---------------------------------------------------------
The tclsh_state element defines information about TCLSH. This includes the available entity which describes whether TCLSH is available on the system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - available  
      - oval-def:EntityStateBoolType (0..1)  
      - This boolean entity describes whether TCLSH is available on the system. A value of true means that TCLSH is available.  
  
______________
  
.. _version55_test:  
  
< version55_test >  
---------------------------------------------------------
The version55_test is used to check the version of the IOS operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

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
  
.. _version55_object:  
  
< version55_object >  
---------------------------------------------------------
The version55_object element is used by a version55_test to define the different version information associated with an IOS system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version55_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _version55_state:  
  
< version55_state >  
---------------------------------------------------------
The version55_state element defines the version information held within a Cisco IOS Train. A Cisco IOS train is a vehicle for delivering releases that evolve from a common code base.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - major_version  
      - oval-def:EntityStateIntType (0..1)  
      - The major_version entity is used to check the major version piece of the version string. The value is an integer and in the example 12.4(9)T0a the major version is '12'.  
    * - minor_version  
      - oval-def:EntityStateIntType (0..1)  
      - The minor_version entity is used to check the minor version piece of the version string. The value is an integer and in the example 12.4(9)T0a the minor version is '4'.  
    * - release  
      - oval-def:EntityStateIntType (0..1)  
      - The release entity is used to check the release piece of the version string. The value is an integer and in the example 12.4(9)T0a the release is '9'.  
    * - train_identifier  
      - oval-def:EntityStateStringType (0..1)  
      - The train_identifier entity is used to check the type of train represented in the version string. The value is a string and in the example 12.4(9)T0a the train identifier is 'T'. The following explaination from Wikipedia should help explain the different train identifiers. Cisco IOS releases are split into several "trains", each containing a different set of features. Trains more or less map onto distinct markets or groups of customers that Cisco is targeting. The 'mainline' train is designed to be the most stable release the company can offer, and its feature set never expands during its lifetime. Updates are released only to address bugs in the product. The previous technology train becomes the source for the current mainline train--for example, the 12.1T train becomes the basis for the 12.2 mainline. Therefore, to determine the features available in a particular mainline release, look at the previous T train release. The 'T' (Technology) train, gets new features and bug fixes throughout its life, and is therefore less stable than the mainline. (In releases prior to Cisco IOS Release 12.0, the P train served as the Technology train.) The 'S' (Service Provider) train, runs only on the company's core router products and is heavily customized for Service Provider customers. The 'E' (Enterprise) train, is customized for implementation in enterprise environments. The 'B' (broadband) train, support internet based broadband features. The 'XA', 'Xb' ... (special functionality) train, needs to be documented. There are other trains from time to time, designed for specific needs -- for example, the 12.0AA train contained new code required for Cisco's AS5800 product.  
    * - rebuild  
      - oval-def:EntityStateIntType (0..1)  
      - The rebuild entity is used to check the rebuild piece of the version string. The value is an integer and in the example 12.4(9)T0a the rebuild is '0'. Often a rebuild is compiled to fix a single specific problem or vulnerability for a given IOS version. For example, 12.1(8)E14 is a Rebuild, the 14 denoting the 14th rebuild of 12.1(8)E. Rebuilds are produced to either quickly repair a defect, or to satisfy customers who do not want to upgrade to a later major revision because they may be running critical infrastructure on their devices, and hence prefer to minimise change and risk.  
    * - subrebuild  
      - oval-def:EntityStateStringType (0..1)  
      - The subrebuild entity is used to check the subrebuild piece of the version string. The value is a string and in the example 12.4(9)T0a the subrebuild is 'a'.  
    * - mainline_rebuild  
      - oval-def:EntityStateStringType (0..1)  
      - The mainline_rebuild entity is used to check the mainline rebuild piece of the version string. The mainline rebuild is just a regular rebuild release against the mainline operating system release (e.g. the branch of development that would typically be called "the trunk" that isn't associated with a train). Since there is no train identifier to stick the rebuild release after, they stick a alphabetic character inside the parens holding the maintenance release number. For example, 12.4(5b) is the second rebuild of the 12.4(5) maintenance release.  
    * - version_string  
      - oval-def:EntityStateIOSVersionType (0..1)  
      - The version_string entity is used to check the raw string output of a 'show version' command.  
  
______________
  
.. _version_test:  
  
< version_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Replaced by the version55_test. Additional IOS version components were added to the version_state in order to support a wider range of IOS version strings. Also, the major_release and train_number entities were removed from the version_state element. A new test was created to reflect these changes. See the version55_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The version test is used to check the version of the IOS operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

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
  
< version_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Replaced by the version55_object. Additional IOS version components were added to the version_state in order to support a wider range of IOS version strings.  Also, the major_release and train_number entities were removed from the version_state element. A new object was created to reflect these changes. See the version55_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The version_object element is used by a version test to define the different version information associated with an IOS system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _version_state:  
  
< version_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Replaced by the version55_state. Additional IOS version components were added to the version_state in order to support a wider range of IOS version strings.  Also, the major_release and train_number entities were removed from this version_state element. A new state was created to reflect these changes. See the version55_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
The version_state element defines the version information held within a Cisco IOS Train. A Cisco IOS train is a vehicle for delivering releases that evolve from a common code base.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - major_release  
      - oval-def:EntityStateStringType (0..1)  
      - The major_release is a combination of train and rebuild information and is used by Cisco advisories to identify major releases.  
    * - train_number  
      - oval-def:EntityStateStringType (0..1)  
      - The train number is the dotted version that starts a version string. For example the version string 12.2(3)T has a train number of 12.2.  
    * - train_identifier  
      - ios-def:EntityStateTrainIdentifierType (0..1)  
      - The train identifier is the type of Train. For example the version string 12.2(3)T has a train identifier of T. Please see the EntityStateVersionTrainIdentifierType for more information about the different train identifiers.  
    * - version_string  
      - oval-def:EntityStateIOSVersionType (0..1)  
      - The version is the raw string output of a 'show version' command.  
  
.. _EntityObjectAccessListIPVersionType:  
  
== EntityObjectAccessListIPVersionType ==  
---------------------------------------------------------
The EntityObjectAccessListIPVersionType complex type restricts a string value to a specific set of values: IPV4, IPV6. These values describe if an ACL is for IPv4 or IPv6 in a Cisco IOS configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IPV4  
      - (No Description)  
    * - IPV6  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityObjectRoutingProtocolType:  
  
== EntityObjectRoutingProtocolType ==  
---------------------------------------------------------
The EntityObjectRoutingProtocolType complex type restricts a string value to a specific set of values: EIGRP, OSPF, BGP, RIP, RIPV2, ISIS. These values describe the routing protocol used in a Cisco IOS configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityObjectStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - EIGRP  
      - (No Description)  
    * - OSPF  
      - (No Description)  
    * - BGP  
      - (No Description)  
    * - RIP  
      - (No Description)  
    * - RIPV2  
      - (No Description)  
    * - ISIS  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateAccessListInterfaceDirectionType:  
  
== EntityStateAccessListInterfaceDirectionType ==  
---------------------------------------------------------
The EntityStateAccessListInterfaceDirectionType complex type restricts a string value to a specific set of values: IN, OUT. These values describe the inbound or outbound ACL direction on an interface in a Cisco IOS configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

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
  
.. _EntityStateAccessListIPVersionType:  
  
== EntityStateAccessListIPVersionType ==  
---------------------------------------------------------
The EntityStateRoutingProtocolType complex type restricts a string value to a specific set of values: IPV4, IPV6. These values describe if an ACL is for IPv4 or IPv6 in a Cisco IOS configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IPV4  
      - (No Description)  
    * - IPV6  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateAccessListUseType:  
  
== EntityStateAccessListUseType ==  
---------------------------------------------------------
The EntityStateAccessListUseType complex type restricts a string value to a specific set of values: INTERFACE, CRYPTO_MAP_MATCH, CLASS_MAP_MATCH, ROUTE_MAP_MATCH, IGMP_FILTER, VTY. These values describe the ACL use in a Cisco IOS configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - INTERFACE  
      - (No Description)  
    * - CRYPTO_MAP_MATCH  
      - (No Description)  
    * - CLASS_MAP_MATCH  
      - (No Description)  
    * - ROUTE_MAP_MATCH  
      - (No Description)  
    * - IGMP_FILTER  
      - (No Description)  
    * - VTY  
      - (No Description)  
    * - NONE (Deprecated)  
      - |   
        | **Deprecated As Of Version:** 5.11.2:1.0  
        | **Reason:** The EntityStateSimpleBaseType check_existence attribute serves the same purpose as this enumeration value.  
        | **Comment:** This AccessListUseType enumeration value has been deprecated and may be removed in a future version of the language.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateRoutingAuthTypeStringType:  
  
== EntityStateRoutingAuthTypeStringType ==  
---------------------------------------------------------
The EntityStateRoutingAuthTypeStringType complex type restricts a string value to a specific set of values: CLEARTEXT, MESSAGE_DIGEST. These values describe the routing protocol authentication types used in a Cisco IOS configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - CLEARTEXT  
      - (No Description)  
    * - MESSAGE_DIGEST  
      - (No Description)  
    * - NULL (Deprecated)  
      - |   
        | **Deprecated As Of Version:** 5.11.2:1.0  
        | **Reason:** The NULL authentication area type is never declared in an interface ip ospf command context.  
        | **Comment:** This RoutingAuthTypeStringType enumeration value has been deprecated and may be removed in a future version of the language.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateRoutingProtocolType:  
  
== EntityStateRoutingProtocolType ==  
---------------------------------------------------------
The EntityStateRoutingProtocolType complex type restricts a string value to a specific set of values: EIGRP, OSPF, BGP, RIP, RIPV2, ISIS. These values describe the routing protocol used in a Cisco IOS configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - EIGRP  
      - (No Description)  
    * - OSPF  
      - (No Description)  
    * - BGP  
      - (No Description)  
    * - RIP  
      - (No Description)  
    * - RIPV2  
      - (No Description)  
    * - ISIS  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateSNMPVersionStringType:  
  
== EntityStateSNMPVersionStringType ==  
---------------------------------------------------------
The EntityStateSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco IOS configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

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
The EntityStateSNMPVersionStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

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
  
.. _EntityStateSNMPModeStringType:  
  
== EntityStateSNMPModeStringType ==  
---------------------------------------------------------
The EntityStateSNMPModeStringType complex type restricts a string value to a specific set of values: RO, RW. These values describe the SNMP mode (read-only, read-write) in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - RO  
      - (No Description)  
    * - RW  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateSNMPAuthStringType:  
  
== EntityStateSNMPAuthStringType ==  
---------------------------------------------------------
The EntityStateSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

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
The EntityStateSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES. These values describe the encryption algorithm in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - DES  
      - (No Description)  
    * - 3DES  
      - (No Description)  
    * - AES  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateSwitchportModeType:  
  
== EntityStateSwitchportModeType ==  
---------------------------------------------------------
The EntityObjectRoutingProtocolType complex type restricts a string value to a specific set of values: DYNAMIC, TRUNK, ACCESS. These values describe the interface switchport mode types in IOS. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - DYNAMIC  
      - (No Description)  
    * - TRUNK  
      - (No Description)  
    * - ACCESS  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
______________
  
.. _EntityStateTrainIdentifierType:  
  
== EntityStateTrainIdentifierType == (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.5  
* Reason: Additional IOS version components were added to the version_state in order to support a wider range of IOS version strings. Also, the train_number entity, which uses this enumeration, was removed from the version_state element. As a result, this enumeration is no longer needed.  
* Comment: This enumeration has been deprecated and will be removed in version 6.0 of the language.  
  
The EntityStateTrainIdentifierType complex type restricts a string value to a specific set of values. These values describe the possible types of trains in a Cisco IOS release. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - mainline  
      - | The mainline Train consolidates releases and fixes defects. Inherits features from the parent T train, and does not add additional features.  
    * - T  
      - | Introduces new features and fixes defects.  
    * - S  
      - | Consolidates 12.1E, 12.2 mainline, and 12.0S, which supports high-end backbone routing, and fixes defects.  
    * - E  
      - | Targets enterprise core and SP edge, supports advanced QoS, voice, security, and firewall, and fixes defects.  
    * - B  
      - | Supports broadband features and fixes defects.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateTrunkEncapType:  
  
== EntityStateTrunkEncapType ==  
---------------------------------------------------------
The EntityStateTrunkEncapType complex type restricts a string value to a specific set of values: DOT1Q, ISL, NEGOTIATE. These values describe the interface trunk encapsulation types on an interfaces in IOS. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - DOT1Q  
      - (No Description)  
    * - ISL  
      - (No Description)  
    * - NEGOTIATE  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
