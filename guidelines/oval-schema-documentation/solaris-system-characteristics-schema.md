# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Solaris System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Solaris specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="facet_item"></a>< facet_item >

This item stores the facet properties and values of an IPS system image.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the path to the Solaris IPS image.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the name of the facet property associated with an IPS image.</div>|  
| value | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies the value of the facet property associated with an IPS image.</div>|  
  
______________
  
## <a name="image_item"></a>< image_item >

This item stores system state information associated with an IPS image on a Solaris system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path to the Solaris IPS image.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the property associated with the Solaris IPS image.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value of a property that is associated with a Solaris IPS image.</div>|  
  
______________
  
## <a name="isainfo_item"></a>< isainfo_item >

Information about the instruction set architectures. This information can be retrieved by the isainfo command.

The isainfo_item was originally developed by Robert L. Hollis at ThreatGuard, Inc. Many thanks for their support of the OVAL project.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| bits | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the number of bits in the address space of the native instruction set (isainfo -b).</div>|  
| kernel_isa | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the instruction set used by kernel components (isainfo -k).</div>|  
| application_isa | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the instruction set used by portable applications (isainfo -n).</div>|  
  
______________
  
## <a name="ndd_item"></a>< ndd_item >

This item represents data collected by the ndd command.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| device | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the device for which the parameter was collected.</div>|  
| instance | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The instance of the device to examine. Certain devices may have multiple instances on a system. If multiple instances exist, this entity should be populated with its respective instance value. If only a single instance exists, this entity should not be collected.</div>|  
| parameter | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of a parameter for example, ip_forwarding</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>The observed value of the named parameter.</div>|  
  
______________
  
## <a name="package_item"></a>< package_item >

The package_item holds information about installed SVR4 packages. Output of /usr/bin/pkginfo. See pkginfo(1).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pkginst | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| category | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| version | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| vendor | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| description | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="package511_item"></a>< package511_item >

This item stores system state information associated with IPS packages installed on a Solaris system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| publisher | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The person, group of persons, or organization that is the source of the package. The publisher should be expressed without leading "pkg:" or "//" components.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The full hierarchical name of the package which is separated by forward slash characters. The full name should be expressed without leading "pkg:/" or "/" components.</div>|  
| version | [oval-sc:EntityItemVersionType](oval-system-characteristics-schema.md#EntityItemVersionType)  (0..1) |  
||<div>The version of the package which consists of the component version, build version, and branch version.</div>|  
| timestamp | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The timestamp when the package was published in the ISO-8601 basic format (YYYYMMDDTHHMMSSZ).</div>|  
| fmri | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.</div>|  
| summary | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A summary of what the package provides.</div>|  
| description | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A description of what the package provides.</div>|  
| category | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The category of the package.</div>|  
| updates_available | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean value indicating whether or not updates are available for this package.</div>|  
  
______________
  
## <a name="packageavoidlist_item"></a>< packageavoidlist_item >

This item stores the FMRI associated with associated with IPS packages that have been flagged as to be avoided from installation on a Solaris system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| fmri | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.</div>|  
  
______________
  
## <a name="packagecheck_item"></a>< packagecheck_item >

The packagecheck_item holds verification information about an individual file that is part of an installed SVR4 package. Each packagecheck_item contains a package designation, filepath, whether the checksum differs, whether the size differs, whether the modfication time differs, and how the actual permissions differ from the expected permissions. For more information, see pkgchk(1M). It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pkginst | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The pkginst entity is a string that represents a package designation by its instance. An instance can be the package abbreviation or a specific instance (for example, inst.1 or inst.2).</div>|  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package..</div>|  
| checksum_differs | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Has the file's checksum changed? A value of true indicates that the file's checksum has changed. A value of false indicates that the file's checksum has not changed.</div>|  
| size_differs | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Has the file's size changed? A value of true indicates that the file's size has changed. A value of false indicates that the file's size has not changed.</div>|  
| mtime_differs | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Has the file's modified time changed? A value of true indicates that the file's modified time has changed. A value of false indicates that the file's modified time has not changed.</div>|  
| uread | [sol-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual user read permission changed from the expected user read permission?</div>|  
| uwrite | [sol-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual user write permission changed from the expected user write permission?</div>|  
| uexec | [sol-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual user exec permission changed from the expected user exec permission?</div>|  
| gread | [sol-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual group read permission changed from the expected group read permission?</div>|  
| gwrite | [sol-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual group write permission changed from the expected group write permission?</div>|  
| gexec | [sol-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual group exec permission changed from the expected group exec permission?</div>|  
| oread | [sol-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual others read permission changed from the expected others read permission?</div>|  
| owrite | [sol-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual others read permission changed from the expected others read permission?</div>|  
| oexec | [sol-sc:EntityItemPermissionCompareType](#EntityItemPermissionCompareType)  (0..1) |  
||<div>Has the actual others read permission changed from the expected others read permission?</div>|  
  
______________
  
## <a name="packagefreezelist_item"></a>< packagefreezelist_item >

This item stores the FMRI associated with associated with IPS packages that have been frozen at a particular version.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| fmri | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.</div>|  
  
______________
  
## <a name="packagepublisher_item"></a>< packagepublisher_item >

This item stores system state information associated with IPS package publishers on a Solaris system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the IPS package publisher.</div>|  
| type | [sol-sc:EntityItemPublisherTypeType](#EntityItemPublisherTypeType)  (0..1) |  
||<div>The type of the IPS package publisher.</div>|  
| origin_uri | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The origin URI of the IPS package publisher.</div>|  
| alias | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The alias of the IPS package publisher.</div>|  
| ssl_key | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The Secure Socket Layer (SSL) key registered by a client for publishers using client-side SSL authentication.</div>|  
| ssl_cert | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The Secure Socket Layer (SSL) certificate registered by a client for publishers using client-side SSL authentication.</div>|  
| client_uuid | [sol-sc:EntityItemClientUUIDType](#EntityItemClientUUIDType)  (0..1) |  
||<div>The universally unique identifier (UUID) that identifies the image to its publisher.</div>|  
| catalog_updated | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The last time that the IPS package publisher's catalog was updated in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.</div>|  
| enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether or not the publisher is enabled.</div>|  
| order | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies where in the search order the IPS package publisher is listed. The first publisher in the search order will have a value of '1'.</div>|  
| properties | [oval-sc:EntityItemRecordType](oval-system-characteristics-schema.md#EntityItemRecordType)  (0..1) |  
||<div>The properties associated with an IPS package publisher.</div>|  
  
______________
  
## <a name="patch_item"></a>< patch_item >

Patches for SVR4 packages are identified by unique alphanumeric strings, with the patch base code first, a hyphen, and a number that represents the patch revision number. The information can be obtained using /usr/bin/showrev -p. Please see showrev(1M).

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| base | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The base entity reresents a patch base code found before the hyphen.</div>|  
| version | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The version entity represents a patch version number found after the hyphen.</div>|  
  
______________
  
## <a name="smf_item"></a>< smf_item >

The smf_item is used to hold information related to service management facility controlled services

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| fmri | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The FMRI (Fault Managed Resource Identifier) entity holds the identifier associated with a service. Services managed by SMF are assigned FMRI URIs prefixed with the scheme name "svc". FMRIs used by SMF can be expressed in three ways: first as an absolute path including a location path such as "localhost" (eg svc://localhost/system/system-log:default), second as a path relative to the local machine (eg svc:/system/system-log:default), and third as simply the service identifier with the string prefixes implied (eg system/system-log:default). For OVAL, the absolute path version (first choice) should be used.</div>|  
| service_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The service_name entity is usually an abbreviated form of the FMRI. In the example svc://localhost/system/system-log:default, the name would be system-log.</div>|  
| service_state | [sol-sc:EntityItemSmfServiceStateType](#EntityItemSmfServiceStateType)  (0..1) |  
||<div>The service_state entity describes the state that the service is in. Each service instance is always in a well-defined state based on its dependencies, the results of the execution of its methods, and its potential receipt of events from the contracts filesystem. The service_state values are UNINITIALIZED, OFFLINE, ONLINE, DEGRADED, MAINTENANCE, DISABLED, and LEGACY-RUN.</div>|  
| protocol | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>The protocol entity describes the protocol supported by the service.</div>|  
| server_executable | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The entity server_executable is a string representing the listening daemon on the server side. An example being 'svcprop ftp' which might show 'inetd/start/exec astring /usr/sbin/in.ftpd\ -a'</div>|  
| server_arguements | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The server_arguments entity describes the parameters that are passed to the service.</div>|  
| exec_as_user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The exec_as_user entity is a string pulled from svcprop in the following format: inetd_start/user astring root</div>|  
  
______________
  
## <a name="smfproperty_item"></a>< smfproperty_item >

This item stores the properties and values of an SMF service.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| service | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the SMF service on the system. This is the service category and name separated by a forward slash ("/").</div>|  
| instance | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the instance of an SMF service which represents a specific configuration of a service.</div>|  
| property | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the property associated with an SMF service. This is the property category and name separated by a forward slash ("/").</div>|  
| fmri | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The Fault Management Resource Identifier (FMRI) of the SMF service which uniquely identifies the service on the system.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>Specifies the value of the property associated with an SMF service.</div>|  
  
______________
  
## <a name="variant_item"></a>< variant_item >

This item stores the variant properties and values of the specified IPS system image.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the path to the Solaris IPS image.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the name of the variant property associated with an IPS image.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>Specifies the value of the variant property associated with an IPS image.</div>|  
  
______________
  
## <a name="virtualizationinfo_item"></a>< virtualizationinfo_item >

This item stores the information associated with the current virtualization environment this instance of Solaris is running on and is capable of supporting.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| current | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the current environment. This information could be collected using the libv12n library or by executing the 'virtinfo -c current list -H -o name' command.</div>|  
| supported | [sol-sc:EntityItemV12NEnvType](#EntityItemV12NEnvType)  (0..unbounded) |  
||<div>The list of virtualization environments that this node supports as children. This information could be collected using the libv12n library or by executing the 'virtinfo -c supported list -H -o name' command.</div>|  
| parent | [sol-sc:EntityItemV12NEnvType](#EntityItemV12NEnvType)  (0..1) |  
||<div>The parent environment of the current environment. This information could be collected using libv12n library or by executing the 'virtinfo -c parent list -H -o name' command.</div>|  
| ldom-role | [sol-sc:EntityItemLDOMRoleType](#EntityItemLDOMRoleType)  (0..unbounded) |  
||<div>The logical domain roles associated with the current environment. This information could be collected using libv12n library.</div>|  
| properties | [oval-sc:EntityItemRecordType](oval-system-characteristics-schema.md#EntityItemRecordType)  (0..1) |  
||<div>The properties associated with the current environment. This information could be collected using libv12n library.</div>|  
  
## <a name="EntityItemClientUUIDType"></a>== EntityItemClientUUIDType ==

The EntityItemClientUUIDType restricts a string value to a representation of a client UUID, used to identify an image to its IPS package publisher. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

**Pattern:** ([a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12})?

## <a name="EntityItemPermissionCompareType"></a>== EntityItemPermissionCompareType ==

The EntityItemPermissionCompareType complex type restricts a string value to more, less, or same which specifies if an actual permission is different than the expected permission (more or less restrictive) or if the permission is the same. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| more | <div>The actual permission is more restrictive than the expected permission.</div> |  
| less | <div>The actual permission is less restrictive than the expected permission.</div> |  
| same | <div>The actual permission is the same as the expected permission.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemPublisherTypeType"></a>== EntityItemPublisherTypeType ==

The EntityItemPublisherTypeType complex type restricts a string value to three values: archive, mirror, or origin that specifies how the publisher distributes their packages. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| archive | <div>The value of 'archive' specifies that the publisher distributes packages by providing a file that contains one or more packages.</div> |  
| mirror | <div>The value of 'mirror' specifies that the publisher distributes packages by providing a package repository that contains only package content.</div> |  
| origin | <div>The value of 'origin' specifies that the publisher distributes packages by providing a package repository that contains both package metadata and package content.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemSmfServiceStateType"></a>== EntityItemSmfServiceStateType ==

The EntityItemSmfServiceStateType defines the different values that are valid for the service_state entity of a smf_item. The empty string is also allowed as a valid value to support empty emlements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DEGRADED | <div>The instance is enabled and running or available to run. The instance, however, is functioning at a limited capacity in comparison to normal operation.</div> |  
| DISABLED | <div>The instance is disabled.</div> |  
| MAINTENANCE | <div>The instance is enabled, but not able to run. Administrative action is required to restore the instance to offline and subsequent states.</div> |  
| LEGACY-RUN | <div>This state represents a legacy instance that is not managed by the service management facility. Instances in this state have been started at some point, but might or might not be running.</div> |  
| OFFLINE | <div>The instance is enabled, but not yet running or available to run.</div> |  
| ONLINE | <div>The instance is enabled and running or is available to run.</div> |  
| UNINITIALIZED | <div>This is the initial state for all service instances.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemV12NEnvType"></a>== EntityItemV12NEnvType ==

The EntityItemV12NEnvypeType complex type restricts a string value to a specific set of values that describe the virtalization environment. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| unknown | <div>The virtualization environment is unknown. This could mean it is a bare metal virtualization environment.</div> |  
| kvm | <div>The virtualization environment is a Kernel-based Virtual Machine (KVM).</div> |  
| logical-domain | <div>The virtualization environment is a logical domain.</div> |  
| non-global-zone | <div>The virtualization environment is a non-global zone.</div> |  
| kernel-zone | <div>The virtualization environment is a kernel zone.</div> |  
| vmware | <div>The virtualization environment is VMware.</div> |  
| virtualbox | <div>The virtualization environment is Oracle VirtualBox.</div> |  
| xen | <div>The virtualization environment is Xen.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemLDOMRoleType"></a>== EntityItemLDOMRoleType ==

The EntityItemLDOMRoleType complex type restricts a string value to a specific set of roles for the current virtualization environment. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| control-role | <div>The current virtualization environment is a control domain.</div> |  
| io-role | <div>The current virtualization environment is an I/O domain.</div> |  
| root-role | <div>The current virtualization environment is a root I/O domain.</div> |  
| service-role | <div>The current virtualization environment is a service domain.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
