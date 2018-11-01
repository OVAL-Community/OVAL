.. _release-process:

Release Process
===============

The OVAL release process will see a given proposal being, in effect, accepted into one of four release streams:

1. **Extensions:** Proposals that are made available as an *unofficial* extension after not being adopted by the community.
2. **Development:** All adopted proposals awaiting a sufficient number of :ref:`qualifying-implementations` or the next scheduled stable release date.
3. **Stable:** All adopted proposals that have a sufficient number of Qualifying Implementations as of the most recent stable release date on February 1st and August 1st of each year.
4. **Official:** A stable release that the OVAL board selects as the Official release at least once each year.


How To: Release Streams
-----------------------

Extension Stream Release Process
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The extension release stream includes proposals that were not adopted, but have been made available as unofficial extensions to the OVAL Language. Extensions enable community members to publicly document schemas that are not adopted by the community.

1. A proposal is not adopted (e.g. fails due to an objection or an alternative proposal being selected).
2. The extension MUST:

  1. Be expressed as a valid XSD
  2. Have publicly available documentation
  3. Have at least one implementation
  4. Have at least one, and preferably several, content examples

3. Any community member requests that the proposal is published as an extension by adding a comment to the rejected proposal
4. The relevant Area Supervisor publishes the proposal to the extensions release stream

Extension Stream CLI Example
""""""""""""""""""""""""""""
TBD

Development Stream Release Process
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The development release stream includes all adopted proposals that are awaiting sufficient :ref:`qualifying-implementations` or the next scheduled Stable Release date.

1. A proposal is adopted via the standard community process
2. The relevant Area Supervisor publishes the Proposal immediately to the Development release stream

Development Stream CLI Example
""""""""""""""""""""""""""""""
TBD

Stable Stream Release Process
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The stable release stream includes all proposals that have been adopted by the community via the standard proposal process and have a sufficient number of :ref:`qualifying-implementations` as of the semi-annual stable release dates (February 1 and August 1 of each year).

1. A proposal in the development release stream is implemented by a sufficient number of :ref:`qualifying-implementations`
2. On a release date, Area Supervisors publish all such proposals to the Stable release stream no later than 23:59 UTC.

Stable Stream CLI Example
"""""""""""""""""""""""""
TBD

Official Stream Release Process
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The official release stream is a stable release selected by the OVAL Board at least once per year to be the official release.

1. The OVAL Board selects the official release via vote at a regular meeting


Official Stream CLI Example
"""""""""""""""""""""""""""
TBD

FAQs
----

Does an extension implementation need to be a Qualifying Implementation?
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
No. While having a Qualified Implementation is preferable (see :ref:`qualifying-implementations`), an extension implementation does not need to be a Qualifying Implementation and may simply be a proof of concept.

What are the specific "stream names" in the GitHub repository for each of these release streams?
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
* The ``master`` is the official release stream, and will be labeled with the current release versions appropriately.
* The ``stable`` branch represents the stable release stream
* The ``development`` branch represents the development release stream
* The ``extension`` branch represents the extensions release stream



Documentation Links
-------------------

Links to process docs?
