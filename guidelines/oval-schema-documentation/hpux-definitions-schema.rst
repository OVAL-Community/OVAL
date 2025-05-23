Open Vulnerability and Assessment Language: HP-UX Definition  
=========================================================
* Schema: HP-UX Definition  
* Version: 5.12.1  
* Release Date: 05/23/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the HP-UX specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Test Listing  
---------------------------------------------------------
* :ref:`getconf_test` (Deprecated)  
* :ref:`ndd_test` (Deprecated)  
* :ref:`patch53_test` (Deprecated)  
* :ref:`patch_test` (Deprecated)  
* :ref:`swlist_test` (Deprecated)  
* :ref:`trusted_test` (Deprecated)  
  
______________
  
.. _getconf_test:  
  
< getconf_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
From /usr/bin/getconf. See getconf manpage for specific fields

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
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _getconf_object:  
  
< getconf_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - parameter_name  
      - oval-def:EntityObjectStringType (1..1)  
      - This is the parameter name to check.  
    * - pathname  
      - oval-def:EntityObjectStringType (1..1)  
      - This is the pathname to check. Note that pathname is optional in the getconf call. A nil pathname ( empty wth attribute xsi:nil='true') in OVAL should be interpreted as if it was not supplied to the getconf call.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _getconf_state:  
  
< getconf_state >  
---------------------------------------------------------


**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - parameter_name  
      - oval-def:EntityStateStringType (0..1)  
      - This is the parameter name to check  
    * - pathname  
      - oval-def:EntityStateStringType (0..1)  
      - This is the pathname to check. Note that pathname is optional in the getconf call. A nil pathname in OVAL should be interpreted as if it was not supplied to the getconf call.  
    * - output  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The output produced by the getconf command.  
  
______________
  
.. _ndd_test:  
  
< ndd_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
From /usr/bin/ndd. See ndd manpage for specific fields

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
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _ndd_object:  
  
< ndd_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the device to examine.  
    * - parameter  
      - oval-def:EntityObjectStringType (1..1)  
      - The name of the parameter, For example, ip_forwarding.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _ndd_state:  
  
< ndd_state >  
---------------------------------------------------------


**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the device to examine.  
    * - parameter  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the parameter, For example, ip_forwarding.  
    * - value  
      - oval-def:EntityStateAnySimpleType (0..1)  
      - The value of the named parameter.  
  
______________
  
.. _patch53_test:  
  
< patch53_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
From /usr/sbin/swlist -l patch PHxx_yyyyy. See swlist manpage for specific fields

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
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _patch53_object:  
  
< patch53_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - behaviors  
      - hpux-def:Patch53Behaviors (0..1)  
      -   
    * - swtype  
      - oval-def:EntityObjectStringType (1..1)  
      - HP-UX patch names begin with 'PH'  
    * - area_patched  
      - oval-def:EntityObjectStringType (1..1)  
      - The third and fourth characters in HP-UX patch names indicate the area of software being patched. CO - General HP-UX commands KL - Kernel patches NE - Network specific patches SS - All other subsystems (X11, starbase, etc.)  
    * - patch_base  
      - oval-def:EntityObjectStringType (1..1)  
      - The sixth through tenth characters in HP-UX patch names represent a unique numeric identifier for the patch  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _patch53_state:  
  
< patch53_state >  
---------------------------------------------------------


**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - swtype  
      - oval-def:EntityStateStringType (0..1)  
      - HP-UX patch names begin with 'PH'  
    * - area_patched  
      - oval-def:EntityStateStringType (0..1)  
      - The third and fourth characters in HP-UX patch names indicate the area of software being patched. CO - General HP-UX commands KL - Kernel patches NE - Network specific patches SS - All other subsystems (X11, starbase, etc.)  
    * - patch_base  
      - oval-def:EntityStateStringType (0..1)  
      - The sixth through tenth characters in HP-UX patch names represent a unique numeric identifier for the patch  
  
.. _Patch53Behaviors:  
  
== Patch53Behaviors ==  
---------------------------------------------------------
The Patch53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the patch53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

Attributes  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Attributes  
    :header-rows: 1  
  
    * - Attribute  
      - Type  
      - Desc.  
    * - supersedence  
      - Restriction of xsd:boolean (optional *default*='false')  
      - 'supersedence' specifies that the object should also match any superseding patches to the one being specified. In other words, if set to True the resulting object set would be the original patch specified plus any superseding patches. The default value is 'false' meaning the object should only match the specified patch.  
  
  
______________
  
.. _patch_test:  
  
< patch_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the patch53_test. The patch_name entity was removed from the patch_object element, and replaced with the swtype, area_patched, and patch_base entities, because the patch_name element can be constructed from the swtype, area_patched, and patch_base entities. Likewise, the patch_name entity was removed from the patch_state element for the same reason. Also, a behaviors entity was added to the patch_object to allow the object to match both the original patch and any superseding patches. A new test was created to reflect these changes. See the patch53_test.  
* Comment: This test has been deprecated and will be removed in version 6.0 of the language.  
  
From /usr/sbin/swlist -l patch PHxx_yyyyy. See swlist manpage for specific fields

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
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _patch_object:  
  
< patch_object > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the patch53_object. The patch_name entity was removed from the patch_object element, and replaced with the swtype, area_patched, and patch_base entities, because the patch_name element can be constructed from the swtype, area_patched, and patch_base entities. Also, a behaviors entity was added to the patch_object to allow the object to match both the original patch and any superseding patches. A new object was created to reflect these changes. See the patch53_object.  
* Comment: This object has been deprecated and will be removed in version 6.0 of the language.  
  
**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - patch_name  
      - oval-def:EntityObjectStringType (1..1)  
      - This is the patch name to check.  
  
.. _patch_state:  
  
< patch_state > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.3  
* Reason: Replaced by the patch53_state. The patch_name entity was removed from the patch_state element, and replaced with the swtype, area_patched, and patch_base entities, because the patch_name element can be constructed from the swtype, area_patched, and patch_base entities. A new state was created to reflect these changes. See the patch53_state.  
* Comment: This state has been deprecated and will be removed in version 6.0 of the language.  
  
**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - patch_name  
      - oval-def:EntityStateStringType (0..1)  
      - This is the patch name to check  
    * - swtype  
      - oval-def:EntityStateStringType (0..1)  
      - HP-UX patch names begin with 'PH'  
    * - area_patched  
      - oval-def:EntityStateStringType (0..1)  
      - The third and fourth characters in HP-UX patch names indicate the area of software being patched. CO - General HP-UX commands KL - Kernel patches NE - Network specific patches SS - All other subsystems (X11, starbase, etc.)  
    * - patch_base  
      - oval-def:EntityStateStringType (0..1)  
      - The sixth through tenth characters in HP-UX patch names represent a unique numeric identifier for the patch  
  
______________
  
.. _swlist_test:  
  
< swlist_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
Output of /usr/sbin/swlist command. Note: A quick way to check for the installation of a specific fileset is to use the command 'swlist -a version -l fileset filesetname'. See manpage for swlist for explanation of additional command options.

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
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _swlist_object:  
  
< swlist_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - swlist  
      - oval-def:EntityObjectStringType (1..1)  
      - This is the name of the bundle or fileset to check.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _swlist_state:  
  
< swlist_state >  
---------------------------------------------------------


**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - swlist  
      - oval-def:EntityStateStringType (0..1)  
      - This is the name of the bundle or fileset to check.  
    * - bundle  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - fileset  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - version  
      - Restriction of oval-def:EntityStateAnySimpleType. See schema for details. (0..1)  
      -   
    * - title  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - vendor  
      - oval-def:EntityStateStringType (0..1)  
      -   
  
______________
  
.. _trusted_test:  
  
< trusted_test > (Deprecated)  
---------------------------------------------------------
Deprecation Info  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
* Deprecated As Of Version 5.12  
* Reason:   
* Comment: This test has been deprecated due to lack of documented usage and will be removed in version 6.0 of the language.  
  
This test allows for analysis of account settings in trusted HP-UX installations

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
      - oval-def:StateRefType (0..unbounded)  
      -   
  
.. _trusted_object:  
  
< trusted_object >  
---------------------------------------------------------


**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - username  
      - oval-def:EntityObjectStringType (1..1)  
      - This is the name of the user being checked.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _trusted_state:  
  
< trusted_state >  
---------------------------------------------------------


**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - username  
      - oval-def:EntityStateStringType (0..1)  
      - This is the name of the user being checked  
    * - uid  
      - oval-def:EntityStateIntType (0..1)  
      - The user's ID  
    * - password  
      - oval-def:EntityStateStringType (0..1)  
      - This is the encrypted version of the user's password  
    * - account_owner  
      - oval-def:EntityStateIntType (0..1)  
      - The Account owner for pseudo-users  
    * - boot_auth  
      - oval-def:EntityStateStringType (0..1)  
      - Boot authorization  
    * - audit_id  
      - oval-def:EntityStateStringType (0..1)  
      - getprpwaid uses the audit ID rather than the UID  
    * - audit_flag  
      - oval-def:EntityStateStringType (0..1)  
      -   
    * - pw_change_min  
      - oval-def:EntityStateStringType (0..1)  
      - Minimum time between password changes  
    * - pw_max_size  
      - oval-def:EntityStateIntType (0..1)  
      - Maximum password length in characters  
    * - pw_expiration  
      - oval-def:EntityStateIntType (0..1)  
      - Password expiration time in seconds  
    * - pw_life  
      - oval-def:EntityStateStringType (0..1)  
      - Trusted lifetime, after which the account is locked  
    * - pw_change_s  
      - oval-def:EntityStateStringType (0..1)  
      - Time of last successful password change  
    * - pw_change_u  
      - oval-def:EntityStateStringType (0..1)  
      - Time of last unsuccessful password change  
    * - acct_expire  
      - oval-def:EntityStateIntType (0..1)  
      - Absolute account lifetime in seconds  
    * - max_llogin  
      - oval-def:EntityStateStringType (0..1)  
      - Maximum time allowed between logins before the account is locked  
    * - exp_warning  
      - oval-def:EntityStateIntType (0..1)  
      - The time in seconds before expiration when a warning will appear  
    * - usr_chg_pw  
      - oval-def:EntityStateStringType (0..1)  
      - Who can change this user's password  
    * - gen_pw  
      - oval-def:EntityStateStringType (0..1)  
      - Allows user to use system-generated passwords  
    * - pw_restrict  
      - oval-def:EntityStateStringType (0..1)  
      - Whether a triviality check is performed on user-generated passwords  
    * - pw_null  
      - oval-def:EntityStateStringType (0..1)  
      - Determines if null passwords are allowed for this account  
    * - pw_gen_char  
      - oval-def:EntityStateStringType (0..1)  
      - Allows password generator to use random printable ASCII characters  
    * - pw_gen_let  
      - oval-def:EntityStateStringType (0..1)  
      - Allows password generator to use random letters  
    * - login_time  
      - oval-def:EntityStateStringType (0..1)  
      - Specifies the times when the user may login to this account  
    * - pw_changer  
      - oval-def:EntityStateIntType (0..1)  
      - The user ID of the user who last changed the password on the user's account, if it was not the account owner  
    * - login_time_s  
      - oval-def:EntityStateStringType (0..1)  
      - The time of the last successful login using this account  
    * - login_time_u  
      - oval-def:EntityStateStringType (0..1)  
      - The time of the last unsuccessful login using this account  
    * - login_tty_s  
      - oval-def:EntityStateStringType (0..1)  
      - The terminal or remote host associated with the last successful login to the account  
    * - login_tty_u  
      - oval-def:EntityStateStringType (0..1)  
      - The terminal or remote hosts associated with the last unsuccessful login to the account  
    * - num_u_logins  
      - oval-def:EntityStateIntType (0..1)  
      - The number of unsuccessful login attempts since that last successful login  
    * - max_u_logins  
      - oval-def:EntityStateIntType (0..1)  
      - The maximum number of unsuccessful login attempts before the account is locked  
    * - lock_flag  
      - oval-def:EntityStateBoolType (0..1)  
      - Indicates whether the administrative lock on the account is set  
  
