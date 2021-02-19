---
title: SharedPC (Windows 10)
description: This section describes the SharedPC settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 10/16/2017
ms.reviewer: 
manager: dansimp
---

# SharedPC (Windows Configuration Designer reference)

Use SharedPC settings to optimize Windows 10 for shared use scenarios, such as touchdown spaces in an enterprise and temporary customer use in retail. 


## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings | X  |  |  |  |  |

## AccountManagement

Use these settings to configure settings for accounts allowed on the shared PC.

| Setting | Value | Description |
| --- | --- | --- |
| AccountModel  | - Only guest</br>- Domain-joined only</br>- Domain-joined and guest  | This option controls how users can sign-in on the PC. Choosing domain-joined will enable any user in the domain to sign-in. Specifying the guest option will add the Guest option to the sign-in screen and enable anonymous guest access to the PC. </br></br>- Only guest allows anyone to use the PC as a local standard (non-admin) account.</br>- Domain-joined only allows users to sign in with an Active Directory or Azure AD account.</br>- Domain-joined and guest allows users to sign in with an Active Directory, Azure AD, or local standard account.  |
| DeletionPolicy  | - Delete immediately </br>- Delete at disk space threshold</br>- Delete at disk space threshold and inactive threshold | - Delete immediately will delete the account on sign-out.</br>- Delete at disk space threshold will start deleting accounts when available disk space falls below the threshold you set for DiskLevelDeletion, and it will stop deleting accounts when the available disk space reaches the threshold you set for DiskLevelCaching. Accounts are deleted in order of oldest accessed to most recently accessed.</br>- Delete at disk space threshold and inactive threshold will apply the same disk space checks as noted above, but also delete accounts if they have not signed in within the number of days specified by InactiveThreshold  |
| DiskLevelCaching  | A number between 0 and 100  | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account caching.  |
| DiskLevelDeletion  | A number between 0 and 100  | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account deletion.  |
| EnableAccountManager  | True or false  | Set as **True** to enable automatic account management. If this is not set to true, no automatic account management will be done.  |
| InactiveThreshold  | Number  | If you set **DeletionPolicy** to **Delete at disk space threshold and inactive threshold**, set the number of days after which an account that has not signed in will be deleted.  |
| KioskModeAUMID  | String  | Set an Application User Model ID (AUMID) to enable the kiosk account on the sign-in screen. A new account will be created and will use assigned access to only run the app specified by the AUMID. Note that the app must be installed on the PC. Set the name of the account using **KioskModeUserTileDisplayText**, or a default name will be used. [Find the Application User Model ID of an installed app](https://msdn.microsoft.com/library/dn449300.aspx)  |
| KioskModeUserTileDisplayText  | String  | Sets the display text on the kiosk account if **KioskModeAUMID** has been set.  |


## EnableSharedPCMode

Set as **True**. If this is not set to **True**, shared PC mode is not turned on and none of the other settings apply. This setting controls this API: [IsEnabled](https://docs.microsoft.com/uwp/api/windows.system.profile.sharedmodesettings).

Some of the remaining settings in SharedPC are optional, but we strongly recommend that you also set **EnableAccountManager** to **True**.

## PolicyCustomization

Use these settings to configure policies for shared PC mode.

| Setting | Value | Description |
| --- | --- | --- |
| MaintenanceStartTime  | A number between 0 and 1440  | By default, the maintenance start time (which is when automatic maintenance tasks run, such as Windows Update) is midnight. You can adjust the start time in this setting by entering a new start time in minutes from midnight. For example, if you want maintenance to begin at 2 AM, enter `120` as the value.  |
| MaxPageFileSizeMB  | A number between 1024 and 2048  | Adjusts the maximum page file size in MB. This can be used to fine-tune page file behavior, especially on low end PCs.  |
| RestrictLocalStorage  | True or false  | Set as **True** to restrict the user from saving or viewing local storage when using File Explorer. This setting controls this API: [ShouldAvoidLocalStorage](https://docs.microsoft.com/uwp/api/windows.system.profile.sharedmodesettings)  |
| SetEduPolicies  | True or false  | Set to **True** for PCs that will be used in a school. For more information, see [Windows 10 configuration recommendations for education customers](https://docs.microsoft.com/education/windows/configure-windows-for-education). This setting controls this API: [IsEducationEnvironment](https://docs.microsoft.com/uwp/api/windows.system.profile.educationsettings)  |
| SetPowerPolicies  | True or false  | When set as **True**:</br></br>- Prevents users from changing power settings</br>- Turns off hibernate</br>- Overrides all power state transitions to sleep (e.g. lid close)  |
| SignInOnResume  | True or false  | This setting specifies if the user is required to sign in with a password when the PC wakes from sleep.  |
| SleepTimeout  | Number  | Specifies all timeouts for when the PC should sleep. Enter the amount of idle time in seconds. If you don't set sleep timeout, the default of 1 hour applies.  |

## Related topics

- [Set up shared or guest PC](../set-up-shared-or-guest-pc.md)

