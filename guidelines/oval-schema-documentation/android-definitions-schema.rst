Open Vulnerability and Assessment Language: Android Definition  
=========================================================
* Schema: Android Definition  
* Version: 5.11.1:1.1  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Android specific tests found in Open Vulnerability and Assessment Language (OVAL). Each test is an extension of the standard test element defined in the Core Definition Schema. Through extension, each test inherits a set of elements and attributes that are shared amongst all OVAL tests. Each test is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core Definition Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

Test Listing  
---------------------------------------------------------
* :ref:`appmanager_test`  
* :ref:`bluetooth_test`  
* :ref:`camera_test`  
* :ref:`certificate_test`  
* :ref:`devicesettings_test`  
* :ref:`encryption_test`  
* :ref:`locationservice_test`  
* :ref:`network_test`  
* :ref:`password_test`  
* :ref:`systemdetails_test`  
* :ref:`wifi_test`  
* :ref:`wifinetwork_test`  
* :ref:`telephony_test`  
  
______________
  
.. _appmanager_test:  
  
< appmanager_test >  
---------------------------------------------------------
The appmanager_test is used to verify the applications installed on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a appmanager_object and the optional state element specifies the data to check.

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
  
.. _appmanager_object:  
  
< appmanager_object >  
---------------------------------------------------------
The appmanager_object element is used by a appmanager_test to define the required application properties to verify. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - package_name  
      - oval-def:EntityObjectStringType (1..1)  
      - Name of the package.  
    * - signing_certificate  
      - oval-def:EntityObjectBinaryType (1..1)  
      - Hexadecimal string of the signing certificate corresponding with the key used to sign the application package. Only the actual signing certificate should be included, not CA certificates in the chain (if applicable).  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _appmanager_state:  
  
< appmanager_state >  
---------------------------------------------------------
The appmanager_state element defines the application settings.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - application_name  
      - oval-def:EntityStateStringType (0..1)  
      - Name of the application.  
    * - uid  
      - oval-def:EntityStateStringType (0..1)  
      - Linux userid assigned to the application. (In some cases multiple applications can share a userid.)  
    * - gid  
      - oval-def:EntityStateStringType (0..unbounded)  
      - One element for each group id that the application belongs to.  
    * - package_name  
      - oval-def:EntityStateStringType (0..1)  
      - Name of the package.  
    * - data_directory  
      - oval-def:EntityStateStringType (0..1)  
      - Data directory assigned to the application.  
    * - version  
      - oval-def:EntityStateStringType (0..1)  
      - Application version.  
    * - current_status  
      - oval-def:EntityStateBoolType (0..1)  
      - True if the application is enabled.  
    * - permission  
      - oval-def:EntityStateStringType (0..1)  
      - One element for each permission granted to the application.  
    * - native_lib_dir  
      - oval-def:EntityStateStringType (0..1)  
      - Directory where the application's native libraries (if any) have been installed.  
    * - signing_certificate  
      - oval-def:EntityStateBinaryType (0..unbounded)  
      - Hexadecimal string of the signing certificate corresponding with the key used to sign the application package. Only the actual signing certificate should be included, not CA certificates in the chain (if applicable).  
    * - first_install_time  
      - oval-def:EntityStateIntType (0..1)  
      - Time at which the app was first installed, expressed in milliseconds since January 1, 1970 00:00:00 UTC.  
    * - last_update_time  
      - oval-def:EntityStateIntType (0..1)  
      - Time at which the app was last updated, expressed in milliseconds since January 1, 1970 00:00:00 UTC.  
    * - package_file_location  
      - oval-def:EntityStateStringType (0..1)  
      - From ApplicationInfo.sourceDir, the full path to the location of the publicly available parts of the application package.  
  
______________
  
.. _bluetooth_test:  
  
< bluetooth_test >  
---------------------------------------------------------
The bluetooth_test is used to check the status of bluetooth settings on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a bluetooth_object and the optional state element specifies the data to check.

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
  
.. _bluetooth_object:  
  
< bluetooth_object >  
---------------------------------------------------------
The bluetooth_object element is used by a bluetooth test to define those objects to be evaluated based on a specified state. Any OVAL Test written to check bluetooth settings status will reference the same bluetooth_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _bluetooth_state:  
  
< bluetooth_state >  
---------------------------------------------------------
The bluetooth_state element defines the bluetooth general settings status.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - discoverable  
      - oval-def:EntityStateBoolType (0..1)  
      - True if device Bluetooth is currently in discoverable mode.  
    * - current_status  
      - oval-def:EntityStateBoolType (0..1)  
      - True if device Bluetooth is currently enabled.  
  
______________
  
.. _camera_test:  
  
< camera_test >  
---------------------------------------------------------
The camera_test is used to check camera-related information.

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
  
.. _camera_object:  
  
< camera_object >  
---------------------------------------------------------
The camera_object element is used by a camera test to define those objects to evaluate based on a camera state.

**Extends:** oval-def:ObjectType

.. _camera_state:  
  
< camera_state >  
---------------------------------------------------------
The camera_state element contains a single entity that is used to check the status of the camera.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - camera_disabled_policy  
      - oval-def:EntityStateBoolType (0..1)  
      - If true, then a policy is being enforced disabling use of the camera. The policy is only available in Android 4.0 and up (and potentially on older Android devices if specifically added by the device vendor).  
  
______________
  
.. _certificate_test:  
  
< certificate_test >  
---------------------------------------------------------
The certificate_test is used to check the certificates installed on the device.

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
  
.. _certificate_object:  
  
< certificate_object >  
---------------------------------------------------------
The certificate_object element is used by a certificate test to define those objects to evaluate based on a certificate state.

**Extends:** oval-def:ObjectType

.. _certificate_state:  
  
< certificate_state >  
---------------------------------------------------------
The certificate_state element contains a single entity that is used to check the status of the certificates.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - trusted_certificate  
      - oval-def:EntityStateBinaryType (0..unbounded)  
      - Hexadecimal string of each certificate in the OS's trusted certificate store, including both certificates installed by the system and by users. System trusted certificates that were disabled by the user are not included here.  
  
______________
  
.. _devicesettings_test:  
  
< devicesettings_test >  
---------------------------------------------------------
The devicesettings_test is used to check the status of various settings on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a devicesettings_object and the optional state element specifies the data to check.

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
  
.. _devicesettings_object:  
  
< devicesettings_object >  
---------------------------------------------------------
The devicesettings_object element is used by a device settings test to define those objects to be evaluated based on a specified state. Any OVAL Test written to check device settings will reference the same devicesettings_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _devicesettings_state:  
  
< devicesettings_state >  
---------------------------------------------------------
The devicesettings_state element defines the device settings.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - adb_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - True if Android Debug Bridge (USB debugging) is enabled.  
    * - allow_mock_location  
      - oval-def:EntityStateBoolType (0..1)  
      - True if mock locations and location provider status can be injected into Android's Location Manager.  
    * - install_non_market_apps  
      - oval-def:EntityStateBoolType (0..1)  
      - True if applications can be installed from "unknown sources".  
    * - device_admin  
      - oval-def:EntityStateStringType (0..unbounded)  
      - One element per application that holds device administrator access. Contains the application's package name.  
    * - auto_time  
      - oval-def:EntityStateBoolType (0..1)  
      - True if the user prefers the date and time to be automatically fetched from the network.  
    * - auto_time_zone  
      - oval-def:EntityStateBoolType (0..1)  
      - True if the user prefers the time zone to be automatically fetched from the network.  
    * - usb_mass_storage_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - True if USB mass storage is enabled on the device, otherwise false.  
  
______________
  
.. _encryption_test:  
  
< encryption_test >  
---------------------------------------------------------
The encryption_test is used to check the encryption status on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a encryption_object and the optional state element references a encryption_state that specifies the information to check.

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
  
.. _encryption_object:  
  
< encryption_object >  
---------------------------------------------------------
The encryption_object element is used by a encryption test to define those objects to evaluated based on a specified state. Any OVAL Test written to check encryption settings will reference the same encryption_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _encryption_state:  
  
< encryption_state >  
---------------------------------------------------------
The encryption_state element defines the encryption settings configured on the device.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - encryption_policy_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - True if a policy is in place requiring the device storage to be encrypted. (android.app.admin.DevicePolicyManager.getStorageEncryption())  
    * - encryption_status  
      - android-def:EntityStateEncryptionStatusType (0..1)  
      - The current status of device encryption. (android.app.admin.DevicePolicyManager.getStorageEncryptionStatus()) Either ENCRYPTION_STATUS_UNSUPPORTED, ENCRYPTION_STATUS_INACTIVE, ENCRYPTION_STATUS_ACTIVATING, or ENCRYPTION_STATUS_ACTIVE as documented in the Android SDK's DevicePolicyManager class.  
  
______________
  
.. _locationservice_test:  
  
< locationservice_test >  
---------------------------------------------------------
The locationservice_test is used to check the status of location based services. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a locationservice_object and the optional state element specifies the data to check.

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
  
.. _locationservice_object:  
  
< locationservice_object >  
---------------------------------------------------------
The locationservice_object element is used by a location service test to define those objects to evaluated based on a specified state. Any OVAL Test written to check location based services status will reference the same locationservice_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _locationservice_state:  
  
< locationservice_state >  
---------------------------------------------------------
The locationservice_state element defines the location based services status.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - gps_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - A boolean value indicating whether the GPS location provider is enabled.  
    * - network_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - A boolean value indicating whether the network location provider is enabled.  
  
______________
  
.. _network_test:  
  
< network_test >  
---------------------------------------------------------
The network_test is used to check the status of network preferences on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a network_object and the optional state element specifies the data to check.

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
  
.. _network_object:  
  
< network_object >  
---------------------------------------------------------
The network_object element is used by a network test to define those objects to be evaluated based on a specified state. Any OVAL Test written to check network preference will reference the same network_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _network_state:  
  
< network_state >  
---------------------------------------------------------
The network_state element defines the network preferences.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - airplane_mode  
      - oval-def:EntityStateBoolType (0..1)  
      - True if airplane mode is enabled on the device.  
    * - nfc_enabled  
      - oval-def:EntityStateBoolType (0..1)  
      - True if NFC is enabled on the device.  
  
______________
  
.. _password_test:  
  
< password_test >  
---------------------------------------------------------
The password test is used to check specific policy associated with passwords and the device screen lock. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a password_object and the optional state element specifies the metadata to check.

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
  
.. _password_object:  
  
< password_object >  
---------------------------------------------------------
The password_object element is used by a password test to define those objects to evaluated based on a specified state. Any OVAL Test written to check password policy will reference the same password_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _password_state:  
  
< password_state >  
---------------------------------------------------------
The password_state element specifies the various policies associated with passwords and the device screen lock. A password test will reference a specific instance of this state that defines the exact settings that need to be evaluated.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - max_num_failed_user_auth  
      - oval-def:EntityStateIntType (0..1)  
      - Maximum number of failed user authentications before device wipe. Zero means there is no policy in place.  
    * - password_hist  
      - oval-def:EntityStateIntType (0..1)  
      - Specifies the length of password history maintained (passwords in the history cannot be reused). Zero means there is no policy in place.  
    * - password_quality  
      - android-def:EntityStatePasswordQualityType (0..1)  
      - The current minimum required password quality required by device policy. Represented as a string corresponding with a valid Android password quality, currently one of: PASSWORD_QUALITY_ALPHABETIC PASSWORD_QUALITY_ALPHANUMERIC PASSWORD_QUALITY_BIOMETRIC_WEAK PASSWORD_QUALITY_COMPLEX PASSWORD_QUALITY_NUMERIC PASSWORD_QUALITY_SOMETHING PASSWORD_QUALITY_UNSPECIFIED  
    * - password_min_length  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum length of characters password must have. This constraint is only imposed if the password quality is one of PASSWORD_QUALITY_NUMERIC, PASSWORD_QUALITY_ALPHABETIC, PASSWORD_QUALITY_ALPHANUMERIC, or PASSWORD_QUALITY_COMPLEX.  
    * - password_min_letters  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum number of letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_lower_case_letters  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum number of lower case letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_non_letters  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum number of non-letter characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_numeric  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum number of numeric characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_symbols  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum number of symbol characters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_min_upper_case_letters  
      - oval-def:EntityStateIntType (0..1)  
      - Minimum number of upper case letters password must have. This constraint is only imposed if the password quality is PASSWORD_QUALITY_COMPLEX.  
    * - password_expiration_timeout  
      - oval-def:EntityStateIntType (0..1)  
      - Gets the current password expiration timeout policy, in milliseconds. Zero means there is no policy in place.  
    * - password_visible  
      - oval-def:EntityStateBoolType (0..1)  
      - When true, the most recently keyed in password character is shown to the user on the screen (the previously entered characters are masked out). When false, all keyed in password characters are immediately masked out. This setting is manageable by the device user through the device settings.  
    * - active_password_sufficient  
      - oval-def:EntityStateBoolType (0..1)  
      - When true, the current device password is compliant with the password policy. (If the policy was recently established, it is possible that a password compliant with the policy may not yet be in place.)  
    * - current_failed_password_attempts  
      - oval-def:EntityStateIntType (0..1)  
      - The number of times the user has failed at entering a password since the last successful password entry.  
    * - screen_lock_timeout  
      - oval-def:EntityStateIntType (0..1)  
      - The current policy for the highest screen lock timeout the user is allowed to specify. 0 indicates no restriction. (The user may still specify lower values in the device settings.)  
    * - keyguard_disabled_features  
      - android-def:EntityStateKeyguardDisabledFeaturesType (0..1)  
      - The current policy for lockscreen widgets as retrieved by DevicePolicyManager.getKeyguardDisabledFeatures. May be set to one of KEYGUARD_DISABLE_FEATURES_ALL, KEYGUARD_DISABLED_FEATURES_NONE, KEYGUARD_DISABLE_SECURE_CAMERA, or KEYGUARD_DISABLE_WIDGETS_ALL. Only available in Android 4.2 and up.  
  
______________
  
.. _systemdetails_test:  
  
< systemdetails_test >  
---------------------------------------------------------
The syste_details test is used to get system hardware and operating system information. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a systemdetails_object and the optional state element specifies the data to check.

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
  
.. _systemdetails_object:  
  
< systemdetails_object >  
---------------------------------------------------------
The systemdetails_object element is used by a systemdetails test to define the object to be evaluated. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information.

**Extends:** oval-def:ObjectType

.. _systemdetails_state:  
  
< systemdetails_state >  
---------------------------------------------------------
The systemdetails_state element defines the information about the hardware and the operating system. Please refer to the individual elements in the schema for more details about what each represents.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - hardware  
      - oval-def:EntityStateStringType (0..1)  
      - The hardware model, as provided by android.os.Build.HARDWARE using the Android SDK.  
    * - manufacturer  
      - oval-def:EntityStateStringType (0..1)  
      - The device manufacturer, as provided by android.os.Build.MANUFACTURER using the Android SDK.  
    * - model  
      - oval-def:EntityStateStringType (0..1)  
      - The device model identifier, as provided by android.os.Build.MODEL using the Android SDK.  
    * - product  
      - oval-def:EntityStateStringType (0..1)  
      - The product name, as provided by android.os.Build.PRODUCT using the Android SDK.  
    * - cpu_abi  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the instruction set of native code, as provided by android.os.Build.CPU_ABI using the Android SDK.  
    * - cpu_abi2  
      - oval-def:EntityStateStringType (0..1)  
      - The name of the second instruction set of native code, as provided by android.os.Build.CPU_ABI2 using the Android SDK.  
    * - build_fingerprint  
      - oval-def:EntityStateStringType (0..1)  
      - Build fingerprint, as provided by android.os.Build.FINGERPRINT using the Android SDK.  
    * - os_version_code_name  
      - oval-def:EntityStateStringType (0..1)  
      - Operating system version code, as provided by android.os.Build.VERSION.CODENAME using the Android SDK.  
    * - os_version_build_number  
      - oval-def:EntityStateStringType (0..1)  
      - Operating system build number, as provided by android.os.Build.VERSION.INCREMENTAL using the Android SDK.  
    * - os_version_release_name  
      - oval-def:EntityStateStringType (0..1)  
      - Operating system release name, as provided by android.os.Build.VERSION.RELEASE using the Android SDK.  
    * - os_version_sdk_number  
      - oval-def:EntityStateIntType (0..1)  
      - Operating system SDK number, as provided by android.os.Build.VERSION.SDK_INT using the Android SDK.  
    * - hardware_keystore  
      - oval-def:EntityStateBoolType (0..1)  
      - True if the device provides a hardware backed cryptographic keystore (a hardware keystore prevents exporting private keys or directly exposing private keys to the OS), otherwise false.  
  
______________
  
.. _wifi_test:  
  
< wifi_test >  
---------------------------------------------------------
The wifi_test is used to check the status of general Wi-Fi settings on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wifi_object and the optional state element specifies the data to check.

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
  
.. _wifi_object:  
  
< wifi_object >  
---------------------------------------------------------
The wifi_object element is used by a wifi test to define those objects to evaluated based on a specified state. Any OVAL Test written to check wifi settings status will reference the same wifi_object which is basically an empty object element.

**Extends:** oval-def:ObjectType

.. _wifi_state:  
  
< wifi_state >  
---------------------------------------------------------
The wifi_state element defines the wifi general settings status.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - wifi_status  
      - oval-def:EntityStateBoolType (0..1)  
      - True if Wi-Fi is currently enabled on the device.  
    * - network_availability_notification  
      - oval-def:EntityStateBoolType (0..1)  
      - True if the Wi-Fi network availability notification setting is currently enabled on the device.  
  
______________
  
.. _wifinetwork_test:  
  
< wifinetwork_test >  
---------------------------------------------------------
The wifinetwork_test is used to check information about the configured Wi-Fi networks on the device. It extends the standard TestType as defined in the oval-definitions-schema and one should refer to the TestType description for more information. The required object element references a wifinetwork_object and the optional state element specifies the data to check.

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
  
.. _wifinetwork_object:  
  
< wifinetwork_object >  
---------------------------------------------------------
The wifinetwork_object element is used by a wifinetwork_test to define the SSID of the Wi-Fi to verify security settings. Each object extends the standard ObjectType as defined in the oval-definitions-schema and one should refer to the ObjectType description for more information.

**Extends:** oval-def:ObjectType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ssid  
      - oval-def:EntityObjectStringType (1..1)  
      - The network's SSID to check.  
    * - oval-def:filter  
      - n/a (0..unbounded)  
      -   
  
.. _wifinetwork_state:  
  
< wifinetwork_state >  
---------------------------------------------------------
The wifinetwork_state element defines the Wi-Fi network settings status.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - ssid  
      - oval-def:EntityStateStringType (0..1)  
      - The network's SSID.  
    * - bssid  
      - oval-def:EntityStateStringType (0..1)  
      - BSSID. The value is a string in the format of an Ethernet MAC address.  
    * - auth_algorithms  
      - android-def:EntityStateWifiAuthAlgorithmType (0..unbounded)  
      - The set of authentication protocols supported by this configuration.  
    * - group_ciphers  
      - android-def:EntityStateWifiGroupCipherType (0..unbounded)  
      - The set of group ciphers supported by this configuration.  
    * - key_management  
      - android-def:EntityStateWifiKeyMgmtType (0..unbounded)  
      - The set of key management protocols supported by this configuration.  
    * - pairwise_ciphers  
      - android-def:EntityStateWifiPairwiseCipherType (0..unbounded)  
      - The set of pairwise ciphers for WPA supported by this configuration.  
    * - protocols  
      - android-def:EntityStateWifiProtocolType (0..unbounded)  
      - The set of security protocols supported by this configuration.  
    * - hidden_ssid  
      - oval-def:EntityStateBoolType (0..1)  
      - This is a network that does not broadcast its SSID.  
    * - network_id  
      - oval-def:EntityStateIntType (0..1)  
      - The ID number that the supplicant uses to identify this network configuration entry.  
    * - priority  
      - oval-def:EntityStateIntType (0..1)  
      - Priority determines the preference given to a network by wpa_supplicant when choosing an access point with which to associate.  
    * - current_status  
      - android-def:EntityStateWifiCurrentStatusType (0..1)  
      - The current status of this network configuration entry.  
  
______________
  
.. _telephony_test:  
  
< telephony_test >  
---------------------------------------------------------
The telephony_test is used to check Telephony characteristics of system.

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
  
.. _telephony_object:  
  
< telephony_object >  
---------------------------------------------------------
The telephony_object element is used by a telephony test to define those objects to evaluate based on a telephony manager state.

**Extends:** oval-def:ObjectType

.. _telephony_state:  
  
< telephony_state >  
---------------------------------------------------------
The telephony_state element contains a single entity that is used to check the status of the telephony manager state.

**Extends:** oval-def:StateType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - network_type  
      - android-def:EntityStateNetworkType (0..1)  
      - Value indicates the radio technology(network type) currently in use, for data transmission.  
    * - sim_country_iso  
      - oval-def:EntityStateStringType (0..1)  
      - The ISO country code equivalent for the SIM provider's country code.  
    * - sim_operator_code  
      - oval-def:EntityStateStringType (0..1)  
      - The MCC+MNC(mobile country code + mobile network code) of the provider of the SIM. It contains 5 or 6 decimal digits.  
  
.. _EntityStateEncryptionStatusType:  
  
== EntityStateEncryptionStatusType ==  
---------------------------------------------------------
The EntityStateEncryptionStatusType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateKeyguardDisabledFeaturesType:  
  
== EntityStateKeyguardDisabledFeaturesType ==  
---------------------------------------------------------
The EntityStateKeyguardDisabledFeaturesType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateNetworkType:  
  
== EntityStateNetworkType ==  
---------------------------------------------------------
The EntityStateNetworkType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStatePasswordQualityType:  
  
== EntityStatePasswordQualityType ==  
---------------------------------------------------------
The EntityStatePasswordQualityType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateWifiAuthAlgorithmType:  
  
== EntityStateWifiAuthAlgorithmType ==  
---------------------------------------------------------
The EntityStateWifiAuthAlgorithmType complex type restricts a string value to a specific set of values that name WiFi authentication algorithms. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateWifiCurrentStatusType:  
  
== EntityStateWifiCurrentStatusType ==  
---------------------------------------------------------
The EntityStateWifiCurrentStatusType complex type restricts a string value to a specific set of values. The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateWifiGroupCipherType:  
  
== EntityStateWifiGroupCipherType ==  
---------------------------------------------------------
The EntityStateWifiGroupCipherType complex type restricts a string value to a specific set of values that name Wi-Fi group ciphers (android.net.wifi.WifiConfiguration.GroupCipher). The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateWifiKeyMgmtType:  
  
== EntityStateWifiKeyMgmtType ==  
---------------------------------------------------------
The EntityStateWifiKeyMgmtType complex type restricts a string value to a specific set of values that name Wi-Fi key management schemes (from android.net.wifi.WifiConfiguration.KeyMgmt). The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateWifiPairwiseCipherType:  
  
== EntityStateWifiPairwiseCipherType ==  
---------------------------------------------------------
The EntityStateWifiPairwiseCipherType complex type restricts a string value to a specific set of values that name Wi-Fi recognized pairwise ciphers for WPA (from android.net.wifi.WifiConfiguration.PairwiseCipher). The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

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
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
.. _EntityStateWifiProtocolType:  
  
== EntityStateWifiProtocolType ==  
---------------------------------------------------------
The EntityStateWifiProtocolType complex type restricts a string value to a specific set of values that name Wi-Fi recognized security protocols (from android.net.wifi.WifiConfiguration.Protocol). The empty string is also allowed to support empty element associated with variable references. Note that when using pattern matches and variables care must be taken to ensure that the regular expression and variable values align with the enumerated values.

**Restricts:** oval-def:EntityStateStringType

.. list-table:: Enumeration Values  
    :header-rows: 1  
  
    * - Value  
      - Description  
    * - RSN  
      - | WPA2/IEEE 802.11i  
    * - WPA  
      - | WPA/IEEE 802.11i/D3.0  
    * -   
      - | The empty string value is permitted here to allow for empty elements associated with variable references.  
  
