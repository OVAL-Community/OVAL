Open Vulnerability and Assessment Language: OVAL Definition Interpreter - Evaluation Id Schema  
=========================================================
* Schema: OVAL Definition Interpreter - Evaluation Id Schema  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

This schema defines an xml format for inputing a set of OVAL Definition ids into the reference OVAL Interpreter for evaluation.

______________
  
.. _evalutation-definition-ids:  
  
< evalutation-definition-ids >  
---------------------------------------------------------
The evaluation-definition-ids element is the root the Document. Its purpose is to bind together the a set of definition elements.

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - definition  
      - oval:DefinitionIDPattern (1..unbounded)  
      - Each definition represents the id of a definition to be evaluated.  
  
