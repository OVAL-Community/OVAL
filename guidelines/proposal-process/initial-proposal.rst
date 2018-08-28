.. _initial-proposal:

Initial Proposal
================

An addition, modification, or removal of OVAL elements begins with an `issue <https://oval-community-guidelines.readthedocs.io/en/latest/proposal-process/create-an-issue.html>`_.  An issue may define an abstract problem statement and recommend one to many language changes.  Language contributors may choose to begin the process of proposal and implementation based on an open issue.  Starting with the abstract/problem statement in the issue, an initial proposal can be written, expanding on the problem statement, and suggesting potential solutions.

Abstract
--------

The initial proposal submission MUST include an abstract, describing the problem and expanding on the current limitations of OVAL which inform the proposal.  Following the abstract, technical documentation SHOULD be included, describing a potential solution.

Technical Documentation
-----------------------

Within the technical documentation, contributors MAY include:

* links to updated OVAL language schema files, 
* links to new OVAL schema files, 
* descriptive information for any elements being added to OVAL

	* Any new or updated OVAL elements MUST include name, datatype, and description
	* Whenever possible, mappings to underlying system structures or command output SHOULD be included in element descriptions.

* schema or schematron validations.  

Finally, the technical documentation SHOULD include proposed collection methods for any new/updated schema elements.  For example, if a new test/object/state is being added to OVAL which require parsing of command-line output, the appropriate commands and command options SHOULD be included, potentially including links to relevant "man" pages or any required API documentation.

(This may change - Based on the subsequent modification/acceptance of the proposal, workflow may dictate that sample content/results should come later)

Following the technical documentation, contributors MAY include sample content, from which implementers can begin the review and consensus process.  If the proposal author(s) have already implemented the functionality represented in the proposal, sample content plus OVAL results MAY be included.

How To
------

The initial proposal process MUST begin with a pull request.

* The title of the pull request MUST follow the ``Proposal: <Title>`` naming convention
* The labels for the pull request MUST

	* correspond to the label assigned to the issue for which this proposal was initiated, as noted in the `create an issue <https://oval-community-guidelines.readthedocs.io/en/latest/proposal-process/create-an-issue.html>`_ section, and
	* contain any ``<Area: area-name>`` labels as needed.

* The body of the pull request MUST include a reference to the issue for which this proposal was initiated.

Submission of the pull request affirms the intent to begin the `consensus building <https://oval-community-guidelines.readthedocs.io/en/latest/proposal-process/consensus-building.html>`_ process, and to begin the 45-day comment period.

FAQs
----

Some FAQs about steps and any associated process details.

Documentation Links
-------------------

Links to process docs?
