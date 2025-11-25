Open Vulnerability and Assessment Language: Linux System Characteristics  
=========================================================
* Schema: Linux System Characteristics  
* Version: 5.12.2  
* Release Date: 11/25/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Linux specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`apparmorstatus_item`  
* :ref:`dpkginfo_item`  
* :ref:`iflisteners_item`  
* :ref:`inetlisteningserver_item`  
* :ref:`kernelmodule_item`  
* :ref:`partition_item`  
* :ref:`rpminfo_item`  
* :ref:`rpmverify_item`  
* :ref:`rpmverifyfile_item`  
* :ref:`rpmverifypackage_item`  
* :ref:`selinuxboolean_item`  
* :ref:`selinuxsecuritycontext_item`  
* :ref:`sestatus_item`  
* :ref:`slackwarepkginfo_item`  
* :ref:`systemdunitdependency_item`  
* :ref:`systemdunitproperty_item`  
  
______________
  
.. _apparmorstatus_item:  
  
< apparmorstatus_item >  
---------------------------------------------------------
The AppArmor Status Item displays various information about the current AppArmor policy. This item maps the counts of profiles and processes as per the results of the "apparmor_status" or "aa-status" command. Each item extends the standard ItemType as defined in the oval-system-characteristics-schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - loaded_profiles_count  
      - oval-sc:EntityItemIntType (0..1)  
      - Displays the number of loaded profiles  
    * - enforce_mode_profiles_count  
      - oval-sc:EntityItemIntType (0..1)  
      - Displays the number of profiles in enforce mode  
    * - complain_mode_profiles_count  
      - oval-sc:EntityItemIntType (0..1)  
      - Displays the number of profiles in complain mode  
    * - processes_with_profiles_count  
      - oval-sc:EntityItemIntType (0..1)  
      - Displays the number of processes which have profiles defined  
    * - enforce_mode_processes_count  
      - oval-sc:EntityItemIntType (0..1)  
      - Displays the number of processes in enforce mode  
    * - complain_mode_processes_count  
      - oval-sc:EntityItemIntType (0..1)  
      - Displays the number of processes in complain mode  
    * - unconfined_processes_with_profiles_count  
      - oval-sc:EntityItemIntType (0..1)  
      - Displays the number of processes which are unconfined but have a profile defined  
  
______________
  
.. _dpkginfo_item:  
  
< dpkginfo_item >  
---------------------------------------------------------
This item stores DPKG package info.

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
      - This is the pakage name to check.  
    * - arch  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the architecture for which the DPKG was built, like : i386, ppc, sparc, noarch.  
    * - epoch  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the epoch number of the DPKG. For a null epoch (or '(none)' as returned by dpkg) the string '(none)' should be used.  
    * - release  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the release number of the build.  
    * - version  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the version number of the build, changed by the vendor/builder.  
    * - evr  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This type represents the epoch, upstream_version, and debian_revision fields, for a Debian package, as a single version string. It has the form "EPOCH:UPSTREAM_VERSION-DEBIAN_REVISION". Note that a null epoch (or '(none)' as returned by dpkg) is equivalent to '0' and would hence have the form 0:UPSTREAM_VERSION-DEBIAN_REVISION.  
  
______________
  
.. _iflisteners_item:  
  
< iflisteners_item >  
---------------------------------------------------------
An iflisteners_item stores the results of checking for applications that are bound to an interface on the system. Only applications that are bound to an ethernet interface should be collected.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - interface_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the interface (eth0, eth1, fw0, etc.).  
    * - protocol  
      - linux-sc:EntityItemProtocolType (0..1)  
      - This is the physical layer protocol used by the AF_PACKET socket.  
    * - hw_address  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the hardware address associated with the interface.  
    * - program_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the communicating program.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the process ID of the process. The process in question is that of the program communicating on the network.  
    * - user_id  
      - oval-sc:EntityItemIntType (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.  
  
______________
  
.. _inetlisteningserver_item:  
  
< inetlisteningserver_item >  
---------------------------------------------------------
An inet listening server item stores the results of checking for network servers currently active on a system. It holds information pertaining to a specific protocol-address-port combination.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - protocol  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the transport-layer protocol, in lowercase: tcp or udp.  
    * - local_address  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - This is the IP address associated with the inet listening server. Note that the IP address can be IPv4 or IPv6.  
    * - local_port  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the TCP or UDP port on which the program listens.  
    * - local_full_address  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the IP address and network port on which the program listens, equivalent to local_address:local_port. Note that the IP address can be IPv4 or IPv6.  
    * - program_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the communicating program.  
    * - foreign_address  
      - oval-sc:EntityItemIPAddressStringType (0..1)  
      - This is the IP address with which the program is communicating, or with which it will communicate, in the case of a listening server. Note that the IP address can be IPv4 or IPv6.  
    * - foreign_port  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the TCP or UDP port to which the program communicates. In the case of a listening program accepting new connections, this value will be 0.  
    * - foreign_full_address  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the IP address and network port to which the program is communicating or will accept communications from, equivalent to foreign_address:foreign_port. Note that the IP address can be IPv4 or IPv6.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the process ID of the process. The process in question is that of the program communicating on the network.  
    * - user_id  
      - oval-sc:EntityItemIntType (0..1)  
      - The numeric user id, or uid, is the third column of each user's entry in /etc/passwd. It represents the owner, and thus privilege level, of the specified program.  
  
______________
  
.. _kernelmodule_item:  
  
< kernelmodule_item >  
---------------------------------------------------------
The kernelmodule_item captures limited information, parsing the output of the "modprobe -n -v [module_name]" command.

Need a combo of "lsmod", "modprobe -n -v" and potentially searching "" Collection of a modprobe_item is determined by the "modprobe -n -v module_name" command. Due to the limitations of the modprobe command, and its requirement for a specific module_name, only the "equals" operation is supported, as there is no method to collect this information otherwise. To support other collection methods, variable references should be used to collect specific module names for use in collection here.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - module_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the kernel module for which information was collected  
    * - loaded  
      - oval-sc:EntityItemBoolType (0..1)  
      - The loaded element is true when the collected kernel module is currently loaded; false otherwise.  
    * - loadable  
      - oval-sc:EntityItemBoolType (0..1)  
      - The loadable element is true when the collected kernel module is allowed to be loaded; false otherwise.  
  
______________
  
.. _partition_item:  
  
< partition_item >  
---------------------------------------------------------
The partition_item stores information about a partition on the local system.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - mount_point  
      - oval-sc:EntityItemStringType (0..1)  
      - The mount_point element contains a string that represents the mount point of a partition on the local system.  
    * - device  
      - oval-sc:EntityItemStringType (0..1)  
      - The device element contains a string that represents the name of the device.  
    * - uuid  
      - oval-sc:EntityItemStringType (0..1)  
      - The uuid element contains a string that represents the universally unique identifier associated with a partition.  
    * - fs_type  
      - oval-sc:EntityItemStringType (0..1)  
      - The fs_type element contains a string that represents the type of filesystem on a partition.  
    * - mount_options  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The mount_options element contains a string that represents a mount option associated with a partition on the local system.Implementation note: not all mount options are visible in /etc/mtab or /proc/mounts. A complete source of additional mount options is the f_flag field of 'struct statvfs'. See statvfs(2). /etc/fstab may have additional mount options, but it need not contain all mounted filesystems, so it MUST NOT be relied upon. Implementers MUST be sure to get all mount options in some way.  
    * - total_space  
      - oval-sc:EntityItemIntType (0..1)  
      - The total_space element contains an integer that represents the total number of physical blocks on a partition.  
    * - space_used  
      - oval-sc:EntityItemIntType (0..1)  
      - The space_used element contains an integer that represents the number of physical blocks used on a partition.  
    * - space_left  
      - oval-sc:EntityItemIntType (0..1)  
      - The space_left element contains an integer that represents the number of physical blocks left on a partition available to be used by privileged users.  
    * - space_left_for_unprivileged_users  
      - oval-sc:EntityItemIntType (0..1)  
      - The space_left_for_unprivileged_users element contains an integer that represents the number of physical blocks remaining on a partition that are available to be used by unprivileged users.  
    * - block_size  
      - oval-sc:EntityItemIntType (0..1)  
      - The block_size element contains an integer representing the actual byte size of each physical block on the partition's block device. This is the same block size used to compute the total_space, space_used, and space_left.  
  
______________
  
.. _rpminfo_item:  
  
< rpminfo_item >  
---------------------------------------------------------
This item stores rpm info.

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
      - This is the pakage name to check.  
    * - arch  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.  
    * - epoch  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file  
    * - release  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the release number of the build.  
    * - version  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the version number of the build, changed by the vendor/builder. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.  
    * - evr  
      - oval-sc:EntityItemEVRStringType (0..1)  
      - This represents the epoch, version, and release fields as a single version string. It has the form "EPOCH:VERSION-RELEASE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form 0:VERSION-RELEASE.  
    * - signature_keyid  
      - oval-sc:EntityItemStringType (0..1)  
      - This field contains the PGP key ID that the RPM issuer (generally the original operating system vendor) uses to sign the key. PGP is used to verify the authenticity and integrity of the RPM being considered. Software packages and patches are signed cryptographically to allow administrators to allay concerns that the distribution mechanism has been compromised, whether that mechanism is web site, FTP server, or even a mirror controlled by a hostile party. OVAL uses this field most of all to confirm that the package installed on the system is that shipped by the vendor, since comparing package version numbers against patch announcements is only programmatically valid if the installed package is known to contain the patched code.  
    * - extended_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This represents the name, epoch, version, release, and architecture fields as a single version string. It has the form "NAME-EPOCH:VERSION-RELEASE.ARCHITECTURE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form NAME-0:VERSION-RELEASE.ARCHITECTURE. The 'gpg-pubkey' virtual package on RedHat and CentOS should use the string '(none)' for the architecture to construct the extended_name.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - This field contains the absolute path of a file or directory included in the rpm.  
  
______________
  
.. _rpmverify_item:  
  
< rpmverify_item > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: Replaced by the rpmverifyfile_item and rpmverifypackage_item. The rpmverify_item was split into two items to distinguish between the verification of the files in an rpm and the verification of an rpm as a whole. By making this distinction, content authoring is simplified and information is no longer duplicated across items. See the rpmverifyfile_item and rpmverifypackage_item.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
This item stores rpm verification results similar to what is produced by the rpm -V command.

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
      - This is the package name to check.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file or directory in the specified package.  
    * - size_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The size_differs entity aligns with the first character ('S' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - mode_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The mode_differs entity aligns with the second character ('M' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - md5_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The md5_differs entity aligns with the third character ('5' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - device_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The device_differs entity aligns with the fourth character ('D' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - link_mismatch  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The link_mismatch entity aligns with the fifth character ('L' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - ownership_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The ownership_differs entity aligns with the sixth character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - group_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The group_differs entity aligns with the seventh character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - mtime_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The mtime_differs entity aligns with the eighth character ('T' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - capabilities_differ  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The size_differs entity aligns with the ninth character ('P' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - configuration_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The configuration_file entity represents the configuration file attribute marker that may be present on a file.  
    * - documentation_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The documentation_file entity represents the documenation file attribute marker that may be present on a file.  
    * - ghost_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The ghost_file entity represents the ghost file attribute marker that may be present on a file.  
    * - license_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The license_file entity represents the license file attribute marker that may be present on a file.  
    * - readme_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The readme_file entity represents the readme file attribute marker that may be present on a file.  
  
______________
  
.. _rpmverifyfile_item:  
  
< rpmverifyfile_item >  
---------------------------------------------------------
This item stores the verification results of the individual files in an rpm similar to what is produced by the rpm -V command.

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
      - This is the package name to check.  
    * - epoch  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used.. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file  
    * - version  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the version number of the build. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.  
    * - release  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the release number of the build, changed by the vendor/builder.  
    * - arch  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file or directory in the specified package.  
    * - extended_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This represents the name, epoch, version, release, and architecture fields as a single version string. It has the form "NAME-EPOCH:VERSION-RELEASE.ARCHITECTURE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form NAME-0:VERSION-RELEASE.ARCHITECTURE.  
    * - size_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The size_differs entity aligns with the first character ('S' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - mode_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The mode_differs entity aligns with the second character ('M' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - md5_differs (Deprecated)  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The md5_differs entity aligns with the third character ('5' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - filedigest_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The filedigest_differs entity aligns with the third character ('5' flag) in the character string in the output generated by running rpm –V on a specific file. This replaces the md5_differs entity due to naming changes for verification and reporting options.  
    * - device_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The device_differs entity aligns with the fourth character ('D' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - link_mismatch  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The link_mismatch entity aligns with the fifth character ('L' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - ownership_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The ownership_differs entity aligns with the sixth character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - group_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The group_differs entity aligns with the seventh character ('U' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - mtime_differs  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The mtime_differs entity aligns with the eighth character ('T' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - capabilities_differ  
      - linux-sc:EntityItemRpmVerifyResultType (0..1)  
      - The size_differs entity aligns with the ninth character ('P' flag) in the character string in the output generated by running rpm –V on a specific file.  
    * - configuration_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The configuration_file entity represents the configuration file attribute marker that may be present on a file.  
    * - documentation_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The documentation_file entity represents the documenation file attribute marker that may be present on a file.  
    * - ghost_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The ghost_file entity represents the ghost file attribute marker that may be present on a file.  
    * - license_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The license_file entity represents the license file attribute marker that may be present on a file.  
    * - readme_file  
      - oval-sc:EntityItemBoolType (0..1)  
      - The readme_file entity represents the readme file attribute marker that may be present on a file.  
  
______________
  
.. _rpmverifypackage_item:  
  
< rpmverifypackage_item >  
---------------------------------------------------------
This item stores the rpm verification results of an rpm similar to what is produced by the rpm -V command.

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
      - This is the package name to check.  
    * - epoch  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the epoch number of the RPM, this is used as a kludge for version-release comparisons where the vendor has done some kind of re-numbering or version forking. For a null epoch (or '(none)' as returned by rpm) the string '(none)' should be used.. This number is not revealed by a normal query of the RPM's information -- you must use a formatted rpm query command to gather this data from the command line, like so. For an already-installed RPM: rpm -q --qf '%{EPOCH}\n' installed_rpm For an RPM file that has not been installed: rpm -qp --qf '%{EPOCH}\n' rpm_file  
    * - version  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the version number of the build. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be 2.0.40.  
    * - release  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the release number of the build, changed by the vendor/builder.  
    * - arch  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the architecture for which the RPM was built, like : i386, ppc, sparc, noarch. In the case of an apache rpm named httpd-2.0.40-21.11.4.i686.rpm, this value would be i686.  
    * - extended_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This represents the name, epoch, version, release, and architecture fields as a single version string. It has the form "NAME-EPOCH:VERSION-RELEASE.ARCHITECTURE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form NAME-0:VERSION-RELEASE.ARCHITECTURE.  
    * - dependency_check_passed  
      - oval-sc:EntityItemBoolType (0..1)  
      - The dependency_check_passed entity indicates whether or not the dependency check passed. If the dependency check is not performed, due to the 'nodeps' behavior, this entity must not be collected.  
    * - digest_check_passed (Deprecated)  
      - oval-sc:EntityItemBoolType (0..1)  
      - The digest_check_passed entity indicates whether or not the verification of the package or header digests passed. If the digest check is not performed, due to the 'nodigest' behavior, this entity must not be collected.  
    * - verification_script_successful  
      - oval-sc:EntityItemBoolType (0..1)  
      - The verification_script_successful entity indicates whether or not the verification script executed successfully. If the verification script is not executed, due to the 'noscripts' behavior, this entity must not be collected.  
    * - signature_check_passed (Deprecated)  
      - oval-sc:EntityItemBoolType (0..1)  
      - The signature_check_passed entity indicates whether or not the verification of the package or header signatures passed. If the signature check is not performed, due to the 'nosignature' behavior, this entity must not be collected.  
  
______________
  
.. _selinuxboolean_item:  
  
< selinuxboolean_item >  
---------------------------------------------------------
This item describes the current and pending status of a SELinux boolean. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

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
      - The name of the SELinux boolean.  
    * - current_status  
      - oval-sc:EntityItemBoolType (0..1)  
      - The current_status entity indicates current state of the specified SELinux boolean.  
    * - pending_status  
      - oval-sc:EntityItemBoolType (0..1)  
      - The pending_status entity indicates the pending state of the specified SELinux boolean.  
  
______________
  
.. _selinuxsecuritycontext_item:  
  
< selinuxsecuritycontext_item >  
---------------------------------------------------------
This item describes the SELinux security context of a file or process on the local system. This item follows the SELinux security context structure: user:role:type:low_sensitivity[:low_category]- high_sensitivity [:high_category]. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file on the machine. A directory cannot be specified as a filepath.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path element specifies the directory component of the absolute path to a file on the machine.  
    * - filename  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the file. If the xsi:nil attribute is set to true, then the item being represented is the higher directory represented by the path entity.  
    * - pid  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the process ID of the process.  
    * - user  
      - oval-sc:EntityItemStringType (0..1)  
      - The user element specifies the SELinux user that either created the file or started the process.  
    * - role  
      - oval-sc:EntityItemStringType (0..1)  
      - The role element specifies the types that a process may transition to (domain transitions). Note that this entity is not relevant for files and will always have a value of object_r.  
    * - type  
      - oval-sc:EntityItemStringType (0..1)  
      - The type element specifies the domain in which the file is accessible or the domain in which a process executes.  
    * - low_sensitivity  
      - oval-sc:EntityItemStringType (0..1)  
      - The low_sensitivity element specifies the current sensitivity of a file or process.  
    * - low_category  
      - oval-sc:EntityItemStringType (0..1)  
      - The low_category element specifies the set of categories associated with the low sensitivity.  
    * - high_sensitivity  
      - oval-sc:EntityItemStringType (0..1)  
      - The high_sensitivity element specifies the maximum range for a file or the clearance for a process.  
    * - high_category  
      - oval-sc:EntityItemStringType (0..1)  
      - The high_category element specifies the set of categories associated with the high sensitivity.  
    * - rawlow_sensitivity  
      - oval-sc:EntityItemStringType (0..1)  
      - The rawlow_sensitivity element specifies the current sensitivity of a file or process but in its raw context.  
    * - rawlow_category  
      - oval-sc:EntityItemStringType (0..1)  
      - The rawlow_category element specifies the set of categories associated with the low sensitivity but in its raw context.  
    * - rawhigh_sensitivity  
      - oval-sc:EntityItemStringType (0..1)  
      - The rawhigh_sensitivity element specifies the maximum range for a file or the clearance for a process but in its raw context.  
    * - rawhigh_category  
      - oval-sc:EntityItemStringType (0..1)  
      - The rawhigh_category element specifies the set of categories associated with the high sensitivity but in its raw context.  
  
______________
  
.. _sestatus_item:  
  
< sestatus_item >  
---------------------------------------------------------
The SEStatus Item displays various information about the current SEStatus policy. This item maps the counts of profiles and processes as per the results of the "sestatus" command. Each item extends the standard ItemType as defined in the oval-system-characteristics-schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - selinux_status  
      - linux-sc:EntityItemSEStatusType (0..1)  
      - Indicates whether SELinux module itself is enabled or disabled on your system.  
    * - current_mode  
      - linux-sc:EntityItemSEStatusModeType (0..1)  
      - This indicates whether SELinux is currently enforcing the policies or not utilizing the following values enforcing, permissive, disabled.  
    * - mode_from_config_file  
      - linux-sc:EntityItemSEStatusModeType (0..1)  
      - Displays the mode from config file.  
    * - loaded_policy_name  
      - linux-sc:EntityItemSEStatusPolicyType (0..1)  
      - Displays what type of SELinux policy is currently loaded. In pretty much all common situations, you’ll see “targeted” as the SELinux policy, as that is the default policy.  
    * - policy_from_config_file  
      - linux-sc:EntityItemSEStatusPolicyType (0..1)  
      - Displays what type of SELinux policy is present in the SELinux configuration.  
  
______________
  
.. _slackwarepkginfo_item:  
  
< slackwarepkginfo_item >  
---------------------------------------------------------
This item describes info related to Slackware packages. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

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
      - This is the pakage name to check.  
    * - version  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      - This is the version number of the pakage.  
    * - architecture  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the architecture the package is designed for.  
    * - revision  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the revision of the package.  
  
______________
  
.. _systemdunitdependency_item:  
  
< systemdunitdependency_item >  
---------------------------------------------------------
This item stores the dependencies of the systemd unit. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - unit  
      - oval-sc:EntityItemStringType (0..1)  
      - The unit entity refers to the full systemd unit name, which has a form of "$name.$type". For example "cupsd.service". This name is usually also the filename of the unit configuration file located in the /etc/systemd/ and /usr/lib/systemd/ directories.  
    * - dependency  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The dependency entity refers to the name of a unit that was confirmed to be a dependency of the given unit.  
  
______________
  
.. _systemdunitproperty_item:  
  
< systemdunitproperty_item >  
---------------------------------------------------------
This item stores the properties and values of a systemd unit.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - unit  
      - oval-sc:EntityItemStringType (0..1)  
      - The unit entity refers to the full systemd unit name, which has a form of "$name.$type". For example "cupsd.service". This name is usually also the filename of the unit configuration file located in the /etc/systemd/ and /usr/lib/systemd/ directories.  
    * - property  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the property associated with a systemd unit.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value of the property associated with a systemd unit. Exactly one value shall be used for all property types except dbus arrays - each array element shall be represented by one value.  
  
.. _EntityItemRpmVerifyResultType:  
  
== EntityItemRpmVerifyResultType ==  
---------------------------------------------------------
The EntityItemRpmVerifyResultType complex type restricts a string value to the set of possible outcomes of checking an attribute of a file included in an RPM against the actual value of that attribute in the RPM database. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - pass  
      - | 'pass' indicates that the test passed and is equivalent to the '.' value reported by the rpm -V command.  
    * - fail  
      - | 'fail' indicates that the test failed and is equivalent to a bold charcter in the test result string reported by the rpm -V command.  
    * - not performed  
      - | 'not performed' indicates that the test could not be performed and is equivalent to the '?' value reported by the rpm -V command.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemProtocolType:  
  
== EntityItemProtocolType ==  
---------------------------------------------------------
The EntityStateProtocolType complex type restricts a string value to the set of physical layer protocols used by AF_PACKET sockets. The empty string is also allowed to support the empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ETH_P_LOOP  
      - | Ethernet loopback packet.  
    * - ETH_P_PUP  
      - | Xerox PUP packet.  
    * - ETH_P_PUPAT  
      - | Xerox PUP Address Transport packet.  
    * - ETH_P_IP  
      - | Internet protocol packet.  
    * - ETH_P_X25  
      - | CCITT X.25 packet.  
    * - ETH_P_ARP  
      - | Address resolution packet.  
    * - ETH_P_BPQ  
      - | G8BPQ AX.25 ethernet packet.  
    * - ETH_P_IEEEPUP  
      - | Xerox IEEE802.3 PUP packet.  
    * - ETH_P_IEEEPUPAT  
      - | Xerox IEEE802.3 PUP address transport packet.  
    * - ETH_P_DEC  
      - | DEC assigned protocol.  
    * - ETH_P_DNA_DL  
      - | DEC DNA Dump/Load.  
    * - ETH_P_DNA_RC  
      - | DEC DNA Remote Console.  
    * - ETH_P_DNA_RT  
      - | DEC DNA Routing.  
    * - ETH_P_LAT  
      - | DEC LAT.  
    * - ETH_P_DIAG  
      - | DEC Diagnostics.  
    * - ETH_P_CUST  
      - | DEC Customer use.  
    * - ETH_P_SCA  
      - | DEC Systems Comms Arch.  
    * - ETH_P_RARP  
      - | Reverse address resolution packet.  
    * - ETH_P_ATALK  
      - | Appletalk DDP.  
    * - ETH_P_AARP  
      - | Appletalk AARP.  
    * - ETH_P_8021Q  
      - | 802.1Q VLAN Extended Header.  
    * - ETH_P_IPX  
      - | IPX over DIX.  
    * - ETH_P_IPV6  
      - | IPv6 over bluebook.  
    * - ETH_P_SLOW  
      - | Slow Protocol. See 802.3ad 43B.  
    * - ETH_P_WCCP  
      - | Web-cache coordination protocol.  
    * - ETH_P_PPP_DISC  
      - | PPPoE discovery messages.  
    * - ETH_P_PPP_SES  
      - | PPPoE session messages.  
    * - ETH_P_MPLS_UC  
      - | MPLS Unicast traffic.  
    * - ETH_P_MPLS_MC  
      - | MPLS Multicast traffic.  
    * - ETH_P_ATMMPOA  
      - | MultiProtocol Over ATM.  
    * - ETH_P_ATMFATE  
      - | Frame-based ATM Transport over Ethernet.  
    * - ETH_P_AOE  
      - | ATA over Ethernet.  
    * - ETH_P_TIPC  
      - | TIPC.  
    * - ETH_P_802_3  
      - | Dummy type for 802.3 frames.  
    * - ETH_P_AX25  
      - | Dummy protocol id for AX.25.  
    * - ETH_P_ALL  
      - | Every packet.  
    * - ETH_P_802_2  
      - | 802.2 frames.  
    * - ETH_P_SNAP  
      - | Internal only.  
    * - ETH_P_DDCMP  
      - | DEC DDCMP: Internal only  
    * - ETH_P_WAN_PPP  
      - | Dummy type for WAN PPP frames.  
    * - ETH_P_PPP_MP  
      - | Dummy type for PPP MP frames.  
    * - ETH_P_PPPTALK  
      - | Dummy type for Atalk over PPP.  
    * - ETH_P_LOCALTALK  
      - | Localtalk pseudo type.  
    * - ETH_P_TR_802_2  
      - | 802.2 frames.  
    * - ETH_P_MOBITEX  
      - | Mobitex.  
    * - ETH_P_CONTROL  
      - | Card specific control frames.  
    * - ETH_P_IRDA  
      - | Linux-IrDA.  
    * - ETH_P_ECONET  
      - | Acorn Econet.  
    * - ETH_P_HDLC  
      - | HDLC frames.  
    * - ETH_P_ARCNET  
      - | 1A for ArcNet.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemSEStatusType:  
  
== EntityItemSEStatusType ==  
---------------------------------------------------------
The EntityItemSEStatusType complex type restricts a string value to the set of SEStatus values that indicate whether SELinux module itself is enabled or disabled on your system. Keep in mind that even though this may say enabled, but SELinux might still be not technically enabled (enforced), which is really indicated by the "current_mode" value.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - enabled  
      - | Indicates SELinux is enabled  
    * - disabled  
      - | Indicates SELinux is disabled  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityItemSEStatusModeType:  
  
== EntityItemSEStatusModeType ==  
---------------------------------------------------------
The EntityItemSEStatusModeType complex type restricts a string value to the set of SEStatus Current Mode values. The empty string is also allowed to support the empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - enforcing  
      - | 'enforcing' indicates that SELinux security policy is enforced (i.e SELinux is enabled).  
    * - pemissive  
      - | 'permissive' indicates that SELinux prints warnings instead of enforcing. This is helpful during debugging purpose when you want to know what would SELinux potentially block (without really blocking it) by looking at the SELinux logs.  
    * - disabled  
      - | 'disabled' indicates no SELinux policy is loaded.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityItemSEStatusPolicyType:  
  
== EntityItemSEStatusPolicyType ==  
---------------------------------------------------------
The EntityItemSEStatusPolicyType complex type restricts a string value to the set of SEStatus Loaded Policy Name values. The empty string is also allowed to support the empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - targeted  
      - | 'targeted' indicates that only targeted processes are protected by SELinux.  
    * - minimum  
      - | 'minimum' indicates is a slight modification of targeted policy. Only few selected processes are protected in this case.  
    * - mls  
      - | 'mls' indicates Multi Level Security protection. MLS is pretty complex and pretty much not used in most situations.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
