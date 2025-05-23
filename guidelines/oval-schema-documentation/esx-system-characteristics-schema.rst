Open Vulnerability and Assessment Language: VMware ESX server System Characteristics  
=========================================================
* Schema: VMware ESX server System Characteristics  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the VMware ESX server specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by Yuzheng Zhou and Todd Dolinsky at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`patch_item`  
* :ref:`version_item`  
* :ref:`visdkmanagedobject_item`  
  
______________
  
.. _patch_item:  
  
< patch_item >  
---------------------------------------------------------
Installation information about a specific patch in the VMware ESX server. This information can be retrieved by the "esxupdate query | grep ESX-xxxxxxx" command.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - patch_number (Deprecated)  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the patch number which identifies the patch being checked in current VMware ESX server. Many of the security bulletins for VMWARE ESX Server contain non-numerical characters in the patch number, therefore this entity has a datatype of string.  
    * - patch_name  
      - oval-sc:EntityItemStringType (0..1)  
      - The patch_name entity indetifies the name of the patch. For example: ESX-200603 or ESX350-200904401-BG. The value of this entity should correspond to the values returned under the "name" column of the "esxupdate query" command.  
    * - knowledge_base_id  
      - oval-sc:EntityItemIntType (0..1)  
      - The knowledge_base_id entity specifies the knowledge base article identifier number associated with a given patch from ESX versions 3.0.2 and earlier. It is comprised of the numerical string at the end of the patch name. For example, the patch ESX-200603 would have a knowledge base identifier of 200603. For patches from ESX version 3.0.3 and later, the patch name uses a different format and does not include the knowledge base id. This entity should be marked with a status of 'does not exist' in those cases.  
    * - bundle_id  
      - oval-sc:EntityItemIntType (0..1)  
      - The bundle_id entity specifies the unique ID for the patch. Note that for version 3.0.3 and version 3.5 this is comprised of the year and month the bundle was released and a 3-digit unique ID. It is in the format YYYYMM###. For example, the first patch released in January 2008 might have a BundleID of 200801001. For patches from ESX version 3.0.2 and earlier, this entity should be marked with a status of 'does not exist' since patch name has a different format and doesn't include a bundle id.  
    * - classification  
      - esx-sc:EntityItemClassificationType (0..1)  
      - The classification entity specifies the type of patch. It can be one of: B - bug, U - update, S - security, or R - roll-up. For patches from ESX version 3.0.2 and earlier, this entity should be marked with a status of 'does not exist' since patch name has a different format and doesn't include a classification.  
    * - support_level  
      - esx-sc:EntityItemSupportLevelType (0..1)  
      - The support_level entity specifies the support level of the patch. If can be one of: G - GA patch, H - hot patch, D - debugging patch, or C - custom patch. For patches from ESX version 3.0.2 and earlier, this entity should be marked with a status of 'does not exist' since patch name has a different format and doesn't include a support level.  
    * - status  
      - oval-sc:EntityItemBoolType (0..1)  
      - This is the installtaion status of the specific patch.  
  
______________
  
.. _version_item:  
  
< version_item >  
---------------------------------------------------------
Information about the release and build version of VMware ESX server. This information can be retrieved by the "vmware -v" command or by checking the /proc/vmware/version file.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - release  
      - oval-sc:EntityItemVersionType (0..1)  
      - This is the release of current VMware ESX server.  
    * - build  
      - oval-sc:EntityItemIntType (0..1)  
      - This is the build version of current VMware ESX server.  
  
______________
  
.. _visdkmanagedobject_item:  
  
< visdkmanagedobject_item >  
---------------------------------------------------------
The visdkmanagedobject_item is used to represent information about Managed Objects in the VMware Infrastructure.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - property  
      - oval-sc:EntityItemStringType (0..1)  
      - The property entity holds a string that represents the object path and name of a particular setting for the Managed Entity. In the VMware Infrastructure SDK, property names are case-sensitive and thus case must be correct relative to the properties in the SDK. For example, a Virtual Machine might have ethernet0.connectionType of 'bridged'.  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..unbounded)  
      - The value entity holds a string that represents a value that's associated with the specified setting for the Managed Entity. Some properties will return an array of values. In such cases consider each value individually and then make final evaluation based on the entity_check attribute.  
  
.. _EntityItemClassificationType:  
  
== EntityItemClassificationType ==  
---------------------------------------------------------
The EntityItemClassificationType complex type restricts a string value to a specific set of values that describe the classification of a given ESX Server patch. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - B  
      - | Bug patches fix minor flaws that affect product functionality or behavior. Bug patches are optional. Before they are applied, one should determine whether they are necessary for your environment.  
    * - R  
      - | Roll‐up patches contain any number of bundles for ESX Server 3.0.3 or ESX Server 3.5 hosts. They can contain bug patches, update patches, and security patches. They do not contain upgrade bundles for minor releases or update bundles for maintenance releases.  
    * - S  
      - | Security patches fix one or more potential security vulnerabilities in the product. They should be implemented immediately to prevent the vulnerabilities from being exploited.  
    * - U  
      - | Update patches can contain new driver updates and small non‐intrusive enhancements. Before they are applied, one should determine whether they are necessary for your environment.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemSupportLevelType:  
  
== EntityItemSupportLevelType ==  
---------------------------------------------------------
The EntityItemSupportLevelType complex type restricts a string value to a specific set of values that describe the support level of a given ESX Server patch. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - C  
      - | Custom patches are special fixes provided to a customer. They are usually specific to customer's environment, and are most likely not required by customers not reporting the issue. Custom patches have been tested in the customer's environment.  
    * - D  
      - | Debugging patches are released to all customers and are used by VMware to troubleshoot complex product issues. They can contain debug messages and code, and drivers. Debugging patches usually require VMware assistance to install.  
    * - G  
      - | GA patches are released to all customers and have been thoroughly tested. They contain fixes for ESX Server 3 software issues.  
    * - H  
      - | Hot patches are released to specific customers for solving critical problems specific to their environment. They contain fixes for security issues or problems that can potentially cause data loss or severe service disruptions. Hot patches should be implemented immediately.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
