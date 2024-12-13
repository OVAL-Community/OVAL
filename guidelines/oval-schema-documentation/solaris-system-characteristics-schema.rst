Open Vulnerability and Assessment Language: Solaris System Characteristics  
=========================================================
* Schema: Solaris System Characteristics  
* Version: 6.0  
* Release Date: 1/1/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Solaris specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`smf_item`  
* :ref:`smfproperty_item`  
  
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
  
