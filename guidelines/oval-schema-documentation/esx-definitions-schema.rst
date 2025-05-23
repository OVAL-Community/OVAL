Open Vulnerability and Assessment Language: VMware ESX server Definition  
=========================================================
* Schema: VMware ESX server Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the VMware ESX server specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

This schema was originally developed by Yuzheng Zhou and Todd Dolinsky at Hewlett-Packard. The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`patch56_test` (Deprecated)  
* :ref:`patch_test` (Deprecated)  
* :ref:`version_test` (Deprecated)  
* :ref:`visdkmanagedobject_test` (Deprecated)  
  
______________
  
.. _patch56_test:  
  
< patch56_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The patch56_test reveals the installation status of a specific patch or patches in VMware ESX Server. This information can be retrieved by the "esxupdate query" command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a patch56_object and the optional state element referencing a patch56_state specifies the metadata to check.

Note that different from previous versions, ESX Server 3.0.3 and ESX Server 3.5 use the following patch naming convention: {ProductName}{VersionNumber}-{BundleID}-{Classification}{SupportLevel}. Please refer to http://www.vmware.com/pdf/vi3_35/esx_3/r35/vi3_35_25_esxupdate.pdf for more detailed information.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _patch56_object:  
  
< patch56_object >  
---------------------------------------------------------
The patch56_object element is used by a patch56_test to define those objects to be evaluated against a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A patch56_object consists of a single patch_name entity that identifies the patch to be checked.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - esx-def:Patch56Behaviors (0..1)  
      -   
    * - patch_name  
      - oval-def:EntityObjectStringType (1..1)  
      - The patch name entity indetifies a specific patch or set of patches to be checked on the system. For example: ESX-200603 or ESX350-200904401-BG. The value of this entity should correspond to the values returned under the "name" column of the "esxupdate query" command.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _patch56_state:  
  
< patch56_state >  
---------------------------------------------------------
The patch56_state element defines the different information that can be used to evaluate the specified VMware ESX Serer patch. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - patch_name  
      - oval-def:EntityStateStringType (0..1)  
      - The patch_name entity indetifies the name of a patch to test for. For example: ESX-200603 or ESX350-200904401-BG. The value of this entity should correspond to the values returned under the "name" column of the "esxupdate query" command.  
    * - knowledge_base_id  
      - oval-def:EntityStateIntType (0..1)  
      - The knowledge_base_id entity specifies a given knowledge base article identifier number. This entity is valid for ESX versions 3.0.2 and earlier. It is comprised of the numerical string at the end of the patch name. For example, the patch ESX-200603 would have a knowledge base identifier of 200603.  
    * - bundle_id  
      - oval-def:EntityStateIntType (0..1)  
      - The bundle_id entity specifies a unique ID for the patch. This entity is valid for ESX version 3.0.3 and version 3.5 and is comprised of the year and month the bundle was released and a 3-digit unique ID. It is in the format YYYYMM###. For example, the first patch released in January 2008 might have a BundleID of 200801001.  
    * - classification  
      - esx-def:EntityStateClassificationType (0..1)  
      - The classification entity specifies the type of patch. It can be one of: B - bug, U - update, S - security, or R - roll-up. This entity is valid for ESX version 3.0.3 and later.  
    * - support_level  
      - esx-def:EntityStateSupportLevelType (0..1)  
      - The support_level entity specifies a support level to test for. If can be one of: G - GA patch, H - hot patch, D - debugging patch, or C - custom patch. This entity is valid for ESX version 3.0.3 and later.  
    * - status  
      - oval-def:EntityStateBoolType (0..1)  
      - The status entity specifies an installation status of a patch to test for. A value of 'true' is used to signify that a given patch is intalled.  
  
.. _Patch56Behaviors:  
  
== Patch56Behaviors ==  
---------------------------------------------------------
The Patch56Behaviors complex type defines a number of behaviors that allow a more detailed definition of the patch56_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - supersedence  
      - Restriction of xsd:boolean (optional *default*='false')  
      - 'supersedence' specifies that the object should also match any superseding patches to the one being specified. In other words, if set to True the resulting object set would be the original patch specified plus any superseding patches. The default value is 'false' meaning the object should only match the specified patch.  
  
  
______________
  
.. _patch_test:  
  
< patch_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.6  
* Reason: Replaced by the patch56_test. The deprecated patch_test has a bug where the patch name entity is defined as a string in the object yet is defined as an int in the state.  Additional state entities have also been added to the new patch56_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The patch test reveals the installation status of a specific patch in the VMware ESX server. This information can be retrieved by the "esxupdate query | grep ESX-xxxxxxx" command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a patch_object and the optional state element specifies the metadata to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _patch_object:  
  
< patch_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.6  
* Reason: Replaced by the patch56_object. The deprecated patch_test has a bug where the patch name entity is defined as a string in the object yet is defined as an int in the state.  Additional state entities have also been added to the new patch56_test.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The patch_object element is used by a patch test to define those objects to be evaluated based on a specified state. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A patch_object consists of a single patch_number entity that identifies the patch to be checked.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - esx-def:PatchBehaviors (0..1)  
      -   
    * - patch_number  
      - oval-def:EntityObjectStringType (1..1)  
      - The patch_number entity identifies the patch to be checked. Many of the security bulletins for VMWARE ESX Server contain non-numerical characters in the patch number, therefore this entity has a datatype of string.  
  
.. _patch_state:  
  
< patch_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.6  
* Reason: Replaced by the patch56_state. The deprecated patch_test has a bug where the patch name entity is defined as a string in the object yet is defined as an int in the state.  Additional state entities have also been added to the new patch56_test.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The patch_state element defines the information about a specific patch. The patch_number element identifies this patch, and the status element reveals the installation status of this patch in the VMware ESX server. For instance, after the "esxupdate query | grep ESX-2559638" command is run, the result is either a string similar to "ESX-2559638 15:27:17 04/05/07 Update info rpm for ESX 3.0.1." or empty.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - patch_number  
      - oval-def:EntityStateStringType (0..1)  
      - This is the patch number of a specific patch which will be checked in current VMware ESX server. Many of the security bulletins for VMWARE ESX Server contain non-numerical characters in the patch nubmer, therefore this entity has a datatype of string.  
    * - status  
      - oval-def:EntityStateBoolType (0..1)  
      - This is the installation status of a specific patch in current VMware ESX server.  
  
.. _PatchBehaviors:  
  
== PatchBehaviors == (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.6  
* Reason: Replaced by Patch56Behaviors. The deprecated patch_test has a bug where the patch name entity is defined as a string in the object yet is defined as an int in the state.  Additional state entities have also been added to the new patch56_test.  
* Comment: These behaviors have been deprecated and will be removed in version 6.0 of the language.  
  
The PatchBehaviors complex type defines a number of behaviors that allow a more detailed definition of the patch_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - supersedence  
      - Restriction of xsd:boolean (optional *default*='false')  
      - 'supersedence' specifies that the object should also match any superseding patches to the one being specified. In other words, if set to True the resulting object set would be the original patch specified plus any superseding patches. The default value is 'false' meaning the object should only match the specified patch.  
  
  
______________
  
.. _version_test:  
  
< version_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The version test reveals information about the release and build version of the VMware ESX server. This information can be retrieved by the "vmware -v" command or by checking the /proc/vmware/version file. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a version_object and the optional state element specifies the metadata to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _version_object:  
  
< version_object >  
---------------------------------------------------------
The version_object element is used by a version test to define those objects to be evaluated based on a specified state. There is actually only one object relating to version and this is the ESX server as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check version will reference the same version_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _version_state:  
  
< version_state >  
---------------------------------------------------------
The version_state element defines the information about the release and build version. The release and build elements specify the release and build information of the VMware ESX server respectively. For instance, if the output of "vmware -v" command is "VMware ESX Server 3.0.1 build-39823", then release is equal to "3.0.1" and build is equal to "39823".

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - release  
      - oval-def:EntityStateVersionType (0..1)  
      - This is the release version of current VMware ESX server.  
    * - build  
      - oval-def:EntityStateIntType (0..1)  
      - This is the build version of current VMware ESX server.  
  
______________
  
.. _visdkmanagedobject_test:  
  
< visdkmanagedobject_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The visdkmanagedobject_test is used to check information about Managed Objects in the VMware Infrastructure. This test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a visdkmanagedobject _object and the optional state element specifies the metadata to check.

This test has been introduced to enable standardized automated assessments of configuration settings in cloud computing components. All aspects of the VMware cloud can be considered in this test due to the VMware Infrastructure. Whether it is a Virutal Machine, a Host System, or even a Data Center, properties are defined in ways that can be enumerated in a common methodology. The VI SDK Programming Guide located at http://www.vmware.com/support/developer/vc-sdk/visdk400pubs/sdk40programmingguide.pdf serves as a great resource. Chapter 3 discusses the Managed Entities enumerated in the behaviors.

There are several Managed Entities in the VMware Infrastructure which have been enumerated in ViSdkManagedEntityBehaviors to enable interpreters to execute efficient interrogations. This test is designed for an interpreter to access Managed Entity properties (settings) via the VI SDK webservice. An example use case is to interrogate all virtual machines to ensure that a particular security setting is enabled. Some properties serve to configure the Virtual Machine, while others can be used to identify. For example, sets and filters can be used to create a set of all Virtual Machines where bridged networking is employed, and then perform an OVAL state evaluation against each of those Virtual Machines. This concept applies to all properties across all Managed Entities. Use the ViSdkManagedEntityBehaviors to avoid enumerating all Managed Objects when only one type should be considered.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _visdkmanagedobject_object:  
  
< visdkmanagedobject_object >  
---------------------------------------------------------
The visdkmanagedobject_object element is used by the visdkmanagedobject_test to define those objects to be evaluated based on a specified state.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - esx-def:ViSdkManagedEntityBehaviors (0..1)  
      -   
    * - property  
      - oval-def:EntityObjectStringType (1..1)  
      - The property entity holds a string that represents the object path path and name of a particular setting for the Managed Entity. In the VMware Infrastructure SDK, property names are case-sensitive and thus case must be correct relative to the properties in the SDK. For example, a Virtual Machine might have ethernet0.connectionType of 'bridged'.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _visdkmanagedobject_state:  
  
< visdkmanagedobject_state >  
---------------------------------------------------------
The visdkmanagedobject_state elements enumerates the different properties a Managed Entity might have. Managed Entities have the same object structure. However, fields within that object structure will be blank (null) if they do not apply to that Managed Entity.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - property  
      - oval-def:EntityStateStringType (0..1)  
      - The property entity holds a string that represents the object path and name of a particular setting for the Managed Entity. In the VMware Infrastructure SDK, property names are case-sensitive and thus case must be correct relative to the properties in the SDK. For example, a Virtual Machine might have ethernet0.connectionType of 'bridged'.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value entity holds a string that represents a value that's associated with the specified setting for the Managed Entity. Some properties will return an array of values. In such cases consider each value individually and then make final evaluation based on the entity_check attribute.  
  
.. _ViSdkManagedEntityBehaviors:  
  
== ViSdkManagedEntityBehaviors ==  
---------------------------------------------------------
The ViSdkManagedEntityBehaviors complex type defines a number of behaviors that allow a more detailed definition of the visdkmanagedobject_object being specified. Note that using these behaviors is *highly* encouraged because enumerating all Managed Objects in an inventory hierarchy could cause performance problems. Interpreters should enumerate only the entities specified by the behavior prior to set/filter logic and evaluation.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - managed_entity_type  
      - Restriction of xsd:string (optional *default*='VirtualMachine') ('ClusterComputerResource', 'ComputeResource', 'Datacenter', 'Datastore', 'DistributedVirtualPortgroup', 'DistributedVirtualSwitch', 'Folder', 'HostSystem', 'Network', 'ResourcePool', 'VirtualApp', 'VirtualMachine')  
      - The 'managed_entity_type' defines the type of managed object from which the property and value should be collected.  
  
  
.. _EntityStateClassificationType:  
  
== EntityStateClassificationType ==  
---------------------------------------------------------
The EntityStateClassificationType complex type restricts a string value to a specific set of values that describe the classification of a given ESX Server patch. The empty string is also allowed to support an empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string is also allowed to support an empty element associated with variable references.  
  
.. _EntityStateSupportLevelType:  
  
== EntityStateSupportLevelType ==  
---------------------------------------------------------
The EntityStateSupportLevelType complex type restricts a string value to a specific set of values that describe the support level of a given ESX Server patch. The empty string is also allowed to support an empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string is also allowed to support an empty element associated with variable references.  
  
