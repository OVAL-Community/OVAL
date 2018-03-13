# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: SharePoint System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the SharePoint specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The SharePoint Component Schema is based on the SharePoint Object Model (Windows SharePoint Services 3.0)

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="spwebapplication_item"></a>< spwebapplication_item >

This spwebapplication item stores information for security related features and permissions related to each web application. See the defintion of the SPWebApplication class in the SharePoint object model documentation.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webapplicationurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the url that identifies the web application.</div>|  
| allowparttopartcommunication | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if a user can create connections between Web Parts.</div>|  
| allowaccesstowebpartcatalog | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if a user can create connections to Online Web Part Galleries.</div>|  
| blockedfileextention | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>A single blockedfileextention for the application. An applicaiton may have zero or more blocked file extensions.</div>|  
| defaultquotatemplate | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the default quota template for the web application.</div>|  
| externalworkflowparticipantsenabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if a user is allowed to participate in workflow by sending them a copy of the document.</div>|  
| recyclebinenabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the recycle bin is enabled or disabled.</div>|  
| automaticallydeleteunusedsitecollections | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the site can be automatically deleted.</div>|  
| selfservicesitecreationenabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if a self service site can be created.</div>|  
| secondstagerecyclebinquota | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Size of the second stage recycle bin quota.</div>|  
| recyclebinretentionperiod | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The recyclebinretentionperiod is the retention period for the recyle bin.</div>|  
| outboundmailserverinstance | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The string name of the outboundmailserver.</div>|  
| outboundmailsenderaddress | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The from address that is used when sending email.</div>|  
| outboundmailreplytoaddress | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The reply to address that is used when sending email.</div>|  
| secvalexpires | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if a security validation can expire.</div>|  
| timeout | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The timeout is the amount of time before security validation expires in seconds.</div>|  
| isadministrationwebapplication | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that specifies whether the current web application is the Central Administration web application.</div>|  
| applicationpoolname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string that represents the application pool name.</div>|  
| applicationpoolusername | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string that represents the application pool username.</div>|  
| openitems | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to view the source of documents with server-side file handlers is available to the Web application.</div>|  
| addlistitems | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to add items to lists, add documents to document libraries, and add Web discussion comments to the Web application.</div>|  
| approveitems | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to approve a minor version of a list item or document is available to the Web application.</div>|  
| deletelistitems | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to delete items from a list, documents from a document library, and Web discussion comments in documents is available to the Web application.</div>|  
| deleteversions | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to delete past versions of a list item or document is available to the Web application.</div>|  
| editlistitems | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if edit items in lists, edit documents in document libraries, edit Web discussion comments in documents, and customize Web Part Pages in document libraries is available to the Web application.</div>|  
| managelists | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to create and delete lists, add or remove columns in a list, and add or remove public views of a list is available to the Web application.</div>|  
| viewversions | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to view past versions of a list item or document is available to the Web application.</div>|  
| viewlistitems | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to view items in lists, documents in document libraries, and view Web discussion commentsis available to the Web application.</div>|  
| cancelcheckout | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to discard or check in a document which is checked out to another user is available to the Web application.</div>|  
| createalerts | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to Create e-mail alerts is available to the Web application.</div>|  
| viewformpages | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to view forms, views, and application pages, and enumerate lists is available to the Web application.</div>|  
| viewpages | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to view pages in a Web site is available to the Web application.</div>|  
| addandcustomizepages | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div></div>|  
| applystylesheets | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to Apply a style sheet (.css file) to the Web site is available to the Web application.</div>|  
| applythemeandborder | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to apply a theme or borders to the entire Web site is available to the Web application.</div>|  
| browsedirectories | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to enumerate files and folders in a Web site using Microsoft Office SharePoint Designer and WebDAV interfaces is available to the Web application.</div>|  
| browseuserinfo | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to view information about users of the Web site is available to the Web application.</div>|  
| creategroups | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to create a group of users that can be used anywhere within the site collection is available to the Web application.</div>|  
| createsscsite | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to create a Web site using Self-Service Site Creation is available to the Web application.</div>|  
| editmyuserinfo | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to allows a user to change his or her user information, such as adding a picture is available to the Web application.</div>|  
| enumeratepermissions | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to enumerate permissions on the Web site, list, folder, document, or list itemis is available to the Web application.</div>|  
| managealerts | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to manage alerts for all users of the Web site is available for the Web application.</div>|  
| managepermissions | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to create and change permission levels on the Web site and assign permissions to users and groups is available to the Web application.</div>|  
| managesubwebs | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to create subsites such as team sites, Meeting Workspace sites, and Document Workspace sites is available to the Web application.</div>|  
| manageweb | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to perform all administration tasks for the Web site as well as manage content is available to the Web application.</div>|  
| open | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to allow users to open a Web site, list, or folder to access items inside that containeris available to the Web application.</div>|  
| useclientintegration | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to use features that launch client applications; otherwise, users must work on documents locally and upload changesis is available to the Web application.</div>|  
| useremoteapis | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to use SOAP, WebDAV, or Microsoft Office SharePoint Designer interfaces to access the Web siteis available to the Web application.</div>|  
| viewusagedata | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to view reports on Web site usage in documents is available to the Web application.</div>|  
| managepersonalviews | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to Create, change, and delete personal views of lists is available to the Web application.</div>|  
| adddelprivatewebparts | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to add or remove personal Web Parts on a Web Part Page is available to the Web application.</div>|  
| updatepersonalwebparts | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the permission to update Web Parts to display personalized informationis available to the Web application.</div>|  
  
______________
  
## <a name="spgroup_item"></a>< spgroup_item >

This spgroup item stores information for security related features related to site groups

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the url that identifies the site collection.</div>|  
| gname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the name of a group in a site collection.</div>|  
| autoacceptrequesttojoinleave | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if sites can automatically accepts requests.</div>|  
| allowmemberseditmembership | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if owners other than the group owner can edit the membership of groups.</div>|  
| onlyallowmembersviewmembership | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if owners other than the group owner can edit the membership of groups.</div>|  
  
______________
  
## <a name="spweb_item"></a>< spweb_item >

This spweb item stores information for security related features related to site collections.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webcollectionurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string that specifies a web site (the SPWeb object).</div>|  
| sitecollectionurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string that specifies a site collection.</div>|  
| secondarysitecolladmin | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the secondarysitecolladmin.</div>|  
| secondsitecolladminenabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if the secondsitecolladmin is enabled.</div>|  
| allowanonymousaccess | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean that represents if a anonymous access is allowed to the web site.</div>|  
  
______________
  
## <a name="splist_item"></a>< splist_item >

An SPList represents a list of content on a Sharepoint web site. It consists of items or rows and columns or fields that contain data.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| spsiteurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The url that identifies the website.</div>|  
| irmenabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The irmenabled attribute tests to see if documents that leave the Sharepoint environment are protected.</div>|  
| enableversioning | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The enableversioning attribute specifies whether backup copies of files should be created and managed in the Sharepoint system.</div>|  
| nocrawl | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The nocrawl attribute indicates that this site should not be among those crawled and indexed.</div>|  
  
______________
  
## <a name="spantivirussettings_item"></a>< spantivirussettings_item >

An SPAntivirusSettings Item represents the set of antivirus-related security settings on a Sharepoint server.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| spwebservicename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the SP Web Service for which to retrieve the antivirus settings or * for all web services. The default value is * which checks all SP Web services</div>|  
| spfarmname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The Farm in which the SP Web Service resides.</div>|  
| allowdownload | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether SharePoint users can download documents that are found to be infected.</div>|  
| cleaningenabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether or not the virus scanner should attempt to cure infected files.</div>|  
| downloadscanenabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether files are scanned when they are downloaded.</div>|  
| numberofthreads | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies the number of threads that the virus scanner may use to perform virus scans.</div>|  
| skipsearchcrawl | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether to skip document virus scanning during a search crawl.</div>|  
| timeout | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The amount of time before the virus scanner times out in seconds.</div>|  
| uploadscanenabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether files are scanned for viruses when they are uploaded.</div>|  
| vendorupdatecount | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The current increment of the number of times the vendor has been updated.</div>|  
  
______________
  
## <a name="spsiteadministration_item"></a>< spsiteadministration_item >

This spsiteadministration item stores information for security related features and permissions related to each top-level web sites. See the defintion of the SPSiteAdministration class in the SharePoint object model documentation.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the url that identifies the sitecollection application.</div>|  
| storagemaxlevel | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The storagemaxlevel is the maximum storage allowed for the site.</div>|  
| storagewarninglevel | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>When the storagewarninglevel is reached a site collection receive advance notice before available storage is expended.</div>|  
  
______________
  
## <a name="spsite_item"></a>< spsite_item >

This spsite item stores information for security related features for sites. See the defintion of the SPSite class in the SharePoint object model documentation.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string the represents the url that identifies the sitecollection application.</div>|  
| quotaname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The string that represents the name of the quota for a specific site collection.</div>|  
| url | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="spcrawlrule_item"></a>< spcrawlrule_item >

The spcrawlrule_item specifies rules that the SharePoint system follows when it crawls the content of sites stored within it.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| spsiteurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A URL that represents the resource (eg. sites, documents,etc.) on which the crawlrule tests should be run or * if the check should be run on all sites/documents on the server.</div>|  
| crawlashttp | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether the crawler should crawl content from a hierarchical content source, such as HTTP content.</div>|  
| enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether a particular crawl rule is enabled.</div>|  
| followcomplexurls | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether the indexer should crawl websites that contain the question mark (?) character.</div>|  
| path | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path to which a particular crawl rule applies.</div>|  
| priority | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The priority setting for a particular crawl rule.</div>|  
| suppressindexing | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether the crawler should exclude the content of items that this rule applies to from the content index.</div>|  
| accountname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string containing the account name for the crawl rule.</div>|  
  
______________
  
## <a name="spjobdefinition_item"></a><  ~~spjobdefinition_item~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the spjobdefinition510_item. This item does not uniquely identify a single job definition. A new state was created to use displaynames, which are unique. See the spjobdefinition510_item.<br />**Comment:** This item has been deprecated and may be removed in a future version of the language.<br />

This represents the set of Job Definitions that are scheduled to run on each SharePoint Web Application

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webappuri | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The URI that represents the web application for which the IIS Settings should be checked.</div>|  
| displayname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the job as displayed in the SharePoint Central Administration site.</div>|  
| isdisabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Determines whether or not the job definition is enabled.</div>|  
| retry | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Determines whether the job definition should be retried if it ends abnormally.</div>|  
| title | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The title of a job as displayed in the SharePoint Central Administration site.</div>|  
  
______________
  
## <a name="spjobdefinition510_item"></a>< spjobdefinition510_item >

This represents the set of Job Definitions that are scheduled to run on each SharePoint Web Application

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webappuri | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The URI that represents the web application for which the IIS Settings should be checked.</div>|  
| displayname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the job as displayed in the SharePoint Central Administration site.</div>|  
| isdisabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Determines whether or not the job definition is enabled.</div>|  
| retry | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Determines whether the job definition should be retried if it ends abnormally.</div>|  
| title | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The title of a job as displayed in the SharePoint Central Administration site.</div>|  
  
______________
  
## <a name="bestbet_item"></a>< bestbet_item >

This represents the set of Best Bets for a site collection.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The sitecollectionurl represents the URL for the site.</div>|  
| bestbeturl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The bestbeturl represents the URL for the best bet.</div>|  
| title | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The title of the Best Bet.</div>|  
| description | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The description of the Best Bet.</div>|  
  
______________
  
## <a name="infopolicycoll_item"></a>< infopolicycoll_item >

This represents the set of Information Policies for a site collection.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The sitecollectionurl represents the URL for the site.</div>|  
| id | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The id of the sitecollection poilicy.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the sitecollection poilicy.</div>|  
| description | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The description of the Information Policy.</div>|  
| longdescription | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The long description of an Information Policy.</div>|  
  
______________
  
## <a name="spdiagnosticsservice_item"></a>< spdiagnosticsservice_item >

This represents the set of diagnostic capabilities for Windows Sharepoint Services.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| farmname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The farm whose diagnostic capabilities should be checked. Use .* for all farms or SPFarm.Local for the local farm.</div>|  
| displayname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the diagnostic service as shown in the Sharepoint Central Administration site.</div>|  
| logcutinterval | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The number of minutes to capture events to a single log file. This value lies in the range 0 to 1440. The default value is 30.</div>|  
| loglocation | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The path to the file system directory where log files are created and stored.</div>|  
| logstokeep | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The value that indicates the number of log files to create. This lies in the range 0 to 1024 with a default of 96.</div>|  
| required | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>The required property specifies whether an instance of the spdiagnosticsservice must be running on the farm.</div>|  
| typename | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The friendly name for the service as displayed in the Central Administration and in logs. This should be "Windows Sharepoint Diagnostics Service" by default.</div>|  
  
______________
  
## <a name="spdiagnosticslevel_item"></a>< spdiagnosticslevel_item >

The diagnostics level associated with a particular instance of a diagnostics service on a Sharepoint farm.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| farmname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The farm whose diagnostics levels should be checked. Use .* for all farms or SPFarm.Local for the local farm.</div>|  
| eventseverity | [sp-sc:EntityItemEventSeverityType](#EntityItemEventSeverityType)  (0..1) |  
||<div>The event severity setting for a particular diagnostic level category.</div>|  
| hidden | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether the trace log category is hidden in the Windows Sharepoint Services Central Administration interface.</div>|  
| levelid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>A string that represents the ID of the trace log category. This is its English language name.</div>|  
| levelname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the trace log category. This represents the localized name for the category.</div>|  
| traceseverity | [sp-sc:EntityItemTraceSeverityType](#EntityItemTraceSeverityType)  (0..1) |  
||<div>The trace severity setting for a particular diagnostic level category.</div>|  
  
______________
  
## <a name="sppolicyfeature_item"></a>< sppolicyfeature_item >

This represents a policy feature that is installed on the Sharepoint server farm.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| farmname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The farm whose policy features should be checked. Use .* for all farms or SPFarm.Local for the local farm.</div>|  
| configpage | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The URL to a web control used to edit policy instance-level settings.</div>|  
| defaultcustomdata | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The default values for any policy instance-level settings for a policy feature.</div>|  
| description | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The short description of the policy feature and of the service it provides.</div>|  
| globalconfigpage | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The URL to a web control used to edit server farm-level settings for this policy feature.</div>|  
| globalcustomdata | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The default settings for any server farm-level settings for this policy feature.</div>|  
| group | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The policy feature group to which a policy feature belongs.</div>|  
| name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name to display in the Microsoft Office Sharepoint Server 2007 interface for an information policy feature.</div>|  
| publisher | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the creator of the policy feature as it is displayed in the Microsoft Office Sharepoint Server 2007 user interface.</div>|  
| state | [sp-sc:EntityItemPolicyFeatureStateType](#EntityItemPolicyFeatureStateType)  (0..1) |  
||<div>Specifies whether the policy feature is hidden or visible.</div>|  
  
______________
  
## <a name="sppolicy_item"></a>< sppolicy_item >

This represents a policy on the Sharepoint system.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webappuri | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The URI that represents the web application for which policies should be checked.</div>|  
| urlzone | [sp-sc:EntityItemUrlZoneType](#EntityItemUrlZoneType)  (0..1) |  
||<div>The zone for which policies should be checked.</div>|  
| displayname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user or group display name for a policy. This defaults to the user name if the display name cannot be resolved through Active Directory.</div>|  
| issystemuser | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Specifies whether the user identified by a particular policy is visible only as a System account within the Windows Sharepoint Services user interface.</div>|  
| username | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The user name of the user or group that is associated with policy.</div>|  
| policyroletype | [sp-sc:EntityItemPolicyRoleType](#EntityItemPolicyRoleType)  (0..1) |  
||<div>The policy role type to apply globally in a Sharepoint web application to a user or group.</div>|  
  
## <a name="EntityItemUrlZoneType"></a>== EntityItemUrlZoneType ==

The EntityItemUrlZoneType restricts a string value to a set of values that describe the different IIS Url Zones. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| Custom |  |  
| Default |  |  
| Extranet |  |  
| Intranet |  |  
| Internet |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemEventSeverityType"></a>== EntityItemEventSeverityType ==

The EntityItemEventSeverityType restricts a string value to a set of values that describe the different states that can be configured for a diagnostics level event severity level property of the diagnostics service.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| Error |  |  
| ErrorCritical |  |  
| ErrorSecurityBreach |  |  
| ErrorServiceUnavailable |  |  
| FailureAudit |  |  
| Information |  |  
| None |  |  
| Success |  |  
| SuccessAudit |  |  
| Warning |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemTraceSeverityType"></a>== EntityItemTraceSeverityType ==

The EntityItemTraceSeverityType restricts a string value to a set of values that describe the different states that can be configured for a diagnostics level trace severity level property of the diagnostics service.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| High |  |  
| Medium |  |  
| Monitorable |  |  
| None |  |  
| Unexpected |  |  
| Verbose |  |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemPolicyFeatureStateType"></a>== EntityItemPolicyFeatureStateType ==

The EntityItemPolicyFeatureStateType restricts a string value to a set of values that describe the different states that can be configured for a policy feature.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| Hidden | <div>Specifies that the policy feature is hidden from the Sharepoint Central Administration user interface.</div> |  
| Visible | <div>Specifies that the policy feature is visible from the Sharepoint Central Administration user interface.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemPolicyRoleType"></a>== EntityItemPolicyRoleType ==

The EntityItemPolicyRoleType restricts a string value to a set of values that describe the different Policy settings for Access Control that are available for users.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| DenyAll | <div>Deny all rights.</div> |  
| DenyWrite | <div>Deny write permissions.</div> |  
| FullControl | <div>Grant full control.</div> |  
| FullRead | <div>Grant full read permissions.</div> |  
| None | <div>No role type assigned.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
