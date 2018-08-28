.. _objections:

Objections
==========

Objections are a mechanism for blocking an open Proposal that conflicts with an :ref:`OVAL Design Principle <oval-design-principles>`.

First Steps
-----------

Before making an Objection:

#. **Collaborate**: You MUST make a good faith attempt to engage with the Proposal Author and wider community by commenting on the Proposal (i.e. the Pull Request) and explaining your concerns. Typically, the community can work together on the Proposal to clarify any misconceptions and revise the Proposal, if necessary, to avoid any negative impact.
#. **Allow Time**: You MUST give the Proposal Author and community some time (at least a few days) to respond to your comments.
#. **Suggest a Better Way**: If possible, you SHOULD make an Alternate Proposal to resolve the Issue and address your concerns.


How To
------

1. Complete the `First Steps`_ above
2. Identify the specific :ref:`oval-design-principles` that the Proposal conflicts with. Or, if the Proposal does not conflict with an existing Design Principle, you may draft and propose a new Design Principle.
3. Create a `New Issue <https://github.com/CISecurity/oval-governance-update/issues/new>`_ as follows:

   - Title Format: ``Objection to #<pull-request-#>: <proposal-title>``
   - Area Label: add any ``Area:<area-name>`` labels attached to the PR
   - Type Label: add the ``Type:Objection``
   - Comments:

     - Include a link to the `First Steps`_ you have taken
     - Include each existing :ref:`Design Principles<oval-design-principles>`, if any, that the Proposal conflicts with and how it conflicts
     - Include each proposed new Design Principle, if any, along with a general justification for the Design Principle and how it conflicts with the Proposal

4. Add a comment to the Proposal PR linking to the Objection Issue
5. The relevant Area Supervisor will give the community a reasonable amount of time (at least a few days) to weigh in on the Objection and then, when appropriate in their judgement, :ref:`assess consensus<consensus-building>`.

   - If the Objection is accepted, the Supervisor will:

     - Add a comment to the Proposal PR indicating that the Objection was accepted
     - Reject the Propsal PR
     - Add a comment to the Objection Issue indicating that it was accepted
     - Close the Objection Issue

   - If the Objection is not accepted, the Supervisor will:

     - Add a comment to the Proposal PR indicating that the Objection was not accepted
     - Add a comment to the Objection Issue indicating that it was not accepted
     - Close the Objection Issue

Add detail for supervisor actions: if accepted, if rejected

FAQs
----

What if my Objection is not accepted and the Proposal is accepted? 
  You may follow the Proposal Process to further improve OVAL.

Documentation Links
-------------------

Links to process docs?
