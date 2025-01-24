Open Vulnerability and Assessment Language: Core Definition  
=========================================================
* Schema: Core Definition  
* Version: 6.0  
* Release Date: 1/24/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the core schema for encoding Open Vulnerability and Assessment Language (OVAL) Definitions. Some of the objects defined here are extended and enhanced by individual component schemas, which are described in separate documents. Each of the elements, types, and attributes that make up the Core Definition Schema are described in detail and should provide the information necessary to understand what each represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between these objects is not outlined here.

The OVAL Schema is maintained by OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

______________
  
.. _oval_definitions:  
  
< oval_definitions >  
---------------------------------------------------------
The oval_definitions element is the root of an OVAL Definition Document. Its purpose is to bind together the major sections of a document - generator, definitions, tests, objects, states, and variables - which are the children of the root element.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - generator  
      - oval:GeneratorType (1..1)  
      - The required generator section provides information about when the definition file was compiled and under what version.  
    * - definitions  
      - oval-def:DefinitionsType (0..1)  
      - The optional definitions section contains 1 or more definitions.  
    * - tests  
      - oval-def:TestsType (0..1)  
      - The optional tests section contains 1 or more tests.  
    * - objects  
      - oval-def:ObjectsType (0..1)  
      - The optional objects section contains 1 or more objects.  
    * - states  
      - oval-def:StatesType (0..1)  
      - The optional states section contains 1 or more states.  
    * - variables  
      - oval-def:VariablesType (0..1)  
      - The optional variables section contains 1 or more variables.  
    * - ds:Signature  
      - n/a (0..1)  
      - The optional Signature element allows an XML Signature as defined by the W3C to be attached to the document. This allows authentication and data integrity to be provided to the user. Enveloped signatures are supported. More information about the official W3C Recommendation regarding XML digital signatures can be found at http://www.w3.org/TR/xmldsig-core/.  
  
______________
  
.. _DefinitionsType:  
  
== DefinitionsType ==  
---------------------------------------------------------
The DefinitionsType complex type is a container for one or more definition elements. Each definition element describes a single OVAL Definition. Please refer to the description of the DefinitionType for more information about an individual definition.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:definition  
      - n/a (0..unbounded)  
      -   
    * - oval-def:encapsulated_definition  
      - n/a (0..unbounded)  
      -   
  
.. _definition:  
  
< definition >  
---------------------------------------------------------
The definition element represents the globally defined element of type DefinitionType. For more information please see the documentation on the DefinitionType.

oval-def:DefinitionType

.. _DefinitionType:  
  
== DefinitionType ==  
---------------------------------------------------------
The DefinitionType defines a single OVAL Definition. A definition is the key structure in OVAL. It is analogous to the logical sentence or proposition: if a computer's state matches the configuration parameters laid out in the criteria, then that computer exhibits the state described. The DefinitionType contains a section for various metadata related elements that describe the definition. This includes a description, version, affected system types, and reference information. The notes section of a definition should be used to hold information that might be helpful to someone examining the technical aspects of the definition. For example, why certain tests have been included in the criteria, or maybe a link to where further information can be found. The DefinitionType also (unless the definition is deprecated) contains a criteria child element that joins individual tests together with a logical operator to specify the specific computer state being described.

The required id attribute is the OVAL-ID of the Definition. The form of an OVAL-ID must follow the specific format described by the oval:DefinitionIDPattern. The required version attribute holds the current version of the definition. Versions are integers, starting at 1 and incrementing every time a definition is modified. The required class attribute indicates the specific class to which the definition belongs. The class gives a hint to a user so they can know what the definition writer is trying to say. See the definition of oval-def:ClassEnumeration for more information about the different valid classes. The optional deprecated attribute signifies that an id is no longer to be used or referenced but the information has been kept around for historic purposes.

When the deprecated attribute is set to true, the definition is considered to be deprecated. The criteria child element of a deprecated definition is optional. If a deprecated definition does not contain a criteria child element, the definition must evaluate to "not evaluated". If a deprecated definition contains a criteria child element, an interpreter should evaluate the definition as if it were not deprecated, but an interpreter may evaluate the definition to "not evaluated".

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - id  
      - oval:DefinitionIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - class  
      - oval:ClassEnumeration (required)  
      - (No Description)  
    * - deprecated  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ds:Signature  
      - n/a (0..1)  
      -   
    * - metadata  
      - oval-def:MetadataType (1..1)  
      -   
    * - oval:notes  
      - n/a (0..1)  
      -   
    * - criteria  
      - oval-def:CriteriaType (0..1)  
      -   
  
.. _encapsulated_definition:  
  
< encapsulated_definition >  
---------------------------------------------------------
The encapsulated_definition element represents the globally defined element of type EncapsulatedDefinitionType. For more information please see the documentation on the EncapsulatedDefinitionType.

oval-def:EncapsulatedDefinitionType

.. _EncapsulatedDefinitionType:  
  
== EncapsulatedDefinitionType ==  
---------------------------------------------------------
The EncapsulatedDefinitionType defines a single OVAL Definition. It differs from a 'DefinitionType' in that all other OVAL entities used by the definition are contained in the definition. An encapsulated_definition is the a key structure in OVAL. It is analogous to the logical sentence or proposition: if a computer's state matches the configuration parameters laid out in the criteria, then that computer exhibits the state described. The EncapsulatedDefinitionType contains a section for various metadata related elements that describe the definition. This includes a description, version, affected system types, and reference information. The notes section of a definition should be used to hold information that might be helpful to someone examining the technical aspects of the definition. For example, why certain tests have been included in the criteria, or maybe a link to where further information can be found. The EncapsulatedDefinitionType also (unless the definition is deprecated) contains a criteria child element that joins individual tests together with a logical operator to specify the specific computer state being described.

The required id attribute is the OVAL-ID of the EncapuslatedDefinition. The form of an OVAL-ID must follow the specific format described by the oval:DefinitionIDPattern. The required version attribute holds the current version of the encapsulated definition. Versions are integers, starting at 1 and incrementing every time a definition is modified. The required class attribute indicates the specific class to which the definition belongs. The class gives a hint to a user so they can know what the encapsulated definition writer is trying to say. See the definition of oval-def:ClassEnumeration for more information about the different valid classes. The optional deprecated attribute signifies that an id is no longer to be used or referenced but the information has been kept around for historic purposes.

When the deprecated attribute is set to true, the encapsulated definition is considered to be deprecated. The criteria child element of a deprecated encapsulated definition is optional. If a deprecated encapsulated definition does not contain a criteria child element, the encapsulated definition must evaluate to "not evaluated". If a deprecated encapsulated definition contains a criteria child element, an interpreter should evaluate the encapsulated definition as if it were not deprecated, but an interpreter may evaluate the encapsulated definition to "not evaluated".

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - id  
      - oval:DefinitionIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - class  
      - oval:ClassEnumeration (required)  
      - (No Description)  
    * - deprecated  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ds:Signature  
      - n/a (0..1)  
      -   
    * - metadata  
      - oval-def:MetadataType (1..1)  
      -   
    * - oval:notes  
      - n/a (0..1)  
      -   
    * - criteria  
      - oval-def:CriteriaType (0..1)  
      -   
    * - tests  
      - oval-def:TestsType (0..1)  
      - The optional tests section contains 1 or more tests.  
    * - objects  
      - oval-def:ObjectsType (0..1)  
      - The optional objects section contains 1 or more objects.  
    * - states  
      - oval-def:StatesType (0..1)  
      - The optional states section contains 1 or more states.  
    * - variables  
      - oval-def:VariablesType (0..1)  
      - The optional variables section contains 1 or more variables.  
  
.. _MetadataType:  
  
== MetadataType ==  
---------------------------------------------------------
The MetadataType complex type contains all the metadata available to an OVAL Definition. This metadata is for informational purposes only and is not part of the criteria used to evaluate machine state. The required title child element holds a short string that is used to quickly identify the definition to a human user. The affected metadata item contains information about the system(s) for which the definition has been written. Remember that this is just metadata and not part of the criteria. Please refer to the AffectedType description for more information. The required description element contains a textual description of the configuration state being addressed by the OVAL Definition. In the case of a definition from the vulnerability class, the reference is usually the Common Vulnerability and Exposures (CVE) Identifier, and this description field corresponds with the CVE description.

Additional metadata is also allowed although it is not part of the official OVAL Schema. Individual organizations can place metadata items that they feel are important and these will be skipped during the validation. All OVAL really cares about is that the stated metadata items are there.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - title  
      - xsd:string (1..1)  
      -   
    * - affected  
      - oval-def:AffectedType (0..unbounded)  
      -   
    * - reference  
      - oval-def:ReferenceType (0..unbounded)  
      -   
    * - description  
      - xsd:string (1..1)  
      -   
    * - xsd:any  
      - n/a (0..unbounded)  
      -   
  
.. _AffectedType:  
  
== AffectedType ==  
---------------------------------------------------------
Each OVAL Definition is written to evaluate a certain type of system(s). The family, platform(s), and product(s) of this target are described by the AffectedType whose main purpose is to provide hints for tools using OVAL Definitions. For instance, to help a reporting tool only use Windows definitions, or to preselect only Red Hat definitions to be evaluated. Note, the inclusion of a particular platform or product does not mean the definition is physically checking for the existence of the platform or product. For the actual test to be performed, the correct test must still be included in the definition's criteria section.

The AffectedType complex type details the specific system, application, subsystem, library, etc. for which a definition has been written. If a definition is not tied to a specific product, then this element should not be included. The absence of the platform or product element can be thought of as definition applying to all platforms or products. The inclusion of a particular platform or product does not mean the definition is physically checking for the existence of the platform or product. For the actual test to be performed, the correct test must still be included in the definition's criteria section. To increase the utility of this element, care should be taken when assigning and using strings for product names. The schema places no restrictions on the values that can be assigned, potentially leading to many different representations of the same value. For example, 'Internet Explorer' and 'IE' might be used to refer to the same product. The current convention is to fully spell out all terms, and avoid the use of abbreviations at all costs.

Please note that the AffectedType will change in future versions of OVAL in order to support the Common Platform Enumeration (CPE).

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - family  
      - oval:FamilyEnumeration (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - platform  
      - xsd:string (0..unbounded)  
      -   
    * - product  
      - xsd:string (0..unbounded)  
      -   
  
.. _ReferenceType:  
  
== ReferenceType ==  
---------------------------------------------------------
The ReferenceType complex type links the OVAL Definition to a definitive external reference. For example, CVE Identifiers are used for referencing vulnerabilities. The intended purpose for this reference is to link the definition to a variety of other sources that address the same issue being specified by the OVAL Definition.

The required source attribute specifies where the reference is coming from. In other words, it identifies the reference repository being used. The required ref_id attribute is the external id of the reference. The optional ref_url attribute is the URL to the reference.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - source  
      - xsd:string (required)  
      - (No Description)  
    * - ref_id  
      - xsd:string (required)  
      - (No Description)  
    * - ref_url  
      - xsd:anyURI (optional)  
      - (No Description)  
  
  
.. _CriteriaType:  
  
== CriteriaType ==  
---------------------------------------------------------
The CriteriaType complex type describes a container for a set of sub criteria, criteria, criterion, or extend_definition elements allowing complex logical trees to be constructed. Each referenced test is represented by a criterion element. Please refer to the description of the CriterionType for more information about and individual criterion element. The optional extend_definition element allows existing definitions to be included in the criteria. Refer to the description of the ExtendDefinitionType for more information.

The required operator attribute provides the logical operator that binds the different statements inside a criteria together. The optional negate attribute signifies that the result of the criteria as a whole should be negated during analysis. For example, consider a criteria that evaluates to TRUE if certain software is installed. By negating this test, it now evaluates to TRUE if the software is NOT installed. The optional comment attribute provides a short description of the criteria.

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
      - oval:OperatorEnumeration (optional *default*='AND')  
      - (No Description)  
    * - negate  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
    * - comment  
      - oval:NonEmptyStringType (optional)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - criteria  
      - oval-def:CriteriaType (1..unbounded)  
      -   
    * - criterion  
      - oval-def:CriterionType (1..unbounded)  
      -   
    * - extend_definition  
      - oval-def:ExtendDefinitionType (1..unbounded)  
      -   
  
.. _CriterionType:  
  
== CriterionType ==  
---------------------------------------------------------
The CriterionType complex type identifies a specific test to be included in the definition's criteria.

The required test_ref attribute is the actual id of the test being referenced. The optional negate attribute signifies that the result of an individual test should be negated during analysis. For example, consider a test that evaluates to TRUE if a specific patch is installed. By negating this test, it now evaluates to TRUE if the patch is NOT installed. The optional comment attribute provides a short description of the specified test and should mirror the comment attribute of the actual test.

The optional applicability_check attribute provides a Boolean flag that when true indicates that the criterion is being used to determine whether the OVAL Definition applies to a given system.

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
    * - negate  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
    * - comment  
      - oval:NonEmptyStringType (optional)  
      - (No Description)  
  
  
.. _ExtendDefinitionType:  
  
== ExtendDefinitionType ==  
---------------------------------------------------------
The ExtendDefinitionType complex type allows existing definitions to be extended by another definition. This works by evaluating the extended definition and then using the result within the logical context of the extending definition.

The required definition_ref attribute is the actual id of the definition being extended. The optional negate attribute signifies that the result of an extended definition should be negated during analysis. For example, consider a definition that evaluates TRUE if certainsoftware is installed. By negating the definition, it now evaluates to TRUE if the software is NOT installed. The optional comment attribute provides a short description of the specified definition and should mirror the title metadata of the extended definition.

The optional applicability_check attribute provides a Boolean flag that when true indicates that the extend_definition is being used to determine whether the OVAL Definition applies to a given system.

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
    * - negate  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
    * - comment  
      - oval:NonEmptyStringType (optional)  
      - (No Description)  
  
  
______________
  
.. _TestsType:  
  
== TestsType ==  
---------------------------------------------------------
The TestsType complex type is a container for one or more test child elements. Each test element describes a single OVAL Test. Please refer to the description of the TestType for more information about an individual test.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:test  
      - n/a (1..unbounded)  
      -   
  
.. _test:  
  
< test >  
---------------------------------------------------------
The test element is an abstract element that is meant to be extended (via substitution groups) by the individual tests found in the component schemas. An OVAL Test is used to compare an object(s) against a defined state. An actual test element is not valid. The use of this abstract class simplifies the OVAL schema by allowing individual tests to inherit the optional notes child element, and the id and comment attributes from the base TestType. Please refer to the description of the TestType complex type for more information.

oval-def:TestType

.. _TestType:  
  
== TestType ==  
---------------------------------------------------------
The base type of every test includes an optional notes element and several attributes. The notes section of a test should be used to hold information that might be helpful to someone examining the technical aspects of the test. For example, why certain values have been used by the test, or maybe a link to where further information can be found. Please refer to the description of the NotesType complex type for more information about the notes element. The required comment attribute provides a short description of the test. The optional deprecated attribute signifies that an id is no longer to be used or referenced but the information has been kept around for historic purposes.

The required id attribute uniquely identifies each test, and must conform to the format specified by the TestIdPattern simple type. The required version attribute holds the current version of the test. Versions are integers, starting at 1 and incrementing every time a test is modified.

The optional check_existence attribute specifies how many items in the set defined by the OVAL Object must exist for the test to evaluate to true. The default value for this attribute is 'at_least_one_exists' indicating that by default the test may evaluate to true if at least one item defined by the OVAL Object exists on the system. For example, if a value of 'all_exist' is given, every item defined by the OVAL Object must exist on the system for the test to evaluate to true. If the OVAL Object uses a variable reference, then every value of that variable must exist. Note that a pattern match defines a unique set of matching items found on a system. So when check_existence = 'all_exist' and a regex matches anything on a system the test will evaluate to true (since all matching objects on the system were found on the system). When check_existence = 'all_exist' and a regex does not match anything on a system the test will evaluate to false.

The required check attribute specifies how many items in the set defined by the OVAL Object (ignoring items with a status of Does Not Exist) must satisfy the state requirements. For example, should the test check that all matching files have a specified version or that at least one file has the specified version? The valid check values are explained in the description of the CheckEnumeration simple type. Note that if the test does not contain any references to OVAL States, then the check attribute has no meaning and can be ignored during evaluation.

An OVAL Test evaluates to true if both the check_existence and check attributes are satisfied during evaluation. The evaluation result for a test is determined by first evaluating the check_existence attribute. If the result of evaluating the check_existence attribute is true then the check attribute is evaluated. An interpreter may choose to always evaluate both the check_existence and the check attributes, but once the check_existence attribute evaluation has resulted in false the overall test result after evaluating the check attribute will not be affected.

The optional state_operator attribute provides the logical operator that combines the evaluation results from each referenced state on a per item basis. Each matching item is compared to each referenced state. The result of comparing each state to a single item is combined based on the specified state_operator value to determine one result for each item. Finally, the results for each item are combined based on the specified check value. Note that if the test does not contain any references to OVAL States, then the state_operator attribute has no meaning and can be ignored during evaluation. Referencing multiple states in one test allows ranges of possible values to be expressed. For example, one state can check that a value greater than 8 is found and another state can check that a value of less than 16 is found. In this example the referenced states are combined with a state_operator = 'AND' indicating that the conditions of all referenced states must be satisfied and that the value must be between 8 AND 16. The valid state_operation values are explained in the description of the OperatorEnumeration simple type.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - id  
      - oval:TestIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
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
    * - comment  
      - oval:NonEmptyStringType (required)  
      - (No Description)  
    * - deprecated  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ds:Signature  
      - n/a (0..1)  
      -   
    * - oval:notes  
      - n/a (0..1)  
      -   
  
.. _ObjectRefType:  
  
== ObjectRefType ==  
---------------------------------------------------------
The ObjectRefType complex type defines an object reference to be used by OVAL Tests that are defined in the component schemas. The required object_ref attribute specifies the id of the OVAL Object being referenced.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - object_ref  
      - oval:ObjectIDPattern (required)  
      - (No Description)  
  
  
.. _StateRefType:  
  
== StateRefType ==  
---------------------------------------------------------
The StateRefType complex type defines a state reference to be used by OVAL Tests that are defined in the component schemas. The required state_ref attribute specifies the id of the OVAL State being referenced.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - state_ref  
      - oval:StateIDPattern (required)  
      - (No Description)  
  
  
______________
  
.. _ObjectsType:  
  
== ObjectsType ==  
---------------------------------------------------------
The ObjectsType complex type is a container for one or more object child elements. Each object element provides details that define a unique set of matching items to be used by an OVAL Test. Please refer to the description of the object element for more information about an individual object.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:object  
      - n/a (1..unbounded)  
      -   
  
.. _object:  
  
< object >  
---------------------------------------------------------
The object element is an abstract element that is meant to be extended (via substitution groups) by the objects found in the component schemas. An actual object element is not valid. The use of this abstract element simplifies the OVAL schema by allowing individual objects to inherit any common elements and attributes from the base ObjectType. Please refer to the description of the ObjectType complex type for more information.

An object is used to identify a set of items to collect. The author of a schema object must define sufficient object entities to allow a user to identify a unique item to be collected.

A simple object typically results in a single file, process, etc being identified. But through the use of pattern matches, sets, and variables, multiple matching items can be identified. The set of items matching the object can then be used by an OVAL test and compared against an OVAL state.

oval-def:ObjectType

.. _ObjectType:  
  
== ObjectType ==  
---------------------------------------------------------
The base type of every object includes an optional notes element. The notes element of an object should be used to hold information that might be helpful to someone examining the technical aspects of the object. For example, why certain values have been used, or maybe a link to where further information can be found. Please refer to the description of the NotesType complex type for more information about the notes element.

The required id attribute uniquely identifies each object, and must conform to the format specified by the ObjectIdPattern simple type. The required version attribute holds the current version of the object element. Versions are integers, starting at 1 and incrementing every time an object is modified. The optional comment attribute provides a short description of the object. The optional deprecated attribute signifies that an id is no longer to be used or referenced but the information has been kept around for historic purposes.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - id  
      - oval:ObjectIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - comment  
      - oval:NonEmptyStringType (optional)  
      - (No Description)  
    * - deprecated  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ds:Signature  
      - n/a (0..1)  
      -   
    * - oval:notes  
      - n/a (0..1)  
      -   
  
.. _set:  
  
< set >  
---------------------------------------------------------
The set element enables complex objects to be described. It is a recursive element in that each set element can contain additional set elements as children. Each set element defines characteristics that produce a matching unique set of items. This set of items is defined by one or two references to OVAL Objects that provide the criteria needed to collect a set of system items. These items can have one or more filters applied to allow a subset of those items to be specifically included or excluded from the overall set of items.

The set element's object_reference refers to an existing OVAL Object. The set element's filter element provides a reference to an existing OVAL State and includes an optional action attribute. The filter's action attribute allows the author to specify whether matching items should be included or excluded from the overall set. The default filter action is to exclude all matching items. In other words, the filter can be thought of filtering items out by default.

Each filter is applied to the items identified by each OVAL Object before the set_operator is applied. For example, if an object_reference points to an OVAL Object that identifies every file in a certain directory, a filter might be set up to limit the object set to only those files with a size less than 10 KB. If multiple filters are provided, then each filter is applied to the set of items identified by the OVAL Object. Care must be taken to ensure that conflicting filters are not applied. It is possible to exclude all items with a size of 10 KB and then include only items with a size of 10 KB. This example would result in the empty set.

The optional set_operator attribute defines how different child sets are combined to form the overall unique set of objects. For example, does one take the union of different sets or the intersection? For a description of the valid values please refer to the SetOperatorEnumeration simple type.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object_reference  
      - oval:ObjectIDPattern (1..2)  
      -   
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _filter:  
  
< filter >  
---------------------------------------------------------
The filter element provides a reference to an existing OVAL State and includes an optional action attribute. The action attribute is used to specify whether items that match the referenced OVAL State will be included in the resulting set or excluded from the resulting set.

______________
  
.. _StatesType:  
  
== StatesType ==  
---------------------------------------------------------
The StatesType complex type is a container for one or more state child elements. Each state provides details about specific characteristics that can be used during an evaluation of an object. Please refer to the description of the state element for more information about an individual state.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:state  
      - n/a (1..unbounded)  
      -   
  
.. _state:  
  
< state >  
---------------------------------------------------------
The state element is an abstract element that is meant to be extended (via substitution groups) by the states found in the component schemas. An actual state element is not valid. The use of this abstract class simplifies the OVAL schema by allowing individual states to inherit the optional notes child element, and the id and operator attributes from the base StateType. Please refer to the description of the StateType complex type for more information.

An OVAL State is a collection of one or more characteristics pertaining to a specific object type. The OVAL State is used by an OVAL Test to determine if a unique set of items identified on a system meet certain characteristics.

oval-def:StateType

.. _StateType:  
  
== StateType ==  
---------------------------------------------------------
The base type of every state includes an optional notes element and two attributes. The notes section of a state should be used to hold information that might be helpful to someone examining the technical aspects of the state. For example, why certain values have been used by the state, or maybe a link to where further information can be found. Please refer to the description of the NotesType complex type for more information about the notes element.

The required id attribute uniquely identifies each state, and must conform to the format specified by the StateIdPattern simple type. The required version attribute holds the current version of the state. Versions are integers, starting at 1 and incrementing every time a state is modified. The required operator attribute provides the logical operator that binds the different characteristics inside a state together. The optional comment attribute provides a short description of the state. The optional deprecated attribute signifies that an id is no longer to be used or referenced but the information has been kept around for historic purposes.

When evaluating a particular state against an object, one should evaluate each individual entity separately. The individual results are then combined by the operator to produce an overall result. This process holds true even when there are multiple instances of the same entity. Evaluate each instance separately, taking the entity check attribute into account, and then combine everything using the operator.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - id  
      - oval:StateIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - operator  
      - oval:OperatorEnumeration (optional *default*='AND')  
      - (No Description)  
    * - comment  
      - oval:NonEmptyStringType (optional)  
      - (No Description)  
    * - deprecated  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ds:Signature  
      - n/a (0..1)  
      -   
    * - oval:notes  
      - n/a (0..1)  
      -   
  
______________
  
.. _VariablesType:  
  
== VariablesType ==  
---------------------------------------------------------
The VariablesType complex type is a container for one or more variable child elements. Each variable element is a way to define one or more values to be obtained at the time a definition is evaluated.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:variable  
      - n/a (1..unbounded)  
      -   
  
.. _variable:  
  
< variable >  
---------------------------------------------------------
The variable element is an abstract element that is meant to be extended (via substitution groups) by the different types of variables. An actual variable element is not valid. The different variable types describe different sources for obtaining a value(s) for the variable. There are currently three types of variables; local, external, and constant. Please refer to the description of each one for more specific information. The value(s) of a variable is treated as if it were inserted where referenced. One of the main benefits of variables is that they allow tests to evaluate user-defined policy. For example, an OVAL Test might check to see if a password is at least a certain number of characters long, but this number depends upon the individual policy of the user. To solve this, the test for password length can be written to refer to a variable element that defines the length.

If a variable defines a collection of values, any entity that references the variable will evaluate to true depending on the value of the var_check attribute. For example, if an entity 'size' with an operation of 'less than' references a variable that returns five different integers, and the var_check attribute has a value of 'all', then the 'size' entity returns true only if the actual size is less than each of the five integers defined by the variable. If a variable does not return any value, then an error should be reported during OVAL analysis.

oval-def:VariableType

.. _VariableType:  
  
== VariableType ==  
---------------------------------------------------------
The VariableType complex type defines attributes associated with each OVAL Variable. The required id attribute uniquely identifies each variable, and must conform to the format specified by the VariableIDPattern simple type. The required version attribute holds the current version of the variable. Versions are integers, starting at 1 and incrementing every time a variable is modified. The required comment attribute provides a short description of the variable. The optional deprecated attribute signifies that an id is no longer to be used or referenced but the information has been kept around for historic purposes.

The required datatype attribute specifies the type of value being defined. The set of values identified by a variable must comply with the specified datatype, otherwise an error should be reported. Please see the DatatypeEnumeration for details about each valid datatype. For example, if the datatype of the variable is specified as boolean then the value(s) returned by the component / function should be "true", "false", "1", or "0".

Note that the 'record' datatype is not permitted on variables. The notes section of a variable should be used to hold information that might be helpful to someone examining the technical aspects of the variable. Please refer to the description of the NotesType complex type for more information about the notes element.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - id  
      - oval:VariableIDPattern (required)  
      - (No Description)  
    * - version  
      - xsd:nonNegativeInteger (required)  
      - (No Description)  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required)  
      - Note that the 'record' datatype is not permitted on variables.  
    * - comment  
      - oval:NonEmptyStringType (required)  
      - (No Description)  
    * - deprecated  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ds:Signature  
      - n/a (0..1)  
      -   
    * - oval:notes  
      - n/a (0..1)  
      -   
  
.. _external_variable:  
  
< external_variable >  
---------------------------------------------------------
The external_variable element extends the VariableType and defines a variable with some external source. The actual value(s) for the variable is not provided within the OVAL file, but rather it is retrieved during the evaluation of the OVAL Definition from an external source. An unbounded set of possible-value and possible_restriction child elements can be specified that together specify the list of all possible values that an external source is allowed to supply for the external variable. In other words, the value assigned by an external source must match one of the possible_value or possible_restriction elements specified. Each possible_value element contains a single value that could be assigned to the given external_variable while each possible_restriction element outlines a range of possible values. Note that it is not necessary to declare a variable's possible values, but the option is available if desired. If no possible child elements are specified, then the valid values are only bound to the specified datatype of the external variable. Please refer to the description of the PossibleValueType and PossibleRestrictionType complex types for more information.

**Extends:** oval-def:VariableType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - possible_value  
      - oval-def:PossibleValueType (0..unbounded)  
      -   
    * - possible_restriction  
      - oval-def:PossibleRestrictionType (0..unbounded)  
      -   
  
.. _PossibleValueType:  
  
== PossibleValueType ==  
---------------------------------------------------------
The PossibleValueType complex type is used to outline a single expected value of an external variable. The required hint attribute gives a short description of what the value means or represents.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - hint  
      - xsd:string (required)  
      - (No Description)  
  
  
**Simple Content:** xsd:anySimpleType

.. _PossibleRestrictionType:  
  
== PossibleRestrictionType ==  
---------------------------------------------------------
The PossibleRestrictionType complex type outlines a range of possible expected value of an external variable. Each possible_restriction element contains an unbounded list of child restriction elements that each specify a range that an actual value may fall in. For example, a restriction element may specify that a value must be less than 10. When multiple restriction elements are present, a valid possible value's evaluation is based on the operator attribute. The operator attribute is set to AND by default. Other valid operation values are explained in the description of the OperatorEnumeration simple type. One can think of the possible_value and possible_restriction elements as an OR'd list of possible values, with the restriction elements as using the selected operation to evaluate its own list of value descriptions. Please refer to the description of the RestrictionType complex type for more information. The required hint attribute gives a short description of what the value means or represents.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - operator  
      - oval:OperatorEnumeration (optional *default*='AND')  
      - (No Description)  
    * - hint  
      - xsd:string (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - restriction  
      - oval-def:RestrictionType (1..unbounded)  
      -   
  
.. _RestrictionType:  
  
== RestrictionType ==  
---------------------------------------------------------
The RestrictionType complex type outlines a restriction that is placed on expected values for an external variable. For example, a possible value may be restricted to a integer less than 10. Please refer to the operationEnumeration simple type for a description of the valid operations.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - operation  
      - oval:OperationEnumeration (required)  
      - (No Description)  
  
  
**Simple Content:** xsd:anySimpleType

.. _constant_variable:  
  
< constant_variable >  
---------------------------------------------------------
The constant_variable element extends the VariableType and defines a variable with a constant value(s). Each constant_variable defines either a single value or a collection of values to be used throughout the evaluation of the OVAL Definition File in which it has been defined. Constant variables cannot be over-ridden by an external source. The actual value of a constant variable is defined by the required value child element. A collection of values can be specified by including multiple instances of the value element. Please refer to the description of the ValueType complex type for more information.

**Extends:** oval-def:VariableType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - value  
      - oval-def:ValueType (1..unbounded)  
      -   
  
.. _ValueType:  
  
== ValueType ==  
---------------------------------------------------------
The ValueType complex type holds the actual value of the variable when dealing with a constant variable. This value should be used by all tests that reference this variable. The value cannot be over-ridden by an external source.

**Simple Content:** xsd:anySimpleType

.. _local_variable:  
  
< local_variable >  
---------------------------------------------------------
The local_variable element extends the VariableType and defines a variable with some local source. The actual value(s) for the variable is not provided in the OVAL Definition document but rather it is retrieved during the evaluation of the OVAL Definition. Each local variable is defined by either a single component or a complex function, meaning that a value can be as simple as a literal string or as complex as multiple registry keys concatenated together. Note that if an individual component is used and it returns a collection of values, then there will be multiple values associated with the local_variable. For example, if an object_component is used and it references a file object that identifies a set of 5 files, then the local variable would evaluate to a collection of those 5 values. Please refer to the description of the ComponentGroup for more information.

**Extends:** oval-def:VariableType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _ComponentGroup:  
  
-- ComponentGroup --  
---------------------------------------------------------
Any value that is pulled directly off the local system is defined by the basic component element. For example, the name of a user or the value of a registry key. Please refer to the definition of the ObjectComponentType for more information. A value can also be obtained from another variable. The variable element identifies a variable id to pull a value(s) from. Please refer to the definition of the VariableComponentType for more information. Literal values can also be specified.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object_component  
      - oval-def:ObjectComponentType (1..1)  
      -   
    * - variable_component  
      - oval-def:VariableComponentType (1..1)  
      -   
    * - literal_component  
      - oval-def:LiteralComponentType (1..1)  
      -   
    * - oval-def:FunctionGroup  
      - n/a (1..1)  
      -   
  
.. _LiteralComponentType:  
  
== LiteralComponentType ==  
---------------------------------------------------------
The LiteralComponentType complex type defines a literal value to be used as a component. The optional datatype attribute defines the type of data expected. The default datatype is 'string'.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (optional *default*='string')  
      - (No Description)  
  
  
**Simple Content:** xsd:anySimpleType

.. _ObjectComponentType:  
  
== ObjectComponentType ==  
---------------------------------------------------------
The ObjectComponentType complex type defines a specific value or set of values on the local system to obtain.

The required object_ref attribute provides a reference to an existing OVAL Object declaration. The referenced OVAL Object specifies a set of OVAL Items to collect. Note that an OVAL Object might identify 0, 1, or many OVAL Items on a system. If no items are found on the system then an error should be reported when determining the value of an ObjectComponentType. If 1 or more OVAL Items are found then each OVAL Item will be considered and the ObjectComponentType may have one or more values.

The required item_field attribute specifies the name of the entity whose value will be retrieved from each OVAL Item collected by the referenced OVAL Object. For example, if the object_ref references a win-def:file_object, the item_field may specify the 'version' entity as the field to use as the value of the ObjectComponentType. Note that an OVAL Item may have 0, 1, or many entities whose name matches the specified item_field value. If an entity is not found with a name that matches the value of the item_field an error should be reported when determining the value of an ObjectComponentType. If 1 or more matching entities are found in a single OVAL Item the value of the ObjectComponentType is the list of the values from each of the matching entities.

The optional record_field attribute specifies the name of a field in a record entity in an OVAL Item. The record_field attribute allows the value of a specific field to be retrieved from an entity with a datatype of 'record'. If a field with a matching name attribute value is not found in the referenced OVAL Item entity an error should be reported when determining the value of the ObjectComponentType.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - object_ref  
      - oval:ObjectIDPattern (required)  
      - (No Description)  
    * - item_field  
      - oval:NonEmptyStringType (required)  
      - (No Description)  
    * - record_field  
      - oval:NonEmptyStringType (optional)  
      - (No Description)  
  
  
.. _VariableComponentType:  
  
== VariableComponentType ==  
---------------------------------------------------------
The VariableComponentType complex type defines a specific value obtained by looking at the value of another OVAL Variable. The required var_ref attribute provides a reference to the variable. One must make sure that the variable reference does not point to the parent variable that uses this component to avoid a race condition.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - var_ref  
      - oval:VariableIDPattern (required)  
      - (No Description)  
  
  
.. _FunctionGroup:  
  
-- FunctionGroup --  
---------------------------------------------------------
Complex functions have been defined that help determine how to manipulate specific values. These functions can be nested together to form complex statements. Each function is designed to work on a specific type of data. If the data being worked on is not of the correct type, a cast should be attempted before reporting an error. For example, if a concat function includes a registry component that returns an integer, then the integer should be cast as a string in order to work with the concat function. Note that if the operation being applied to the variable by the calling entity is "pattern match", then all the functions are performed before the regular expression is evaluated. In short, the variable would produce a value as normal and then any pattern match operation would be performed. It is also important to note that when using these functions with sub-components that return a collection of values that the operation will be performed on the Cartesian product of the components and the result is also a collection of values. For example, assume a local_variable specifies the arithmetic function with an arithmetic_operation of "add" and has two sub-components under this function: the first component returns "1" and "2", and the second component returns "3" and "4" and "5". The local_variable element would be evaluated to have a collection of six values: 1+3, 1+4, 1+5, 2+3, 2+4, and 2+5. Please refer to the description of a specific function for more details about it.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - arithmetic  
      - oval-def:ArithmeticFunctionType (1..1)  
      -   
    * - begin  
      - oval-def:BeginFunctionType (1..1)  
      -   
    * - concat  
      - oval-def:ConcatFunctionType (1..1)  
      -   
    * - end  
      - oval-def:EndFunctionType (1..1)  
      -   
    * - escape_regex  
      - oval-def:EscapeRegexFunctionType (1..1)  
      -   
    * - split  
      - oval-def:SplitFunctionType (1..1)  
      -   
    * - substring  
      - oval-def:SubstringFunctionType (1..1)  
      -   
    * - time_difference  
      - oval-def:TimeDifferenceFunctionType (1..1)  
      -   
    * - regex_capture  
      - oval-def:RegexCaptureFunctionType (1..1)  
      -   
    * - unique  
      - oval-def:UniqueFunctionType (1..1)  
      -   
    * - count  
      - oval-def:CountFunctionType (1..1)  
      -   
    * - glob_to_regex  
      - oval-def:GlobToRegexFunctionType (1..1)  
      -   
    * - merge  
      - oval-def:MergeFunctionType (1..1)  
      -   
  
.. _ArithmeticFunctionType:  
  
== ArithmeticFunctionType ==  
---------------------------------------------------------
The arithmetic function takes two or more integer or float components and performs a basic mathematical function on them. The result of this function is a single integer or float unless one of the components returns a collection of values. In this case the specified arithmetic function would be performed multiple times and the end result would also be a collection of values for the local variable. For example assume a local_variable specifies the arithmetic function with an arithmetic_operation of "add" and has two sub-components under this function: the first component returns "1" and "2", and the second component returns "3" and "4" and "5". The local_variable element would be evaluated to be a collection of six values: 1+3, 1+4, 1+5, 2+3, 2+4, and 2+5.

Note that if both an integer and float components are used then the result is a float.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - arithmetic_operation  
      - oval-def:ArithmeticEnumeration (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _BeginFunctionType:  
  
== BeginFunctionType ==  
---------------------------------------------------------
The begin function takes a single string component and defines a character (or string) that the component string should start with. The character attribute defines the specific character (or string). The character (or string) is only added to the component string if the component string does not already start with the specified character (or string). If the component string does not start with the specified character (or string) the entire character (or string) will be prepended to the component string..

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - character  
      - xsd:string (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _ConcatFunctionType:  
  
== ConcatFunctionType ==  
---------------------------------------------------------
The concat function takes two or more components and concatenates them together to form a single string. The first component makes up the beginning of the resulting string and any following components are added to the end it. If one of the components returns multiple values then the concat function would be performed multiple times and the end result would be a collection of values for the local variable. For example assume a local variable has two sub-components: a basic component element returns the values "abc" and "def", and a literal component element that has a value of "xyz". The local_variable element would evaluate to a collection of two values, "abcxyz" and "defxyz". If one of the components does not exist, then the result of the concat operation should be does not exist.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
Below is a chart that specifies how to classify the flag status of a variable using the concat function during evaluation when multiple components are supplied. Both the object and variable component are indirectly associated with collected objects in a system characteristics file. These objects could have been completely collected from the system, or there might have been some type of error that led to the object not being collected, or maybe only a part of the object set was collected. This flag status is important as OVAL Objects or OVAL States that are working with a variable (through the var_ref attribute on an entity) can use this information to report more accurate results. For example, an OVAL Test with a check attribute of 'at least one' that specifies an object with a variable reference, might be able to produce a valid result based on an incomplete object set as long as one of the objects in the set is true.  
```
      ||  num of components with flag      || 
      ||                                   || resulting flag is 
      || E  | C  | I  | DNE | NC | NA      || 
------||-----------------------------------||------------------
      || 1+ | 0+ | 0+ | 0+  | 0+ | 0+      || Error
      || 0  | 1+ | 0  | 0   | 0  | 0       || Complete 
      || 0  | 0+ | 1+ | 0   | 0  | 0       || Incomplete 
      || 0  | 0+ | 0+ | 1+  | 0  | 0       || Does Not Exist 
      || 0  | 0+ | 0+ | 0+  | 1+ | 0       || Not Collected 
      || 0  | 0+ | 0+ | 0+  | 0+ | 1+      || Not Applicable
------||-----------------------------------||------------------  
```

.. _EndFunctionType:  
  
== EndFunctionType ==  
---------------------------------------------------------
The end function takes a single string component and defines a character (or string) that the component string should end with. The character attribute defines the specific character (or string). The character (or string) is only added to the component string if the component string does not already end with the specified character (or string). If the desired end character is a string, then the entire end string must exist at the end if the component string. If the entire end string is not present then the entire end string is appended to the component string.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - character  
      - xsd:string (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _EscapeRegexFunctionType:  
  
== EscapeRegexFunctionType ==  
---------------------------------------------------------
The escape_regex function takes a single string component and escapes all of the regular expression characters. If the string sub-component contains multiple values, then the escape_regex function will be applied to each individual value and return a multiple-valued result. For example, the string '(\.test_string*)?' will evaluate to '\(\\\.test_string\*\)\?'. The purpose for this is that many times, a component used in pattern match needs to be treated as a literal string and not a regular expression. For example, assume a basic component element that identifies a file path that is held in the Windows registry. This path is a string that might contain regular expression characters. These characters are likely not intended to be treated as regular expression characters and need to be escaped. This function allows a definition writer to mark convert the values of components to regular expression format.

Note that when using regular expressions, OVAL supports a common subset of the regular expression character classes, operations, expressions and other lexical tokens defined within Perl 5's regular expression specification. The set of Perl metacharacters which must be escaped by this function is as follows, enclosed by single quotes: '^$\.[](){}*+?|'. For more information on the supported regular expression syntax in OVAL see: http://oval.mitre.org/language/about/re_support_5.6.html.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _SplitFunctionType:  
  
== SplitFunctionType ==  
---------------------------------------------------------
The split function takes a single string component and turns it into a collection of values based on a delimiter string. For example, assume that a basic component element returns the value "a-b-c-d" to the split function with the delimiter set to "-". The local_variable element would be evaluated to have four values "a", "b", "c", and "d". If the basic component returns a value that begins, or ends, with a delimiter, the local_variable element would contain empty string values at the beginning, or end, of the collection of values returned for that string component. For example, if the delimiter is "-", and the basic component element returns the value "-a-a-", the local_variable element would evaluate to a collection of four values "", "a", "a", and "". Likewise, if the basic component element returns a value that contains adjacent delimiters such as "---", the local_variable element would evaluate to a collection of four values "", "", "", and "". Lastly, if the basic component element used by the split function returnsa collection of values, then the split function is performed multiple times, and all of the results, from each of the split functions, are returned.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - delimiter  
      - xsd:string (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _SubstringFunctionType:  
  
== SubstringFunctionType ==  
---------------------------------------------------------
The substring function takes a single string component and produces a single value that contains a portion of the original string. The substring_start attribute defines the starting position in the original string. To include the first character of the string, the start position would be 1. A value less than 1 also means that the start position would be 1. If the substring_start attribute has value greater than the length of the original string an error should be reported. The substring_length attribute defines how many characters after, and including, the starting character to include. A substring_length value greater than the actual length of the string, or a negative value, means to include all of the characters after the starting character. For example, assume a basic component element that returns the value "abcdefg" with a substring_start value of 3 and a substring_length value of 2. The local_variable element would evaluate to have a single value of "cd". If the string component used by the substring function returns a collection of values, then the substring operation is performed multiple times and results in a collection of values for the component.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - substring_start  
      - xsd:int (required)  
      - (No Description)  
    * - substring_length  
      - xsd:int (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _TimeDifferenceFunctionType:  
  
== TimeDifferenceFunctionType ==  
---------------------------------------------------------
The time_difference function calculates the difference in seconds between date-time values. If one component is specified, the values of that component are subtracted from the current time (UTC). The current time is the time at which the function is evaluated. If two components are specified, the value of the second component is subtracted from the value of the first component. If the component(s) contain a collection of values, the operation is performed multiple times on the Cartesian product of the component(s) and the result is also a collection of time difference values. For example, assume a local_variable specifies the time_difference function and has two sub-components under this function: the first component returns "04/02/2009" and "04/03/2009", and the second component returns "02/02/2005" and "02/03/2005" and "02/04/2005". The local_variable element would evaluate to a collection of six values: (ToSeconds("04/02/2009") - ToSeconds("02/02/2005")), (ToSeconds("04/02/2009") - ToSeconds("02/03/2005")), (ToSeconds("04/02/2009") - ToSeconds("02/04/2005")), (ToSeconds("04/03/2009") - ToSeconds("02/02/2005")), (ToSeconds("04/03/2009") - ToSeconds("02/03/2005")), and (ToSeconds("04/03/2009") - ToSeconds("02/04/2005")).

The date-time format of each component is determined by the two format attributes. The format1 attribute applies to the first component, and the format2 attribute applies to the second component. Valid values for the attributes are 'win_filetime', 'seconds_since_epoch', 'day_month_year', 'year_month_day', and 'month_day_year'. Please see the DateTimeFormatEnumeration for more information about each of these values. If an input value is not understood, the result is an error. If only one input is specified, specify the format with the format2 attribute, as the first input is considered to be the implied 'current time' input.

Note that the datatype associated with the components should be 'string' or 'int' depending on which date time format is specified. The result of this function though is always an integer.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - format_1  
      - oval-def:DateTimeFormatEnumeration (optional *default*='year_month_day')  
      - (No Description)  
    * - format_2  
      - oval-def:DateTimeFormatEnumeration (optional *default*='year_month_day')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _RegexCaptureFunctionType:  
  
== RegexCaptureFunctionType ==  
---------------------------------------------------------
The regex_capture function captures a single substring from a single string component. If the string sub-component contains multiple values, then the regex_capture function will extract a substring from each value. The 'pattern' attribute provides a regular expression that should contain a single subexpression (using parentheses). For example, the pattern ^abc(.*)xyz$ would capture a substring from each of the string component's values if the value starts with abc and ends with xyz. In this case the subexpression would be all the characters that exist in between the abc and the xyz. Note that subexpressions match the longest possible substrings.

If the regular expression contains multiple capturing sub-patterns, only the first capture is used. If there are no capturing sub-patterns, the result for each target string must be the empty string. Otherwise, if the regular expression could match the target string in more than one place, only the first match (and its first capture) is used. If no matches are found in a target string, the result for that target must be the empty string.

Note that a quantified capturing sub-pattern does not produce multiple substrings. Standard regular expression semantics are such that if a capturing sub-pattern is required to match multiple times in order for the overall regular expression to match, the capture produced is the last substring to have matched the sub-pattern.

Note that when using regular expressions, OVAL supports a common subset of the regular expression character classes, operations, expressions and other lexical tokens defined within Perl 5's regular expression specification. If any of the Perl metacharacters are to be used literally, then they must be escaped. The set of metacharacters which must be escaped for this purpose is as follows, enclosed by single quotes: '^$\.[](){}*+?|'. For more information on the supported regular expression syntax in OVAL see: http://oval.mitre.org/language/about/re_support_5.6.html.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - pattern  
      - xsd:string  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _UniqueFunctionType:  
  
== UniqueFunctionType ==  
---------------------------------------------------------
The unique function takes one or more components and removes any duplicate value from the set of components. All components used in the unique function will be treated as strings. For example, assume that three components exist, one that contains a string value of 'foo', and two of which both resolve to the string value 'bar'. Applying the unique function to these three components resolves to a local_variable with two string values, 'foo' and 'bar'. Additionally, if any of the components referenced by the unique function evaluate to a collection of values, then those values are used in the unique calculation. For example, assume that there are two components, one of which resolves to a single string value, 'foo', the other of which resolves to two string values, 'foo' and 'bar'. If the unique function is used to remove duplicates from these two components, the function will resolve to a local_variable that is a collection of two string values, 'foo' and 'bar'.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _MergeFunctionType:  
  
== MergeFunctionType ==  
---------------------------------------------------------
The merge function takes one or more components and merges them together into a single string value, optionally including a delimiter string. For example, if data from one registry reg_multi_sz value contains values of "abc" and "def", the merge function operated on those values would resolve to a string with the value of 'abcdef'. If an optional delimiter of ',' was used, the merge function would resolve to a value of 'abc,'def'.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - delimiter  
      - xsd:string (optional *default*='')  
      - (No Description)  
    * - sort  
      - oval-def:SortEnumeration (optional *default*='document')  
      - (No Description)  
    * - order  
      - oval-def:OrderEnumeration (optional *default*='ascending')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _CountFunctionType:  
  
== CountFunctionType ==  
---------------------------------------------------------
The count function takes one or more components and returns the count of all of the values represented by the components. For example, assume that two variables exist, each with a single value. By applying the count function against two variable components that resolve to the two variables, the resulting local_variable would have a value of '2'. Additionally, if any of the components referenced by the count function evaluate to a collection of values, then those values are used in the count calculation. For example, assume that there are two components, one of which resolves to a single value, the other of which resolves to two values. If the count function is used to provide a count of these two components, the function will resolve to a local_variable with the values '3'.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
.. _GlobToRegexFunctionType:  
  
== GlobToRegexFunctionType ==  
---------------------------------------------------------
The glob_to_regex function takes a single string component representing shell glob pattern and produces a single value that corresponds to result of a conversion of the original glob pattern into Perl 5's regular expression pattern. The glob_noescape attribute defines the way how the backslash ('\') character should be interpreted. It defaults to 'false' meaning backslash should be interpreted as an escape character (backslash is allowed to be used as an escape character). If the glob_noescape attribute would be set to 'true' it instructs the glob_to_regex function to interpret the backslash ('\') character as a literal, rather than as an escape character (backslash is *not* allowed to be used as an escape character). Refer to table with examples below to see the difference how a different boolean value of the 'glob_noescape' attribute will impact the output form of the resulting Perl 5's regular expression produced by glob_to_regex function.

Please note the glob_to_regex function will fail to perform the conversion and return an error when the provided string argument (to represent glob pattern) does not represent a syntactically correct glob pattern. For example given the 'a*b?[' as the argument to be converted, glob_to_regex would return an error since there's missing the corresponding closing bracket in the provided glob pattern argument.

Also, it is necessary to mention that the glob_to_regex function respects the default behaviour for the input glob pattern and output Perl 5's regular expression spaces. Namely this means that:

- glob_to_regex will respect the UNIX glob behavior when processing forward slashes, forward slash should be treated as a path separator and * or ? shall not match it,

- glob_to_regex will rule out matches having special meaning (for example '.' as a representation of the current working directory or '..' as a representation of the parent directory of the current working directory,

- glob_to_regex will rule out files or folders starting with '.' character (e.g. dotfiles) unless the respective glob pattern part itself starts with the '.' character,

- glob_to_regex will not perform case-sensitivity transformation (alphabetical characters will be copied from input glob pattern space to output Perl 5's regular expression pattern space intact). It is kept as a responsibility of the OVAL content author to provide input glob pattern argument in such case so the resulting Perl 5's regular expression pattern will match the expected pathname entries according to the case of preference,

- glob_to_regex will not perform any possible brace expansion. Therefore glob patterns like '{pat,pat,pat}' would be converted into Perl 5's regular expression syntax in the original un-expanded form (kept for any potential subsequent expansion to be performed by Perl 5's regular expression engine in the moment of the use of that resulting regular expression),

- glob_to_regex will not perform tilde ('~') character substitution to user name home directory pathname. The ('~') character will be passed to Perl 5's regular expression engine intact. If user name home directory pathname glob pattern behaviour is expected, the pathname of the user name home directory needs to be specified in the original input glob pattern already,

- glob_to_regex function will not perform any custom changes wrt to the ordering of items (perform any additional sorting of set of pathnames represented by the provided glob pattern argument).

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - glob_noescape  
      - xsd:boolean (optional *default*='false')  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - oval-def:ComponentGroup  
      - n/a (1..1)  
      -   
  
Below are some examples that outline how the glob_noescape attribute value affects the output form of the produced Perl regular expression. The far left column identifies the shell glob pattern provided as the input string component to the glob_to_regex function. The middle column specifies the two possible different boolean values of the 'glob_noescape' attribute that can be used. Finally the last column depicts how the output produced by the glob_to_regex function - the resulting Perl regular expression would look like.  
```
                          ||                               ||
 input shell glob pattern || glob_noescape attribute value || corresponding Perl regular expression
                          ||                               ||
--------------------------||-------------------------------||--------------------------------------
         '\*'             ||           false               ||                 ^\*$
                          ||-------------------------------||--------------------------------------
         '\*'             ||           true                ||               ^\\[^/]*$
--------------------------||-------------------------------||--------------------------------------
         '\?'             ||           false               ||                 ^\?$
                          ||-------------------------------||--------------------------------------
         '\?'             ||           true                ||              ^\\[^./]$
--------------------------||-------------------------------||--------------------------------------
      '\[hello\]'         ||           false               ||              ^\[hello\]$
                          ||-------------------------------||--------------------------------------
      '\[hello\]'         ||           true                ||            ^\\[hello\\]$
--------------------------||-------------------------------||--------------------------------------
       '/root/*'          ||           false               ||        ^/root/(?=[^.])[^/]*$
                          ||-------------------------------||--------------------------------------
       '/root/.*'         ||           false               ||           ^/root/\.[^/]*$
                          ||-------------------------------||--------------------------------------
       '/root/x*'         ||           false               ||           ^/root/x[^/]*$
                          ||-------------------------------||--------------------------------------
       '/root/?'          ||           false               ||           ^/root/[^./]$
                          ||-------------------------------||--------------------------------------
       '/root/.?'         ||           false               ||           ^/root/\.[^/]$
                          ||-------------------------------||--------------------------------------
       '/root/x?'         ||           false               ||           ^/root/x[^/]$
--------------------------||-------------------------------||--------------------------------------
       'list.?'           ||           false               ||            ^list\.[^/]$
                          ||-------------------------------||--------------------------------------
       'list.?'           ||           true                ||            ^list\.[^/]$
                          ||-------------------------------||--------------------------------------
       'project.*'        ||           false               ||           ^project\.[^/]*$
                          ||-------------------------------||--------------------------------------
       'project.*'        ||           true                ||           ^project\.[^/]*$
                          ||-------------------------------||--------------------------------------
       '*old'             ||           false               ||           ^(?=[^.])[^/]*old$
                          ||-------------------------------||--------------------------------------
       '*old'             ||           true                ||           ^(?=[^.])[^/]*old$
                          ||-------------------------------||--------------------------------------
       'type*.[ch]'       ||           false               ||           ^type[^/]*\.[ch]$
                          ||-------------------------------||--------------------------------------
       'type*.[ch]'       ||           true                ||           ^type[^/]*\.[ch]$
                          ||-------------------------------||--------------------------------------
       '*.*'              ||           false               ||        ^(?=[^.])[^/]*\.[^/]*$
                          ||-------------------------------||--------------------------------------
       '*.*'              ||           true                ||        ^(?=[^.])[^/]*\.[^/]*$
                          ||-------------------------------||--------------------------------------
        '*'               ||           false               ||           ^(?=[^.])[^/]*$
                          ||-------------------------------||--------------------------------------
        '*'               ||           true                ||           ^(?=[^.])[^/]*$
                          ||-------------------------------||--------------------------------------
        '?'               ||           false               ||                ^[^./]$
                          ||-------------------------------||--------------------------------------
        '?'               ||           true                ||                ^[^./]$
                          ||-------------------------------||--------------------------------------
        '\*'              ||           false               ||                 ^\*$
                          ||-------------------------------||--------------------------------------
        '\*'              ||           true                ||               ^\\[^/]*$
                          ||-------------------------------||--------------------------------------
        '\?'              ||           false               ||                 ^\?$
                          ||-------------------------------||--------------------------------------
        '\?'              ||           true                ||               ^\\[^./]$
                          ||-------------------------------||--------------------------------------
   'x[[:digit:]]\*'       ||           false               ||           ^x[[:digit:]]\*$
                          ||-------------------------------||--------------------------------------
   'x[[:digit:]]\*'       ||           true                ||        ^x[[:digit:]]\\[^/]*$
                          ||-------------------------------||--------------------------------------
         ''               ||           false               ||                  ^$
                          ||-------------------------------||--------------------------------------
         ''               ||           true                ||                  ^$
                          ||-------------------------------||--------------------------------------
   '~/files/*.txt'        ||           false               ||    ^~/files/(?=[^.])[^/]*\.txt$
                          ||-------------------------------||--------------------------------------
   '~/files/*.txt'        ||           true                ||    ^~/files/(?=[^.])[^/]*\.txt$
                          ||-------------------------------||--------------------------------------
        '\'               ||           false               ||                 ^\\$
                          ||-------------------------------||--------------------------------------
        '\'               ||           true                ||                 ^\\$
                          ||-------------------------------||--------------------------------------
        '[ab'             ||           false               ||                INVALID
                          ||-------------------------------||--------------------------------------
        '[ab'             ||           true                ||                INVALID
                          ||-------------------------------||--------------------------------------
      '.*.conf'           ||           false               ||           ^\.[^/]*\.conf$
                          ||-------------------------------||--------------------------------------
      '.*.conf'           ||           true                ||           ^\.[^/]*\.conf$
                          ||-------------------------------||--------------------------------------
      'docs/?b'           ||           false               ||            ^docs/[^./]b$
                          ||-------------------------------||--------------------------------------
      'docs/?b'           ||           true                ||            ^docs/[^./]b$
                          ||-------------------------------||--------------------------------------
      'xy/??z'            ||           false               ||            ^xy/[^./][^/]z$
                          ||-------------------------------||--------------------------------------
      'xy/??z'            ||           true                ||            ^xy/[^./][^/]z$
---------------------------------------------------------------------------------------------------  
```

.. _ArithmeticEnumeration:  
  
-- ArithmeticEnumeration --  
---------------------------------------------------------
The ArithmeticEnumeration simple type defines basic arithmetic operations. Currently add and multiply are defined.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - add  
      - (No Description)  
    * - multiply  
      - (No Description)  
  
.. _SortEnumeration:  
  
-- SortEnumeration --  
---------------------------------------------------------
The SortEnumeration simple type defines basic sorting operations. Currently 'document', 'lexical', 'numeric' and 'natural' are defined.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - document  
      - | No sorting is performed, the values will remain in the order they came in as, and match the order in which the referenced system characterics will appear in the OVAL results XML document.  
    * - lexical  
      - | Sort alphabetically, useful for pure string lists.  
    * - numeric  
      - | Sort numerically, useful for lists of numbers or lists of integers or floats, but will cause errors if string data is present.  
    * - natural  
      - | Perform a 'natural' sort, refer to https://en.wikipedia.org/wiki/Natural_sort_order  
  
.. _OrderEnumeration:  
  
-- OrderEnumeration --  
---------------------------------------------------------
The OrderEnumeration simple type defines the direction in which data should be sorted, and works to support the SortEnumeration. The OrderEnumeration has no impact on the SortEnumeration of 'document'.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ascending  
      - | Numbers: Arranged from smallest to largest, such as 0, 1, 2, 3, 4, 5, 6. Letters: Arranged alphabetically from A to Z  
    * - descending  
      - | Numbers: Arranged from largest to smallest, such as 9, 8, 7, 6. Letters: Arranged alphabetically from Z to A  
  
.. _DateTimeFormatEnumeration:  
  
-- DateTimeFormatEnumeration --  
---------------------------------------------------------
The DateTimeFormatEnumeration simple type defines the different date-time formats that are understood by OVAL. Note that in some cases there are a few different possibilities within a given format. Each of these possibilities is unique though and can be distinguished from each other. The different formats are used to clarify the higher level structure of the date-time string being used.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - year_month_day  
      - | The year_month_day value specifies date-time strings that follow the formats: 'yyyymmdd', 'yyyymmddThhmmss', 'yyyy/mm/dd hh:mm:ss', 'yyyy/mm/dd', 'yyyy-mm-dd hh:mm:ss', or 'yyyy-mm-dd'  
    * - month_day_year  
      - | The month_day_year value specifies date-time strings that follow the formats: 'mm/dd/yyyy hh:mm:ss', 'mm/dd/yyyy', 'mm-dd-yyyy hh:mm:ss', 'mm-dd-yyyy', 'NameOfMonth, dd yyyy hh:mm:ss' or 'NameOfMonth, dd yyyy', 'AbreviatedNameOfMonth, dd yyyy hh:mm:ss', or 'AbreviatedNameOfMonth, dd yyyy'  
    * - day_month_year  
      - | The day_month_year value specifies date-time strings that follow the formats: 'dd/mm/yyyy hh:mm:ss', 'dd/mm/yyyy', 'dd-mm-yyyy hh:mm:ss', or 'dd-mm-yyyy'  
    * - win_filetime  
      - | The win_filetime value specifies date-time strings that follow the windows file time format.  
    * - seconds_since_epoch  
      - | The seconds_since_epoch value specifies date-time values that represent the time in seconds since the UNIX epoch. The Unix epoch is the time 00:00:00 UTC on January 1, 1970.  
    * - cim_datetime  
      - | The cim_datetime model is used by WMI and its value specifies date-time strings that follow the format: 'yyyymmddHHMMSS.mmmmmmsUUU', and alternatively 'yyyy-mm-dd HH:MM:SS:mmm' only when used in WMI Query Language queries.  
  
.. _FilterActionEnumeration:  
  
-- FilterActionEnumeration --  
---------------------------------------------------------
The FilterActionEnumeration simple type defines the different options for filtering sets of items.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - exclude  
      - | The exclude value specifies that all items that match the filter shall be excluded from set that the filter is applied to.  
    * - include  
      - | The include value specifies that only items that match the filter shall be included in the set that the filter is applied to.  
  
.. _SetOperatorEnumeration:  
  
-- SetOperatorEnumeration --  
---------------------------------------------------------
The SetOperatorEnumeration simple type defines acceptable set operations. Set operations are used to take multiple different sets of objects within OVAL and merge them into a single unique set. The different operators that guide this merge are defined below. For each operator, if only a single object has been supplied, then the resulting set is simply that complete object.

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - COMPLEMENT  
      - | The complement operator is defined in OVAL as a relative complement. The resulting unique set contains everything that belongs to the first declared set that is not part of the second declared set. If A and B are sets (with A being the first declared set), then the relative complement is the set of elements in A, but not in B, with the duplicates removed.  
    * - INTERSECTION  
      - | The intersection of two sets in OVAL results in a unique set that contains everything that belongs to both sets in the collection, but nothing else. If A and B are sets, then the intersection of A and B contains all the elements of A that also belong to B, but no other elements, with the duplicates removed.  
    * - UNION  
      - | The union of two sets in OVAL results in a unique set that contains everything that belongs to either of the original sets. If A and B are sets, then the union of A and B contains all the elements of A and all elements of B, with the duplicates removed.  
  
Below are some tables that outline how different flags are combined with a given set_operator to return a new flag. These tables are needed when computing the flag for collected objects that represent object sets in an OVAL Definition. The top row identifies the flag associated with the first set or object reference. The left column identifies the flag associated with the second set or object reference. The matrix inside the table represent the resulting flag when the given set_operator is applied. (E=error, C=complete, I=incomplete, DNE=does not exist, NC=not collected, NA=not applicable)  
```
                 ||                                   ||
 set_operator is ||            obj 1 flag             || 
      union      ||                                   ||
                 ||  E  |  C  |  I  | DNE | NC  | NA  ||
-----------------||-----------------------------------||
               E ||  E  |  E  |  E  |  E  |  E  |  E  || 
  obj          C ||  E  |  C  |  I  |  C  |  I  |  C  ||
   2           I ||  E  |  I  |  I  |  I  |  I  |  I  || 
  flag       DNE ||  E  |  C  |  I  | DNE |  I  | DNE ||
              NC ||  E  |  I  |  I  |  I  |  NC |  NC || 
              NA ||  E  |  C  |  I  | DNE |  NC |  NA ||
-----------------||-----------------------------------||  
```

  
```
                 ||                                   ||
 set_operator is ||             obj 1 flag            ||
  intersection   ||                                   ||
                 ||  E  |  C  |  I  | DNE | NC  | NA  ||
-----------------||-----------------------------------||
               E ||  E  |  E  |  E  | DNE |  E  |  E  ||
   obj         C ||  E  |  C  |  I  | DNE |  NC |  C  ||
    2          I ||  E  |  I  |  I  | DNE |  NC |  I  ||
   flag      DNE || DNE | DNE | DNE | DNE | DNE | DNE ||
              NC ||  E  |  NC |  NC | DNE |  NC |  NC ||
              NA ||  E  |  C  |  I  | DNE |  NC |  NA ||
-----------------||-----------------------------------||  
```

  
```
                 ||                                   ||
 set_operator is ||             obj 1 flag            ||
    complement   ||                                   ||
                 ||  E  |  C  |  I  | DNE | NC  | NA  ||
-----------------||-----------------------------------||
               E ||  E  |  E  |  E  | DNE |  E  |  E  ||
   obj         C ||  E  |  C  |  I  | DNE |  NC |  E  ||
    2          I ||  E  |  E  |  E  | DNE |  NC |  E  ||
   flag      DNE ||  E  |  C  |  I  | DNE |  NC |  E  ||
              NC ||  E  |  NC |  NC | DNE |  NC |  E  ||
              NA ||  E  |  E  |  E  |  E  |  E  |  E  ||
-----------------||-----------------------------------||  
```

.. _EntityAttributeGroup:  
  
-- EntityAttributeGroup --  
---------------------------------------------------------
The EntityAttributeGroup is a collection of attributes that are common to all entities. This group defines these attributes and their default values. Individual entities may limit allowed values for these attributes, but all entities will support these attributes.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:DatatypeEnumeration (optional *default*='string')  
      - The optional datatype attribute specifies how the given operation should be applied to the data. Since we are dealing with XML everything is technically a string, but often the value is meant to represent some other datatype and this affects the way an operation is performed. For example, with the statement 'is 123 less than 98'. If the data is treated as integers the answer is no, but if the data is treated as strings, then the answer is yes. Specifying a datatype defines how the less than operation should be performed. Another way of thinking of things is that the datatype attribute specifies how the data should be cast before performing the operation (note that the default datatype is 'string'). In the previous example, if the datatype is set to int, then '123' and '98' should be cast as integers. Another example is applying the 'equals' operation to '1.0.0.0' and '1.0'. With datatype 'string' they are not equal, with datatype 'version' they are. Note that there are certain cases where a cast from one datatype to another is not possible. If a cast cannot be made, (trying to cast 'abc' to an integer) then an error should be reported. For example, if the datatype is set to 'integer' and the value is the empty string. There is no way to cast the empty string (or NULL) to an integer, and in cases like this an error should be reported.  
    * - operation  
      - oval:OperationEnumeration (optional *default*='equals')  
      - The optional operation attribute determines how the individual entities should be evaluated (the default operation is 'equals').  
    * - mask  
      - xsd:boolean (optional *default*='false')  
      - The optional mask attribute is used to identify values that have been hidden for sensitivity concerns. This is used by the Result document which uses the System Characteristics schema to format the information found on a specific system. When the mask attribute is set to 'true' on an OVAL Entity or an OVAL Field, the corresponding collected value of that OVAL Entity or OVAL Field MUST NOT be present in the "results" section of the OVAL Results document; the "oval_definitions" section must not be altered and must be an exact copy of the definitions evaluated. Values MUST NOT be masked in OVAL System Characteristics documents that are not contained within an OVAL Results document. It is possible for masking conflicts to occur where one entity has mask set to true and another entity has mask set to false. A conflict will occur when the mask attribute is set differently on an OVAL Object and matching OVAL State or when more than one OVAL Objects identify the same OVAL Item(s). When such a conflict occurs the result is always to mask the entity.  
    * - var_ref  
      - oval:VariableIDPattern (optional)  
      - The optional var_ref attribute refers the value of the element to a variable element. When supplied, the value(s) associated with the OVAL Variable should be used as the value(s) of the element. If there is an error computing the value of the variable, then that error should be passed up to the element referencing it. If the variable being referenced does not have a value (for example, if the variable pertains to the size of a file, but the file does not exist) then one of two results are possible. If the element is part of an object declaration, then the object element referencing it is considered to not exist. If the element is part of a state declaration, then the state element referencing it will evaluate to error.  
    * - var_check  
      - oval:CheckEnumeration (optional)  
      - The optional var_check attribute specifies how data collection or state evaluation should proceed when an element uses a var_ref attribute, and the associated variable defines more than one value. For example, if an object entity 'filename' with an operation of 'not equal' references a variable that returns five different values, and the var_check attribute has a value of 'all', then an actual file on the system matches only if the actual filename does not equal any of the variable values. As another example, if a state entity 'size' with an operation of 'less than' references a variable that has five different integer values, and the var_check attribute has a value of 'all', then the 'size' state entity evaluates to true only if the corresponding 'size' item entity is less than each of the five integers defined by the variable. If a variable does not have any value value when referenced by an OVAL Object the object should be considered to not exist. If a variable does not have any value when referenced by an OVAL State an error should be reported during OVAL analysis. When an OVAL State uses a var_ref, if both the state entity and a corresponding item entity are collections of values, the var_check is applied to each value of the item entity individually, and all must evaluate to true for the state entity to evaluate to true. In this condition, there is no value of var_check which enables an element-wise comparison, and so there is no way to determine whether the two entities are truly 'equal' in that sense. If var_ref is present but var_check is not, the element should be processed as if var_check has the value "all".  
  
  
.. _EntitySimpleBaseType:  
  
== EntitySimpleBaseType ==  
---------------------------------------------------------
The EntitySimpleBaseType complex type is an abstract type that defines the default attributes associated with every simple entity. Entities can be found in both OVAL Objects and OVAL States and represent the individual properties associated with items found on a system. An example of a single entity would be the path of a file. Another example would be the version of the file.

**Simple Content:** xsd:anySimpleType

.. _EntityComplexBaseType:  
  
== EntityComplexBaseType ==  
---------------------------------------------------------
The EntityComplexBaseType complex type is an abstract type that defines the default attributes associated with every complex entity. Entities can be found in both OVAL Objects and OVAL States and represent the individual properties associated with items found on a system. An example of a single entity would be the path of a file. Another example would be the version of the file.

.. _EntityObjectIPAddressType:  
  
== EntityObjectIPAddressType ==  
---------------------------------------------------------
The EntityObjectIPAddressType type is extended by the entities of an individual OVAL Object. This type provides uniformity to each object entity by including the attributes found in the EntitySimpleBaseType. This specific type describes any IPv4/IPv6 address or address prefix.

**Restricts:** oval-def:EntitySimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - Restriction of oval:SimpleDatatypeEnumeration (required) ('ipv4_address', 'ipv6_address')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityObjectIPAddressStringType:  
  
== EntityObjectIPAddressStringType ==  
---------------------------------------------------------
The EntityObjectIPAddressStringType type is extended by the entities of an individual OVAL Object. This type provides uniformity to each object entity by including the attributes found in the EntitySimpleBaseType. This specific type describes any IPv4/IPv6 address, address prefix, or its string representation.

**Restricts:** oval-def:EntitySimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - Restriction of oval:SimpleDatatypeEnumeration (optional *default*='string') ('ipv4_address', 'ipv6_address', 'string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityObjectAnySimpleType:  
  
== EntityObjectAnySimpleType ==  
---------------------------------------------------------
The EntityObjectAnySimpleType type is extended by the entities of an individual OVAL Object. This type provides uniformity to each object entity by including the attributes found in the EntitySimpleBaseType. This specific type describes any simple data.

**Restricts:** oval-def:EntitySimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (optional *default*='string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityObjectBinaryType:  
  
== EntityObjectBinaryType ==  
---------------------------------------------------------
The EntityBinaryType type is extended by the entities of an individual OVAL Object. This type provides uniformity to each object entity by including the attributes found in the EntitySimpleBaseType. This specific type describes simple binary data. The empty string is also allowed when using a variable reference with an element.

**Restricts:** oval-def:EntitySimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='binary')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:hexBinary, oval:EmptyStringType

.. _EntityObjectBoolType:  
  
== EntityObjectBoolType ==  
---------------------------------------------------------
The EntityBoolType type is extended by the entities of an individual OVAL Object. This type provides uniformity to each object entity by including the attributes found in the EntitySimpleBaseType. This specific type describes simple boolean data. The empty string is also allowed when using a variable reference with an element.

**Restricts:** oval-def:EntitySimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='boolean')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:boolean, oval:EmptyStringType

.. _EntityObjectFloatType:  
  
== EntityObjectFloatType ==  
---------------------------------------------------------
The EntityObjectFloatType type is extended by the entities of an individual OVAL Object. This type provides uniformity to each object entity by including the attributes found in the EntitySimpleBaseType. This specific type describes simple float data. The empty string is also allowed when using a variable reference with an element.

**Restricts:** oval-def:EntitySimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='float')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:float, oval:EmptyStringType

.. _EntityObjectIntType:  
  
== EntityObjectIntType ==  
---------------------------------------------------------
The EntityIntType type is extended by the entities of an individual OVAL Object. This type provides uniformity to each object entity by including the attributes found in the EntitySimpleBaseType. This specific type describes simple integer data. The empty string is also allowed when using a variable reference with an element.

**Restricts:** oval-def:EntitySimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='int')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:integer, oval:EmptyStringType

.. _EntityObjectStringType:  
  
== EntityObjectStringType ==  
---------------------------------------------------------
The EntityStringType type is extended by the entities of an individual OVAL Object. This type provides uniformity to each object entity by including the attributes found in the EntitySimpleBaseType. This specific type describes simple string data.

**Restricts:** oval-def:EntitySimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (optional *fixed*='string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityObjectVersionType:  
  
== EntityObjectVersionType ==  
---------------------------------------------------------
The EntityObjectVersionType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes simple version data.

**Restricts:** oval-def:EntitySimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='version')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityObjectRecordType:  
  
== EntityObjectRecordType ==  
---------------------------------------------------------
The EntityObjectRecordType defines an entity that consists of a number of uniquely named fields. This structure is used for representing a record from a database query and other similar structures where multiple related fields must be represented at once. Note that for all entities of this type, the only allowed datatype is 'record' and the only allowed operation is 'equals'. During analysis of a system characteristics item, each field is analyzed and then the overall result for elements of this type is computed by logically anding the results for each field and then applying the entity_check attribute.

Note the datatype attribute must be set to 'record'.

Note the operation attribute must be set to 'equals'.

Note the var_ref attribute is not permitted and the var_check attribute does not apply.

Note that when the mask attribute is set to 'true', all child field elements must be masked regardless of the child field's mask attribute value.

**Extends:** oval-def:EntityComplexBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - field  
      - oval-def:EntityObjectFieldType (0..unbounded)  
      -   
  
.. _EntityObjectFieldType:  
  
== EntityObjectFieldType ==  
---------------------------------------------------------
The EntityObjectFieldType defines an element with simple content that represents a named field in a record that may contain any number of named fields. The EntityObjectFieldType is much like all other entities with one significant difference, the EntityObjectFieldType has a name attribute

The required name attribute specifies a unique name for the field. Field names are lowercase and must be unique within a given parent record element. When analyzing system characteristics an error should be reported for the result of a field that is present in the OVAL State, but not found in the system characteristics Item.

The optional entity_check attribute specifies how to handle multiple record fields with the same name in the OVAL Systems Characteristics file. For example, while collecting group information where one field is the represents the users that are members of the group. It is very likely that there will be multiple fields with a name of 'user' associated with the group. If the OVAL State defines the value of the field with name equal 'user' to equal 'Fred', then the entity_check attribute determines if all values for field entities must be equal to 'Fred', or at least one value must be equal to 'Fred', etc.

Note that when the mask attribute is set to 'true' on a field's parent element the field must be masked regardless of the field's mask attribute value.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - name  
      - Restriction of xsd:string (required)  
      - A string restricted to disallow upper case characters.  
    * - entity_check  
      - oval:CheckEnumeration (optional *default*='all')  
      - (No Description)  
  
  
**Simple Content:** xsd:anySimpleType

.. _EntityStateSimpleBaseType:  
  
== EntityStateSimpleBaseType ==  
---------------------------------------------------------
The EntityStateSimpleBaseType complex type is an abstract type that extends the EntitySimpleBaseType and is used by some entities within an OVAL State.

The optional check_existence attribute specifies how to interpret the status of corresponding item entities when performing an item-state comparison. The default value for this attribute is 'at_least_one_exists' indicating that by default an item comparison may evaluate to true only if at least one corresponding item entity has a status of 'exists'. For example, if a value of 'none_exist' is given, then the comparison can evaluate to true only if there are one or more corresponding item entities, each with a status of 'does not exist'.

The optional entity_check attribute specifies how to handle multiple item entities with the same name in the OVAL Systems Characteristics file. For example, suppose we are dealing with a Group Test and an entity in the state is related to the user. It is very likely that when the information about the group is collected off of the system (and represented in the OVAL System Characteristics file) that there will be multiple users associated with the group (i.e. multiple 'user' item entities associated with the same 'user' state entity). If the OVAL State defines the value of the user entity to equal 'Fred', then the entity_check attribute determines if all values for 'user' item entities must be equal to 'Fred', or at least one value must be equal to 'Fred', etc. Note that with the exception of the 'none_satisfy' check value, the entity_check attribute can only affect the result of the test if the corresponding OVAL Item allows more than one occurrence of the entity (e.g. 'maxOccurs' is some value greater than one).

The entity_check and var_check attributes are considered together when evaluating a single state entity. When a variable identifies more than one value and multiple item entities with the same name exist, for a single state entity, a many-to-many comparison must be conducted. In this situation, there are many values for the state entity that must be compared to many item entities. Each item entity is compared to the state entity. For each item entity, an interim result is calculated by using the var_check attribute to combine the result of comparing each variable value with a single system value. Then these interim results are combined for each system value using the entity_check attribute.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - entity_check  
      - oval:CheckEnumeration (optional *default*='all')  
      - (No Description)  
    * - check_existence  
      - oval:ExistenceEnumeration (optional *default*='at_least_one_exists')  
      - (No Description)  
  
  
**Simple Content:** oval-def:EntitySimpleBaseType

.. _EntityStateComplexBaseType:  
  
== EntityStateComplexBaseType ==  
---------------------------------------------------------
The EntityStateComplexBaseType complex type is an abstract type that extends the EntityComplexBaseType and is used by some entities within an OVAL State.

The optional check_existence attribute specifies how to interpret the status of corresponding item entities when performing an item-state comparison. The default value for this attribute is 'at_least_one_exists' indicating that by default an item comparison may evaluate to true only if at least one corresponding item entity has a status of 'exists'. For example, if a value of 'none_exist' is given, then the comparison can evaluate to true only if there are one or more corresponding item entities, each with a status of 'does not exist'.

The optional entity_check attribute specifies how to handle multiple item entities with the same name in the OVAL Systems Characteristics file. For example, suppose we are dealing with a Group Test and an entity in the state is related to the user. It is very likely that when the information about the group is collected off of the system (and represented in the OVAL System Characteristics file) that there will be multiple users associated with the group (i.e. multiple 'user' item entities associated with the same 'user' state entity). If the OVAL State defines the value of the user entity to equal 'Fred', then the entity_check attribute determines if all values for 'user' item entities must be equal to 'Fred', or at least one value must be equal to 'Fred', etc. Note that with the exception of the 'none_satisfy' check value, the entity_check attribute can only affect the result of the test if the corresponding OVAL Item allows more than one occurrence of the entity (e.g. 'maxOccurs' is some value greater than one).

The entity_check and var_check attributes are considered together when evaluating a single state entity. When a variable identifies more than one value and multiple item entities with the same name exist, for a single state entity, a many-to-many comparison must be conducted. In this situation, there are many values for the state entity that must be compared to many item entities. Each item entity is compared to the state entity. For each item entity, an interim result is calculated by using the var_check attribute to combine the result of comparing each variable value with a single system value. Then these interim results are combined for each system value using the entity_check attribute.

**Extends:** oval-def:EntityComplexBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - entity_check  
      - oval:CheckEnumeration (optional *default*='all')  
      - (No Description)  
    * - check_existence  
      - oval:ExistenceEnumeration (optional *default*='at_least_one_exists')  
      - (No Description)  
  
  
.. _EntityStateIPAddressType:  
  
== EntityStateIPAddressType ==  
---------------------------------------------------------
The EntityStateIPAddressType type is extended by the entities of an individual OVAL State. This type provides uniformity to each object entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes any IPv4/IPv6 address or address prefix.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - Restriction of oval:SimpleDatatypeEnumeration (required) ('ipv4_address', 'ipv6_address')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityStateIPAddressStringType:  
  
== EntityStateIPAddressStringType ==  
---------------------------------------------------------
The EntityStateIPAddressStringType type is extended by the entities of an individual OVAL State. This type provides uniformity to each object entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes any IPv4/IPv6 address, address prefix, or its string representation.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - Restriction of oval:SimpleDatatypeEnumeration (optional *default*='string') ('ipv4_address', 'ipv6_address', 'string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityStateAnySimpleType:  
  
== EntityStateAnySimpleType ==  
---------------------------------------------------------
The EntityStateAnySimpleType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes any simple data.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (optional *default*='string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityStateBinaryType:  
  
== EntityStateBinaryType ==  
---------------------------------------------------------
The EntityStateBinaryType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes simple binary data. The empty string is also allowed when using a variable reference with an element.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='binary')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:hexBinary, oval:EmptyStringType

.. _EntityStateBoolType:  
  
== EntityStateBoolType ==  
---------------------------------------------------------
The EntityStateBoolType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes simple boolean data. The empty string is also allowed when using a variable reference with an element.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='boolean')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:boolean, oval:EmptyStringType

.. _EntityStateFloatType:  
  
== EntityStateFloatType ==  
---------------------------------------------------------
The EntityStateFloatType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes simple float data. The empty string is also allowed when using a variable reference with an element.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='float')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:float, oval:EmptyStringType

.. _EntityStateIntType:  
  
== EntityStateIntType ==  
---------------------------------------------------------
The EntityStateIntType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes simple integer data. The empty string is also allowed when using a variable reference with an element.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='int')  
      - (No Description)  
  
  
**Simple Content:** Union of xsd:integer, oval:EmptyStringType

.. _EntityStateEVRStringType:  
  
== EntityStateEVRStringType ==  
---------------------------------------------------------
The EntityStateEVRStringType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This type represents the epoch, version, and release fields, for an RPM package, as a single version string. It has the form "EPOCH:VERSION-RELEASE". Note that a null epoch (or '(none)' as returned by rpm) is equivalent to '0' and would hence have the form 0:VERSION-RELEASE. Comparisons involving this datatype should follow the algorithm of librpm's rpmvercmp() function.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='evr_string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityStateDebianEVRStringType:  
  
== EntityStateDebianEVRStringType ==  
---------------------------------------------------------
The EntityStateDebianEVRStringType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This type represents the epoch, upstream_version, and debian_revision fields, for a Debian package, as a single version string. It has the form "EPOCH:UPSTREAM_VERSION-DEBIAN_REVISION". Note that a null epoch (or '(none)' as returned by dpkg) is equivalent to '0' and would hence have the form 0:UPSTREAM_VERSION-DEBIAN_REVISION. Comparisons involving this datatype should follow the algorithm outlined in Chapter 5 of the "Debian Policy Manual" (https://www.debian.org/doc/debian-policy/ch-controlfields.html#s-f-Version). An implementation of this is the cmpversions() function in dpkg's enquiry.c.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='debian_evr_string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityStateVersionType:  
  
== EntityStateVersionType ==  
---------------------------------------------------------
The EntityStateVersionType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes simple version data.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='version')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityStateFileSetRevisionType:  
  
== EntityStateFileSetRevisionType ==  
---------------------------------------------------------
The EntityStateFileSetRevisionType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type represents the version string related to filesets in HP-UX.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required *fixed*='fileset_revision')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityStateIOSVersionType:  
  
== EntityStateIOSVersionType ==  
---------------------------------------------------------
The EntityStateIOSVersionType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type represents the version string related to CISCO IOS.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - Restriction of oval:SimpleDatatypeEnumeration (optional *default*='string') ('ios_version', 'string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityStateStringType:  
  
== EntityStateStringType ==  
---------------------------------------------------------
The EntityStateStringType type is extended by the entities of an individual OVAL State. This type provides uniformity to each state entity by including the attributes found in the EntityStateSimpleBaseType. This specific type describes simple string data.

**Restricts:** oval-def:EntityStateSimpleBaseType

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - datatype  
      - oval:SimpleDatatypeEnumeration (optional *fixed*='string')  
      - (No Description)  
  
  
**Simple Content:**  Restricts xsd:string

.. _EntityStateRecordType:  
  
== EntityStateRecordType ==  
---------------------------------------------------------
The EntityStateRecordType defines an entity that consists of a number of uniquely named fields. This structure is used for representing a record from a database query and other similar structures where multiple related fields must be collected at once. Note that for all entities of this type, the only allowed datatype is 'record' and the only allowed operation is 'equals'. During analysis of a system characteristics item, each field is analyzed and then the overall result for elements of this type is computed by logically anding the results for each field and then applying the entity_check attribute.

Note the datatype attribute must be set to 'record'.

Note the operation attribute must be set to 'equals'.

Note the var_ref attribute is not permitted and the var_check attribute does not apply.

Note that when the mask attribute is set to 'true', all child field elements must be masked regardless of the child field's mask attribute value.

**Extends:** oval-def:EntityStateComplexBaseType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - field  
      - oval-def:EntityStateFieldType (0..unbounded)  
      -   
  
.. _EntityStateFieldType:  
  
== EntityStateFieldType ==  
---------------------------------------------------------
The EntityStateFieldType defines an element with simple content that represents a named field in a record that may contain any number of named fields. The EntityStateFieldType is much like all other entities with one significant difference, the EntityStateFieldType has a name attribute

The required name attribute specifies a unique name for the field. Field names are lowercase and must be unique within a given parent record element. When analyzing system characteristics an error should be reported for the result of a field that is present in the OVAL State, but not found in the system characteristics Item.

The optional entity_check attribute specifies how to handle multiple record fields with the same name in the OVAL Systems Characteristics file. For example, while collecting group information where one field is the represents the users that are members of the group. It is very likely that there will be multiple fields with a name of 'user' associated with the group. If the OVAL State defines the value of the field with name equal 'user' to equal 'Fred', then the entity_check attribute determines if all values for field entities must be equal to 'Fred', or at least one value must be equal to 'Fred', etc.

Note that when the mask attribute is set to 'true' on a field's parent element the field must be masked regardless of the field's mask attribute value.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - name  
      - Restriction of xsd:string (required)  
      - A string restricted to disallow upper case characters.  
    * - entity_check  
      - oval:CheckEnumeration (optional *default*='all')  
      - (No Description)  
  
  
**Simple Content:** xsd:anySimpleType

