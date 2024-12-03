Open Vulnerability and Assessment Language: Core Directives  
=========================================================
* Schema: Core Directives  
* Version: 5.12  
* Release Date: 11/29/2024 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the core schema for encoding Open Vulnerability and Assessment Language (OVAL) Directives. Each of the elements, types, and attributes that make up the Core Directives Schema are described in detail and should provide the information necessary to understand what each object represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between these objects is not outlined here.

The OVAL Schema is maintained by The MITRE Corporation and developed by the public OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.mitre.org.

______________
  
.. _oval_directives:  
  
< oval_directives >  
---------------------------------------------------------
The oval_directives element is the root of an OVAL Directive Document. Its purpose is to bind together the generator and the set of directives contained in the document. The generator section must be present and provides information about when the directives document was compiled and under what version. The optional Signature element allows an XML Signature as defined by the W3C to be attached to the document. This allows authentication and data integrity to be provided to the user. Enveloped signatures are supported. More information about the official W3C Recommendation regarding XML digital signatures can be found at http://www.w3.org/TR/xmldsig-core/.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - generator  
      - oval:GeneratorType (1..1)  
      - The required generator section provides information about when the directives document was compiled and under what version.  
    * - directives  
      - oval-res:DefaultDirectivesType (1..1)  
      - The required directives section presents flags describing what information must be been included in an oval results document. This element represents the default set of directives. These directives apply to all classes of definitions for which there is not a class specific set of directives.  
    * - class_directives  
      - oval-res:ClassDirectivesType (0..5)  
      - The optional class_directives section presents flags describing what information has been included in the results document for a specific OVAL Definition class. The directives for a particlar class override the default directives.  
    * - ds:Signature  
      - n/a (0..1)  
      - The optional Signature element allows an XML Signature as defined by the W3C to be attached to the document. This allows authentication and data integrity to be provided to the user. Enveloped signatures are supported. More information about the official W3C Recommendation regarding XML digital signatures can be found at http://www.w3.org/TR/xmldsig-core/.  
  
