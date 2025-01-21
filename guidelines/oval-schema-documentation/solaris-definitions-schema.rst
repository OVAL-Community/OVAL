Open Vulnerability and Assessment Language: Solaris Definition  
=========================================================
* Schema: Solaris Definition  
* Version: 6.0  
* Release Date: 1/24/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Solaris specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`package_test`  
* :ref:`package511_test`  
* :ref:`patch54_test`  
* :ref:`smf_test`  
* :ref:`smfproperty_test`  
  
______________
  
.. _package_test:  
  
< package_test >  
---------------------------------------------------------
The package test is used to check information associated with different SVR4 packages installed on the system. Image Packaging System (IPS) packages are not supported by this test. The information used by this test is modeled after the /usr/bin/pkginfo command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an package_object and the optional state element specifies the information to check.

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
  
.. _package_object:  
  
< package_object >  
---------------------------------------------------------
The package_object element is used by a package test to define the SVR4 packages to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A package object consists of a single pkginst entity that identifies the package to be used.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pkginst  
      - oval-def:EntityObjectStringType (1..1)  
      - The pkginst entity is a string that represents a package designation by its instance. An instance can be the package abbreviation or a specific instance (for example, inst.1 or inst.2).  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _package_state:  
  
< package_state >  
---------------------------------------------------------
The package_state element defines the different information associated with SVR4 packages installed on the system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - pkginst  
      - oval-def:EntityStateStringType (0..1)  
      - The pkginst entity is a string that represents a package designation by its instance. An instance can be the package abbreviation or a specific instance (for example, inst.1 or inst.2).  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The name entity is a text string that specifies a full package name.  
    * - category  
      - oval-def:EntityStateStringType (0..1)  
      - The category entity is a string in the form of a comma-separated list of categories under which a package may be displayed. Note that a package must at least belong to the system or application category. Categories are case-insensitive and may contain only alphanumerics. Each category is limited in length to 16 characters.  
    * - version  
      - oval-def:EntityStateStringType (0..1)  
      - The version entity is a text string that specifies the current version associated with the software package. The maximum length is 256 ASCII characters and the first character cannot be a left parenthesis. Current Solaris software practice is to assign this parameter monotonically increasing Dewey decimal values of the form: major_revision.minor_revision[.micro_revision] where all the revision fields are integers. The versioning fields can be extended to an arbitrary string of numbers in Dewey-decimal format, if necessary.  
    * - vendor  
      - oval-def:EntityStateStringType (0..1)  
      - The vendor entity is a string used to identify the vendor that holds the software copyright (maximum length of 256 ASCII characters).  
    * - description  
      - oval-def:EntityStateStringType (0..1)  
      - The description entity is a string that represents a more in-depth description of a package.  
  
______________
  
.. _package511_test:  
  
< package511_test >  
---------------------------------------------------------
The package511_test provides support for checking the metadata of packages installed using the Solaris Image Packaging System. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a package511_object and the optional state elements reference package511_states that specify the metadata to check about a set of packages.

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
  
.. _package511_object:  
  
< package511_object >  
---------------------------------------------------------
The package511_object element is used by a package511_test to identify the set of packages to check on a system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - publisher  
      - oval-def:EntityObjectStringType (1..1)  
      - The person, group of persons, or organization that is the source of the package. The publisher should be expressed without leading "pkg:" or "//" components.  
    * - name  
      - oval-def:EntityObjectStringType (1..1)  
      - The full hierarchical name of the package which is separated by forward slash characters. The full name should be expressed without leading "pkg:/" or "/" components.  
    * - version  
      - oval-def:EntityObjectVersionType (1..1)  
      - The version of the package which consists of the component version, build version, and branch version.  
    * - timestamp  
      - oval-def:EntityObjectStringType (1..1)  
      - The timestamp when the package was published in the ISO-8601 basic format (YYYYMMDDTHHMMSSZ).  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _package511_state:  
  
< package511_state >  
---------------------------------------------------------
The package511_state element defines the different system state information that can be used to check the metadata associated with the specified IPS packages on a Solaris system.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - publisher  
      - oval-def:EntityStateStringType (0..1)  
      - The person, group of persons, or organization that is the source of the package. The publisher should be expressed without leading "pkg:" or "//" components.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The full hierarchical name of the package which is separated by forward slash characters. The full name should be expressed without leading "pkg:/" or "/" components.  
    * - version  
      - oval-def:EntityStateVersionType (0..1)  
      - The version of the package which consists of the component version, build version, and branch version.  
    * - timestamp  
      - oval-def:EntityStateStringType (0..1)  
      - The timestamp when the package was published in the ISO-8601 basic format (YYYYMMDDTHHMMSSZ).  
    * - fmri  
      - oval-def:EntityStateStringType (0..1)  
      - The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.  
    * - summary  
      - oval-def:EntityStateStringType (0..1)  
      - A summary of what the package provides.  
    * - description  
      - oval-def:EntityStateStringType (0..1)  
      - A description of what the package provides.  
    * - category  
      - oval-def:EntityStateStringType (0..1)  
      - The category of the package.  
    * - updates_available  
      - oval-def:EntityStateBoolType (0..1)  
      - A boolean value indicating whether or not updates are available for this package.  
  
______________
  
.. _patch54_test:  
  
< patch54_test >  
---------------------------------------------------------
The patch test is used to check information associated with different patches for SVR4 packages installed on the system. Image Packaging System (IPS) packages do not support patches and are not supported by this test. The information being tested is based off the /usr/bin/showrev -p command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an inetd_object and the optional state element specifies the information to check.

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
  
.. _patch54_object:  
  
< patch54_object >  
---------------------------------------------------------
The patch54_object element is used by a patch test to define the specific patch to be evaluated. Patches are identified by unique alphanumeric strings, with the patch base code first, a hyphen, and a number that represents the patch revision number. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A patch object consists of a base entity that identifies the patch to be used, and a version entity that represent the patch revision number.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - sol-def:PatchBehaviors (0..1)  
      -   
    * - base  
      - oval-def:EntityObjectIntType (1..1)  
      - The base entity represents a patch base code found before the hyphen.  
    * - version  
      - oval-def:EntityObjectIntType (1..1)  
      - The version entity represents a patch version number found after the hyphen.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _patch_state:  
  
< patch_state >  
---------------------------------------------------------
The patch_state element defines the different information associated with a specific patch for an SVR4 package installed on the system. Patches are identified by unique alphanumeric strings, with the patch base code first, a hyphen, and a number that represents the patch revision number. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - base  
      - oval-def:EntityStateIntType (0..1)  
      - The base entity reresents a patch base code found before the hyphen.  
    * - version  
      - oval-def:EntityStateIntType (0..1)  
      - The version entity represents a patch version number found after the hyphen.  
  
.. _PatchBehaviors:  
  
== PatchBehaviors ==  
---------------------------------------------------------
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
      - 'supersedence' specifies that the object should also match any superseding patches to the one being specified. In Solaris, a patch can be superseded in two ways. The first way is implicitly when a new revision of a patch is released (e.g. patch 12345-02 supersedes patch 12345-01). The second way is explicitly where a new patch contains the complete functionality of another patch. If set to 'true', the resulting object set would be the original patch specified plus any superseding patches. The default value is 'false' meaning the object should only match the specified patch.  
  
  
______________
  
.. _smf_test:  
  
< smf_test >  
---------------------------------------------------------
The smf_test is used to check service management facility controlled services including traditional unix rc level start/kill scrips and inetd daemon services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a smf_object and the optional state element specifies the information to check.

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
  
.. _smf_object:  
  
< smf_object >  
---------------------------------------------------------
The smf_object element is used by a smf_test to define the specific service instance to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A smf_object consists of a fmri entity that represents the Fault Management Resource Identifier (FMRI) which uniquely identifies a service.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - fmri  
      - oval-def:EntityObjectStringType (1..1)  
      - The FMRI (Fault Managed Resource Identifier) entity is used to identify system objects for which advanced fault and resource management capabilities are provided. Services managed by SMF are assigned FMRI URIs prefixed with the scheme name "svc". FMRIs used by SMF can be expressed in three ways: first as an absolute path including a location path such as "localhost" (eg svc://localhost/system/system-log:default), second as a path relative to the local machine (eg svc:/system/system-log:default), and third as simply the service identifier with the string prefixes implied (eg system/system-log:default). For OVAL, the absolute path version (first choice) should be used.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _smf_state:  
  
< smf_state >  
---------------------------------------------------------
The smf_state element defines the different information associated with a specific smf controlled service. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - fmri  
      - oval-def:EntityStateStringType (0..1)  
      - The FMRI (Fault Managed Resource Identifier) entity describes a possible identifier associated with a service. Services managed by SMF are assigned FMRI URIs prefixed with the scheme name "svc". FMRIs used by SMF can be expressed in three ways: first as an absolute path including a location path such as "localhost" (eg svc://localhost/system/system-log:default), second as a path relative to the local machine (eg svc:/system/system-log:default), and third as simply the service identifier with the string prefixes implied (eg system/system-log:default). For OVAL, the absolute path version (first choice) should be used.  
    * - service_name  
      - oval-def:EntityStateStringType (0..1)  
      - The service_name entity is usually an abbreviated form of the FMRI. In the example svc://localhost/system/system-log:default, the name would be system-log.  
    * - service_state  
      - sol-def:EntityStateSmfServiceStateType (0..1)  
      - The service_state entity describes a possible state that the service may be in. Each service instance is always in a well-defined state based on its dependencies, the results of the execution of its methods, and its potential receipt of events from the contracts filesystem. The service_state values are UNINITIALIZED, OFFLINE, ONLINE, DEGRADED, MAINTENANCE, DISABLED, and LEGACY-RUN.  
    * - protocol  
      - oval-def:EntityStateStringType (0..1)  
      - The protocol entity describes a possible protocol supported by the service.  
    * - server_executable  
      - oval-def:EntityStateStringType (0..1)  
      - The entity server_executable is a string representing the listening daemon on the server side. An example being 'svcprop ftp' which might show 'inetd/start/exec astring /usr/sbin/in.ftpd\ -a'  
    * - server_arguements  
      - oval-def:EntityStateStringType (0..1)  
      - The server_arguments entity describes possible parameters that are passed to the service.  
    * - exec_as_user  
      - oval-def:EntityStateStringType (0..1)  
      - The exec_as_user entity is a string pulled from svcprop in the following format: inetd_start/user astring root  
  
______________
  
.. _smfproperty_test:  
  
< smfproperty_test >  
---------------------------------------------------------
The smfproperty_test is used to check the value of properties associated with SMF services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an smfproperty_object and the optional state elements reference a smfproperty_state and specifies the data to check.

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
  
.. _smfproperty_object:  
  
< smfproperty_object >  
---------------------------------------------------------
The smfproperty_object element is used by a SMF property test to define the SMF property items to be evaluated based on the specified states. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - service  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the SMF service on the system. This is the service category and name separated by a forward slash ("/").  
    * - instance  
      - oval-def:EntityObjectStringType (1..1)  
      - The instance of an SMF service which represents a specific configuration of a service.  
    * - property  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the property associated with an SMF service. This is the property category and name separated by a forward slash ("/").  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _smfproperty_state:  
  
< smfproperty_state >  
---------------------------------------------------------
The smfproperty_state specifies the values of properties associated with SMF services.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - service  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the SMF service on the system. This is the service category and name separated by a forward slash ("/").  
    * - instance  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the instance of an SMF service which represents a specific configuration of a service.  
    * - property  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the name of the property associated with an SMF service. This is the property category and name separated by a forward slash ("/").  
    * - fmri  
      - oval-def:EntityStateStringType (0..1)  
      - The Fault Management Resource Identifier (FMRI) of the SMF service which uniquely identifies the service on the system.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - Specifies the value of the property associated with an SMF service.  
  
.. _EntityStateSmfServiceStateType:  
  
== EntityStateSmfServiceStateType ==  
---------------------------------------------------------
The EntityStateSmfServiceStateType complex type defines the different values that are valid for the service_state entity of a smf_state. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the type entity.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
