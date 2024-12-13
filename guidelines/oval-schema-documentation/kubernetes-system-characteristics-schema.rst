Open Vulnerability and Assessment Language: Kubernetes System Characteristics  
=========================================================
* Schema: Kubernetes System Characteristics  
* Version: 6.0  
* Release Date: 1/1/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Kubernetes specific tests found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`kubectl_item`  
* :ref:`kubepsp_item`  
  
______________
  
.. _kubectl_item:  
  
< kubectl_item >  
---------------------------------------------------------
The kubectl_item element defines information associated with results from the "kubectl get" command for the specified resource and potentially namespace. Refer to https://kubernetes.io/docs/reference/kubectl/overview/ for more information on the resource types available and whether or not they are namespaced. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - resource_name  
      - kube-sc:EntityItemResourceNameType (1..1)  
      - The resource_name element defines the kind of resources retrieved via the "kubectl get" command.  
    * - namespace  
      - oval-sc:EntityItemStringType (1..1)  
      - If a resource to be collected defines distinct values per defined namespace, the namespace element allows collectors to only retrieve resource information for that namespace. If xsi:nil=true, either the resource_name does not require a namespace, or the results of the command will include all namespaces.  
    * - yaml_path  
      - oval-sc:EntityItemStringType (1..1)  
      - By default, only a subset of fields are returned from any given "kubectl get" command. These fields are selected based on the resource name used in the command and will vary from resource to resource. Using the output format capabilities of the "kubectl get" command, a full YAML output is available using the "-o=yaml" argument. Using the YAML path element here allows policy writers to provide a colon-delimited path to select specific resource properties.  
    * - result  
      - oval-sc:EntityItemRecordType (0..unbounded)  
      - The result entity holds the results of the specified "kubectl get" command.  
  
______________
  
.. _kubepsp_item:  
  
< kubepsp_item >  
---------------------------------------------------------
The kubepsp_item element defines information associated with results from the "kubectl get psp" command for the specified pod security policy. Refer to https://kubernetes.io/docs/concepts/policy/pod-security-policy/ for more information on pod security policies. It extends the standard ItemType as defined in the oval-system-characteristics schema and one should refer to the ItemType description for more information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - psp_name  
      - oval-sc:EntityItemStringType (1..1)  
      - Specifies the name of the PSP. Names are case-sensitive. For example "kubectl get psp example1"  
    * - yaml_path  
      - oval-sc:EntityItemStringType (1..1)  
      - By default, only a subset of fields are returned from any given "kubectl get psp" command. Using the output format capabilities of the "kubectl get" command, a full YAML output is available using the "-o=yaml" argument. Using the YAML path element here allows policy writers to provide a colon-delimited path to select specific resource properties. When a yaml_path is provided, this object reflects the execution of the "kubectl get psp [PSP_NAME] -o=yaml" command, and implementations will be required to parse the output YAML and navigate the path specified, in order to find the appropriate values. Examples of yaml_path values can be as simple as "apiVersion", or more complicated such as "spec:runAsUser:rule"  
    * - result  
      - oval-sc:EntityItemRecordType (0..unbounded)  
      - The result entity specifies how to test objects in the result set of the specified "kubectl get psp" output.  
  
.. _EntityItemResourceNameType:  
  
== EntityItemResourceNameType ==  
---------------------------------------------------------
The EntityObjectResourceNameType restricts a string value to a set of allowed "kubectl get" resource names.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - componentstatuses  
      - |   
    * - configmaps  
      - |   
    * - endpoints  
      - |   
    * - limitranges  
      - |   
    * - namespaces  
      - |   
    * - nodes  
      - |   
    * - persistentvolumeclaims  
      - |   
    * - persistentvolumes  
      - |   
    * - pods  
      - |   
    * - podtemplates  
      - |   
    * - replicationcontrollers  
      - |   
    * - resourcequotas  
      - |   
    * - secrets  
      - |   
    * - serviceaccounts  
      - |   
    * - services  
      - |   
    * - mutatingwebhookconfigurations  
      - |   
    * - validatingwebhookconfigurations  
      - |   
    * - customresourcedefinitions  
      - |   
    * - apiservices  
      - |   
    * - controllerrevisions  
      - |   
    * - daemonsets  
      - |   
    * - deployments  
      - |   
    * - replicasets  
      - |   
    * - statefulsets  
      - |   
    * - tokenreviews  
      - |   
    * - localsubjectaccessreviews  
      - |   
    * - selfsubjectaccessreviews  
      - |   
    * - selfsubjectrulesreviews  
      - |   
    * - subjectaccessreviews  
      - |   
    * - horizontalpodautoscalers  
      - |   
    * - cronjobs  
      - |   
    * - jobs  
      - |   
    * - certificatesigningrequests  
      - |   
    * - leases  
      - |   
    * - events  
      - |   
    * - ingresses  
      - |   
    * - networkpolicies  
      - |   
    * - poddisruptionbudgets  
      - |   
    * - podsecuritypolicies  
      - |   
    * - clusterrolebindings  
      - |   
    * - clusterroles  
      - |   
    * - rolebindings  
      - |   
    * - roles  
      - |   
    * - priorityclasses  
      - |   
    * - storageclasses  
      - |   
    * - volumeattachments  
      - |   
  
