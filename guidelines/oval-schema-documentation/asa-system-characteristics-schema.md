# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Cisco ASA System Characteristics  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Cisco ASA specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Thanks to Omar Santos and Panos Kampanakis of Cisco for providing these tests.

______________
  
## <a name="acl_item"></a>< acl_item >

Stores command that are part of a asa configuration section. For example all configuration lines under an interface. It should not store configurations for configs that already have a separate item. For example OSPF has a router item and should not also be stored in a acl_item.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of the ACL.</div>|  
| ip_version | [asa-sc:EntityItemAccessListIPVersionType](#EntityItemAccessListIPVersionType)  (0..1) |  
||<div>Element with the IP version of the ACL.</div>|  
| use | [asa-sc:EntityItemAccessListUseType](#EntityItemAccessListUseType)  (0..1) |  
||<div>Element with the feature where the ACL is used. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.</div>|  
| used_in | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of where the ACL is used. For example if use is 'INTERFACE', use_in will be the name of the interface. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.</div>|  
| interface_direction | [asa-sc:EntityItemAccessListInterfaceDirectionType](#EntityItemAccessListInterfaceDirectionType)  (0..1) |  
||<div>Element with the direction the ACL is applied to an interface using the access-group command.</div>|  
| acl_config_lines | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the value returned with all config lines of the ACL.</div>|  
| config_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the value returned with one ACL config line at a time.</div>|  
  
______________
  
## <a name="class_map_item"></a>< class_map_item >

Stores information about the MPF class-map configuration in ASA. That information includes the name, the type, the inspection type, the match type, the match commands, the policy-map or class-map it is used and the action in the policy-map.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>element with the name of the class-map.</div>|  
| type | [asa-sc:EntityItemClassMapType](#EntityItemClassMapType)  (0..1) |  
||<div>Element with the type of the 'class-map nameX type' command.</div>|  
| type_inspect | [asa-sc:EntityItemInspectionType](#EntityItemInspectionType)  (0..1) |  
||<div>Element with the inspection type of the class-map ('class-map type inspect' command).</div>|  
| match_all_any | [asa-sc:EntityItemMatchType](#EntityItemMatchType)  (0..1) |  
||<div>Element with the 'match-all' or 'match-any' type of the class-map. ASA's defaults to 'match-any'.</div>|  
| match | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the match command in the class-map.</div>|  
| used_in_class_map | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the name of the class-map (for nested class-maps) that this class-map is used in.</div>|  
| used_in_policy_map | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of the policy-map that this class-map is used in.</div>|  
| policy_map_action | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the command that identifies the action for the class. For example that could be 'inspect protocolX', 'drop' or 'police 1000' or 'set connection advanced-options tcpmapX'.</div>|  
  
______________
  
## <a name="interface_item"></a>< interface_item >

Stores information about interfaces on an Cisco ASA device.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the interface name.</div>|  
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
| ipv4_v6_access_list | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..2) |  
||<div>Element with the ingress or egress UACL name applied on the interface.</div>|  
| crypto_map | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the crypto map name applied to the interface.</div>|  
| ipv4_urpf_command | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the uRPF command for IPv4 under the interface.</div>|  
| ipv6_urpf_command | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the uRPF command for IPv6 under the interface.</div>|  
| ~~urpf_command~~ | ~~[oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1~~) |  
||~~<div>Element with the uRPF command under the interface.</div>~~|  
  
______________
  
## <a name="line_item"></a>< line_item >

Stores the configuration information associated with the evaluation of a SHOW sub-command on Cisco ASA. This includes the name of ths sub-command and the corresponding config line.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| show_subcommand | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the SHOW sub-command.</div>|  
| config_line | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The value returned from by the specified SHOW sub-command.</div>|  
  
______________
  
## <a name="policy_map_item"></a>< policy_map_item >

Stores information about a policy-map configuration in ASA. That information includes the policy-map name, the inspection type, the paremeters, the match and action commands, the policy-map it is used in and the service-policy that applies it.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the policy-map name.</div>|  
| type_inspect | [asa-sc:EntityItemInspectionType](#EntityItemInspectionType)  (0..1) |  
||<div>Element with the inspection type of the class-map.</div>|  
| parameters | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the parameter commands of the policy-map.</div>|  
| match_action | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the in-line match command and the action in the policy-map seperated by delimeter '_-_'. For example an http inspect policy-map could have 'match body regex regexnameX' and the action be 'drop'. Then this element would be 'body regex regexnameX_-_drop'.</div>|  
| used_in | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the name of policy-map that includes the policy-map('policy-map type inspect' in this case) or the serice-policy that applies the policy-map (non 'type inspect' in this case). For example, the former could be when a http inspection policy-map policymapnameX is used in a policy-map policymapnameY as its 'inspect http policymapnameX' command. The latter could be when policymapnameY is applied globally with 'service-policy policymapnameY global'. There is no chance where a policy-map can be used in both a policy-map and a service policy at the same time.</div>|  
  
______________
  
## <a name="service_policy_item"></a>< service_policy_item >

Stores information about an MPF service-policy configuration in ASA. That information includes the service-policy name, where it is applied and the interface it is applied (if applicable).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the service-policy name.</div>|  
| applied | [asa-sc:EntityItemApplyServicePolicyType](#EntityItemApplyServicePolicyType)  (0..1) |  
||<div>Element with where the service-policy is applied.</div>|  
| interface | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the interface the service-policy is applied (of the 'applied' element has value "INTERFACE').</div>|  
  
______________
  
## <a name="snmp_host_item"></a>< snmp_host_item >

Stores information about the SNMP host configuration in ASA. That information includes the host, the community or user strings, the SNMP version, the snmp security (if the SNMP version is SNMPv3) and the SNMP traps.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| interface | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the interface configured for the host.</div>|  
| host | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP host address or hostname.</div>|  
| snmpv3_user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the community sting or SNMPv3 user configured for the host.</div>|  
| version | [asa-sc:EntityItemSNMPVersionStringType](#EntityItemSNMPVersionStringType)  (0..1) |  
||<div>Element with the SNMP version.</div>|  
| poll | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Element used for when the SNMP polls are enabled for the host.</div>|  
| traps | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Element used for when the SNMP polls are enabled for the host.</div>|  
| udp_port | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Element used for the SNMP port configured for the host.</div>|  
  
______________
  
## <a name="snmp_user_item"></a>< snmp_user_item >

Stores information about an SNMP user configuration in ASA. That information includes the user name, the SNMP group he belongs to, the SNMP version, the IPv4 or IPv6 ACL it is applied to, the Security Level and the Authentication type that apply to the user (for SNMPv3).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP user name.</div>|  
| group | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP group the user belongs to.</div>|  
| priv | [asa-sc:EntityItemSNMPPrivStringType](#EntityItemSNMPPrivStringType)  (0..1) |  
||<div>Element with the SNMP encryption type for the user (for SNMPv3).</div>|  
| auth | [asa-sc:EntityItemSNMPAuthStringType](#EntityItemSNMPAuthStringType)  (0..1) |  
||<div>Element with the SNMP authentication type for the user (for SNMPv3).</div>|  
  
______________
  
## <a name="snmp_group_item"></a>< snmp_group_item >

Stores information about an SNMP group configuration in ASA. That information includes the group name, the SNMP version, the IPv4 or IPv6 ACL it is applied to and the read, write and/or notify views applied to the group.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the SNMP group name.</div>|  
| snmpv3_sec_level | [asa-sc:EntityItemSNMPSecLevelStringType](#EntityItemSNMPSecLevelStringType)  (0..1) |  
||<div>Element with the SNMPv3 security configure for the group.</div>|  
  
______________
  
## <a name="tcp_map_item"></a>< tcp_map_item >

Stores information about MPF tcp-map configuration in ASA. That information includes the tcp-map name and its configured options.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Element with the tcp-map name.</div>|  
| options | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>Element with the configured commends in the tcp-map. These could include TCP options, flags and other options of the tcp-map.</div>|  
  
______________
  
## <a name="version_item"></a>< version_item >

Stores the version information held within a Cisco ASA software release. The asa_release element specifies the whole ASA version information. The asa_major_release, asa_minor_release and asa_build elements specify seperated parts of ASA software version information. For instance, if the ASA version is 8.4(2.3)49, then asa_release is 8.4(2.3)49, asa_major_release is 8.4, asa_minor_release is 2.3 and asa_build is 49. See the SHOW VERSION command within ASA for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| asa_release | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The asa_release element specifies the whole ASA version information.</div>|  
| asa_major_release | [oval-sc:EntityItemVersionType](oval-system-characteristics-schema.md#EntityItemVersionType)  (0..1) |  
||<div>The asa_major_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_major_release of 8.4.</div>|  
| asa_minor_release | [oval-sc:EntityItemVersionType](oval-system-characteristics-schema.md#EntityItemVersionType)  (0..1) |  
||<div>The asa_minor_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_minor_release of 2.3.</div>|  
| asa_build | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The asa_build is an integer. For example the asa_release 8.4(2.3)49 has a asa_build of 49.</div>|  
  
## <a name="EntityItemAccessListIPVersionType"></a>== EntityItemAccessListIPVersionType ==

The EntityItemAccessListIPVersionType complex type restricts a string value to a specific set of values: IPV4, IPV6 or IPV4_V6 (both). These values describe if an ACL is for IPv4 or both for UACLs or IPv6 in a Cisco asa configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| IPV4 |  |  
| IPV6 |  |  
| IPV4_V6 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemAccessListUseType"></a>== EntityItemAccessListUseType ==

The EntityItemAccessListUseType complex type restricts a string value to a specific set of values: INTERFACE, INTERFACE_CP (control plane interface ACL), CRYPTO_MAP_MATCH, CLASS_MAP_MATCH, ROUTE_MAP_MATCH, IGMP_FILTER, NONE. These values describe the ACL use in a Cisco asa configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| INTERFACE |  |  
| INTERFACE_CP |  |  
| CRYPTO_MAP_MATCH |  |  
| CLASS_MAP_MATCH |  |  
| ROUTE_MAP_MATCH |  |  
| IGMP_FILTER |  |  
| NONE |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemAccessListInterfaceDirectionType"></a>== EntityItemAccessListInterfaceDirectionType ==

The EntityItemAccessListInterfaceDirectionType complex type restricts a string value to a specific set of values: IN, OUT. These values describe the inbound or outbound ACL direction on an interface in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| IN |  |  
| OUT |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemClassMapType"></a>== EntityItemClassMapType ==

The EntityItemClassMapType complex type restricts a string value to a specific set of values: INSPECT, REGEX, MANAGEMENT. These values describe the MPF class-map types in Cisco ASA MPF configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| INSPECT |  |  
| REGEX |  |  
| MANAGEMENT |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemInspectionType"></a>== EntityItemInspectionType ==

The EntityItemInspectionType complex type restricts a string value to a specific set of values. These values describe the MPF inspection types of class-map and policy-map configurations in Cisco ASA MPF configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DCERPC |  |  
| DNS |  |  
| ESMTP |  |  
| FTP |  |  
| GTP |  |  
| H323 |  |  
| HTTP |  |  
| IM |  |  
| IPV6 |  |  
| MGCP |  |  
| NETBIOS |  |  
| RADIUS-ACCOUNTING |  |  
| RTSP |  |  
| SCANSAFE |  |  
| SIP |  |  
| SKINNY |  |  
| SNMP |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemApplyServicePolicyType"></a>== EntityItemApplyServicePolicyType ==

The EntityItemApplyServicePolicyType complex type restricts a string value to a specific set of values: GLOBAL, INTERFACE. These values describe where a service-policy is applied in a Cisco ASA MPF configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| GLOBAL |  |  
| INTERFACE |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemMatchType"></a>== EntityItemMatchType ==

The EntityItemMatchType complex type restricts a string value to a specific set of values: ANY, ALL. These values describe the match type of a class-map in a Cisco ASA MPF configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| ANY |  |  
| ALL |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSNMPVersionStringType"></a>== EntityItemSNMPVersionStringType ==

The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| 1 |  |  
| 2C |  |  
| 3 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSNMPSecLevelStringType"></a>== EntityItemSNMPSecLevelStringType ==

The EntityItemSNMPSecLevelStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| PRIV |  |  
| AUTH |  |  
| NO_AUTH |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSNMPAuthStringType"></a>== EntityItemSNMPAuthStringType ==

The EntityItemSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| MD5 |  |  
| SHA |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
## <a name="EntityItemSNMPPrivStringType"></a>== EntityItemSNMPPrivStringType ==

The EntityItemSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES128, AES192, and AES256. These values describe the encryption algorithm in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DES |  |  
| 3DES |  |  
| AES128 |  |  
| AES192 |  |  
| AES256 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with error conditions.</div> |  
  
