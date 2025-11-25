Open Vulnerability and Assessment Language: Solaris Definition  
=========================================================
* Schema: Solaris Definition  
* Version: 5.12.2  
* Release Date: 11/25/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Solaris specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`facet_test` (Deprecated)  
* :ref:`image_test` (Deprecated)  
* :ref:`isainfo_test` (Deprecated)  
* :ref:`ndd_test` (Deprecated)  
* :ref:`package_test` (Deprecated)  
* :ref:`package511_test` (Deprecated)  
* :ref:`packageavoidlist_test` (Deprecated)  
* :ref:`packagecheck_test` (Deprecated)  
* :ref:`packagefreezelist_test` (Deprecated)  
* :ref:`packagepublisher_test` (Deprecated)  
* :ref:`patch54_test` (Deprecated)  
* :ref:`patch_test` (Deprecated)  
* :ref:`smf_test`  
* :ref:`smfproperty_test`  
* :ref:`variant_test` (Deprecated)  
* :ref:`virtualizationinfo_test` (Deprecated)  
  
______________
  
.. _facet_test:  
  
< facet_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The facet_test is used to check the facets associated with the specified Image Packaging System image. Facets are properties that control whether or not optional components from a package are installed on a system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an facet_object and the optional state elements reference a facet_state and specifies the data to check.

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
  
.. _facet_object:  
  
< facet_object >  
---------------------------------------------------------
The facet_object element is used by a facet test to define the image facet items to be evaluated based on the specified states. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path to the Solaris IPS image.  
    * - name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the facet property associated with an IPS image.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _facet_state:  
  
< facet_state >  
---------------------------------------------------------
The facet_state specifies the various facet properties associated with an IPS image.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the path to the Solaris IPS image.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the name of the facet property associated with an IPS image.  
    * - value  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies the value of the facet property associated with an IPS image.  
  
______________
  
.. _image_test:  
  
< image_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The image_test provides support for checking the metadata of IPS images on Solaris systems. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a image_object and the optional state elements reference image_states that specify the metadata to check about a set of images.

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
  
.. _image_object:  
  
< image_object >  
---------------------------------------------------------
The image_object element is used by a image_test to identify the set of images to check on a system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path to the Solaris IPS image.  
    * - name  
      - oval-def:EntityStateStringType (1..1)  
      - The name of the property associated with the Solaris IPS image.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _image_state:  
  
< image_state >  
---------------------------------------------------------
The image_state element defines the different system state information that can be used to check the metadata associated with the specified IPS image on a Solaris system.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path to the Solaris IPS image.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the property associated with the Solaris IPS image.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of a property that is associated with a Solaris IPS image.  
  
______________
  
.. _isainfo_test:  
  
< isainfo_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The isainfo test reveals information about the instruction set architectures. This information can be retrieved by the isainfo command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an isainfo_object and the optional state element specifies the metadata to check.

The isainfo_test was originally developed by Robert L. Hollis at ThreatGuard, Inc. Many thanks for their support of the OVAL project.

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
  
.. _isainfo_object:  
  
< isainfo_object >  
---------------------------------------------------------
The isainfo_object element is used by an isainfo test to define those objects to evaluated based on a specified state. There is actually only one object relating to isainfo and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check isainfo will reference the same isainfo_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _isainfo_state:  
  
< isainfo_state >  
---------------------------------------------------------
The isainfo_state element defines the information about the instruction set architectures. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - bits  
      - oval-def:EntityStateIntType (0..1)  
      - This is the number of bits in the address space of the native instruction set (isainfo -b).  
    * - kernel_isa  
      - oval-def:EntityStateStringType (0..1)  
      - This is the name of the instruction set used by kernel components (isainfo -k).  
    * - application_isa  
      - oval-def:EntityStateStringType (0..1)  
      - This is the name of the instruction set used by portable applications (isainfo -n).  
  
______________
  
.. _ndd_test:  
  
< ndd_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
From /usr/bin/ndd. See ndd manpage for specific fields

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
  
.. _ndd_object:  
  
< ndd_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the device to examine. If multiple instances of this device exist on the system, an item for each instance will be collected.  
    * - parameter  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the parameter, For example, ip_forwarding.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _ndd_state:  
  
< ndd_state >  
---------------------------------------------------------


**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the device to examine.  
    * - instance  
      - oval-def:EntityStateIntType (0..1)  
      - The instance of the device to examine. Certain devices may have multiple instances on a system. If multiple instances exist, an item for each instance will be collected and will have this entity populated with its respective instance value. If only a single instance exists, this entity will not be collected.  
    * - parameter  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the parameter, For example, ip_forwarding.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the named parameter.  
  
______________
  
.. _package_test:  
  
< package_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
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
  
< package511_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
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
  
.. _packageavoidlist_test:  
  
< packageavoidlist_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The packageavoidlist_test provides support for checking the metadata of IPS packages that have been flagged as needing to avoid from installation on a Solaris system. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a packageavoidlist_object and the optional state elements reference packageavoidlist_states that specify the metadata to check about a set of packages that have been flagged as to be avoided on a Solaris system.

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
  
.. _packageavoidlist_object:  
  
< packageavoidlist_object >  
---------------------------------------------------------
The packageavoidlist_object element is used by a packageavoidlist_test to identify the set of IPS packages that have been flagged as to be avoided from installation on a Solaris system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

.. _packageavoidlist_state:  
  
< packageavoidlist_state >  
---------------------------------------------------------
The packageavoidlist_state element defines the different system state information that can be used to evaluate the specified IPS packages that have been flagged as to be avoided from installation on a Solaris system.

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
      - The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.  
  
______________
  
.. _packagecheck_test:  
  
< packagecheck_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The packagecheck_test is used to verify the integrity of an installed Solaris SVR4 package. Image Packaging System (IPS) packages are not supported by this test. The information used by this test is modeled after the pkgchk command. For more information, see pkgchk(1M). It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a packagecheck_object and the optional packagecheck_state element specifies the data to check.

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
  
.. _packagecheck_object:  
  
< packagecheck_object >  
---------------------------------------------------------
The packagecheck_object element is used by a packagecheck_test to define the SVR4 packages to be verified. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - sol-def:PackageCheckBehaviors (0..1)  
      -   
    * - pkginst  
      - oval-def:EntityObjectStringType (1..1)  
      - The pkginst entity is a string that represents a package designation by its instance. An instance can be the package abbreviation or a specific instance (for example, inst.1 or inst.2).  
    * - filepath  
      - oval-def:EntityObjectStringType (1..1)  
      - The filepath element specifies the absolute path for a file or directory in the specified package.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _packagecheck_state:  
  
< packagecheck_state >  
---------------------------------------------------------
The package_state element defines the different verification information associated with SVR4 packages installed on the system. Please refer to the individual elements in the schema for more details about what each represents.

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
    * - filepath  
      - oval-def:EntityStateStringType (0..1)  
      - The filepath element specifies the absolute path for a file or directory in the specified package.  
    * - checksum_differs  
      - oval-def:EntityStateBoolType (0..1)  
      - Has the file's checksum changed? A value of true indicates that the file's checksum has changed. A value of false indicates that the file's checksum has not changed.  
    * - size_differs  
      - oval-def:EntityStateBoolType (0..1)  
      - Has the file's size changed? A value of true indicates that the file's size has changed. A value of false indicates that the file's size has not changed.  
    * - mtime_differs  
      - oval-def:EntityStateBoolType (0..1)  
      - Has the file's modified time changed? A value of true indicates that the file's modified time has changed. A value of false indicates that the file's modified time has not changed.  
    * - uread  
      - sol-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual user read permission changed from the expected user read permission?  
    * - uwrite  
      - sol-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual user write permission changed from the expected user write permission?  
    * - uexec  
      - sol-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual user exec permission changed from the expected user exec permission?  
    * - gread  
      - sol-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual group read permission changed from the expected group read permission?  
    * - gwrite  
      - sol-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual group write permission changed from the expected group write permission?  
    * - gexec  
      - sol-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual group exec permission changed from the expected group exec permission?  
    * - oread  
      - sol-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual others read permission changed from the expected others read permission?  
    * - owrite  
      - sol-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual others read permission changed from the expected others read permission?  
    * - oexec  
      - sol-def:EntityStatePermissionCompareType (0..1)  
      - Has the actual others read permission changed from the expected others read permission?  
  
.. _PackageCheckBehaviors:  
  
== PackageCheckBehaviors ==  
---------------------------------------------------------
The PackageCheckBehaviors complex type defines a set of behaviors that for controlling how installed SVR4 packages are checked. These behaviors align with the options of the pkgchk command (specifically '-a', '-c', and '-n').

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - fileattributes_only  
      - xsd:boolean (optional *default*='false')  
      - 'fileattributes_only' when true this behavior means only check the file attributes and do not check file contents. When false, both file attributes and contents will be checked. This aligns with the pkgchk option '-a'.  
    * - filecontents_only  
      - xsd:boolean (optional *default*='false')  
      - 'filecontents_only' when true this behavior means only check the file contents and do not check file attributes. When false, both file attributes and contents will be checked. This aligns with the pkgchk option '-c'.  
    * - no_volatileeditable  
      - xsd:boolean (optional *default*='false')  
      - 'no_volatileeditable' when true this behavior means do not check volatile or editable files' contents. When false, volatile and editable files' contents will be checked. This aligns with the pkgchk option '-n'.  
  
  
______________
  
.. _packagefreezelist_test:  
  
< packagefreezelist_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The packagefreezelist_test provides support for checking the metadata of IPS packages that have been frozen at a particular version. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a packagefreezelist_object and the optional state elements reference packagefreezelist_states that specify the metadata to check about a set of packages.

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
  
.. _packagefreezelist_object:  
  
< packagefreezelist_object >  
---------------------------------------------------------
The packagefreezelist_object element is used by a packagefreezelist_test to identify the set of IPS packages that have been frozen at a particular version on a system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

.. _packagefreezelist_state:  
  
< packagefreezelist_state >  
---------------------------------------------------------
The packagefreezelist_state element defines the different system state information that can be used to evaluate the specified IPS packages on a Solaris system that have been frozen at a particular version.

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
      - The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.  
  
______________
  
.. _packagepublisher_test:  
  
< packagepublisher_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The packagepublisher_test provides support for checking the metadata of package publishers on a Solaris system. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a packagepublisher_object and the optional state elements reference packagepublisher_states that specify the metadata to check about a set of package publishers on a Solaris system.

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
  
.. _packagepublisher_object:  
  
< packagepublisher_object >  
---------------------------------------------------------
The packagepublisher_object element is used by a packagepublisher_test to identify the set of package publishers to check on a Solaris system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the IPS package publisher.  
    * - type  
      - sol-def:EntityObjectPublisherTypeType (1..1)  
      - The type of the IPS package publisher.  
    * - origin_uri  
      - oval-def:EntityObjectStringType (0..1)  
      - The origin URI of the IPS package publisher.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _packagepublisher_state:  
  
< packagepublisher_state >  
---------------------------------------------------------
The packagepublisher_state element defines the different system information that can be used to evaluate the specified package publishers.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the IPS package publisher.  
    * - type  
      - sol-def:EntityStatePublisherTypeType (0..1)  
      - The type of the IPS package publisher.  
    * - origin_uri  
      - oval-def:EntityStateStringType (0..1)  
      - The origin URI of the IPS package publisher.  
    * - alias  
      - oval-def:EntityStateStringType (0..1)  
      - The alias of the IPS package publisher.  
    * - ssl_key  
      - oval-def:EntityStateStringType (0..1)  
      - The Secure Socket Layer (SSL) key registered by a client for publishers using client-side SSL authentication.  
    * - ssl_cert  
      - oval-def:EntityStateStringType (0..1)  
      - The Secure Socket Layer (SSL) certificate registered by a client for publishers using client-side SSL authentication.  
    * - client_uuid  
      - sol-def:EntityStateClientUUIDType (0..1)  
      - The universally unique identifier (UUID) that identifies the image to its IPS package publisher.  
    * - catalog_updated  
      - oval-def:EntityStateIntType (0..1)  
      - The last time that the IPS package publisher's catalog was updated in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.  
    * - enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether or not the IPS package publisher is enabled.  
    * - order  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies where in the search order the IPS package publisher is listed. The first publisher in the search order will have a value of '1'.  
    * - properties  
      - oval-def:EntityStateRecordType (0..1)  
      - The properties associated with the IPS package publisher.  
  
______________
  
.. _patch54_test:  
  
< patch54_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
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
  
______________
  
.. _patch_test:  
  
< patch_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.4  
* Reason: Replaced by the patch54_test. The new test includes additional functionality that allows the object element to match both the original patch and any superseding patches. As a result of this new functionality, the patch_object was also expanded to include behaviors and version entities. See the patch54_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The patch test is used to check information associated with different patches installed on the system. The information being tested is based off the /usr/bin/showrev -p command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an inetd_object and the optional state element specifies the information to check.

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
  
.. _patch_object:  
  
< patch_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.4  
* Reason: Replaced by the patch54_object. Due to the additional functionality that allows the object element to match both the original patch and any superseding patches, a new object was created that includes behaviors and version entities. See the patch54_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
The patch_object element is used by a patch test to define the specific patch to be evaluated. Patches are identified by unique alphanumeric strings, with the patch base code first, a hyphen, and a number that represents the patch revision number. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A patch object consists of a single base entity that identifies the patch to be used.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - base  
      - oval-def:EntityObjectIntType (1..1)  
      - The base entity reresents a patch base code found before the hyphen.  
  
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
  
______________
  
.. _variant_test:  
  
< variant_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The variant_test is used to check the variants associated with the current Image Packaging System image. Variants are properties that control whether or not mutually exclusive components from a package are installed on a system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an variant_object and the optional state elements reference a variant_state and specifies the data to check.

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
  
.. _variant_object:  
  
< variant_object >  
---------------------------------------------------------
The variant_object element is used by a variant test to define the image variant items to be evaluated based on the specified states. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityObjectStringType (1..1)  
      - The path to the Solaris IPS image.  
    * - name  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the variant property associated with an IPS image.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _variant_state:  
  
< variant_state >  
---------------------------------------------------------
The variant_state specifies the various variant properties associated with the specified IPS image.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the path to the Solaris IPS image.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the name of the variant property associated with an IPS image.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - Specifies the value of the variant property associated with an IPS image.  
  
______________
  
.. _virtualizationinfo_test:  
  
< virtualizationinfo_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The virtualizationinfo_test provides support for checking the metadata associated with the current virtualization environment this instance of Solaris is running on. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a virtualizationinfo_object and the optional state elements reference virtualizationinfo_states that specify the metadata to check the current virtualization environment.

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
  
.. _virtualizationinfo_object:  
  
< virtualizationinfo_object >  
---------------------------------------------------------
The virtualizationinfo_object element is used by a virtualizationinfo_test to identify the current virtualization environment this instance of Solaris is running on. Given that this object only retrieves the current virtualization environment for the system, there are no child entities to specify in the object.

**Extends:** oval-def:ObjectType

.. _virtualizationinfo_state:  
  
< virtualizationinfo_state >  
---------------------------------------------------------
The virtualizationinfo_state element defines the different information that can be used to evaluate the current virtualization environment this instance of Solaris is running on.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - current  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the current environment.  
    * - supported  
      - sol-def:EntityStateV12NEnvType (0..1)  
      - The list of virtualization environments that this node supports as children.  
    * - parent  
      - sol-def:EntityStateV12NEnvType (0..1)  
      - The parent environment of the current environment.  
    * - ldom-role  
      - sol-def:EntityStateLDOMRoleType (0..1)  
      - The logical domain roles associated with the current environment.  
    * - properties  
      - oval-def:EntityStateRecordType (0..1)  
      - The properties associated with the current environment.  
  
.. _EntityObjectPublisherTypeType:  
  
== EntityObjectPublisherTypeType ==  
---------------------------------------------------------
The EntityObjectPublisherTypeType complex type restricts a string value to three values: archive, mirror, or origin that specifies how the publisher distributes their packages. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityObjectStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateClientUUIDType:  
  
== EntityStateClientUUIDType ==  
---------------------------------------------------------
The EntityStateClientUUIDType restricts a string value to a representation of a client UUID, used to identify an image to its IPS package publisher. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** oval-def:EntityStateStringType

**Pattern:** ([a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12})?

.. _EntityStatePermissionCompareType:  
  
== EntityStatePermissionCompareType ==  
---------------------------------------------------------
The EntityStatePermissionCompareType complex type restricts a string value to more, less, or same which specifies if an actual permission is different than the expected permission (more or less restrictive) or if the permission is the same. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStatePublisherTypeType:  
  
== EntityStatePublisherTypeType ==  
---------------------------------------------------------
The EntityStatePublisherTypeType complex type restricts a string value to three values: archive, mirror, or origin that specifies how the publisher distributes their packages. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
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
  
.. _EntityStateV12NEnvType:  
  
== EntityStateV12NEnvType ==  
---------------------------------------------------------
The EntityStateV12NEnvType complex type restricts a string value to a specific set of values that describe the virtalization environment. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateLDOMRoleType:  
  
== EntityStateLDOMRoleType ==  
---------------------------------------------------------
The EntityStateLDOMRoleType complex type restricts a string value to a specific set of roles for the current virtualization environment. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
