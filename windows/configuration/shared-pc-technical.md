---
title: Shared PC technical reference
description: List of policies and settings applied by the Shared PC options.
ms.date: 10/15/2022
ms.prod: windows
ms.technology: windows
ms.topic: reference
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
ms.reviewer:
manager: aaroncz
ms.collection: 
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---

# Shared PC technical reference

## Local group policy settings list

The different options offered by Shared PC configure the local group policy object (LGPO) with different settings. The following tables list the settings configured by each Shared PC option.

## EnableSharedPCMode and EnableSharedPCModeWithOneDriveSync

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
| Windows Components/Data Collection and Preview Builds/Do not show feedback notifications | Enabled |
| Windows Components/Data Collection and Preview Builds/Toggle user control over Insider builds | Disabled |
| Windows Components/File Explorer/Show lock in the user tile menu | Disabled |
| Windows Components/File History/Turn off File History | Enabled |
| Windows Components/OneDrive/Prevent the usage of OneDrive for file storage | Enabled |
| Windows Components/Windows Hello for Business/Use biometrics | Disabled |
| Windows Components/Windows Hello for Business/Use Windows Hello for Business | Disabled |
| Windows Components/Windows Logon Options/Sign-in and lock last interactive user automatically after a restart | Disabled |

| Extra registry setting  | Status |
|-------------------------------------------------------------------------------------------------------------------|----------|
| Software\Policies\Microsoft\PassportForWork\Remote\Enabled (Phone sign-in/Use phone sign-in) | 0 |
| Software\Policies\Microsoft\Windows\PreviewBuilds\EnableConfigFlighting (Disable pre-release features or settings) | 0 |
| Software\Policies\Microsoft\Windows\PreviewBuilds\AllowBuildPreview () | 0 |

## SetEDUPolicy

SetEDUPolicy configures the following settings:

| LGPO setting | Status |
|--|--|
| System/User Profiles/Turn off the advertising ID | Enabled |
| Windows Components/Cloud Content/Do not show Windows tips | Enabled |
| Windows Components/Cloud Content/Turn off Microsoft consumer experiences | Enabled |

## SetPowerPolicies

SetPowerPolicies configures the following settings:

| LGPO setting | Status |
|--|--|
| System/Power Management/Button Settings/Select the lid switch action (on battery) | Enabled --> Sleep |
| System/Power Management/Button Settings/Select the lid switch action (plugged in) | Enabled --> Sleep |
| System/Power Management/Button Settings/Select the Power button action (on battery) | Enabled --> Sleep |
| System/Power Management/Button Settings/Select the Power button action (plugged in) | Enabled --> Sleep |
| System/Power Management/Button Settings/Select the Sleep button action (on battery) | Enabled --> Sleep |
| System/Power Management/Button Settings/Select the Sleep button action (plugged in) | Enabled --> Sleep |
| System/Power Management/Energy Saver Settings/Energy Saver Battery Threshold (on battery) | Enabled --> 70% |
| System/Power Management/Sleep Settings/Allow standby states (S1-S3) when sleeping (on battery) | Enabled |
| System/Power Management/Sleep Settings/Allow standby states (S1-S3) when sleeping (plugged in) | Enabled |
| System/Power Management/Sleep Settings/Specify the system hibernate timeout (on battery) | 0 (Disables hibernation) |
| System/Power Management/Sleep Settings/Specify the system hibernate timeout (plugged in) | 0 (Disables hibernation) |
| System/Power Management/Sleep Settings/Turn off hybrid sleep (on battery) | Enabled |
| System/Power Management/Sleep Settings/Turn off hybrid sleep (plugged in) | Enabled |

## MaintenanceStartTime

| Policy setting | Status |
|--------------------------------------------------------------------------------------|--------------------------------|
| Windows Components/Maintenance Scheduler/Automatic Maintenance Activation Boundary | 2000-01-01T00:00:00 (midnight) |
| Windows Components/Maintenance Scheduler/Automatic Maintenance Random Delay  | Enabled PT2H |
| Windows Components/Maintenance Scheduler/Automatic Maintenance WakeUp Policy | Enabled  |

## SignInOnResume

SignInOnResume configures the following settings:

| LGPO setting | Status |
|--|--|
| System/Logon/Allow users to select when a password is required when resuming from connected standby | Disabled |
| System/Power Management/Sleep Settings/Require a password when a computer wakes (on battery) | Enabled |
| System/Power Management/Sleep Settings/Require a password when a computer wakes (plugged in) | Enabled |



## Enableaccountmanager

Enables scheduled task:
\Microsoft\Windows\SharedPC\,"Account Cleanup"

[SharedModeSettings.ShouldAvoidLocalStorage Property](/uwp/api/windows.system.profile.sharedmodesettings.shouldavoidlocalstorage)

Account Model has been set to not configured --> no GPO changes --> removes Guest from login screen
Restrict Local Storage has been set to not configured --> no GPO changes
removed all diskleveldeletion, threshold --> no GPO changes









##### to check

### Windows Settings>Security Settings>Local Policies>Security Options

|Policy Name| Value|When set?|
|--- |--- |--- |
|Interactive logon: Do not display last user name|Enabled, Disabled when account model is only guest|Always|
|Interactive logon: Sign-in last interactive user automatically after a system-initiated restart|Disabled |Always|
|Shutdown: Allow system to be shut down without having to log on|Disabled|Always|
|User Account Control: Behavior of the elevation prompt for standard users|Auto deny|Always|
