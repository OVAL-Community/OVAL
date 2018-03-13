# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Android Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Android specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

## Test Listing

 *[ appmanager_test ](#appmanager_test)  
 *[ bluetooth_test ](#bluetooth_test)  
 *[ camera_test ](#camera_test)  
 *[ certificate_test ](#certificate_test)  
 *[ devicesettings_test ](#devicesettings_test)  
 *[ encryption_test ](#encryption_test)  
 *[ locationservice_test ](#locationservice_test)  
 *[ network_test ](#network_test)  
 *[ password_test ](#password_test)  
 *[ systemdetails_test ](#systemdetails_test)  
 *[ wifi_test ](#wifi_test)  
 *[ wifinetwork_test ](#wifinetwork_test)  
 *[ telephony_test ](#telephony_test)  
  
______________
  
## <a name="appmanager_test"></a>< appmanager_test >

The appmanager_test is used to verify the applications installed on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a appmanager_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="appmanager_object"></a>< appmanager_object >

The appmanager_object element is used by a appmanager_test to define the required application properties to verify. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| package_name | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>Name of the package.</div>|  
| signing_certificate | [oval-def:EntityObjectBinaryType](oval-definitions-schema.md#EntityObjectBinaryType)  (1..1) |  
||<div>Hexadecimal string of the signing certificate corresponding with the key used to sign the application package. Only the actual signing certificate should be included, not CA certificates in the chain (if applicable).</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="appmanager_state"></a>< appmanager_state >

The appmanager_state element defines the application settings.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| application_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Name of the application.</div>|  
| uid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Linux userid assigned to the application. (In some cases multiple applications can share a userid.)</div>|  
| gid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..unbounded) |  
||<div>One element for each group id that the application belongs to.</div>|  
| package_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Name of the package.</div>|  
| data_directory | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Data directory assigned to the application.</div>|  
| version | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Application version.</div>|  
| current_status | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if the application is enabled.</div>|  
| permission | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>One element for each permission granted to the application.</div>|  
| native_lib_dir | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Directory where the application's native libraries (if any) have been installed.</div>|  
| signing_certificate | [oval-def:EntityStateBinaryType](oval-definitions-schema.md#EntityStateBinaryType)  (0..unbounded) |  
||<div>Hexadecimal string of the signing certificate corresponding with the key used to sign the application package. Only the actual signing certificate should be included, not CA certificates in the chain (if applicable).</div>|  
| first_install_time | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Time at which the app was first installed, expressed in milliseconds since January 1, 1970 00:00:00 UTC.</div>|  
| last_update_time | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Time at which the app was last updated, expressed in milliseconds since January 1, 1970 00:00:00 UTC.</div>|  
| package_file_location | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>From ApplicationInfo.sourceDir, the full path to the location of the publicly available parts of the application package.</div>|  
  
______________
  
## <a name="bluetooth_test"></a>< bluetooth_test >

The bluetooth_test is used to check the status of bluetooth settings on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a bluetooth_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="bluetooth_object"></a>< bluetooth_object >

The bluetooth_object element is used by a bluetooth test to define those objects to be evaluated based on a specified state. Any OVAL Test written to check bluetooth settings status will reference the same bluetooth_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="bluetooth_state"></a>< bluetooth_state >

The bluetooth_state element defines the bluetooth general settings status.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| discoverable | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if device Bluetooth is currently in discoverable mode.</div>|  
| current_status | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if device Bluetooth is currently enabled.</div>|  
  
______________
  
## <a name="camera_test"></a>< camera_test >

The camera_test is used to check camera-related information.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="camera_object"></a>< camera_object >

The camera_object element is used by a camera test to define those objects to evaluate based on a camera state.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="camera_state"></a>< camera_state >

The camera_state element contains a single entity that is used to check the status of the camera.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| camera_disabled_policy | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>If true, then a policy is being enforced disabling use of the camera. The policy is only available in Android 4.0 and up (and potentially on older Android devices if specifically added by the device vendor).</div>|  
  
______________
  
## <a name="certificate_test"></a>< certificate_test >

The certificate_test is used to check the certificates installed on the device.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="certificate_object"></a>< certificate_object >

The certificate_object element is used by a certificate test to define those objects to evaluate based on a certificate state.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="certificate_state"></a>< certificate_state >

The certificate_state element contains a single entity that is used to check the status of the certificates.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| trusted_certificate | [oval-def:EntityStateBinaryType](oval-definitions-schema.md#EntityStateBinaryType)  (0..unbounded) |  
||<div>Hexadecimal string of each certificate in the OS's trusted certificate store, including both certificates installed by the system and by users. System trusted certificates that were disabled by the user are not included here.</div>|  
  
______________
  
## <a name="devicesettings_test"></a>< devicesettings_test >

The devicesettings_test is used to check the status of various settings on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a devicesettings_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="devicesettings_object"></a>< devicesettings_object >

The devicesettings_object element is used by a device settings test to define those objects to be evaluated based on a specified state. Any OVAL Test written to check device settings will reference the same devicesettings_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="devicesettings_state"></a>< devicesettings_state >

The devicesettings_state element defines the device settings.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| adb_enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if Android Debug Bridge (USB debugging) is enabled.</div>|  
| allow_mock_location | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if mock locations and location provider status can be injected into Android's Location Manager.</div>|  
| install_non_market_apps | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if applications can be installed from "unknown sources".</div>|  
| device_admin | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..unbounded) |  
||<div>One element per application that holds device administrator access. Contains the application's package name.</div>|  
| auto_time | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if the user prefers the date and time to be automatically fetched from the network.</div>|  
| auto_time_zone | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if the user prefers the time zone to be automatically fetched from the network.</div>|  
| usb_mass_storage_enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if USB mass storage is enabled on the device, otherwise false.</div>|  
  
______________
  
## <a name="encryption_test"></a>< encryption_test >

The encryption_test is used to check the encryption status on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a encryption_object and the optional state element references a encryption_state that specifies the information to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="encryption_object"></a>< encryption_object >

The encryption_object element is used by a encryption test to define those objects to evaluated based on a specified state. Any OVAL Test written to check encryption settings will reference the same encryption_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="encryption_state"></a>< encryption_state >

The encryption_state element defines the encryption settings configured on the device.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| encryption_policy_enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if a policy is in place requiring the device storage to be encrypted. (android.app.admin.DevicePolicyManager.getStorageEncryption())</div>|  
| encryption_status | [android-def:EntityStateEncryptionStatusType](#EntityStateEncryptionStatusType)  (0..1) |  
||<div>The current status of device encryption. (android.app.admin.DevicePolicyManager.getStorageEncryptionStatus()) Either ENCRYPTION_STATUS_UNSUPPORTED, ENCRYPTION_STATUS_INACTIVE, ENCRYPTION_STATUS_ACTIVATING, or ENCRYPTION_STATUS_ACTIVE as documented in the Android SDK's DevicePolicyManager class.</div>|  
  
______________
  
## <a name="locationservice_test"></a>< locationservice_test >

The locationservice_test is used to check the status of location based services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a locationservice_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="locationservice_object"></a>< locationservice_object >

The locationservice_object element is used by a location service test to define those objects to evaluated based on a specified state. Any OVAL Test written to check location based services status will reference the same locationservice_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="locationservice_state"></a>< locationservice_state >

The locationservice_state element defines the location based services status.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| gps_enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>A boolean value indicating whether the GPS location provider is enabled.</div>|  
| network_enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>A boolean value indicating whether the network location provider is enabled.</div>|  
  
______________
  
## <a name="network_test"></a>< network_test >

The network_test is used to check the status of network preferences on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a network_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="network_object"></a>< network_object >

The network_object element is used by a network test to define those objects to be evaluated based on a specified state. Any OVAL Test written to check network preference will reference the same network_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="network_state"></a>< network_state >

The network_state element defines the network preferences.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| airplane_mode | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if airplane mode is enabled on the device.</div>|  
| nfc_enabled | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if NFC is enabled on the device.</div>|  
  
______________
  
## <a name="password_test"></a>< password_test >

The password test is used to check specific policy associated with passwords and the device screen lock. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a password_object and the optional state element specifies the metadata to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="password_object"></a>< password_object >

The password_object element is used by a password test to define those objects to evaluated based on a specified state. Any OVAL Test written to check password policy will reference the same password_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="password_state"></a>< password_state >

The password_state element specifies the various policies associated with passwords and the device screen lock. A password test will reference a specific instance of this state that defines the exact settings that need to be evaluated.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| max_num_failed_user_auth | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Maximum number of failed user authentications before device wipe. Zero means there is no policy in place.</div>|  
| password_hist | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Specifies the length of password history maintained (passwords in the history cannot be reused). Zero means there is no policy in place.</div>|  
| password_quality | [android-def:EntityStatePasswordQualityType](#EntityStatePasswordQualityType)  (0..1) |  
||<div>The current minimum required password quality required by device policy. Represented as a string corresponding with a valid Android password quality, currently one of: PASSWORD_QUALITY_ALPHABETIC PASSWORD_QUALITY_ALPHANUMERIC PASSWORD_QUALITY_BIOMETRIC_WEAK PASSWORD_QUALITY_COMPLEX PASSWORD_QUALITY_NUMERIC PASSWORD_QUALITY_SOMETHING PASSWORD_QUALITY_UNSPECIFIED</div>|  
| password_min_length | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum length of characters password must have. This constraint is only imposed if the password quality is one of PASSWORD_QUALITY_NUMERIC, PASSWORD_QUALITY_ALPHABETIC, PASSWORD_QUALITY_ALPHANUMERIC, or PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_letters | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum number of letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_lower_case_letters | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum number of lower case letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_non_letters | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum number of non-letter characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_numeric | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum number of numeric characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_symbols | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum number of symbol characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_upper_case_letters | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Minimum number of upper case letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_expiration_timeout | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Gets the current password expiration timeout policy, in milliseconds. Zero means there is no policy in place.</div>|  
| password_visible | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>When true, the most recently keyed in password character is shown to the user on the screen (the previously entered characters are masked out). When false, all keyed in password characters are immediately masked out. This setting is manageable by the device user through the device settings.</div>|  
| active_password_sufficient | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>When true, the current device password is compliant with the password policy. (If the policy was recently established, it is possible that a password compliant with the policy may not yet be in place.)</div>|  
| current_failed_password_attempts | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The number of times the user has failed at entering a password since the last successful password entry.</div>|  
| screen_lock_timeout | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The current policy for the highest screen lock timeout the user is allowed to specify. 0 indicates no restriction. (The user may still specify lower values in the device settings.)</div>|  
| keyguard_disabled_features | [android-def:EntityStateKeyguardDisabledFeaturesType](#EntityStateKeyguardDisabledFeaturesType)  (0..1) |  
||<div>The current policy for lockscreen widgets as retrieved by DevicePolicyManager.getKeyguardDisabledFeatures. May be set to one of KEYGUARD_DISABLE_FEATURES_ALL, KEYGUARD_DISABLED_FEATURES_NONE, KEYGUARD_DISABLE_SECURE_CAMERA, or KEYGUARD_DISABLE_WIDGETS_ALL. Only available in Android 4.2 and up.</div>|  
  
______________
  
## <a name="systemdetails_test"></a>< systemdetails_test >

The syste_details test is used to get system hardware and operating system information. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a systemdetails_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="systemdetails_object"></a>< systemdetails_object >

The systemdetails_object element is used by a systemdetails test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="systemdetails_state"></a>< systemdetails_state >

The systemdetails_state element defines the information about the hardware and the operating system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hardware | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The hardware model, as provided by android.os.Build.HARDWARE using the Android SDK.</div>|  
| manufacturer | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The device manufacturer, as provided by android.os.Build.MANUFACTURER using the Android SDK.</div>|  
| model | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The device model identifier, as provided by android.os.Build.MODEL using the Android SDK.</div>|  
| product | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The product name, as provided by android.os.Build.PRODUCT using the Android SDK.</div>|  
| cpu_abi | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the instruction set of native code, as provided by android.os.Build.CPU_ABI using the Android SDK.</div>|  
| cpu_abi2 | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The name of the second instruction set of native code, as provided by android.os.Build.CPU_ABI2 using the Android SDK.</div>|  
| build_fingerprint | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Build fingerprint, as provided by android.os.Build.FINGERPRINT using the Android SDK.</div>|  
| os_version_code_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Operating system version code, as provided by android.os.Build.VERSION.CODENAME using the Android SDK.</div>|  
| os_version_build_number | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Operating system build number, as provided by android.os.Build.VERSION.INCREMENTAL using the Android SDK.</div>|  
| os_version_release_name | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>Operating system release name, as provided by android.os.Build.VERSION.RELEASE using the Android SDK.</div>|  
| os_version_sdk_number | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Operating system SDK number, as provided by android.os.Build.VERSION.SDK_INT using the Android SDK.</div>|  
| hardware_keystore | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if the device provides a hardware backed cryptographic keystore (a hardware keystore prevents exporting private keys or directly exposing private keys to the OS), otherwise false.</div>|  
  
______________
  
## <a name="wifi_test"></a>< wifi_test >

The wifi_test is used to check the status of general Wi-Fi settings on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wifi_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="wifi_object"></a>< wifi_object >

The wifi_object element is used by a wifi test to define those objects to evaluated based on a specified state. Any OVAL Test written to check wifi settings status will reference the same wifi_object which is basically an empty object element.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="wifi_state"></a>< wifi_state >

The wifi_state element defines the wifi general settings status.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| wifi_status | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if Wi-Fi is currently enabled on the device.</div>|  
| network_availability_notification | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>True if the Wi-Fi network availability notification setting is currently enabled on the device.</div>|  
  
______________
  
## <a name="wifinetwork_test"></a>< wifinetwork_test >

The wifinetwork_test is used to check information about the configured Wi-Fi networks on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wifinetwork_object and the optional state element specifies the data to check.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="wifinetwork_object"></a>< wifinetwork_object >

The wifinetwork_object element is used by a wifinetwork_test to define the SSID of the Wi-Fi to verify security settings. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| ssid | [oval-def:EntityObjectStringType](oval-definitions-schema.md#EntityObjectStringType)  (1..1) |  
||<div>The network's SSID to check.</div>|  
| [oval-def:filter](oval-definitions-schema.md#filter)  | n/a (0..unbounded) |  
|||  
  
## <a name="wifinetwork_state"></a>< wifinetwork_state >

The wifinetwork_state element defines the Wi-Fi network settings status.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| ssid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The network's SSID.</div>|  
| bssid | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>BSSID. The value is a string in the format of an Ethernet MAC address.</div>|  
| auth_algorithms | [android-def:EntityStateWifiAuthAlgorithmType](#EntityStateWifiAuthAlgorithmType)  (0..unbounded) |  
||<div>The set of authentication protocols supported by this configuration.</div>|  
| group_ciphers | [android-def:EntityStateWifiGroupCipherType](#EntityStateWifiGroupCipherType)  (0..unbounded) |  
||<div>The set of group ciphers supported by this configuration.</div>|  
| key_management | [android-def:EntityStateWifiKeyMgmtType](#EntityStateWifiKeyMgmtType)  (0..unbounded) |  
||<div>The set of key management protocols supported by this configuration.</div>|  
| pairwise_ciphers | [android-def:EntityStateWifiPairwiseCipherType](#EntityStateWifiPairwiseCipherType)  (0..unbounded) |  
||<div>The set of pairwise ciphers for WPA supported by this configuration.</div>|  
| protocols | [android-def:EntityStateWifiProtocolType](#EntityStateWifiProtocolType)  (0..unbounded) |  
||<div>The set of security protocols supported by this configuration.</div>|  
| hidden_ssid | [oval-def:EntityStateBoolType](oval-definitions-schema.md#EntityStateBoolType)  (0..1) |  
||<div>This is a network that does not broadcast its SSID.</div>|  
| network_id | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>The ID number that the supplicant uses to identify this network configuration entry.</div>|  
| priority | [oval-def:EntityStateIntType](oval-definitions-schema.md#EntityStateIntType)  (0..1) |  
||<div>Priority determines the preference given to a network by wpa_supplicant when choosing an access point with which to associate.</div>|  
| current_status | [android-def:EntityStateWifiCurrentStatusType](#EntityStateWifiCurrentStatusType)  (0..1) |  
||<div>The current status of this network configuration entry.</div>|  
  
______________
  
## <a name="telephony_test"></a>< telephony_test >

The telephony_test is used to check Telephony characteristics of system.

**Extends:** [oval-def:TestType](oval-definitions-schema.md#TestType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| object | [oval-def:ObjectRefType](oval-definitions-schema.md#ObjectRefType)  (1..1) |  
|||  
| state | [oval-def:StateRefType](oval-definitions-schema.md#StateRefType)  (0..unbounded) |  
|||  
  
## <a name="telephony_object"></a>< telephony_object >

The telephony_object element is used by a telephony test to define those objects to evaluate based on a telephony manager state.

**Extends:** [oval-def:ObjectType](oval-definitions-schema.md#ObjectType) 

## <a name="telephony_state"></a>< telephony_state >

The telephony_state element contains a single entity that is used to check the status of the telephony manager state.

**Extends:** [oval-def:StateType](oval-definitions-schema.md#StateType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| network_type | [android-def:EntityStateNetworkType](#EntityStateNetworkType)  (0..1) |  
||<div>Value indicates the radio technology(network type) currently in use, for data transmission.</div>|  
| sim_country_iso | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The ISO country code equivalent for the SIM provider's country code.</div>|  
| sim_operator_code | [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType)  (0..1) |  
||<div>The MCC+MNC(mobile country code + mobile network code) of the provider of the SIM. It contains 5 or 6 decimal digits.</div>|  
  
## <a name="EntityStateEncryptionStatusType"></a>== EntityStateEncryptionStatusType ==

The EntityStateEncryptionStatusType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| ENCRYPTION_STATUS_UNSUPPORTED | <div>Encryption is not supported</div> |  
| ENCRYPTION_STATUS_ACTIVE | <div>Encryption is active.</div> |  
| ENCRYPTION_STATUS_INACTIVE | <div>Encryption is supported but is not currently active.</div> |  
| ENCRYPTION_STATUS_ACTIVATING | <div>Encryption is not currently active, but is currently being activated.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateKeyguardDisabledFeaturesType"></a>== EntityStateKeyguardDisabledFeaturesType ==

The EntityStateKeyguardDisabledFeaturesType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| KEYGUARD_DISABLE_FEATURES_NONE | <div>Widgets are enabled in keyguard</div> |  
| KEYGUARD_DISABLE_WIDGETS_ALL | <div>Disable all keyguard widgets</div> |  
| KEYGUARD_DISABLE_SECURE_CAMERA | <div>Disable the camera on secure keyguard screens (e.g. PIN/Pattern/Password)</div> |  
| KEYGUARD_DISABLE_FEATURES_ALL | <div>Disable all current and future keyguard customizations</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateNetworkType"></a>== EntityStateNetworkType ==

The EntityStateNetworkType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| UNKNOWN | <div>The network type is unknown</div> |  
| GPRS | <div>Current network is GPRS</div> |  
| EDGE | <div>Current network is EDGE</div> |  
| UMTS | <div>Current network is UMTS</div> |  
| CDMA | <div>Current network is CDMA</div> |  
| EVDO-0 | <div>Current network is EVDO-0</div> |  
| EVDO-A | <div>Current network is EVDO-A</div> |  
| 1xRTT | <div>Current network is 1xRTT</div> |  
| HSDPA | <div>Current network is HSDPA</div> |  
| HSUPA | <div>Current network is HSUPA</div> |  
| HSPA | <div>Current network is HSPA</div> |  
| IDEN | <div>Current network is IDEN</div> |  
| EVDO-B | <div>Current network is EVDO-B</div> |  
| LTE | <div>Current network is LTE</div> |  
| EHRPD | <div>Current network is EHRPD</div> |  
| HSPAP | <div>Current network is HSPAP</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStatePasswordQualityType"></a>== EntityStatePasswordQualityType ==

The EntityStatePasswordQualityType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| PASSWORD_QUALITY_ALPHABETIC | <div>The password must contain alphabetic (or other symbol) characters</div> |  
| PASSWORD_QUALITY_ALPHANUMERIC | <div>The password must contain both numeric and alphabetic (or other symbol) characters</div> |  
| PASSWORD_QUALITY_BIOMETRIC_WEAK | <div>This policy allows for low-security biometric recognition technology</div> |  
| PASSWORD_QUALITY_COMPLEX | <div>The password must contain at least a letter, a numerical digit, and a special symbol</div> |  
| PASSWORD_QUALITY_NUMERIC | <div>The password must contain at least numeric characters</div> |  
| PASSWORD_QUALITY_SOMETHING | <div>This policy requires some kind of password, but doesn't care what it is</div> |  
| PASSWORD_QUALITY_UNSPECIFIED | <div>There are no password policy requirements</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateWifiAuthAlgorithmType"></a>== EntityStateWifiAuthAlgorithmType ==

The EntityStateWifiAuthAlgorithmType complex type restricts a string value to a specific set of values that name WiFi authentication algorithms. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| LEAP | <div>LEAP/Network EAP (only used with LEAP)</div> |  
| OPEN | <div>Open System authentication (required for WPA/WPA2)</div> |  
| SHARED | <div>Shared Key authentication (requires static WEP keys)</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateWifiCurrentStatusType"></a>== EntityStateWifiCurrentStatusType ==

The EntityStateWifiCurrentStatusType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| CURRENT | <div>The network we are currently connected to</div> |  
| ENABLED | <div>Supplicant will not attempt to use this network</div> |  
| DISABLED | <div>Supplicant will consider this network available for association</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateWifiGroupCipherType"></a>== EntityStateWifiGroupCipherType ==

The EntityStateWifiGroupCipherType complex type restricts a string value to a specific set of values that name Wi-Fi group ciphers (android.net.wifi.WifiConfiguration.GroupCipher). The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| CCMP | <div>AES in Counter mode with CBC-MAC [RFC 3610, IEEE 802.11i/D7.0]; Constant Value: 3 (0x00000003)</div> |  
| TKIP | <div>Temporal Key Integrity Protocol [IEEE 802.11i/D7.0]; Constant Value: 2 (0x00000002)</div> |  
| WEP104 | <div>WEP (Wired Equivalent Privacy) with 104-bit key; Constant Value: 1 (0x00000001)</div> |  
| WEP40 | <div>WEP (Wired Equivalent Privacy) with 40-bit key (original 802.11); Constant Value: 0 (0x00000000)</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateWifiKeyMgmtType"></a>== EntityStateWifiKeyMgmtType ==

The EntityStateWifiKeyMgmtType complex type restricts a string value to a specific set of values that name Wi-Fi key management schemes (from android.net.wifi.WifiConfiguration.KeyMgmt). The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| IEEE8021X | <div>IEEE 802.1X using EAP authentication and (optionally) dynamically generated WEP keys.</div> |  
| NONE | <div>WPA is not used; plaintext or static WEP could be used.</div> |  
| WPA_EAP | <div>WPA using EAP authentication.</div> |  
| WPA_PSK | <div>WPA pre-shared key.</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateWifiPairwiseCipherType"></a>== EntityStateWifiPairwiseCipherType ==

The EntityStateWifiPairwiseCipherType complex type restricts a string value to a specific set of values that name Wi-Fi recognized pairwise ciphers for WPA (from android.net.wifi.WifiConfiguration.PairwiseCipher). The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| CCMP | <div>AES in Counter mode with CBC-MAC [RFC 3610, IEEE 802.11i/D7.0]</div> |  
| NONE | <div>Use only Group keys (deprecated)</div> |  
| TKIP | <div>Temporal Key Integrity Protocol [IEEE802.11i/D7.0]</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
## <a name="EntityStateWifiProtocolType"></a>== EntityStateWifiProtocolType ==

The EntityStateWifiProtocolType complex type restricts a string value to a specific set of values that name Wi-Fi recognized security protocols (from android.net.wifi.WifiConfiguration.Protocol). The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** [oval-def:EntityStateStringType](oval-definitions-schema.md#EntityStateStringType) 

| Value | Description |  
| ----- | ----------- |  
| RSN | <div>WPA2/IEEE 802.11i</div> |  
| WPA | <div>WPA/IEEE 802.11i/D3.0</div> |  
|  | <div>The empty string value is permitted here to allow for empty elements associated with variable references.</div> |  
  
