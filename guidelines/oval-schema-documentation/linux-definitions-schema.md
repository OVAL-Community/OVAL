# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Linux Definition  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Linux specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ apparmorstatus_test ](#apparmorstatus_test)  
 *[ dpkginfo_test ](#dpkginfo_test)  
 *[ iflisteners_test ](#iflisteners_test)  
 *[ inetlisteningservers_test ](#inetlisteningservers_test)  
 *[ partition_test ](#partition_test)  
 *[ rpminfo_test ](#rpminfo_test)  
 *[ ~~rpmverify_test~~ ](#rpmverify_test)  
 *[ rpmverifyfile_test ](#rpmverifyfile_test)  
 *[ rpmverifypackage_test ](#rpmverifypackage_test)  
 *[ selinuxboolean_test ](#selinuxboolean_test)  
 *[ selinuxsecuritycontext_test ](#selinuxsecuritycontext_test)  
 *[ slackwarepkginfo_test ](#slackwarepkginfo_test)  
 *[ systemdunitdependency_test ](#systemdunitdependency_test)  
 *[ systemdunitproperty_test ](#systemdunitproperty_test)  
  
______________
  
## <a name="apparmorstatus_test"></a>< apparmorstatus_test >

The AppArmor Status Test is used to check properties representing the counts of profiles and processes as per the results of the "apparmor_status" or "aa-status" command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an apparmorstatus_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="apparmorstatus_object"></a>< apparmorstatus_object >

The apparmorstatus_object element is used by an apparmorstatus test to define the different information about the current AppArmor polciy. There is actually only one object relating to AppArmor Status and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check AppArmor status will reference the same apparmorstatus_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="apparmorstatus_state"></a>< apparmorstatus_state >

The AppArmor Status Item displays various information about the current AppArmor policy. This item maps the counts of profiles and processes as per the results of the "apparmor_status" or "aa-status" command. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| loaded_profiles_count | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Displays the number of loaded profiles</div>|  
| enforce_mode_profiles_count | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Displays the number of profiles in enforce mode</div>|  
| complain_mode_profiles_count | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Displays the number of profiles in complain mode</div>|  
| processes_with_profiles_count | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Displays the number of processes which have profiles defined</div>|  
| enforce_mode_processes_count | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Displays the number of processes in enforce mode</div>|  
| complain_mode_processes_count | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Displays the number of processes in complain mode</div>|  
| unconfined_processes_with_profiles_count | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Displays the number of processes which are unconfined but have a profile defined</div>|  
  
______________
  
## <a name="dpkginfo_test"></a>< dpkginfo_test >

The dpkginfo test is used to check information for a given DPKG package. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a dpkginfo_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="dpkginfo_object"></a>< dpkginfo_object >

The dpkginfo_object element is used by a dpkginfo test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A dpkginfo object consists of a single name entity that identifies the package being checked.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the package name to check.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="dpkginfo_state"></a>< dpkginfo_state >

The dpkginfo_state element defines the different information that can be used to evaluate the specified DPKG package. This includes the architecture, epoch number, release, and version numbers. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the DPKG package name to check.</div>|  
| arch | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the architecture for which the package was built, like : i386, ppc, sparc, noarch.</div>|  
| epoch | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the epoch number of the DPKG. For a null epoch (or '(none)' as returned by dpkg) the string '(none)' should be used.</div>|  
| release | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the release number of the build, changed by the vendor/builder.</div>|  
| version | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the build.</div>|  
| evr | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This represents the epoch, upstream_version, and debian_revision fields, for a Debian package, as a single version string. It has the form "EPOCH:UPSTREAM_VERSION-DEBIAN_REVISION". Note that a null epoch (or '(none)' as returned by dpkg) is equivalent to '0' and would hence have the form 0:UPSTREAM_VERSION-DEBIAN_REVISION.</div>|  
  
______________
  
## <a name="iflisteners_test"></a>< iflisteners_test >

The iflisteners_test is used to check what applications such as packet sniffers that are bound to an interface on the system. This is limited to applications that are listening on AF_PACKET sockets. Furthermore, only applications bound to an ethernet interface should be collected. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an iflisteners_object and the optional iflisteners_state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="iflisteners_object"></a>< iflisteners_object >

The iflisteners_object element is used by an iflisteners_test to define the specific interface to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| interface_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The interface_name entity specifies the name of the interface (eth0, eth1, fw0, etc.) to check.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="iflisteners_state"></a>< iflisteners_state >

The iflisteners_state element defines the different information that can be used to evaluate the specified applications that are listening on interfaces on the system. This includes the interface name, protocol, hardware address, program name, pid, and user id. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| interface_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the name of the interface (eth0, eth1, fw0, etc.).</div>|  
| protocol | [linux-def:EntityStateProtocolType](#EntityStateProtocolType)  (0..1) |  
||<div>This is the physical layer protocol used by the AF_PACKET socket.</div>|  
| hw_address | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the hardware address associated with the interface.</div>|  
| program_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the name of the communicating program.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The pid is the process ID of a specific process.</div>|  
| user_id | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.</div>|  
  
______________
  
## <a name="inetlisteningservers_test"></a>< inetlisteningservers_test >

The inet listening servers test is used to check what applications are listening on the network. This is limited to applications that are listening for connections that use the TCP or UDP protocols and have addresses represented as IPv4 or IPv6 addresses (AF_INET or AF_INET6). It is generally using the parsed output of running the command netstat -tuwlnpe with root privilege. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an inetlisteningservers_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="inetlisteningservers_object"></a>< inetlisteningservers_object >

The inetlisteningservers_object element is used by an inet listening servers test to define the specific protocol-address-port to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An inet listening servers object consists of three entities. The first identifies a specific IP address. The second entity represents a certain port number. While the third identifies the protocol.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The protocol entity defines a certain transport-layer protocol, in lowercase: tcp or udp.</div>|  
| local_address | [oval-def:EntityObjectIPAddressStringType](oval-definitions-schema.md#EntityObjectIPAddressStringType)  (1..1) |  
||<div>This is the IP address of the network interface on which an application listens. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>This is the TCP or UDP port on which an application would listen. Note that this is not a list -- if a program listens on multiple ports, or on a combination of TCP and UDP, each will be represented by its own object.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="inetlisteningservers_state"></a>< inetlisteningservers_state >

The inetlisteningservers_state element defines the different information that can be used to evaluate the specified inet listening server. This includes the local address, foreign address, port information, and process id. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The protocol entity defines the specific transport-layer protocol, in lowercase: tcp or udp, associated with the inet listening server.</div>|  
| local_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>This is the IP address of the network interface on which the program listens. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This is the TCP or UDP port number associated with the inet listening server.</div>|  
| local_full_address | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the IP address and network port number associated with the inet listening server, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| program_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the name of the communicating program.</div>|  
| foreign_address | [oval-def:EntityStateIPAddressStringType](oval-definitions-schema.md#EntityStateIPAddressStringType)  (0..1) |  
||<div>This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_port | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, the value will be 0.</div>|  
| foreign_full_address | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The pid is the process ID of a specific process.</div>|  
| user_id | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.</div>|  
  
______________
  
## <a name="partition_test"></a>< partition_test >

The partition_test is used to check the information associated with partitions on the local system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a partition_object and the optional state element references a partition_state that specifies the information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="partition_object"></a>< partition_object >

The partition_object is used by a partition_test to define which partitions on the local system should be collected. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| mount_point | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The mount_point element specifies the mount points of the partitions that should be collected from the local system.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="partition_state"></a>< partition_state >

The partition_state element defines the different information associated with a partition. This includes the name, filesystem type, mount options, total space, space used, and space left. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| mount_point | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The mount_point element contains a string that represents the mount point of a partition on the local system.</div>|  
| device | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The device element contains a string that represents the name of the device.</div>|  
| uuid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The uuid element contains a string that represents the universally unique identifier associated with a partition.</div>|  
| fs_type | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The fs_type element contains a string that represents the type of filesystem on a partition.</div>|  
| mount_options | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The mount_options element contains a string that represents the mount options associated with a partition.</div><div>Implementation note: not all mount options are visible in /etc/mtab or /proc/mounts. A complete source of additional mount options is the f_flag field of 'struct statvfs'. See statvfs(2). /etc/fstab may have additional mount options, but it need not contain all mounted filesystems, so it MUST NOT be relied upon. Implementers MUST be sure to get all mount options in some way.</div>|  
| total_space | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The total_space element contains an integer that represents the total number of physical blocks on a partition.</div>|  
| space_used | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The space_used element contains an integer that represents the number of physical blocks used on a partition.</div>|  
| space_left | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The space_left element contains an integer that represents the number of physical blocks left on a partition available to be used by privileged users.</div>|  
| space_left_for_unprivileged_users | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The space_left_for_unprivileged_users element contains an integer that represents the number of physical blocks remaining on a partition that are available to be used by unprivileged users.</div>|  
| block_size | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The block_size element contains an integer that represents the actual byte size of each physical block on the partition's block device. This is the same block size used to compute the total_space, space_used, and space_left.</div>|  
  
______________
  
## <a name="rpminfo_test"></a>< rpminfo_test >

The rpminfo_test is used to check the RPM header information for a given RPM package. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a rpminfo_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="rpminfo_object"></a>< rpminfo_object >

The rpminfo_object element is used by a rpm info test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A rpm info object consists of a single name entity that identifies the package being checked.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [linux-def:RpmInfoBehaviors](#RpmInfoBehaviors)  (0..1) |  
|||  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the package name to check.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="rpminfo_state"></a>< rpminfo_state >

The rpminfo_state element defines the different information that can be used to evaluate the specified rpm. This includes the architecture, epoch number, and version numbers. Most of this information can be obtained through the rpm function. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the package name to check.</div>|  
| arch | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.</div>|  
| epoch | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used.. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file</div>|  
| release | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the release number of the build, changed by the vendor/builder.</div>|  
| version | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the build. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.</div>|  
| evr | [oval-def:EntityStateEVRStringType](oval-definitions-schema.md#EntityStateEVRStringType)  (0..1) |  
||<div>This represents the epoch, version, and release fields as a single version string. It has the form "EPOCH:VERSION-RELEASE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form 0:VERSION-RELEASE. Comparisons involving this datatype should follow the algorithm of librpm's rpmvercmp() function.</div>|  
| signature_keyid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This field contains the 64-bit PGP key ID that the RPM issuer (generally the original operating system vendor) uses to sign the key. Note that the value should NOT contain a hyphen to separate the higher 32-bits from the lower 32-bits. It should simply be a 16 character hex string. PGP is used to verify the authenticity and integrity of the RPM being considered. Software packages and patches are signed cryptographically to allow administrators to allay concerns that the distribution mechanism has been compromised, whether that mechanism is web site, FTP server, or even a mirror controlled by a hostile party. OVAL uses this field most of all to confirm that the package installed on the system is that shipped by the vendor, since comparing package version numbers against patch announcements is only programmatically valid if the installed package is known to contain the patched code.</div>|  
| extended_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This represents the name, epoch, version, release, and architecture fields as a single version string. It has the form "NAME-EPOCH:VERSION-RELEASE.ARCHITECTURE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form NAME-0:VERSION-RELEASE.ARCHITECTURE. The 'gpg-pubkey' virtual package on RedHat and CentOS should use the string '(none)' for the architecture to construct the extended_name.</div>|  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This field contains the absolute path of a file or directory included in the rpm.</div>|  
  
## <a name="RpmInfoBehaviors"></a>== RpmInfoBehaviors ==

The RpmInfoBehaviors complex type defines a set of behaviors for controlling what data, for installed rpms, is collected. This behavior aligns with the rpm command.

#### Attributes:

*	**filepaths** xsd:boolean (optional -- default='false')  
'filepaths', when true, this behavior means collect all filepaths (directory and file information) from the rpm database for the package.  
  
______________
  
## <a name="rpmverify_test"></a><  ~~rpmverify_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the rpmverifyfile_test and the rpmverifypackage_test. The rpmverify_test was split into two tests to distinguish between the verification of the files in an rpm and the verification of an rpm as a whole. By making this distinction, content authoring is simplified and information is no longer duplicated across items. See the rpmverifyfile_test and rpmverifypackage_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The rpmverify_test is used to verify the integrity of installed RPMs. This test aligns with the rpm -V command for verifying RPMs. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a rpmverify_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="rpmverify_object"></a><  ~~rpmverify_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the rpmverifyfile_object and rpmverifypackage_object. The rpmverify_test was split into two tests to distinguish between the verification of the files in an rpm and the verification of an rpm as a whole. By making this distinction, content authoring is simplified and information is no longer duplicated across items. See the rpmverifyfile_object and rpmverifypackage_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The rpmverify_object element is used by a rpmverify_test to define a set of files within a set of RPMs to verify. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [linux-def:RpmVerifyBehaviors](#RpmVerifyBehaviors)  (0..1) |  
|||  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the package name to check.</div>|  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="rpmverify_state"></a><  ~~rpmverify_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the rpmverifyfile_state and rpmverifypackage_state. The rpmverify_test was split into two tests to distinguish between the verification of the files in an rpm and the verification of an rpm as a whole. By making this distinction, content authoring is simplified and information is no longer duplicated across items. See the rpmverifyfile_state and rpmverifypackage_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

The rpmverify_state element defines the different information that can be used to evaluate the specified rpm. This includes the architecture, epoch number, and version numbers. Most of this information can be obtained through the rpm function. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the package name to check.</div>|  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package.</div>|  
| size_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The size_differs entity aligns with the first character ('S' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| mode_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The mode_differs entity aligns with the second character ('M' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| md5_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The md5_differs entity aligns with the third character ('5' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| device_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The device_differs entity aligns with the fourth character ('D' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| link_mismatch | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The link_mismatch entity aligns with the fifth character ('L' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| ownership_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The ownership_differs entity aligns with the sixth character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| group_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The group_differs entity aligns with the seventh character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| mtime_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The mtime_differs entity aligns with the eighth character ('T' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| capabilities_differ | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The size_differs entity aligns with the ninth character ('P' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| configuration_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The configuration_file entity represents the configuration file attribute marker that may be present on a file.</div>|  
| documentation_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The documentation_file entity represents the documenation file attribute marker that may be present on a file.</div>|  
| ghost_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The ghost_file entity represents the ghost file attribute marker that may be present on a file.</div>|  
| license_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The license_file entity represents the license file attribute marker that may be present on a file.</div>|  
| readme_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The readme_file entity represents the readme file attribute marker that may be present on a file.</div>|  
  
## <a name="RpmVerifyBehaviors"></a>==  ~~RpmVerifyBehaviors~~  ==

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the RpmVerifyFileBehaviors and the RpmVerifyPackageBehaviors. The RpmVerifyBehaviors complex type is used by the rpmverify_test which was split into two tests to distinguish between the verification of the files in an rpm and the verification of an rpm as a whole. By making this distinction, content authoring is simplified and information is no longer duplicated across items. The new tests utilize the RpmVerifyFileBehaviors and RpmVerifyPackageBehaviors complex types, and as a result, the RpmVerifyBehaviors complex type is no longer needed.<br />**Comment:** This complex type has been deprecated and will be removed in version 6.0 of the language.<br />

The RpmVerifyBehaviors complex type defines a set of behaviors that for controlling how installed rpms are verified. These behaviors align with the verify-options of the rpm command with the addition of two behaviors that will indicate that a file with a given attribute marker should not be collected.

#### Attributes:

*	**nodeps** xsd:boolean (optional -- default='false')  
'nodeps' when true this behavior means, don't verify dependencies of packages.  
*	**nodigest** xsd:boolean (optional -- default='false')  
'nodigest' when true this behavior means, don't verify package or header digests when reading.  
*	**nofiles** xsd:boolean (optional -- default='false')  
'nofiles' when true this behavior means, don't verify any attributes of package files.  
*	**noscripts** xsd:boolean (optional -- default='false')  
'noscripts' when true this behavior means, don't execute the %verifyscript scriptlet (if any).  
*	**nosignature** xsd:boolean (optional -- default='false')  
'nosignature' when true this behavior means, don't verify package or header signatures when reading.  
*	**nolinkto** xsd:boolean (optional -- default='false')  
'nolinkto' when true this behavior means, don't verify symbolic links attribute.  
*	**nomd5** xsd:boolean (optional -- default='false')  
'nomd5' when true this behavior means, don't verify the file md5 attribute.  
*	**nosize** xsd:boolean (optional -- default='false')  
'nosize' when true this behavior means, don't verify the file size attribute.  
*	**nouser** xsd:boolean (optional -- default='false')  
'nouser' when true this behavior means, don't verify the file owner attribute.  
*	**nogroup** xsd:boolean (optional -- default='false')  
'nogroup' when true this behavior means, don't verify the file group owner attribute.  
*	**nomtime** xsd:boolean (optional -- default='false')  
'nomtime' when true this behavior means, don't verify the file mtime attribute.  
*	**nomode** xsd:boolean (optional -- default='false')  
'nomode' when true this behavior means, don't verify the file mode attribute.  
*	**nordev** xsd:boolean (optional -- default='false')  
'nordev' when true this behavior means, don't verify the file rdev attribute.  
*	**noconfigfiles** xsd:boolean (optional -- default='false')  
'noconfigfiles' when true this behavior means, skip files that are marked with the %config attribute marker.  
*	**noghostfiles** xsd:boolean (optional -- default='false')  
'noghostfiles' when true this behavior means, skip files that are maked with %ghost attribute marker.  
  
______________
  
## <a name="rpmverifyfile_test"></a>< rpmverifyfile_test >

The rpmverifyfile_test is used to verify the integrity of the individual files in installed RPMs. This test aligns with the rpm -V command for verifying RPMs. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a rpmverifyfile_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="rpmverifyfile_object"></a>< rpmverifyfile_object >

The rpmverifyfile_object element is used by a rpmverifyfile_test to define a set of files within a set of RPMs to verify. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [linux-def:RpmVerifyFileBehaviors](#RpmVerifyFileBehaviors)  (0..1) |  
|||  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the package name to check.</div>|  
| epoch | Restriction of [oval-def:EntityObjectAnySimpleType](oval-definitions-schema.md#EntityObjectAnySimpleType) . See schema for details. (1..1) |  
||<div>This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used.. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file</div>|  
| version | Restriction of [oval-def:EntityObjectAnySimpleType](oval-definitions-schema.md#EntityObjectAnySimpleType) . See schema for details. (1..1) |  
||<div>This is the version number of the build. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.</div>|  
| release | Restriction of [oval-def:EntityObjectAnySimpleType](oval-definitions-schema.md#EntityObjectAnySimpleType) . See schema for details. (1..1) |  
||<div>This is the release number of the build, changed by the vendor/builder.</div>|  
| arch | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.</div>|  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="rpmverifyfile_state"></a>< rpmverifyfile_state >

The rpmverifyfile_state element defines the different information that can be used to determine if a set of files within a set of RPMs passed verification. This includes the architecture, epoch number, version numbers, and the verification of various file attributes. Most of this information can be obtained through the rpm function. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the package name to check.</div>|  
| epoch | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used.. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file</div>|  
| version | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the build. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.</div>|  
| release | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the release number of the build, changed by the vendor/builder.</div>|  
| arch | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.</div>|  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package.</div>|  
| extended_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This represents the name, epoch, version, release, and architecture fields as a single version string. It has the form "NAME-EPOCH:VERSION-RELEASE.ARCHITECTURE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form NAME-0:VERSION-RELEASE.ARCHITECTURE.</div>|  
| size_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The size_differs entity aligns with the first character ('S' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| mode_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The mode_differs entity aligns with the second character ('M' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| ~~md5_differs~~ | ~~[linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1~~) |  
||~~<div>The md5_differs entity aligns with the third character ('5' flag) in the character string in the output generated by running rpm –V on a specific file.</div>~~|  
| filedigest_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The filedigest_differs entity aligns with the third character ('5' flag) in the character string in the output generated by running rpm –V on a specific file. This replaces the md5_differs entity due to naming changes for verification and reporting options.</div>|  
| device_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The device_differs entity aligns with the fourth character ('D' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| link_mismatch | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The link_mismatch entity aligns with the fifth character ('L' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| ownership_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The ownership_differs entity aligns with the sixth character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| group_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The group_differs entity aligns with the seventh character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| mtime_differs | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The mtime_differs entity aligns with the eighth character ('T' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| capabilities_differ | [linux-def:EntityStateRpmVerifyResultType](#EntityStateRpmVerifyResultType)  (0..1) |  
||<div>The size_differs entity aligns with the ninth character ('P' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| configuration_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The configuration_file entity represents the configuration file attribute marker that may be present on a file.</div>|  
| documentation_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The documentation_file entity represents the documenation file attribute marker that may be present on a file.</div>|  
| ghost_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The ghost_file entity represents the ghost file attribute marker that may be present on a file.</div>|  
| license_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The license_file entity represents the license file attribute marker that may be present on a file.</div>|  
| readme_file | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The readme_file entity represents the readme file attribute marker that may be present on a file.</div>|  
  
## <a name="RpmVerifyFileBehaviors"></a>== RpmVerifyFileBehaviors ==

The RpmVerifyFileBehaviors complex type defines a set of behaviors that for controlling how the individual files in installed rpms are verified. These behaviors align with the verify-options of the rpm command with the addition of two behaviors that will indicate that a file with a given attribute marker should not be collected.

#### Attributes:

*	**nolinkto** xsd:boolean (optional -- default='false')  
'nolinkto' when true this behavior means, don't verify symbolic links attribute.  
*	~~**nomd5** xsd:boolean (optional -- default='false')~~  
'nomd5' when true this behavior means, don't verify the file md5 attribute.  
*	**nosize** xsd:boolean (optional -- default='false')  
'nosize' when true this behavior means, don't verify the file size attribute.  
*	**nouser** xsd:boolean (optional -- default='false')  
'nouser' when true this behavior means, don't verify the file owner attribute.  
*	**nogroup** xsd:boolean (optional -- default='false')  
'nogroup' when true this behavior means, don't verify the file group owner attribute.  
*	**nomtime** xsd:boolean (optional -- default='false')  
'nomtime' when true this behavior means, don't verify the file mtime attribute.  
*	**nomode** xsd:boolean (optional -- default='false')  
'nomode' when true this behavior means, don't verify the file mode attribute.  
*	**nordev** xsd:boolean (optional -- default='false')  
'nordev' when true this behavior means, don't verify the file rdev attribute.  
*	**noconfigfiles** xsd:boolean (optional -- default='false')  
'noconfigfiles' when true this behavior means, skip files that are marked with the %config attribute marker.  
*	**noghostfiles** xsd:boolean (optional -- default='false')  
'noghostfiles' when true this behavior means, skip files that are maked with %ghost attribute marker.  
*	**nofiledigest** xsd:boolean (optional -- default='false')  
'nofiledigest' when true this behavior means, don't verify the file digest attribute.  
*	**nocaps** xsd:boolean (optional -- default='false')  
'nocaps' when true this behavior means, don't verify the presence of file capabilities.  
  
______________
  
## <a name="rpmverifypackage_test"></a>< rpmverifypackage_test >

The rpmverifypackage_test is used to verify the integrity of installed RPMs. This test aligns with the rpm -V command for verifying RPMs. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a rpmverifypackage_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="rpmverifypackage_object"></a>< rpmverifypackage_object >

The rpmverifypackage_object element is used by a rpmverify_test to define a set of RPMs to verify. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [linux-def:RpmVerifyPackageBehaviors](#RpmVerifyPackageBehaviors)  (0..1) |  
|||  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the package name to check.</div>|  
| epoch | Restriction of [oval-def:EntityObjectAnySimpleType](oval-definitions-schema.md#EntityObjectAnySimpleType) . See schema for details. (1..1) |  
||<div>This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used.. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file</div>|  
| version | Restriction of [oval-def:EntityObjectAnySimpleType](oval-definitions-schema.md#EntityObjectAnySimpleType) . See schema for details. (1..1) |  
||<div>This is the version number of the build. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.</div>|  
| release | Restriction of [oval-def:EntityObjectAnySimpleType](oval-definitions-schema.md#EntityObjectAnySimpleType) . See schema for details. (1..1) |  
||<div>This is the release number of the build, changed by the vendor/builder.</div>|  
| arch | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="rpmverifypackage_state"></a>< rpmverifypackage_state >

The rpmverifypackage_state element defines the different information that can be used to verify the integrity of installed rpms. This includes the architecture, epoch number, version numbers, verification of variuos attributes of an rpm. Most of this information can be obtained through the rpm function. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the package name to check.</div>|  
| epoch | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used.. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file</div>|  
| version | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the build. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.</div>|  
| release | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the release number of the build, changed by the vendor/builder.</div>|  
| arch | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.</div>|  
| extended_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This represents the name, epoch, version, release, and architecture fields as a single version string. It has the form "NAME-EPOCH:VERSION-RELEASE.ARCHITECTURE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form NAME-0:VERSION-RELEASE.ARCHITECTURE.</div>|  
| dependency_check_passed | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The dependency_check_passed entity indicates whether or not the dependency check passed. If the dependency check is not performed, due to the 'nodeps' behavior, this entity must not be collected.</div>|  
| ~~digest_check_passed~~ | ~~[oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1~~) |  
||~~<div>The digest_check_passed entity indicates whether or not the verification of the package or header digests passed. If the digest check is not performed, due to the 'nodigest' behavior, this entity must not be collected.</div>~~|  
| verification_script_successful | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The verification_script_successful entity indicates whether or not the verification script executed successfully. If the verification script is not executed, due to the 'noscripts' behavior, this entity must not be collected.</div>|  
| ~~signature_check_passed~~ | ~~[oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1~~) |  
||~~<div>The signature_check_passed entity indicates whether or not the verification of the package or header signatures passed. If the signature check is not performed, due to the 'nosignature' behavior, this entity must not be collected.</div>~~|  
  
## <a name="RpmVerifyPackageBehaviors"></a>== RpmVerifyPackageBehaviors ==

The RpmVerifyPackageBehaviors complex type defines a set of behaviors that for controlling how installed rpms are verified. These behaviors align with the verify-options of the rpm command.

#### Attributes:

*	**nodeps** xsd:boolean (optional -- default='false')  
'nodeps' when true this behavior means, don't verify dependencies of packages.  
*	~~**nodigest** xsd:boolean (optional -- default='false')~~  
'nodigest' when true this behavior means, don't verify package or header digests when reading.  
*	**noscripts** xsd:boolean (optional -- default='false')  
'noscripts' when true this behavior means, don't execute the %verifyscript scriptlet (if any).  
*	~~**nosignature** xsd:boolean (optional -- default='false')~~  
'nosignature' when true this behavior means, don't verify package or header signatures when reading.  
  
______________
  
## <a name="selinuxboolean_test"></a>< selinuxboolean_test >

The selinuxboolean_test is used to check the current and pending status of a SELinux boolean. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a selinuxboolean_object and the optional state element references a selinuxboolean_state that specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="selinuxboolean_object"></a>< selinuxboolean_object >

The selinuxboolean_object element is used by an selinuxboolean_test to define the items to evaluate based on a specified state.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the SELinux boolean.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="selinuxboolean_state"></a>< selinuxboolean_state >

The selinuxboolean_state element defines the different information that can be used to evaluate the specified SELinux boolean. This includes SELinux boolean's current and pending status. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the SELinux boolean.</div>|  
| current_status | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The current_status entity represents the current state of the specified SELinux boolean.</div>|  
| pending_status | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The pending_status entity represents the pending state of the specified SELinux boolean.</div>|  
  
______________
  
## <a name="selinuxsecuritycontext_test"></a>< selinuxsecuritycontext_test >

The selinuxsecuritycontext_test is used to check the security context of a file or process on the local system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a selinuxsecuritycontext_object and the optional state element references a selinuxsecuritycontext_state that specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="selinuxsecuritycontext_object"></a>< selinuxsecuritycontext_object >

The selinuxsecuritycontext_object element is used by an selinuxsecuritycontext_test to define the security contexts of files and processes to collect from the local system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [linux-def:FileBehaviors](#FileBehaviors)  (0..1) |  
|||  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filename element specifies the name of a file to evaluate. If the xsi:nil attribute is set to true, then the object being specified is the higher level directory object (not all the files in the directory). In this case, the filename element should not be used during collection and would result in the unique set of items being the directories themselves. For example, one would set xsi:nil to true if the desire was to test the attributes or permissions associated with a directory. Setting xsi:nil equal to true is different than using a .* pattern match, which says to collect every file under a given path.</div>|  
| pid | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The pid entity is the process ID of the process. If the xsi:nil attribute is set to true, the process ID shall be the tool's running process.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="selinuxsecuritycontext_state"></a>< selinuxsecuritycontext_state >

The selinuxsecuritycontext_state element defines the different information that can be used to evaluate the specified SELinux security context. This includes SELinux security context's user, type role, low sensitivity, low category, high sensitivity, high category, raw low sensitivity, raw low category, raw high sensitivity, and raw high category. This state follows the SELinux security context structure: user:role:type:low_sensitivity[:low_category]- high_sensitivity [:high_category]. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity.</div>|  
| pid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This is the process ID of the process.</div>|  
| user | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The user element specifies the SELinux user that either created the file or started the process.</div>|  
| role | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The role element specifies the types that a process may transition to (domain transitions). Note that this entity is not relevant for files and will always have a value of object_r.</div>|  
| type | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The type element specifies the domain in which the file is accessible or the domain in which a process executes.</div>|  
| low_sensitivity | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The low_sensitivity element specifies the current sensitivity of a file or process.</div>|  
| low_category | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The low_category element specifies the set of categories associated with the low sensitivity.</div>|  
| high_sensitivity | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The high_sensitivity element specifies the maximum range for a file or the clearance for a process.</div>|  
| high_category | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The high_category element specifies the set of categories associated with the high sensitivity.</div>|  
| rawlow_sensitivity | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The rawlow_sensitivity element specifies the current sensitivity of a file or process but in its raw context.</div>|  
| rawlow_category | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The rawlow_category element specifies the set of categories associated with the low sensitivity but in its raw context.</div>|  
| rawhigh_sensitivity | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The rawhigh_sensitivity element specifies the maximum range for a file or the clearance for a process but in its raw context.</div>|  
| rawhigh_category | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The rawhigh_category element specifies the set of categories associated with the high sensitivity but in its raw context.</div>|  
  
______________
  
## <a name="slackwarepkginfo_test"></a>< slackwarepkginfo_test >

The slackware package info test is used to check information associated with a given Slackware package. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a slackwarepkginfo_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="slackwarepkginfo_object"></a>< slackwarepkginfo_object >

The slackwarepkginfo_object element is used by a slackware package info test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A slackware package info object consists of a single name entity that identifies the package being checked.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the package name to check.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="slackwarepkginfo_state"></a>< slackwarepkginfo_state >

The slackwarepkginfo_state element defines the different information that can be used to evaluate the specified package. This includes the version, architecture, and revision. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the package name to check.</div>|  
| version | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the package.</div>|  
| architecture | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| revision | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="systemdunitdependency_test"></a>< systemdunitdependency_test >

The systemdunitdependency_test is used to retrieve information about dependencies of a single systemd unit in the form of a list. This list contains all dependencies, including transitive dependencies. For more information see the output generated by systemctl list-dependencies --plain $unit. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a systemdunitdependency_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="systemdunitdependency_object"></a>< systemdunitdependency_object >

The systemdunitdependency_object element is used by a systemdunitdependency_test to define the specific units to check the dependencies of. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| unit | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The unit entity refers to the full systemd unit name, which has a form of "$name.$type". For example "cupsd.service". This name is usually also the filename of the unit configuration file located in the /etc/systemd/ and /usr/lib/systemd/ directories.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="systemdunitdependency_state"></a>< systemdunitdependency_state >

The systemdunitdependency_state element holds dependencies of a specific systemd unit. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| unit | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The unit entity refers to the full systemd unit name, which has a form of "$name.$type". For example "cupsd.service". This name is usually also the filename of the unit configuration file located in the /etc/systemd/ and /usr/lib/systemd/ directories.</div>|  
| dependency | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The dependency entity refers to the name of a unit that was confirmed to be a dependency of the given unit.</div>|  
  
______________
  
## <a name="systemdunitproperty_test"></a>< systemdunitproperty_test >

The systemdunitproperty_test is used to retrieve information about systemd units in form of properties. For more information see the output generated by systemctl show $unit. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a systemdunitproperty_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="systemdunitproperty_object"></a>< systemdunitproperty_object >

The systemdunitproperty_object element is used by a systemdunitproperty_test to define the specific unit and property combination to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| unit | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The unit entity refers to the full systemd unit name, which has a form of "$name.$type". For example "cupsd.service". This name is usually also the filename of the unit configuration file located in the /etc/systemd/ and /usr/lib/systemd/ directories.</div>|  
| property | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The property entity refers to the systemd unit property that we are interested in.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="systemdunitproperty_state"></a>< systemdunitproperty_state >

The systemdunitproperty_state element holds information about properties of a specific systemd unit. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| unit | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The unit entity refers to the full systemd unit name, which has a form of "$name.$type". For example "cupsd.service". This name is usually also the filename of the unit configuration file located in the /etc/systemd/ and /usr/lib/systemd/ directories.</div>|  
| property | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the property associated with a systemd unit.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value of the property associated with a systemd unit.</div>|  
  
## <a name="FileBehaviors"></a>== FileBehaviors ==

The FileBehaviors complex type defines a number of behaviors that allow a more detailed definition of a set of files or file related items to collect. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

It is important to note that the 'max_depth' and 'recurse_direction' attributes of the 'behaviors' element do not apply to the 'filepath' element, only to the 'path' and 'filename' elements. This is because the 'filepath' element represents an absolute path to a particular file and it is not possible to recurse over a file.

#### Attributes:

*	**max_depth** Restriction of xsd:integer (optional -- default='-1')  
'max_depth' defines the maximum depth of recursion to perform when a recurse_direction is specified. A value of '0' is equivalent to no recursion, '1' means to step only one directory level up/down, and so on. The default value is '-1' meaning no limitation. For a 'max_depth' of -1 or any value of 1 or more the starting directory must be considered in the recursive search.  
Note that the default recurse_direction behavior is 'none' so even though max_depth specifies no limitation by default, the recurse_direction behavior turns recursion off.  
Note that this behavior only applies with the equality operation on the path entity.  
*	**recurse** Restriction of xsd:string (optional -- default='symlinks and directories') ('directories', 'symlinks', 'symlinks and directories')  
'recurse' defines how to recurse into the path entity, in other words what to follow during recursion. Options include symlinks, directories, or both. Note that a max-depth other than 0 has to be specified for recursion to take place and for this attribute to mean anything. Also note that this behavior does not apply to Windows systems since they do not support symbolic links. On Windows systems the 'recurse' behavior is always equivalent to directories.  
Note that this behavior only applies with the equality operation on the path entity.  
*	**recurse_direction** Restriction of xsd:string (optional -- default='none') ('none', 'up', 'down')  
'recurse_direction' defines the direction to recurse, either 'up' to parent directories, or 'down' into child directories. The default value is 'none' for no recursion.  
Note that this behavior only applies with the equality operation on the path entity.  
*	**recurse_file_system** Restriction of xsd:string (optional -- default='all') ('all', 'local', 'defined')  
'recurse_file_system' defines the file system limitation of any searching and applies to all operations as specified on the path or filepath entity. The value of 'local' limits the search scope to local file systems (as opposed to file systems mounted from an external system). The value of 'defined' keeps any recursion within the file system that the file_object (path+filename or filepath) has specified. For example, if the path specified was "/", you would search only the filesystem mounted there, not other filesystems mounted to descendant paths. The value of 'defined' only applies when an equality operation is used for searching because the path or filepath entity must explicitly define a file system. The default value is 'all' meaning to search all available file systems for data collection.  
Note that in most cases it is recommended that the value of 'local' be used to ensure that file system searching is limited to only the local file systems. Searching 'all' file systems may have performance implications.  
  
## <a name="EntityStateRpmVerifyResultType"></a>== EntityStateRpmVerifyResultType ==

The EntityStateRpmVerifyResultType complex type restricts a string value to the set of possible outcomes of checking an attribute of a file included in an RPM against the actual value of that attribute in the RPM database. The empty string is also allowed to support the empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| pass | <div>'pass' indicates that the test passed and is equivalent to the '.' value reported by the rpm -V command.</div> |  
| fail | <div>'fail' indicates that the test failed and is equivalent to a bold charcter in the test result string reported by the rpm -V command.</div> |  
| not performed | <div>'not performed' indicates that the test could not be performed and is equivalent to the '?' value reported by the rpm -V command.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateProtocolType"></a>== EntityStateProtocolType ==

The EntityStateProtocolType complex type restricts a string value to the set of physical layer protocols used by AF_PACKET sockets. The empty string is also allowed to support the empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| ETH_P_LOOP | <div>Ethernet loopback packet.</div> |  
| ETH_P_PUP | <div>Xerox PUP packet.</div> |  
| ETH_P_PUPAT | <div>Xerox PUP Address Transport packet.</div> |  
| ETH_P_IP | <div>Internet protocol packet.</div> |  
| ETH_P_X25 | <div>CCITT X.25 packet.</div> |  
| ETH_P_ARP | <div>Address resolution packet.</div> |  
| ETH_P_BPQ | <div>G8BPQ AX.25 ethernet packet.</div> |  
| ETH_P_IEEEPUP | <div>Xerox IEEE802.3 PUP packet.</div> |  
| ETH_P_IEEEPUPAT | <div>Xerox IEEE802.3 PUP address transport packet.</div> |  
| ETH_P_DEC | <div>DEC assigned protocol.</div> |  
| ETH_P_DNA_DL | <div>DEC DNA Dump/Load.</div> |  
| ETH_P_DNA_RC | <div>DEC DNA Remote Console.</div> |  
| ETH_P_DNA_RT | <div>DEC DNA Routing.</div> |  
| ETH_P_LAT | <div>DEC LAT.</div> |  
| ETH_P_DIAG | <div>DEC Diagnostics.</div> |  
| ETH_P_CUST | <div>DEC Customer use.</div> |  
| ETH_P_SCA | <div>DEC Systems Comms Arch.</div> |  
| ETH_P_RARP | <div>Reverse address resolution packet.</div> |  
| ETH_P_ATALK | <div>Appletalk DDP.</div> |  
| ETH_P_AARP | <div>Appletalk AARP.</div> |  
| ETH_P_8021Q | <div>802.1Q VLAN Extended Header.</div> |  
| ETH_P_IPX | <div>IPX over DIX.</div> |  
| ETH_P_IPV6 | <div>IPv6 over bluebook.</div> |  
| ETH_P_SLOW | <div>Slow Protocol. See 802.3ad 43B.</div> |  
| ETH_P_WCCP | <div>Web-cache coordination protocol.</div> |  
| ETH_P_PPP_DISC | <div>PPPoE discovery messages.</div> |  
| ETH_P_PPP_SES | <div>PPPoE session messages.</div> |  
| ETH_P_MPLS_UC | <div>MPLS Unicast traffic.</div> |  
| ETH_P_MPLS_MC | <div>MPLS Multicast traffic.</div> |  
| ETH_P_ATMMPOA | <div>MultiProtocol Over ATM.</div> |  
| ETH_P_ATMFATE | <div>Frame-based ATM Transport over Ethernet.</div> |  
| ETH_P_AOE | <div>ATA over Ethernet.</div> |  
| ETH_P_TIPC | <div>TIPC.</div> |  
| ETH_P_802_3 | <div>Dummy type for 802.3 frames.</div> |  
| ETH_P_AX25 | <div>Dummy protocol id for AX.25.</div> |  
| ETH_P_ALL | <div>Every packet.</div> |  
| ETH_P_802_2 | <div>802.2 frames.</div> |  
| ETH_P_SNAP | <div>Internal only.</div> |  
| ETH_P_DDCMP | <div>DEC DDCMP: Internal only</div> |  
| ETH_P_WAN_PPP | <div>Dummy type for WAN PPP frames.</div> |  
| ETH_P_PPP_MP | <div>Dummy type for PPP MP frames.</div> |  
| ETH_P_PPPTALK | <div>Dummy type for Atalk over PPP.</div> |  
| ETH_P_LOCALTALK | <div>Localtalk pseudo type.</div> |  
| ETH_P_TR_802_2 | <div>802.2 frames.</div> |  
| ETH_P_MOBITEX | <div>Mobitex.</div> |  
| ETH_P_CONTROL | <div>Card specific control frames.</div> |  
| ETH_P_IRDA | <div>Linux-IrDA.</div> |  
| ETH_P_ECONET | <div>Acorn Econet.</div> |  
| ETH_P_HDLC | <div>HDLC frames.</div> |  
| ETH_P_ARCNET | <div>1A for ArcNet.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
