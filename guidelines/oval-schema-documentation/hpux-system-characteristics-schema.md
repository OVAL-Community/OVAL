# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: HP-UX System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the HP-UX specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="getconf_item"></a>< getconf_item >

These items contain getconf items.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| parameter_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the parameter name to check</div>|  
| pathname | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the pathname to check</div>|  
| output | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>The output produced by the getconf command.</div>|  
  
______________
  
## <a name="ndd_item"></a>< ndd_item >

This item represents data collected by the ndd command.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| device | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the device for which the parameter was collected.</div>|  
| parameter | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of a parameter for example, ip_forwarding</div>|  
| value | [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType)  (0..1) |  
||<div>The observed value of the named parameter.</div>|  
  
______________
  
## <a name="patch_item"></a>< patch_item >

From /usr/sbin/swlist -l patch PHxx_yyyyy. See swlist manpage for specific fields

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| patch_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the patch name to check.</div>|  
| swtype | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>HP-UX patch names begin with 'PH'</div>|  
| area_patched | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The third and fourth characters in HP-UX patch names indicate the area of software being patched. CO - General HP-UX commands KL - Kernel patches NE - Network specific patches SS - All other subsystems (X11, starbase, etc.)</div>|  
| patch_base | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The sixth through tenth characters in HP-UX patch names represent a unique numeric identifier for the patch.</div>|  
  
______________
  
## <a name="swlist_item"></a>< swlist_item >

Output of /usr/sbin/swlist command. Note: A quick way to check for the installation of a specific fileset is to use the command 'swlist -a version -l fileset filesetname'. See manpage for swlist for explanation of additional command options.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| swlist | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the bundle or fileset to check.</div>|  
| bundle | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| fileset | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| version | Restriction of [oval-sc:EntityItemAnySimpleType](oval-system-characteristics-schema.md#EntityItemAnySimpleType) . See schema for details. (0..1) |  
||<div></div>|  
| title | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| vendor | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="trusted_item"></a>< trusted_item >

These items contain account settings for trusted HP-UX installations.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the name of the user being checked</div>|  
| uid | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The user's ID</div>|  
| password | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>This is the encrypted version of the user's password</div>|  
| account_owner | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The Account owner for pseudo-users</div>|  
| boot_auth | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Boot authorization</div>|  
| audit_id | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>getprpwaid uses the audit ID rather than the UID</div>|  
| audit_flag | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div></div>|  
| pw_change_min | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Minimum time between password changes</div>|  
| pw_max_size | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Maximum password length in characters</div>|  
| pw_expiration | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Password expiration time in seconds</div>|  
| pw_life | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Trusted lifetime, after which the account is locked</div>|  
| pw_change_s | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Time of last successful password change</div>|  
| pw_change_u | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Time of last unsuccessful password change</div>|  
| acct_expire | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Absolute account lifetime in seconds</div>|  
| max_llogin | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Maximum time allowed between logins before the account is locked</div>|  
| exp_warning | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The time in seconds before expiration when a warning will appear</div>|  
| usr_chg_pw | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Who can change this user's password</div>|  
| gen_pw | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Allows user to use system-generated passwords</div>|  
| pw_restrict | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Whether a triviality check is performed on user-generated passwords</div>|  
| pw_null | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Determines if null passwords are allowed for this account</div>|  
| pw_gen_char | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Allows password generator to use random printable ASCII characters</div>|  
| pw_gen_let | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Allows password generator to use random letters</div>|  
| login_time | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Specifies the times when the user may login to this account</div>|  
| pw_changer | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The user ID of the user who last changed the password on the user's account, if it was not the account owner</div>|  
| login_time_s | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The time of the last successful login using this account</div>|  
| login_time_u | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The time of the last unsuccessful login using this account</div>|  
| login_tty_s | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The terminal or remote host associated with the last successful login to the account</div>|  
| login_tty_u | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The terminal or remote hosts associated with the last unsuccessful login to the account</div>|  
| num_u_logins | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The number of unsuccessful login attempts since that last successful login</div>|  
| max_u_logins | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The maximum number of unsuccessful login attempts before the account is locked</div>|  
| lock_flag | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>Indicates whether the administrative lock on the account is set</div>|  
  
