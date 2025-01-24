Open Vulnerability and Assessment Language: Kubernetes Definition  
=========================================================
* Schema: Kubernetes Definition  
* Version: 6.0  
* Release Date: 1/24/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Kubernetes specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`kubectl_test`  
* :ref:`kubepsp_test`  
  
______________
  
.. _kubectl_test:  
  
< kubectl_test >  
---------------------------------------------------------
The kubectl_test is used to check various properties of the Kubernetes runtime. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a test and the optional state element specifies the data to check.

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
  
.. _kubectl_object:  
  
< kubectl_object >  
---------------------------------------------------------
The kubectl_object maps the output of "kubectl get [RESOURCE_NAME] [--namespace NAMESPACE] [-o=yaml]"

Refer to https://kubernetes.io/docs/reference/kubectl/overview/ for more information on the resource types available, and whether or not they are namespaced.

Note that this object maps to the kubectl command, specifying output in YAML format

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - resource_name  
      - kube-def:EntityObjectResourceNameType (1..1)  
      - Specifies the name of the resource. Names are case-sensitive. For example a resource_name of "pods" equates to executing "kubectl get pods"  
    * - namespace  
      - oval-def:EntityObjectStringType (1..1)  
      - A number of resource names are namespaced, allowing for different configurations based on different namespaces. A list of namespaces may be retrieved using the "kubectl get namespaces" command, which may prove useful in local variables, to collect the list of namespaces for injection into other kubectl_object elements. When a namespace is provided, this object reflects the execution of the "kubectl get RESOURCE --namespace=NAMESPACE" command. If xsi:nil=true, either the resource_name does not require a namespace, or the results of the command will include all namespaces.  
    * - yaml_path  
      - oval-def:EntityObjectStringType (1..1)  
      - By default, only a subset of fields are returned from any given "kubectl get" command. These fields are selected based on the resource name used in the command and will vary from resource to resource. Using the output format capabilities of the "kubectl get" command, a full YAML output is available using the "-o=yaml" argument. Using the YAML path element here allows policy writers to provide a colon-delimited path to select specific resource properties. When a yaml_path is provided, this object reflects the execution of the "kubectl get RESOURCE [--namespace=NAMESPACE] -o=yaml" command, and implementations will be required to parse the output YAML and navigate the path specified, in order to find the appropriate values. Examples of yaml_path values can be as simple as "apiVersion", or more complicated such as "metadata:labels:kubernetes.io/bootstrapping"If xsi:nil=true, this indicates the output of the "kubectl get" command should use the default column formatting and the output should be parsed as such.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _kubectl_state:  
  
< kubectl_state >  
---------------------------------------------------------
The kubectl_state element defines information associated with results from the "kubectl get" command for the specified resource and potentially namespace. Refer to https://kubernetes.io/docs/reference/kubectl/overview/ for more information on the resource types available and whether or not they are namespaced.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - resource_name  
      - kube-def:EntityStateResourceNameType (0..1)  
      - The resource_name element defines the kind of resources retrieved via the "kubectl get" command.  
    * - namespace  
      - oval-def:EntityStateStringType (0..1)  
      - If a resource to be collected defines distinct values per defined namespace, the namespace element allows collectors to only retrieve resource information for that namespace. If xsi:nil=true, either the resource_name does not require a namespace, or the results of the command will include all namespaces.  
    * - yaml_path  
      - oval-def:EntityStateStringType (0..1)  
      - By default, only a subset of fields are returned from any given "kubectl get" command. These fields are selected based on the resource name used in the command and will vary from resource to resource. Using the output format capabilities of the "kubectl get" command, a full YAML output is available using the "-o=yaml" argument. Using the YAML path element here allows policy writers to provide a colon-delimited path to select specific resource properties.  
    * - result  
      - oval-def:EntityStateRecordType (0..1)  
      - The result entity specifies how to test objects in the result set of the specified kubectl output.  
  
______________
  
.. _kubepsp_test:  
  
< kubepsp_test >  
---------------------------------------------------------
The kubepsp_test is used to check various properties of a Kubernetes Pod Security Policy (PSP). It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a test and the optional state element specifies the data to check.

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
  
.. _kubepsp_object:  
  
< kubepsp_object >  
---------------------------------------------------------
The kubepsp_object maps the output of "kubectl get psp [PSP_NAME]" Refer to https://kubernetes.io/docs/concepts/policy/pod-security-policy/ for more information on pod security policies.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - psp_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies the name of the PSP. Names are case-sensitive. For example "kubectl get psp example1"  
    * - yaml_path  
      - oval-def:EntityObjectStringType (1..1)  
      - By default, only a subset of fields are returned from any given "kubectl get psp" command. Using the output format capabilities of the "kubectl get" command, a full YAML output is available using the "-o=yaml" argument. Using the YAML path element here allows policy writers to provide a colon-delimited path to select specific resource properties.When a yaml_path is provided, this object reflects the execution of the "kubectl get psp [PSP_NAME] -o=yaml" command, and implementations will be required to parse the output YAML and navigate the path specified, in order to find the appropriate values.Examples of yaml_path values can be as simple as "apiVersion", or more complicated such as "spec:runAsUser:rule". The yaml_path is noted as colon-delimited because many of the kubernetes YAML outputs contain periods for keys.If xsi:nil=true, this indicates the output of the "kubectl get psp" command should use the default column formatting and the output should be parsed as such.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _kubepsp_state:  
  
< kubepsp_state >  
---------------------------------------------------------
The kubepsp_state element defines information associated with results from the "kubectl get psp NAME" command for the specified resource and potentially namespace. Refer to https://kubernetes.io/docs/concepts/policy/pod-security-policy/ for more information on pod security policies.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - psp_name  
      - oval-def:EntityStateStringType (0..1)  
      - The psp_name element defines the name of the pod security policy.  
    * - yaml_path  
      - oval-def:EntityStateStringType (0..1)  
      - By default, only a subset of fields are returned from any given "kubectl get psp" command. Using the output format capabilities of the "kubectl get" command, a full YAML output is available using the "-o=yaml" argument. Using the YAML path element here allows policy writers to provide a colon-delimited path to select specific resource properties. When a yaml_path is provided, this object reflects the execution of the "kubectl get psp [PSP_NAME] -o=yaml" command, and implementations will be required to parse the output YAML and navigate the path specified, in order to find the appropriate values. Examples of yaml_path values can be as simple as "apiVersion", or more complicated such as "spec:runAsUser:rule"  
    * - result  
      - oval-def:EntityStateRecordType (0..1)  
      - The result entity specifies how to test objects in the result set of the specified "kubectl get psp" output.  
  
.. _EntityObjectResourceNameType:  
  
== EntityObjectResourceNameType ==  
---------------------------------------------------------
The EntityObjectResourceNameType restricts a string value to a set of allowed "kubectl get" resource names.

**Restricts:** oval-def:EntityObjectStringType

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
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateResourceNameType:  
  
== EntityStateResourceNameType ==  
---------------------------------------------------------
The EntityStateResourceNameType restricts a string value to a set of allowed "kubectl get" resource names.

**Restricts:** oval-def:EntityObjectStringType

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
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
