Open Vulnerability and Assessment Language: IOS-XE System Characteristics  
=========================================================
* Schema: IOS-XE System Characteristics  
* Version: 6.0  
* Release Date: 1/1/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the IOS-XE specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Thanks to Omar Santos and Panos Kampanakis of Cisco for providing this test.

Item Listing  
---------------------------------------------------------
* :ref:`global_item`  
* :ref:`line_item`  
* :ref:`section_item`  
* :ref:`interface_item`  
* :ref:`bgpneighbor_item`  
* :ref:`routingprotocolauthintf_item`  
* :ref:`snmphost_item`  
* :ref:`snmpcommunity_item`  
* :ref:`snmpuser_item`  
* :ref:`snmpgroup_item`  
  
______________
  
.. _global_item:  
  
< global_item >  
---------------------------------------------------------
Sotres information about the existence of a particular line in the IOS-XE config file under the global context

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - global_command  
      - oval-sc:EntityItemStringType (0..1)  
      - The global_command entity identifies a specific line in the IOS-XE config file under the global context.  
  
______________
  
.. _line_item:  
  
< line_item >  
---------------------------------------------------------
Stores the properties of specific lines in the IOS-XE config file.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - show_subcommand  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the SHOW sub-command.  
    * - config_line  
      - oval-sc:EntityItemStringType (0..1)  
      - The value returned from by the specified SHOW sub-command.  
  
______________
  
.. _section_item:  
  
< section_item >  
---------------------------------------------------------
Stores command that are part of a IOS-XE configuration section. For example all configuration lines under an interface. It should not store configurations for configs that already have a separate item. For example BGP has a router item and should not also be stored in a section_item.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - section_command  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the section command.  
    * - section_config_lines  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with all config lines of the section  
    * - config_line  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with one config line of the section at a time  
  
______________
  
.. _interface_item:  
  
< interface_item >  
---------------------------------------------------------
The interface_item represents an IOS-XE interface and its configuration options.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the interface name.  
    * - ip_directed_broadcast  
      - oval-sc:EntityItemBoolType (0..1)  
      - Element that is true if the directed broadcast command is enabled on the interface. The default is false.  
    * - proxy_arp  
      - oval-sc:EntityItemBoolType (0..1)  
      - Element that is true if the proxy_arp command is enabled on the interface. The default is true.  
    * - shutdown  
      - oval-sc:EntityItemBoolType (0..1)  
      - Element that is true if the interface is shut down. The default is false.  
    * - hardware_addr  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the interface hardware (MAC) address.  
    * - ipv4_address  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - Element with the interface IPv4 address and mask. This element should only allow 'ipv4_address' of the oval:SimpleDatatypeEnumeration.  
    * - ipv6_address  
      - oval-sc:EntityItemIPAddressStringType (0..unbounded)  
      - Element with the interface IPv6 address and mask. This element should only allow 'ipv6_address' of the oval:SimpleDatatypeEnumeration.  
    * - ipv4_access_list  
      - oval-sc:EntityItemStringType (0..2)  
      - Element with the ingress or egress IPv4 ACL name applied on the interface.  
    * - ipv6_access_list  
      - oval-sc:EntityItemStringType (0..2)  
      - Element with the ingress or egress IPv6 ACL name applied on the interface.  
    * - crypto_map  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the crypto map name applied to the interface.  
    * - ipv4_urpf_command  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the uRPF command for IPv4 under the interface.  
    * - ipv6_urpf_command  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the uRPF command for IPv6 under the interface.  
    * - switchport_trunk_encapsulation  
      - iosxe-sc:EntityItemTrunkEncapType (0..1)  
      - Element with the switchport trunk encapsulation option configured on the interface (if applicable).  
    * - switchport_mode  
      - iosxe-sc:EntityItemSwitchportModeType (0..1)  
      - Element with the switchport mode option configured on the interface (if applicable).  
    * - switchport_native_vlan  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - Element with the trunk native vlan configured on the interface (if applicable).  
    * - switchport_access_vlan  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - Element with the access vlan configured on the interface (if applicable).  
    * - switchport_trunked_vlans  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the vlans that are trunked configured on the interface (if applicable).  
    * - switchport_pruned_vlans  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the vlans that are pruned from the trunk (if applicable).  
    * - switchport_port_security  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the switchport port-security commands configured on the interface (if applicable).  
  
______________
  
.. _bgpneighbor_item:  
  
< bgpneighbor_item >  
---------------------------------------------------------
Stores information about bgp neighbors configured in bgp instances.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - neighbor  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the bgp neighbor.  
    * - password  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the bgp authentication password, if configured. If Encryption type is configured it should be included in the password string. For example '0 cisco123'.  
  
______________
  
.. _routingprotocolauthintf_item:  
  
< routingprotocolauthintf_item >  
---------------------------------------------------------
Stores information for routing protocol authentication configured under specific interfaces.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - interface  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the interface.  
    * - protocol  
      - iosxe-sc:EntityItemRoutingProtocolType (0..1)  
      - Element with the routing protocol.  
    * - id  
      - oval-sc:EntityItemIntType (0..1)  
      - Element with the routing protocol id.  
    * - auth_type  
      - iosxe-sc:EntityItemRoutingAuthTypeStringType (0..1)  
      - Element with the routing protocol authentication type.  
    * - ospf_area  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - Element with the OSPF area that is authenticated, if applicable.  
    * - key_chain  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the name of the key chain, if applicable.  
  
______________
  
.. _snmphost_item:  
  
< snmphost_item >  
---------------------------------------------------------
Stores information about the SNMP host configuration in IOS. That information includes the host, the community or user strings, the SNMP version, the snmp security (if the SNMP version is SNMPv3) and the SNMP traps.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - host  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP host address or hostname.  
    * - community_or_user  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the community string or SNMPv3 user configured for the host.  
    * - version  
      - iosxe-sc:EntityItemSNMPVersionStringType (0..1)  
      - Element with the SNMP version.  
    * - snmpv3_sec_level  
      - iosxe-sc:EntityItemSNMPSecLevelStringType (0..1)  
      - Element with the SNMPv3 security configure for the host.  
    * - traps  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP traps configured.  
  
______________
  
.. _snmpcommunity_item:  
  
< snmpcommunity_item >  
---------------------------------------------------------
Stores information about an SNMP community configuration in IOS. That information includes the community name, the view (if it applies) name, the read-write mode and the ACLs names applied.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP community name.  
    * - view  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the view that restricts the OIDs of this community.  
    * - mode  
      - iosxe-sc:EntityItemSNMPModeStringType (0..1)  
      - Element with the read-write privileges of the community.  
    * - ipv4_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv4 ACL name applied to the community.  
    * - ipv6_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv6 ACL name applied to the community  
  
______________
  
.. _snmpuser_item:  
  
< snmpuser_item >  
---------------------------------------------------------
Stores information about an SNMP user configuration in IOS. That information includes the user name, the SNMP group he belongs to, the SNMP version, the IPv4 or IPv6 ACL it is applied to, the Security Level and the Authentication type that apply to the user (for SNMPv3).

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP user name.  
    * - group  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP group the user belongs to.  
    * - version  
      - iosxe-sc:EntityItemSNMPVersionStringType (0..1)  
      - Element with the SNMP version of the user.  
    * - ipv4_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv4 ACL name applied to the user.  
    * - ipv6_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv6 ACL name applied to the user.  
    * - priv  
      - iosxe-sc:EntityItemSNMPPrivStringType (0..1)  
      - Element with the SNMP encryption type for the user (for SNMPv3).  
    * - auth  
      - iosxe-sc:EntityItemSNMPAuthStringType (0..1)  
      - Element with the SNMP authentication type for the user (for SNMPv3).  
  
______________
  
.. _snmpgroup_item:  
  
< snmpgroup_item >  
---------------------------------------------------------
Stores information about an SNMP group configuration in IOS. That information includes the group name, the SNMP version, the IPv4 or IPv6 ACL it is applied toand the read, write and/or notify views applied to the group.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP group name.  
    * - version  
      - iosxe-sc:EntityItemSNMPVersionStringType (0..1)  
      - Element with the SNMP version of the group.  
    * - snmpv3_sec_level  
      - iosxe-sc:EntityItemSNMPSecLevelStringType (0..1)  
      - Element with the SNMPv3 security configure for the group.  
    * - ipv4_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv4 ACL name applied to the group.  
    * - ipv6_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv6 ACL name applied to the group.  
    * - read_view  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP read view applied to the group.  
    * - write_view  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP write view applied to the group.  
    * - notify_view  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP notify view applied to the group.  
  
.. _EntityItemTrunkEncapType:  
  
== EntityItemTrunkEncapType ==  
---------------------------------------------------------
The EntityItemTrunkEncapType complex type restricts a string value to a specific set of values: DOT1Q, ISL, NEGOTIATE. These values describe the interface trunk encapsulation types on an interfaces in IOS. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemSwitchportModeType:  
  
== EntityItemSwitchportModeType ==  
---------------------------------------------------------
The EntityObjectRoutingProtocolType complex type restricts a string value to a specific set of values: DYNAMIC, TRUNK, ACCESS. These values describe the interface switchport mode types in IOS. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemRoutingProtocolType:  
  
== EntityItemRoutingProtocolType ==  
---------------------------------------------------------
The EntityItemRoutingProtocolType complex type restricts a string value to a specific set of values: EIGRP, OSPF, BGP, RIP, RIPV2, ISIS. These values describe the routing protocol used in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemRoutingAuthTypeStringType:  
  
== EntityItemRoutingAuthTypeStringType ==  
---------------------------------------------------------
The EntityItemRoutingAuthTypeStringType complex type restricts a string value to a specific set of values: CLEARTEXT, MESSAGE_DIGEST. These values describe the routing protocol authentication types used in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - CLEARTEXT  
      - (No Description)  
    * - MESSAGE_DIGEST  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemSNMPVersionStringType:  
  
== EntityItemSNMPVersionStringType ==  
---------------------------------------------------------
The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemSNMPSecLevelStringType:  
  
== EntityItemSNMPSecLevelStringType ==  
---------------------------------------------------------
The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemSNMPModeStringType:  
  
== EntityItemSNMPModeStringType ==  
---------------------------------------------------------
The EntityItemSNMPModeStringType complex type restricts a string value to a specific set of values: RO, RW. These values describe the SNMP mode (read-only, read-write) in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - RO  
      - (No Description)  
    * - RW  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemSNMPAuthStringType:  
  
== EntityItemSNMPAuthStringType ==  
---------------------------------------------------------
The EntityItemSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - MD5  
      - (No Description)  
    * - SHA  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemSNMPPrivStringType:  
  
== EntityItemSNMPPrivStringType ==  
---------------------------------------------------------
The EntityItemSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES. These values describe the encryption algorithm in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
