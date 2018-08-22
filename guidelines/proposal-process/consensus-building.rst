.. _consensus-building:

Consensus Building
==================

The intent behind consensus in the context of the OVAL Community is the notion of what is known as `rough consensus <https://en.wikipedia.org/wiki/Rough_consensus>`_. This does not require all participants to agree, and it's not a voting mechanism. The gist of it is that no serious, unaddressed objections exist. As mentioned in the previously described characteristics, it will be up to the Area Supervisors to judge rough consensus. Then, if there is an objection to a proposal, and that objection has been sufficiently addressed, then we can move forward. Conversely, if there is an objection that has not been sufficiently addressed, we know the process cannot move forward. This notion has worked well in other venues, and we believe it will serve us well here also.

How To
------
The consensus building process involves four roles: Proposer, Objector, Area Supervisor, Leadership Board. Not all roles are involved in each instance of conensus building.

Initial Proposal
^^^^^^^^^^^^^^^^
The consensus process begins when a Proposer makes a proposal (see `Initial Proposal <https://oval-community-guidelines.readthedocs.io/en/latest/proposal-process/initial-proposal.html>`_). At this point, the 45-day clock is started - if no objections/issues are raised within this 45-day period, the proposal moves directly into Consensus Call, as described below. From time to time, an initial proposal may be a response to another proposal for which one or more issues have been raised.

Objection Handling
^^^^^^^^^^^^^^^^^^
After an initial proposal, one or more issues may be raised by anyone in the community. We refer to anyone raising such an issue as an Objector, even though some objections may be be, for example, a clarifying question. When an issue is raised, it will fall into one of the following categories:

- **Clarifying question:** The Proposer must provide an answer to the question within a reasonable amount of time.
- **Objection based on existing, or presumed missing, Design Principle:** Sometimes a proposal may be in violation of an existing Design Principle. When this is the case, the proper response is to simply address the objection as such. From time to time we expect to update our Design Principles based on an objection. When this is the case, the Proposer, Objector, and Area Supervisor work to update the Design Principle according to this process.
- **Objection based on some other reason (i.e. unnecessary or technically unsound proposal):** The Proposer works to reasonably address the objection.

In each of the above scenarios, an entire discussion may result, and at some point there will be a conclusion to the discussion. From time to time the conclusion might be a perceived impasse. Additionally, an *alternate proposal* may be created (see `Alternate Proposals <https://oval-community-guidelines.readthedocs.io/en/latest/proposal-process/alternate-proposals.html>`_).

When all issues and resulting discussions are concluded, then the process moves to into Consensus Call.

Consensus Call
^^^^^^^^^^^^^^
The purpose of a Consensus Call is to provide a 14-day period during which community members who may have missed the initial proposal and subsequent discussions have an opportunity to opine. The Area Supervisor determines when an effort is ready for a Consensus Call. From time to time, the Leadership Board may be consulted when a consensus call is too difficult for an Area Supervisor to judge.

Once consensus has been reached (see About Consensus below) as judged by the Area Supervisor and the 14-day Consensus Call has come to a close, the proposal moves to release (see `Release Process <https://oval-community-guidelines.readthedocs.io/en/latest/proposal-process/release-process.html>`_).

About Consensus
---------------

Because our process is open to the possibility of accepting proposals that may not enjoy wide interest, it may end up being the case that a proposal achieves rough consensus, even though only two or three parties support it (everyone else may be completely indifferent). In this situation, there are no objections to the proposal, but there's also not necessarily a critical mass of support. In this case, there is no harm in such a minimally supported proposal "making it through" - there are, after all, no objections to the proposal, and we must assume that those interested in that particular area are paying attention enough to otherwise object. In other words, this is why we have the desire to retain and keep interested and active Area Supervisors.

Reaching consensus is really about carrying on a conversation. Because each proposal is composed of a GitHub issue and pull request, such conversation should be conducted via those GitHub constructs, so that the entire community sees the conversation as it unfolds, and therefore has an opportunity to opine, should they have an opinion worth stating.

It is the responsibility of all interested parties to achieve consensus. Getting to consensus is not necessarily the Area Supervisor's responsibility, nor is it exclusively the proposer's responsibility. Here are some guidelines that may help in reaching consensus:

- Ensure the proposal is clearly scoped
- List each concern participants have about the proposal
- Use quick, simple polls to quickly guage interest in a solution [#]_
- Understand that lack of disagreement is *more important* than total agreement
- Rough consensus is achieved when all issues are addressed, but not necessarily accommodated
- Rough consensus is *not* about for and against cohorts


FAQs
----

**What are the principles of consensus building?**

* **Inclusion:** Everyone in the community has a voice, and their voice is valued.
* **Participation:** People are participating - consensus is not nearly as effective when only a few (or worse, no one but the proposer) are really involved int he discussion.
* **Cooperation:** Individuals and organizations need to work toward the common goal of finding a solution in the best interest of the community.
* **Egalitarianism:** No one person's voice necessarily carries any more weight than an other's.
* **Solution-mindedness:** Always keep the solution in mind, which helps to avoid any perceived inter-organizational/-personal conflicts

**What are the benefits of using a consensus processs?**

An ideal outcome of a consensus process is that everyone is enthusiastically supportive of a proposal. However, the well-known aphroism states, "perfect is the enemy of the good". The real benefit of a consensus process is that parties with sometimes differing perspectives and needs are satisfied, if not necessarily emhpatically pleased, with a given solution.

**Does consenting to a solution mean it's my first choice?**

Not at all. Consenting to a solution simply means that you agree to the solution being proposed, not that it's your ideal solution. Sometimes this is known as disagree and commit. You may disagree that this is the *best* solution, from your singular perspective, but commit to supporting the solution as the *overall better* solution for the community as a whole.

**Who judges rough consensus?**

As described in our process, the Area Supervisor (from time to time under the guidance of the Leadership Board) will be the judge of rough consensus.

**What about this for and against cohort thing?**

A really good treatment is found in `RFC7282 <https://datatracker.ietf.org/doc/rfc7282/>`_ of the IETF. There are two sections in particular that describe situations where there may be vast numbers for or against, but the rough consensus is still against or for respectively. In cases like this, the Area Supervisor's challenge will be to sift through the yeas and the nays to determine which of those voices have been *active throughout the discussion regarding the proposal*.

Documentation Links
-------------------

* `An IETF Informational document on rough consensus <https://datatracker.ietf.org/doc/rfc7282/>`_


.. :rubric Footnotes

.. [#] Doodle Polls (see `this <https://doodle.com/create-choice>`_) are a good way to conduct simple polls.
