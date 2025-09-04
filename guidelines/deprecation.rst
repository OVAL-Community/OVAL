.. _deprecation:

OVAL Language Deprecation Policy
===============

Definition
------------

When an OVAL Language construct is marked as deprecated its usage becomes strongly discouraged and it may be removed in a later release.

Reasons
------------

#. Security Issues.
#. Language Consistency (element naming, behavior, etc.).
#. Obsolete: new technologies and methodologies render a current language construct obsolete.


Deprecation Policy
------------

#. All existing constructs (elements, attributes, schema types, enumerated values, etc.) must go through a deprecation phase prior to being removed.
#. The duration of deprecation phases will be in terms of releases.
#. Language constructs will remain in a deprecated state for at least one release.  During this time deprecated constructs will be flagged using a machine-readable flag.
   Dates should not dictate the duration of an item's deprecation status. Because some language features are less complex than others the impact felt by deprecating constructs varies across the language.
#. All deprecated constructs will be accompanied by a message explaining the reasoning for the deprecation and a pointer to its replacement (if applicable) as well as the version of OVAL in which the construct became deprecated.
#. Prior to a release, deprecated and removed constructs will be announced via email and posted on the OVAL Web site.


Deprecation Process
------------

#. Construct is nominated for deprecation via email to the OVAL Developer List.
#. Pending discussion and agreement, the element will be elected to deprecated status in the next release.
#. Pending discussion and agreement, the element will be removed from the appropriate schema after being deprecated for the duration of at least one minor version.
   </ol>

Deprecation Detection
------------

The OVAL Common Schema will include a 'deprecated_info' element which defines a structure that will be used to flag schema-defined constructs as deprecated.

The deprecated_info element:

#. Version: The version of OVAL in which it became deprecated.
#. Reason: An explanation as to why it was deprecated and possible alternatives.
#. Comment: Additional information regarding the element&#8217;s deprecated status.

This element will be implemented inside of an xsd:<appinfo> container inside of a language construct.  It will be accompanied by a Schematron rule that will report a warning for using a deprecated element upon validation.

Example
------------
<snippet>
  <content><![CDATA[
.. code-block:: ${1:type}
  :linenos:
  
   <xsd:element name="fileauditedpermissions_test" substitutionGroup="oval-def:test">
     <xsd:annotation>
       <!-- annotations -->
     </xsd:annotation>
     <xsd:appinfo>
       <oval:deprecated_info>
         <oval:version>5.5</oval:version>
         <oval:reason>Replaced by filesaudtiedpermissions_better_test>/oval:reason>
         <oval:comment>Did not align with Win32 API>/oval:comment>
       </oval:deprecated_info>
       <sch:pattern id="foo_pattern">
         <sch:rule context="win-def:fileauditedpermissions_test">
           <sch:report>
             DEPRECATED ELEMENT: <sch:value-of select="name()"/>
   	</sch:report>
         </sch:rule>
       </sch:pattern>
     </xsd:appinfo>
     <!-- element definition -->
   </xsd:element>
