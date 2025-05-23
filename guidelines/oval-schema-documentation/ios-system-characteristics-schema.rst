Open Vulnerability and Assessment Language: IOS Definition  
=========================================================
* Schema: IOS Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the IOS specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`acl_item`  
* :ref:`bgpneighbor_item`  
* :ref:`global_item`  
* :ref:`interface_item`  
* :ref:`line_item`  
* :ref:`router_item`  
* :ref:`routingprotocolauthintf_item`  
* :ref:`section_item`  
* :ref:`snmp_item`  
* :ref:`snmpcommunity_item`  
* :ref:`snmpgroup_item`  
* :ref:`snmphost_item`  
* :ref:`snmpuser_item`  
* :ref:`snmpview_item`  
* :ref:`tclsh_item`  
* :ref:`version_item`  
  
______________
  
.. _acl_item:  
  
< acl_item >  
---------------------------------------------------------
Stores command that are part of a IOS configuration section. For example all configuration lines under an interface. It should not store configurations for configs that already have a separate item. For example BGP has a router item and should not also be stored in a acl_item.

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
      - Element with the name of the ACL.  
    * - ip_version  
      - ios-sc:EntityItemAccessListIPVersionType (0..1)  
      - Element with the IP version of the ACL.  
    * - use  
      - ios-sc:EntityItemAccessListUseType (0..1)  
      - Element with the feature where the ACL is used. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.  
    * - used_in  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the name of where the ACL is used. For example if use is 'INTERFACE', use_in will be the name of the interface. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.  
    * - interface_direction  
      - ios-sc:EntityItemAccessListInterfaceDirectionType (0..1)  
      - Element with the direction the ACL is applied on an interface.  
    * - acl_config_lines  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the value returned with all config lines of the ACL.  
    * - config_line  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the value returned with one ACL config line at a time.  
  
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
  
.. _global_item:  
  
< global_item >  
---------------------------------------------------------
Sotres information about the existence of a particular line in the ios config file under the global context.

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
      -   
  
______________
  
.. _interface_item:  
  
< interface_item >  
---------------------------------------------------------
The interface_item represents an IOS interface and its configuration options.

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
    * - ip_directed_broadcast_command  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - Element that is true if the directed broadcast command is enabled on the interface. The default is false.  
    * - no_ip_directed_broadcast_command (Deprecated)  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - proxy_arp_command  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - Element that is true if the proxy_arp command is enabled on the interface. The default is true.  
    * - shutdown_command  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
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
    * - urpf_command (Deprecated)  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the uRPF command under the interface.  
    * - switchport_trunk_encapsulation  
      - ios-sc:EntityItemTrunkEncapType (0..1)  
      - Element with the switchport trunk encapsulation option configured on the interface (if applicable).  
    * - switchport_mode  
      - ios-sc:EntityItemSwitchportModeType (0..1)  
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
  
.. _line_item:  
  
< line_item >  
---------------------------------------------------------
Stores the properties of specific lines in the ios config file.

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
  
.. _router_item:  
  
< router_item >  
---------------------------------------------------------
Stores commands that are part of a IOS 'router' command configuration. For example 'router bgp 123'.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - ios-sc:EntityItemRoutingProtocolType (0..1)  
      - Element with the routing protocol.  
    * - id  
      - oval-sc:EntityItemIntType (0..1)  
      - Element with the IOS router id.  
    * - network  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the subnet in the network command of the router instance. The area can be included in the string for OSPF.  
    * - bgp_neighbor  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the BGP neighbors, if applicable.  
    * - ospf_authentication_area  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..unbounded)  
      - Element with the OSPF area that is authenticated, if applicable.  
    * - router_config_lines  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with all config lines of the router.  
  
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
      - ios-sc:EntityItemRoutingProtocolType (0..1)  
      - Element with the routing protocol.  
    * - id  
      - oval-sc:EntityItemIntType (0..1)  
      - Element with the routing protocol id.  
    * - auth_type  
      - ios-sc:EntityItemRoutingAuthTypeStringType (0..1)  
      - Element with the routing protocol authentication type.  
    * - ospf_area  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - Element with the OSPF area that is authenticated, if applicable.  
    * - key_chain  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the name of the key chain, if applicable.  
  
______________
  
.. _section_item:  
  
< section_item >  
---------------------------------------------------------
Stores command that are part of a IOS configuration section. For example all configuration lines under an interface. It should not store configurations for configs that already have a separate item. For example BGP has a router item and should not also be stored in a section_item.

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
      - Element with all config lines of the section.  
    * - config_line  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with one config line of the section at a time.  
  
______________
  
.. _snmp_item:  
  
< snmp_item >  
---------------------------------------------------------
Stores results from collecting lines under the global context associated with snmp.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - access_list  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - community_name  
      - oval-sc:EntityItemStringType (0..1)  
      -   
  
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
      - ios-sc:EntityItemSNMPModeStringType (0..1)  
      - Element with the read-write privileges of the community.  
    * - ipv4_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv4 ACL name applied to the community.  
    * - ipv6_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv6 ACL name applied to the community.  
  
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
      - ios-sc:EntityItemSNMPVersionStringType (0..1)  
      - Element with the SNMP version of the group.  
    * - snmpv3_sec_level  
      - ios-sc:EntityItemSNMPSecLevelStringType (0..1)  
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
      - ios-sc:EntityItemSNMPVersionStringType (0..1)  
      - Element with the SNMP version.  
    * - snmpv3_sec_level  
      - ios-sc:EntityItemSNMPSecLevelStringType (0..1)  
      - Element with the SNMPv3 security configure for the host.  
    * - traps  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP traps configured.  
  
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
      - ios-sc:EntityItemSNMPVersionStringType (0..1)  
      - Element with the SNMP version of the user.  
    * - ipv4_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv4 ACL name applied to the user.  
    * - ipv6_acl  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the IPv6 ACL name applied to the user.  
    * - priv  
      - ios-sc:EntityItemSNMPPrivStringType (0..1)  
      - Element with the SNMP encryption type for the user (for SNMPv3).  
    * - auth  
      - ios-sc:EntityItemSNMPAuthStringType (0..1)  
      - Element with the SNMP authentication type for the user (for SNMPv3).  
  
______________
  
.. _snmpview_item:  
  
< snmpview_item >  
---------------------------------------------------------
Stores information about an SNMP view configuration in IOS. That information includes the view name, the mib_family that the view uses and the included or excluded option of the mib family in the view.

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
      - Element with the SNMP view name.  
    * - mib_family  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP MIB family of the view.  
    * - include  
      - oval-sc:EntityItemBoolType (0..1)  
      - Element that is true if the included option is used in the view.  
  
______________
  
.. _tclsh_item:  
  
< tclsh_item >  
---------------------------------------------------------
The tclsh item holds information about the availability of tcl on the IOS operating system. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - available  
      - oval-sc:EntityItemBoolType (0..1)  
      - This boolean entity describes whether TCLSH is available on the system. A value of true means that TCLSH is available. Per Cisco documentation, the accepted way to see if the device supports tcl functionality is to enter the tcl shell. If the attempt results in a tcl prompt then the device supports tclsh and has it enabled.  
  
______________
  
.. _version_item:  
  
< version_item >  
---------------------------------------------------------
The version_item holds information about the version of the IOS operating system. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - major_release (Deprecated)  
      - oval-sc:EntityItemStringType (0..1)  
      - The major_release is a combination of train and rebuild information and is used by Cisco advisories to identify major releases.  
    * - train_number (Deprecated)  
      - oval-sc:EntityItemStringType (0..1)  
      - The train number is the dotted version that starts a version string. For example the version string 12.2(3)T has a train number of 12.2.  
    * - major_version  
      - oval-sc:EntityItemIntType (0..1)  
      - The major_version entity specifies the major version piece of the version string. The value is an integer and in the example 12.4(9)T0a the major version is '12'.  
    * - minor_version  
      - oval-sc:EntityItemIntType (0..1)  
      - The minor_version entity specifies the minor version piece of the version string. The value is an integer and in the example 12.4(9)T0a the minor version is '4'.  
    * - release  
      - oval-sc:EntityItemIntType (0..1)  
      - The release entity specifies the release piece of the version string. The value is an integer and in the example 12.4(9)T0a the release is '9'.  
    * - train_identifier  
      - oval-sc:EntityItemStringType (0..1)  
      - The train identifier is the type of Train. For example the version string 12.2(3)T has a train identifier of T. Please see the EntityItemTrainIdentifierType for more information about the different train identifiers.The train_identifier entity specifies the type of train represented in the version string. The value is a string and in the example 12.4(9)T0a the train identifier is 'T'. The following explaination from Wikipedia should help explain the different train identifiers. Cisco IOS releases are split into several "trains", each containing a different set of features. Trains more or less map onto distinct markets or groups of customers that Cisco is targeting. The 'mainline' train is designed to be the most stable release the company can offer, and its feature set never expands during its lifetime. Updates are released only to address bugs in the product. The previous technology train becomes the source for the current mainline train--for example, the 12.1T train becomes the basis for the 12.2 mainline. Therefore, to determine the features available in a particular mainline release, look at the previous T train release. The 'T' (Technology) train, gets new features and bug fixes throughout its life, and is therefore less stable than the mainline. (In releases prior to Cisco IOS Release 12.0, the P train served as the Technology train.) The 'S' (Service Provider) train, runs only on the company's core router products and is heavily customized for Service Provider customers. The 'E' (Enterprise) train, is customized for implementation in enterprise environments. The 'B' (broadband) train, support internet based broadband features. The 'XA', 'Xb' ... (special functionality) train, needs to be documented. There are other trains from time to time, designed for specific needs -- for example, the 12.0AA train contained new code required for Cisco's AS5800 product.  
    * - rebuild  
      - oval-sc:EntityItemIntType (0..1)  
      - The rebuild entity specifies the rebuild piece of the version string The value is an integer and in the example 12.4(9)T0a the rebuild is '0'. Often a rebuild is compiled to fix a single specific problem or vulnerability for a given IOS version. For example, 12.1(8)E14 is a Rebuild, the 14 denoting the 14th rebuild of 12.1(8)E. Rebuilds are produced to either quickly repair a defect, or to satisfy customers who do not want to upgrade to a later major revision because they may be running critical infrastructure on their devices, and hence prefer to minimise change and risk.  
    * - subrebuild  
      - oval-sc:EntityItemStringType (0..1)  
      - The subrebuild entity specifies the subrebuild piece of the version string. The value is a string and in the example 12.4(9)T0a the subrebuild is 'a'.  
    * - mainline_rebuild  
      - oval-sc:EntityItemStringType (0..1)  
      - The mainline_rebuild entity specifies the mainline rebuild piece of the version string. The mainline rebuild is just a regular rebuild release against the mainline operating system release (e.g. the branch of development that would typically be called "the trunk" that isn't associated with a train). Since there is no train identifier to stick the rebuild release after, they stick a alphabetic character inside the parens holding the maintenance release number. For example, 12.4(5b) is the second rebuild of the 12.4(5) maintenance release.  
    * - version_string  
      - oval-sc:EntityItemIOSVersionType (0..1)  
      - The version entity holds the raw string output of a 'show version' command.  
  
.. _EntityItemAccessListInterfaceDirectionType:  
  
== EntityItemAccessListInterfaceDirectionType ==  
---------------------------------------------------------
The EntityItemAccessListInterfaceDirectionType complex type restricts a string value to a specific set of values: IN, OUT. These values describe the inbound or outbound ACL direction on an interface in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IN  
      - (No Description)  
    * - OUT  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemAccessListIPVersionType:  
  
== EntityItemAccessListIPVersionType ==  
---------------------------------------------------------
The EntityItemRoutingProtocolType complex type restricts a string value to a specific set of values: IPV4, IPV6. These values describe if an ACL is for IPv4 or IPv6 in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IPV4  
      - (No Description)  
    * - IPV6  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemAccessListUseType:  
  
== EntityItemAccessListUseType ==  
---------------------------------------------------------
The EntityItemAccessListUseType complex type restricts a string value to a specific set of values: INTERFACE, CRYPTO_MAP_MATCH, CLASS_MAP_MATCH, ROUTE_MAP_MATCH, IGMP_FILTER, VTY. These values describe the ACL use in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemRoutingAuthTypeStringType:  
  
== EntityItemRoutingAuthTypeStringType ==  
---------------------------------------------------------
The EntityItemRoutingAuthTypeStringType complex type restricts a string value to a specific set of values: CLEARTEXT, MESSAGE_DIGEST. These values describe the routing protocol authentication types used in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemRoutingProtocolType:  
  
== EntityItemRoutingProtocolType ==  
---------------------------------------------------------
The EntityItemRoutingProtocolType complex type restricts a string value to a specific set of values: EIGRP, OSPF, BGP, RIP, RIPV2, ISIS. These values describe the routing protocol used in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemSNMPVersionStringType:  
  
== EntityItemSNMPVersionStringType ==  
---------------------------------------------------------
The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemSNMPSecLevelStringType:  
  
== EntityItemSNMPSecLevelStringType ==  
---------------------------------------------------------
The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty elements associated with error conditions.

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemSNMPModeStringType:  
  
== EntityItemSNMPModeStringType ==  
---------------------------------------------------------
The EntityItemSNMPModeStringType complex type restricts a string value to a specific set of values: RO, RW. These values describe the SNMP mode (read-only, read-write) in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty elements associated with error conditions.

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemSNMPAuthStringType:  
  
== EntityItemSNMPAuthStringType ==  
---------------------------------------------------------
The EntityItemSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty elements associated with error conditions.

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemSNMPPrivStringType:  
  
== EntityItemSNMPPrivStringType ==  
---------------------------------------------------------
The EntityItemSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES. These values describe the encryption algorithm in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty elements associated with error conditions.

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemSwitchportModeType:  
  
== EntityItemSwitchportModeType ==  
---------------------------------------------------------
The EntityItemRoutingProtocolType complex type restricts a string value to a specific set of values: DYNAMIC, TRUNK, ACCESS. These values describe the interface switchport mode types in IOS. The empty string is also allowed to support empty elements associated with error conditions.

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemTrunkEncapType:  
  
== EntityItemTrunkEncapType ==  
---------------------------------------------------------
The EntityItemTrunkEncapType complex type restricts a string value to a specific set of values: DOT1Q, ISL, NEGOTIATE. These values describe the interface trunk encapsulation types on an interfaces in IOS. The empty string is also allowed to support empty elements associated with error conditions.

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
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
