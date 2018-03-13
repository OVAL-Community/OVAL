# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: SharePoint Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the SharePoint specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The SharePoint Component Schema is based on the SharePoint Object Model (Windows SharePoint Services 3.0)

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ spwebapplication_test ](#spwebapplication_test)  
 *[ spgroup_test ](#spgroup_test)  
 *[ spweb_test ](#spweb_test)  
 *[ splist_test ](#splist_test)  
 *[ spantivirussettings_test ](#spantivirussettings_test)  
 *[ spsiteadministration_test ](#spsiteadministration_test)  
 *[ spsite_test ](#spsite_test)  
 *[ spcrawlrule_test ](#spcrawlrule_test)  
 *[ ~~spjobdefinition_test~~ ](#spjobdefinition_test)  
 *[ spjobdefinition510_test ](#spjobdefinition510_test)  
 *[ bestbet_test ](#bestbet_test)  
 *[ infopolicycoll_test ](#infopolicycoll_test)  
 *[ spdiagnosticsservice_test ](#spdiagnosticsservice_test)  
 *[ spdiagnosticslevel_test ](#spdiagnosticslevel_test)  
 *[ sppolicyfeature_test ](#sppolicyfeature_test)  
 *[ sppolicy_test ](#sppolicy_test)  
  
______________
  
## <a name="spwebapplication_test"></a>< spwebapplication_test >

The spwebapplication test is used to check the properties or permission settings of a SharePoint web application. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a spwebapplication_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spwebapplication_object"></a>< spwebapplication_object >

The spwebapplication_object element is used by a spwebapplication test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spwebapplication object consists of a webapplicationurl used to define a specific web application. See the defintion of the SPWebApplication class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webapplicationurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The webapplicationurl element defines the SPWebApplication to evaluate specific security settings or permissions.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spwebapplication_state"></a>< spwebapplication_state >

The spwebapplication_state element defines security settings and permissions that can be checked for a specified SPWebApplications.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webapplicationurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The webapplicationurl element identifies a Web application.</div>|  
| allowparttopartcommunication | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the allowparttopartcommunication is enabled it allows users to create connections between Web parts.</div>|  
| allowaccesstowebpartcatalog | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the allowaccesstowebpartcatalog is enabled it allows users access to the online Web part gallery.</div>|  
| blockedfileextention | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The blockedfileextention element identifies one or more file extensions that should be blocked from the deployment.</div>|  
| defaultquotatemplate | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The defaultquotatemplate element identifies the default quota template set for the web application.</div>|  
| externalworkflowparticipantsenabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the externalworkflowparticipantsenabled is enabled then users are allowed to participate in workflows.</div>|  
| recyclebinenabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the recyclebinenabled is enabled it will be easy to restore deleted files.</div>|  
| automaticallydeleteunusedsitecollections | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the automaticallydeleteunusedsitecollections is disabled, sites will not be automatically deleted.</div>|  
| selfservicesitecreationenabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the selfservicesitecreationenabled is enabled users will be allowed to create and manager their own top-level Web sites .</div>|  
| secondstagerecyclebinquota | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The secondstagerecyclebinquota is the quota for the second stage recyle bin</div>|  
| recyclebinretentionperiod | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The recyclebinretentionperiod is the retention period for the recyle bin</div>|  
| outboundmailserverinstance | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The outboundmailserverinstance element identifies the string name of the SMPT server. Note that there is a small naming inconsistency here. The SharePoint SDK calls this 'outboundmailserviceinstance'.</div>|  
| outboundmailsenderaddress | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The outboundmailsenderaddress element identifies the address that the mail is being send from.</div>|  
| outboundmailreplytoaddress | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The outboundmailreplytoaddress element identifies the address that the mail should be replied to.</div>|  
| secvalexpires | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the secvalexpires is enabled then the form will expire after the security validation time (timeout) .</div>|  
| timeout | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The timeout is the amount of time before security validation expires in seconds.</div>|  
| isadministrationwebapplication | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If this is true, the web application to which this test refers is the Central Administration web application.</div>|  
| applicationpoolname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The applicationpoolname element identifies the web applications application pool name.</div>|  
| applicationpoolusername | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The applicationpoolusername element identifies the web applications application pool username.</div>|  
| openitems | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the openitems is enabled the permission to view the source of documents with server-side file handlers is available to use for this web application..</div>|  
| addlistitems | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the addlistitems is enabled the permission to add items to lists, add documents to document libraries, and add Web discussion comments is available to use for this Web application.</div>|  
| approveitems | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If approveitems is enabled the permission to approve a minor version of a list item or document is available to use for this the Web application.</div>|  
| deletelistitems | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the deletelistitems is enabled the permission to delete items from a list, documents from a document library, and Web discussion comments in documents is available to use for this Web application.</div>|  
| deleteversions | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the deleteversions is enabled the permission to delete past versions of a list item or document is available to use for this Web application.</div>|  
| editlistitems | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the editlistitems is enabled the permission to edit items in lists, edit documents in document libraries, edit Web discussion comments in documents, and customize Web Part Pages in document libraries is available to use for this Web application.</div>|  
| managelists | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the managelists is enabled the permission to create and delete lists, add or remove columns in a list, and add or remove public views of a list is available to use for this the Web application.</div>|  
| viewversions | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the viewversions is enabled the permission to view past versions of a list item or document is available to use for this Web application.</div>|  
| viewlistitems | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the viewlistitems is enabled the permission to view items in lists, documents in document libraries, and view Web discussion commentsis available is available to use for this Web application.</div>|  
| cancelcheckout | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the cancelcheckout is enabled the permission to discard or check in a document which is checked out to another user is available to use for this the Web application.</div>|  
| createalerts | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the createalerts is enabled the permission to Create e-mail alerts is available to use for this Web application.</div>|  
| viewformpages | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the viewformpages is enabled the permission to view forms, views, and application pages, and enumerate lists is available to use for this Web application.</div>|  
| viewpages | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the viewpages is enabled the permission to view pages in a Web site is available to use for this Web application.</div>|  
| addandcustomizepages | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If addandcustomizepages is enabled the permission to add, change, or delete HTML pages or Web Part Pages, and edit the Web site using a Windows SharePoint Services–compatible editor is available to use for this Web application.</div>|  
| applystylesheets | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the applystylesheets is enabled the permission to Apply a style sheet (.css file) to the Web site is available to use for this Web application.</div>|  
| applythemeandborder | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the applythemeanborder is enabled the permission to apply a theme or borders to the entire Web site is available to use for this Web application.</div>|  
| browsedirectories | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the browsedirectories is enabled the permission to enumerate files and folders in a Web site using Microsoft Office SharePoint Designer and WebDAV interfaces is available to use for this Web application.</div>|  
| browseuserinfo | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the browseuserinfo is enabled the permission to view information about users of the Web site is available to use for this Web application.</div>|  
| creategroups | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the creategroups is enabled the permission to create a group of users that can be used anywhere within the site collection is available to use for this Web application.</div>|  
| createsscsite | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the createsscsite is enabled the permission to create a Web site using Self-Service Site Creation is available to use for this Web application.</div>|  
| editmyuserinfo | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the editmyuserinfo is enabled the permission to allows a user to change his or her user information, such as adding a picture is available to use for this Web application.</div>|  
| enumeratepermissions | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If enumeratepermissions is enabled the permission to enumerate permissions on the Web site, list, folder, document, or list itemis is available to use for this Web application.</div>|  
| managealerts | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the managealerts is enabled the permission to manage alerts for all users of the Web site is available to use for this Web application.</div>|  
| managepermissions | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the managepermissions is enabled the permission to create and change permission levels on the Web site and assign permissions to users and groups is available to use for this Web application.</div>|  
| managesubwebs | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the managesubwebs is enabled the permission to create subsites such as team sites, Meeting Workspace sites, and Document Workspace sites is available to use for this Web application.</div>|  
| manageweb | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the manageweb is enabled the permission to perform all administration tasks for the Web site as well as manage content is available to use for this Web application.</div>|  
| open | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If open is enabled the permission to allow users to open a Web site, list, or folder to access items inside that containeris available to use for this Web application.</div>|  
| useclientintegration | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the useclientintegration is enabled the permission to use features that launch client applications; otherwise, users must work on documents locally and upload changesis is available to use for this Web application.</div>|  
| useremoteapis | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the useremoteapis is enabled the permission to use SOAP, WebDAV, or Microsoft Office SharePoint Designer interfaces to access the Web siteis available to use for this Web application.</div>|  
| viewusagedata | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the viewusagedata is enabled the permission to view reports on Web site usage in documents is available to use for this Web application.</div>|  
| managepersonalviews | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the managepersonalviews is enabled the permission to Create, change, and delete personal views of lists is available to use for this Web application.</div>|  
| adddelprivatewebparts | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the adddelprivatewebparts is enabled the permission to add or remove personal Web Parts on a Web Part Page is available to use for this Web application.</div>|  
| updatepersonalwebparts | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the updatepersonalwebparts is enabled the permission to update Web Parts to display personalized informationis available to use for this Web application.</div>|  
  
______________
  
## <a name="spgroup_test"></a>< spgroup_test >

The spgroup test is used to check the group properties for site collections. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an spwebapplication_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spgroup_object"></a>< spgroup_object >

The spgroup_object element is used by a spgroup test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spgroup object consists of a sitecollectionurl used to define a specific site collection. See the defintion of the SPGroup class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The sitecollectionurl element defines the Site Colection to evaluate specific group settings.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spgroup_state"></a>< spgroup_state >

The spgroup_state element defines settings for groups in a site collections.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The sitecollectionurl element identifies a Site Collection.</div>|  
| gname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name element identifies a Group name.</div>|  
| autoacceptrequesttojoinleave | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the autoacceptrequesttojoinleave is enabled it allows users to automatically join groups.</div>|  
| allowmemberseditmembership | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the allowmemberseditmembership is enabled than all group memebers will be allowed to edit the membership of a group..</div>|  
| onlyallowmembersviewmembership | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the onlyallowmembersviewmembership is enabled it allows users to automatically join groups.</div>|  
  
______________
  
## <a name="spweb_test"></a>< spweb_test >

The spweb test is used to check the properties for site collections. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an spwebapplication_object and the optional state element specifies the data to check. See https://msdn.microsoft.com/en-us/library/ms473633.aspx for more information.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spweb_object"></a>< spweb_object >

The spweb_object element is used by a spweb test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spweb object consists of a webcollection url and sitecollection url used to define a specific web apoplication and a specific site collection. See the defintion of the SPWeb class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webcollectionurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies a web site (this is the SPWeb object we want).</div>|  
| sitecollectionurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Specifies a site collection.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spweb_state"></a>< spweb_state >

The spweb_state element defines settings for a site collection.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webcollectionurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The webcollectionurl specifies a web site (the SPWeb object).</div>|  
| sitecollectionurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The sitecollectionurl element specifies a site collection.</div>|  
| secondarysitecolladmin | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The secondarysitecolladmin element identifies a secondary site collection admin.</div>|  
| secondsitecolladminenabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>A boolean that represents if the secondarysitecolladmin is enabled.</div>|  
| allowanonymousaccess | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the allowanonymousaccess is enabled users will be allowed to create and manager their own top-level Web sites .</div>|  
  
______________
  
## <a name="splist_test"></a>< splist_test >

The splist test is used to check the properties of lists associated with a SharePoint site or site collection. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an splist_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="splist_object"></a>< splist_object >

The splist_object element is used by a splist test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An splist object consists of a spsiteurl used to define a specific site in a site collection that various security related configuration items need to be checked. See the defintion of the SPList class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| spsiteurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The spsiteurl element defines the Sharepoint website being specified ...</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="splist_state"></a>< splist_state >

The splist_state element defines the different information that can be used to evaluate the specified Sharepoint sites....

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| spsiteurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The spsiteurl element identifies an Sharepoint site to test for.</div>|  
| irmenabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the irmenabled option is enabled, documents are protected whenever they leave the control of the Sharepoint system.</div>|  
| enableversioning | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the enableversioning option is enabled, backup copies of documents are kept and managed by the Sharepoint system.</div>|  
| nocrawl | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If the nocrawl option is enabled, the site is excluded from crawls that Sharepoint does when it indexes sites.</div>|  
  
______________
  
## <a name="spantivirussettings_test"></a>< spantivirussettings_test >

The spantivirussettings test is used to check the settings for antivirus software associated with a SharePoint deployment.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spantivirussettings_object"></a>< spantivirussettings_object >

The spantivirussettings_object element is used by a spantivirussettings test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spantivirussettings object consists of a spwebservicename used to define a specific webservice in a farm that various security related configuration items need to be checked and an spfarmname which denotes the farm of which the spwebservice is a part. See the defintion of the SPAntiVirusSettings class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| spwebservicename | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The spwebservicename element denotes the web service for which antivirus settings will be checked.</div>|  
| spfarmname | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The spfarmname element denotes the farm on which a web service to be queried resides.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spantivirussettings_state"></a>< spantivirussettings_state >

The spantivirus_state element defines the different information that can be used to evaluate the specified Sharepoint sites....

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| spwebservicename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The spwebservicename denotes the name of a SharePoint web service to be tested or * (the default) to test all web services.</div>|  
| spfarmname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The spfarmname denotes the name of the farm on which the Sharepoint webservice resides or the local farm (default).</div>|  
| allowdownload | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether infected documents can be downloaded on the SharePoint system.</div>|  
| cleaningenabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the virus scanner should attempt to cure files that are infected.</div>|  
| downloadscanenabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whetehr files are scanned for viruses when they are downloaded.</div>|  
| numberofthreads | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number of threads that the antivirus scanner can use to scan documents for viruses.</div>|  
| skipsearchcrawl | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether to skip scanning for viruses during a search crawl.</div>|  
| timeout | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Denotes the amount of time before the virus scanner times out in seconds.</div>|  
| uploadscanenabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether files are scanned when they are uploaded.</div>|  
| vendorupdatecount | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Denotes the current increment of the number of times the vendor has been updated.</div>|  
  
______________
  
## <a name="spsiteadministration_test"></a>< spsiteadministration_test >

The spsiteadministration test is used to check the properties of a site. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an spwebapplication_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spsiteadministration_object"></a>< spsiteadministration_object >

The spsiteadministration_object element is used by a spsiteadministration test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spsiteadministration object consists of a webapplicationurl used to define a specific web application. The collected data is available via the SPQuota class, which can be found via the SPSite object. See the defintions of the SPSite and the SPQuota classes in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The sitecollectionurl element defines the site to evaluate.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spsiteadministration_state"></a>< spsiteadministration_state >

The spspsiteadministration_state element defines security settings and permissions that can be checked for a specified SPSite.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The sitecollectionurl element identifies a site.</div>|  
| storagemaxlevel | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The storagemaxlevel is the maximum storage allowed for the site.</div>|  
| storagewarninglevel | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>When the storagewarninglevel is reached a site collection receive advance notice before available storage is expended.s.</div>|  
  
______________
  
## <a name="spsite_test"></a>< spsite_test >

The spsite test is used to check the properties of a site. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an spwebapplication_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spsite_object"></a>< spsite_object >

The spsite_object element is used by a spsiteadministration test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spsite object consists of a sitecollectionurl used to define a specific web application. See the defintion of the SPSite class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The sitecollectionurl element defines the site to evaluate.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spsite_state"></a>< spsite_state >

The spsite_state element defines security settings and permissions that can be checked for a specified SPSite.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The sitecollectionurl element identifies a site.</div>|  
| quotaname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The quota name is the name of quota template for a site collection.</div>|  
| ~~url~~ | ~~[oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1~~) |  
||~~<div>The URL is the full URL to the root Web site of the site collection, including host name, port number, and path.</div>~~|  
  
______________
  
## <a name="spcrawlrule_test"></a>< spcrawlrule_test >

The spcrawlrule test is used to check the configuration or rules associated with the SharePoint system's built-in indexer and the sites or documents that will be indexed.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spcrawlrule_object"></a>< spcrawlrule_object >

The spcrawlrule_object element is used by a spcrawlrule test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spcrawlrule object consists of a spsiteurl used to define a specific resource (eg. website or document) on a server that can be indexed by the SharePoint indexer. See the defintion of the CrawlRule class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| spsiteurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The spsiteurl element denotes the resource on the SharePoint server (eg. a site or document) for which indexing settings will be checked.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spcrawlrule_state"></a>< spcrawlrule_state >

The spcrawlrule state element defines the various properties of the SharePoint indexer that can be checked.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| spsiteurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The spsiteurl denotes the URL of a website or resource whose indexing properties should be tested.</div>|  
| crawlashttp | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the crawler should crawl content from a hierarchical content source, such as HTTP content.</div>|  
| enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether a particular crawl rule is enabled.</div>|  
| followcomplexurls | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the indexer should crawl websites that contain the question mark (?) character.</div>|  
| path | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path to which a particular crawl rule applies.</div>|  
| priority | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The priority setting for a particular crawl rule.</div>|  
| suppressindexing | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the crawler should exclude the content of items that this rule applies to from the content index.</div>|  
| accountname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A string containing the account name for the crawl rule.</div>|  
  
______________
  
## <a name="spjobdefinition_test"></a><  ~~spjobdefinition_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the spjobdefinition510_test. This test does not uniquely identify a single job definition. A new test was created to use displaynames, which are unique. See the spjobdefinition510_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The spjobdefinition test is used to check the status of the various properties associated with scheduled jobs in the SharePoint system.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spjobdefinition_object"></a><  ~~spjobdefinition_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the spjobdefinition510_object. This test does not uniquely identify a single job definition. A new object was created to use displaynames, which are unique. See the spjobdefinition510_object.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The spjobdefinition_object element is used by a spjobdefinition test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spjobdefinition_object consists of a webappuri used to define a specific web application for which job checks should be done. See the defintion of the SPJobDefinition class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webappuri | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The URI that represents the web application for which jobs should be checked.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spjobdefinition_state"></a><  ~~spjobdefinition_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.10** :small_red_triangle: <br />**Reason:** Replaced by the spjobdefinition510_state. This state does not uniquely identify a single job definition. A new state was created to use displaynames, which are unique. See the spjobdefinition510_state.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

The various properties of a Sharepoint job that can be checked.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webappuri | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The URI that represents the web application for which jobs should be checked.</div>|  
| displayname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the job as displayed in the SharePoint Central Administration site.</div>|  
| isdisabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Determines whether or not the job definition is enabled.</div>|  
| retry | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Determines whether the job definition should be retried if it ends abnormally.</div>|  
| title | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The title of a job as displayed in the SharePoint Central Administration site.</div>|  
  
______________
  
## <a name="spjobdefinition510_test"></a>< spjobdefinition510_test >

The spjobdefinition test is used to check the status of the various properties associated with scheduled jobs in the SharePoint system.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spjobdefinition510_object"></a>< spjobdefinition510_object >

The spjobdefinition510_object element is used by a spjobdefinition test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spjobdefinition510_object consists of a webappuri and displayname used to define a specific web application for which job checks should be done. See the defintion of the SPJobDefinition class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webappuri | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The URI that represents the web application for which jobs should be checked.</div>|  
| displayname | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the job as displayed in the SharePoint Central Administration site.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spjobdefinition510_state"></a>< spjobdefinition510_state >

The various properties of a Sharepoint job that can be checked.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webappuri | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The URI that represents the web application for which jobs should be checked.</div>|  
| displayname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the job as displayed in the SharePoint Central Administration site.</div>|  
| isdisabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Determines whether or not the job definition is enabled.</div>|  
| retry | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Determines whether the job definition should be retried if it ends abnormally.</div>|  
| title | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The title of a job as displayed in the SharePoint Central Administration site.</div>|  
  
______________
  
## <a name="bestbet_test"></a>< bestbet_test >

The bestbet test is used to get all the best bets associated with a site.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="bestbet_object"></a>< bestbet_object >

The bestbet_object element is used by a bestbet test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An bestbet object consists of a sitecollectionurl used to define a specific site and a bestbeturl used to define a specific best bet. See the defintion of the BestBet class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The URL that represents the site collection.</div>|  
| bestbeturl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The URL that represents the best bet.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="bestbet_state"></a>< bestbet_state >

The various properties of a Best Bet that can be checked.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The URL that represents the site collection.</div>|  
| bestbeturl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the job as displayed in the SharePoint Central Administration site.</div>|  
| title | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The title of a best bet.</div>|  
| description | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Thedescription of a best bet..</div>|  
  
______________
  
## <a name="infopolicycoll_test"></a>< infopolicycoll_test >

The policycoll test is used to get all the Information Policies associated with a site.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="infopolicycoll_object"></a>< infopolicycoll_object >

The infopolicycoll_object element is used by a policycoll test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A infopolicycoll object consists of a sitecollectionurl used to define a specific site and an id used to define a specific information policy. See the defintion of the Policy class and policycollection class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The URL that represents the site collection.</div>|  
| id | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The id that represents the Information Policy.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="infopolicycoll_state"></a>< infopolicycoll_state >

The various properties of the Information Policy that can be checked.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| sitecollectionurl | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The URL that represents the site collection.</div>|  
| id | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The id of the Information Policy.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the Information Policy.</div>|  
| description | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The description of an Information Policy..</div>|  
| longdescription | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The long description of an Information Policy..</div>|  
  
______________
  
## <a name="spdiagnosticsservice_test"></a>< spdiagnosticsservice_test >

The spdiagnosticsservice test is used to check the diagnostic properties associated with a Sharepoint system.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spdiagnosticsservice_object"></a>< spdiagnosticsservice_object >

The spdiagnosticsservice_object element is used by an spdiagnosticsservice test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spdiagnosticsservice object consists of a farmname used to define a specific Sharepoint farm for which diagnostics properties should be checked. See the defintion of the SPDiagnosticsService class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| farmname | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The farm whose diagnostic capabilities should be checked. Use .* for all farms or SPFarm.Local for the local farm.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spdiagnosticsservice_state"></a>< spdiagnosticsservice_state >

The various properties of a diagnostics service that can be checked.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| farmname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The farm whose diagnostic capabilities should be checked.</div>|  
| displayname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the diagnostic service as shown in the Sharepoint Central Administration site.</div>|  
| logcutinterval | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number of minutes to capture events to a single log file. This value lies in the range 0 to 1440. The default value is 30.</div>|  
| loglocation | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The path to the file system directory where log files are created and stored.</div>|  
| logstokeep | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The value that indicates the number of log files to create. This lies in the range 0 to 1024 with a default of 96.</div>|  
| required | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>The required property specifies whether an instance of the spdiagnosticsservice must be running on the farm.</div>|  
| typename | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The friendly name for the service as displayed in the Central Administration and in logs. This should be "Windows Sharepoint Diagnostics Service" by default.</div>|  
  
______________
  
## <a name="spdiagnosticslevel_test"></a>< spdiagnosticslevel_test >

The spdiagnosticslevel_test is used to check the status of the logging features associated with a Sharepoint deployment.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="spdiagnosticslevel_object"></a>< spdiagnosticslevel_object >

The spdiagnosticslevel_object element is used by an spdiagnosticslevel test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spdiagnosticslevel object consists of a farmname used to define a specific Sharepoint farm for which policy properties should be checked. See the defintion of the SPWebApplication class in the SharePoint object model documentation. See the defintion of the IDiagnosticsLevel Interface in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| farmname | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The farm whose diagnostics levels should be checked. Use .* for all farms or SPFarm.Local for the local farm.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="spdiagnosticslevel_state"></a>< spdiagnosticslevel_state >

The various properties of a Diagnostics level that can be checked.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| farmname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the farm for which diagnostics level properties should be checked.</div>|  
| eventseverity | [sp-def:EntityStateEventSeverityType](#EntityStateEventSeverityType)  (0..1) |  
||<div>The event severity setting for a particular diagnostic level category.</div>|  
| hidden | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the trace log category is hidden in the Windows Sharepoint Services Central Administration interface.</div>|  
| levelid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>A string that represents the ID of the trace log category. This is its English language name.</div>|  
| levelname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the trace log category. This represents the localized name for the category.</div>|  
| traceseverity | [sp-def:EntityStateTraceSeverityType](#EntityStateTraceSeverityType)  (0..1) |  
||<div>The trace severity setting for a particular diagnostic level category.</div>|  
  
______________
  
## <a name="sppolicyfeature_test"></a>< sppolicyfeature_test >

The sppolicyfeature test enables one to check the attributes associated with policies and policy features on the Sharepoint deployment.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="sppolicyfeature_object"></a>< sppolicyfeature_object >

The sppolicyfeature_object element is used by an sppolicyfeature test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An sppolicyfeature object consists of a farmname used to define a specific Sharepoint farm for which policy feature properties should be checked. See the defintion of the PolicyFeature class in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| farmname | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The farm whose policy features should be checked. Use .* for all farms or SPFarm.Local for the local farm.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="sppolicyfeature_state"></a>< sppolicyfeature_state >

The various properties of a policy feature that can be checked.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| farmname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The farm whose policy features should be checked. Use .* for all farms or SPFarm.Local for the local farm.</div>|  
| configpage | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The URL to a web control used to edit policy instance-level settings.</div>|  
| defaultcustomdata | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The default values for any policy instance-level settings for a policy feature.</div>|  
| description | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The short description of the policy feature and of the service it provides.</div>|  
| globalconfigpage | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The URL to a web control used to edit server farm-level settings for this policy feature.</div>|  
| globalcustomdata | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The default settings for any server farm-level settings for this policy feature.</div>|  
| group | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The policy feature group to which a policy feature belongs.</div>|  
| name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name to display in the Microsoft Office Sharepoint Server 2007 interface for an information policy feature.</div>|  
| publisher | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the creator of the policy feature as it is displayed in the Microsoft Office Sharepoint Server 2007 user interface.</div>|  
| state | [sp-def:EntityStatePolicyFeatureStateType](#EntityStatePolicyFeatureStateType)  (0..1) |  
||<div>Specifies whether the policy feature is hidden or visible.</div>|  
  
______________
  
## <a name="sppolicy_test"></a>< sppolicy_test >

The sppolicy test enables one to check the attributes of the policies associated with a particular URL Zone in a Sharepoint system.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..1) |  
|||  
  
## <a name="sppolicy_object"></a>< sppolicy_object >

The sppolicy_object element is used by an sppolicy test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An sppolicy object consists of a webappuri and a URL Zone used to define a specific Sharepoint web application and zone for which policy properties should be checked. See the defintion of the SPPolicy class and the sppolicyroletype in the SharePoint object model documentation.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webappuri | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The URI that represents the web application for which policies should be checked.</div>|  
| urlzone | [sp-def:EntityObjectUrlZoneType](#EntityObjectUrlZoneType)  (1..1) |  
||<div>The zone for which policies should be checked.</div>|  
  
## <a name="sppolicy_state"></a>< sppolicy_state >

The various properties of a policy that can be checked.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| webappuri | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The URI that represents the web application for which policies should be checked.</div>|  
| urlzone | [sp-def:EntityStateUrlZoneType](#EntityStateUrlZoneType)  (0..1) |  
||<div>The zone for which policies should be checked.</div>|  
| displayname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The user or group display name for a policy. This defaults to the user name if the display name cannot be resolved through Active Directory.</div>|  
| issystemuser | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Specifies whether the user identified by a particular policy is visible only as a System account within the Windows Sharepoint Services user interface.</div>|  
| username | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The user name of the user or group that is associated with policy.</div>|  
| policyroletype | [sp-def:EntityStatePolicyRoleType](#EntityStatePolicyRoleType)  (0..1) |  
||<div>The policy role type to apply globally in a Sharepoint web application to a user or group.</div>|  
  
## <a name="EntityObjectUrlZoneType"></a>== EntityObjectUrlZoneType ==

The EntityObjectUrlZoneType restricts a string value to a set of values that describe the different IIS Url Zones. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType) 

| Value | Description |  
| ----- | ----------- |  
| Custom |  |  
| Default |  |  
| Extranet |  |  
| Intranet |  |  
| Internet |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateEventSeverityType"></a>== EntityStateEventSeverityType ==

The EntityStateEventSeverityType restricts a string value to a set of values that describe the different states that can be configured for a diagnostics level event severity level property of the diagnostics service.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

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
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateTraceSeverityType"></a>== EntityStateTraceSeverityType ==

The EntityStateTraceSeverityType restricts a string value to a set of values that describe the different states that can be configured for a diagnostics level trace severity level property of the diagnostics service.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| High |  |  
| Medium |  |  
| Monitorable |  |  
| None |  |  
| Unexpected |  |  
| Verbose |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStatePolicyRoleType"></a>== EntityStatePolicyRoleType ==

The EntityStatePolicyRoleType restricts a string value to a set of values that describe the different Policy settings for Access Control that are available for users.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| DenyAll | <div>Deny all rights.</div> |  
| DenyWrite | <div>Deny write permissions.</div> |  
| FullControl | <div>Grant full control.</div> |  
| FullRead | <div>Grant full read permissions.</div> |  
| None | <div>No role type assigned.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStatePolicyFeatureStateType"></a>== EntityStatePolicyFeatureStateType ==

The EntityStatePolicyRoleType restricts a string value to a set of values that describe the different policy feature states that can be configured for a policy feature.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| Hidden | <div>Specifies that the policy feature is hidden from the Sharepoint Central Administration user interface.</div> |  
| Visible | <div>Specifies that the policy feature is visible from the Sharepoint Central Administration user interface.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateUrlZoneType"></a>== EntityStateUrlZoneType ==

The EntityStateUrlZoneType restricts a string value to a set of values that describe the different IIS Url Zones.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| Custom |  |  
| Default |  |  
| Extranet |  |  
| Intranet |  |  
| Internet |  |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
