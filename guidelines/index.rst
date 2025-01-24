.. OVAL Community documentation master file, created by
   sphinx-quickstart on Mon Mar 12 15:15:56 2018.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

.. _welcome-to-the-guidelines:

The OVAL Community Version 6.0 Documenation
=========================================

Welcome to the guidelines for OVAL, the Open Vulnerability and Assessment Language. These guidelines are designed to explain everything you need to know to start contributing to OVAL (or link you to places to ask questions, should the explanations not suffice), as well as provide a variety of standards and resources to the community.

If you are looking for documentation for documentation on previous versions of OVAL

* OVAL version 5.12:  https://oval-community-guidelines.readthedocs.io/en/5.12_release/
* OVAL version 5.11.2:  https://oval-community-guidelines.readthedocs.io/en/5.11.2_release/

**Notice:**

# Notice:
*Posted Sept 19, 2024*
 
**The development team of the SCAP Compliance Checker (SCC) at the Naval Information Warfare Center (NWIC) has taken over the role as OVAL Sponsor.  If your organization is interested in being part of this development community composed of top security experts, system administrators, and software developers from industry, government, and academia, please reach out to our team at scc.fct@navy.mil**

What is OVAL?
-------------

OVAL is an open language built by security experts, system administrators, and software developers to universalize assessment and reporting on the state of computer systems.

What changed in version 6.0?
--------------------------
* Removed all deprecated items from OVAL 5.12, in order to substantially decrease the size/complexity of the language.  This was accomplished without removing any functionality from currently published SCAP/OVAL content.  140 different OVAL deprecated tests were removed from 5.12 to 6.0, along with several entire platforms.
* Added the concept of an 'encapsulated definition', which allows for OVAL definition files to have a new element called 'encapsulated_definition', which contains all of the tests, objects, states and variables needed to perform the given defintion.  This was added to allow content to be easier to write, maintain, and merge with other files.
* Added new schemas for Vmware ESX and Kubernetes

Who is the OVAL Community?
--------------------------

The `OVAL Community <http://oval-community-guidelines.readthedocs.io/en/latest/community-organization/index.html>`_ is the group responsible for proposals about anything and everything OVAL related. It comprises `Members <https://oval-community-guidelines.readthedocs.io/en/latest/community-organization/community-members.html>`_, `Area Supervisors <https://oval-community-guidelines.readthedocs.io/en/latest/community-organization/area-supervisors.html>`_, the `Leadership Board <https://oval-community-guidelines.readthedocs.io/en/latest/community-organization/oval-leadership-board.html>`_, and the `Sponsor <https://www.niwcatlantic.navy.mil/Technology/SCAP/>`_. The community maintains, fixes, and improves OVAL through an established governance process.

Learn More
----------

| `OVAL Community <http://oval-community-guidelines.readthedocs.io/en/latest/community-organization/index.html>`_
| `Repository Registry <http://oval-community-guidelines.readthedocs.io/en/latest/oval-content-repos.html>`_

Get Involved
------------

| **Language Development**
| `Language Proposal Process <http://oval-community-guidelines.readthedocs.io/en/latest/proposal-process/index.html>`_
| `OVAL Community GitHub <https://github.com/OVAL-Community/OVAL>`_
| `Discussion Forums <https://github.com/orgs/OVAL-Community/discussions>`_

License
-------

`Terms of Use <http://oval-community-guidelines.readthedocs.io/en/latest/terms-of-use.html>`_


.. toctree::
   :caption: The Guidelines
   :maxdepth: 2

   getting-started
   oval-schema-documentation/index
   oval-design-principles
   specifications
   community-organization/index
   proposal-process/index
   developer-guides/index
   release-streams
   versioning
   oval-content-repos
   oval-support-declarations
   mailing-lists
   additional-resources
   terms-of-use
