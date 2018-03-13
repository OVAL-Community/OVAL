# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: HP-UX Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the HP-UX specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ getconf_test ](#getconf_test)  
 *[ ndd_test ](#ndd_test)  
 *[ patch53_test ](#patch53_test)  
 *[ ~~patch_test~~ ](#patch_test)  
 *[ swlist_test ](#swlist_test)  
 *[ trusted_test ](#trusted_test)  
  
______________
  
## <a name="getconf_test"></a>< getconf_test >

From /usr/bin/getconf. See getconf manpage for specific fields

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="getconf_object"></a>< getconf_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| parameter_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the parameter name to check.</div>|  
| pathname | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the pathname to check. Note that pathname is optional in the getconf call. A nil pathname ( empty wth attribute xsi:nil='true') in OVAL should be interpreted as if it was not supplied to the getconf call.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="getconf_state"></a>< getconf_state >



**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| parameter_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the parameter name to check</div>|  
| pathname | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the pathname to check. Note that pathname is optional in the getconf call. A nil pathname in OVAL should be interpreted as if it was not supplied to the getconf call.</div>|  
| output | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The output produced by the getconf command.</div>|  
  
______________
  
## <a name="ndd_test"></a>< ndd_test >

From /usr/bin/ndd. See ndd manpage for specific fields

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="ndd_object"></a>< ndd_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| device | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the device to examine.</div>|  
| parameter | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The name of the parameter, For example, ip_forwarding.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="ndd_state"></a>< ndd_state >



**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| device | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the device to examine.</div>|  
| parameter | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the parameter, For example, ip_forwarding.</div>|  
| value | [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType)  (0..1) |  
||<div>The value of the named parameter.</div>|  
  
______________
  
## <a name="patch53_test"></a>< patch53_test >

From /usr/sbin/swlist -l patch PHxx_yyyyy. See swlist manpage for specific fields

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="patch53_object"></a>< patch53_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| behaviors | [hpux-def:Patch53Behaviors](#Patch53Behaviors)  (0..1) |  
|||  
| swtype | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>HP-UX patch names begin with 'PH'</div>|  
| area_patched | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The third and fourth characters in HP-UX patch names indicate the area of software being patched. CO - General HP-UX commands KL - Kernel patches NE - Network specific patches SS - All other subsystems (X11, starbase, etc.)</div>|  
| patch_base | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The sixth through tenth characters in HP-UX patch names represent a unique numeric identifier for the patch</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="patch53_state"></a>< patch53_state >



**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| swtype | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>HP-UX patch names begin with 'PH'</div>|  
| area_patched | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The third and fourth characters in HP-UX patch names indicate the area of software being patched. CO - General HP-UX commands KL - Kernel patches NE - Network specific patches SS - All other subsystems (X11, starbase, etc.)</div>|  
| patch_base | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The sixth through tenth characters in HP-UX patch names represent a unique numeric identifier for the patch</div>|  
  
## <a name="Patch53Behaviors"></a>== Patch53Behaviors ==

The Patch53Behaviors complex type defines a number of behaviors that allow a more detailed definition of the patch53_object being specified. Note that using these behaviors may result in some unique results. For example, a double negative type condition might be created where an object entity says include everything except a specific item, but a behavior is used that might then add that item back in.

#### Attributes:

*	**supersedence** Restriction of xsd:boolean (optional -- default='false')  
'supersedence' specifies that the object should also match any superseding patches to the one being specified. In other words, if set to True the resulting object set would be the original patch specified plus any superseding patches. The default value is 'false' meaning the object should only match the specified patch.  
  
______________
  
## <a name="patch_test"></a><  ~~patch_test~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the patch53_test. The patch_name entity was removed from the patch_object element, and replaced with the swtype, area_patched, and patch_base entities, because the patch_name element can be constructed from the swtype, area_patched, and patch_base entities. Likewise, the patch_name entity was removed from the patch_state element for the same reason. Also, a behaviors entity was added to the patch_object to allow the object to match both the original patch and any superseding patches. A new test was created to reflect these changes. See the patch53_test.<br />**Comment:** This test has been deprecated and will be removed in version 6.0 of the language.<br />

From /usr/sbin/swlist -l patch PHxx_yyyyy. See swlist manpage for specific fields

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="patch_object"></a><  ~~patch_object~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the patch53_object. The patch_name entity was removed from the patch_object element, and replaced with the swtype, area_patched, and patch_base entities, because the patch_name element can be constructed from the swtype, area_patched, and patch_base entities. Also, a behaviors entity was added to the patch_object to allow the object to match both the original patch and any superseding patches. A new object was created to reflect these changes. See the patch53_object.<br />**Comment:** This object has been deprecated and will be removed in version 6.0 of the language.<br />

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| patch_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the patch name to check.</div>|  
  
## <a name="patch_state"></a><  ~~patch_state~~  >

> :small_red_triangle: **Deprecated As Of Version 5.3** :small_red_triangle: <br />**Reason:** Replaced by the patch53_state. The patch_name entity was removed from the patch_state element, and replaced with the swtype, area_patched, and patch_base entities, because the patch_name element can be constructed from the swtype, area_patched, and patch_base entities. A new state was created to reflect these changes. See the patch53_state.<br />**Comment:** This state has been deprecated and will be removed in version 6.0 of the language.<br />

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| patch_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the patch name to check</div>|  
| swtype | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>HP-UX patch names begin with 'PH'</div>|  
| area_patched | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The third and fourth characters in HP-UX patch names indicate the area of software being patched. CO - General HP-UX commands KL - Kernel patches NE - Network specific patches SS - All other subsystems (X11, starbase, etc.)</div>|  
| patch_base | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The sixth through tenth characters in HP-UX patch names represent a unique numeric identifier for the patch</div>|  
  
______________
  
## <a name="swlist_test"></a>< swlist_test >

Output of /usr/sbin/swlist command. Note: A quick way to check for the installation of a specific fileset is to use the command 'swlist -a version -l fileset filesetname'. See manpage for swlist for explanation of additional command options.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="swlist_object"></a>< swlist_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| swlist | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the name of the bundle or fileset to check.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="swlist_state"></a>< swlist_state >



**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| swlist | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the name of the bundle or fileset to check.</div>|  
| bundle | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| fileset | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| version | Restriction of [oval-def:EntityStateAnySimpleType](oval-definitions-schema.md#EntityStateAnySimpleType) . See schema for details. (0..1) |  
||<div></div>|  
| title | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| vendor | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
  
______________
  
## <a name="trusted_test"></a>< trusted_test >

This test allows for analysis of account settings in trusted HP-UX installations

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="trusted_object"></a>< trusted_object >



**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>This is the name of the user being checked.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="trusted_state"></a>< trusted_state >



**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| username | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the name of the user being checked</div>|  
| uid | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The user's ID</div>|  
| password | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>This is the encrypted version of the user's password</div>|  
| account_owner | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The Account owner for pseudo-users</div>|  
| boot_auth | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Boot authorization</div>|  
| audit_id | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>getprpwaid uses the audit ID rather than the UID</div>|  
| audit_flag | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div></div>|  
| pw_change_min | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Minimum time between password changes</div>|  
| pw_max_size | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Maximum password length in characters</div>|  
| pw_expiration | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Password expiration time in seconds</div>|  
| pw_life | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Trusted lifetime, after which the account is locked</div>|  
| pw_change_s | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Time of last successful password change</div>|  
| pw_change_u | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Time of last unsuccessful password change</div>|  
| acct_expire | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Absolute account lifetime in seconds</div>|  
| max_llogin | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Maximum time allowed between logins before the account is locked</div>|  
| exp_warning | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The time in seconds before expiration when a warning will appear</div>|  
| usr_chg_pw | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Who can change this user's password</div>|  
| gen_pw | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Allows user to use system-generated passwords</div>|  
| pw_restrict | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Whether a triviality check is performed on user-generated passwords</div>|  
| pw_null | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Determines if null passwords are allowed for this account</div>|  
| pw_gen_char | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Allows password generator to use random printable ASCII characters</div>|  
| pw_gen_let | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Allows password generator to use random letters</div>|  
| login_time | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Specifies the times when the user may login to this account</div>|  
| pw_changer | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The user ID of the user who last changed the password on the user's account, if it was not the account owner</div>|  
| login_time_s | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The time of the last successful login using this account</div>|  
| login_time_u | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The time of the last unsuccessful login using this account</div>|  
| login_tty_s | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The terminal or remote host associated with the last successful login to the account</div>|  
| login_tty_u | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The terminal or remote hosts associated with the last unsuccessful login to the account</div>|  
| num_u_logins | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number of unsuccessful login attempts since that last successful login</div>|  
| max_u_logins | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The maximum number of unsuccessful login attempts before the account is locked</div>|  
| lock_flag | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>Indicates whether the administrative lock on the account is set</div>|  
  
