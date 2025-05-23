Open Vulnerability and Assessment Language: Solaris System Characteristics  
=========================================================
* Schema: Solaris System Characteristics  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Solaris specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`facet_item`  
* :ref:`image_item`  
* :ref:`isainfo_item`  
* :ref:`ndd_item`  
* :ref:`package_item`  
* :ref:`package511_item`  
* :ref:`packageavoidlist_item`  
* :ref:`packagecheck_item`  
* :ref:`packagefreezelist_item`  
* :ref:`packagepublisher_item`  
* :ref:`patch_item`  
* :ref:`smf_item`  
* :ref:`smfproperty_item`  
* :ref:`variant_item`  
* :ref:`virtualizationinfo_item`  
  
______________
  
.. _facet_item:  
  
< facet_item >  
---------------------------------------------------------
This item stores the facet properties and values of an IPS system image.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the path to the Solaris IPS image.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the name of the facet property associated with an IPS image.  
    * - value  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies the value of the facet property associated with an IPS image.  
  
______________
  
.. _image_item:  
  
< image_item >  
---------------------------------------------------------
This item stores system state information associated with an IPS image on a Solaris system.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path to the Solaris IPS image.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the property associated with the Solaris IPS image.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value of a property that is associated with a Solaris IPS image.  
  
______________
  
.. _isainfo_item:  
  
< isainfo_item >  
---------------------------------------------------------
Information about the instruction set architectures. This information can be retrieved by the isainfo command.

The isainfo_item was originally developed by Robert L. Hollis at ThreatGuard, Inc. Many thanks for their support of the OVAL project.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - bits  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the number of bits in the address space of the native instruction set (isainfo -b).  
    * - kernel_isa  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the instruction set used by kernel components (isainfo -k).  
    * - application_isa  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the instruction set used by portable applications (isainfo -n).  
  
______________
  
.. _ndd_item:  
  
< ndd_item >  
---------------------------------------------------------
This item represents data collected by the ndd command.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the device for which the parameter was collected.  
    * - instance  
      - oval-sc:EntityItemIntType (0..1)  
      - The instance of the device to examine. Certain devices may have multiple instances on a system. If multiple instances exist, this entity should be populated with its respective instance value. If only a single instance exists, this entity should not be collected.  
    * - parameter  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of a parameter for example, ip_forwarding  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The observed value of the named parameter.  
  
______________
  
.. _package_item:  
  
< package_item >  
---------------------------------------------------------
The package_item holds information about installed SVR4 packages. Output of /usr/bin/pkginfo. See pkginfo(1).

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pkginst  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - category  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - version  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - vendor  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      -   
  
______________
  
.. _package511_item:  
  
< package511_item >  
---------------------------------------------------------
This item stores system state information associated with IPS packages installed on a Solaris system.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - publisher  
      - oval-sc:EntityItemStringType (0..1)  
      - The person, group of persons, or organization that is the source of the package. The publisher should be expressed without leading "pkg:" or "//" components.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - The full hierarchical name of the package which is separated by forward slash characters. The full name should be expressed without leading "pkg:/" or "/" components.  
    * - version  
      - oval-sc:EntityItemVersionType (0..1)  
      - The version of the package which consists of the component version, build version, and branch version.  
    * - timestamp  
      - oval-sc:EntityItemStringType (0..1)  
      - The timestamp when the package was published in the ISO-8601 basic format (YYYYMMDDTHHMMSSZ).  
    * - fmri  
      - oval-sc:EntityItemStringType (0..1)  
      - The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.  
    * - summary  
      - oval-sc:EntityItemStringType (0..1)  
      - A summary of what the package provides.  
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      - A description of what the package provides.  
    * - category  
      - oval-sc:EntityItemStringType (0..1)  
      - The category of the package.  
    * - updates_available  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean value indicating whether or not updates are available for this package.  
  
______________
  
.. _packageavoidlist_item:  
  
< packageavoidlist_item >  
---------------------------------------------------------
This item stores the FMRI associated with associated with IPS packages that have been flagged as to be avoided from installation on a Solaris system.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - fmri  
      - oval-sc:EntityItemStringType (0..1)  
      - The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.  
  
______________
  
.. _packagecheck_item:  
  
< packagecheck_item >  
---------------------------------------------------------
The packagecheck_item holds verification information about an individual file that is part of an installed SVR4 package. Each packagecheck_item contains a package designation, filepath, whether the checksum differs, whether the size differs, whether the modfication time differs, and how the actual permissions differ from the expected permissions. For more information, see pkgchk(1M). It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pkginst  
      - oval-sc:EntityItemStringType (0..1)  
      - The pkginst entity is a string that represents a package designation by its instance. An instance can be the package abbreviation or a specific instance (for example, inst.1 or inst.2).  
    * - filepath  
      - oval-sc:EntityItemStringType (0..1)  
      - The filepath element specifies the absolute path for a file or directory in the specified package..  
    * - checksum_differs  
      - oval-sc:EntityItemBoolType (0..1)  
      - Has the file's checksum changed? A value of true indicates that the file's checksum has changed. A value of false indicates that the file's checksum has not changed.  
    * - size_differs  
      - oval-sc:EntityItemBoolType (0..1)  
      - Has the file's size changed? A value of true indicates that the file's size has changed. A value of false indicates that the file's size has not changed.  
    * - mtime_differs  
      - oval-sc:EntityItemBoolType (0..1)  
      - Has the file's modified time changed? A value of true indicates that the file's modified time has changed. A value of false indicates that the file's modified time has not changed.  
    * - uread  
      - sol-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual user read permission changed from the expected user read permission?  
    * - uwrite  
      - sol-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual user write permission changed from the expected user write permission?  
    * - uexec  
      - sol-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual user exec permission changed from the expected user exec permission?  
    * - gread  
      - sol-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual group read permission changed from the expected group read permission?  
    * - gwrite  
      - sol-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual group write permission changed from the expected group write permission?  
    * - gexec  
      - sol-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual group exec permission changed from the expected group exec permission?  
    * - oread  
      - sol-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual others read permission changed from the expected others read permission?  
    * - owrite  
      - sol-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual others read permission changed from the expected others read permission?  
    * - oexec  
      - sol-sc:EntityItemPermissionCompareType (0..1)  
      - Has the actual others read permission changed from the expected others read permission?  
  
______________
  
.. _packagefreezelist_item:  
  
< packagefreezelist_item >  
---------------------------------------------------------
This item stores the FMRI associated with associated with IPS packages that have been frozen at a particular version.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - fmri  
      - oval-sc:EntityItemStringType (0..1)  
      - The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.  
  
______________
  
.. _packagepublisher_item:  
  
< packagepublisher_item >  
---------------------------------------------------------
This item stores system state information associated with IPS package publishers on a Solaris system.

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
      - The name of the IPS package publisher.  
    * - type  
      - sol-sc:EntityItemPublisherTypeType (0..1)  
      - The type of the IPS package publisher.  
    * - origin_uri  
      - oval-sc:EntityItemStringType (0..1)  
      - The origin URI of the IPS package publisher.  
    * - alias  
      - oval-sc:EntityItemStringType (0..1)  
      - The alias of the IPS package publisher.  
    * - ssl_key  
      - oval-sc:EntityItemStringType (0..1)  
      - The Secure Socket Layer (SSL) key registered by a client for publishers using client-side SSL authentication.  
    * - ssl_cert  
      - oval-sc:EntityItemStringType (0..1)  
      - The Secure Socket Layer (SSL) certificate registered by a client for publishers using client-side SSL authentication.  
    * - client_uuid  
      - sol-sc:EntityItemClientUUIDType (0..1)  
      - The universally unique identifier (UUID) that identifies the image to its publisher.  
    * - catalog_updated  
      - oval-sc:EntityItemIntType (0..1)  
      - The last time that the IPS package publisher's catalog was updated in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.  
    * - enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether or not the publisher is enabled.  
    * - order  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies where in the search order the IPS package publisher is listed. The first publisher in the search order will have a value of '1'.  
    * - properties  
      - oval-sc:EntityItemRecordType (0..1)  
      - The properties associated with an IPS package publisher.  
  
______________
  
.. _patch_item:  
  
< patch_item >  
---------------------------------------------------------
Patches for SVR4 packages are identified by unique alphanumeric strings, with the patch base code first, a hyphen, and a number that represents the patch revision number. The information can be obtained using /usr/bin/showrev -p. Please see showrev(1M).

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - base  
      - oval-sc:EntityItemIntType (0..1)  
      - The base entity reresents a patch base code found before the hyphen.  
    * - version  
      - oval-sc:EntityItemIntType (0..1)  
      - The version entity represents a patch version number found after the hyphen.  
  
______________
  
.. _smf_item:  
  
< smf_item >  
---------------------------------------------------------
The smf_item is used to hold information related to service management facility controlled services

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - fmri  
      - oval-sc:EntityItemStringType (0..1)  
      - The FMRI (Fault Managed Resource Identifier) entity holds the identifier associated with a service. Services managed by SMF are assigned FMRI URIs prefixed with the scheme name "svc". FMRIs used by SMF can be expressed in three ways: first as an absolute path including a location path such as "localhost" (eg svc://localhost/system/system-log:default), second as a path relative to the local machine (eg svc:/system/system-log:default), and third as simply the service identifier with the string prefixes implied (eg system/system-log:default). For OVAL, the absolute path version (first choice) should be used.  
    * - service_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The service_name entity is usually an abbreviated form of the FMRI. In the example svc://localhost/system/system-log:default, the name would be system-log.  
    * - service_state  
      - sol-sc:EntityItemSmfServiceStateType (0..1)  
      - The service_state entity describes the state that the service is in. Each service instance is always in a well-defined state based on its dependencies, the results of the execution of its methods, and its potential receipt of events from the contracts filesystem. The service_state values are UNINITIALIZED, OFFLINE, ONLINE, DEGRADED, MAINTENANCE, DISABLED, and LEGACY-RUN.  
    * - protocol  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - The protocol entity describes the protocol supported by the service.  
    * - server_executable  
      - oval-sc:EntityItemStringType (0..1)  
      - The entity server_executable is a string representing the listening daemon on the server side. An example being 'svcprop ftp' which might show 'inetd/start/exec astring /usr/sbin/in.ftpd\ -a'  
    * - server_arguements  
      - oval-sc:EntityItemStringType (0..1)  
      - The server_arguments entity describes the parameters that are passed to the service.  
    * - exec_as_user  
      - oval-sc:EntityItemStringType (0..1)  
      - The exec_as_user entity is a string pulled from svcprop in the following format: inetd_start/user astring root  
  
______________
  
.. _smfproperty_item:  
  
< smfproperty_item >  
---------------------------------------------------------
This item stores the properties and values of an SMF service.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - service  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the SMF service on the system. This is the service category and name separated by a forward slash ("/").  
    * - instance  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the instance of an SMF service which represents a specific configuration of a service.  
    * - property  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the property associated with an SMF service. This is the property category and name separated by a forward slash ("/").  
    * - fmri  
      - oval-sc:EntityItemStringType (0..1)  
      - The Fault Management Resource Identifier (FMRI) of the SMF service which uniquely identifies the service on the system.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - Specifies the value of the property associated with an SMF service.  
  
______________
  
.. _variant_item:  
  
< variant_item >  
---------------------------------------------------------
This item stores the variant properties and values of the specified IPS system image.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the path to the Solaris IPS image.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the name of the variant property associated with an IPS image.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - Specifies the value of the variant property associated with an IPS image.  
  
______________
  
.. _virtualizationinfo_item:  
  
< virtualizationinfo_item >  
---------------------------------------------------------
This item stores the information associated with the current virtualization environment this instance of Solaris is running on and is capable of supporting.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - current  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the current environment. This information could be collected using the libv12n library or by executing the 'virtinfo -c current list -H -o name' command.  
    * - supported  
      - sol-sc:EntityItemV12NEnvType (0..unbounded)  
      - The list of virtualization environments that this node supports as children. This information could be collected using the libv12n library or by executing the 'virtinfo -c supported list -H -o name' command.  
    * - parent  
      - sol-sc:EntityItemV12NEnvType (0..1)  
      - The parent environment of the current environment. This information could be collected using libv12n library or by executing the 'virtinfo -c parent list -H -o name' command.  
    * - ldom-role  
      - sol-sc:EntityItemLDOMRoleType (0..unbounded)  
      - The logical domain roles associated with the current environment. This information could be collected using libv12n library.  
    * - properties  
      - oval-sc:EntityItemRecordType (0..1)  
      - The properties associated with the current environment. This information could be collected using libv12n library.  
  
.. _EntityItemClientUUIDType:  
  
== EntityItemClientUUIDType ==  
---------------------------------------------------------
The EntityItemClientUUIDType restricts a string value to a representation of a client UUID, used to identify an image to its IPS package publisher. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

**Pattern:** ([a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12})?

.. _EntityItemPermissionCompareType:  
  
== EntityItemPermissionCompareType ==  
---------------------------------------------------------
The EntityItemPermissionCompareType complex type restricts a string value to more, less, or same which specifies if an actual permission is different than the expected permission (more or less restrictive) or if the permission is the same. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - more  
      - | The actual permission is more restrictive than the expected permission.  
    * - less  
      - | The actual permission is less restrictive than the expected permission.  
    * - same  
      - | The actual permission is the same as the expected permission.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemPublisherTypeType:  
  
== EntityItemPublisherTypeType ==  
---------------------------------------------------------
The EntityItemPublisherTypeType complex type restricts a string value to three values: archive, mirror, or origin that specifies how the publisher distributes their packages. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - archive  
      - | The value of 'archive' specifies that the publisher distributes packages by providing a file that contains one or more packages.  
    * - mirror  
      - | The value of 'mirror' specifies that the publisher distributes packages by providing a package repository that contains only package content.  
    * - origin  
      - | The value of 'origin' specifies that the publisher distributes packages by providing a package repository that contains both package metadata and package content.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemSmfServiceStateType:  
  
== EntityItemSmfServiceStateType ==  
---------------------------------------------------------
The EntityItemSmfServiceStateType defines the different values that are valid for the service_state entity of a smf_item. The empty string is also allowed as a valid value to support empty emlements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - DEGRADED  
      - | The instance is enabled and running or available to run. The instance, however, is functioning at a limited capacity in comparison to normal operation.  
    * - DISABLED  
      - | The instance is disabled.  
    * - MAINTENANCE  
      - | The instance is enabled, but not able to run. Administrative action is required to restore the instance to offline and subsequent states.  
    * - LEGACY-RUN  
      - | This state represents a legacy instance that is not managed by the service management facility. Instances in this state have been started at some point, but might or might not be running.  
    * - OFFLINE  
      - | The instance is enabled, but not yet running or available to run.  
    * - ONLINE  
      - | The instance is enabled and running or is available to run.  
    * - UNINITIALIZED  
      - | This is the initial state for all service instances.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemV12NEnvType:  
  
== EntityItemV12NEnvType ==  
---------------------------------------------------------
The EntityItemV12NEnvypeType complex type restricts a string value to a specific set of values that describe the virtalization environment. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - unknown  
      - | The virtualization environment is unknown. This could mean it is a bare metal virtualization environment.  
    * - kvm  
      - | The virtualization environment is a Kernel-based Virtual Machine (KVM).  
    * - logical-domain  
      - | The virtualization environment is a logical domain.  
    * - non-global-zone  
      - | The virtualization environment is a non-global zone.  
    * - kernel-zone  
      - | The virtualization environment is a kernel zone.  
    * - vmware  
      - | The virtualization environment is VMware.  
    * - virtualbox  
      - | The virtualization environment is Oracle VirtualBox.  
    * - xen  
      - | The virtualization environment is Xen.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemLDOMRoleType:  
  
== EntityItemLDOMRoleType ==  
---------------------------------------------------------
The EntityItemLDOMRoleType complex type restricts a string value to a specific set of roles for the current virtualization environment. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - control-role  
      - | The current virtualization environment is a control domain.  
    * - io-role  
      - | The current virtualization environment is an I/O domain.  
    * - root-role  
      - | The current virtualization environment is a root I/O domain.  
    * - service-role  
      - | The current virtualization environment is a service domain.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
