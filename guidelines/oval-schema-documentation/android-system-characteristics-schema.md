# Open Vulnerability and Assessment Language: Element Dictionary

* Schema: Android System Characteristics  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Android specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

______________
  
## <a name="appmanager_item"></a>< appmanager_item >

This item stores information about applications installed on the device.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| application_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Name of the application.</div>|  
| uid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Linux userid assigned to the application. (In some cases multiple applications can share a userid.)</div>|  
| gid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>One element for each group id that the application belongs to.</div>|  
| package_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Name of the package.</div>|  
| data_directory | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Data directory assigned to the application.</div>|  
| version | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Application version.</div>|  
| current_status | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if the application is enabled.</div>|  
| permission | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>One element for each permission granted to the application.</div>|  
| native_lib_dir | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Directory where the application's native libraries (if any) have been installed.</div>|  
| signing_certificate | [oval-sc:EntityItemBinaryType](oval-system-characteristics-schema.md#EntityItemBinaryType)  (0..unbounded) |  
||<div>Hexadecimal string of the signing certificate corresponding with the key used to sign the application package. Only the actual signing certificate should be included, not CA certificates in the chain (if applicable).</div>|  
| first_install_time | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Time at which the app was first installed, expressed in milliseconds since January 1, 1970 00:00:00 UTC.</div>|  
| last_update_time | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Time at which the app was last updated, expressed in milliseconds since January 1, 1970 00:00:00 UTC.</div>|  
| package_file_location | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>From ApplicationInfo.sourceDir, the full path to the location of the publicly available parts of the application package.</div>|  
  
______________
  
## <a name="bluetooth_item"></a>< bluetooth_item >

This holds information about device Bluetooth settings.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| discoverable | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if device Bluetooth is currently in discoverable mode.</div>|  
| current_status | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if device Bluetooth is currently enabled.</div>|  
  
______________
  
## <a name="camera_item"></a>< camera_item >

This item is used to check camera-related information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| camera_disabled_policy | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>If true, then a policy is being enforced disabling use of the camera. The policy is only available in Android 4.0 and up (and potentially on older Android devices if specifically added by the device vendor).</div>|  
  
______________
  
## <a name="certificate_item"></a>< certificate_item >

This item stores information about the certificates installed on the device.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| trusted_certificate | [oval-sc:EntityItemBinaryType](oval-system-characteristics-schema.md#EntityItemBinaryType)  (0..unbounded) |  
||<div>Hexadecimal string of each certificate in the OS's trusted certificate store, including both certificates installed by the system and by users. System trusted certificates that were disabled by the user are not included here.</div>|  
  
______________
  
## <a name="devicesettings_item"></a>< devicesettings_item >

This holds information about miscellaneous device settings.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| adb_enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if Android Debug Bridge (USB debugging) is enabled.</div>|  
| allow_mock_location | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if mock locations and location provider status can be injected into Android's Location Manager.</div>|  
| install_non_market_apps | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if applications can be installed from "unknown sources".</div>|  
| device_admin | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..unbounded) |  
||<div>One element per application that holds device administrator access. Contains the application's package name.</div>|  
| auto_time | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if the user prefers the date and time to be automatically fetched from the network.</div>|  
| auto_time_zone | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if the user prefers the time zone to be automatically fetched from the network.</div>|  
| usb_mass_storage_enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if USB mass storage is enabled on the device, otherwise false.</div>|  
  
______________
  
## <a name="encryption_item"></a>< encryption_item >

Device encryption information.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| encryption_policy_enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if a policy is in place requiring the device storage to be encrypted. (android.app.admin.DevicePolicyManager.getStorageEncryption())</div>|  
| encryption_status | [android-sc:EntityItemEncryptionStatusType](#EntityItemEncryptionStatusType)  (0..1) |  
||<div>The current status of device encryption. (android.app.admin.DevicePolicyManager.getStorageEncryptionStatus()) Either ENCRYPTION_STATUS_UNSUPPORTED, ENCRYPTION_STATUS_INACTIVE, ENCRYPTION_STATUS_ACTIVATING, or ENCRYPTION_STATUS_ACTIVE as documented in the Android SDK's DevicePolicyManager class.</div>|  
  
______________
  
## <a name="locationservice_item"></a>< locationservice_item >

This holds information about location based service status.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| gps_enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean value indicating whether the GPS location provider is enabled.</div>|  
| network_enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>A boolean value indicating whether the network location provider is enabled.</div>|  
  
______________
  
## <a name="network_item"></a>< network_item >

This holds information about networks configured and their preference.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| airplane_mode | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if airplane mode is enabled.</div>|  
| nfc_enabled | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if NFC is enabled on the device.</div>|  
  
______________
  
## <a name="password_item"></a>< password_item >

Specific policy items associated with passwords and the device screen lock.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| max_num_failed_user_auth | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Maximum number of failed user authentications before device wipe. Zero means there is no policy in place.</div>|  
| password_hist | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Specifies the length of password history maintained (passwords in the history cannot be reused). Zero means there is no policy in place.</div>|  
| password_quality | [android-sc:EntityItemPasswordQualityType](#EntityItemPasswordQualityType)  (0..1) |  
||<div>The current minimum required password quality required by device policy. Represented as a string corresponding with a valid Android password quality, currently one of: PASSWORD_QUALITY_ALPHABETIC PASSWORD_QUALITY_ALPHANUMERIC PASSWORD_QUALITY_BIOMETRIC_WEAK PASSWORD_QUALITY_COMPLEX PASSWORD_QUALITY_NUMERIC PASSWORD_QUALITY_SOMETHING PASSWORD_QUALITY_UNSPECIFIED</div>|  
| password_min_length | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum length of characters password must have. This constraint is only imposed if the password quality is one of PASSWORD_QUALITY_NUMERIC, PASSWORD_QUALITY_ALPHABETIC, PASSWORD_QUALITY_ALPHANUMERIC, or PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_letters | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum number of letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_lower_case_letters | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum number of lower case letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_non_letters | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum number of non-letter characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_numeric | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum number of numeric characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_symbols | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum number of symbol characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_min_upper_case_letters | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Minimum number of upper case letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.</div>|  
| password_expiration_timeout | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Gets the current password expiration timeout policy, in milliseconds. Zero means there is no policy in place.</div>|  
| password_visible | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>When true, the most recently keyed in password character is shown to the user on the screen (the previously entered characters are masked out). When false, all keyed in password characters are immediately masked out. This setting is manageable by the device user through the device settings.</div>|  
| active_password_sufficient | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>When true, the current device password is compliant with the password policy. (If the policy was recently established, it is possible that a password compliant with the policy may not yet be in place.)</div>|  
| current_failed_password_attempts | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The number of times the user has failed at entering a password since the last successful password entry.</div>|  
| screen_lock_timeout | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The current policy for the highest screen lock timeout the user is allowed to specify. 0 indicates no restriction. (The user may still specify lower values in the device settings.)</div>|  
| keyguard_disabled_features | [android-sc:EntityItemKeyguardDisabledFeaturesType](#EntityItemKeyguardDisabledFeaturesType)  (0..1) |  
||<div>The current policy for lockscreen widgets as retrieved by DevicePolicyManager.getKeyguardDisabledFeatures. May be set to one of KEYGUARD_DISABLE_FEATURES_ALL, KEYGUARD_DISABLED_FEATURES_NONE, KEYGUARD_DISABLE_SECURE_CAMERA, or KEYGUARD_DISABLE_WIDGETS_ALL. Only available in Android 4.2 and up.</div>|  
  
______________
  
## <a name="systemdetails_item"></a>< systemdetails_item >

This item stores information about the Operating System and hardware.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| hardware | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The hardware model, as provided by android.os.Build.HARDWARE using the Android SDK.</div>|  
| manufacturer | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The device manufacturer, as provided by android.os.Build.MANUFACTURER using the Android SDK.</div>|  
| model | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The device model identifier, as provided by android.os.Build.MODEL using the Android SDK.</div>|  
| product | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The product name, as provided by android.os.Build.PRODUCT using the Android SDK.</div>|  
| cpu_abi | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the instruction set of native code, as provided by android.os.Build.CPU_ABI using the Android SDK.</div>|  
| cpu_abi2 | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The name of the second instruction set of native code, as provided by android.os.Build.CPU_ABI2 using the Android SDK.</div>|  
| build_fingerprint | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Build fingerprint, as provided by android.os.Build.FINGERPRINT using the Android SDK.</div>|  
| os_version_code_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Operating system version code, as provided by android.os.Build.VERSION.CODENAME using the Android SDK.</div>|  
| os_version_build_number | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Operating system build number, as provided by android.os.Build.VERSION.INCREMENTAL using the Android SDK.</div>|  
| os_version_release_name | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>Operating system release name, as provided by android.os.Build.VERSION.RELEASE using the Android SDK.</div>|  
| os_version_sdk_number | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Operating system SDK number, as provided by android.os.Build.VERSION.SDK_INT using the Android SDK.</div>|  
| hardware_keystore | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if the device provides a hardware backed cryptographic keystore (a hardware keystore prevents exporting private keys or directly exposing private keys to the OS), otherwise false.</div>|  
  
______________
  
## <a name="wifi_item"></a>< wifi_item >

This item holds information about general Wi-Fi settings.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| wifi_status | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if Wi-Fi is currently enabled on the device.</div>|  
| network_availability_notification | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>True if the Wi-Fi network availability notification setting is currently enabled on the device.</div>|  
  
______________
  
## <a name="wifinetwork_item"></a>< wifinetwork_item >

This item holds information about the configured Wi-Fi networks on the device.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| bssid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>BSSID. The value is a string in the format of an Ethernet MAC address.</div>|  
| ssid | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The network's SSID.</div>|  
| auth_algorithms | [android-sc:EntityItemWifiAuthAlgorithmType](#EntityItemWifiAuthAlgorithmType)  (0..unbounded) |  
||<div>The set of authentication protocols supported by this configuration.</div>|  
| group_ciphers | [android-sc:EntityItemWifiGroupCipherType](#EntityItemWifiGroupCipherType)  (0..unbounded) |  
||<div>The set of group ciphers supported by this configuration.</div>|  
| key_management | [android-sc:EntityItemWifiKeyMgmtType](#EntityItemWifiKeyMgmtType)  (0..unbounded) |  
||<div>The set of key management protocols supported by this configuration.</div>|  
| pairwise_ciphers | [android-sc:EntityItemWifiPairwiseCipherType](#EntityItemWifiPairwiseCipherType)  (0..unbounded) |  
||<div>The set of pairwise ciphers for WPA supported by this configuration.</div>|  
| protocols | [android-sc:EntityItemWifiProtocolType](#EntityItemWifiProtocolType)  (0..unbounded) |  
||<div>The set of security protocols supported by this configuration.</div>|  
| hidden_ssid | [oval-sc:EntityItemBoolType](oval-system-characteristics-schema.md#EntityItemBoolType)  (0..1) |  
||<div>This is a network that does not broadcast its SSID.</div>|  
| network_id | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>The ID number that the supplicant uses to identify this network configuration entry.</div>|  
| priority | [oval-sc:EntityItemIntType](oval-system-characteristics-schema.md#EntityItemIntType)  (0..1) |  
||<div>Priority determines the preference given to a network by wpa_supplicant when choosing an access point with which to associate.</div>|  
| current_status | [android-sc:EntityItemWifiCurrentStatusType](#EntityItemWifiCurrentStatusType)  (0..1) |  
||<div>The current status of this network configuration entry, either CURRENT, DISABLED, or ENABLED per android.net.wifi.WifiConfiguration.Status.</div>|  
  
______________
  
## <a name="telephony_item"></a>< telephony_item >

The telephony_item element contains a single entity that is used to check the status of the telephony manager Item.

**Extends:** [oval-sc:ItemType](oval-system-characteristics-schema.md#ItemType) 

| Child Elements | Type (MinOccurs..MaxOccurs) |  
|:-------------- |:--------------------------- |  
| network_type | [android-sc:EntityItemNetworkType](#EntityItemNetworkType)  (0..1) |  
||<div>A constant String value indicating the radio technology (network type) currently in use on the device for data transmission.</div>|  
| sim_country_iso | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>The ISO country code equivalent for the SIM provider's country code.</div>|  
| sim_operator_code | [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType)  (0..1) |  
||<div>the MCC+MNC (mobile country code + mobile network code) of the provider of the SIM. It contains 5 or 6 decimal digits.</div>|  
  
## <a name="EntityItemEncryptionStatusType"></a>== EntityItemEncryptionStatusType ==

The EntityItemEncryptionStatusType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| ENCRYPTION_STATUS_UNSUPPORTED | <div>Encryption is not supported</div> |  
| ENCRYPTION_STATUS_ACTIVE | <div>Encryption is active.</div> |  
| ENCRYPTION_STATUS_INACTIVE | <div>Encryption is supported but is not currently active.</div> |  
| ENCRYPTION_STATUS_ACTIVATING | <div>Encryption is not currently active, but is currently being activated.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemKeyguardDisabledFeaturesType"></a>== EntityItemKeyguardDisabledFeaturesType ==

The EntityItemKeyguardDisabledFeaturesType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| KEYGUARD_DISABLE_FEATURES_NONE | <div>Widgets are enabled in keyguard</div> |  
| KEYGUARD_DISABLE_WIDGETS_ALL | <div>Disable all keyguard widgets</div> |  
| KEYGUARD_DISABLE_SECURE_CAMERA | <div>Disable the camera on secure keyguard screens (e.g. PIN/Pattern/Password)</div> |  
| KEYGUARD_DISABLE_FEATURES_ALL | <div>Disable all current and future keyguard customizations</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemNetworkType"></a>== EntityItemNetworkType ==

The EntityItemNetworkType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

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
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemPasswordQualityType"></a>== EntityItemPasswordQualityType ==

The EntityItemPasswordQualityType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| PASSWORD_QUALITY_ALPHABETIC | <div>The password must contain alphabetic (or other symbol) characters</div> |  
| PASSWORD_QUALITY_ALPHANUMERIC | <div>The password must contain both numeric and alphabetic (or other symbol) characters</div> |  
| PASSWORD_QUALITY_BIOMETRIC_WEAK | <div>This policy allows for low-security biometric recognition technology</div> |  
| PASSWORD_QUALITY_COMPLEX | <div>The password must contain at least a letter, a numerical digit, and a special symbol</div> |  
| PASSWORD_QUALITY_NUMERIC | <div>The password must contain at least numeric characters</div> |  
| PASSWORD_QUALITY_SOMETHING | <div>This policy requires some kind of password, but doesn't care what it is</div> |  
| PASSWORD_QUALITY_UNSPECIFIED | <div>There are no password policy requirements</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemWifiAuthAlgorithmType"></a>== EntityItemWifiAuthAlgorithmType ==

The EntityItemWifiAuthAlgorithmType complex type restricts a string value to a specific set of values that name WiFi authentication algorithms. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| LEAP | <div>LEAP/Network EAP (only used with LEAP)</div> |  
| OPEN | <div>Open System authentication (required for WPA/WPA2)</div> |  
| SHARED | <div>Shared Key authentication (requires static WEP keys)</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemWifiCurrentStatusType"></a>== EntityItemWifiCurrentStatusType ==

The EntityItemWifiCurrentStatusType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| CURRENT | <div>The network we are currently connected to</div> |  
| ENABLED | <div>Supplicant will not attempt to use this network</div> |  
| DISABLED | <div>Supplicant will consider this network available for association</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemWifiGroupCipherType"></a>== EntityItemWifiGroupCipherType ==

The EntityItemWifiGroupCipherType complex type restricts a string value to a specific set of values that name Wi-Fi group ciphers. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| CCMP | <div>AES in Counter mode with CBC-MAC [RFC 3610, IEEE 802.11i/D7.0]; Constant Value: 3 (0x00000003)</div> |  
| TKIP | <div>Temporal Key Integrity Protocol [IEEE 802.11i/D7.0]; Constant Value: 2 (0x00000002)</div> |  
| WEP104 | <div>WEP (Wired Equivalent Privacy) with 104-bit key; Constant Value: 1 (0x00000001)</div> |  
| WEP40 | <div>WEP (Wired Equivalent Privacy) with 40-bit key (original 802.11); Constant Value: 0 (0x00000000)</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemWifiKeyMgmtType"></a>== EntityItemWifiKeyMgmtType ==

The EntityItemWifiKeyMgmtType complex type restricts a string value to a specific set of values that name Wi-Fi key management schemes (from android.net.wifi.WifiConfiguration.KeyMgmt). The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| IEEE8021X | <div>IEEE 802.1X using EAP authentication and (optionally) dynamically generated WEP keys.</div> |  
| NONE | <div>WPA is not used; plaintext or static WEP could be used.</div> |  
| WPA_EAP | <div>WPA using EAP authentication.</div> |  
| WPA_PSK | <div>WPA pre-shared key.</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemWifiPairwiseCipherType"></a>== EntityItemWifiPairwiseCipherType ==

The EntityItemWifiPairwiseCipherType complex type restricts a string value to a specific set of values that name Wi-Fi recognized pairwise ciphers for WPA (from android.net.wifi.WifiConfiguration.PairwiseCipher). The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| CCMP | <div>AES in Counter mode with CBC-MAC [RFC 3610, IEEE 802.11i/D7.0]</div> |  
| NONE | <div>Use only Group keys (deprecated)</div> |  
| TKIP | <div>Temporal Key Integrity Protocol [IEEE802.11i/D7.0]</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
## <a name="EntityItemWifiProtocolType"></a>== EntityItemWifiProtocolType ==

The EntityItemWifiProtocolType complex type restricts a string value to a specific set of values that name Wi-Fi recognized security protocols (from android.net.wifi.WifiConfiguration.Protocol). The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** [oval-sc:EntityItemStringType](oval-system-characteristics-schema.md#EntityItemStringType) 

| Value | Description |  
| ----- | ----------- |  
| RSN | <div>WPA2/IEEE 802.11i</div> |  
| WPA | <div>WPA/IEEE 802.11i/D3.0</div> |  
|  | <div>The empty string value is permitted here to allow for detailed error reporting.</div> |  
  
