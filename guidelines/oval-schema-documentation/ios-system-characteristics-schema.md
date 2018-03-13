# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: IOS Definition  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the IOS specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="acl_item"></a>< acl_item >

Stores command that are part of a IOS configuration section. For example all configuration lines under an interface. It should not store configurations for configs that already have a separate item. For example BGP has a router item and should not also be stored in a acl_item.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of the ACL.</div>|  
| ip_version | [ios-sc:EntityItemAccessListIPVersionType](#EntityItemAccessListIPVersionType)  (0..1) |  
||<div>Element with the IP version of the ACL.</div>|  
| use | [ios-sc:EntityItemAccessListUseType](#EntityItemAccessListUseType)  (0..1) |  
||<div>Element with the feature where the ACL is used. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.</div>|  
| used_in | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of where the ACL is used. For example if use is 'INTERFACE', use_in will be the name of the interface. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.</div>|  
| interface_direction | [ios-sc:EntityItemAccessListInterfaceDirectionType](#EntityItemAccessListInterfaceDirectionType)  (0..1) |  
||<div>Element with the direction the ACL is applied on an interface.</div>|  
| acl_config_lines | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the value returned with all config lines of the ACL.</div>|  
| config_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the value returned with one ACL config line at a time.</div>|  
  
______________
  
## <a name="bgpneighbor_item"></a>< bgpneighbor_item >

Stores information about bgp neighbors configured in bgp instances.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| neighbor | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the bgp neighbor.</div>|  
| password | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the bgp authentication password, if configured. If Encryption type is configured it should be included in the password string. For example '0 cisco123'.</div>|  
  
______________
  
## <a name="global_item"></a>< global_item >

Sotres information about the existence of a particular line in the ios config file under the global context.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| global_command | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="interface_item"></a>< interface_item >

The interface_item represents an IOS interface and its configuration options.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the interface name.</div>|  
| ip_directed_broadcast_command | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>Element that is true if the directed broadcast command is enabled on the interface. The default is false.</div>|  
| ~~no_ip_directed_broadcast_command~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div></div>~~|  
| proxy_arp_command | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>Element that is true if the proxy_arp command is enabled on the interface. The default is true.</div>|  
| shutdown_command | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>Element that is true if the interface is shut down. The default is false.</div>|  
| hardware_addr | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the interface hardware (MAC) address.</div>|  
| ipv4_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>Element with the interface IPv4 address and mask. This element should only allow 'ipv4_address' of the oval:SimpleDatatypeEnumeration.</div>|  
| ipv6_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..unbounded) |  
||<div>Element with the interface IPv6 address and mask. This element should only allow 'ipv6_address' of the oval:SimpleDatatypeEnumeration.</div>|  
| ipv4_access_list | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..2) |  
||<div>Element with the ingress or egress IPv4 ACL name applied on the interface.</div>|  
| ipv6_access_list | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..2) |  
||<div>Element with the ingress or egress IPv6 ACL name applied on the interface.</div>|  
| crypto_map | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the crypto map name applied to the interface.</div>|  
| ipv4_urpf_command | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the uRPF command for IPv4 under the interface.</div>|  
| ipv6_urpf_command | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the uRPF command for IPv6 under the interface.</div>|  
| ~~urpf_command~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>Element with the uRPF command under the interface.</div>~~|  
| switchport_trunk_encapsulation | [ios-sc:EntityItemTrunkEncapType](#EntityItemTrunkEncapType)  (0..1) |  
||<div>Element with the switchport trunk encapsulation option configured on the interface (if applicable).</div>|  
| switchport_mode | [ios-sc:EntityItemSwitchportModeType](#EntityItemSwitchportModeType)  (0..1) |  
||<div>Element with the switchport mode option configured on the interface (if applicable).</div>|  
| switchport_native_vlan | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>Element with the trunk native vlan configured on the interface (if applicable).</div>|  
| switchport_access_vlan | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>Element with the access vlan configured on the interface (if applicable).</div>|  
| switchport_trunked_vlans | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the vlans that are trunked configured on the interface (if applicable).</div>|  
| switchport_pruned_vlans | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the vlans that are pruned from the trunk (if applicable).</div>|  
| switchport_port_security | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the switchport port-security commands configured on the interface (if applicable).</div>|  
  
______________
  
## <a name="line_item"></a>< line_item >

Stores the properties of specific lines in the ios config file.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| show_subcommand | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the SHOW sub-command.</div>|  
| config_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The value returned from by the specified SHOW sub-command.</div>|  
  
______________
  
## <a name="router_item"></a>< router_item >

Stores commands that are part of a IOS 'router' command configuration. For example 'router bgp 123'.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [ios-sc:EntityItemRoutingProtocolType](#EntityItemRoutingProtocolType)  (0..1) |  
||<div>Element with the routing protocol.</div>|  
| id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Element with the IOS router id.</div>|  
| network | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the subnet in the network command of the router instance. The area can be included in the string for OSPF.</div>|  
| bgp_neighbor | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the BGP neighbors, if applicable.</div>|  
| ospf_authentication_area | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..unbounded) |  
||<div>Element with the OSPF area that is authenticated, if applicable.</div>|  
| router_config_lines | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with all config lines of the router.</div>|  
  
______________
  
## <a name="routingprotocolauthintf_item"></a>< routingprotocolauthintf_item >

Stores information for routing protocol authentication configured under specific interfaces.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| interface | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the interface.</div>|  
| protocol | [ios-sc:EntityItemRoutingProtocolType](#EntityItemRoutingProtocolType)  (0..1) |  
||<div>Element with the routing protocol.</div>|  
| id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Element with the routing protocol id.</div>|  
| auth_type | [ios-sc:EntityItemRoutingAuthTypeStringType](#EntityItemRoutingAuthTypeStringType)  (0..1) |  
||<div>Element with the routing protocol authentication type.</div>|  
| ospf_area | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>Element with the OSPF area that is authenticated, if applicable.</div>|  
| key_chain | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of the key chain, if applicable.</div>|  
  
______________
  
## <a name="section_item"></a>< section_item >

Stores command that are part of a IOS configuration section. For example all configuration lines under an interface. It should not store configurations for configs that already have a separate item. For example BGP has a router item and should not also be stored in a section_item.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| section_command | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the section command.</div>|  
| section_config_lines | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with all config lines of the section.</div>|  
| config_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with one config line of the section at a time.</div>|  
  
______________
  
## <a name="snmp_item"></a>< snmp_item >

Stores results from collecting lines under the global context associated with snmp.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| access_list | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| community_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="snmpcommunity_item"></a>< snmpcommunity_item >

Stores information about an SNMP community configuration in IOS. That information includes the community name, the view (if it applies) name, the read-write mode and the ACLs names applied.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP community name.</div>|  
| view | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the view that restricts the OIDs of this community.</div>|  
| mode | [ios-sc:EntityItemSNMPModeStringType](#EntityItemSNMPModeStringType)  (0..1) |  
||<div>Element with the read-write privileges of the community.</div>|  
| ipv4_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv4 ACL name applied to the community.</div>|  
| ipv6_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv6 ACL name applied to the community.</div>|  
  
______________
  
## <a name="snmpgroup_item"></a>< snmpgroup_item >

Stores information about an SNMP group configuration in IOS. That information includes the group name, the SNMP version, the IPv4 or IPv6 ACL it is applied toand the read, write and/or notify views applied to the group.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP group name.</div>|  
| version | [ios-sc:EntityItemSNMPVersionStringType](#EntityItemSNMPVersionStringType)  (0..1) |  
||<div>Element with the SNMP version of the group.</div>|  
| snmpv3_sec_level | [ios-sc:EntityItemSNMPSecLevelStringType](#EntityItemSNMPSecLevelStringType)  (0..1) |  
||<div>Element with the SNMPv3 security configure for the group.</div>|  
| ipv4_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv4 ACL name applied to the group.</div>|  
| ipv6_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv6 ACL name applied to the group.</div>|  
| read_view | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP read view applied to the group.</div>|  
| write_view | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP write view applied to the group.</div>|  
| notify_view | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP notify view applied to the group.</div>|  
  
______________
  
## <a name="snmphost_item"></a>< snmphost_item >

Stores information about the SNMP host configuration in IOS. That information includes the host, the community or user strings, the SNMP version, the snmp security (if the SNMP version is SNMPv3) and the SNMP traps.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| host | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP host address or hostname.</div>|  
| community_or_user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the community string or SNMPv3 user configured for the host.</div>|  
| version | [ios-sc:EntityItemSNMPVersionStringType](#EntityItemSNMPVersionStringType)  (0..1) |  
||<div>Element with the SNMP version.</div>|  
| snmpv3_sec_level | [ios-sc:EntityItemSNMPSecLevelStringType](#EntityItemSNMPSecLevelStringType)  (0..1) |  
||<div>Element with the SNMPv3 security configure for the host.</div>|  
| traps | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP traps configured.</div>|  
  
______________
  
## <a name="snmpuser_item"></a>< snmpuser_item >

Stores information about an SNMP user configuration in IOS. That information includes the user name, the SNMP group he belongs to, the SNMP version, the IPv4 or IPv6 ACL it is applied to, the Security Level and the Authentication type that apply to the user (for SNMPv3).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP user name.</div>|  
| group | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP group the user belongs to.</div>|  
| version | [ios-sc:EntityItemSNMPVersionStringType](#EntityItemSNMPVersionStringType)  (0..1) |  
||<div>Element with the SNMP version of the user.</div>|  
| ipv4_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv4 ACL name applied to the user.</div>|  
| ipv6_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv6 ACL name applied to the user.</div>|  
| priv | [ios-sc:EntityItemSNMPPrivStringType](#EntityItemSNMPPrivStringType)  (0..1) |  
||<div>Element with the SNMP encryption type for the user (for SNMPv3).</div>|  
| auth | [ios-sc:EntityItemSNMPAuthStringType](#EntityItemSNMPAuthStringType)  (0..1) |  
||<div>Element with the SNMP authentication type for the user (for SNMPv3).</div>|  
  
______________
  
## <a name="snmpview_item"></a>< snmpview_item >

Stores information about an SNMP view configuration in IOS. That information includes the view name, the mib_family that the view uses and the included or excluded option of the mib family in the view.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP view name.</div>|  
| mib_family | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP MIB family of the view.</div>|  
| include | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Element that is true if the included option is used in the view.</div>|  
  
______________
  
## <a name="tclsh_item"></a>< tclsh_item >

The tclsh item holds information about the availability of tcl on the IOS operating system. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| available | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This boolean entity describes whether TCLSH is available on the system. A value of true means that TCLSH is available. Per Cisco documentation, the accepted way to see if the device supports tcl functionality is to enter the tcl shell. If the attempt results in a tcl prompt then the device supports tclsh and has it enabled.</div>|  
  
______________
  
## <a name="version_item"></a>< version_item >

The version_item holds information about the version of the IOS operating system. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| ~~major_release~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>The major_release is a combination of train and rebuild information and is used by Cisco advisories to identify major releases.</div>~~|  
| ~~train_number~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>The train number is the dotted version that starts a version string. For example the version string 12.2(3)T has a train number of 12.2.</div>~~|  
| major_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The major_version entity specifies the major version piece of the version string. The value is an integer and in the example 12.4(9)T0a the major version is '12'.</div>|  
| minor_version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The minor_version entity specifies the minor version piece of the version string. The value is an integer and in the example 12.4(9)T0a the minor version is '4'.</div>|  
| release | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The release entity specifies the release piece of the version string. The value is an integer and in the example 12.4(9)T0a the release is '9'.</div>|  
| train_identifier | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The train identifier is the type of Train. For example the version string 12.2(3)T has a train identifier of T. Please see the EntityItemTrainIdentifierType for more information about the different train identifiers.</div><div>The train_identifier entity specifies the type of train represented in the version string. The value is a string and in the example 12.4(9)T0a the train identifier is 'T'. The following explaination from Wikipedia should help explain the different train identifiers. Cisco IOS releases are split into several "trains", each containing a different set of features. Trains more or less map onto distinct markets or groups of customers that Cisco is targeting. The 'mainline' train is designed to be the most stable release the company can offer, and its feature set never expands during its lifetime. Updates are released only to address bugs in the product. The previous technology train becomes the source for the current mainline train--for example, the 12.1T train becomes the basis for the 12.2 mainline. Therefore, to determine the features available in a particular mainline release, look at the previous T train release. The 'T' (Technology) train, gets new features and bug fixes throughout its life, and is therefore less stable than the mainline. (In releases prior to Cisco IOS Release 12.0, the P train served as the Technology train.) The 'S' (Service Provider) train, runs only on the company's core router products and is heavily customized for Service Provider customers. The 'E' (Enterprise) train, is customized for implementation in enterprise environments. The 'B' (broadband) train, support internet based broadband features. The 'XA', 'Xb' ... (special functionality) train, needs to be documented. There are other trains from time to time, designed for specific needs -- for example, the 12.0AA train contained new code required for Cisco's AS5800 product.</div>|  
| rebuild | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The rebuild entity specifies the rebuild piece of the version string The value is an integer and in the example 12.4(9)T0a the rebuild is '0'. Often a rebuild is compiled to fix a single specific problem or vulnerability for a given IOS version. For example, 12.1(8)E14 is a Rebuild, the 14 denoting the 14th rebuild of 12.1(8)E. Rebuilds are produced to either quickly repair a defect, or to satisfy customers who do not want to upgrade to a later major revision because they may be running critical infrastructure on their devices, and hence prefer to minimise change and risk.</div>|  
| subrebuild | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The subrebuild entity specifies the subrebuild piece of the version string. The value is a string and in the example 12.4(9)T0a the subrebuild is 'a'.</div>|  
| mainline_rebuild | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The mainline_rebuild entity specifies the mainline rebuild piece of the version string. The mainline rebuild is just a regular rebuild release against the mainline operating system release (e.g. the branch of development that would typically be called "the trunk" that isn't associated with a train). Since there is no train identifier to stick the rebuild release after, they stick a alphabetic character inside the parens holding the maintenance release number. For example, 12.4(5b) is the second rebuild of the 12.4(5) maintenance release.</div>|  
| version_string | [oval-sc:EntityItemIOSVersionType](oval-system-characteristics-schema.md#EntityItemIOSVersionType)  (0..1) |  
||<div>The version entity holds the raw string output of a 'show version' command.</div>|  
  
## <a name="EntityItemAccessListInterfaceDirectionType"></a>== EntityItemAccessListInterfaceDirectionType ==

The EntityItemAccessListInterfaceDirectionType complex type restricts a string value to a specific set of values: IN, OUT. These values describe the inbound or outbound ACL direction on an interface in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| IN |  |  
| OUT |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemAccessListIPVersionType"></a>== EntityItemAccessListIPVersionType ==

The EntityItemRoutingProtocolType complex type restricts a string value to a specific set of values: IPV4, IPV6. These values describe if an ACL is for IPv4 or IPv6 in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| IPV4 |  |  
| IPV6 |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemAccessListUseType"></a>== EntityItemAccessListUseType ==

The EntityItemAccessListUseType complex type restricts a string value to a specific set of values: INTERFACE, CRYPTO_MAP_MATCH, CLASS_MAP_MATCH, ROUTE_MAP_MATCH, IGMP_FILTER, VTY. These values describe the ACL use in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| INTERFACE |  |  
| CRYPTO_MAP_MATCH |  |  
| CLASS_MAP_MATCH |  |  
| ROUTE_MAP_MATCH |  |  
| IGMP_FILTER |  |  
| VTY |  |  
| ~~NONE~~ | > :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** The EntityStateSimpleBaseType check_existence attribute serves the same purpose as this enumeration value.<br />**Comment:** This AccessListUseType enumeration value has been deprecated and may be removed in a future version of the language.<br /> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemRoutingAuthTypeStringType"></a>== EntityItemRoutingAuthTypeStringType ==

The EntityItemRoutingAuthTypeStringType complex type restricts a string value to a specific set of values: CLEARTEXT, MESSAGE_DIGEST. These values describe the routing protocol authentication types used in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| CLEARTEXT |  |  
| MESSAGE_DIGEST |  |  
| ~~NULL~~ | > :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** The NULL authentication area type is never declared in an interface ip ospf command context.<br />**Comment:** This RoutingAuthTypeStringType enumeration value has been deprecated and may be removed in a future version of the language.<br /> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemRoutingProtocolType"></a>== EntityItemRoutingProtocolType ==

The EntityItemRoutingProtocolType complex type restricts a string value to a specific set of values: EIGRP, OSPF, BGP, RIP, RIPV2, ISIS. These values describe the routing protocol used in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| EIGRP |  |  
| OSPF |  |  
| BGP |  |  
| RIP |  |  
| RIPV2 |  |  
| ISIS |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemSNMPVersionStringType"></a>== EntityItemSNMPVersionStringType ==

The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco IOS configuration. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| 1 |  |  
| 2C |  |  
| 3 |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemSNMPSecLevelStringType"></a>== EntityItemSNMPSecLevelStringType ==

The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| PRIV |  |  
| AUTH |  |  
| NO_AUTH |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemSNMPModeStringType"></a>== EntityItemSNMPModeStringType ==

The EntityItemSNMPModeStringType complex type restricts a string value to a specific set of values: RO, RW. These values describe the SNMP mode (read-only, read-write) in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| RO |  |  
| RW |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemSNMPAuthStringType"></a>== EntityItemSNMPAuthStringType ==

The EntityItemSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| MD5 |  |  
| SHA |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemSNMPPrivStringType"></a>== EntityItemSNMPPrivStringType ==

The EntityItemSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES. These values describe the encryption algorithm in a Cisco IOS SNMPv3 related configurations. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DES |  |  
| 3DES |  |  
| AES |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemSwitchportModeType"></a>== EntityItemSwitchportModeType ==

The EntityItemRoutingProtocolType complex type restricts a string value to a specific set of values: DYNAMIC, TRUNK, ACCESS. These values describe the interface switchport mode types in IOS. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DYNAMIC |  |  
| TRUNK |  |  
| ACCESS |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemTrunkEncapType"></a>== EntityItemTrunkEncapType ==

The EntityItemTrunkEncapType complex type restricts a string value to a specific set of values: DOT1Q, ISL, NEGOTIATE. These values describe the interface trunk encapsulation types on an interfaces in IOS. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DOT1Q |  |  
| ISL |  |  
| NEGOTIATE |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
