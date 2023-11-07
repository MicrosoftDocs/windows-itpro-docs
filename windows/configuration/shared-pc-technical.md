---
title: Shared PC technical reference
description: List of policies and settings applied by the Shared PC options.
ms.date: 11/06/2023
ms.prod: windows-client
ms.technology: itpro-configure
ms.topic: reference
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
ms.reviewer: 
manager: aaroncz
ms.collection: tier2
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows 11 SE</b>
---

# Shared PC technical reference

This article details the settings configured by the different options of Shared PC.

> [!IMPORTANT]
> The behavior of some options have changed over time. This article describes the current settings applied by Shared PC.

## EnableSharedPCMode and EnableSharedPCModeWithOneDriveSync

EnableSharedPCMode and EnableSharedPCModeWithOneDriveSync are the two policies that enable **Shared PC mode**. The only difference between the two is that EnableSharedPCModeWithOneDriveSync enables OneDrive synchronization, while EnableSharedPCMode disables it.

When enabling Shared PC mode, the following settings in the local GPO are configured:

| Policy setting | Status |
|--|--|
| Security Settings/Local Policies/Security Options/User Account Control: Behavior of elevation prompt for standard user | Automatically deny elevation requests |
| Security Settings/Local Policies/Security Options/Interactive logon: Don't display last signed-in | Enabled |
| Control Panel/Personalization/Prevent enabling lock screen slide show | Enabled |
| System/Logon/Block user from showing account details on sign-in | Enabled |
| System/Logon/Enumerate local users on domain-joined computers | Disabled |
| System/Logon/Hide entry points for Fast User Switching | Enabled |
| System/Logon/Show first sign-in animation | Disabled |
| System/Logon/Turn off app notifications on the lock screen | Enabled |
| System/Logon/Turn off picture password sign-in | Enabled |
| System/Logon/Turn on convenience PIN sign-in | Disabled |
| Windows Components/App Package Deployment/Allow a Windows app to share application data between users | Enabled |
| Windows Components/Biometrics/Allow the use of biometrics | Disabled |
| Windows Components/Biometrics/Allow users to log on using biometrics | Disabled |
| Windows Components/Biometrics/Allow domain users to log on using biometrics | Disabled |
| Windows Components/Data Collection and Preview Builds/Disable pre-release features or settings | Disabled (all experimentations are turned off) |
| Windows Components/Data Collection and Preview Builds/Do not show feedback notifications | Enabled |
| Windows Components/Data Collection and Preview Builds/Toggle user control over Insider builds | Disabled |
| Windows Components/File Explorer/Show lock in the user tile menu | Disabled |
| Windows Components/File History/Turn off File History | Enabled |
| Windows Components/OneDrive/Prevent the usage of OneDrive for file storage |**Enabled** if using EnableSharedPCMode<br><br>**Disabled** is using EnableSharedPCModeWithOneDriveSync |
| Windows Components/Windows Hello for Business/Use biometrics | Disabled |
| Windows Components/Windows Hello for Business/Use Windows Hello for Business | Disabled |
| Windows Components/Windows Logon Options/Sign-in and lock last interactive user automatically after a restart | Disabled |

| Extra registry setting  | Status |
|-------------------------------------------------------------------------------------------------------------------|----------|
| Software\Policies\Microsoft\PassportForWork\Remote\Enabled (Phone sign-in/Use phone sign-in) | 0 |
| Software\Policies\Microsoft\Windows\PreviewBuilds\AllowBuildPreview () | 0 |

## SetEDUPolicy

By enabling SetEDUPolicy, the following settings in the local GPO are configured:

| Policy setting | Status |
|--|--|
| System/User Profiles/Turn off the advertising ID | Enabled |
| Windows Components/Cloud Content/Do not show Windows tips | Enabled |
| Windows Components/Cloud Content/Turn off Microsoft consumer experiences | Enabled |

## SetPowerPolicies

By enabling SetPowerPolicies, the following settings in the local GPO are configured:

| Policy setting | Status|
|--|--|
| System/Power Management/Button Settings/Select the lid switch action (on battery) | Enabled > Sleep |
| System/Power Management/Button Settings/Select the lid switch action (plugged in) | Enabled > Sleep |
| System/Power Management/Button Settings/Select the Power button action (on battery) | Enabled > Sleep |
| System/Power Management/Button Settings/Select the Power button action (plugged in) | Enabled > Sleep |
| System/Power Management/Button Settings/Select the Sleep button action (on battery) | Enabled > Sleep |
| System/Power Management/Button Settings/Select the Sleep button action (plugged in) | Enabled > Sleep |
| System/Power Management/Energy Saver Settings/Energy Saver Battery Threshold (on battery) | Enabled > 70% |
| System/Power Management/Sleep Settings/Allow standby states (S1-S3) when sleeping (on battery) | Enabled |
| System/Power Management/Sleep Settings/Allow standby states (S1-S3) when sleeping (plugged in) | Enabled |
| System/Power Management/Sleep Settings/Specify the system hibernate timeout (on battery) | 0 (Hibernation disabled) |
| System/Power Management/Sleep Settings/Specify the system hibernate timeout (plugged in) | 0 (Hibernation disabled) |
| System/Power Management/Sleep Settings/Turn off hybrid sleep (on battery) | Enabled |
| System/Power Management/Sleep Settings/Turn off hybrid sleep (plugged in) | Enabled |

## MaintenanceStartTime

By enabling MaintenanceStartTime, the following settings in the local GPO are configured:

| Policy setting | Status|
|--------------------------------------------------------------------------------------|--------------------------------|
| Windows Components/Maintenance Scheduler/Automatic Maintenance Activation Boundary | 2000-01-01T00:00:00 (midnight) |
| Windows Components/Maintenance Scheduler/Automatic Maintenance Random Delay  | Enabled PT2H (2 hours) |
| Windows Components/Maintenance Scheduler/Automatic Maintenance WakeUp Policy | Enabled  |

## SignInOnResume

By enabling SignInOnResume, the following settings in the local GPO are configured:

| Policy setting | Status|
|--|--|
| System/Logon/Allow users to select when a password is required when resuming from connected standby | Disabled |
| System/Power Management/Sleep Settings/Require a password when a computer wakes (on battery) | Enabled |
| System/Power Management/Sleep Settings/Require a password when a computer wakes (plugged in) | Enabled |

## EnableAccountManager

By enabling Enableaccountmanager, the following schedule task is turned on: `\Microsoft\Windows\SharedPC\Account Cleanup`.

## Shared PC APIs and app behavior

Applications can take advantage of Shared PC mode with the following three APIs:  

- [**IsEnabled**][API-1] - This API informs applications when the device is configured for shared use scenarios. For example, an app might only download content on demand on a device in shared PC mode, or might skip first run experiences.
- [**ShouldAvoidLocalStorage**][API-2] - This API informs applications when the PC has been configured to not allow the user to save to the local storage of the PC. Instead, only cloud save locations should be offered by the app or saved automatically by the app.  
- [**IsEducationEnvironment**][API-3] - This API informs applications when the PC is used in an education environment. Apps may want to handle diagnostic data differently or hide advertising functionality.  

-----------

[API-1]: /uwp/api/windows.system.profile.sharedmodesettings.isenabled
[API-2]: /uwp/api/windows.system.profile.sharedmodesettings.shouldavoidlocalstorage
[API-3]: /uwp/api/windows.system.profile.educationsettings