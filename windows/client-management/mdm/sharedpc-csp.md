---
title: SharedPC CSP
description: Learn how the SharedPC configuration service provider is used to configure settings for Shared PC usage.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/23/2022
---

# SharedPC CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The SharedPC configuration service provider is used to configure settings for Shared PC usage.

The following example shows the SharedPC configuration service provider management objects in tree format as used by Open Mobile Alliance Device Management (OMA DM), OMA Client Provisioning, and Enterprise DM.
```
./Vendor/MSFT
SharedPC
----EnableSharedPCMode
----EnableSharedPCModeWithOneDriveSync
----SetEduPolicies
----SetPowerPolicies
----MaintenanceStartTime
----SignInOnResume
----SleepTimeout
----EnableAccountManager
----AccountModel
----DeletionPolicy
----DiskLevelDeletion
----DiskLevelCaching
----RestrictLocalStorage
----KioskModeAUMID
----KioskModeUserTileDisplayText
----InactiveThreshold
----MaxPageFileSizeMB
```
<a href="" id="--vendor-msft-sharedpc"></a>**./Vendor/MSFT/SharedPC**
The root node for the SharedPC configuration service provider.

The supported operation is Get.

<a href="" id="enablesharedpcmode"></a>**EnableSharedPCMode**
A boolean value that specifies whether Shared PC mode is enabled.

The supported operations are Add, Get, Replace, and Delete.

Setting this value to True triggers the action to configure a device to Shared PC mode.

The default value is Not Configured and SharedPC mode is not enabled.

<a href="" id="enablesharedpcmodewithonedrivesync"></a>**EnableSharedPCModeWithOneDriveSync**
Setting this node to true triggers the action to configure a device to Shared PC mode with OneDrive sync turned on.

The supported operations are Add, Get, Replace, and Delete.

The default value is false.

<a href="" id="setedupolicies"></a>**SetEduPolicies**
A boolean value that specifies whether the policies for education environment are enabled. Setting this value to true triggers the action to configure a device as education environment.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured.

<a href="" id="setpowerpolicies"></a>**SetPowerPolicies**
A boolean value that specifies that the power policies should be set when configuring SharedPC mode.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured and the effective power settings are determined by the OS's default power settings. Its value in the SharedPC provisioning package is True.

<a href="" id="maintenancestarttime"></a>**MaintenanceStartTime**
An integer value that specifies the daily start time of maintenance hour. Given in minutes from midnight. The range is 0-1440.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured and its value in the SharedPC provisioning package is 0 (12 AM).

<a href="" id="signinonresume"></a>**SignInOnResume**
A boolean value that, when set to True, requires sign in whenever the device wakes up from sleep mode.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured and its value in the SharedPC provisioning package is True.

<a href="" id="sleeptimeout"></a>**SleepTimeout**
The amount of time in seconds before the PC sleeps. 0 means the PC never sleeps. Default is 5 minutes.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured, and effective behavior is determined by the OS's default settings. Its value in SharedPC provisioning package is 300.

<a href="" id="enableaccountmanager"></a>**EnableAccountManager**
A boolean that enables the account manager for shared PC mode.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured and its value in the SharedPC provisioning package is True.

<a href="" id="accountmodel"></a>**AccountModel**
Configures which type of accounts are allowed to use the PC.

The supported operations are Add, Get, Replace, and Delete.

The following list shows the supported values:

- 0 (default) - Only guest accounts are allowed.
- 1 - Only domain-joined accounts are enabled.
- 2 - Domain-joined and guest accounts are allowed.

Its value in the SharedPC provisioning package is 1 or 2.

<a href="" id="deletionpolicy"></a>**DeletionPolicy**
Configures when accounts are deleted.

The supported operations are Add, Get, Replace, and Delete.

This is the list of supported values:

- 0 - Delete immediately.
- 1 - Delete at disk space threshold.
- 2 - Delete at disk space threshold and inactive threshold.

The default value is Not Configured. Its value in the SharedPC provisioning package is 1 or 2.

<a href="" id="diskleveldeletion"></a>**DiskLevelDeletion**
Sets the percentage of disk space remaining on a PC before cached accounts will be deleted to free disk space. Accounts that have been inactive the longest will be deleted first.

The default value is Not Configured. Its default value in the SharedPC provisioning package is 25.

For example, if the **DiskLevelCaching** number is set to 50 and the **DiskLevelDeletion** number is set to 25 (both default values). Accounts will be cached while the free disk space is above 25%. When the free disk space is less than 25% (the deletion number) during a daily maintenance period, accounts will be deleted (oldest last used first) when the system is idle until the free disk space is above 50% (the caching number). Accounts will be deleted immediately on signing out from an account if free space is under half of the deletion threshold and disk space is low, regardless of whether the PC is actively in use or not.

The supported operations are Add, Get, Replace, and Delete.

<a href="" id="disklevelcaching"></a>**DiskLevelCaching**
Sets the percentage of available disk space a PC should have before it stops deleting cached accounts.

The default value is Not Configured. The default value in the SharedPC provisioning package is 25.

For example, if the **DiskLevelCaching** number is set to 50 and the **DiskLevelDeletion** number is set to 25 (both default values). Accounts will be cached while the free disk space is above 25%. When the free disk space is less than 25% (the deletion number) during a maintenance period, accounts will be deleted (oldest last used first) until the free disk space is above 50% (the caching number). Accounts will be deleted immediately on signing out from an account if free space is under the deletion threshold and disk space is low, regardless whether the PC is actively in use or not.

The supported operations are Add, Get, Replace, and Delete.

<a href="" id="restrictlocalstorage"></a>**RestrictLocalStorage**
Restricts the user from using local storage.

The default value is Not Configured. Value type is bool. Supported operations are Add, Get, Replace, and Delete. Default in SharedPC provisioning package is False.

<a href="" id="kioskmodeaumid"></a>**KioskModeAUMID**
Specifies the AUMID of the app to use with assigned access.

- Value type is string.
- Supported operations are Add, Get, Replace, and Delete.

<a href="" id="kioskmodeusertiledisplaytext"></a>**KioskModeUserTileDisplayText**
Specifies the display text for the account shown on the sign-in screen that launches the app specified by KioskModeAUMID.

Value type is string. Supported operations are Add, Get, Replace, and Delete.

<a href="" id="inactivethreshold"></a>**InactiveThreshold**
Accounts will start being deleted when they haven't been logged on during the specified period, given as number of days.

- The default value is Not Configured.
- Value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

The default in the SharedPC provisioning package is 30.

<a href="" id="maxpagefilesizemb"></a>**MaxPageFileSizeMB**
Maximum size of the paging file in MB. Applies only to systems with less than 32-GB storage and at least 3 GB of RAM.

- Default value is Not Configured.
- Value type is integer.
- Supported operations are Add, Get, Replace, and Delete.

The default in the SharedPC provisioning package is 1024.

## Related topics

[Configuration service provider reference](index.yml)
