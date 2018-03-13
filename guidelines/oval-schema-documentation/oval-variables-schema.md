# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Core Variable  
* Version: 5.11.2  
* Release Date: 11/30/2016 09:00:00 AM



The following is a description of the elements, types, and attributes that compose the core schema for encoding Open Vulnerability and Assessment Language (OVAL) Variables. This schema is provided to give structure to any external variables and their values that an OVAL Definition is expecting.

The OVAL Schema is maintained by The MITRE Corporation and developed by the public OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.mitre.org.

______________
  
## <a name="oval_variables"></a>< oval_variables >

The oval_variables element is the root of an OVAL Variable Document. Its purpose is to bind together the different variables contained in the document. The generator section must be present and provides information about when the variable file was compiled and under what version. The optional Signature element allows an XML Signature as defined by the W3C to be attached to the document. This allows authentication and data integrity to be provided to the user. Enveloped signatures are supported. More information about the official W3C Recommendation regarding XML digital signatures can be found at http://www.w3.org/TR/xmldsig-core/.

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| generator | [oval:GeneratorType](oval-common-schema.md#GeneratorType)  (1..1) |  
|||  
| variables | [oval-var:VariablesType](oval-variables-schema.md#VariablesType)  (0..1) |  
|||  
| [ds:Signature](http://www.w3.org/TR/xmldsig-core/#sec-Signature)  | n/a (0..1) |  
|||  
  
______________
  
## <a name="VariablesType"></a>== VariablesType ==

The VariablesType complex type is a container for one or more variable elements. Each variable element holds the value of an external variable used in an OVAL Definition. Please refer to the description of the VariableType for more information about an individual variable.

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| variable | [oval-var:VariableType](oval-variables-schema.md#VariableType)  (1..unbounded) |  
|||  
  
## <a name="VariableType"></a>== VariableType ==

Each variable element contains the associated datatype and value which will be substituted into the OVAL Definition that is referencing this specific variable.

The notes section of a variable should be used to hold information that might be helpful to someone examining the technical aspects of the variable. Please refer to the description of the NotesType complex type for more information about the notes element.

#### Attributes:

*	**id** [oval:VariableIDPattern](oval-common-schema.md#VariableIDPattern)  (required)  
*	**datatype** [oval:SimpleDatatypeEnumeration](oval-common-schema.md#SimpleDatatypeEnumeration)  (required)  
Note that the 'record' datatype is not permitted on variables.  
*	**instance** xsd:nonNegativeInteger  
Use to specify multiple variable instances.  
*	**comment** xsd:string (required)  
  
| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| value | xsd:anySimpleType (1..unbounded) |  
|||  
| notes | [oval:NotesType](oval-common-schema.md#NotesType)  (0..1) |  
|||  
  
