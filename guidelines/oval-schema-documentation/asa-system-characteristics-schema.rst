Open Vulnerability and Assessment Language: Cisco ASA System Characteristics  
=========================================================
* Schema: Cisco ASA System Characteristics  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Cisco ASA specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Thanks to Omar Santos and Panos Kampanakis of Cisco for providing these tests.

Item Listing  
---------------------------------------------------------
* :ref:`acl_item`  
* :ref:`class_map_item`  
* :ref:`interface_item`  
* :ref:`line_item`  
* :ref:`policy_map_item`  
* :ref:`service_policy_item`  
* :ref:`snmp_host_item`  
* :ref:`snmp_user_item`  
* :ref:`snmp_group_item`  
* :ref:`tcp_map_item`  
* :ref:`version_item`  
  
______________
  
.. _acl_item:  
  
< acl_item >  
---------------------------------------------------------
Stores command that are part of a asa configuration section. For example all configuration lines under an interface. It should not store configurations for configs that already have a separate item. For example OSPF has a router item and should not also be stored in a acl_item.

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
      - asa-sc:EntityItemAccessListIPVersionType (0..1)  
      - Element with the IP version of the ACL.  
    * - use  
      - asa-sc:EntityItemAccessListUseType (0..1)  
      - Element with the feature where the ACL is used. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.  
    * - used_in  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the name of where the ACL is used. For example if use is 'INTERFACE', use_in will be the name of the interface. If the same ACL is applied in more than one feature (i.e interface and crypto map), multiple items needs to be created.  
    * - interface_direction  
      - asa-sc:EntityItemAccessListInterfaceDirectionType (0..1)  
      - Element with the direction the ACL is applied to an interface using the access-group command.  
    * - acl_config_lines  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the value returned with all config lines of the ACL.  
    * - config_line  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the value returned with one ACL config line at a time.  
  
______________
  
.. _class_map_item:  
  
< class_map_item >  
---------------------------------------------------------
Stores information about the MPF class-map configuration in ASA. That information includes the name, the type, the inspection type, the match type, the match commands, the policy-map or class-map it is used and the action in the policy-map.

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
      - element with the name of the class-map.  
    * - type  
      - asa-sc:EntityItemClassMapType (0..1)  
      - Element with the type of the 'class-map nameX type' command.  
    * - type_inspect  
      - asa-sc:EntityItemInspectionType (0..1)  
      - Element with the inspection type of the class-map ('class-map type inspect' command).  
    * - match_all_any  
      - asa-sc:EntityItemMatchType (0..1)  
      - Element with the 'match-all' or 'match-any' type of the class-map. ASA's defaults to 'match-any'.  
    * - match  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the match command in the class-map.  
    * - used_in_class_map  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the name of the class-map (for nested class-maps) that this class-map is used in.  
    * - used_in_policy_map  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the name of the policy-map that this class-map is used in.  
    * - policy_map_action  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the command that identifies the action for the class. For example that could be 'inspect protocolX', 'drop' or 'police 1000' or 'set connection advanced-options tcpmapX'.  
  
______________
  
.. _interface_item:  
  
< interface_item >  
---------------------------------------------------------
Stores information about interfaces on an Cisco ASA device.

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
    * - ipv4_v6_access_list  
      - oval-sc:EntityItemStringType (0..2)  
      - Element with the ingress or egress UACL name applied on the interface.  
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
  
______________
  
.. _line_item:  
  
< line_item >  
---------------------------------------------------------
Stores the configuration information associated with the evaluation of a SHOW sub-command on Cisco ASA. This includes the name of ths sub-command and the corresponding config line.

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
  
.. _policy_map_item:  
  
< policy_map_item >  
---------------------------------------------------------
Stores information about a policy-map configuration in ASA. That information includes the policy-map name, the inspection type, the paremeters, the match and action commands, the policy-map it is used in and the service-policy that applies it.

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
      - Element with the policy-map name.  
    * - type_inspect  
      - asa-sc:EntityItemInspectionType (0..1)  
      - Element with the inspection type of the class-map.  
    * - parameters  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the parameter commands of the policy-map.  
    * - match_action  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the in-line match command and the action in the policy-map seperated by delimeter '_-_'. For example an http inspect policy-map could have 'match body regex regexnameX' and the action be 'drop'. Then this element would be 'body regex regexnameX_-_drop'.  
    * - used_in  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the name of policy-map that includes the policy-map('policy-map type inspect' in this case) or the serice-policy that applies the policy-map (non 'type inspect' in this case). For example, the former could be when a http inspection policy-map policymapnameX is used in a policy-map policymapnameY as its 'inspect http policymapnameX' command. The latter could be when policymapnameY is applied globally with 'service-policy policymapnameY global'. There is no chance where a policy-map can be used in both a policy-map and a service policy at the same time.  
  
______________
  
.. _service_policy_item:  
  
< service_policy_item >  
---------------------------------------------------------
Stores information about an MPF service-policy configuration in ASA. That information includes the service-policy name, where it is applied and the interface it is applied (if applicable).

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
      - Element with the service-policy name.  
    * - applied  
      - asa-sc:EntityItemApplyServicePolicyType (0..1)  
      - Element with where the service-policy is applied.  
    * - interface  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the interface the service-policy is applied (of the 'applied' element has value "INTERFACE').  
  
______________
  
.. _snmp_host_item:  
  
< snmp_host_item >  
---------------------------------------------------------
Stores information about the SNMP host configuration in ASA. That information includes the host, the community or user strings, the SNMP version, the snmp security (if the SNMP version is SNMPv3) and the SNMP traps.

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
      - Element with the interface configured for the host.  
    * - host  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the SNMP host address or hostname.  
    * - snmpv3_user  
      - oval-sc:EntityItemStringType (0..1)  
      - Element with the community sting or SNMPv3 user configured for the host.  
    * - version  
      - asa-sc:EntityItemSNMPVersionStringType (0..1)  
      - Element with the SNMP version.  
    * - poll  
      - oval-sc:EntityItemBoolType (0..1)  
      - Element used for when the SNMP polls are enabled for the host.  
    * - traps  
      - oval-sc:EntityItemBoolType (0..1)  
      - Element used for when the SNMP polls are enabled for the host.  
    * - udp_port  
      - oval-sc:EntityItemIntType (0..1)  
      - Element used for the SNMP port configured for the host.  
  
______________
  
.. _snmp_user_item:  
  
< snmp_user_item >  
---------------------------------------------------------
Stores information about an SNMP user configuration in ASA. That information includes the user name, the SNMP group he belongs to, the SNMP version, the IPv4 or IPv6 ACL it is applied to, the Security Level and the Authentication type that apply to the user (for SNMPv3).

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
    * - priv  
      - asa-sc:EntityItemSNMPPrivStringType (0..1)  
      - Element with the SNMP encryption type for the user (for SNMPv3).  
    * - auth  
      - asa-sc:EntityItemSNMPAuthStringType (0..1)  
      - Element with the SNMP authentication type for the user (for SNMPv3).  
  
______________
  
.. _snmp_group_item:  
  
< snmp_group_item >  
---------------------------------------------------------
Stores information about an SNMP group configuration in ASA. That information includes the group name, the SNMP version, the IPv4 or IPv6 ACL it is applied to and the read, write and/or notify views applied to the group.

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
    * - snmpv3_sec_level  
      - asa-sc:EntityItemSNMPSecLevelStringType (0..1)  
      - Element with the SNMPv3 security configure for the group.  
  
______________
  
.. _tcp_map_item:  
  
< tcp_map_item >  
---------------------------------------------------------
Stores information about MPF tcp-map configuration in ASA. That information includes the tcp-map name and its configured options.

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
      - Element with the tcp-map name.  
    * - options  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Element with the configured commends in the tcp-map. These could include TCP options, flags and other options of the tcp-map.  
  
______________
  
.. _version_item:  
  
< version_item >  
---------------------------------------------------------
Stores the version information held within a Cisco ASA software release. The asa_release element specifies the whole ASA version information. The asa_major_release, asa_minor_release and asa_build elements specify seperated parts of ASA software version information. For instance, if the ASA version is 8.4(2.3)49, then asa_release is 8.4(2.3)49, asa_major_release is 8.4, asa_minor_release is 2.3 and asa_build is 49. See the SHOW VERSION command within ASA for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - asa_release  
      - oval-sc:EntityItemStringType (0..1)  
      - The asa_release element specifies the whole ASA version information.  
    * - asa_major_release  
      - oval-sc:EntityItemVersionType (0..1)  
      - The asa_major_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_major_release of 8.4.  
    * - asa_minor_release  
      - oval-sc:EntityItemVersionType (0..1)  
      - The asa_minor_release is the dotted version that starts a version string. For example the asa_release 8.4(2.3)49 has a asa_minor_release of 2.3.  
    * - asa_build  
      - oval-sc:EntityItemIntType (0..1)  
      - The asa_build is an integer. For example the asa_release 8.4(2.3)49 has a asa_build of 49.  
  
.. _EntityItemAccessListIPVersionType:  
  
== EntityItemAccessListIPVersionType ==  
---------------------------------------------------------
The EntityItemAccessListIPVersionType complex type restricts a string value to a specific set of values: IPV4, IPV6 or IPV4_V6 (both). These values describe if an ACL is for IPv4 or both for UACLs or IPv6 in a Cisco asa configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemAccessListUseType:  
  
== EntityItemAccessListUseType ==  
---------------------------------------------------------
The EntityItemAccessListUseType complex type restricts a string value to a specific set of values: INTERFACE, INTERFACE_CP (control plane interface ACL), CRYPTO_MAP_MATCH, CLASS_MAP_MATCH, ROUTE_MAP_MATCH, IGMP_FILTER, NONE. These values describe the ACL use in a Cisco asa configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemAccessListInterfaceDirectionType:  
  
== EntityItemAccessListInterfaceDirectionType ==  
---------------------------------------------------------
The EntityItemAccessListInterfaceDirectionType complex type restricts a string value to a specific set of values: IN, OUT. These values describe the inbound or outbound ACL direction on an interface in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with error conditions.

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemClassMapType:  
  
== EntityItemClassMapType ==  
---------------------------------------------------------
The EntityItemClassMapType complex type restricts a string value to a specific set of values: INSPECT, REGEX, MANAGEMENT. These values describe the MPF class-map types in Cisco ASA MPF configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemInspectionType:  
  
== EntityItemInspectionType ==  
---------------------------------------------------------
The EntityItemInspectionType complex type restricts a string value to a specific set of values. These values describe the MPF inspection types of class-map and policy-map configurations in Cisco ASA MPF configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemApplyServicePolicyType:  
  
== EntityItemApplyServicePolicyType ==  
---------------------------------------------------------
The EntityItemApplyServicePolicyType complex type restricts a string value to a specific set of values: GLOBAL, INTERFACE. These values describe where a service-policy is applied in a Cisco ASA MPF configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - GLOBAL  
      - (No Description)  
    * - INTERFACE  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemMatchType:  
  
== EntityItemMatchType ==  
---------------------------------------------------------
The EntityItemMatchType complex type restricts a string value to a specific set of values: ANY, ALL. These values describe the match type of a class-map in a Cisco ASA MPF configuration. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ANY  
      - (No Description)  
    * - ALL  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
.. _EntityItemSNMPVersionStringType:  
  
== EntityItemSNMPVersionStringType ==  
---------------------------------------------------------
The EntityItemSNMPVersionStringType complex type restricts a string value to a specific set of values: 1, 2c, 3. These values describe the SNMP version in a Cisco ASA configuration. The empty string is also allowed to support empty element associated with error conditions.

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
The EntityItemSNMPSecLevelStringType complex type restricts a string value to a specific set of values: PRIV, AUTH, NO_AUTH. These values describe the SNMP security level (encryption, Authentication, None) in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

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
  
.. _EntityItemSNMPAuthStringType:  
  
== EntityItemSNMPAuthStringType ==  
---------------------------------------------------------
The EntityItemSNMPAuthStringType complex type restricts a string value to a specific set of values: MD5, SHA. These values describe the authentication algorithm in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

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
The EntityItemSNMPPrivStringType complex type restricts a string value to a specific set of values: DES, 3DES, AES128, AES192, and AES256. These values describe the encryption algorithm in a Cisco ASA SNMPv3 related configurations. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with error conditions.  
  
