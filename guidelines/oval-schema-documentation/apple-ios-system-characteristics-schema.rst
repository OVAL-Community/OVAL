Open Vulnerability and Assessment Language: Apple iOS System Characteristics  
=========================================================
* Schema: Apple iOS System Characteristics  
* Version: 5.11.1:1.2  
* Release Date: 11/30/2016 09:00:00 AM

The following is a description of the elements, types, and attributes that compose the Apple iOS specific system characteristic items found in Open Vulnerability and Assessment Language (OVAL). Each item is an extension of the standard item element defined in the Core System Characteristic Schema. Through extension, each item inherits a set of elements and attributes that are shared amongst all OVAL Items. Each item is described in detail and should provide the information necessary to understand what each element and attribute represents. This document is intended for developers and assumes some familiarity with XML. A high level description of the interaction between the different tests and their relationship to the Core System Characteristic Schema is not outlined here.

The OVAL Schema is maintained by the OVAL Community. For more information, including how to get involved in the project and how to submit change requests, please visit the OVAL website at http://oval.cisecurity.org.

See public documentation at https://developer.apple.com/library/ios/featuredarticles/iPhoneConfigurationProfileRef/Introduction/Introduction.html

Item Listing  
---------------------------------------------------------
* :ref:`globalrestrictions_item`  
* :ref:`passcodepolicy_item`  
* :ref:`profile_item`  
  
______________
  
.. _globalrestrictions_item:  
  
< globalrestrictions_item >  
---------------------------------------------------------
Information on global restrictions in place on the device derived from Apple's public Configuration Profile reference documentation

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - allow_account_modification  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Supervised only. If set to false, account modification is disabled. Available only in iOS 7.0 and later.  
    * - allow_airdrop  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Supervised only. If set to false, AirDrop is disabled. Available only in iOS 7.0 and later.  
    * - allow_app_cellular_data_modification  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Supervised only. If set to false, changes to cellular data usage for apps are disabled. Available only in iOS 7.0 and later.  
    * - allow_app_installation  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, the App Store is disabled and its icon is removed from the Home screen. Users are unable to install or update their applications.  
    * - allow_assistant  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, disables Siri. Defaults to true.  
    * - allow_assistant_user_generated_content  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Supervised only. When false, prevents Siri from querying user-generated content from the web. Available only in iOS 7.0 and later.  
    * - allow_assistant_while_locked  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, the user is unable to use Siri when the device is locked. Defaults to true. This restriction is ignored if the device does not have a passcode set. Available only in iOS 5.1 and later.  
    * - allow_bookstore  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Supervised only. If set to false, iBookstore will be disabled. This will default to true. Available in iOS 6.0 and later.  
    * - allow_bookstore_erotica  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Supervised only prior to iOS 6.1. If set to false, the user will not be able to download media from the iBookstore that has been tagged as erotica. This will default to true. Available in iOS 6.0 and later.  
    * - allow_camera  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, the camera is completely disabled and its icon is removed from the Home screen. Users are unable to take photographs.  
    * - allow_cloud_backup  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, disables backing up the device to iCloud. Available in iOS 5.0 and later.  
    * - allow_cloud_document_sync  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, disables document and key-value syncing to iCloud. Available in iOS 5.0 and later.  
    * - allow_cloud_keychain_sync  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If false, disables keychain syncing to iCloud. Default is true. Available only in iOS 7.0 and later.  
    * - allow_diagnostic_submission  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, this prevents the device from automatically submitting diagnostic reports to Apple. Defaults to true. Available only in iOS 6.0 and later.  
    * - allow_explicit_content  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, explicit music or video content purchased from the iTunes Store is hidden. Explicit content is marked as such by content providers, such as record labels, when sold through the iTunes Store.  
    * - allow_find_my_friends_modification  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Supervised only. If set to false, changes to Find My Friends are disabled. Available only in iOS 7.0 and later.  
    * - allow_fingerprint_for_unlock  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If false, prevents Touch ID from unlocking a device. Available in iOS 7 and later.  
    * - allow_game_center  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Supervised only. When false, Game Center is disabled and its icon is removed from the Home screen. Default is true. Available only in iOS 6.0 and later.  
    * - allow_host_pairing  
      - oval-sc:EntityItemBoolType (0..1)  
      - Supervised only. If set to false, host pairing is disabled with the exception of the supervision host. If no supervision host certificate has been configured, all pairing is disabled. Available only in iOS 7.0 and later.  
    * - allow_lock_screen_control_center  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If false, prevents Control Center from appearing on the Lock screen. Available in iOS 7 and later.  
    * - allow_lock_screen_notifications_view  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If set to false, the Notifications view in Notification Center on the lock screen is disabled. Available only in iOS 7.0 and later.  
    * - allow_lock_screen_today_view  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If set to false, the Today view in Notification Center on the lock screen is disabled. Available only in iOS 7.0 and later.  
    * - allow_open_from_managed_to_unmanaged  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If false, documents in managed apps and accounts only open in other managed apps and accounts. Default is true. Available only in iOS 7.0 and later.  
    * - allow_open_from_unmanaged_to_managed  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If set to false, documents in unmanaged apps and accounts will only open in other unmanaged apps and accounts. Default is true. Available only in iOS 7.0 and later.  
    * - allow_ota_pki_updates  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If false, over-the-air PKI updates are disabled. Default is true. Available only in iOS 7.0 and later.  
    * - allow_passbook_while_locked  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If set to false, Passbook notifications will not be shown on the lock screen. This will default to true. Available in iOS 6.0 and later.  
    * - allow_photo_stream  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, disables Photo Stream. Available in iOS 5.0 and later.  
    * - allow_safari  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, the Safari web browser application is disabled and its icon removed from the Home screen. This also prevents users from opening web clips.  
    * - allow_screen_shot  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, users are unable to save a screenshot of the display.  
    * - allow_shared_stream  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If set to false, Shared Photo Stream will be disabled. This will default to true. Available in iOS 6.0 and later.  
    * - allow_ui_configuration_profile_installation  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Supervised only. If set to false, the user is prohibited from installing configuration profiles and certificates interactively. This will default to true. Available in iOS 6.0 and later.  
    * - allow_untrusted_tls_prompt  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, automatically rejects untrusted HTTPS certificates without prompting the user. Available in iOS 5.0 and later.  
    * - allow_voice_dialing  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, disables voice dialing.  
    * - allow_youtube  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, the YouTube application is disabled and its icon is removed from the Home screen. This key is ignored in iOS 6 and later because the YouTube app is not provided.  
    * - allow_itunes  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, the iTunes Music Store is disabled and its icon is removed from the Home screen. Users cannot preview, purchase, or download content.  
    * - autonomous_single_app_mode_permitted_appids  
      - oval-sc:EntityItemStringType (0..unbounded)  
      - Optional. If present, allows the identified apps to autonomously enter Single App Mode. Available only in iOS 7.0 and later.  
    * - force_encrypted_backup  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When true, encrypts all backups.  
    * - force_itunes_store_password_entry  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When true, forces user to enter their iTunes password for each transaction. Available in iOS 5.0 and later.  
    * - force_limit_ad_tracking  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If true, limits ad tracking. Default is false. Available only in iOS 7.0 and later.  
    * - safari_allow_auto_fill  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. When false, Safari auto-fill is disabled. Defaults to true.  
  
______________
  
.. _passcodepolicy_item:  
  
< passcodepolicy_item >  
---------------------------------------------------------
Passcode Policy Items from public Apple Configuration Profile Reference

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - allow_simple  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Default true. Determines whether a simple passcode is allowed. A simple passcode is defined as containing repeated characters, or increasing/decreasing characters (such as 123 or CBA). Setting this value to false is synonymous to setting minComplexChars to "1".  
    * - force_pin  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Default false. Determines whether the user is forced to set a PIN. Simply setting this value (and not others) forces the user to enter a passcode, without imposing a length or quality.  
    * - max_failed_attempts  
      - oval-sc:EntityItemIntType (0..1)  
      - Optional. Default 11. Allowed range [2...11]. Specifies the number of allowed failed attempts to enter the passcode at the device's lock screen. Once this number is exceeded, the device is locked and must be connected to its designated iTunes in order to be unlocked.  
    * - max_inactivity  
      - oval-sc:EntityItemIntType (0..1)  
      - Optional. Default Infinity. Specifies the number of minutes for which the device can be idle (without being unlocked by the user) before it gets locked by the system. Once this limit is reached, the device is locked and the passcode must be entered. In OS X, this will be translated to screensaver settings.  
    * - max_pin_age_in_days  
      - oval-sc:EntityItemIntType (0..1)  
      - Optional. Default Infinity. Specifies the number of days for which the passcode can remain unchanged. After this number of days, the user is forced to change the passcode before the device is unlocked.  
    * - min_complex_chars  
      - oval-sc:EntityItemIntType (0..1)  
      - Optional. Default 0. Specifies the minimum number of complex characters that a passcode must contain. A "complex" character is a character other than a number or a letter.  
    * - min_length  
      - oval-sc:EntityItemIntType (0..1)  
      - Optional. Default 0. Specifies the minimum overall length of the passcode. This parameter is independent of the also optional minComplexChars argument.  
    * - require_alphanumeric  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Default false. Specifies whether the user must enter alphabetic characters ("abcd"), or if numbers are sufficient.  
    * - pin_history  
      - oval-sc:EntityItemIntType (0..1)  
      - Optional. When the user changes the passcode, it has to be unique within the last N entries in the history. Minimum value is 1, maximum value is 50.  
    * - max_grace_period  
      - oval-sc:EntityItemIntType (0..1)  
      - Optional. The maximum grace period, in minutes, to unlock the phone without entering a passcode. Default is 0, that is no grace period, which requires a passcode immediately. In OS X, this will be translated to screensaver settings.  
  
______________
  
.. _profile_item:  
  
< profile_item >  
---------------------------------------------------------
Represents information about each configuration profile installed on the device.

**Extends:** oval-sc:ItemType

Child Elements  
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. list-table:: Elements  
    :header-rows: 1  
  
    * - Child Elements  
      - Type (MinOccurs..MaxOccurs)  
      - Desc.  
    * - has_removal_passcode  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Set to true if there is a removal passcode.  
    * - is_encrypted  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. Set to true if the profile is encrypted.  
    * - payload  
      - oval-sc:EntityItemRecordType (0..unbounded)  
      - Optional. Contains information about each payload inside the configuration profile.  
    * - description  
      - oval-sc:EntityItemStringType (0..1)  
      - Optional. A description of the profile, shown on the Detail screen for the profile.  
    * - display_name  
      - oval-sc:EntityItemStringType (0..1)  
      - Optional. A human-readable name for the profile. This value is displayed on the Detail screen. It does not have to be unique.  
    * - identifier  
      - oval-sc:EntityItemStringType (0..1)  
      - A reverse-DNS style identifier (com.example.myprofile, for example) that identifies the profile. This string is used to determine whether a new profile should replace an existing one or should be added.  
    * - organization  
      - oval-sc:EntityItemStringType (0..1)  
      - Optional. A human-readable string containing the name of the organization that provided the profile.  
    * - removal_disallowed  
      - oval-sc:EntityItemBoolType (0..1)  
      - Optional. If present and set to true, the user cannot delete the profile (unless the profile has a removal password and the user provides it).  
    * - uuid  
      - oval-sc:EntityItemStringType (0..1)  
      - A globally unique identifier for the payload. The actual content is unimportant, but it must be globally unique.  
    * - version  
      - oval-sc:EntityItemIntType (0..1)  
      - The version number of the profile format. This describes the version of the configuration profile as a whole, not of the individual profiles within it. Currently, this value should be 1.  
  
