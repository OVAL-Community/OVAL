Open Vulnerability and Assessment Language: Core Results  
=========================================================
* Schema: Core Results  
* Version: 5.11.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the core schema for encoding Open Vulnerability and Assessment Language (OVAL) Results. Each of the elements, types, and attributes that make up the Core Results Schema are described in detail and should provide the information necessary to understand what each object represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between these objects is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

.. _oval_results:  
  
< oval_results >  
---------------------------------------------------------
The oval_results element is the root of an OVAL Results Document. Its purpose is to bind together the four major sections of a results document - generator, directives, oval_definitions, and results - which are the children of the root element. It must contain exactly one generator section, one directives section, and one results section.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - generator  
      - oval:GeneratorType (1..1)  
      - The required generator section provides information about when the results document was compiled and under what version.  
    * - directives  
      - oval-res:DefaultDirectivesType (1..1)  
      - The required directives section presents flags describing what information has been included in the results document. This element represents the default set of directives. These directives apply to all classes of definitions for which there is not a class specific set of directives.  
    * - class_directives  
      - oval-res:ClassDirectivesType (0..5)  
      - The optional class_directives section presents flags describing what information has been included in the results document for a specific OVAL Definition class. The directives for a particlar class override the default directives. Using OVAL Results class_directives, an OVAL Results document dealing with vulnerabilities might by default include only minimal information and then include full details for all vulnerability definitions that evaluated to true.  
    * - oval-def:oval_definitions  
      - n/a (0..1)  
      - The oval_definitions section is optional and dependent on the include_source_definitions attribute of the directives element. Its purpose is to provide an exact copy of the definitions evaluated for the results document.  
    * - results  
      - oval-res:ResultsType (1..1)  
      - The required results section holds all the results of the evaluated definitions.  
    * - ds:Signature  
      - n/a (0..1)  
      - The optional Signature element allows an XML Signature as defined by the W3C to be attached to the document. This allows authentication and data integrity to be provided to the user. Enveloped signatures are supported. More information about the official W3C Recommendation regarding XML digital signatures can be found at http://www.w3.org/TR/xmldsig-core/.  
  
______________
  
.. _DirectivesType:  
  
== DirectivesType ==  
---------------------------------------------------------
The DirectivesType complex type presents a set of flags that describe what information has been included in the results document. There are six possible results (true, false, unknown, error, not evaluated, and not applicable) for the evaluation of an OVAL Definition. The directives state which of these results are being reported in the results document.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - definition_true  
      - oval-res:DirectiveType (1..1)  
      -   
    * - definition_false  
      - oval-res:DirectiveType (1..1)  
      -   
    * - definition_unknown  
      - oval-res:DirectiveType (1..1)  
      -   
    * - definition_error  
      - oval-res:DirectiveType (1..1)  
      -   
    * - definition_not_evaluated  
      - oval-res:DirectiveType (1..1)  
      -   
    * - definition_not_applicable  
      - oval-res:DirectiveType (1..1)  
      -   
  
.. _DefaultDirectivesType:  
  
== DefaultDirectivesType ==  
---------------------------------------------------------
The DefaultDirectivesType complex type presents the default set of flags that describe what information has been included in the results document. See the definition of the oval-res:DirectivesType for more information.

The optional include_source_definitions attribute indicates whether or not the source OVAL Definitions document has been included in the results document. A value of false indicates that the source OVAL Definitions has not been included. By default the source document is included.

**Extends:** oval-res:DirectivesType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - include_source_definitions  
      - xsd:boolean (optional *default*='true')  
      - (No Description)  
  
  
.. _ClassDirectivesType:  
  
== ClassDirectivesType ==  
---------------------------------------------------------
The ClassDirectivesType complex type presents a set of flags that describe what information has been included in the results document for a specific OVAL Definition class. See the definition of the oval-res:DirectivesType for more information.

The required class attribute allows a set of directives to be specified for each supported OVAL Definition class (See the definition of the oval:ClassEnumeration for more information about the supported classes). A set of class specific directives overrides the default directives for the specified definition class. A given class may be specified once.

**Extends:** oval-res:DirectivesType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - class  
      - oval:ClassEnumeration (required)  
      - (No Description)  
  
  
.. _DirectiveType:  
  
== DirectiveType ==  
---------------------------------------------------------
An individual directive element determines whether or not a specific type of result is included in the results document. The required reported attribute controls this by providing a true or false for the specific directive. The optional content attribute controls how much information about the specific result is provided. For example, thin content would only be the id of the definition and the result, while a full content set would be the definition id with the result along with results for all the individual tests and extended definitions. Please refer to the oval-res:ContentEnumeration for details about the different content options.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - reported  
      - xsd:boolean (required)  
      - (No Description)  
    * - content  
      - oval-res:ContentEnumeration (optional *default*='full')  
      - (No Description)  
  
  
______________
  
.. _ResultsType:  
  
== ResultsType ==  
---------------------------------------------------------
The ResultsType complex type is a container for one or more system elements. Each system element defines the results associated with an individual system. Please refer to the description of SystemType for more information about an individual system element.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - system  
      - oval-res:SystemType (1..unbounded)  
      -   
  
.. _SystemType:  
  
== SystemType ==  
---------------------------------------------------------
The SystemType complex type holds the evaluation results of the definitions and tests, as well as a copy of the OVAL System Characteristics used to perform the evaluation. The definitions section holds the results of the definitions and the tests section holds the results of the tests. The oval_system_characteristics section is a copy of the System Characteristics document used to perform the evaluation of the OVAL Definitions.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - definitions  
      - oval-res:DefinitionsType (0..1)  
      -   
    * - tests  
      - oval-res:TestsType (0..1)  
      -   
    * - oval-sc:oval_system_characteristics  
      - n/a (1..1)  
      -   
  
______________
  
.. _DefinitionsType:  
  
== DefinitionsType ==  
---------------------------------------------------------
The DefinitionsType complex type is a container for one or more definition elements. Each definition element holds the result of the evaluation of an OVAL Definition. Please refer to the description of DefinitionType for more information about an individual definition element.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - definition  
      - oval-res:DefinitionType (1..unbounded)  
      -   
  
.. _DefinitionType:  
  
== DefinitionType ==  
---------------------------------------------------------
The DefinitionType complex type holds the result of the evaluation of an OVAL Definition. The message element holds an error message or some other string that the analysis engine wishes to pass along. In addition, the optional criteria element provides the results of the individual pieces of the criteria. Please refer to the description of the CriteriaType for more information.

The required definition_id attribute is the OVAL id of the definition.

The required version attribute is the specific version of the OVAL Definition used during analysis.

The optional variable_instance attribute is a unique id that differentiates each unique instance of a definition. Capabilities that use OVAL may reference the same definition multiple times and provide different variable values each time the definition is referenced. This will result in multiple instances of a definition being included in the OVAL Results document (definitions that do not use variables can only have one unique instance). The inclusion of this unique instance identifier allows the OVAL Results document to associate the correct objects and items for each combination of supplied values.

The optional class attribute ...

The required result attribute holds the result of the evaluation. Please refer to the description of the ResultEnumeration for details about the different result values.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - definition_id  
      - oval:DefinitionIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - variable_instance  
      - xsd:nonNegativeInteger (optional *default*='1')  
      - (No Description)  
    * - class  
      - oval:ClassEnumeration (optional)  
      - (No Description)  
    * - result  
      - oval-res:ResultEnumeration (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - message  
      - oval:MessageType (0..unbounded)  
      -   
    * - criteria  
      - oval-res:CriteriaType (0..1)  
      -   
  
.. _CriteriaType:  
  
== CriteriaType ==  
---------------------------------------------------------
The CriteriaType complex type describes the high level container for all the tests and represents the meat of the definition. Each criteria can contain other criteria elements in a recursive structure allowing complex logical trees to be constructed. Each referenced test is represented by a criterion element. Please refer to the description of the CriterionType for more information about and individual criterion element. The optional extend_definition element allows existing definitions to be included in the criteria. Refer to the description of the ExtendDefinitionType for more information.

The required operator attribute provides the logical operator that binds the different statements inside a criteria together. The optional negate attribute signifies that the result of an extended definition should be negated during analysis. For example, consider a definition that evaluates TRUE if a certain software is installed. By negating the definition, it now evaluates to TRUE if the software is NOT installed. The required result attribute holds the result of the evaluation of the criteria. Note that this would be after any negation operation has been applied. Please refer to the description of the ResultEnumeration for details about the different result values.

The optional applicability_check attribute provides a Boolean flag that when true indicates that the criteria is being used to determine whether the OVAL Definition applies to a given system.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - applicability_check  
      - xsd:boolean (optional)  
      - (No Description)  
    * - operator  
      - oval:OperatorEnumeration (required)  
      - (No Description)  
    * - negate  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
    * - result  
      - oval-res:ResultEnumeration (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - criteria  
      - oval-res:CriteriaType (1..unbounded)  
      -   
    * - criterion  
      - oval-res:CriterionType (1..unbounded)  
      -   
    * - extend_definition  
      - oval-res:ExtendDefinitionType (1..unbounded)  
      -   
  
.. _CriterionType:  
  
== CriterionType ==  
---------------------------------------------------------
The CriterionType complex type identifies a specific test that is included in the definition's criteria.

The optional applicability_check attribute provides a Boolean flag that when true indicates that the criterion is being used to determine whether the OVAL Definition applies to a given system.

The required test_ref attribute is the actual id of the included test.

The required version attribute is the specific version of the OVAL Test used during analysis.

The optional variable_instance attribute differentiates between unique instances of a test. This can happen when a test includes a variable reference and different variable values are used by different definitions.

The optional negate attribute signifies that the result of an individual test should be negated during analysis. For example, consider a test that evaluates to TRUE if a specific patch is installed. By negating this test, it now evaluates to TRUE if the patch is NOT installed.

The required result attribute holds the result of the evaluation. Please refer to the description of the ResultEnumeration for details about the different result values.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - applicability_check  
      - xsd:boolean (optional)  
      - (No Description)  
    * - test_ref  
      - oval:TestIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - variable_instance  
      - xsd:nonNegativeInteger (optional *default*='1')  
      - (No Description)  
    * - negate  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
    * - result  
      - oval-res:ResultEnumeration (required)  
      - (No Description)  
  
  
.. _ExtendDefinitionType:  
  
== ExtendDefinitionType ==  
---------------------------------------------------------
The ExtendDefinitionType complex type identifies a specific definition that has been extended by the criteria.

The optional applicability_check attribute provides a Boolean flag that when true indicates that the extend_definition is being used to determine whether the OVAL Definition applies to a given system.

The required definition_ref attribute is the actual id of the extended definition.

The required version attribute is the specific version of the OVAL Definition used during analysis.

The optional variable_instance attribute is a unique id that differentiates each unique instance of a definition. Capabilities that use OVAL may reference the same definition multiple times and provide different variable values each time the definition is referenced. This will result in multiple instances of a definition being included in the OVAL Results document (definitions that do not use variables can only have one unique instance). The inclusion of this unique instance identifier allows the OVAL Results document to associate the correct objects and items for each combination of supplied values.

The optional negate attribute signifies that the result of an extended definition should be negated during analysis. For example, consider a definition that evaluates TRUE if certain software is installed. By negating the definition, it now evaluates to TRUE if the software is NOT installed.

The required result attribute holds the result of the evaluation. Please refer to the description of the ResultEnumeration for details about the different result values.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - applicability_check  
      - xsd:boolean (optional)  
      - (No Description)  
    * - definition_ref  
      - oval:DefinitionIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - variable_instance  
      - xsd:nonNegativeInteger (optional *default*='1')  
      - (No Description)  
    * - negate  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
    * - result  
      - oval-res:ResultEnumeration (required)  
      - (No Description)  
  
  
______________
  
.. _TestsType:  
  
== TestsType ==  
---------------------------------------------------------
The TestsType complex type is a container for one or more test elements. Each test element holds the result of the evaluation of an OVAL Test. Please refer to the description of TestType for more information about an individual test element.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - test  
      - oval-res:TestType (1..unbounded)  
      -   
  
.. _TestType:  
  
== TestType ==  
---------------------------------------------------------
The TestType complex type provides a reference to every item that matched the object section of the original test as well as providing an overall test result based on those items. The optional message element holds an error message or some other string that the analysis engine wishes to pass along. The optional tested_variable elements hold the value of each variable used by the test during evaluation. This includes the values used in both OVAL Objects and OVAL States. If a variable represents a collection of values, then multiple tested_variable elements would exist with the same variable_id attribute. Please refer to the description of oval-res:TestedVariableType for more information.

The required test_id attribute identifies the test and must conform to the format specified by the oval:TestIDPattern simple type.

The required version attribute is the specific version of the OVAL Test used during analysis.

The optional variable_instance attribute differentiates between unique instances of a test. This can happen when a test includes a variable reference and different values for that variable are used by different definitions.

The check_existence, check, and state_operator attributes reflect the values that were specified on the test as it was evaluated. These evaluation control attributes are copied into the OVAL Results file to enable post processing of results documents. More information on each of these attributes is provided with the definition of the oval-def:TestType.

The required result attribute holds the result of the evaluation after all referenced items have been examined and the evaluation control attributes have been applied. Please refer to the description of the oval-res:ResultEnumeration for details about the different result values. In general, the overall result of an OVAL Test is determined by combining the results of each matching item based first on the check_existence attribute, then the check attribute, and finally the state_operator attribute.

The following section provides a more detailed description of how the result for an OVAL Test is determined when using an OVAL System Characteristics document. An OVAL System Characteristics document can contain an optional collected_objects section. When the collected_objects section is present the following rules specify how the overall result for an OVAL Test is determined: When an oval-sc:collected_objects/oval-sc:object with an id that matches the OVAL Object id that is referenced by the OVAL Test is not found, the result for the OVAL Test must be "unknown". When the flag attribute of the corresponding oval-sc:collected_objects/oval-sc:object is "error", the result of the OVAL Test must be "error". When the flag attribute of the corresponding oval-sc:collected_objects/oval-sc:object is "not collected", the result of the OVAL Test must be "unknown". When the flag attribute of the corresponding oval-sc:collected_objects/oval-sc:object is "not applicable", the result of the OVAL Test must be "not applicable". When the flag attribute of the corresponding oval-sc:collected_objects/oval-sc:object is "does not exist", the result of the OVAL Test is determined by examining the check_existence attribute's value and if the check_existence attribute is "none_exist" or "any_exist" the OVAL Test should evaluate to "true", for all other values of the check_existence attribute the OVAL Test should evaluate to "false". The check and state_operator attributes do not need to be considered in this condition. When the flag attribute of the corresponding oval-sc:collected_objects/oval-sc:object is "complete", the result of the OVAL Test is determined by first evaluating the check_existence attribute specified by the OVAL Test and then evaluating the check and state_operator attributes. The check attribute only needs to be considered if the result of evaluating the check_existence attribute is "true". When the flag attribute of the corresponding oval-sc:collected_objects/oval-sc:object is "incomplete", the result of the OVAL Test must be "unknown" with the following exceptions: 1) When the check_existence attribute of the OVAL Test is set to "none_exist" and the collected object has 1 or more item references with a status of "exists", a result of "false" must be reported; 2) When the check_existence attribute of the OVAL Test is set to "only_one_exists", the collected object has more than 1 item reference with a status of "exists", a result of "false" must be reported; 3) If after evaluating the check_existence attribute a non "true" result has not been determined, the check attribute must be considered as follows: 3a) If the check attribute evaluation results in "false", then the OVAL Test result must be "false"; 3b) If the check attribute is set to "at_least_one_satisfies" and its evaluation results in "true", the OVAL Test result must be "true". When the collected_objects section is not present in the OVAL System Characteristics document, the evaluation engine must search the system characteristics for all Items that match the OVAL Object referenced by the OVAL Test. The set of matching OVAL Items is then evaluated first based on the check_existence attribute, then the check attribute, and finally the state_operator attribute.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - test_id  
      - oval:TestIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - variable_instance  
      - xsd:nonNegativeInteger (optional *default*='1')  
      - (No Description)  
    * - check_existence  
      - oval:ExistenceEnumeration (optional *default*='at_least_one_exists')  
      - (No Description)  
    * - check  
      - oval:CheckEnumeration (required)  
      - (No Description)  
    * - state_operator  
      - oval:OperatorEnumeration (optional *default*='AND')  
      - (No Description)  
    * - result  
      - oval-res:ResultEnumeration (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - message  
      - oval:MessageType (0..unbounded)  
      -   
    * - tested_item  
      - oval-res:TestedItemType (0..unbounded)  
      -   
    * - tested_variable  
      - oval-res:TestedVariableType (0..unbounded)  
      -   
  
.. _TestedItemType:  
  
== TestedItemType ==  
---------------------------------------------------------
The TestedItemType complex type holds a reference to a system characteristic item that matched the object specified in a test. Details of the item can be found in the oval_system_characteristics section of the OVAL Results document by using the required item_id. The optional message element holds an error message or some other message that the analysis engine wishes to pass along. The required result attribute holds the result of the evaluation of the individual item as it relates to the state specified by the test. If the test did not include a state reference then the result attribute will be set to 'not evaluated'. Please refer to the description of the ResultEnumeration for details about the different result values.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - item_id  
      - oval:ItemIDPattern (required)  
      - (No Description)  
    * - result  
      - oval-res:ResultEnumeration (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - message  
      - oval:MessageType (0..unbounded)  
      -   
  
.. _TestedVariableType:  
  
== TestedVariableType ==  
---------------------------------------------------------
The TestedVariableType complex type holds the value of a variable used during the evaluation of a test. Of special importance are the values of any external variables used since these values are not captured in either the definition or system characteristic documents. If a variable is represented by a collection of values, then multiple elements of TestedVariableType, each with the same variable_id attribute, would exist. The required variable_id attribute is the unique id of the variable that was used.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - variable_id  
      - oval:VariableIDPattern (required)  
      - (No Description)  
  
  
**Simple Content:** xsd:anySimpleType

______________
  
.. _ContentEnumeration:  
  
-- ContentEnumeration --  
---------------------------------------------------------
The ContentEnumeration defines the valid values for the directives controlling the amount of expected depth found in the results document. Each directive specified at the top of an OVAL Results document defines how much information should be included in the document for each of the different result types. The amount of content that is expected with each value is defined by Schematron statements embedded throughout the OVAL Results Schema. Currently, the enumeration defines two values: thin and full. Please refer to the documentation of each individual value of this enumeration for more information about what each means.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - thin  
      - | A value of 'thin' means only the minimal amount of information will be provided. This is the id associated with an evaluated OVAL Definition and the result of the evaluation. The criteria child element of a definition should not be present when providing thin results. In addition, system characteristic information for the objects used by the given definition should not be presented.  
    * - full  
      - | A value of 'full' means that very detailed information will be provided allowing in-depth reports to be generated from the results. In addition to the results of the evaluated definition, the results of all extended definitions and tests included in the criteria as well as the actual information collected off the system must be presented.  
  
.. _ResultEnumeration:  
  
-- ResultEnumeration --  
---------------------------------------------------------
The ResultEnumeration defines the acceptable result values for the DefinitionType, CriteriaType, CriterionType, ExtendDefinitionType, TestType, and TestedItemType constructs.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - true  
      - | When evaluating a definition or test, a result value of 'true' means that the characteristics being evaluated match the information represented in the system characteristic document. When evaluating a tested_item, and a state exists, a result value of 'true' indicates that the item matches the state.  
    * - false  
      - | When evaluating a definition or test, a result value of 'false' means that the characteristics being evaluated do not match the information represented in the system characteristic document. When evaluating a tested_item, and a state exists, a result value of 'false' indicates that the item does not match the state.  
    * - unknown  
      - | When evaluating a definition or test, a result value of 'unknown' means that the characteristics being evaluated cannot be found in the system characteristic document (or the characteristics can be found but collected object flag is 'not collected'). For example, assume that a definition tests a file, but data pertaining to that file cannot be found and is not recorded in the System Characteristics document. The lack of an item (in the system_data section) for this file in the System Characteristics document means that no attempt was made to collect information about the file. In this situation, there is no way of knowing what the result would be if the file was collected. Note that finding a collected_object element in the system characteristic document is not the same as finding a matching element of the system. When evaluating an OVAL Test, the lack of a matching object on a system (for example, file not found) does not cause a result of unknown since an test considers both the state of an item and its existence. In this case the test result would be based on the existence check specified by the check_existence attribute on the test. When evaluating a tested_item, and a state exists, a result value of 'unknown' indicates that it could not be determined whether or not the item and state match. For example, if a registry_object with a hive equal to HKEY_LOCAL_MACHINE, a key with the xsi:nil attribute set to 'true', and a name with the xsi:nil attribute set to 'true' was collected and compared against a registry_state with key entity equal to 'SOFTWARE', the tested_item result would be 'unknown' because an assertion of whether or not the item matches the state could not be determined since the key entity of the item was not collected.  
    * - error  
      - | When evaluating a definition or test, a result value of 'error' means that the characteristics being evaluated exist in the system characteristic document but there was an error either collecting information or in performing analysis. For example, if there was an error returned by an api when trying to determine if an object exists on a system. Another example would be: xsi:nil might be set on an object entity, but then the entity is compared to a state entity with a value, thus producing an error. When evaluating a tested_item, and a state exists, a result value of 'error' indicates that there was either an error collecting the item or there was an error analyzing the item against the state. For example, a tested_item will receive a result value of 'error' if an attempt is made to compare a state entity against an item entity that has a status of 'error'.  
    * - not evaluated  
      - | When evaluating a definition or test, a result value of 'not evaluated' means that a choice was made not to evaluate the given definition or test. The actual result is not known since if evaluation had occurred the result could have been either true or false. When evaluating a tested_item, a result value of 'not evaluated' indicates that a state was not specified and is equivalent to an existence check.  
    * - not applicable  
      - | When evaluating a definition or test, a result value of 'not applicable' means that the definition or test being evaluated is not valid on the given platform. For example, trying to collect Linux RPM information on a Windows system is not possible and so a result of not applicable is used. Another example would be in trying to collect RPM information on a linux system that does not have the RPM packaging system installed.  
  
