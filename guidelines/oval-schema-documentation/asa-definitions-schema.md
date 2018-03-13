# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Cisco ASA Definition  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Cisco ASA specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Thanks to Omar Santos and Panos Kampanakis of Cisco for providing these tests.

## Test Listing

 *[ acl_test ](#acl_test)  
 *[ class_map_test ](#class_map_test)  
 *[ interface_test ](#interface_test)  
 *[ line_test ](#line_test)  
 *[ policy_map_test ](#policy_map_test)  
 *[ service_policy_test ](#service_policy_test)  
 *[ snmp_host_test ](#snmp_host_test)  
 *[ snmp_user_test ](#snmp_user_test)  
 *[ snmp_group_test ](#snmp_group_test)  
 *[ tcp_map_test ](#tcp_map_test)  
 *[ version_test ](#version_test)  
  
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

The acl_object element is used by an acl_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An acl object consists of a an acl name and an IP version entity that is the name and the IP protocol version of the access-list to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the ACL.</div>|  
| ip_version | [asa-def:EntityObjectAccessListIPVersionType](#EntityObjectAccessListIPVersionType)  (1..1) |  
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
| ip_version | [asa-def:EntityStateAccessListIPVersionType](#EntityStateAccessListIPVersionType)  (0..1) |  
||<div>The IP version of the ACL (i.e. IPv4 or IPv6 or both for UACLs).</div>|  
| use | [asa-def:EntityStateAccessListUseType](#EntityStateAccessListUseType)  (0..1) |  
||<div>The feature where the ACL is used.</div>|  
| used_in | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of where the ACL is used. For example if use is 'INTERFACE', use_in will be the name of the interface.</div>|  
| interface_direction | [asa-def:EntityStateAccessListInterfaceDirectionType](#EntityStateAccessListInterfaceDirectionType)  (0..1) |  
||<div>The direction the ACL is applied by using the access-group command. Inbound access lists apply to traffic as it enters an interface.</div>|  
| acl_config_lines | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned with all config lines of the ACL.</div>|  
| config_line | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The value returned with one ACL config line at a time.</div>|  
  
______________
  
## <a name="class_map_test"></a>< class_map_test >

The class_map test is used to check the properties of specific output lines from an MPF class-map configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="class_map_object"></a>< class_map_object >

The class_map_object element is used by an class_map test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A class_map object consists of a name entity that is the name of the ASA 'class-map' configuration to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The MPF class-map name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="class_map_state"></a>< class_map_state >

The class_map_state element defines the different information that can be used to evaluate the result of a specific 'class-map' ASA command. This includes the name, the type, the inspection type, the match type, the match commands, the policy-map or class-map it is used and the action in the policy-map. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the class-map.</div>|  
| type | [asa-def:EntityStateClassMapType](#EntityStateClassMapType)  (0..1) |  
||<div>The type of the 'class-map nameX type' command.</div>|  
| type_inspect | [asa-def:EntityStateInspectionType](#EntityStateInspectionType)  (0..1) |  
||<div>The inspection type of the class-map ('class-map nameX type inspect').</div>|  
| match_all_any | [asa-def:EntityStateMatchType](#EntityStateMatchType)  (0..1) |  
||<div>The 'match-all' or 'match-any' type of the class-map. ASA defaults to 'match-any'.</div>|  
| match | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The 'match' commands in the class-map.</div>|  
| used_in_class_map | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the class-map (for nested class-maps) that this class-map is used in.</div>|  
| used_in_policy_map | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the policy-map that this class-map is used in.</div>|  
| policy_map_action | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The command that identifies the action for the class. For example that could be 'inspect protocolX', 'drop' or 'police 1000' or 'set connection advanced-options tcpmapX'.</div>|  
  
______________
  
## <a name="interface_test"></a>< interface_test >

The interface test is used to check for the existence of a particular interface on the Cisco ASA device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a interface_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="interface_object"></a>< interface_object >

The interface_object element is used by an interface_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An interface_object consists of a name entity that is the name of the ASA interface to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The interface name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="interface_state"></a>< interface_state >

The interface_state element defines the different information that can be used to evaluate the result of a specific ASA interface. This includes the name, status, and address information about the interface. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The interface name.</div>|  
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
| ipv4_v6_access_list | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The ingress or egress UACL name applied on the interface.</div>|  
| crypto_map | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The crypto map name applied to the interface.</div>|  
| ipv4_urpf_command | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv4 uRPF command under the interface.</div>|  
| ipv6_urpf_command | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The IPv6 uRPF command under the interface.</div>|  
| ~~urpf_command~~ | ~~[oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1~~) |  
||~~<div>The uRPF command under the interface.</div>~~|  
  
______________
  
## <a name="line_test"></a>< line_test >

The line_test is used to check the properties of specific output lines from a SHOW command, such as SHOW RUNNING-CONFIG. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a line_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="line_object"></a>< line_object >

The line_object element is used by a line_test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

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
  
## <a name="policy_map_test"></a>< policy_map_test >

The policy_map test is used to check the properties of specific output lines from an policy-map ASA configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="policy_map_object"></a>< policy_map_object >

The policy_map_object element is used by an policy_map test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A policy_map object consists of a name entity that is the name of the ASA 'policy-map' configuration to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The MPF policy-map name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="policy_map_state"></a>< policy_map_state >

The policy_map_state element defines the different information that can be used to evaluate the result of a 'policy-map' ASA configuration. This includes the policy-map name, the inspection type, the paremeters, the match and action commands, the policy-map it is used in and the service-policy that applies it. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The policy-map name.</div>|  
| type_inspect | [asa-def:EntityStateInspectionType](#EntityStateInspectionType)  (0..1) |  
||<div>The inspection type of the class-map.</div>|  
| parameters | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The parameter commands of the policy-map.</div>|  
| match_action | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The in-line match command and the action in the policy-map seperated by delimeter '_-_'. For example an http inspect policy-map could have 'match body regex regexnameX' and the action be 'drop'. Then this element would be 'body regex regexnameX_-_drop'.</div>|  
| used_in | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of policy-map that includes the policy-map('policy-map type inspect' in this case) or the service-policy that applies the policy-map (non 'type inspect' in this case). For example, the former could be when a http inspection policy-map policymapnameX is used in a policy-map policymapnameY as its 'inspect http policymapnameX' command. The latter could be when policymapnameY is applied globally with 'service-policy policymapnameY global'. There is no chance where a policy-map can be used in both a policy-map and a service policy at the same time.</div>|  
  
______________
  
## <a name="service_policy_test"></a>< service_policy_test >

The service_policy test is used to check the properties of specific output lines from an MPF service-policy configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="service_policy_object"></a>< service_policy_object >

The service_policy_object element is used by an service_policy test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A service_policy object consists of a name entity that is the name of the ASA 'service-policy' configurate to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The MPF service-policy name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="service_policy_state"></a>< service_policy_state >

The service_policy_state element defines the different information that can be used to evaluate service-policy ASA configuration. This includes the service-policy name, where it is applied and the interface it is applied (if applicable). Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The service-policy name.</div>|  
| applied | [asa-def:EntityStateApplyServicePolicyType](#EntityStateApplyServicePolicyType)  (0..1) |  
||<div>Where he service-policy is applied.</div>|  
| interface | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The interface the service-policy is applied (of the 'applied' element has value "INTERFACE').</div>|  
  
______________
  
## <a name="snmp_host_test"></a>< snmp_host_test >

The snmp_host test is used to check the properties of specific output lines from an SNMP configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="snmp_host_object"></a>< snmp_host_object >

The snmp_host_object element is used by an snmp_host test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmp_host object consists of a host entity that is the host of the 'snmp host' ASA command to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| host | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The SNMP host address or hostname.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="snmp_host_state"></a>< snmp_host_state >

The snmp_host_state element defines the different information that can be used to evaluate the result of a specific 'snmp host' ASA command. This includes the host and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| interface | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The interface configured for the host.</div>|  
| host | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP host address or hostname.</div>|  
| snmpv3_user | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The community SNMPv3 user configured for the host.</div>|  
| version | [asa-def:EntityStateSNMPVersionStringType](#EntityStateSNMPVersionStringType)  (0..1) |  
||<div>The SNMP version.</div>|  
| poll | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>SNMP polls enabled for the host.</div>|  
| traps | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>SNMP traps enabled for the host.</div>|  
| udp_port | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>SNMP port configured for the host.</div>|  
  
______________
  
## <a name="snmp_user_test"></a>< snmp_user_test >

The snmp_user test is used to check the properties of specific output lines from an SNMP user configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="snmp_user_object"></a>< snmp_user_object >

The snmp_user_object element is used by an snmp_user test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmp_user object consists of a name entity that is the name of the SNMP user to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The SNMP user name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="snmp_user_state"></a>< snmp_user_state >

The snmp_user_state element defines the different information that can be used to evaluate the result of a specific 'show snmp-serveruser' ASA command. This includes the user name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP user name.</div>|  
| group | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP group the user belongs to.</div>|  
| priv | [asa-def:EntityStateSNMPPrivStringType](#EntityStateSNMPPrivStringType)  (0..1) |  
||<div>The SNMP encryption type for the user (for SNMPv3).</div>|  
| auth | [asa-def:EntityStateSNMPAuthStringType](#EntityStateSNMPAuthStringType)  (0..1) |  
||<div>The SNMP authentication type for the user (for SNMPv3).</div>|  
  
______________
  
## <a name="snmp_group_test"></a>< snmp_group_test >

The snmp_group test is used to check the properties of specific output lines from an SNMP group configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="snmp_group_object"></a>< snmp_group_object >

The snmp_group_object element is used by an snmp_group test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A snmp_group object consists of a name entity that is the name of the SNMP group to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The SNMP group name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="snmp_group_state"></a>< snmp_group_state >

The snmp_group_state element defines the different information that can be used to evaluate the result of a specific 'snmp-server group' ASA command. This includes the user name and the corresponding options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The SNMP group name.</div>|  
| snmpv3_sec_level | [asa-def:EntityStateSNMPSecLevelStringType](#EntityStateSNMPSecLevelStringType)  (0..1) |  
||<div>The SNMPv3 security configured for the group.</div>|  
  
______________
  
## <a name="tcp_map_test"></a>< tcp_map_test >

The tcp_map test is used to check the properties of specific output lines from a tcp-map ASA configuration.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="tcp_map_object"></a>< tcp_map_object >

The tcp-map_object element is used by an tcp_map test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A service_policy object consists of a name entity that is the name of the ASA 'tcp-map' configuration to be tested.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The MPF tcp-map name.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="tcp_map_state"></a>< tcp_map_state >

The tcp_map_state element defines the different information that can be used to evaluate the result of a specific 'tcp-map' ASA configuration. This includes the tcp-map name and its configured options. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The tcp-map name.</div>|  
| options | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The configured commends in the tcp-map. These could include TCP options, flags and other options of the tcp-map.</div>|  
  
______________
  
## <a name="version_test"></a>< version_test >

The version test is used to check the version of the ASA operating system. It is based off of the SHOW VERSION command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="version_object"></a>< version_object >

The version_object element is used by a version test to define the different version information associated with a ASA system. There is actually only one object relating to version and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="version_state"></a>< version_state >

The version_state element defines the version information held within a Cisco ASA software release. The asa_release element specifies the whole ASA version information. The asa_major_release, asa_minor_release and asa_build elements specify seperated parts of ASA software version information. For instance, if the ASA version is 8.4(2.3)49, then asa_release is 8.4(2.3)49, asa_major_release is 8.4, asa_minor_release is 2.3 and asa_build is 49. See the SHOW VERSION command within ASA for more information.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| asa_release | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The asa_release element specifies the whole ASA version information.</div>|  
| asa_major_release | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The asa_major_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_major_release of 8.4.</div>|  
| asa_minor_release | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The asa_minor_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_minor_release of 2.3.</div>|  
| asa_build | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The asa_build is an integer. For example the asa_release 8.4(2.3)49 has a asa_build of 49.</div>|  
  
## <a name="EntityObjectAccessListIPVersionType"></a>== EntityObjectAccessListIPVersionType ==

The EntityObjectAccessListIPVersionType complex type restricts a string value to a specific set of values: IPV4, IPV6 or IPV4_V6 (both). These values describe if an ACL is for IPv4 or IPv6 or both for UACLs in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| IPV4 |  |  
| IPV6 |  |  
| IPV4_V6 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateAccessListIPVersionType"></a>== EntityStateAccessListIPVersionType ==

The EntityStateAccessListIPVersionType complex type restricts a string value to a specific set of values: IPV4, IPV6 or IPV4_V6 (both). These values describe if an ACL is for IPv4 or IPv6 or both for UACLs in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| IPV4 |  |  
| IPV6 |  |  
| IPV4_V6 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateAccessListUseType"></a>== EntityStateAccessListUseType ==

The EntityStateAccessListUseType complex type restricts a string value to a specific set of values: INTERFACE, INTERFACE_CP (control plane interface ACL), CRYPTO_MAP_MATCH, CLASS_MAP_MATCH, ROUTE_MAP_MATCH, IGMP_FILTER, NONE. These values describe the ACL use in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| INTERFACE |  |  
| INTERFACE_CP |  |  
| CRYPTO_MAP_MATCH |  |  
| CLASS_MAP_MATCH |  |  
| ROUTE_MAP_MATCH |  |  
| IGMP_FILTER |  |  
| NONE |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateAccessListInterfaceDirectionType"></a>== EntityStateAccessListInterfaceDirectionType ==

The EntityStateAccessListInterfaceDirectionType complex type restricts a string value to a specific set of values: IN, OUT. These values describe the inbound or outbound ACL direction on an interface in a Cisco ASA configuration. These values are defined with the access-group command. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| IN |  |  
| OUT |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateClassMapType"></a>== EntityStateClassMapType ==

The EntityStateClassMapType complex type restricts a string value to a specific set of values: INSPECT, REGEX, MANAGEMENT. These values describe the MPF class-map types in Cisco ASA MPF configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| INSPECT |  |  
| REGEX |  |  
| MANAGEMENT |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateInspectionType"></a>== EntityStateInspectionType ==

The EntityStateInspectionType complex type restricts a string value to a specific set of values. These values describe the MPF inspection types of class-map and policy-map configurations in Cisco ASA MPF configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

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
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateApplyServicePolicyType"></a>== EntityStateApplyServicePolicyType ==

The EntityStateApplyServicePolicyType complex type restricts a string value to a specific set of values: GLOBAL, INTERFACE. These values describe where a service-policy is applied in a Cisco ASA MPF configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| GLOBAL |  |  
| INTERFACE |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateMatchType"></a>== EntityStateMatchType ==

The EntityStateMatchType complex type restricts a string value to a specific set of values: ANY, ALL. These values describe the match type of a class-map in a Cisco ASA MPF configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| ANY |  |  
| ALL |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSNMPVersionStringType"></a>== EntityStateSNMPVersionStringType ==

The EntityStateSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| 1 |  |  
| 2C |  |  
| 3 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSNMPSecLevelStringType"></a>== EntityStateSNMPSecLevelStringType ==

The EntityStateSNMPSecLevelStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| PRIV |  |  
| AUTH |  |  
| NO_AUTH |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSNMPAuthStringType"></a>== EntityStateSNMPAuthStringType ==

The EntityStateSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| MD5 |  |  
| SHA |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSNMPPrivStringType"></a>== EntityStateSNMPPrivStringType ==

The EntityStateSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES128, AES192, and AES256. These values describe the encryption algorithm in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| DES |  |  
| 3DES |  |  
| AES128 |  |  
| AES192 |  |  
| AES256 |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
