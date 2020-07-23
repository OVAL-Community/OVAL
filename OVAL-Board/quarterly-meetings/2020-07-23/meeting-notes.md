# OVAL Board Meeting - 2020-07-23

## Agenda
- Agenda Bashing
- Last meeting review
- OVAL Statistics (Language and Repo)
- Discuss [Issue #94](https://github.com/OVAL-Community/OVAL/issues/94)
- Any other business
  - OVAL Board Membership refresh
  - OVAL Release Schedule

## Notes
- Han has moved on from CIS; Adam gets to be in charge (for a change)
- Thanks though to Han for creating the slide deck
- Added locations in GH to track slide decks, notes, and provide transparency

### Agenda Bashing
- David Ries:  Add 2 things: OVAL board membership refresh and Talk about official OVAL release in the spring

### Last meeting review
N/A

### Stats
- Page views up, downloads seem to be even
- (Side Note) Adam needs to be better prepared
- Thanks to Dave Solin for pointing out the obvious to Adam
- Nice uptick on visits from US orgs
- 35 Updates, 28 PRs, no emails
- Are element types stats important?  Opinion is "not really"
- **TODO**: Include Mac in the stats "by family"
- **TODO**: Continue to engage/touch base with Area Supervisors

### Issue 94: Putting SCAP information under OVAL purview
- There was "a little controversy" around this one
- Lots of SCAP info in lots of different places
- Some updated, some not, frequency of updates unknown
- Want SCAP information centralized.  Consolidate disparate locations
- Some components dont have a "home", some dont have any place for them to be worked on/commented on/updated
- Which component specifications dont have a home?
  - **TODO** Itemize this list
  - DataStream
  - XCCDF
  - etc.  If they dont have a "home" (or just a NISTIR), and there's work being done on them, we need a collaboration space
- Lots of overlap in OVAL and SCAP communities
  - could potentially save a lot of work through collaboration
- If there was a separate community, there would need to be close collaboration
- How do we make a decision on this?
- Who is "driving the bus"?
- SCAP is the umbrella specification, allowing the other components to be developed separately
- SCAP is the "glue", holding the specifications together
- We'll definitely need to take this to the Board for consideration
- If the reasons are purely intellectual
  - This is a human project done by humans
  - Governed by practical reasons, not just intellectual reasons
  - Are there "political" reasons?
- How do we progress the decision
  - Ensure the "homeless have a home"
  - We need a board vote on it; this is right in the wheelhouse of what the board does
  - We could just re-home our repo; everything else is the same
- XCCDF is a NIST document and has final authority over it
  - Community may not be able to assume/assert any governance over it
  - XCCDF, DataStream Collections, OCIL, CCE, CVE (maybe more that i missed) governed by NIST
- Governance process is a community process
- Development and Release processes
- Official release process by NIST
  - Community does work, builds consensus; NIST releases
- Definitely missing people to talk about this
  - Some may be disengaged but have an opinion
  - "Stoke the discussion" somehow; really need to engage the board.
- We *need* participation/resources
  - There are people in the SCAP 2.0 community who want to do some of this work, create a website, etc
- Ask stakeholders if the processes currently coordinated by the OVAL community are things that can be used by other communities under the SCAP umbrella
- Were there any objections besides what we heard on the last call?

### OVAL Board Refresh
- Some folks have not been engaged
  - Reach out to determine level of interest in continuing participation
  - Symantec People are no longer there
  - Melanie Cook not at NIST anymore?  Replace w/Stephen Banghart
- Some need to be added
  - Who would we want to nominate?
    - Canonical
    - Stephen Banghart (NIST)
    - Bernd Grobauer (Siemens)
- Need to migrate the rules of board membership over from the old MITRE docs
  - Adam and David R. reviewed that and added to the OVAL board member site
  - General intent was to *NOT* make any substantive changes when information was migrated over

### OVAL Release in Spring
- Solin has something to say about this!
  - FISMA guys at NIST on USGCB for Mac
  - It would be awesome to run that content in official OVAL
  - Lots of PRs/Proposals in Language repo
  - **TODO** Bill needs to look at those
  - **TODO** Engage SPAWAR for this too
  - JovalCM is generating CVE definitions for this using their new proposed tests
    - If this gets adopted, they'll contribute them to the repo
- Red Hat has some YAML tests
- SPAWAR has some IIS
  - Some objections to command-line interface; use some APIs?
- Cisco NX-OS too?

### Next steps
- Board "cleanup"
- Issue 94
