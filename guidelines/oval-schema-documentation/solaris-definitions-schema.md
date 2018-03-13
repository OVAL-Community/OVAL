# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Solaris Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Solaris specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ facet_test ](#facet_test)  
 *[ image_test ](#image_test)  
 *[ isainfo_test ](#isainfo_test)  
 *[ ndd_test ](#ndd_test)  
 *[ package_test ](#package_test)  
 *[ package511_test ](#package511_test)  
 *[ packageavoidlist_test ](#packageavoidlist_test)  
 *[ packagecheck_test ](#packagecheck_test)  
 *[ packagefreezelist_test ](#packagefreezelist_test)  
 *[ packagepublisher_test ](#packagepublisher_test)  
 *[ patch54_test ](#patch54_test)  
 *[ ~~patch_test~~ ](#patch_test)  
 *[ smf_test ](#smf_test)  
 *[ smfproperty_test ](#smfproperty_test)  
 *[ variant_test ](#variant_test)  
 *[ virtualizationinfo_test ](#virtualizationinfo_test)  
  
______________
  
## <a name="facet_test"></a>< facet_test >

The facet_test is used to check the facets associated with the specified Image Packaging System image. Facets are properties that control whether or not optional components from a package are installed on a system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an facet_object and the optional state elements reference a facet_state and specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="facet_object"></a>< facet_object >

The facet_object element is used by a facet test to define the image facet items to be evaluated based on the specified states. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path to the Solaris IPS image.</div>|  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the facet property associated with an IPS image.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="facet_state"></a>< facet_state >

The facet_state specifies the various facet properties associated with an IPS image.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the path to the Solaris IPS image.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the name of the facet property associated with an IPS image.</div>|  
| value | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies the value of the facet property associated with an IPS image.</div>|  
  
______________
  
## <a name="image_test"></a>< image_test >

The image_test provides support for checking the metadata of IPS images on Solaris systems. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a image_object and the optional state elements reference image_states that specify the metadata to check about a set of images.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="image_object"></a>< image_object >

The image_object element is used by a image_test to identify the set of images to check on a system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path to the Solaris IPS image.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (1..1) |  
||<div>The name of the property associated with the Solaris IPS image.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="image_state"></a>< image_state >

The image_state element defines the different system state information that can be used to check the metadata associated with the specified IPS image on a Solaris system.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path to the Solaris IPS image.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the property associated with the Solaris IPS image.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value of a property that is associated with a Solaris IPS image.</div>|  
  
______________
  
## <a name="isainfo_test"></a>< isainfo_test >

The isainfo test reveals information about the instruction set architectures. This information can be retrieved by the isainfo command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an isainfo_object and the optional state element specifies the metadata to check.

The isainfo_test was originally developed by Robert L. Hollis at ThreatGuard, Inc. Many thanks for their support of the OVAL project.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="isainfo_object"></a>< isainfo_object >

The isainfo_object element is used by an isainfo test to define those objects to evaluated based on a specified state. There is actually only one object relating to isainfo and this is the system as a whole. Therefore, there are no child entities defined. Any OVAL Test written to check isainfo will reference the same isainfo_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="isainfo_state"></a>< isainfo_state >

The isainfo_state element defines the information about the instruction set architectures. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| bits | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>This is the number of bits in the address space of the native instruction set (isainfo -b).</div>|  
| kernel_isa | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the name of the instruction set used by kernel components (isainfo -k).</div>|  
| application_isa | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the name of the instruction set used by portable applications (isainfo -n).</div>|  
  
______________
  
## <a name="ndd_test"></a>< ndd_test >

From /usr/bin/ndd. See ndd manpage for specific fields

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="ndd_object"></a>< ndd_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| device | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the device to examine. If multiple instances of this device exist on the system, an item for each instance will be collected.</div>|  
| parameter | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the parameter, For example, ip_forwarding.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="ndd_state"></a>< ndd_state >



**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| device | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the device to examine.</div>|  
| instance | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The instance of the device to examine. Certain devices may have multiple instances on a system. If multiple instances exist, an item for each instance will be collected and will have this entity populated with its respective instance value. If only a single instance exists, this entity will not be collected.</div>|  
| parameter | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the parameter, For example, ip_forwarding.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value of the named parameter.</div>|  
  
______________
  
## <a name="package_test"></a>< package_test >

The package test is used to check information associated with different SVR4 packages installed on the system. Image Packaging System (IPS) packages are not supported by this test. The information used by this test is modeled after the /usr/bin/pkginfo command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an package_object and the optional state element specifies the information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="package_object"></a>< package_object >

The package_object element is used by a package test to define the SVR4 packages to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A package object consists of a single pkginst entity that identifies the package to be used.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pkginst | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The pkginst entity is a string that represents a package designation by its instance. An instance can be the package abbreviation or a specific instance (for example, inst.1 or inst.2).</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="package_state"></a>< package_state >

The package_state element defines the different information associated with SVR4 packages installed on the system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pkginst | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The pkginst entity is a string that represents a package designation by its instance. An instance can be the package abbreviation or a specific instance (for example, inst.1 or inst.2).</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name entity is a text string that specifies a full package name.</div>|  
| category | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The category entity is a string in the form of a comma-separated list of categories under which a package may be displayed. Note that a package must at least belong to the system or application category. Categories are case-insensitive and may contain only alphanumerics. Each category is limited in length to 16 characters.</div>|  
| version | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The version entity is a text string that specifies the current version associated with the software package. The maximum length is 256 ASCII characters and the first character cannot be a left parenthesis. Current Solaris software practice is to assign this parameter monotonically increasing Dewey decimal values of the form: major_revision.minor_revision[.micro_revision] where all the revision fields are integers. The versioning fields can be extended to an arbitrary string of numbers in Dewey-decimal format, if necessary.</div>|  
| vendor | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The vendor entity is a string used to identify the vendor that holds the software copyright (maximum length of 256 ASCII characters).</div>|  
| description | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The description entity is a string that represents a more in-depth description of a package.</div>|  
  
______________
  
## <a name="package511_test"></a>< package511_test >

The package511_test provides support for checking the metadata of packages installed using the Solaris Image Packaging System. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a package511_object and the optional state elements reference package511_states that specify the metadata to check about a set of packages.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="package511_object"></a>< package511_object >

The package511_object element is used by a package511_test to identify the set of packages to check on a system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| publisher | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The person, group of persons, or organization that is the source of the package. The publisher should be expressed without leading "pkg:" or "//" components.</div>|  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The full hierarchical name of the package which is separated by forward slash characters. The full name should be expressed without leading "pkg:/" or "/" components.</div>|  
| version | [oval-def:EntityObjectVersionType](oval-definitions-schema.md#EntityObjectVersionType)  (1..1) |  
||<div>The version of the package which consists of the component version, build version, and branch version.</div>|  
| timestamp | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The timestamp when the package was published in the ISO-8601 basic format (YYYYMMDDTHHMMSSZ).</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="package511_state"></a>< package511_state >

The package511_state element defines the different system state information that can be used to check the metadata associated with the specified IPS packages on a Solaris system.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| publisher | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The person, group of persons, or organization that is the source of the package. The publisher should be expressed without leading "pkg:" or "//" components.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The full hierarchical name of the package which is separated by forward slash characters. The full name should be expressed without leading "pkg:/" or "/" components.</div>|  
| version | [oval-def:EntityStateVersionType](oval-definitions-schema.md#EntityStateVersionType)  (0..1) |  
||<div>The version of the package which consists of the component version, build version, and branch version.</div>|  
| timestamp | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The timestamp when the package was published in the ISO-8601 basic format (YYYYMMDDTHHMMSSZ).</div>|  
| fmri | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.</div>|  
| summary | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A summary of what the package provides.</div>|  
| description | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A description of what the package provides.</div>|  
| category | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The category of the package.</div>|  
| updates_available | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>A boolean value indicating whether or not updates are available for this package.</div>|  
  
______________
  
## <a name="packageavoidlist_test"></a>< packageavoidlist_test >

The packageavoidlist_test provides support for checking the metadata of IPS packages that have been flagged as needing to avoid from installation on a Solaris system. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a packageavoidlist_object and the optional state elements reference packageavoidlist_states that specify the metadata to check about a set of packages that have been flagged as to be avoided on a Solaris system.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="packageavoidlist_object"></a>< packageavoidlist_object >

The packageavoidlist_object element is used by a packageavoidlist_test to identify the set of IPS packages that have been flagged as to be avoided from installation on a Solaris system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="packageavoidlist_state"></a>< packageavoidlist_state >

The packageavoidlist_state element defines the different system state information that can be used to evaluate the specified IPS packages that have been flagged as to be avoided from installation on a Solaris system.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| fmri | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.</div>|  
  
______________
  
## <a name="packagecheck_test"></a>< packagecheck_test >

The packagecheck_test is used to verify the integrity of an installed Solaris SVR4 package. Image Packaging System (IPS) packages are not supported by this test. The information used by this test is modeled after the pkgchk command. For more information, see pkgchk(1M). It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a packagecheck_object and the optional packagecheck_state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="packagecheck_object"></a>< packagecheck_object >

The packagecheck_object element is used by a packagecheck_test to define the SVR4 packages to be verified. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [sol-def:PackageCheckBehaviors](#PackageCheckBehaviors)  (0..1) |  
|||  
| pkginst | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The pkginst entity is a string that represents a package designation by its instance. An instance can be the package abbreviation or a specific instance (for example, inst.1 or inst.2).</div>|  
| filepath | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="packagecheck_state"></a>< packagecheck_state >

The package_state element defines the different verification information associated with SVR4 packages installed on the system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| pkginst | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The pkginst entity is a string that represents a package designation by its instance. An instance can be the package abbreviation or a specific instance (for example, inst.1 or inst.2).</div>|  
| filepath | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The filepath element specifies the absolute path for a file or directory in the specified package.</div>|  
| checksum_differs | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Has the file's checksum changed? A value of true indicates that the file's checksum has changed. A value of false indicates that the file's checksum has not changed.</div>|  
| size_differs | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Has the file's size changed? A value of true indicates that the file's size has changed. A value of false indicates that the file's size has not changed.</div>|  
| mtime_differs | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Has the file's modified time changed? A value of true indicates that the file's modified time has changed. A value of false indicates that the file's modified time has not changed.</div>|  
| uread | [sol-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual user read permission changed from the expected user read permission?</div>|  
| uwrite | [sol-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual user write permission changed from the expected user write permission?</div>|  
| uexec | [sol-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual user exec permission changed from the expected user exec permission?</div>|  
| gread | [sol-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual group read permission changed from the expected group read permission?</div>|  
| gwrite | [sol-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual group write permission changed from the expected group write permission?</div>|  
| gexec | [sol-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual group exec permission changed from the expected group exec permission?</div>|  
| oread | [sol-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual others read permission changed from the expected others read permission?</div>|  
| owrite | [sol-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual others read permission changed from the expected others read permission?</div>|  
| oexec | [sol-def:EntityStatePermissionCompareType](#EntityStatePermissionCompareType)  (0..1) |  
||<div>Has the actual others read permission changed from the expected others read permission?</div>|  
  
## <a name="PackageCheckBehaviors"></a>== PackageCheckBehaviors ==

The PackageCheckBehaviors complex type defines a set of behaviors that for controlling how installed SVR4 packages are checked. These behaviors align with the options of the pkgchk command (specifically '-a', '-c', and '-n').

#### Attributes:

*	**fileattributes_only** xsd:boolean (optional -- default='false')  
'fileattributes_only' when true this behavior means only check the file attributes and do not check file contents. When false, both file attributes and contents will be checked. This aligns with the pkgchk option '-a'.  
*	**filecontents_only** xsd:boolean (optional -- default='false')  
'filecontents_only' when true this behavior means only check the file contents and do not check file attributes. When false, both file attributes and contents will be checked. This aligns with the pkgchk option '-c'.  
*	**no_volatileeditable** xsd:boolean (optional -- default='false')  
'no_volatileeditable' when true this behavior means do not check volatile or editable files' contents. When false, volatile and editable files' contents will be checked. This aligns with the pkgchk option '-n'.  
  
______________
  
## <a name="packagefreezelist_test"></a>< packagefreezelist_test >

The packagefreezelist_test provides support for checking the metadata of IPS packages that have been frozen at a particular version. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a packagefreezelist_object and the optional state elements reference packagefreezelist_states that specify the metadata to check about a set of packages.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="packagefreezelist_object"></a>< packagefreezelist_object >

The packagefreezelist_object element is used by a packagefreezelist_test to identify the set of IPS packages that have been frozen at a particular version on a system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="packagefreezelist_state"></a>< packagefreezelist_state >

The packagefreezelist_state element defines the different system state information that can be used to evaluate the specified IPS packages on a Solaris system that have been frozen at a particular version.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| fmri | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The Fault Management Resource Identifier (FMRI) of the package which uniquely identifies the package on the system.</div>|  
  
______________
  
## <a name="packagepublisher_test"></a>< packagepublisher_test >

The packagepublisher_test provides support for checking the metadata of package publishers on a Solaris system. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a packagepublisher_object and the optional state elements reference packagepublisher_states that specify the metadata to check about a set of package publishers on a Solaris system.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="packagepublisher_object"></a>< packagepublisher_object >

The packagepublisher_object element is used by a packagepublisher_test to identify the set of package publishers to check on a Solaris system. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the IPS package publisher.</div>|  
| type | [sol-def:EntityObjectPublisherTypeType](#EntityObjectPublisherTypeType)  (1..1) |  
||<div>The type of the IPS package publisher.</div>|  
| origin_uri | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (0..1) |  
||<div>The origin URI of the IPS package publisher.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="packagepublisher_state"></a>< packagepublisher_state >

The packagepublisher_state element defines the different system information that can be used to evaluate the specified package publishers.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the IPS package publisher.</div>|  
| type | [sol-def:EntityStatePublisherTypeType](#EntityStatePublisherTypeType)  (0..1) |  
||<div>The type of the IPS package publisher.</div>|  
| origin_uri | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The origin URI of the IPS package publisher.</div>|  
| alias | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The alias of the IPS package publisher.</div>|  
| ssl_key | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The Secure Socket Layer (SSL) key registered by a client for publishers using client-side SSL authentication.</div>|  
| ssl_cert | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The Secure Socket Layer (SSL) certificate registered by a client for publishers using client-side SSL authentication.</div>|  
| client_uuid | [sol-def:EntityStateClientUUIDType](#EntityStateClientUUIDType)  (0..1) |  
||<div>The universally unique identifier (UUID) that identifies the image to its IPS package publisher.</div>|  
| catalog_updated | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The last time that the IPS package publisher's catalog was updated in seconds since the Unix epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.</div>|  
| enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether or not the IPS package publisher is enabled.</div>|  
| order | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies where in the search order the IPS package publisher is listed. The first publisher in the search order will have a value of '1'.</div>|  
| properties | [oval-def:EntityStateRecordType](oval-definitions-schema.md#EntityStateRecordType)  (0..1) |  
||<div>The properties associated with the IPS package publisher.</div>|  
  
______________
  
## <a name="patch54_test"></a>< patch54_test >

The patch test is used to check information associated with different patches for SVR4 packages installed on the system. Image Packaging System (IPS) packages do not support patches and are not supported by this test. The information being tested is based off the /usr/bin/showrev -p command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an inetd_object and the optional state element specifies the information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
______________
  
## <a name="patch_test"></a><  ~~patch_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.4** :small_red_triangle: <br />**Reason:** Replaced by the patch54_test. The new test includes additional functionality that allows the object element to match both the original patch and any superseding patches. As a result of this new functionality, the patch_object was also expanded to include behaviors and version entities. See the patch54_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The patch test is used to check information associated with different patches installed on the system. The information being tested is based off the /usr/bin/showrev -p command. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an inetd_object and the optional state element specifies the information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="patch54_object"></a>< patch54_object >

The patch54_object element is used by a patch test to define the specific patch to be evaluated. Patches are identified by unique alphanumeric strings, with the patch base code first, a hyphen, and a number that represents the patch revision number. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A patch object consists of a base entity that identifies the patch to be used, and a version entity that represent the patch revision number.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [sol-def:PatchBehaviors](#PatchBehaviors)  (0..1) |  
|||  
| base | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The base entity represents a patch base code found before the hyphen.</div>|  
| version | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The version entity represents a patch version number found after the hyphen.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="patch_object"></a><  ~~patch_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.4** :small_red_triangle: <br />**Reason:** Replaced by the patch54_object. Due to the additional functionality that allows the object element to match both the original patch and any superseding patches, a new object was created that includes behaviors and version entities. See the patch54_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

The patch_object element is used by a patch test to define the specific patch to be evaluated. Patches are identified by unique alphanumeric strings, with the patch base code first, a hyphen, and a number that represents the patch revision number. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A patch object consists of a single base entity that identifies the patch to be used.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| base | [oval-def:EntityObjectIntType](oval-definitions-schema.md#EntityObjectIntType)  (1..1) |  
||<div>The base entity reresents a patch base code found before the hyphen.</div>|  
  
## <a name="patch_state"></a>< patch_state >

The patch_state element defines the different information associated with a specific patch for an SVR4 package installed on the system. Patches are identified by unique alphanumeric strings, with the patch base code first, a hyphen, and a number that represents the patch revision number. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| base | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The base entity reresents a patch base code found before the hyphen.</div>|  
| version | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The version entity represents a patch version number found after the hyphen.</div>|  
  
## <a name="PatchBehaviors"></a>== PatchBehaviors ==

The PatchBehaviors complex type defines a number of behaviors that allow a more detailed definition of the patch_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	**supersedence** Restriction of xsd:boolean (optional -- default='false')  
'supersedence' specifies that the object should also match any superseding patches to the one being specified. In Solaris, a patch can be superseded in two ways. The first way is implicitly when a new revision of a patch is released (e.g. patch 12345-02 supersedes patch 12345-01). The second way is explicitly where a new patch contains the complete functionality of another patch. If set to 'true', the resulting object set would be the original patch specified plus any superseding patches. The default value is 'false' meaning the object should only match the specified patch.  
  
______________
  
## <a name="smf_test"></a>< smf_test >

The smf_test is used to check service management facility controlled services including traditional unix rc level start/kill scrips and inetd daemon services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a smf_object and the optional state element specifies the information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="smf_object"></a>< smf_object >

The smf_object element is used by a smf_test to define the specific service instance to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A smf_object consists of a fmri entity that represents the Fault Management Resource Identifier (FMRI) which uniquely identifies a service.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| fmri | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The FMRI (Fault Managed Resource Identifier) entity is used to identify system objects for which advanced fault and resource management capabilities are provided. Services managed by SMF are assigned FMRI URIs prefixed with the scheme name "svc". FMRIs used by SMF can be expressed in three ways: first as an absolute path including a location path such as "localhost" (eg svc://localhost/system/system-log:default), second as a path relative to the local machine (eg svc:/system/system-log:default), and third as simply the service identifier with the string prefixes implied (eg system/system-log:default). For OVAL, the absolute path version (first choice) should be used.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="smf_state"></a>< smf_state >

The smf_state element defines the different information associated with a specific smf controlled service. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| fmri | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The FMRI (Fault Managed Resource Identifier) entity describes a possible identifier associated with a service. Services managed by SMF are assigned FMRI URIs prefixed with the scheme name "svc". FMRIs used by SMF can be expressed in three ways: first as an absolute path including a location path such as "localhost" (eg svc://localhost/system/system-log:default), second as a path relative to the local machine (eg svc:/system/system-log:default), and third as simply the service identifier with the string prefixes implied (eg system/system-log:default). For OVAL, the absolute path version (first choice) should be used.</div>|  
| service_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The service_name entity is usually an abbreviated form of the FMRI. In the example svc://localhost/system/system-log:default, the name would be system-log.</div>|  
| service_state | [sol-def:EntityStateSmfServiceStateType](#EntityStateSmfServiceStateType)  (0..1) |  
||<div>The service_state entity describes a possible state that the service may be in. Each service instance is always in a well-defined state based on its dependencies, the results of the execution of its methods, and its potential receipt of events from the contracts filesystem. The service_state values are UNINITIALIZED, OFFLINE, ONLINE, DEGRADED, MAINTENANCE, DISABLED, and LEGACY-RUN.</div>|  
| protocol | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The protocol entity describes a possible protocol supported by the service.</div>|  
| server_executable | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The entity server_executable is a string representing the listening daemon on the server side. An example being 'svcprop ftp' which might show 'inetd/start/exec astring /usr/sbin/in.ftpd\ -a'</div>|  
| server_arguements | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The server_arguments entity describes possible parameters that are passed to the service.</div>|  
| exec_as_user | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The exec_as_user entity is a string pulled from svcprop in the following format: inetd_start/user astring root</div>|  
  
______________
  
## <a name="smfproperty_test"></a>< smfproperty_test >

The smfproperty_test is used to check the value of properties associated with SMF services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an smfproperty_object and the optional state elements reference a smfproperty_state and specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="smfproperty_object"></a>< smfproperty_object >

The smfproperty_object element is used by a SMF property test to define the SMF property items to be evaluated based on the specified states. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| service | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies the SMF service on the system. This is the service category and name separated by a forward slash ("/").</div>|  
| instance | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The instance of an SMF service which represents a specific configuration of a service.</div>|  
| property | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the property associated with an SMF service. This is the property category and name separated by a forward slash ("/").</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="smfproperty_state"></a>< smfproperty_state >

The smfproperty_state specifies the values of properties associated with SMF services.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| service | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the SMF service on the system. This is the service category and name separated by a forward slash ("/").</div>|  
| instance | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the instance of an SMF service which represents a specific configuration of a service.</div>|  
| property | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the name of the property associated with an SMF service. This is the property category and name separated by a forward slash ("/").</div>|  
| fmri | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The Fault Management Resource Identifier (FMRI) of the SMF service which uniquely identifies the service on the system.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>Specifies the value of the property associated with an SMF service.</div>|  
  
______________
  
## <a name="variant_test"></a>< variant_test >

The variant_test is used to check the variants associated with the current Image Packaging System image. Variants are properties that control whether or not mutually exclusive components from a package are installed on a system. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an variant_object and the optional state elements reference a variant_state and specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="variant_object"></a>< variant_object >

The variant_object element is used by a variant test to define the image variant items to be evaluated based on the specified states. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The path to the Solaris IPS image.</div>|  
| name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the variant property associated with an IPS image.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="variant_state"></a>< variant_state >

The variant_state specifies the various variant properties associated with the specified IPS image.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the path to the Solaris IPS image.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the name of the variant property associated with an IPS image.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>Specifies the value of the variant property associated with an IPS image.</div>|  
  
______________
  
## <a name="virtualizationinfo_test"></a>< virtualizationinfo_test >

The virtualizationinfo_test provides support for checking the metadata associated with the current virtualization environment this instance of Solaris is running on. The test extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a virtualizationinfo_object and the optional state elements reference virtualizationinfo_states that specify the metadata to check the current virtualization environment.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="virtualizationinfo_object"></a>< virtualizationinfo_object >

The virtualizationinfo_object element is used by a virtualizationinfo_test to identify the current virtualization environment this instance of Solaris is running on. Given that this object only retrieves the current virtualization environment for the system, there are no child entities to specify in the object.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="virtualizationinfo_state"></a>< virtualizationinfo_state >

The virtualizationinfo_state element defines the different information that can be used to evaluate the current virtualization environment this instance of Solaris is running on.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| current | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the current environment.</div>|  
| supported | [sol-def:EntityStateV12NEnvType](#EntityStateV12NEnvType)  (0..1) |  
||<div>The list of virtualization environments that this node supports as children.</div>|  
| parent | [sol-def:EntityStateV12NEnvType](#EntityStateV12NEnvType)  (0..1) |  
||<div>The parent environment of the current environment.</div>|  
| ldom-role | [sol-def:EntityStateLDOMRoleType](#EntityStateLDOMRoleType)  (0..1) |  
||<div>The logical domain roles associated with the current environment.</div>|  
| properties | [oval-def:EntityStateRecordType](oval-definitions-schema.md#EntityStateRecordType)  (0..1) |  
||<div>The properties associated with the current environment.</div>|  
  
## <a name="EntityObjectPublisherTypeType"></a>== EntityObjectPublisherTypeType ==

The EntityObjectPublisherTypeType complex type restricts a string value to three values: archive, mirror, or origin that specifies how the publisher distributes their packages. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| archive | <div>The value of 'archive' specifies that the publisher distributes packages by providing a file that contains one or more packages.</div> |  
| mirror | <div>The value of 'mirror' specifies that the publisher distributes packages by providing a package repository that contains only package content.</div> |  
| origin | <div>The value of 'origin' specifies that the publisher distributes packages by providing a package repository that contains both package metadata and package content.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateClientUUIDType"></a>== EntityStateClientUUIDType ==

The EntityStateClientUUIDType restricts a string value to a representation of a client UUID, used to identify an image to its IPS package publisher. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the specified pattern restriction.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

**Pattern:** ([a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12})?

## <a name="EntityStatePermissionCompareType"></a>== EntityStatePermissionCompareType ==

The EntityStatePermissionCompareType complex type restricts a string value to more, less, or same which specifies if an actual permission is different than the expected permission (more or less restrictive) or if the permission is the same. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| more | <div>The actual permission is more restrictive than the expected permission.</div> |  
| less | <div>The actual permission is less restrictive than the expected permission.</div> |  
| same | <div>The actual permission is the same as the expected permission.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStatePublisherTypeType"></a>== EntityStatePublisherTypeType ==

The EntityStatePublisherTypeType complex type restricts a string value to three values: archive, mirror, or origin that specifies how the publisher distributes their packages. The empty string is also allowed to support empty elements associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| archive | <div>The value of 'archive' specifies that the publisher distributes packages by providing a file that contains one or more packages.</div> |  
| mirror | <div>The value of 'mirror' specifies that the publisher distributes packages by providing a package repository that contains only package content.</div> |  
| origin | <div>The value of 'origin' specifies that the publisher distributes packages by providing a package repository that contains both package metadata and package content.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateSmfServiceStateType"></a>== EntityStateSmfServiceStateType ==

The EntityStateSmfServiceStateType complex type defines the different values that are valid for the service_state entity of a smf_state. The empty string is also allowed as a valid value to support an empty element that is found when a variable reference is used within the type entity.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| DEGRADED | <div>The instance is enabled and running or available to run. The instance, however, is functioning at a limited capacity in comparison to normal operation.</div> |  
| DISABLED | <div>The instance is disabled.</div> |  
| MAINTENANCE | <div>The instance is enabled, but not able to run. Administrative action is required to restore the instance to offline and subsequent states.</div> |  
| LEGACY-RUN | <div>This state represents a legacy instance that is not managed by the service management facility. Instances in this state have been started at some point, but might or might not be running.</div> |  
| OFFLINE | <div>The instance is enabled, but not yet running or available to run.</div> |  
| ONLINE | <div>The instance is enabled and running or is available to run.</div> |  
| UNINITIALIZED | <div>This is the initial state for all service instances.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateV12NEnvType"></a>== EntityStateV12NEnvType ==

The EntityStateV12NEnvType complex type restricts a string value to a specific set of values that describe the virtalization environment. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

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
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateLDOMRoleType"></a>== EntityStateLDOMRoleType ==

The EntityStateLDOMRoleType complex type restricts a string value to a specific set of roles for the current virtualization environment. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| control-role | <div>The current virtualization environment is a control domain.</div> |  
| io-role | <div>The current virtualization environment is an I/O domain.</div> |  
| root-role | <div>The current virtualization environment is a root I/O domain.</div> |  
| service-role | <div>The current virtualization environment is a service domain.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
