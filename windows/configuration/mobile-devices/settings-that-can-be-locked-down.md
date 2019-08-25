---
title: Settings and quick actions that can be locked down in Windows 10 Mobile (Windows 10)
description: This topic lists the settings and quick actions that can be locked down in Windows 10 Mobile.
ms.assetid: 69E2F202-D32B-4FAC-A83D-C3051DF02185
ms.reviewer: 
manager: dansimp
keywords: ["lockdown"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: mobile
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
---

# Settings and quick actions that can be locked down in Windows 10 Mobile


**Applies to**

-   Windows 10 Mobile

This topic lists the settings and quick actions that can be locked down in Windows 10 Mobile.

## Settings lockdown in Windows 10, version 1703

In earlier versions of Windows 10, you used the page name to define allowed settings. Starting in Windows 10, version 1703, you use the settings URI.

For example, in place of **SettingsPageDisplay**, you would use **ms-settings:display**.

See the [ms-settings: URI scheme reference](https://docs.microsoft.com/windows/uwp/launch-resume/launch-settings-app#ms-settings-uri-scheme-reference) to find the URI for each Settings page.

## Settings lockdown in Windows 10, version 1607 and earlier


You can use Lockdown.xml to configure lockdown settings.

The following table lists the settings pages and page groups. Use the page name in the Settings section of Lockdown.xml. The Settings section contains an allow list of pages in the Settings app.

<table>

<thead>
<tr class="header">
<th align="left">Main menu</th>
<th align="left">Sub-menu</th>
<th align="left">Page name</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">System</td>
<td align="left"></td>
<td align="left">SettingsPageGroupPCSystem</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Display</td>
<td align="left">SettingsPageDisplay</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Notifications & actions</td>
<td align="left">SettingsPageAppsNotifications</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Phone</td>
<td align="left">SettingsPageCalls</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Messaging</td>
<td align="left">SettingsPageMessaging</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Battery</td>
<td align="left">SettingsPageBatterySaver</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Apps for websites</td>
<td align="left">SettingsPageAppsForWebsites</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Storage</td>
<td align="left">SettingsPageStorageSenseStorageOverview</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Driving mode</td>
<td align="left">SettingsPageDrivingMode</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Offline maps</td>
<td align="left">SettingsPageMaps</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">About</td>
<td align="left">SettingsPagePCSystemInfo</td>
</tr>
<tr class="even">
<td align="left">Devices</td>
<td align="left"></td>
<td align="left">SettingsPageGroupDevices</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Default camera</td>
<td align="left">SettingsPagePhotos</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Bluetooth</td>
<td align="left">SettingsPagePCSystemBluetooth</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">NFC</td>
<td align="left">SettingsPagePhoneNFC</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Mouse</td>
<td align="left">SettingsPageMouseTouchpad</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">USB</td>
<td align="left">SettingsPageUsb</td>
</tr>
<tr class="even">
<td align="left">Network and wireless</td>
<td align="left"></td>
<td align="left">SettingsPageGroupNetwork</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Cellular & SIM</td>
<td align="left">SettingsPageNetworkCellular</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Wi-Fi</td>
<td align="left">SettingsPageNetworkWiFi</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Airplane mode</td>
<td align="left">SettingsPageNetworkAirplaneMode</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Data usage</td>
<td align="left">SettingsPageDataSenseOverview</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Mobile hotspot</td>
<td align="left">SettingsPageNetworkMobileHotspot</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">VPN</td>
<td align="left">SettingsPageNetworkVPN</td>
</tr>
<tr class="odd">
<td align="left">Personalization</td>
<td align="left"></td>
<td align="left">SettingsPageGroupPersonalization</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Start</td>
<td align="left">SettingsPageBackGround</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Colors</td>
<td align="left">SettingsPageColors</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Sounds</td>
<td align="left">SettingsPageSounds</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Lock screen</td>
<td align="left">SettingsPageLockscreen</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Glance screen</td>
<td align="left">SettingsPageGlance</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Navigation bar</td>
<td align="left">SettingsNagivationBar</td>
</tr>
<tr class="odd">
<td align="left">Accounts</td>
<td align="left"></td>
<td align="left">SettingsPageGroupAccounts</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Your info</td>
<td align="left">SettingsPageAccountsPicture</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Sign-in options</td>
<td align="left">SettingsPageAccountsSignInOptions</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Email & app accounts</td>
<td align="left">SettingsPageAccountsEmailApp</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Access work or school</td>
<td align="left">SettingsPageWorkAccess</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Sync your settings</td>
<td align="left">SettingsPageAccountsSync</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left"><p>Apps corner</p>
<p>(disabled in Assigned Access)</p></td>
<td align="left">SettingsPageAppsCorner</td>
</tr>
<tr class="odd">
<td align="left">Time & language</td>
<td align="left"></td>
<td align="left">SettingsPageGroupTimeRegion</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Date & time</td>
<td align="left">SettingsPageTimeRegionDateTime</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Language</td>
<td align="left">SettingsPageTimeLanguage</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Region</td>
<td align="left">SettingsPageTimeRegion</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Keyboard</td>
<td align="left">SettingsPageKeyboard</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Speech</td>
<td align="left">SettingsPageSpeech</td>
</tr>
<tr class="odd">
<td align="left">Ease of access</td>
<td align="left"></td>
<td align="left">SettingsPageGroupEaseOfAccess</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Narrator</td>
<td align="left">SettingsPageEaseOfAccessNarrator</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Magnifier</td>
<td align="left">SettingsPageEaseOfAccessMagnifier</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">High contrast</td>
<td align="left">SettingsPageEaseOfAccessHighContrast</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Closed captions</td>
<td align="left">SettingsPageEaseOfAccessClosedCaptioning</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">More options</td>
<td align="left">SettingsPageEaseOfAccessMoreOptions</td>
</tr>
<tr class="odd">
<td align="left">Privacy</td>
<td align="left"></td>
<td align="left">SettingsPageGroupPrivacy</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Location</td>
<td align="left">SettingsPagePrivacyLocation</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Camera</td>
<td align="left">SettingsPagePrivacyWebcam</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Microphone</td>
<td align="left">SettingsPagePrivacyMicrophone</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Motion</td>
<td align="left">SettingsPagePrivacyMotionData</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Notifications</td>
<td align="left">SettingsPagePrivacyNotifications</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Speech. inking, & typing</td>
<td align="left">SettingsPagePrivacyPersonalization</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Account info</td>
<td align="left">SettingsPagePrivacyAccountInfo</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Contacts</td>
<td align="left">SettingsPagePrivacyContacts</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Calendar</td>
<td align="left">SettingsPagePrivacyCalendar</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Phone calls</td>
<td align="left">SettingsPagePrivacyPhoneCall</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Call history</td>
<td align="left">SettingsPagePrivacyCallHistory</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Email</td>
<td align="left">SettingsPagePrivacyEmail</td>
</tr><tr class="even">
<td align="left"></td>
<td align="left">Messaging</td>
<td align="left">SettingsPagePrivacyMessaging</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Radios</td>
<td align="left">SettingsPagePrivacyRadios</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Continue App Experiences</td>
<td align="left">SettingsPagePrivacyCDP</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Background apps</td>
<td align="left">SettingsPagePrivacyBackgroundApps</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Accessory apps</td>
<td align="left">SettingsPageAccessories</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Advertising ID</td>
<td align="left">SettingsPagePrivacyAdvertisingId</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Other devices</td>
<td align="left">SettingsPagePrivacyCustomPeripherals</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Feedback and diagnostics</td>
<td align="left">SettingsPagePrivacySIUFSettings</td>
</tr>
<tr class="odd">
<td align="left">Update and security</td>
<td align="left"></td>
<td align="left">SettingsPageGroupRestore</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Phone update</td>
<td align="left">SettingsPageRestoreMusUpdate</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Windows Insider Program</td>
<td align="left">SettingsPageFlights</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Device encryption</td>
<td align="left">SettingsPageGroupPCSystemDeviceEncryption</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Backup</td>
<td align="left">SettingsPageRestoreOneBackup</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">Find my phone</td>
<td align="left">SettingsPageFindMyDevice</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">For developers</td>
<td align="left">SettingsPageSystemDeveloperOptions</td>
</tr>
<tr class="even">
<td align="left">OEM</td>
<td align="left"></td>
<td align="left">SettingsPageGroupExtensibility</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Extensibility</td>
<td align="left">SettingsPageExtensibility</td>
</tr>
</tbody>
</table>

 

## Quick actions lockdown


Quick action buttons are locked down in exactly the same way as Settings pages/groups. By default they are always conditional.

You can specify the quick actions as follows:

```xml
<Settings>
    <System name="QuickActions_Launcher_AllSettings" />
    <System name="QuickActions_Launcher_DeviceDiscovery" />
    <System name="SystemSettings_BatterySaver_LandingPage_OverrideControl" />
    <System name="SystemSettings_Device_BluetoothQuickAction"/>
    <System name="SystemSettings_Flashlight_Toggle"/>
    <System name="SystemSettings_Launcher_QuickNote" />
    <System name="SystemSettings_Network_VPN_QuickAction"/>
    <System name="SystemSettings_Privacy_LocationEnabledUserPhone"/>
    <System name="SystemSettings_QuickAction_AirplaneMode"/>
    <System name="SystemSettings_QuickAction_Camera" />
    <System name="SystemSettings_QuickAction_CellularData"/>
    <System name="SystemSettings_QuickAction_InternetSharing"/>
    <System name="SystemSettings_QuickAction_QuietHours" />
    <System name="SystemSettings_QuickAction_WiFi"/>
    <System name="SystemSettings_System_Display_Internal_Rotation"/>
    <System name="SystemSettings_System_Display_QuickAction_Brightness"/>
</Settings> 
```



 

## Related topics


[Configure Windows 10 Mobile using Lockdown XML](lockdown-xml.md)

[Product IDs in Windows 10 Mobile](product-ids-in-windows-10-mobile.md)

 

 





