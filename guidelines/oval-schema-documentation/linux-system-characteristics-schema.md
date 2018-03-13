# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Linux System Characteristics  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Linux specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="apparmorstatus_item"></a>< apparmorstatus_item >

The AppArmor Status Item displays various information about the current AppArmor policy. This item maps the counts of profiles and processes as per the results of the "apparmor_status" or "aa-status" command. Each item extends the standard ItemType as defined in the oval-system-characteristics-schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| loaded_profiles_count | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Displays the number of loaded profiles</div>|  
| enforce_mode_profiles_count | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Displays the number of profiles in enforce mode</div>|  
| complain_mode_profiles_count | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Displays the number of profiles in complain mode</div>|  
| processes_with_profiles_count | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Displays the number of processes which have profiles defined</div>|  
| enforce_mode_processes_count | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Displays the number of processes in enforce mode</div>|  
| complain_mode_processes_count | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Displays the number of processes in complain mode</div>|  
| unconfined_processes_with_profiles_count | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Displays the number of processes which are unconfined but have a profile defined</div>|  
  
______________
  
## <a name="dpkginfo_item"></a>< dpkginfo_item >

This item stores DPKG package info.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the pakage name to check.</div>|  
| arch | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the architecture for which the DPKG was built, like : i386, ppc, sparc, noarch.</div>|  
| epoch | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the epoch number of the DPKG. For a null epoch (or '(none)' as returned by dpkg) the string '(none)' should be used.</div>|  
| release | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the release number of the build.</div>|  
| version | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the build, changed by the vendor/builder.</div>|  
| evr | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This type represents the epoch, upstream_version, and debian_revision fields, for a Debian package, as a single version string. It has the form "EPOCH:UPSTREAM_VERSION-DEBIAN_REVISION". Note that a null epoch (or '(none)' as returned by dpkg) is equivalent to '0' and would hence have the form 0:UPSTREAM_VERSION-DEBIAN_REVISION.</div>|  
  
______________
  
## <a name="iflisteners_item"></a>< iflisteners_item >

An iflisteners_item stores the results of checking for applications that are bound to an interface on the system. Only applications that are bound to an ethernet interface should be collected.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| interface_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the interface (eth0, eth1, fw0, etc.).</div>|  
| protocol | [linux-sc:EntityItemProtocolType](#EntityItemProtocolType)  (0..1) |  
||<div>This is the physical layer protocol used by the AF_PACKET socket.</div>|  
| hw_address | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the hardware address associated with the interface.</div>|  
| program_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the communicating program.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the process ID of the process. The process in question is that of the program communicating on the network.</div>|  
| user_id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.</div>|  
  
______________
  
## <a name="inetlisteningserver_item"></a>< inetlisteningserver_item >

An inet listening server item stores the results of checking for network servers currently active on a system. It holds information pertaining to a specific protocol-address-port combination.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| protocol | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the transport-layer protocol, in lowercase: tcp or udp.</div>|  
| local_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This is the IP address associated with the inet listening server. Note that the IP address can be IPv4 or IPv6.</div>|  
| local_port | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the TCP or UDP port on which the program listens.</div>|  
| local_full_address | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| program_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the communicating program.</div>|  
| foreign_address | [oval-sc:EntityItemIPAddressStringType](oval-system-characteristics-schema.md#EntityItemIPAddressStringType)  (0..1) |  
||<div>This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.</div>|  
| foreign_port | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this value will be 0.</div>|  
| foreign_full_address | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the process ID of the process. The process in question is that of the program communicating on the network.</div>|  
| user_id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.</div>|  
  
______________
  
## <a name="partition_item"></a>< partition_item >

The partition_item stores information about a partition on the local system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| mount_point | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The mount_point element contains a string that represents the mount point of a partition on the local system.</div>|  
| device | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The device element contains a string that represents the name of the device.</div>|  
| uuid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The uuid element contains a string that represents the universally unique identifier associated with a partition.</div>|  
| fs_type | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The fs_type element contains a string that represents the type of filesystem on a partition.</div>|  
| mount_options | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>The mount_options element contains a string that represents a mount option associated with a partition on the local system.</div><div>Implementation note: not all mount options are visible in /etc/mtab or /proc/mounts. A complete source of additional mount options is the f_flag field of 'struct statvfs'. See statvfs(2). /etc/fstab may have additional mount options, but it need not contain all mounted filesystems, so it MUST NOT be relied upon. Implementers MUST be sure to get all mount options in some way.</div>|  
| total_space | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The total_space element contains an integer that represents the total number of physical blocks on a partition.</div>|  
| space_used | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The space_used element contains an integer that represents the number of physical blocks used on a partition.</div>|  
| space_left | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The space_left element contains an integer that represents the number of physical blocks left on a partition available to be used by privileged users.</div>|  
| space_left_for_unprivileged_users | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The space_left_for_unprivileged_users element contains an integer that represents the number of physical blocks remaining on a partition that are available to be used by unprivileged users.</div>|  
| block_size | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The block_size element contains an integer representing the actual byte size of each physical block on the partition's block device. This is the same block size used to compute the total_space, space_used, and space_left.</div>|  
  
______________
  
## <a name="rpminfo_item"></a>< rpminfo_item >

This item stores rpm info.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the pakage name to check.</div>|  
| arch | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.</div>|  
| epoch | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file</div>|  
| release | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the release number of the build.</div>|  
| version | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the build, changed by the vendor/builder. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.</div>|  
| evr | [oval-sc:EntityItemEVRStringType](oval-system-characteristics-schema.md#EntityItemEVRStringType)  (0..1) |  
||<div>This represents the epoch, version, and release fields as a single version string. It has the form "EPOCH:VERSION-RELEASE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form 0:VERSION-RELEASE.</div>|  
| signature_keyid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This field contains the PGP key ID that the RPM issuer (generally the original operating system vendor) uses to sign the key. PGP is used to verify the authenticity and integrity of the RPM being considered. Software packages and patches are signed cryptographically to allow administrators to allay concerns that the distribution mechanism has been compromised, whether that mechanism is web site, FTP server, or even a mirror controlled by a hostile party. OVAL uses this field most of all to confirm that the package installed on the system is that shipped by the vendor, since comparing package version numbers against patch announcements is only programmatically valid if the installed package is known to contain the patched code.</div>|  
| extended_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This represents the name, epoch, version, release, and architecture fields as a single version string. It has the form "NAME-EPOCH:VERSION-RELEASE.ARCHITECTURE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form NAME-0:VERSION-RELEASE.ARCHITECTURE. The 'gpg-pubkey' virtual package on RedHat and CentOS should use the string '(none)' for the architecture to construct the extended_name.</div>|  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>This field contains the absolute path of a file or directory included in the rpm.</div>|  
  
______________
  
## <a name="rpmverify_item"></a><  ~~rpmverify_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the rpmverifyfile_item and rpmverifypackage_item. The rpmverify_item was split into two items to distinguish between the verification of the files in an rpm and the verification of an rpm as a whole. By making this distinction, content authoring is simplified and information is no longer duplicated across items. See the rpmverifyfile_item and rpmverifypackage_item.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

This item stores rpm verification results similar to what is produced by the rpm -V command.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the package name to check.</div>|  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package.</div>|  
| size_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The size_differs entity aligns with the first character ('S' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| mode_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The mode_differs entity aligns with the second character ('M' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| md5_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The md5_differs entity aligns with the third character ('5' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| device_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The device_differs entity aligns with the fourth character ('D' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| link_mismatch | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The link_mismatch entity aligns with the fifth character ('L' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| ownership_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The ownership_differs entity aligns with the sixth character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| group_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The group_differs entity aligns with the seventh character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| mtime_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The mtime_differs entity aligns with the eighth character ('T' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| capabilities_differ | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The size_differs entity aligns with the ninth character ('P' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| configuration_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The configuration_file entity represents the configuration file attribute marker that may be present on a file.</div>|  
| documentation_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The documentation_file entity represents the documenation file attribute marker that may be present on a file.</div>|  
| ghost_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The ghost_file entity represents the ghost file attribute marker that may be present on a file.</div>|  
| license_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The license_file entity represents the license file attribute marker that may be present on a file.</div>|  
| readme_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The readme_file entity represents the readme file attribute marker that may be present on a file.</div>|  
  
______________
  
## <a name="rpmverifyfile_item"></a>< rpmverifyfile_item >

This item stores the verification results of the individual files in an rpm similar to what is produced by the rpm -V command.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the package name to check.</div>|  
| epoch | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used.. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file</div>|  
| version | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the build. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.</div>|  
| release | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the release number of the build, changed by the vendor/builder.</div>|  
| arch | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.</div>|  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package.</div>|  
| extended_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This represents the name, epoch, version, release, and architecture fields as a single version string. It has the form "NAME-EPOCH:VERSION-RELEASE.ARCHITECTURE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form NAME-0:VERSION-RELEASE.ARCHITECTURE.</div>|  
| size_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The size_differs entity aligns with the first character ('S' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| mode_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The mode_differs entity aligns with the second character ('M' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| ~~md5_differs~~ | ~~[linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1~~) |  
||~~<div>The md5_differs entity aligns with the third character ('5' flag) in the character string in the output generated by running rpm –V on a specific file.</div>~~|  
| filedigest_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The filedigest_differs entity aligns with the third character ('5' flag) in the character string in the output generated by running rpm –V on a specific file. This replaces the md5_differs entity due to naming changes for verification and reporting options.</div>|  
| device_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The device_differs entity aligns with the fourth character ('D' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| link_mismatch | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The link_mismatch entity aligns with the fifth character ('L' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| ownership_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The ownership_differs entity aligns with the sixth character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| group_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The group_differs entity aligns with the seventh character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| mtime_differs | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The mtime_differs entity aligns with the eighth character ('T' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| capabilities_differ | [linux-sc:EntityItemRpmVerifyResultType](#EntityItemRpmVerifyResultType)  (0..1) |  
||<div>The size_differs entity aligns with the ninth character ('P' flag) in the character string in the output generated by running rpm –V on a specific file.</div>|  
| configuration_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The configuration_file entity represents the configuration file attribute marker that may be present on a file.</div>|  
| documentation_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The documentation_file entity represents the documenation file attribute marker that may be present on a file.</div>|  
| ghost_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The ghost_file entity represents the ghost file attribute marker that may be present on a file.</div>|  
| license_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The license_file entity represents the license file attribute marker that may be present on a file.</div>|  
| readme_file | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The readme_file entity represents the readme file attribute marker that may be present on a file.</div>|  
  
______________
  
## <a name="rpmverifypackage_item"></a>< rpmverifypackage_item >

This item stores the rpm verification results of an rpm similar to what is produced by the rpm -V command.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the package name to check.</div>|  
| epoch | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used.. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file</div>|  
| version | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the build. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.</div>|  
| release | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the release number of the build, changed by the vendor/builder.</div>|  
| arch | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.</div>|  
| extended_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This represents the name, epoch, version, release, and architecture fields as a single version string. It has the form "NAME-EPOCH:VERSION-RELEASE.ARCHITECTURE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form NAME-0:VERSION-RELEASE.ARCHITECTURE.</div>|  
| dependency_check_passed | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The dependency_check_passed entity indicates whether or not the dependency check passed. If the dependency check is not performed, due to the 'nodeps' behavior, this entity must not be collected.</div>|  
| ~~digest_check_passed~~ | ~~[oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1~~) |  
||~~<div>The digest_check_passed entity indicates whether or not the verification of the package or header digests passed. If the digest check is not performed, due to the 'nodigest' behavior, this entity must not be collected.</div>~~|  
| verification_script_successful | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The verification_script_successful entity indicates whether or not the verification script executed successfully. If the verification script is not executed, due to the 'noscripts' behavior, this entity must not be collected.</div>|  
| ~~signature_check_passed~~ | ~~[oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1~~) |  
||~~<div>The signature_check_passed entity indicates whether or not the verification of the package or header signatures passed. If the signature check is not performed, due to the 'nosignature' behavior, this entity must not be collected.</div>~~|  
  
______________
  
## <a name="selinuxboolean_item"></a>< selinuxboolean_item >

This item describes the current and pending status of a SELinux boolean. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the SELinux boolean.</div>|  
| current_status | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The current_status entity indicates current state of the specified SELinux boolean.</div>|  
| pending_status | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The pending_status entity indicates the pending state of the specified SELinux boolean.</div>|  
  
______________
  
## <a name="selinuxsecuritycontext_item"></a>< selinuxsecuritycontext_item >

This item describes the SELinux security context of a file or process on the local system. This item follows the SELinux security context structure: user:role:type:low_sensitivity[:low_category]- high_sensitivity [:high_category]. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| filepath | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path element specifies the directory component of the absolute path to a file on the machine.</div>|  
| filename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity.</div>|  
| pid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>This is the process ID of the process.</div>|  
| user | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user element specifies the SELinux user that either created the file or started the process.</div>|  
| role | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The role element specifies the types that a process may transition to (domain transitions). Note that this entity is not relevant for files and will always have a value of object_r.</div>|  
| type | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The type element specifies the domain in which the file is accessible or the domain in which a process executes.</div>|  
| low_sensitivity | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The low_sensitivity element specifies the current sensitivity of a file or process.</div>|  
| low_category | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The low_category element specifies the set of categories associated with the low sensitivity.</div>|  
| high_sensitivity | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The high_sensitivity element specifies the maximum range for a file or the clearance for a process.</div>|  
| high_category | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The high_category element specifies the set of categories associated with the high sensitivity.</div>|  
| rawlow_sensitivity | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The rawlow_sensitivity element specifies the current sensitivity of a file or process but in its raw context.</div>|  
| rawlow_category | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The rawlow_category element specifies the set of categories associated with the low sensitivity but in its raw context.</div>|  
| rawhigh_sensitivity | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The rawhigh_sensitivity element specifies the maximum range for a file or the clearance for a process but in its raw context.</div>|  
| rawhigh_category | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The rawhigh_category element specifies the set of categories associated with the high sensitivity but in its raw context.</div>|  
  
______________
  
## <a name="slackwarepkginfo_item"></a>< slackwarepkginfo_item >

This item describes info related to Slackware packages. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the pakage name to check.</div>|  
| version | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div>This is the version number of the pakage.</div>|  
| architecture | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the architecture the package is designed for.</div>|  
| revision | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the revision of the package.</div>|  
  
______________
  
## <a name="systemdunitdependency_item"></a>< systemdunitdependency_item >

This item stores the dependencies of the systemd unit. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| unit | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The unit entity refers to the full systemd unit name, which has a form of "$name.$type". For example "cupsd.service". This name is usually also the filename of the unit configuration file located in the /etc/systemd/ and /usr/lib/systemd/ directories.</div>|  
| dependency | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>The dependency entity refers to the name of a unit that was confirmed to be a dependency of the given unit.</div>|  
  
______________
  
## <a name="systemdunitproperty_item"></a>< systemdunitproperty_item >

This item stores the properties and values of a systemd unit.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| unit | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The unit entity refers to the full systemd unit name, which has a form of "$name.$type". For example "cupsd.service". This name is usually also the filename of the unit configuration file located in the /etc/systemd/ and /usr/lib/systemd/ directories.</div>|  
| property | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the property associated with a systemd unit.</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..unbounded) |  
||<div>The value of the property associated with a systemd unit. Exactly one value shall be used for all property types except dbus arrays - each array element shall be represented by one value.</div>|  
  
## <a name="EntityItemRpmVerifyResultType"></a>== EntityItemRpmVerifyResultType ==

The EntityItemRpmVerifyResultType complex type restricts a string value to the set of possible outcomes of checking an attribute of a file included in an RPM against the actual value of that attribute in the RPM database. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| pass | <div>'pass' indicates that the test passed and is equivalent to the '.' value reported by the rpm -V command.</div> |  
| fail | <div>'fail' indicates that the test failed and is equivalent to a bold charcter in the test result string reported by the rpm -V command.</div> |  
| not performed | <div>'not performed' indicates that the test could not be performed and is equivalent to the '?' value reported by the rpm -V command.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemProtocolType"></a>== EntityItemProtocolType ==

The EntityStateProtocolType complex type restricts a string value to the set of physical layer protocols used by AF_PACKET sockets. The empty string is also allowed to support the empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
