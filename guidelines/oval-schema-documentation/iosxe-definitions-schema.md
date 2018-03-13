# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: IOS-XE Definition  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the IOS-XE specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Thanks to Omar Santos and Panos Kampanakis of Cisco for providing this test.

## Test Listing

 *[ global_test ](#global_test)  
 *[ line_test ](#line_test)  
 *[ version_test ](#version_test)  
 *[ interface_test ](#interface_test)  
 *[ section_test ](#section_test)  
 *[ router_test ](#router_test)  
 *[ bgpneighbor_test ](#bgpneighbor_test)  
 *[ routingprotocolauthintf_test ](#routingprotocolauthintf_test)  
 *[ acl_test ](#acl_test)  
 *[ snmphost_test ](#snmphost_test)  
 *[ snmpcommunity_test ](#snmpcommunity_test)  
 *[ snmpuser_test ](#snmpuser_test)  
 *[ snmpgroup_test ](#snmpgroup_test)  
 *[ snmpview_test ](#snmpview_test)  
  
______________
  
## <a name="global_test"></a>< global_test >

The global test is used to check for the existence of a particular line in the IOS-XE config file under the global context. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a global_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="global_object"></a>< global_object >

The global_object element is used by a global test to define the object to be evaluated. For the most part this object checks for existence and is used without a state comparision. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| global_command | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The global_command entity identifies a specific line in the IOS-XE config file under the global context.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="global_state"></a>< global_state >

The global_state element defines the different information that can be found in the IOS-XE config file under the global context. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| global_command | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The global_command entity identifies a specific line in the IOS-XE config file under the global context.</div>|  
  
______________
  
## <a name="line_test"></a>< line_test >

The line test is used to check the properties of specific output lines from a SHOW command, such as show running-config. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a line_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="line_object"></a>< line_object >

The line_object element is used by a line test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A line object consists of a show_subcommand entity that is the name of a SHOW sub-command to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| show_subcommand | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of a SHOW sub-command.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="line_state"></a>< line_state >

The line_state element defines the different information that can be used to evaluate the result of a specific SHOW sub-command. This includes the name of ths sub-command and the corresponding config line. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| show_subcommand | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the SHOW sub-command.</div>|  
| config_line | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned from by the specified SHOW sub-command.</div>|  
  
______________
  
## <a name="version_test"></a>< version_test >

The version_test is used to check the version of the IOS-XE operating system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="version_object"></a>< version_object >

The version_object element is used by a version_test to define the different version information associated with an IOS-XE system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="version_state"></a>< version_state >

The version_state element defines the version information held within a Cisco IOS-XE Train. A Cisco IOS-XE train is a vehicle for delivering releases that evolve from a common code base.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| ~~platform~~ | ~~[oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1~~) |  
||~~<div>The platform that is running the IOS-XE software. For example if could be asr1000.</div>~~|  
| ~~rp~~ | ~~[oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1~~) |  
||~~<div>The routing processor running the IOS-XE software.</div>~~|  
| ~~pkg~~ | ~~[oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1~~) |  
||~~<div>The consolidated IOS-XE packages in the image. For example it could be adventservicesk9.</div>~~|  
| version_string | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The entire IOS-XE version string, for example, '03.13.02.S'.</div>|  
| major_release | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The major version piece of the version string. The value is an integer, and in the example 03.13.02.S the major_release is '3'</div>|  
| release | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The minor release piece of the version string. The value is an integer, and in the example 03.13.02.S the release is '13'</div>|  
| rebuild | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The rebuild piece of the version string. The value is an integer, and in the example 03.13.02.S the rebuild is '2'</div>|  
| train | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The train piece of the version string. The value is a string, and in the example 03.13.02.S the train is 'S'</div>|  
| ~~ios_release~~ | ~~[oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1~~) |  
||~~<div>The IOS release the IOS-XE was derived from. The value is a string and in the example ASR1000rp1-ipbasek9.03.04.02.122-33.SR.bin the ios_release version is '122-33'</div>~~|  
| ~~ios_train~~ | ~~[oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1~~) |  
||~~<div>The IOS release the IOS-XE was derived from. The value is an integer and in the example ASR1000rp1-ipbasek9.03.04.02.122-33.SR.bin the ios_release version is 'SR'</div>~~|  
  
______________
  
## <a name="interface_test"></a>< interface_test >

The interface test is used to check for the existence of a particular interface on the Cisco IOS-XE device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a interface_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="interface_object"></a>< interface_object >

The interface_object element is used by an interface_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An interface_object consists of a name entity that is the name of the IOS-XE interface to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The interface name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="interface_state"></a>< interface_state >

The interface_state element defines the different information that can be used to evaluate the result of a specific IOS-XE interface. This includes the name, status, and address information about the interface. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The interface name.</div>|  
| ip_directed_broadcast | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Directed broadcast command enabled on the interface. The default is false.</div>|  
| proxy_arp | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Proxy arp enabled on the interface. The default is true.</div>|  
| shutdown | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Interface is shut down.</div>|  
| hardware_addr | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The interface hardware (MAC) address.</div>|  
| ipv4_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>The interface IPv4 address and mask. This element should only allow 'ipv4_address' of the oval:SimpleDatatypeEnumeration.</div>|  
| ipv6_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>The interface IPv6 address and mask. This element should only allow 'ipv6_address' of the oval:SimpleDatatypeEnumeration.</div>|  
| ipv4_access_list | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The ingress or egress IPv4 ACL name applied on the interface.</div>|  
| ipv6_access_list | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The ingress or egress IPv6 ACL name applied on the interface.</div>|  
| crypto_map | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The crypto map name applied to the interface.</div>|  
| ipv4_urpf_command | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv4 uRPF command under the interface.</div>|  
| ipv6_urpf_command | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv6 uRPF command under the interface.</div>|  
| ~~urpf_command~~ | ~~[oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1~~) |  
||~~<div>The uRPF command under the interface.</div>~~|  
| switchport_trunk_encapsulation | [iosxe-def:EntityStateTrunkEncapType](#EntityStateTrunkEncapType)  (0..1) |  
||<div>The switchport trunk encapsulation option configured on the interface (if applicable).</div>|  
| switchport_mode | [iosxe-def:EntityStateSwitchportModeType](#EntityStateSwitchportModeType)  (0..1) |  
||<div>The switchport mode option configured on the interface (if applicable).</div>|  
| switchport_native_vlan | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>The trunk native vlan configured on the interface (if applicable).</div>|  
| switchport_access_vlan | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>The access vlan configured on the interface (if applicable).</div>|  
| switchport_trunked_vlans | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The vlans that are trunked configured on the interface (if applicable).</div>|  
| switchport_pruned_vlans | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The vlans that are pruned from the trunk (if applicable).</div>|  
| switchport_port_security | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The switchport port-security commands configured on the interface (if applicable).</div>|  
  
______________
  
## <a name="section_test"></a>< section_test >

The section test is used to check the properties of specific output lines from a configuration section.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="section_object"></a>< section_object >

The section_object element is used by a section test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A section object consists of a section_command entity that is the name of a section command to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| section_command | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of a section command.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="section_state"></a>< section_state >

The section_state element defines the different information that can be used to evaluate the result of a specific section command. This includes the name of ths section_command and the corresponding config lines. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| section_command | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the section command.</div>|  
| section_config_lines | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned with all config lines of the section.</div>|  
| config_line | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned with one config line of the section at a time.</div>|  
  
______________
  
## <a name="router_test"></a>< router_test >

The router test is used to check the properties of specific output lines from a router configurated instance in IOS-XE.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="router_object"></a>< router_object >

The router_object element is used by a router test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A router object consists of a router protocol and router identifier entity.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [iosxe-def:EntityObjectRoutingProtocolType](#EntityObjectRoutingProtocolType)  (1..1) |  
||<div>The routing protocol of the router instance.</div>|  
| id | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The IOS-XE router id.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="router_state"></a>< router_state >

The router_state element defines the different information that can be used to evaluate the result of a specific router command. This includes the protocol of the router instance, the id, the networks, bgp neighbor, ospf authentication area commands and the corresponding config lines. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [iosxe-def:EntityStateRoutingProtocolType](#EntityStateRoutingProtocolType)  (1..1) |  
||<div>The routing protocol of the router instance. If there are more than one router configurations, for example ospf instances, different objects should be created for each.</div>|  
| id | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The IOS-XE router id</div>|  
| network | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The subnet in the network command of the router instance. The area can be included in the string for OSPF.</div>|  
| bgp_neighbor | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The BGP neighbors, if applicable.</div>|  
| ospf_authentication_area | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>The OSPF area that is authenticated, if applicable.</div>|  
| router_config_lines | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned with all config lines of the router instance.</div>|  
  
______________
  
## <a name="bgpneighbor_test"></a>< bgpneighbor_test >

The bgpneighbor test is used to check the bgp neighbpr properties of bgp instances instances in IOS.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="bgpneighbor_object"></a>< bgpneighbor_object >

The bgpneighbor_object element is used by a bgpneighbor test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A bgpneighbor object consists of a neighbor entity.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| neighbor | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The bgp neighbor.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="bgpneighbor_state"></a>< bgpneighbor_state >

The bgpneighbor_state element defines the different information that can be used to evaluate the result of a bgp neighbor configuration. This includes the neighbor and the password option, if configured. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| neighbor | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The bgp neighbor.</div>|  
| password | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The bgp authentication password, if configured. If Encryption type is configured it should be included in the password string. For example '0 cisco123'.</div>|  
  
______________
  
## <a name="routingprotocolauthintf_test"></a>< routingprotocolauthintf_test >

The routing protocol authentication interface test is used to check the properties of routing protocol authentication configured under interfaces in IOS.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="routingprotocolauthintf_object"></a>< routingprotocolauthintf_object >

The routingprotocolauthintf_object element is used by a routingprotocolauthintf test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A routingprotocolauthintf object consists of an interface and the routing protocol that is authenticated entity.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| interface | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The interface name.</div>|  
| protocol | [iosxe-def:EntityObjectRoutingProtocolType](#EntityObjectRoutingProtocolType)  (1..1) |  
||<div>The routing protocol.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="routingprotocolauthintf_state"></a>< routingprotocolauthintf_state >

The routingprotocolauthintf_state element defines the different information that can be used to evaluate the result of a specific routing protocol interface authentication configurations. This includes the interface, the protocol, the id, the authentication type, the ospf area, the key chain command and the corresponding config lines. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| interface | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The interface name.</div>|  
| protocol | [iosxe-def:EntityStateRoutingProtocolType](#EntityStateRoutingProtocolType)  (0..1) |  
||<div>The routing protocol.</div>|  
| id | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The routing protocol id, if applicable.</div>|  
| auth_type | [iosxe-def:EntityStateRoutingAuthTypeStringType](#EntityStateRoutingAuthTypeStringType)  (0..1) |  
||<div>The routing protocol authentication type.</div>|  
| ospf_area | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>The OSPF area that is authenticated, if applicable.</div>|  
| key_chain | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the key chain, if applicable.</div>|  
  
______________
  
## <a name="acl_test"></a>< acl_test >

The acl test is used to check the properties of specific output lines from an ACL configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="acl_object"></a>< acl_object >

The acl_object element is used by an acl test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An acl object consists of a an acl name and an IP version entity that is the name and the IP protocol version of the access-list to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the ACL.</div>|  
| ip_version | [iosxe-def:EntityObjectAccessListIPVersionType](#EntityObjectAccessListIPVersionType)  (1..1) |  
||<div>The IP version of the ACL.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="acl_state"></a>< acl_state >

The acl_state element defines the different information that can be used to evaluate the result of a specific ACL configuration. This includes the name of ths ACL and the corresponding config lines. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the ACL.</div>|  
| ip_version | [iosxe-def:EntityStateAccessListIPVersionType](#EntityStateAccessListIPVersionType)  (0..1) |  
||<div>The IP version of the ACL.</div>|  
| use | [iosxe-def:EntityStateAccessListUseType](#EntityStateAccessListUseType)  (0..1) |  
||<div>The feature where the ACL is used.</div>|  
| used_in | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of where the ACL is used. For example if use is 'INTERFACE', use_in will be the name of the interface.</div>|  
| interface_direction | [iosxe-def:EntityStateAccessListInterfaceDirectionType](#EntityStateAccessListInterfaceDirectionType)  (0..1) |  
||<div>The direction the ACL is applied on an interface.</div>|  
| acl_config_lines | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned with all config lines of the ACL.</div>|  
| config_line | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned with one ACL config line at a time.</div>|  
  
______________
  
## <a name="snmphost_test"></a>< snmphost_test >

The snmphost test is used to check the properties of specific output lines from an SNMP configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="snmphost_object"></a>< snmphost_object >

The snmphost_object element is used by an snmphost test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmphost object consists of a host entity that is the host of the 'snmp host' IOS-XE command to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| host | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The SNMP host address or hostname.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="snmphost_state"></a>< snmphost_state >

The snmphost_state element defines the different information that can be used to evaluate the result of a specific 'snmp host' IOS-XE command. This includes the host and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| host | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP host address or hostname.</div>|  
| community_or_user | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The community string or SNMPv3 user configured for the host.</div>|  
| version | [iosxe-def:EntityStateSNMPVersionStringType](#EntityStateSNMPVersionStringType)  (0..1) |  
||<div>The SNMP version.</div>|  
| snmpv3_sec_level | [iosxe-def:EntityStateSNMPSecLevelStringType](#EntityStateSNMPSecLevelStringType)  (0..1) |  
||<div>The SNMPv3 security configured for the host.</div>|  
| traps | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP traps configured.</div>|  
  
______________
  
## <a name="snmpcommunity_test"></a>< snmpcommunity_test >

The snmpcommunity test is used to check the properties of specific output lines from an SNMP configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="snmpcommunity_object"></a>< snmpcommunity_object >

The snmpcommunity_object element is used by an snmpcommunity test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An snmpcommunity object consists of a community name entity to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The SNMP community name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="snmpcommunity_state"></a>< snmpcommunity_state >

The snmpcommunity_state element defines the different information that can be used to evaluate the result of a specific 'snmp community' IOS-XE command. This includes the community name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP community name.</div>|  
| view | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The view that restricts the OIDs of this community.</div>|  
| mode | [iosxe-def:EntityStateSNMPModeStringType](#EntityStateSNMPModeStringType)  (0..1) |  
||<div>The read-write privileges of the community.</div>|  
| ipv4_acl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv4 ACL name applied to the community.</div>|  
| ipv6_acl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv6 ACL name applied to the community.</div>|  
  
______________
  
## <a name="snmpuser_test"></a>< snmpuser_test >

The snmpuser test is used to check the properties of specific output lines from an SNMP user configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="snmpuser_object"></a>< snmpuser_object >

The snmpuser_object element is used by an snmpuser test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmpuser object consists of a name entity that is the name of the SNMP user to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The SNMP user name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="snmpuser_state"></a>< snmpuser_state >

The snmpuser_state element defines the different information that can be used to evaluate the result of a specific 'show snmp user' IOS-XE command. This includes the user name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP user name.</div>|  
| group | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP group the user belongs to.</div>|  
| version | [iosxe-def:EntityStateSNMPVersionStringType](#EntityStateSNMPVersionStringType)  (0..1) |  
||<div>The SNMP version of the user.</div>|  
| ipv4_acl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv4 ACL name applied to the user.</div>|  
| ipv6_acl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv6 ACL name applied to the user.</div>|  
| priv | [iosxe-def:EntityStateSNMPPrivStringType](#EntityStateSNMPPrivStringType)  (0..1) |  
||<div>The SNMP encryption type for the user (for SNMPv3).</div>|  
| auth | [iosxe-def:EntityStateSNMPAuthStringType](#EntityStateSNMPAuthStringType)  (0..1) |  
||<div>The SNMP authentication type for the user (for SNMPv3).</div>|  
  
______________
  
## <a name="snmpgroup_test"></a>< snmpgroup_test >

The snmpgroup test is used to check the properties of specific output lines from an SNMP group configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="snmpgroup_object"></a>< snmpgroup_object >

The snmpgroup_object element is used by an snmpgroup test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmpgroup object consists of a name entity that is the name of the SNMP group to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The SNMP group name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="snmpgroup_state"></a>< snmpgroup_state >

The snmpgroup_state element defines the different information that can be used to evaluate the result of a specific 'snmp-server group' IOS-XE command. This includes the user name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP group name.</div>|  
| version | [iosxe-def:EntityStateSNMPVersionStringType](#EntityStateSNMPVersionStringType)  (0..1) |  
||<div>The SNMP version of the group.</div>|  
| snmpv3_sec_level | [iosxe-def:EntityStateSNMPSecLevelStringType](#EntityStateSNMPSecLevelStringType)  (0..1) |  
||<div>The SNMPv3 security configured for the group.</div>|  
| ipv4_acl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv4 ACL name applied to the group.</div>|  
| ipv6_acl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv6 ACL name applied to the group.</div>|  
| read_view | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP read view applied to the group.</div>|  
| write_view | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP write view applied to the group.</div>|  
| notify_view | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP notify view applied to the group.</div>|  
  
______________
  
## <a name="snmpview_test"></a>< snmpview_test >

The snmpview test is used to check the properties of specific output lines from an SNMP view configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="snmpview_object"></a>< snmpview_object >

The snmpview_object element is used by an snmpview test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmpview object consists of a name entity that is the name of the SNMP view to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The SNMP view name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="snmpview_state"></a>< snmpview_state >

The snmpview_state element defines the different information that can be used to evaluate the result of a specific 'snmp-server view' IOS-XE command. This includes the view name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP view name.</div>|  
| mib_family | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP MIB family of the view.</div>|  
| include | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>It is true if the included option is used in the view.</div>|  
  
## <a name="EntityObjectAccessListIPVersionType"></a>== EntityObjectAccessListIPVersionType ==

The EntityObjectAccessListIPVersionType complex type restricts a string value to a specific set of values: IPV4, IPV6. These values describe if an ACL is for IPv4 or IPv6 in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| IPV4 |  |  
| IPV6 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityObjectRoutingProtocolType"></a>== EntityObjectRoutingProtocolType ==

The EntityObjectRoutingProtocolType complex type restricts a string value to a specific set of values: EIGRP, OSPF, BGP, RIP, RIPV2, ISIS. These values describe the routing protocol used in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| EIGRP |  |  
| OSPF |  |  
| BGP |  |  
| RIP |  |  
| RIPV2 |  |  
| ISIS |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateTrunkEncapType"></a>== EntityStateTrunkEncapType ==

The EntityStateTrunkEncapType complex type restricts a string value to a specific set of values: DOT1Q, ISL, NEGOTIATE. These values describe the interface trunk encapsulation types on an interfaces in IOS. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| DOT1Q |  |  
| ISL |  |  
| NEGOTIATE |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSwitchportModeType"></a>== EntityStateSwitchportModeType ==

The EntityStateSwitchportModeType complex type restricts a string value to a specific set of values: DYNAMIC, TRUNK, ACCESS. These values describe the interface switchport mode types in IOS. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| DYNAMIC |  |  
| TRUNK |  |  
| ACCESS |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateRoutingProtocolType"></a>== EntityStateRoutingProtocolType ==

The EntityStateRoutingProtocolType complex type restricts a string value to a specific set of values: EIGRP, OSPF, BGP, RIP, RIPV2, ISIS. These values describe the routing protocol used in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| EIGRP |  |  
| OSPF |  |  
| BGP |  |  
| RIP |  |  
| RIPV2 |  |  
| ISIS |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateRoutingAuthTypeStringType"></a>== EntityStateRoutingAuthTypeStringType ==

The EntityStateRoutingAuthTypeStringType complex type restricts a string value to a specific set of values: CLEARTEXT, MESSAGE_DIGEST. These values describe the routing protocol authentication types used in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| CLEARTEXT |  |  
| MESSAGE_DIGEST |  |  
| ~~NULL~~ | > :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** The NULL authentication area type is never declared in an interface ip ospf command context.<br />**Comment:** This RoutingAuthTypeStringType enumeration value has been deprecated and may be removed in a future version of the language.<br /> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSNMPVersionStringType"></a>== EntityStateSNMPVersionStringType ==

The EntityStateSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| 1 |  |  
| 2C |  |  
| 3 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSNMPSecLevelStringType"></a>== EntityStateSNMPSecLevelStringType ==

The EntityStateSNMPSecLevelStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| PRIV |  |  
| AUTH |  |  
| NO_AUTH |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSNMPModeStringType"></a>== EntityStateSNMPModeStringType ==

The EntityStateSNMPModeStringType complex type restricts a string value to a specific set of values: RO, RW. These values describe the SNMP mode (read-only, read-write) in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| RO |  |  
| RW |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSNMPAuthStringType"></a>== EntityStateSNMPAuthStringType ==

The EntityStateSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| MD5 |  |  
| SHA |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSNMPPrivStringType"></a>== EntityStateSNMPPrivStringType ==

The EntityStateSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES. These values describe the encryption algorithm in a Cisco IOS-XE SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| DES |  |  
| 3DES |  |  
| AES |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateAccessListIPVersionType"></a>== EntityStateAccessListIPVersionType ==

The EntityStateAccessListIPVersionType complex type restricts a string value to a specific set of values: IPV4, IPV6. These values describe if an ACL is for IPv4 or IPv6 in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| IPV4 |  |  
| IPV6 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateAccessListUseType"></a>== EntityStateAccessListUseType ==

The EntityStateAccessListUseType complex type restricts a string value to a specific set of values: INTERFACE, CRYPTO_MAP_MATCH, CLASS_MAP_MATCH, ROUTE_MAP_MATCH, IGMP_FILTER, VTY. These values describe the ACL use in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| INTERFACE |  |  
| CRYPTO_MAP_MATCH |  |  
| CLASS_MAP_MATCH |  |  
| ROUTE_MAP_MATCH |  |  
| IGMP_FILTER |  |  
| VTY |  |  
| ~~NONE~~ | > :small_red_triangle: **Deprecated As Of Version 5.11.2:1.0** :small_red_triangle: <br />**Reason:** The EntityStateSimpleBaseType check_existence attribute serves the same purpose as this enumeration value.<br />**Comment:** This AccessListUseType enumeration value has been deprecated and may be removed in a future version of the language.<br /> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateAccessListInterfaceDirectionType"></a>== EntityStateAccessListInterfaceDirectionType ==

The EntityStateAccessListInterfaceDirectionType complex type restricts a string value to a specific set of values: IN, OUT. These values describe the inbound or outbound ACL direction on an interface in a Cisco IOS-XE configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| IN |  |  
| OUT |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
