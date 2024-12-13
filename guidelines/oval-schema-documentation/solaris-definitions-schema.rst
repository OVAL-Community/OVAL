Open Vulnerability and Assessment Language: Solaris Definition  
=========================================================
* Schema: Solaris Definition  
* Version: 6.0  
* Release Date: 1/1/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Solaris specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`smf_test`  
* :ref:`smfproperty_test`  
  
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
  
