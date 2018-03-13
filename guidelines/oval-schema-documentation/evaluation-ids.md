# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: OVAL Definition Interpreter - Evaluation Id Schema  
* Version: 5.11.2  
* Release Date: 11/30/2016 09:00:00 AM

This schema defines an xml format for inputing a set of OVAL Definition ids into the reference OVAL Interpreter for evaluation.

______________
  
## <a name="evalutation-definition-ids"></a>< evalutation-definition-ids >

The evaluation-definition-ids element is the root the Document. Its purpose is to bind together the a set of definition elements.

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| definition | [oval:DefinitionIDPattern](oval-common-schema.md#DefinitionIDPattern)  (1..unbounded) |  
||<div>Each definition represents the id of a definition to be evaluated.</div>|  
  
