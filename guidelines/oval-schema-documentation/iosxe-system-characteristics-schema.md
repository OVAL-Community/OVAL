# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: IOS-XE System Characteristics  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the IOS-XE specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Thanks to Omar Santos and Panos Kampanakis of Cisco for providing this test.

______________
  
## <a name="global_item"></a>< global_item >

Sotres information about the existence of a particular line in the IOS-XE config file under the global context

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| global_command | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The global_command entity identifies a specific line in the IOS-XE config file under the global context.</div>|  
  
______________
  
## <a name="line_item"></a>< line_item >

Stores the properties of specific lines in the IOS-XE config file.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| show_subcommand | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the SHOW sub-command.</div>|  
| config_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The value returned from by the specified SHOW sub-command.</div>|  
  
______________
  
## <a name="version_item"></a>< version_item >

The version_item holds information about the version of the IOS-XE operating system. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| ~~platform~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>The platform entity specifies the platform that is running the IOS-XE software. For example if could be asr1000.</div>~~|  
| ~~rp~~ | ~~[oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1~~) |  
||~~<div>The rp entity specifies the routing processor running the IOS-XE software.</div>~~|  
| ~~pkg~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>The pkg entity specifies the consolidated IOS-XE packages in the image. For example it could be adventservicesk9.</div>~~|  
| version_string | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The train entity specifies the entire IOS-XE version string, for example, '03.13.02.S'.</div>|  
| major_release | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The major_release entity specifies the major version piece of the version string. The value is an integer and in the example 03.13.02.S the major_release is '3'.</div>|  
| release | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The release entity specifies the release piece of the version string. The value is an integer and in the example 03.13.02.S the release version is '13'.</div>|  
| rebuild | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The rebuild entity specifies the release piece of the version string. The value is an integer and in the example 03.13.02.S the rebuild is '2'.</div>|  
| train | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The train entity specifies the train piece of the version string. The value is a string and in the example 03.13.02.S the train is 'S'.</div>|  
| ~~ios_release~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>The ios_release entity specifies the IOS release the IOS-XE was derived from. The value is an string and in the example ASR1000rp1-ipbasek9.03.04.02.122-33.SR.bin the ios_release version is '122-33'</div>~~|  
| ~~ios_train~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>The ios_train entity specifies the IOS release the IOS-XE was derived from. The value is an integer and in the example ASR1000rp1-ipbasek9.03.04.02.122-33.SR.bin the ios_release version is 'SR'</div>~~|  
  
______________
  
## <a name="section_item"></a>< section_item >

Stores command that are part of a IOS-XE configuration section. For example all configuration lines under an interface. It should not store configurations for configs that already have a separate item. For example BGP has a router item and should not also be stored in a section_item.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| section_command | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the section command.</div>|  
| section_config_lines | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with all config lines of the section</div>|  
| config_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with one config line of the section at a time</div>|  
  
______________
  
## <a name="interface_item"></a>< interface_item >

The interface_item represents an IOS-XE interface and its configuration options.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the interface name.</div>|  
| ip_directed_broadcast | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Element that is true if the directed broadcast command is enabled on the interface. The default is false.</div>|  
| proxy_arp | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Element that is true if the proxy_arp command is enabled on the interface. The default is true.</div>|  
| shutdown | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
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
| switchport_trunk_encapsulation | [iosxe-sc:EntityItemTrunkEncapType](#EntityItemTrunkEncapType)  (0..1) |  
||<div>Element with the switchport trunk encapsulation option configured on the interface (if applicable).</div>|  
| switchport_mode | [iosxe-sc:EntityItemSwitchportModeType](#EntityItemSwitchportModeType)  (0..1) |  
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
  
## <a name="router_item"></a>< router_item >

Stores commands that are part of a IOS-XE 'router' command configuration. For example 'router bgp 123'.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [iosxe-sc:EntityItemRoutingProtocolType](#EntityItemRoutingProtocolType)  (0..1) |  
||<div>Element with the routing protocol.</div>|  
| id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Element with the IOS-XE router id.</div>|  
| network | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the subnet in the network command of the router instance. The area can be included in the string for OSPF.</div>|  
| bgp_neighbor | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the BGP neighbors, if applicable.</div>|  
| ospf_authentication_area | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..unbounded) |  
||<div>Element with the OSPF area that is authenticated, if applicable.</div>|  
| router_config_lines | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with all config lines of the router.</div>|  
  
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
  
## <a name="routingprotocolauthintf_item"></a>< routingprotocolauthintf_item >

Stores information for routing protocol authentication configured under specific interfaces.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| interface | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the interface.</div>|  
| protocol | [iosxe-sc:EntityItemRoutingProtocolType](#EntityItemRoutingProtocolType)  (0..1) |  
||<div>Element with the routing protocol.</div>|  
| id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Element with the routing protocol id.</div>|  
| auth_type | [iosxe-sc:EntityItemRoutingAuthTypeStringType](#EntityItemRoutingAuthTypeStringType)  (0..1) |  
||<div>Element with the routing protocol authentication type.</div>|  
| ospf_area | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>Element with the OSPF area that is authenticated, if applicable.</div>|  
| key_chain | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of the key chain, if applicable.</div>|  
  
______________
  
## <a name="acl_item"></a>< acl_item >

Stores command that are part of a IOS-XE configuration section. For example all configuration lines under an interface. It should not store configurations for configs that already have a separate item. For example BGP has a router item and should not also be stored in a acl_item.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of the ACL.</div>|  
| ip_version | [iosxe-sc:EntityItemAccessListIPVersionType](#EntityItemAccessListIPVersionType)  (0..1) |  
||<div>Element with the IP version of the ACL.</div>|  
| use | [iosxe-sc:EntityItemAccessListUseType](#EntityItemAccessListUseType)  (0..1) |  
||<div>Element with the feature where the ACL is used. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.</div>|  
| used_in | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of where the ACL is used. For example if use is 'INTERFACE', use_in will be the name of the interface. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.</div>|  
| interface_direction | [iosxe-sc:EntityItemAccessListInterfaceDirectionType](#EntityItemAccessListInterfaceDirectionType)  (0..1) |  
||<div>Element with the direction the ACL is applied on an interface.</div>|  
| acl_config_lines | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the value returned with all config lines of the ACL.</div>|  
| config_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the value returned with one ACL config line at a time.</div>|  
  
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
| version | [iosxe-sc:EntityItemSNMPVersionStringType](#EntityItemSNMPVersionStringType)  (0..1) |  
||<div>Element with the SNMP version.</div>|  
| snmpv3_sec_level | [iosxe-sc:EntityItemSNMPSecLevelStringType](#EntityItemSNMPSecLevelStringType)  (0..1) |  
||<div>Element with the SNMPv3 security configure for the host.</div>|  
| traps | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP traps configured.</div>|  
  
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
| mode | [iosxe-sc:EntityItemSNMPModeStringType](#EntityItemSNMPModeStringType)  (0..1) |  
||<div>Element with the read-write privileges of the community.</div>|  
| ipv4_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv4 ACL name applied to the community.</div>|  
| ipv6_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv6 ACL name applied to the community</div>|  
  
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
| version | [iosxe-sc:EntityItemSNMPVersionStringType](#EntityItemSNMPVersionStringType)  (0..1) |  
||<div>Element with the SNMP version of the user.</div>|  
| ipv4_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv4 ACL name applied to the user.</div>|  
| ipv6_acl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the IPv6 ACL name applied to the user.</div>|  
| priv | [iosxe-sc:EntityItemSNMPPrivStringType](#EntityItemSNMPPrivStringType)  (0..1) |  
||<div>Element with the SNMP encryption type for the user (for SNMPv3).</div>|  
| auth | [iosxe-sc:EntityItemSNMPAuthStringType](#EntityItemSNMPAuthStringType)  (0..1) |  
||<div>Element with the SNMP authentication type for the user (for SNMPv3).</div>|  
  
______________
  
## <a name="snmpgroup_item"></a>< snmpgroup_item >

Stores information about an SNMP group configuration in IOS. That information includes the group name, the SNMP version, the IPv4 or IPv6 ACL it is applied toand the read, write and/or notify views applied to the group.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP group name.</div>|  
| version | [iosxe-sc:EntityItemSNMPVersionStringType](#EntityItemSNMPVersionStringType)  (0..1) |  
||<div>Element with the SNMP version of the group.</div>|  
| snmpv3_sec_level | [iosxe-sc:EntityItemSNMPSecLevelStringType](#EntityItemSNMPSecLevelStringType)  (0..1) |  
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
  
## <a name="EntityItemTrunkEncapType"></a>== EntityItemTrunkEncapType ==

The EntityItemTrunkEncapType complex type restricts a string value to a specific set of values: DOT1Q, ISL, NEGOTIATE. These values describe the interface trunk encapsulation types on an interfaces in IOS. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DOT1Q |  |  
| ISL |  |  
| NEGOTIATE |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSwitchportModeType"></a>== EntityItemSwitchportModeType ==

The EntityObjectRoutingProtocolType complex type restricts a string value to a specific set of values: DYNAMIC, TRUNK, ACCESS. These values describe the interface switchport mode types in IOS. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DYNAMIC |  |  
| TRUNK |  |  
| ACCESS |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemRoutingProtocolType"></a>== EntityItemRoutingProtocolType ==

The EntityItemRoutingProtocolType complex type restricts a string value to a specific set of values: EIGRP, OSPF, BGP, RIP, RIPV2, ISIS. These values describe the routing protocol used in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| EIGRP |  |  
| OSPF |  |  
| BGP |  |  
| RIP |  |  
| RIPV2 |  |  
| ISIS |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemRoutingAuthTypeStringType"></a>== EntityItemRoutingAuthTypeStringType ==

The EntityItemRoutingAuthTypeStringType complex type restricts a string value to a specific set of values: CLEARTEXT, MESSAGE_DIGEST. These values describe the routing protocol authentication types used in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| CLEARTEXT |  |  
| MESSAGE_DIGEST |  |  
| ~~NULL~~ | > :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** The NULL authentication area type is never declared in an interface ip ospf command context.<br />**Comment:** This RoutingAuthTypeStringType enumeration value has been deprecated and may be removed in a future version of the language.<br /> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSNMPVersionStringType"></a>== EntityItemSNMPVersionStringType ==

The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| 1 |  |  
| 2C |  |  
| 3 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSNMPSecLevelStringType"></a>== EntityItemSNMPSecLevelStringType ==

The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| PRIV |  |  
| AUTH |  |  
| NO_AUTH |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSNMPModeStringType"></a>== EntityItemSNMPModeStringType ==

The EntityItemSNMPModeStringType complex type restricts a string value to a specific set of values: RO, RW. These values describe the SNMP mode (read-only, read-write) in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| RO |  |  
| RW |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSNMPAuthStringType"></a>== EntityItemSNMPAuthStringType ==

The EntityItemSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| MD5 |  |  
| SHA |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSNMPPrivStringType"></a>== EntityItemSNMPPrivStringType ==

The EntityItemSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES. These values describe the encryption algorithm in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DES |  |  
| 3DES |  |  
| AES |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemAccessListIPVersionType"></a>== EntityItemAccessListIPVersionType ==

The EntityItemRoutingProtocolType complex type restricts a string value to a specific set of values: IPV4, IPV6. These values describe if an ACL is for IPv4 or IPv6 in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| IPV4 |  |  
| IPV6 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemAccessListUseType"></a>== EntityItemAccessListUseType ==

The EntityItemAccessListUseType complex type restricts a string value to a specific set of values: INTERFACE, CRYPTO_MAP_MATCH, CLASS_MAP_MATCH, ROUTE_MAP_MATCH, IGMP_FILTER, VTY. These values describe the ACL use in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with error conditions.

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
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemAccessListInterfaceDirectionType"></a>== EntityItemAccessListInterfaceDirectionType ==

The EntityItemAccessListInterfaceDirectionType complex type restricts a string value to a specific set of values: IN, OUT. These values describe the inbound or outbound ACL direction on an interface in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| IN |  |  
| OUT |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
