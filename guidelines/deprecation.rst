.. _deprecation:

OVAL Language Deprecation Policy
===============

.. raw:: html

   <h3>Definition</h3>

.. raw:: html

   <p>When an OVAL Language construct is marked as deprecated its usage becomes strongly discouraged and it may be removed in a later release.</p>

.. raw:: html

   <h3>Reasons</h3>
   <ol>
   <li>Security Issues.</li>
   <li>Language Consistency (element naming, behavior, etc.).</li>
   <li>Obsolete: new technologies and methodologies render a current language construct obsolete.</li>
   </ol>

.. raw:: html

   <h3>Deprecation Policy</h3>
   <ol>
   <li>All existing constructs (elements, attributes, schema types, enumerated values, etc.) must go through a deprecation phase prior to being removed.</li>
   <li>The duration of deprecation phases will be in terms of releases.</li>
   <li>Language constructs will remain in a deprecated state for at least one release.  During this time deprecated constructs will be flagged using a machine-readable flag.
   Dates should not dictate the duration of an item&#8217;s deprecation status. Because some language features are less complex than others the impact felt by deprecating constructs varies across the language.
   </li>
   <li>All deprecated constructs will be accompanied by a message explaining the reasoning for the deprecation and a pointer to its replacement (if applicable) as well as the version of OVAL in which the construct became deprecated.</li>
   <li>Prior to a release, deprecated and removed constructs will be announced via email and posted on the OVAL Web site.</li>
   </ol>

.. raw:: html

   <h3>Deprecation Process</h3>
   <ol>
   <li>Construct is nominated for deprecation via email to the OVAL Developer List.</li>
   <li>Pending discussion and agreement, the element will be elected to deprecated status in the next release.</li>
   <li>Pending discussion and agreement, the element will be removed from the appropriate schema after being deprecated for the duration of at least one minor version.</li>
   </ol>

.. raw:: html

   <h3 style="margin-top:1em">Deprecation Detection</h3>

.. raw:: html

   <p>The OVAL Common Schema will include a &quot;deprecated_info&quot; element which defines a structure that will be used to flag schema-defined constructs as deprecated.</p>

.. raw:: html

   <p style="margin-bottom:.5em">The deprecated_info element:</p>
   <ul>
   <li>Version: The version of OVAL in which it became deprecated.</li>
   <li>Reason: An explanation as to why it was deprecated and possible alternatives.</li>
   <li>Comment: Additional information regarding the element&#8217;s deprecated status.</li>
   </ul>

.. raw:: html

   <p>This element will be implemented inside of an &lt;xsd:appinfo&gt; container inside of a language construct.  It will be accompanied by a Schematron rule that will report a warning for using a deprecated element upon validation.</p>

.. raw:: html

   <h3>Example</h3>
   <pre>
   &lt;xsd:element name=&quot;fileauditedpermissions_test&quot; substitutionGroup=&quot;oval-def:test&quot;&gt;
     &lt;xsd:annotation&gt;
       &lt;!-- annotations --&gt;
     &lt;/xsd:annotation&gt;
     &lt;xsd:appinfo&gt;
       &lt;oval:deprecated_info&gt;
         &lt;oval:version&gt;5.5&lt;/oval:version&gt;
         &lt;oval:reason&gt;Replaced by filesaudtiedpermissions_better_test&gt;/oval:reason&gt;
         &lt;oval:comment&gt;Did not align with Win32 API&gt;/oval:comment&gt;
       &lt;/oval:deprecated_info&gt;
       &lt;sch:pattern id=&quot;foo_pattern&quot;&gt;
         &lt;sch:rule context=&quot;win-def:fileauditedpermissions_test&quot;&gt;
           &lt;sch:report&gt;
             DEPRECATED ELEMENT: &lt;sch:value-of select=&quot;name()&quot;/&gt;
       &lt;/sch:report&gt;
         &lt;/sch:rule&gt;
       &lt;/sch:pattern&gt;
     &lt;/xsd:appinfo&gt;
     &lt;!-- element definition --&gt;
   &lt;/xsd:element&gt;
   </pre>
