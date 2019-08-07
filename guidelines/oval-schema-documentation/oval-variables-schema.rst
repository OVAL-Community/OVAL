Open Vulnerability and Assessment Language: Core Variable  
=========================================================
* Schema: Core Variable  
* Version: 5.11.2  
* Release Date: 11/30/2016 09:00:00 AM



The following is a description of the elements, types, and attributes that compose the core schema for encoding Open Vulnerability and Assessment Language (OVAL) Variables. This schema is provided to give structure to any external variables and their values that an OVAL Definition is expecting.

The OVAL Schema is maintained by The MITRE Corporation and developed by the public OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.mitre.org.

______________
  
.. _oval_variables:  
  
< oval_variables >  
---------------------------------------------------------
The oval_variables element is the root of an OVAL Variable Document. Its purpose is to bind together the different variables contained in the document. The generator section must be present and provides information about when the variable file was compiled and under what version. The optional Signature element allows an XML Signature as defined by the W3C to be attached to the document. This allows authentication and data integrity to be provided to the user. Enveloped signatures are supported. More information about the official W3C Recommendation regarding XML digital signatures can be found at http://www.w3.org/TR/xmldsig-core/.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - generator  
      - oval:GeneratorType (1..1)  
      -   
    * - variables  
      - oval-var:VariablesType (0..1)  
      -   
    * - ds:Signature  
      - n/a (0..1)  
      -   
  
______________
  
.. _VariablesType:  
  
== VariablesType ==  
---------------------------------------------------------
The VariablesType complex type is a container for one or more variable elements. Each variable element holds the value of an external variable used in an OVAL Definition. Please refer to the description of the VariableType for more information about an individual variable.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - variable  
      - oval-var:VariableType (1..unbounded)  
      -   
  
.. _VariableType:  
  
== VariableType ==  
---------------------------------------------------------
Each variable element contains the associated datatype and value which will be substituted into the OVAL Definition that is referencing this specific variable.

The notes section of a variable should be used to hold information that might be helpful to someone examining the technical aspects of the variable. Please refer to the description of the NotesType complex type for more information about the notes element.

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
    * - datatype  
      - oval:SimpleDatatypeEnumeration (required)  
      - Note that the 'record' datatype is not permitted on variables.  
    * - instance  
      - xsd:nonNegativeInteger  
      - Use to specify multiple variable instances.  
    * - comment  
      - xsd:string (required)  
      - (No Description)  
  
  
Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - value  
      - xsd:anySimpleType (1..unbounded)  
      -   
    * - notes  
      - oval:NotesType (0..1)  
      -   
  
