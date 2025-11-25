Open Vulnerability and Assessment Language: HP-UX System Characteristics  
=========================================================
* Schema: HP-UX System Characteristics  
* Version: 5.12.2  
* Release Date: 11/25/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the HP-UX specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`getconf_item`  
* :ref:`ndd_item`  
* :ref:`patch_item`  
* :ref:`swlist_item`  
* :ref:`trusted_item`  
  
______________
  
.. _getconf_item:  
  
< getconf_item >  
---------------------------------------------------------
These items contain getconf items.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - parameter_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the parameter name to check  
    * - pathname  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the pathname to check  
    * - output  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The output produced by the getconf command.  
  
______________
  
.. _ndd_item:  
  
< ndd_item >  
---------------------------------------------------------
This item represents data collected by the ndd command.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - device  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the device for which the parameter was collected.  
    * - parameter  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of a parameter for example, ip_forwarding  
    * - value  
      - oval-sc:EntityItemAnySimpleType (0..1)  
      - The observed value of the named parameter.  
  
______________
  
.. _patch_item:  
  
< patch_item >  
---------------------------------------------------------
From /usr/sbin/swlist -l patch PHxx_yyyyy. See swlist manpage for specific fields

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - patch_name  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the patch name to check.  
    * - swtype  
      - oval-sc:EntityItemStringType (0..1)  
      - HP-UX patch names begin with 'PH'  
    * - area_patched  
      - oval-sc:EntityItemStringType (0..1)  
      - The third and fourth characters in HP-UX patch names indicate the area of software being patched. CO - General HP-UX commands KL - Kernel patches NE - Network specific patches SS - All other subsystems (X11, starbase, etc.)  
    * - patch_base  
      - oval-sc:EntityItemStringType (0..1)  
      - The sixth through tenth characters in HP-UX patch names represent a unique numeric identifier for the patch.  
  
______________
  
.. _swlist_item:  
  
< swlist_item >  
---------------------------------------------------------
Output of /usr/sbin/swlist command. Note: A quick way to check for the installation of a specific fileset is to use the command 'swlist -a version -l fileset filesetname'. See manpage for swlist for explanation of additional command options.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - swlist  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the bundle or fileset to check.  
    * - bundle  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - fileset  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - version  
      - Restriction of oval-sc:EntityItemAnySimpleType. See schema for details. (0..1)  
      -   
    * - title  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - vendor  
      - oval-sc:EntityItemStringType (0..1)  
      -   
  
______________
  
.. _trusted_item:  
  
< trusted_item >  
---------------------------------------------------------
These items contain account settings for trusted HP-UX installations.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - username  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the name of the user being checked  
    * - uid  
      - oval-sc:EntityItemIntType (0..1)  
      - The user's ID  
    * - password  
      - oval-sc:EntityItemStringType (0..1)  
      - This is the encrypted version of the user's password  
    * - account_owner  
      - oval-sc:EntityItemIntType (0..1)  
      - The Account owner for pseudo-users  
    * - boot_auth  
      - oval-sc:EntityItemStringType (0..1)  
      - Boot authorization  
    * - audit_id  
      - oval-sc:EntityItemStringType (0..1)  
      - getprpwaid uses the audit ID rather than the UID  
    * - audit_flag  
      - oval-sc:EntityItemStringType (0..1)  
      -   
    * - pw_change_min  
      - oval-sc:EntityItemStringType (0..1)  
      - Minimum time between password changes  
    * - pw_max_size  
      - oval-sc:EntityItemIntType (0..1)  
      - Maximum password length in characters  
    * - pw_expiration  
      - oval-sc:EntityItemIntType (0..1)  
      - Password expiration time in seconds  
    * - pw_life  
      - oval-sc:EntityItemStringType (0..1)  
      - Trusted lifetime, after which the account is locked  
    * - pw_change_s  
      - oval-sc:EntityItemStringType (0..1)  
      - Time of last successful password change  
    * - pw_change_u  
      - oval-sc:EntityItemStringType (0..1)  
      - Time of last unsuccessful password change  
    * - acct_expire  
      - oval-sc:EntityItemIntType (0..1)  
      - Absolute account lifetime in seconds  
    * - max_llogin  
      - oval-sc:EntityItemStringType (0..1)  
      - Maximum time allowed between logins before the account is locked  
    * - exp_warning  
      - oval-sc:EntityItemIntType (0..1)  
      - The time in seconds before expiration when a warning will appear  
    * - usr_chg_pw  
      - oval-sc:EntityItemStringType (0..1)  
      - Who can change this user's password  
    * - gen_pw  
      - oval-sc:EntityItemStringType (0..1)  
      - Allows user to use system-generated passwords  
    * - pw_restrict  
      - oval-sc:EntityItemStringType (0..1)  
      - Whether a triviality check is performed on user-generated passwords  
    * - pw_null  
      - oval-sc:EntityItemStringType (0..1)  
      - Determines if null passwords are allowed for this account  
    * - pw_gen_char  
      - oval-sc:EntityItemStringType (0..1)  
      - Allows password generator to use random printable ASCII characters  
    * - pw_gen_let  
      - oval-sc:EntityItemStringType (0..1)  
      - Allows password generator to use random letters  
    * - login_time  
      - oval-sc:EntityItemStringType (0..1)  
      - Specifies the times when the user may login to this account  
    * - pw_changer  
      - oval-sc:EntityItemIntType (0..1)  
      - The user ID of the user who last changed the password on the user's account, if it was not the account owner  
    * - login_time_s  
      - oval-sc:EntityItemStringType (0..1)  
      - The time of the last successful login using this account  
    * - login_time_u  
      - oval-sc:EntityItemStringType (0..1)  
      - The time of the last unsuccessful login using this account  
    * - login_tty_s  
      - oval-sc:EntityItemStringType (0..1)  
      - The terminal or remote host associated with the last successful login to the account  
    * - login_tty_u  
      - oval-sc:EntityItemStringType (0..1)  
      - The terminal or remote hosts associated with the last unsuccessful login to the account  
    * - num_u_logins  
      - oval-sc:EntityItemIntType (0..1)  
      - The number of unsuccessful login attempts since that last successful login  
    * - max_u_logins  
      - oval-sc:EntityItemIntType (0..1)  
      - The maximum number of unsuccessful login attempts before the account is locked  
    * - lock_flag  
      - oval-sc:EntityItemBoolType (0..1)  
      - Indicates whether the administrative lock on the account is set  
  
