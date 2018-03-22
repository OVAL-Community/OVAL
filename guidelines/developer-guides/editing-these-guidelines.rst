Editing These Guidelines
========================

Are you interested in contributing a change to these guidelines? If so, thank you!

This document is intended to help you get up and running.

Prerequisites
-------------

You'll need the following in order to get started:

# A fork of `The OVAL Community github repository <https://github.com/OVAL-Community/OVAL>`
# A local working copy of your fork
# Python 3.x

Initial Setup
-------------

In order to build the guidelines locally and review your changes, you'll
need to install a few Python modules::

  # cd to the root of your fork of this repository
  cd OVAL

  # create a python virtual environment (recommended) and activate it
  python3 -m venv ./venv
  . ./venv/bin/activate

  # install required python modules
  pip install -r tools/requirements.txt

Building the Guidelines
-----------------------

On Windows::

  make.bat

On Mac/Linux::

  make html

Using Sphinx Auto Build/Reload (Windows/Max/Linux)::

  sphinx-autobuild . \_build/html

Using reStructuredText
----------------------

These guidelines are written in reStructuredText. Learn more here:

* `Sphinx reStructuredText Primer <>http://www.sphinx-doc.org/en/master/rest.html#source-code`
* `Offical reStructuredText Documentation <http://docutils.sourceforge.net/rst.html>`

Important Guideline Guidelines
------------------------------

These guidelines use the following section heading formats::

  Page Header
  ===========

  Section Header
  --------------

  Subsection Header
  ^^^^^^^^^^^^^^^^^

  SubSubsection Header
  """"""""""""""""""""

When updating these guidelines, please note the following:

* Every page MUST start with a Page Header (underlines with "=") and MUST only contain 1 Page Header
