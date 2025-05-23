Open Vulnerability and Assessment Language: SharePoint Definition  
=========================================================
* Schema: SharePoint Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the SharePoint specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The SharePoint Component Schema is based on the SharePoint Object Model (Windows SharePoint Services 3.0)

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`spwebapplication_test` (Deprecated)  
* :ref:`spgroup_test` (Deprecated)  
* :ref:`spweb_test` (Deprecated)  
* :ref:`splist_test` (Deprecated)  
* :ref:`spantivirussettings_test` (Deprecated)  
* :ref:`spsiteadministration_test` (Deprecated)  
* :ref:`spsite_test` (Deprecated)  
* :ref:`spcrawlrule_test` (Deprecated)  
* :ref:`spjobdefinition_test` (Deprecated)  
* :ref:`spjobdefinition510_test` (Deprecated)  
* :ref:`bestbet_test` (Deprecated)  
* :ref:`infopolicycoll_test` (Deprecated)  
* :ref:`spdiagnosticsservice_test` (Deprecated)  
* :ref:`spdiagnosticslevel_test` (Deprecated)  
* :ref:`sppolicyfeature_test` (Deprecated)  
* :ref:`sppolicy_test` (Deprecated)  
  
______________
  
.. _spwebapplication_test:  
  
< spwebapplication_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spwebapplication test is used to check the properties or permission settings of a SharePoint web application. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a spwebapplication_object and the optional state element specifies the data to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spwebapplication_object:  
  
< spwebapplication_object >  
---------------------------------------------------------
The spwebapplication_object element is used by a spwebapplication test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spwebapplication object consists of a webapplicationurl used to define a specific web application. See the defintion of the SPWebApplication class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webapplicationurl  
      - oval-def:EntityObjectStringType (1..1)  
      - The webapplicationurl element defines the SPWebApplication to evaluate specific security settings or permissions.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spwebapplication_state:  
  
< spwebapplication_state >  
---------------------------------------------------------
The spwebapplication_state element defines security settings and permissions that can be checked for a specified SPWebApplications.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webapplicationurl  
      - oval-def:EntityStateStringType (0..1)  
      - The webapplicationurl element identifies a Web application.  
    * - allowparttopartcommunication  
      - oval-def:EntityStateBoolType (0..1)  
      - If the allowparttopartcommunication is enabled it allows users to create connections between Web parts.  
    * - allowaccesstowebpartcatalog  
      - oval-def:EntityStateBoolType (0..1)  
      - If the allowaccesstowebpartcatalog is enabled it allows users access to the online Web part gallery.  
    * - blockedfileextention  
      - oval-def:EntityStateStringType (0..1)  
      - The blockedfileextention element identifies one or more file extensions that should be blocked from the deployment.  
    * - defaultquotatemplate  
      - oval-def:EntityStateStringType (0..1)  
      - The defaultquotatemplate element identifies the default quota template set for the web application.  
    * - externalworkflowparticipantsenabled  
      - oval-def:EntityStateBoolType (0..1)  
      - If the externalworkflowparticipantsenabled is enabled then users are allowed to participate in workflows.  
    * - recyclebinenabled  
      - oval-def:EntityStateBoolType (0..1)  
      - If the recyclebinenabled is enabled it will be easy to restore deleted files.  
    * - automaticallydeleteunusedsitecollections  
      - oval-def:EntityStateBoolType (0..1)  
      - If the automaticallydeleteunusedsitecollections is disabled, sites will not be automatically deleted.  
    * - selfservicesitecreationenabled  
      - oval-def:EntityStateBoolType (0..1)  
      - If the selfservicesitecreationenabled is enabled users will be allowed to create and manager their own top-level Web sites .  
    * - secondstagerecyclebinquota  
      - oval-def:EntityStateIntType (0..1)  
      - The secondstagerecyclebinquota is the quota for the second stage recyle bin  
    * - recyclebinretentionperiod  
      - oval-def:EntityStateIntType (0..1)  
      - The recyclebinretentionperiod is the retention period for the recyle bin  
    * - outboundmailserverinstance  
      - oval-def:EntityStateStringType (0..1)  
      - The outboundmailserverinstance element identifies the string name of the SMPT server. Note that there is a small naming inconsistency here. The SharePoint SDK calls this 'outboundmailserviceinstance'.  
    * - outboundmailsenderaddress  
      - oval-def:EntityStateStringType (0..1)  
      - The outboundmailsenderaddress element identifies the address that the mail is being send from.  
    * - outboundmailreplytoaddress  
      - oval-def:EntityStateStringType (0..1)  
      - The outboundmailreplytoaddress element identifies the address that the mail should be replied to.  
    * - secvalexpires  
      - oval-def:EntityStateBoolType (0..1)  
      - If the secvalexpires is enabled then the form will expire after the security validation time (timeout) .  
    * - timeout  
      - oval-def:EntityStateIntType (0..1)  
      - The timeout is the amount of time before security validation expires in seconds.  
    * - isadministrationwebapplication  
      - oval-def:EntityStateBoolType (0..1)  
      - If this is true, the web application to which this test refers is the Central Administration web application.  
    * - applicationpoolname  
      - oval-def:EntityStateStringType (0..1)  
      - The applicationpoolname element identifies the web applications application pool name.  
    * - applicationpoolusername  
      - oval-def:EntityStateStringType (0..1)  
      - The applicationpoolusername element identifies the web applications application pool username.  
    * - openitems  
      - oval-def:EntityStateBoolType (0..1)  
      - If the openitems is enabled the permission to view the source of documents with server-side file handlers is available to use for this web application..  
    * - addlistitems  
      - oval-def:EntityStateBoolType (0..1)  
      - If the addlistitems is enabled the permission to add items to lists, add documents to document libraries, and add Web discussion comments is available to use for this Web application.  
    * - approveitems  
      - oval-def:EntityStateBoolType (0..1)  
      - If approveitems is enabled the permission to approve a minor version of a list item or document is available to use for this the Web application.  
    * - deletelistitems  
      - oval-def:EntityStateBoolType (0..1)  
      - If the deletelistitems is enabled the permission to delete items from a list, documents from a document library, and Web discussion comments in documents is available to use for this Web application.  
    * - deleteversions  
      - oval-def:EntityStateBoolType (0..1)  
      - If the deleteversions is enabled the permission to delete past versions of a list item or document is available to use for this Web application.  
    * - editlistitems  
      - oval-def:EntityStateBoolType (0..1)  
      - If the editlistitems is enabled the permission to edit items in lists, edit documents in document libraries, edit Web discussion comments in documents, and customize Web Part Pages in document libraries is available to use for this Web application.  
    * - managelists  
      - oval-def:EntityStateBoolType (0..1)  
      - If the managelists is enabled the permission to create and delete lists, add or remove columns in a list, and add or remove public views of a list is available to use for this the Web application.  
    * - viewversions  
      - oval-def:EntityStateBoolType (0..1)  
      - If the viewversions is enabled the permission to view past versions of a list item or document is available to use for this Web application.  
    * - viewlistitems  
      - oval-def:EntityStateBoolType (0..1)  
      - If the viewlistitems is enabled the permission to view items in lists, documents in document libraries, and view Web discussion commentsis available is available to use for this Web application.  
    * - cancelcheckout  
      - oval-def:EntityStateBoolType (0..1)  
      - If the cancelcheckout is enabled the permission to discard or check in a document which is checked out to another user is available to use for this the Web application.  
    * - createalerts  
      - oval-def:EntityStateBoolType (0..1)  
      - If the createalerts is enabled the permission to Create e-mail alerts is available to use for this Web application.  
    * - viewformpages  
      - oval-def:EntityStateBoolType (0..1)  
      - If the viewformpages is enabled the permission to view forms, views, and application pages, and enumerate lists is available to use for this Web application.  
    * - viewpages  
      - oval-def:EntityStateBoolType (0..1)  
      - If the viewpages is enabled the permission to view pages in a Web site is available to use for this Web application.  
    * - addandcustomizepages  
      - oval-def:EntityStateBoolType (0..1)  
      - If addandcustomizepages is enabled the permission to add, change, or delete HTML pages or Web Part Pages, and edit the Web site using a Windows SharePoint Services–compatible editor is available to use for this Web application.  
    * - applystylesheets  
      - oval-def:EntityStateBoolType (0..1)  
      - If the applystylesheets is enabled the permission to Apply a style sheet (.css file) to the Web site is available to use for this Web application.  
    * - applythemeandborder  
      - oval-def:EntityStateBoolType (0..1)  
      - If the applythemeanborder is enabled the permission to apply a theme or borders to the entire Web site is available to use for this Web application.  
    * - browsedirectories  
      - oval-def:EntityStateBoolType (0..1)  
      - If the browsedirectories is enabled the permission to enumerate files and folders in a Web site using Microsoft Office SharePoint Designer and WebDAV interfaces is available to use for this Web application.  
    * - browseuserinfo  
      - oval-def:EntityStateBoolType (0..1)  
      - If the browseuserinfo is enabled the permission to view information about users of the Web site is available to use for this Web application.  
    * - creategroups  
      - oval-def:EntityStateBoolType (0..1)  
      - If the creategroups is enabled the permission to create a group of users that can be used anywhere within the site collection is available to use for this Web application.  
    * - createsscsite  
      - oval-def:EntityStateBoolType (0..1)  
      - If the createsscsite is enabled the permission to create a Web site using Self-Service Site Creation is available to use for this Web application.  
    * - editmyuserinfo  
      - oval-def:EntityStateBoolType (0..1)  
      - If the editmyuserinfo is enabled the permission to allows a user to change his or her user information, such as adding a picture is available to use for this Web application.  
    * - enumeratepermissions  
      - oval-def:EntityStateBoolType (0..1)  
      - If enumeratepermissions is enabled the permission to enumerate permissions on the Web site, list, folder, document, or list itemis is available to use for this Web application.  
    * - managealerts  
      - oval-def:EntityStateBoolType (0..1)  
      - If the managealerts is enabled the permission to manage alerts for all users of the Web site is available to use for this Web application.  
    * - managepermissions  
      - oval-def:EntityStateBoolType (0..1)  
      - If the managepermissions is enabled the permission to create and change permission levels on the Web site and assign permissions to users and groups is available to use for this Web application.  
    * - managesubwebs  
      - oval-def:EntityStateBoolType (0..1)  
      - If the managesubwebs is enabled the permission to create subsites such as team sites, Meeting Workspace sites, and Document Workspace sites is available to use for this Web application.  
    * - manageweb  
      - oval-def:EntityStateBoolType (0..1)  
      - If the manageweb is enabled the permission to perform all administration tasks for the Web site as well as manage content is available to use for this Web application.  
    * - open  
      - oval-def:EntityStateBoolType (0..1)  
      - If open is enabled the permission to allow users to open a Web site, list, or folder to access items inside that containeris available to use for this Web application.  
    * - useclientintegration  
      - oval-def:EntityStateBoolType (0..1)  
      - If the useclientintegration is enabled the permission to use features that launch client applications; otherwise, users must work on documents locally and upload changesis is available to use for this Web application.  
    * - useremoteapis  
      - oval-def:EntityStateBoolType (0..1)  
      - If the useremoteapis is enabled the permission to use SOAP, WebDAV, or Microsoft Office SharePoint Designer interfaces to access the Web siteis available to use for this Web application.  
    * - viewusagedata  
      - oval-def:EntityStateBoolType (0..1)  
      - If the viewusagedata is enabled the permission to view reports on Web site usage in documents is available to use for this Web application.  
    * - managepersonalviews  
      - oval-def:EntityStateBoolType (0..1)  
      - If the managepersonalviews is enabled the permission to Create, change, and delete personal views of lists is available to use for this Web application.  
    * - adddelprivatewebparts  
      - oval-def:EntityStateBoolType (0..1)  
      - If the adddelprivatewebparts is enabled the permission to add or remove personal Web Parts on a Web Part Page is available to use for this Web application.  
    * - updatepersonalwebparts  
      - oval-def:EntityStateBoolType (0..1)  
      - If the updatepersonalwebparts is enabled the permission to update Web Parts to display personalized informationis available to use for this Web application.  
  
______________
  
.. _spgroup_test:  
  
< spgroup_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spgroup test is used to check the group properties for site collections. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an spwebapplication_object and the optional state element specifies the data to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spgroup_object:  
  
< spgroup_object >  
---------------------------------------------------------
The spgroup_object element is used by a spgroup test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spgroup object consists of a sitecollectionurl used to define a specific site collection. See the defintion of the SPGroup class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityObjectStringType (1..1)  
      - The sitecollectionurl element defines the Site Colection to evaluate specific group settings.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spgroup_state:  
  
< spgroup_state >  
---------------------------------------------------------
The spgroup_state element defines settings for groups in a site collections.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityStateStringType (0..1)  
      - The sitecollectionurl element identifies a Site Collection.  
    * - gname  
      - oval-def:EntityStateStringType (0..1)  
      - The name element identifies a Group name.  
    * - autoacceptrequesttojoinleave  
      - oval-def:EntityStateBoolType (0..1)  
      - If the autoacceptrequesttojoinleave is enabled it allows users to automatically join groups.  
    * - allowmemberseditmembership  
      - oval-def:EntityStateBoolType (0..1)  
      - If the allowmemberseditmembership is enabled than all group memebers will be allowed to edit the membership of a group..  
    * - onlyallowmembersviewmembership  
      - oval-def:EntityStateBoolType (0..1)  
      - If the onlyallowmembersviewmembership is enabled it allows users to automatically join groups.  
  
______________
  
.. _spweb_test:  
  
< spweb_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spweb test is used to check the properties for site collections. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an spwebapplication_object and the optional state element specifies the data to check. See https://msdn.microsoft.com/en-us/library/ms473633.aspx for more information.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spweb_object:  
  
< spweb_object >  
---------------------------------------------------------
The spweb_object element is used by a spweb test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spweb object consists of a webcollection url and sitecollection url used to define a specific web apoplication and a specific site collection. See the defintion of the SPWeb class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webcollectionurl  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies a web site (this is the SPWeb object we want).  
    * - sitecollectionurl  
      - oval-def:EntityObjectStringType (1..1)  
      - Specifies a site collection.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spweb_state:  
  
< spweb_state >  
---------------------------------------------------------
The spweb_state element defines settings for a site collection.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webcollectionurl  
      - oval-def:EntityStateStringType (0..1)  
      - The webcollectionurl specifies a web site (the SPWeb object).  
    * - sitecollectionurl  
      - oval-def:EntityStateStringType (0..1)  
      - The sitecollectionurl element specifies a site collection.  
    * - secondarysitecolladmin  
      - oval-def:EntityStateStringType (0..1)  
      - The secondarysitecolladmin element identifies a secondary site collection admin.  
    * - secondsitecolladminenabled  
      - oval-def:EntityStateBoolType (0..1)  
      - A boolean that represents if the secondarysitecolladmin is enabled.  
    * - allowanonymousaccess  
      - oval-def:EntityStateBoolType (0..1)  
      - If the allowanonymousaccess is enabled users will be allowed to create and manager their own top-level Web sites .  
  
______________
  
.. _splist_test:  
  
< splist_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The splist test is used to check the properties of lists associated with a SharePoint site or site collection. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an splist_object and the optional state element specifies the data to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _splist_object:  
  
< splist_object >  
---------------------------------------------------------
The splist_object element is used by a splist test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An splist object consists of a spsiteurl used to define a specific site in a site collection that various security related configuration items need to be checked. See the defintion of the SPList class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - spsiteurl  
      - oval-def:EntityObjectStringType (1..1)  
      - The spsiteurl element defines the Sharepoint website being specified ...  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _splist_state:  
  
< splist_state >  
---------------------------------------------------------
The splist_state element defines the different information that can be used to evaluate the specified Sharepoint sites....

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - spsiteurl  
      - oval-def:EntityStateStringType (0..1)  
      - The spsiteurl element identifies an Sharepoint site to test for.  
    * - irmenabled  
      - oval-def:EntityStateBoolType (0..1)  
      - If the irmenabled option is enabled, documents are protected whenever they leave the control of the Sharepoint system.  
    * - enableversioning  
      - oval-def:EntityStateBoolType (0..1)  
      - If the enableversioning option is enabled, backup copies of documents are kept and managed by the Sharepoint system.  
    * - nocrawl  
      - oval-def:EntityStateBoolType (0..1)  
      - If the nocrawl option is enabled, the site is excluded from crawls that Sharepoint does when it indexes sites.  
  
______________
  
.. _spantivirussettings_test:  
  
< spantivirussettings_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spantivirussettings test is used to check the settings for antivirus software associated with a SharePoint deployment.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spantivirussettings_object:  
  
< spantivirussettings_object >  
---------------------------------------------------------
The spantivirussettings_object element is used by a spantivirussettings test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spantivirussettings object consists of a spwebservicename used to define a specific webservice in a farm that various security related configuration items need to be checked and an spfarmname which denotes the farm of which the spwebservice is a part. See the defintion of the SPAntiVirusSettings class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - spwebservicename  
      - oval-def:EntityObjectStringType (1..1)  
      - The spwebservicename element denotes the web service for which antivirus settings will be checked.  
    * - spfarmname  
      - oval-def:EntityObjectStringType (1..1)  
      - The spfarmname element denotes the farm on which a web service to be queried resides.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spantivirussettings_state:  
  
< spantivirussettings_state >  
---------------------------------------------------------
The spantivirus_state element defines the different information that can be used to evaluate the specified Sharepoint sites....

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - spwebservicename  
      - oval-def:EntityStateStringType (0..1)  
      - The spwebservicename denotes the name of a SharePoint web service to be tested or * (the default) to test all web services.  
    * - spfarmname  
      - oval-def:EntityStateStringType (0..1)  
      - The spfarmname denotes the name of the farm on which the Sharepoint webservice resides or the local farm (default).  
    * - allowdownload  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether infected documents can be downloaded on the SharePoint system.  
    * - cleaningenabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the virus scanner should attempt to cure files that are infected.  
    * - downloadscanenabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whetehr files are scanned for viruses when they are downloaded.  
    * - numberofthreads  
      - oval-def:EntityStateIntType (0..1)  
      - The number of threads that the antivirus scanner can use to scan documents for viruses.  
    * - skipsearchcrawl  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether to skip scanning for viruses during a search crawl.  
    * - timeout  
      - oval-def:EntityStateIntType (0..1)  
      - Denotes the amount of time before the virus scanner times out in seconds.  
    * - uploadscanenabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether files are scanned when they are uploaded.  
    * - vendorupdatecount  
      - oval-def:EntityStateIntType (0..1)  
      - Denotes the current increment of the number of times the vendor has been updated.  
  
______________
  
.. _spsiteadministration_test:  
  
< spsiteadministration_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spsiteadministration test is used to check the properties of a site. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an spwebapplication_object and the optional state element specifies the data to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spsiteadministration_object:  
  
< spsiteadministration_object >  
---------------------------------------------------------
The spsiteadministration_object element is used by a spsiteadministration test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spsiteadministration object consists of a webapplicationurl used to define a specific web application. The collected data is available via the SPQuota class, which can be found via the SPSite object. See the defintions of the SPSite and the SPQuota classes in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityObjectStringType (1..1)  
      - The sitecollectionurl element defines the site to evaluate.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spsiteadministration_state:  
  
< spsiteadministration_state >  
---------------------------------------------------------
The spspsiteadministration_state element defines security settings and permissions that can be checked for a specified SPSite.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityStateStringType (0..1)  
      - The sitecollectionurl element identifies a site.  
    * - storagemaxlevel  
      - oval-def:EntityStateIntType (0..1)  
      - The storagemaxlevel is the maximum storage allowed for the site.  
    * - storagewarninglevel  
      - oval-def:EntityStateIntType (0..1)  
      - When the storagewarninglevel is reached a site collection receive advance notice before available storage is expended.s.  
  
______________
  
.. _spsite_test:  
  
< spsite_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spsite test is used to check the properties of a site. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references an spwebapplication_object and the optional state element specifies the data to check.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spsite_object:  
  
< spsite_object >  
---------------------------------------------------------
The spsite_object element is used by a spsiteadministration test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spsite object consists of a sitecollectionurl used to define a specific web application. See the defintion of the SPSite class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityObjectStringType (1..1)  
      - The sitecollectionurl element defines the site to evaluate.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spsite_state:  
  
< spsite_state >  
---------------------------------------------------------
The spsite_state element defines security settings and permissions that can be checked for a specified SPSite.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityStateStringType (0..1)  
      - The sitecollectionurl element identifies a site.  
    * - quotaname  
      - oval-def:EntityStateStringType (0..1)  
      - The quota name is the name of quota template for a site collection.  
    * - url (Deprecated)  
      - oval-def:EntityStateStringType (0..1)  
      - The URL is the full URL to the root Web site of the site collection, including host name, port number, and path.  
  
______________
  
.. _spcrawlrule_test:  
  
< spcrawlrule_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spcrawlrule test is used to check the configuration or rules associated with the SharePoint system's built-in indexer and the sites or documents that will be indexed.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spcrawlrule_object:  
  
< spcrawlrule_object >  
---------------------------------------------------------
The spcrawlrule_object element is used by a spcrawlrule test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spcrawlrule object consists of a spsiteurl used to define a specific resource (eg. website or document) on a server that can be indexed by the SharePoint indexer. See the defintion of the CrawlRule class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - spsiteurl  
      - oval-def:EntityObjectStringType (1..1)  
      - The spsiteurl element denotes the resource on the SharePoint server (eg. a site or document) for which indexing settings will be checked.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spcrawlrule_state:  
  
< spcrawlrule_state >  
---------------------------------------------------------
The spcrawlrule state element defines the various properties of the SharePoint indexer that can be checked.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - spsiteurl  
      - oval-def:EntityStateStringType (0..1)  
      - The spsiteurl denotes the URL of a website or resource whose indexing properties should be tested.  
    * - crawlashttp  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the crawler should crawl content from a hierarchical content source, such as HTTP content.  
    * - enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether a particular crawl rule is enabled.  
    * - followcomplexurls  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the indexer should crawl websites that contain the question mark (?) character.  
    * - path  
      - oval-def:EntityStateStringType (0..1)  
      - The path to which a particular crawl rule applies.  
    * - priority  
      - oval-def:EntityStateIntType (0..1)  
      - The priority setting for a particular crawl rule.  
    * - suppressindexing  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the crawler should exclude the content of items that this rule applies to from the content index.  
    * - accountname  
      - oval-def:EntityStateStringType (0..1)  
      - A string containing the account name for the crawl rule.  
  
______________
  
.. _spjobdefinition_test:  
  
< spjobdefinition_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: Replaced by the spjobdefinition510_test. This test does not uniquely identify a single job definition. A new test was created to use displaynames, which are unique. See the spjobdefinition510_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The spjobdefinition test is used to check the status of the various properties associated with scheduled jobs in the SharePoint system.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spjobdefinition_object:  
  
< spjobdefinition_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: Replaced by the spjobdefinition510_object. This test does not uniquely identify a single job definition. A new object was created to use displaynames, which are unique. See the spjobdefinition510_object.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The spjobdefinition_object element is used by a spjobdefinition test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spjobdefinition_object consists of a webappuri used to define a specific web application for which job checks should be done. See the defintion of the SPJobDefinition class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webappuri  
      - oval-def:EntityObjectStringType (1..1)  
      - The URI that represents the web application for which jobs should be checked.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spjobdefinition_state:  
  
< spjobdefinition_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.10  
* Reason: Replaced by the spjobdefinition510_state. This state does not uniquely identify a single job definition. A new state was created to use displaynames, which are unique. See the spjobdefinition510_state.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
The various properties of a Sharepoint job that can be checked.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webappuri  
      - oval-def:EntityStateStringType (0..1)  
      - The URI that represents the web application for which jobs should be checked.  
    * - displayname  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the job as displayed in the SharePoint Central Administration site.  
    * - isdisabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Determines whether or not the job definition is enabled.  
    * - retry  
      - oval-def:EntityStateBoolType (0..1)  
      - Determines whether the job definition should be retried if it ends abnormally.  
    * - title  
      - oval-def:EntityStateStringType (0..1)  
      - The title of a job as displayed in the SharePoint Central Administration site.  
  
______________
  
.. _spjobdefinition510_test:  
  
< spjobdefinition510_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spjobdefinition test is used to check the status of the various properties associated with scheduled jobs in the SharePoint system.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spjobdefinition510_object:  
  
< spjobdefinition510_object >  
---------------------------------------------------------
The spjobdefinition510_object element is used by a spjobdefinition test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spjobdefinition510_object consists of a webappuri and displayname used to define a specific web application for which job checks should be done. See the defintion of the SPJobDefinition class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webappuri  
      - oval-def:EntityObjectStringType (1..1)  
      - The URI that represents the web application for which jobs should be checked.  
    * - displayname  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the job as displayed in the SharePoint Central Administration site.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spjobdefinition510_state:  
  
< spjobdefinition510_state >  
---------------------------------------------------------
The various properties of a Sharepoint job that can be checked.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webappuri  
      - oval-def:EntityStateStringType (0..1)  
      - The URI that represents the web application for which jobs should be checked.  
    * - displayname  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the job as displayed in the SharePoint Central Administration site.  
    * - isdisabled  
      - oval-def:EntityStateBoolType (0..1)  
      - Determines whether or not the job definition is enabled.  
    * - retry  
      - oval-def:EntityStateBoolType (0..1)  
      - Determines whether the job definition should be retried if it ends abnormally.  
    * - title  
      - oval-def:EntityStateStringType (0..1)  
      - The title of a job as displayed in the SharePoint Central Administration site.  
  
______________
  
.. _bestbet_test:  
  
< bestbet_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The bestbet test is used to get all the best bets associated with a site.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _bestbet_object:  
  
< bestbet_object >  
---------------------------------------------------------
The bestbet_object element is used by a bestbet test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An bestbet object consists of a sitecollectionurl used to define a specific site and a bestbeturl used to define a specific best bet. See the defintion of the BestBet class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityObjectStringType (1..1)  
      - The URL that represents the site collection.  
    * - bestbeturl  
      - oval-def:EntityObjectStringType (1..1)  
      - The URL that represents the best bet.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _bestbet_state:  
  
< bestbet_state >  
---------------------------------------------------------
The various properties of a Best Bet that can be checked.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityStateStringType (0..1)  
      - The URL that represents the site collection.  
    * - bestbeturl  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the job as displayed in the SharePoint Central Administration site.  
    * - title  
      - oval-def:EntityStateStringType (0..1)  
      - The title of a best bet.  
    * - description  
      - oval-def:EntityStateStringType (0..1)  
      - Thedescription of a best bet..  
  
______________
  
.. _infopolicycoll_test:  
  
< infopolicycoll_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The policycoll test is used to get all the Information Policies associated with a site.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _infopolicycoll_object:  
  
< infopolicycoll_object >  
---------------------------------------------------------
The infopolicycoll_object element is used by a policycoll test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

A infopolicycoll object consists of a sitecollectionurl used to define a specific site and an id used to define a specific information policy. See the defintion of the Policy class and policycollection class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityObjectStringType (1..1)  
      - The URL that represents the site collection.  
    * - id  
      - oval-def:EntityObjectStringType (1..1)  
      - The id that represents the Information Policy.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _infopolicycoll_state:  
  
< infopolicycoll_state >  
---------------------------------------------------------
The various properties of the Information Policy that can be checked.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - sitecollectionurl  
      - oval-def:EntityStateStringType (0..1)  
      - The URL that represents the site collection.  
    * - id  
      - oval-def:EntityStateStringType (0..1)  
      - The id of the Information Policy.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the Information Policy.  
    * - description  
      - oval-def:EntityStateStringType (0..1)  
      - The description of an Information Policy..  
    * - longdescription  
      - oval-def:EntityStateStringType (0..1)  
      - The long description of an Information Policy..  
  
______________
  
.. _spdiagnosticsservice_test:  
  
< spdiagnosticsservice_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spdiagnosticsservice test is used to check the diagnostic properties associated with a Sharepoint system.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spdiagnosticsservice_object:  
  
< spdiagnosticsservice_object >  
---------------------------------------------------------
The spdiagnosticsservice_object element is used by an spdiagnosticsservice test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spdiagnosticsservice object consists of a farmname used to define a specific Sharepoint farm for which diagnostics properties should be checked. See the defintion of the SPDiagnosticsService class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - farmname  
      - oval-def:EntityObjectStringType (1..1)  
      - The farm whose diagnostic capabilities should be checked. Use .* for all farms or SPFarm.Local for the local farm.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spdiagnosticsservice_state:  
  
< spdiagnosticsservice_state >  
---------------------------------------------------------
The various properties of a diagnostics service that can be checked.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - farmname  
      - oval-def:EntityStateStringType (0..1)  
      - The farm whose diagnostic capabilities should be checked.  
    * - displayname  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the diagnostic service as shown in the Sharepoint Central Administration site.  
    * - logcutinterval  
      - oval-def:EntityStateIntType (0..1)  
      - The number of minutes to capture events to a single log file. This value lies in the range 0 to 1440. The default value is 30.  
    * - loglocation  
      - oval-def:EntityStateStringType (0..1)  
      - The path to the file system directory where log files are created and stored.  
    * - logstokeep  
      - oval-def:EntityStateIntType (0..1)  
      - The value that indicates the number of log files to create. This lies in the range 0 to 1024 with a default of 96.  
    * - required  
      - oval-def:EntityStateBoolType (0..1)  
      - The required property specifies whether an instance of the spdiagnosticsservice must be running on the farm.  
    * - typename  
      - oval-def:EntityStateStringType (0..1)  
      - The friendly name for the service as displayed in the Central Administration and in logs. This should be "Windows Sharepoint Diagnostics Service" by default.  
  
______________
  
.. _spdiagnosticslevel_test:  
  
< spdiagnosticslevel_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The spdiagnosticslevel_test is used to check the status of the logging features associated with a Sharepoint deployment.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _spdiagnosticslevel_object:  
  
< spdiagnosticslevel_object >  
---------------------------------------------------------
The spdiagnosticslevel_object element is used by an spdiagnosticslevel test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An spdiagnosticslevel object consists of a farmname used to define a specific Sharepoint farm for which policy properties should be checked. See the defintion of the SPWebApplication class in the SharePoint object model documentation. See the defintion of the IDiagnosticsLevel Interface in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - farmname  
      - oval-def:EntityObjectStringType (1..1)  
      - The farm whose diagnostics levels should be checked. Use .* for all farms or SPFarm.Local for the local farm.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _spdiagnosticslevel_state:  
  
< spdiagnosticslevel_state >  
---------------------------------------------------------
The various properties of a Diagnostics level that can be checked.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - farmname  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the farm for which diagnostics level properties should be checked.  
    * - eventseverity  
      - sp-def:EntityStateEventSeverityType (0..1)  
      - The event severity setting for a particular diagnostic level category.  
    * - hidden  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the trace log category is hidden in the Windows Sharepoint Services Central Administration interface.  
    * - levelid  
      - oval-def:EntityStateStringType (0..1)  
      - A string that represents the ID of the trace log category. This is its English language name.  
    * - levelname  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the trace log category. This represents the localized name for the category.  
    * - traceseverity  
      - sp-def:EntityStateTraceSeverityType (0..1)  
      - The trace severity setting for a particular diagnostic level category.  
  
______________
  
.. _sppolicyfeature_test:  
  
< sppolicyfeature_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The sppolicyfeature test enables one to check the attributes associated with policies and policy features on the Sharepoint deployment.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _sppolicyfeature_object:  
  
< sppolicyfeature_object >  
---------------------------------------------------------
The sppolicyfeature_object element is used by an sppolicyfeature test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An sppolicyfeature object consists of a farmname used to define a specific Sharepoint farm for which policy feature properties should be checked. See the defintion of the PolicyFeature class in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - farmname  
      - oval-def:EntityObjectStringType (1..1)  
      - The farm whose policy features should be checked. Use .* for all farms or SPFarm.Local for the local farm.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _sppolicyfeature_state:  
  
< sppolicyfeature_state >  
---------------------------------------------------------
The various properties of a policy feature that can be checked.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - farmname  
      - oval-def:EntityStateStringType (0..1)  
      - The farm whose policy features should be checked. Use .* for all farms or SPFarm.Local for the local farm.  
    * - configpage  
      - oval-def:EntityStateStringType (0..1)  
      - The URL to a web control used to edit policy instance-level settings.  
    * - defaultcustomdata  
      - oval-def:EntityStateStringType (0..1)  
      - The default values for any policy instance-level settings for a policy feature.  
    * - description  
      - oval-def:EntityStateStringType (0..1)  
      - The short description of the policy feature and of the service it provides.  
    * - globalconfigpage  
      - oval-def:EntityStateStringType (0..1)  
      - The URL to a web control used to edit server farm-level settings for this policy feature.  
    * - globalcustomdata  
      - oval-def:EntityStateStringType (0..1)  
      - The default settings for any server farm-level settings for this policy feature.  
    * - group  
      - oval-def:EntityStateStringType (0..1)  
      - The policy feature group to which a policy feature belongs.  
    * - name  
      - oval-def:EntityStateStringType (0..1)  
      - The name to display in the Microsoft Office Sharepoint Server 2007 interface for an information policy feature.  
    * - publisher  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the creator of the policy feature as it is displayed in the Microsoft Office Sharepoint Server 2007 user interface.  
    * - state  
      - sp-def:EntityStatePolicyFeatureStateType (0..1)  
      - Specifies whether the policy feature is hidden or visible.  
  
______________
  
.. _sppolicy_test:  
  
< sppolicy_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
The sppolicy test enables one to check the attributes of the policies associated with a particular URL Zone in a Sharepoint system.

**Extends:** oval-def:TestType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - object  
      - oval-def:ObjectRefType (1..1)  
      -   
    * - state  
      - oval-def:StateRefType (0..1)  
      -   
  
.. _sppolicy_object:  
  
< sppolicy_object >  
---------------------------------------------------------
The sppolicy_object element is used by an sppolicy test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information. The common set element allows complex objects to be created using filters and set logic. Again, please refer to the description of the set element in the oval-definitions-schema.

An sppolicy object consists of a webappuri and a URL Zone used to define a specific Sharepoint web application and zone for which policy properties should be checked. See the defintion of the SPPolicy class and the sppolicyroletype in the SharePoint object model documentation.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webappuri  
      - oval-def:EntityObjectStringType (1..1)  
      - The URI that represents the web application for which policies should be checked.  
    * - urlzone  
      - sp-def:EntityObjectUrlZoneType (1..1)  
      - The zone for which policies should be checked.  
  
.. _sppolicy_state:  
  
< sppolicy_state >  
---------------------------------------------------------
The various properties of a policy that can be checked.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - webappuri  
      - oval-def:EntityStateStringType (0..1)  
      - The URI that represents the web application for which policies should be checked.  
    * - urlzone  
      - sp-def:EntityStateUrlZoneType (0..1)  
      - The zone for which policies should be checked.  
    * - displayname  
      - oval-def:EntityStateStringType (0..1)  
      - The user or group display name for a policy. This defaults to the user name if the display name cannot be resolved through Active Directory.  
    * - issystemuser  
      - oval-def:EntityStateBoolType (0..1)  
      - Specifies whether the user identified by a particular policy is visible only as a System account within the Windows Sharepoint Services user interface.  
    * - username  
      - oval-def:EntityStateStringType (0..1)  
      - The user name of the user or group that is associated with policy.  
    * - policyroletype  
      - sp-def:EntityStatePolicyRoleType (0..1)  
      - The policy role type to apply globally in a Sharepoint web application to a user or group.  
  
.. _EntityObjectUrlZoneType:  
  
== EntityObjectUrlZoneType ==  
---------------------------------------------------------
The EntityObjectUrlZoneType restricts a string value to a set of values that describe the different IIS Url Zones. The empty string is also allowed to support empty element associated with error conditions.

**Restricts:** oval-def:EntityObjectStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateEventSeverityType:  
  
== EntityStateEventSeverityType ==  
---------------------------------------------------------
The EntityStateEventSeverityType restricts a string value to a set of values that describe the different states that can be configured for a diagnostics level event severity level property of the diagnostics service.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateTraceSeverityType:  
  
== EntityStateTraceSeverityType ==  
---------------------------------------------------------
The EntityStateTraceSeverityType restricts a string value to a set of values that describe the different states that can be configured for a diagnostics level trace severity level property of the diagnostics service.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStatePolicyRoleType:  
  
== EntityStatePolicyRoleType ==  
---------------------------------------------------------
The EntityStatePolicyRoleType restricts a string value to a set of values that describe the different Policy settings for Access Control that are available for users.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStatePolicyFeatureStateType:  
  
== EntityStatePolicyFeatureStateType ==  
---------------------------------------------------------
The EntityStatePolicyRoleType restricts a string value to a set of values that describe the different policy feature states that can be configured for a policy feature.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - Hidden  
      - | Specifies that the policy feature is hidden from the Sharepoint Central Administration user interface.  
    * - Visible  
      - | Specifies that the policy feature is visible from the Sharepoint Central Administration user interface.  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateUrlZoneType:  
  
== EntityStateUrlZoneType ==  
---------------------------------------------------------
The EntityStateUrlZoneType restricts a string value to a set of values that describe the different IIS Url Zones.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
