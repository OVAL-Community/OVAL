Open Vulnerability and Assessment Language: Android System Characteristics  
=========================================================
* Schema: Android System Characteristics  
* Version: 5.12.2  
* Release Date: 11/25/2025 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Android specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at https://github.com/OVAL-Community/.

Item Listing  
---------------------------------------------------------
* :ref:`appmanager_item`  
* :ref:`bluetooth_item`  
* :ref:`camera_item`  
* :ref:`certificate_item`  
* :ref:`devicesettings_item`  
* :ref:`encryption_item`  
* :ref:`locationservice_item`  
* :ref:`network_item`  
* :ref:`password_item`  
* :ref:`systemdetails_item`  
* :ref:`wifi_item`  
* :ref:`wifinetwork_item`  
* :ref:`telephony_item`  
  
______________
  
.. _appmanager_item:  
  
< appmanager_item >  
---------------------------------------------------------
This item stores information about applications installed on the device.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - application_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Name of the application.  
    * - uid  
      - oval-sc:EntityItemStringType (0..1)  
      - Linux userid assigned to the application. (In some cases multiple applications can share a userid.)  
    * - gid  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - One element for each group id that the application belongs to.  
    * - package_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Name of the package.  
    * - data_directory  
      - oval-sc:EntityItemStringType (0..1)  
      - Data directory assigned to the application.  
    * - version  
      - oval-sc:EntityItemStringType (0..1)  
      - Application version.  
    * - current_status  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if the application is enabled.  
    * - permission  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - One element for each permission granted to the application.  
    * - native_lib_dir  
      - oval-sc:EntityItemStringType (0..1)  
      - Directory where the application's native libraries (if any) have been installed.  
    * - signing_certificate  
      - oval-sc:EntityItemBinaryType (0..unbounded)  
      - Hexadecimal string of the signing certificate corresponding with the key used to sign the application package. Only the actual signing certificate should be included, not CA certificates in the chain (if applicable).  
    * - first_install_time  
      - oval-sc:EntityItemIntType (0..1)  
      - Time at which the app was first installed, expressed in milliseconds since January 1, 1970 00:00:00 UTC.  
    * - last_update_time  
      - oval-sc:EntityItemIntType (0..1)  
      - Time at which the app was last updated, expressed in milliseconds since January 1, 1970 00:00:00 UTC.  
    * - package_file_location  
      - oval-sc:EntityItemStringType (0..1)  
      - From ApplicationInfo.sourceDir, the full path to the location of the publicly available parts of the application package.  
  
______________
  
.. _bluetooth_item:  
  
< bluetooth_item >  
---------------------------------------------------------
This holds information about device Bluetooth settings.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - discoverable  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if device Bluetooth is currently in discoverable mode.  
    * - current_status  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if device Bluetooth is currently enabled.  
  
______________
  
.. _camera_item:  
  
< camera_item >  
---------------------------------------------------------
This item is used to check camera-related information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - camera_disabled_policy  
      - oval-sc:EntityItemBoolType (0..1)  
      - If true, then a policy is being enforced disabling use of the camera. The policy is only available in Android 4.0 and up (and potentially on older Android devices if specifically added by the device vendor).  
  
______________
  
.. _certificate_item:  
  
< certificate_item >  
---------------------------------------------------------
This item stores information about the certificates installed on the device.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - trusted_certificate  
      - oval-sc:EntityItemBinaryType (0..unbounded)  
      - Hexadecimal string of each certificate in the OS's trusted certificate store, including both certificates installed by the system and by users. System trusted certificates that were disabled by the user are not included here.  
  
______________
  
.. _devicesettings_item:  
  
< devicesettings_item >  
---------------------------------------------------------
This holds information about miscellaneous device settings.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - adb_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if Android Debug Bridge (USB debugging) is enabled.  
    * - allow_mock_location  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if mock locations and location provider status can be injected into Android's Location Manager.  
    * - install_non_market_apps  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if applications can be installed from "unknown sources".  
    * - device_admin  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - One element per application that holds device administrator access. Contains the application's package name.  
    * - auto_time  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if the user prefers the date and time to be automatically fetched from the network.  
    * - auto_time_zone  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if the user prefers the time zone to be automatically fetched from the network.  
    * - usb_mass_storage_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if USB mass storage is enabled on the device, otherwise false.  
  
______________
  
.. _encryption_item:  
  
< encryption_item >  
---------------------------------------------------------
Device encryption information.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - encryption_policy_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if a policy is in place requiring the device storage to be encrypted. (android.app.admin.DevicePolicyManager.getStorageEncryption())  
    * - encryption_status  
      - android-sc:EntityItemEncryptionStatusType (0..1)  
      - The current status of device encryption. (android.app.admin.DevicePolicyManager.getStorageEncryptionStatus()) Either ENCRYPTION_STATUS_UNSUPPORTED, ENCRYPTION_STATUS_INACTIVE, ENCRYPTION_STATUS_ACTIVATING, or ENCRYPTION_STATUS_ACTIVE as documented in the Android SDK's DevicePolicyManager class.  
  
______________
  
.. _locationservice_item:  
  
< locationservice_item >  
---------------------------------------------------------
This holds information about location based service status.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - gps_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean value indicating whether the GPS location provider is enabled.  
    * - network_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - A boolean value indicating whether the network location provider is enabled.  
  
______________
  
.. _network_item:  
  
< network_item >  
---------------------------------------------------------
This holds information about networks configured and their preference.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - airplane_mode  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if airplane mode is enabled.  
    * - nfc_enabled  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if NFC is enabled on the device.  
  
______________
  
.. _password_item:  
  
< password_item >  
---------------------------------------------------------
Specific policy items associated with passwords and the device screen lock.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - max_num_failed_user_auth  
      - oval-sc:EntityItemIntType (0..1)  
      - Maximum number of failed user authentications before device wipe. Zero means there is no policy in place.  
    * - password_hist  
      - oval-sc:EntityItemIntType (0..1)  
      - Specifies the length of password history maintained (passwords in the history cannot be reused). Zero means there is no policy in place.  
    * - password_quality  
      - android-sc:EntityItemPasswordQualityType (0..1)  
      - The current minimum required password quality required by device policy. Represented as a string corresponding with a valid Android password quality, currently one of: PASSWORD_QUALITY_ALPHABETIC PASSWORD_QUALITY_ALPHANUMERIC PASSWORD_QUALITY_BIOMETRIC_WEAK PASSWORD_QUALITY_COMPLEX PASSWORD_QUALITY_NUMERIC PASSWORD_QUALITY_SOMETHING PASSWORD_QUALITY_UNSPECIFIED  
    * - password_min_length  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum length of characters password must have. This constraint is only imposed if the password quality is one of PASSWORD_QUALITY_NUMERIC, PASSWORD_QUALITY_ALPHABETIC, PASSWORD_QUALITY_ALPHANUMERIC, or PASSWORD_QUALITY_COMPLEX.  
    * - password_min_letters  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum number of letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_lower_case_letters  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum number of lower case letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_non_letters  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum number of non-letter characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_numeric  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum number of numeric characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_symbols  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum number of symbol characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_upper_case_letters  
      - oval-sc:EntityItemIntType (0..1)  
      - Minimum number of upper case letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_expiration_timeout  
      - oval-sc:EntityItemIntType (0..1)  
      - Gets the current password expiration timeout policy, in milliseconds. Zero means there is no policy in place.  
    * - password_visible  
      - oval-sc:EntityItemBoolType (0..1)  
      - When true, the most recently keyed in password character is shown to the user on the screen (the previously entered characters are masked out). When false, all keyed in password characters are immediately masked out. This setting is manageable by the device user through the device settings.  
    * - active_password_sufficient  
      - oval-sc:EntityItemBoolType (0..1)  
      - When true, the current device password is compliant with the password policy. (If the policy was recently established, it is possible that a password compliant with the policy may not yet be in place.)  
    * - current_failed_password_attempts  
      - oval-sc:EntityItemIntType (0..1)  
      - The number of times the user has failed at entering a password since the last successful password entry.  
    * - screen_lock_timeout  
      - oval-sc:EntityItemIntType (0..1)  
      - The current policy for the highest screen lock timeout the user is allowed to specify. 0 indicates no restriction. (The user may still specify lower values in the device settings.)  
    * - keyguard_disabled_features  
      - android-sc:EntityItemKeyguardDisabledFeaturesType (0..1)  
      - The current policy for lockscreen widgets as retrieved by DevicePolicyManager.getKeyguardDisabledFeatures. May be set to one of KEYGUARD_DISABLE_FEATURES_ALL, KEYGUARD_DISABLED_FEATURES_NONE, KEYGUARD_DISABLE_SECURE_CAMERA, or KEYGUARD_DISABLE_WIDGETS_ALL. Only available in Android 4.2 and up.  
  
______________
  
.. _systemdetails_item:  
  
< systemdetails_item >  
---------------------------------------------------------
This item stores information about the Operating System and hardware.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hardware  
      - oval-sc:EntityItemStringType (0..1)  
      - The hardware model, as provided by android.os.Build.HARDWARE using the Android SDK.  
    * - manufacturer  
      - oval-sc:EntityItemStringType (0..1)  
      - The device manufacturer, as provided by android.os.Build.MANUFACTURER using the Android SDK.  
    * - model  
      - oval-sc:EntityItemStringType (0..1)  
      - The device model identifier, as provided by android.os.Build.MODEL using the Android SDK.  
    * - product  
      - oval-sc:EntityItemStringType (0..1)  
      - The product name, as provided by android.os.Build.PRODUCT using the Android SDK.  
    * - cpu_abi  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the instruction set of native code, as provided by android.os.Build.CPU_ABI using the Android SDK.  
    * - cpu_abi2  
      - oval-sc:EntityItemStringType (0..1)  
      - The name of the second instruction set of native code, as provided by android.os.Build.CPU_ABI2 using the Android SDK.  
    * - build_fingerprint  
      - oval-sc:EntityItemStringType (0..1)  
      - Build fingerprint, as provided by android.os.Build.FINGERPRINT using the Android SDK.  
    * - os_version_code_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Operating system version code, as provided by android.os.Build.VERSION.CODENAME using the Android SDK.  
    * - os_version_build_number  
      - oval-sc:EntityItemStringType (0..1)  
      - Operating system build number, as provided by android.os.Build.VERSION.INCREMENTAL using the Android SDK.  
    * - os_version_release_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Operating system release name, as provided by android.os.Build.VERSION.RELEASE using the Android SDK.  
    * - os_version_sdk_number  
      - oval-sc:EntityItemIntType (0..1)  
      - Operating system SDK number, as provided by android.os.Build.VERSION.SDK_INT using the Android SDK.  
    * - hardware_keystore  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if the device provides a hardware backed cryptographic keystore (a hardware keystore prevents exporting private keys or directly exposing private keys to the OS), otherwise false.  
  
______________
  
.. _wifi_item:  
  
< wifi_item >  
---------------------------------------------------------
This item holds information about general Wi-Fi settings.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - wifi_status  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if Wi-Fi is currently enabled on the device.  
    * - network_availability_notification  
      - oval-sc:EntityItemBoolType (0..1)  
      - True if the Wi-Fi network availability notification setting is currently enabled on the device.  
  
______________
  
.. _wifinetwork_item:  
  
< wifinetwork_item >  
---------------------------------------------------------
This item holds information about the configured Wi-Fi networks on the device.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - bssid  
      - oval-sc:EntityItemStringType (0..1)  
      - BSSID. The value is a string in the format of an Ethernet MAC address.  
    * - ssid  
      - oval-sc:EntityItemStringType (0..1)  
      - The network's SSID.  
    * - auth_algorithms  
      - android-sc:EntityItemWifiAuthAlgorithmType (0..unbounded)  
      - The set of authentication protocols supported by this configuration.  
    * - group_ciphers  
      - android-sc:EntityItemWifiGroupCipherType (0..unbounded)  
      - The set of group ciphers supported by this configuration.  
    * - key_management  
      - android-sc:EntityItemWifiKeyMgmtType (0..unbounded)  
      - The set of key management protocols supported by this configuration.  
    * - pairwise_ciphers  
      - android-sc:EntityItemWifiPairwiseCipherType (0..unbounded)  
      - The set of pairwise ciphers for WPA supported by this configuration.  
    * - protocols  
      - android-sc:EntityItemWifiProtocolType (0..unbounded)  
      - The set of security protocols supported by this configuration.  
    * - hidden_ssid  
      - oval-sc:EntityItemBoolType (0..1)  
      - This is a network that does not broadcast its SSID.  
    * - network_id  
      - oval-sc:EntityItemIntType (0..1)  
      - The ID number that the supplicant uses to identify this network configuration entry.  
    * - priority  
      - oval-sc:EntityItemIntType (0..1)  
      - Priority determines the preference given to a network by wpa_supplicant when choosing an access point with which to associate.  
    * - current_status  
      - android-sc:EntityItemWifiCurrentStatusType (0..1)  
      - The current status of this network configuration entry, either CURRENT, DISABLED, or ENABLED per android.net.wifi.WifiConfiguration.Status.  
  
______________
  
.. _telephony_item:  
  
< telephony_item >  
---------------------------------------------------------
The telephony_item element contains a single entity that is used to check the status of the telephony manager Item.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - network_type  
      - android-sc:EntityItemNetworkType (0..1)  
      - A constant String value indicating the radio technology (network type) currently in use on the device for data transmission.  
    * - sim_country_iso  
      - oval-sc:EntityItemStringType (0..1)  
      - The ISO country code equivalent for the SIM provider's country code.  
    * - sim_operator_code  
      - oval-sc:EntityItemStringType (0..1)  
      - the MCC+MNC (mobile country code + mobile network code) of the provider of the SIM. It contains 5 or 6 decimal digits.  
  
.. _EntityItemEncryptionStatusType:  
  
== EntityItemEncryptionStatusType ==  
---------------------------------------------------------
The EntityItemEncryptionStatusType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - ENCRYPTION_STATUS_UNSUPPORTED  
      - | Encryption is not supported  
    * - ENCRYPTION_STATUS_ACTIVE  
      - | Encryption is active.  
    * - ENCRYPTION_STATUS_INACTIVE  
      - | Encryption is supported but is not currently active.  
    * - ENCRYPTION_STATUS_ACTIVATING  
      - | Encryption is not currently active, but is currently being activated.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemKeyguardDisabledFeaturesType:  
  
== EntityItemKeyguardDisabledFeaturesType ==  
---------------------------------------------------------
The EntityItemKeyguardDisabledFeaturesType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - KEYGUARD_DISABLE_FEATURES_NONE  
      - | Widgets are enabled in keyguard  
    * - KEYGUARD_DISABLE_WIDGETS_ALL  
      - | Disable all keyguard widgets  
    * - KEYGUARD_DISABLE_SECURE_CAMERA  
      - | Disable the camera on secure keyguard screens (e.g. PIN/Pattern/Password)  
    * - KEYGUARD_DISABLE_FEATURES_ALL  
      - | Disable all current and future keyguard customizations  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemNetworkType:  
  
== EntityItemNetworkType ==  
---------------------------------------------------------
The EntityItemNetworkType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - UNKNOWN  
      - | The network type is unknown  
    * - GPRS  
      - | Current network is GPRS  
    * - EDGE  
      - | Current network is EDGE  
    * - UMTS  
      - | Current network is UMTS  
    * - CDMA  
      - | Current network is CDMA  
    * - EVDO-0  
      - | Current network is EVDO-0  
    * - EVDO-A  
      - | Current network is EVDO-A  
    * - 1xRTT  
      - | Current network is 1xRTT  
    * - HSDPA  
      - | Current network is HSDPA  
    * - HSUPA  
      - | Current network is HSUPA  
    * - HSPA  
      - | Current network is HSPA  
    * - IDEN  
      - | Current network is IDEN  
    * - EVDO-B  
      - | Current network is EVDO-B  
    * - LTE  
      - | Current network is LTE  
    * - EHRPD  
      - | Current network is EHRPD  
    * - HSPAP  
      - | Current network is HSPAP  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemPasswordQualityType:  
  
== EntityItemPasswordQualityType ==  
---------------------------------------------------------
The EntityItemPasswordQualityType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - PASSWORD_QUALITY_ALPHABETIC  
      - | The password must contain alphabetic (or other symbol) characters  
    * - PASSWORD_QUALITY_ALPHANUMERIC  
      - | The password must contain both numeric and alphabetic (or other symbol) characters  
    * - PASSWORD_QUALITY_BIOMETRIC_WEAK  
      - | This policy allows for low-security biometric recognition technology  
    * - PASSWORD_QUALITY_COMPLEX  
      - | The password must contain at least a letter, a numerical digit, and a special symbol  
    * - PASSWORD_QUALITY_NUMERIC  
      - | The password must contain at least numeric characters  
    * - PASSWORD_QUALITY_SOMETHING  
      - | This policy requires some kind of password, but doesn't care what it is  
    * - PASSWORD_QUALITY_UNSPECIFIED  
      - | There are no password policy requirements  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemWifiAuthAlgorithmType:  
  
== EntityItemWifiAuthAlgorithmType ==  
---------------------------------------------------------
The EntityItemWifiAuthAlgorithmType complex type restricts a string value to a specific set of values that name WiFi authentication algorithms. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - LEAP  
      - | LEAP/Network EAP (only used with LEAP)  
    * - OPEN  
      - | Open System authentication (required for WPA/WPA2)  
    * - SHARED  
      - | Shared Key authentication (requires static WEP keys)  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemWifiCurrentStatusType:  
  
== EntityItemWifiCurrentStatusType ==  
---------------------------------------------------------
The EntityItemWifiCurrentStatusType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - CURRENT  
      - | The network we are currently connected to  
    * - ENABLED  
      - | Supplicant will not attempt to use this network  
    * - DISABLED  
      - | Supplicant will consider this network available for association  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemWifiGroupCipherType:  
  
== EntityItemWifiGroupCipherType ==  
---------------------------------------------------------
The EntityItemWifiGroupCipherType complex type restricts a string value to a specific set of values that name Wi-Fi group ciphers. The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - CCMP  
      - | AES in Counter mode with CBC-MAC [RFC 3610, IEEE 802.11i/D7.0]; Constant Value: 3 (0x00000003)  
    * - TKIP  
      - | Temporal Key Integrity Protocol [IEEE 802.11i/D7.0]; Constant Value: 2 (0x00000002)  
    * - WEP104  
      - | WEP (Wired Equivalent Privacy) with 104-bit key; Constant Value: 1 (0x00000001)  
    * - WEP40  
      - | WEP (Wired Equivalent Privacy) with 40-bit key (original 802.11); Constant Value: 0 (0x00000000)  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemWifiKeyMgmtType:  
  
== EntityItemWifiKeyMgmtType ==  
---------------------------------------------------------
The EntityItemWifiKeyMgmtType complex type restricts a string value to a specific set of values that name Wi-Fi key management schemes (from android.net.wifi.WifiConfiguration.KeyMgmt). The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - IEEE8021X  
      - | IEEE 802.1X using EAP authentication and (optionally) dynamically generated WEP keys.  
    * - NONE  
      - | WPA is not used; plaintext or static WEP could be used.  
    * - WPA_EAP  
      - | WPA using EAP authentication.  
    * - WPA_PSK  
      - | WPA pre-shared key.  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemWifiPairwiseCipherType:  
  
== EntityItemWifiPairwiseCipherType ==  
---------------------------------------------------------
The EntityItemWifiPairwiseCipherType complex type restricts a string value to a specific set of values that name Wi-Fi recognized pairwise ciphers for WPA (from android.net.wifi.WifiConfiguration.PairwiseCipher). The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - CCMP  
      - | AES in Counter mode with CBC-MAC [RFC 3610, IEEE 802.11i/D7.0]  
    * - NONE  
      - | Use only Group keys (deprecated)  
    * - TKIP  
      - | Temporal Key Integrity Protocol [IEEE802.11i/D7.0]  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
.. _EntityItemWifiProtocolType:  
  
== EntityItemWifiProtocolType ==  
---------------------------------------------------------
The EntityItemWifiProtocolType complex type restricts a string value to a specific set of values that name Wi-Fi recognized security protocols (from android.net.wifi.WifiConfiguration.Protocol). The empty string is also allowed to support empty elements associated with error conditions.

**Restricts:** oval-sc:EntityItemStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - RSN  
      - | WPA2/IEEE 802.11i  
    * - WPA  
      - | WPA/IEEE 802.11i/D3.0  
    * -   
      - | The empty string value is permitted here to allow for detailed error reporting.  
  
