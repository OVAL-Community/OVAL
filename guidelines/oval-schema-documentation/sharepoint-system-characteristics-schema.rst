Open Vulnerability and Assessment Language: SharePoint System Characteristics  
=========================================================
* Schema: SharePoint System Characteristics  
* Version: 5.12  
* Release Date: 11/29/2024 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the SharePoint specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The SharePoint Component Schema is based on the SharePoint Object Model (Windows SharePoint Services 3.0)

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`spwebapplication_item`  
* :ref:`spgroup_item`  
* :ref:`spweb_item`  
* :ref:`splist_item`  
* :ref:`spantivirussettings_item`  
* :ref:`spsiteadministration_item`  
* :ref:`spsite_item`  
* :ref:`spcrawlrule_item`  
* :ref:`spjobdefinition_item`  
* :ref:`spjobdefinition510_item`  
* :ref:`bestbet_item`  
* :ref:`infopolicycoll_item`  
* :ref:`spdiagnosticsservice_item`  
* :ref:`spdiagnosticslevel_item`  
* :ref:`sppolicyfeature_item`  
* :ref:`sppolicy_item`  
  
______________
  
.. _spwebapplication_item:  
  
< spwebapplication_item >  
---------------------------------------------------------
This spwebapplication item stores information for security related features and permissions related to each web application. See the defintion of the SPWebApplication class in the SharePoint object model documentation.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webapplicationurl  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the url that identifies the web application.  
    * - allowparttopartcommunication  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if a user can create connections between Web Parts.  
    * - allowaccesstowebpartcatalog  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if a user can create connections to Online Web Part Galleries.  
    * - blockedfileextention  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - A single blockedfileextention for the application. An applicaiton may have zero or more blocked file extensions.  
    * - defaultquotatemplate  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the default quota template for the web application.  
    * - externalworkflowparticipantsenabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if a user is allowed to participate in workflow by sending them a copy of the document.  
    * - recyclebinenabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the recycle bin is enabled or disabled.  
    * - automaticallydeleteunusedsitecollections  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the site can be automatically deleted.  
    * - selfservicesitecreationenabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if a self service site can be created.  
    * - secondstagerecyclebinquota  
      - oval-sc:EntityItemIntType (0..1)  
      - Size of the second stage recycle bin quota.  
    * - recyclebinretentionperiod  
      - oval-sc:EntityItemIntType (0..1)  
      - The recyclebinretentionperiod is the retention period for the recyle bin.  
    * - outboundmailserverinstance  
      - oval-sc:EntityItemStringType (0..1)  
      - The string name of the outboundmailserver.  
    * - outboundmailsenderaddress  
      - oval-sc:EntityItemStringType (0..1)  
      - The from address that is used when sending email.  
    * - outboundmailreplytoaddress  
      - oval-sc:EntityItemStringType (0..1)  
      - The reply to address that is used when sending email.  
    * - secvalexpires  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if a security validation can expire.  
    * - timeout  
      - oval-sc:EntityItemIntType (0..1)  
      - The timeout is the amount of time before security validation expires in seconds.  
    * - isadministrationwebapplication  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that specifies whether the current web application is the Central Administration web application.  
    * - applicationpoolname  
      - oval-sc:EntityItemStringType (0..1)  
      - A string that represents the application pool name.  
    * - applicationpoolusername  
      - oval-sc:EntityItemStringType (0..1)  
      - A string that represents the application pool username.  
    * - openitems  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to view the source of documents with server-side file handlers is available to the Web application.  
    * - addlistitems  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to add items to lists, add documents to document libraries, and add Web discussion comments to the Web application.  
    * - approveitems  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to approve a minor version of a list item or document is available to the Web application.  
    * - deletelistitems  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to delete items from a list, documents from a document library, and Web discussion comments in documents is available to the Web application.  
    * - deleteversions  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to delete past versions of a list item or document is available to the Web application.  
    * - editlistitems  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if edit items in lists, edit documents in document libraries, edit Web discussion comments in documents, and customize Web Part Pages in document libraries is available to the Web application.  
    * - managelists  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to create and delete lists, add or remove columns in a list, and add or remove public views of a list is available to the Web application.  
    * - viewversions  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to view past versions of a list item or document is available to the Web application.  
    * - viewlistitems  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to view items in lists, documents in document libraries, and view Web discussion commentsis available to the Web application.  
    * - cancelcheckout  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to discard or check in a document which is checked out to another user is available to the Web application.  
    * - createalerts  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to Create e-mail alerts is available to the Web application.  
    * - viewformpages  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to view forms, views, and application pages, and enumerate lists is available to the Web application.  
    * - viewpages  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to view pages in a Web site is available to the Web application.  
    * - addandcustomizepages  
      - oval-sc:EntityItemBoolType (0..1)  
      -   
    * - applystylesheets  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to Apply a style sheet (.css file) to the Web site is available to the Web application.  
    * - applythemeandborder  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to apply a theme or borders to the entire Web site is available to the Web application.  
    * - browsedirectories  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to enumerate files and folders in a Web site using Microsoft Office SharePoint Designer and WebDAV interfaces is available to the Web application.  
    * - browseuserinfo  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to view information about users of the Web site is available to the Web application.  
    * - creategroups  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to create a group of users that can be used anywhere within the site collection is available to the Web application.  
    * - createsscsite  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to create a Web site using Self-Service Site Creation is available to the Web application.  
    * - editmyuserinfo  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to allows a user to change his or her user information, such as adding a picture is available to the Web application.  
    * - enumeratepermissions  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to enumerate permissions on the Web site, list, folder, document, or list itemis is available to the Web application.  
    * - managealerts  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to manage alerts for all users of the Web site is available for the Web application.  
    * - managepermissions  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to create and change permission levels on the Web site and assign permissions to users and groups is available to the Web application.  
    * - managesubwebs  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to create subsites such as team sites, Meeting Workspace sites, and Document Workspace sites is available to the Web application.  
    * - manageweb  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to perform all administration tasks for the Web site as well as manage content is available to the Web application.  
    * - open  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to allow users to open a Web site, list, or folder to access items inside that containeris available to the Web application.  
    * - useclientintegration  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to use features that launch client applications; otherwise, users must work on documents locally and upload changesis is available to the Web application.  
    * - useremoteapis  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to use SOAP, WebDAV, or Microsoft Office SharePoint Designer interfaces to access the Web siteis available to the Web application.  
    * - viewusagedata  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to view reports on Web site usage in documents is available to the Web application.  
    * - managepersonalviews  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to Create, change, and delete personal views of lists is available to the Web application.  
    * - adddelprivatewebparts  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to add or remove personal Web Parts on a Web Part Page is available to the Web application.  
    * - updatepersonalwebparts  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the permission to update Web Parts to display personalized informationis available to the Web application.  
  
______________
  
.. _spgroup_item:  
  
< spgroup_item >  
---------------------------------------------------------
This spgroup item stores information for security related features related to site groups

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the url that identifies the site collection.  
    * - gname  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the name of a group in a site collection.  
    * - autoacceptrequesttojoinleave  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if sites can automatically accepts requests.  
    * - allowmemberseditmembership  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if owners other than the group owner can edit the membership of groups.  
    * - onlyallowmembersviewmembership  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if owners other than the group owner can edit the membership of groups.  
  
______________
  
.. _spweb_item:  
  
< spweb_item >  
---------------------------------------------------------
This spweb item stores information for security related features related to site collections.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webcollectionurl  
      - oval-sc:EntityItemStringType (0..1)  
      - A string that specifies a web site (the SPWeb object).  
    * - sitecollectionurl  
      - oval-sc:EntityItemStringType (0..1)  
      - A string that specifies a site collection.  
    * - secondarysitecolladmin  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the secondarysitecolladmin.  
    * - secondsitecolladminenabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if the secondsitecolladmin is enabled.  
    * - allowanonymousaccess  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean that represents if a anonymous access is allowed to the web site.  
  
______________
  
.. _splist_item:  
  
< splist_item >  
---------------------------------------------------------
An SPList represents a list of content on a Sharepoint web site. It consists of items or rows and columns or fields that contain data.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - spsiteurl  
      - oval-sc:EntityItemStringType (0..1)  
      - The url that identifies the website.  
    * - irmenabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - The irmenabled attribute tests to see if documents that leave the Sharepoint environment are protected.  
    * - enableversioning  
      - oval-sc:EntityItemBoolType (0..1)  
      - The enableversioning attribute specifies whether backup copies of files should be created and managed in the Sharepoint system.  
    * - nocrawl  
      - oval-sc:EntityItemBoolType (0..1)  
      - The nocrawl attribute indicates that this site should not be among those crawled and indexed.  
  
______________
  
.. _spantivirussettings_item:  
  
< spantivirussettings_item >  
---------------------------------------------------------
An SPAntivirusSettings Item represents the set of antivirus-related security settings on a Sharepoint server.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - spwebservicename  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the SP Web Service for which to retrieve the antivirus settings or * for all web services. The default value is * which checks all SP Web services  
    * - spfarmname  
      - oval-sc:EntityItemStringType (0..1)  
      - The Farm in which the SP Web Service resides.  
    * - allowdownload  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether SharePoint users can download documents that are found to be infected.  
    * - cleaningenabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether or not the virus scanner should attempt to cure infected files.  
    * - downloadscanenabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether files are scanned when they are downloaded.  
    * - numberofthreads  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the number of threads that the virus scanner may use to perform virus scans.  
    * - skipsearchcrawl  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether to skip document virus scanning during a search crawl.  
    * - timeout  
      - oval-sc:EntityItemIntType (0..1)  
      - The amount of time before the virus scanner times out in seconds.  
    * - uploadscanenabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether files are scanned for viruses when they are uploaded.  
    * - vendorupdatecount  
      - oval-sc:EntityItemIntType (0..1)  
      - The current increment of the number of times the vendor has been updated.  
  
______________
  
.. _spsiteadministration_item:  
  
< spsiteadministration_item >  
---------------------------------------------------------
This spsiteadministration item stores information for security related features and permissions related to each top-level web sites. See the defintion of the SPSiteAdministration class in the SharePoint object model documentation.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the url that identifies the sitecollection application.  
    * - storagemaxlevel  
      - oval-sc:EntityItemIntType (0..1)  
      - The storagemaxlevel is the maximum storage allowed for the site.  
    * - storagewarninglevel  
      - oval-sc:EntityItemIntType (0..1)  
      - When the storagewarninglevel is reached a site collection receive advance notice before available storage is expended.  
  
______________
  
.. _spsite_item:  
  
< spsite_item >  
---------------------------------------------------------
This spsite item stores information for security related features for sites. See the defintion of the SPSite class in the SharePoint object model documentation.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-sc:EntityItemStringType (0..1)  
      - A string the represents the url that identifies the sitecollection application.  
    * - quotaname  
      - oval-sc:EntityItemStringType (0..1)  
      - The string that represents the name of the quota for a specific site collection.  
    * - url  
      - oval-sc:EntityItemStringType (0..1)  
      -   
  
______________
  
.. _spcrawlrule_item:  
  
< spcrawlrule_item >  
---------------------------------------------------------
The spcrawlrule_item specifies rules that the SharePoint system follows when it crawls the content of sites stored within it.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - spsiteurl  
      - oval-sc:EntityItemStringType (0..1)  
      - A URL that represents the resource (eg. sites, documents,etc.) on which the crawlrule tests should be run or * if the check should be run on all sites/documents on the server.  
    * - crawlashttp  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether the crawler should crawl content from a hierarchical content source, such as HTTP content.  
    * - enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether a particular crawl rule is enabled.  
    * - followcomplexurls  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether the indexer should crawl websites that contain the question mark (?) character.  
    * - path  
      - oval-sc:EntityItemStringType (0..1)  
      - The path to which a particular crawl rule applies.  
    * - priority  
      - oval-sc:EntityItemIntType (0..1)  
      - The priority setting for a particular crawl rule.  
    * - suppressindexing  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether the crawler should exclude the content of items that this rule applies to from the content index.  
    * - accountname  
      - oval-sc:EntityItemStringType (0..1)  
      - A string containing the account name for the crawl rule.  
  
______________
  
.. _spjobdefinition_item:  
  
< spjobdefinition_item > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: Replaced by the spjobdefinition510_item. This item does not uniquely identify a single job definition. A new state was created to use displaynames, which are unique. See the spjobdefinition510_item.  
* Comment: This item has been deprecated and may be removed in a future version of the language.  
  
This represents the set of Job Definitions that are scheduled to run on each SharePoint Web Application

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webappuri  
      - oval-sc:EntityItemStringType (0..1)  
      - The URI that represents the web application for which the IIS Settings should be checked.  
    * - displayname  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the job as displayed in the SharePoint Central Administration site.  
    * - isdisabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Determines whether or not the job definition is enabled.  
    * - retry  
      - oval-sc:EntityItemBoolType (0..1)  
      - Determines whether the job definition should be retried if it ends abnormally.  
    * - title  
      - oval-sc:EntityItemStringType (0..1)  
      - The title of a job as displayed in the SharePoint Central Administration site.  
  
______________
  
.. _spjobdefinition510_item:  
  
< spjobdefinition510_item >  
---------------------------------------------------------
This represents the set of Job Definitions that are scheduled to run on each SharePoint Web Application

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webappuri  
      - oval-sc:EntityItemStringType (0..1)  
      - The URI that represents the web application for which the IIS Settings should be checked.  
    * - displayname  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the job as displayed in the SharePoint Central Administration site.  
    * - isdisabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - Determines whether or not the job definition is enabled.  
    * - retry  
      - oval-sc:EntityItemBoolType (0..1)  
      - Determines whether the job definition should be retried if it ends abnormally.  
    * - title  
      - oval-sc:EntityItemStringType (0..1)  
      - The title of a job as displayed in the SharePoint Central Administration site.  
  
______________
  
.. _bestbet_item:  
  
< bestbet_item >  
---------------------------------------------------------
This represents the set of Best Bets for a site collection.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-sc:EntityItemStringType (0..1)  
      - The sitecollectionurl represents the URL for the site.  
    * - bestbeturl  
      - oval-sc:EntityItemStringType (0..1)  
      - The bestbeturl represents the URL for the best bet.  
    * - title  
      - oval-sc:EntityItemStringType (0..1)  
      - The title of the Best Bet.  
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      - The description of the Best Bet.  
  
______________
  
.. _infopolicycoll_item:  
  
< infopolicycoll_item >  
---------------------------------------------------------
This represents the set of Information Policies for a site collection.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-sc:EntityItemStringType (0..1)  
      - The sitecollectionurl represents the URL for the site.  
    * - id  
      - oval-sc:EntityItemStringType (0..1)  
      - The id of the sitecollection poilicy.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the sitecollection poilicy.  
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      - The description of the Information Policy.  
    * - longdescription  
      - oval-sc:EntityItemStringType (0..1)  
      - The long description of an Information Policy.  
  
______________
  
.. _spdiagnosticsservice_item:  
  
< spdiagnosticsservice_item >  
---------------------------------------------------------
This represents the set of diagnostic capabilities for Windows Sharepoint Services.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - farmname  
      - oval-sc:EntityItemStringType (0..1)  
      - The farm whose diagnostic capabilities should be checked. Use .* for all farms or SPFarm.Local for the local farm.  
    * - displayname  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the diagnostic service as shown in the Sharepoint Central Administration site.  
    * - logcutinterval  
      - oval-sc:EntityItemIntType (0..1)  
      - The number of minutes to capture events to a single log file. This value lies in the range 0 to 1440. The default value is 30.  
    * - loglocation  
      - oval-sc:EntityItemStringType (0..1)  
      - The path to the file system directory where log files are created and stored.  
    * - logstokeep  
      - oval-sc:EntityItemIntType (0..1)  
      - The value that indicates the number of log files to create. This lies in the range 0 to 1024 with a default of 96.  
    * - required  
      - oval-sc:EntityItemBoolType (0..1)  
      - The required property specifies whether an instance of the spdiagnosticsservice must be running on the farm.  
    * - typename  
      - oval-sc:EntityItemStringType (0..1)  
      - The friendly name for the service as displayed in the Central Administration and in logs. This should be "Windows Sharepoint Diagnostics Service" by default.  
  
______________
  
.. _spdiagnosticslevel_item:  
  
< spdiagnosticslevel_item >  
---------------------------------------------------------
The diagnostics level associated with a particular instance of a diagnostics service on a Sharepoint farm.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - farmname  
      - oval-sc:EntityItemStringType (0..1)  
      - The farm whose diagnostics levels should be checked. Use .* for all farms or SPFarm.Local for the local farm.  
    * - eventseverity  
      - sp-sc:EntityItemEventSeverityType (0..1)  
      - The event severity setting for a particular diagnostic level category.  
    * - hidden  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether the trace log category is hidden in the Windows Sharepoint Services Central Administration interface.  
    * - levelid  
      - oval-sc:EntityItemStringType (0..1)  
      - A string that represents the ID of the trace log category. This is its English language name.  
    * - levelname  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the trace log category. This represents the localized name for the category.  
    * - traceseverity  
      - sp-sc:EntityItemTraceSeverityType (0..1)  
      - The trace severity setting for a particular diagnostic level category.  
  
______________
  
.. _sppolicyfeature_item:  
  
< sppolicyfeature_item >  
---------------------------------------------------------
This represents a policy feature that is installed on the Sharepoint server farm.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - farmname  
      - oval-sc:EntityItemStringType (0..1)  
      - The farm whose policy features should be checked. Use .* for all farms or SPFarm.Local for the local farm.  
    * - configpage  
      - oval-sc:EntityItemStringType (0..1)  
      - The URL to a web control used to edit policy instance-level settings.  
    * - defaultcustomdata  
      - oval-sc:EntityItemStringType (0..1)  
      - The default values for any policy instance-level settings for a policy feature.  
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      - The short description of the policy feature and of the service it provides.  
    * - globalconfigpage  
      - oval-sc:EntityItemStringType (0..1)  
      - The URL to a web control used to edit server farm-level settings for this policy feature.  
    * - globalcustomdata  
      - oval-sc:EntityItemStringType (0..1)  
      - The default settings for any server farm-level settings for this policy feature.  
    * - group  
      - oval-sc:EntityItemStringType (0..1)  
      - The policy feature group to which a policy feature belongs.  
    * - name  
      - oval-sc:EntityItemStringType (0..1)  
      - The name to display in the Microsoft Office Sharepoint Server 2007 interface for an information policy feature.  
    * - publisher  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the creator of the policy feature as it is displayed in the Microsoft Office Sharepoint Server 2007 user interface.  
    * - state  
      - sp-sc:EntityItemPolicyFeatureStateType (0..1)  
      - Specifies whether the policy feature is hidden or visible.  
  
______________
  
.. _sppolicy_item:  
  
< sppolicy_item >  
---------------------------------------------------------
This represents a policy on the Sharepoint system.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webappuri  
      - oval-sc:EntityItemStringType (0..1)  
      - The URI that represents the web application for which policies should be checked.  
    * - urlzone  
      - sp-sc:EntityItemUrlZoneType (0..1)  
      - The zone for which policies should be checked.  
    * - displayname  
      - oval-sc:EntityItemStringType (0..1)  
      - The user or group display name for a policy. This defaults to the user name if the display name cannot be resolved through Active Directory.  
    * - issystemuser  
      - oval-sc:EntityItemBoolType (0..1)  
      - Specifies whether the user identified by a particular policy is visible only as a System account within the Windows Sharepoint Services user interface.  
    * - username  
      - oval-sc:EntityItemStringType (0..1)  
      - The user name of the user or group that is associated with policy.  
    * - policyroletype  
      - sp-sc:EntityItemPolicyRoleType (0..1)  
      - The policy role type to apply globally in a Sharepoint web application to a user or group.  
  
.. _EntityItemUrlZoneType:  
  
== EntityItemUrlZoneType ==  
---------------------------------------------------------
The EntityItemUrlZoneType restricts a string value to a set of values that describe the different IIS Url Zones. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Custom  
      - (No Description)  
    * - Default  
      - (No Description)  
    * - Extranet  
      - (No Description)  
    * - Intranet  
      - (No Description)  
    * - Internet  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemEventSeverityType:  
  
== EntityItemEventSeverityType ==  
---------------------------------------------------------
The EntityItemEventSeverityType restricts a string value to a set of values that describe the different states that can be configured for a diagnostics level event severity level property of the diagnostics service.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Error  
      - (No Description)  
    * - ErrorCritical  
      - (No Description)  
    * - ErrorSecurityBreach  
      - (No Description)  
    * - ErrorServiceUnavailable  
      - (No Description)  
    * - FailureAudit  
      - (No Description)  
    * - Information  
      - (No Description)  
    * - None  
      - (No Description)  
    * - Success  
      - (No Description)  
    * - SuccessAudit  
      - (No Description)  
    * - Warning  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemTraceSeverityType:  
  
== EntityItemTraceSeverityType ==  
---------------------------------------------------------
The EntityItemTraceSeverityType restricts a string value to a set of values that describe the different states that can be configured for a diagnostics level trace severity level property of the diagnostics service.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - High  
      - (No Description)  
    * - Medium  
      - (No Description)  
    * - Monitorable  
      - (No Description)  
    * - None  
      - (No Description)  
    * - Unexpected  
      - (No Description)  
    * - Verbose  
      - (No Description)  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemPolicyFeatureStateType:  
  
== EntityItemPolicyFeatureStateType ==  
---------------------------------------------------------
The EntityItemPolicyFeatureStateType restricts a string value to a set of values that describe the different states that can be configured for a policy feature.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Hidden  
      - | Specifies that the policy feature is hidden from the Sharepoint Central Administration user interface.  
    * - Visible  
      - | Specifies that the policy feature is visible from the Sharepoint Central Administration user interface.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemPolicyRoleType:  
  
== EntityItemPolicyRoleType ==  
---------------------------------------------------------
The EntityItemPolicyRoleType restricts a string value to a set of values that describe the different Policy settings for Access Control that are available for users.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - DenyAll  
      - | Deny all rights.  
    * - DenyWrite  
      - | Deny write permissions.  
    * - FullControl  
      - | Grant full control.  
    * - FullRead  
      - | Grant full read permissions.  
    * - None  
      - | No role type assigned.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
