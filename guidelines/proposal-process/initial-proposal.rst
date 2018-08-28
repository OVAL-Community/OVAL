.. _initial-proposal:

Initial Proposal
================

An addition, modification, or removal of OVAL elements begins with an issue.  An issue may define an abstract problem statement and recommend one to many language changes.  Language contributors may choose to begin the process of proposal and implementation based on an open issue.  Starting with the abstract/problem statement in the issue, an initial proposal can be written, expanding on the problem statement, and suggesting potential solutions.

The initial proposal submission MUST include an abstract, describing the problem and expanding on the current limitations of OVAL which inform the proposal.  Following the abstract, technical documentation SHOULD be included, describing a potential solution.  

Within the technical documentation, contributors MAY include links to updated OVAL language schema files, links to new OVAL schema files, and descriptive information for any elements being added to OVAL.  The element descriptions MUST include name, datatype, and description.  Contributors MAY include schema or schematron validations in the proposal as well.  Finally, the technical documentation SHOULD include proposed collection methods for any new/updated schema elements.  For example, if a new test/object/state is being added to OVAL which require parsing of command-line output, the appropriate commands and command options SHOULD be included, potentially including links to relevant "man" pages.  Any required API documentation SHOULD also be linked.

(This may change - Based on the subsequent modification/acceptance of the proposal, workflow may dictage that sample content/results should come later)

Following the technical documentation, contributors SHOULD include sample content which implementers can use for testing purposes.  If the proposal author(s) have already implemented the functionality represented in the proposal, sample content plus OVAL results SHOULD be included.

How To
------

The initial proposal process begins with a pull request.  The title of the pull request MUST follow the format "Proposal: <Title>"

Step-by-step instuctions including CLI samples if appropriate.

FAQs
----

Some FAQs about steps and any associated process details.

Documentation Links
-------------------

Links to process docs?
