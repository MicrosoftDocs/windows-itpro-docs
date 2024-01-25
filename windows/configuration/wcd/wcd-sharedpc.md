---
title: SharedPC
description: This section describes the SharedPC settings that you can configure in provisioning packages for Windows using Windows Configuration Designer. 

ms.topic: reference
appliesto: 

ms.date: 10/16/2017 

--- 

# SharedPC (Windows Configuration Designer reference) 

Use SharedPC settings to optimize Windows devices for shared use scenarios, such as touchdown spaces in an enterprise and temporary customer use in retail. 

## Applies to 

| Setting   | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | 

| All settings | ✅  |  |  |  | 

## AccountManagement 

Use these settings to configure settings for accounts allowed on the shared PC. 

| Setting | Value | Description |
| --- | --- | --- |
| AccountModel  | - Only guest</br>- Domain-joined only</br>- Domain-joined and guest  | This option controls how users can sign in on the PC. Choosing domain-joined will enable any user in the domain to sign in. Specifying the guest option will add the Guest option to the sign in screen and enable anonymous guest access to the PC. </br></br>- Only guest allows anyone to use the PC as a local standard (non-admin) account.</br>- Domain-joined only allows users to sign in with an Active Directory or Microsoft Entra account.</br>- Domain-joined and guest allows users to sign in with an Active Directory, Microsoft Entra ID, or local standard account.  |
| DeletionPolicy  | - Delete immediately </br>- Delete at disk space threshold</br>- Delete at disk space threshold and inactive threshold | - **Delete immediately** deletes the account on sign out.</br>- **Delete at disk space threshold** starts deleting accounts when available disk space falls below the threshold you set for `DiskLevelDeletion`. It stops deleting accounts when the available disk space reaches the threshold you set for `DiskLevelCaching`. Accounts are deleted in order of oldest accessed to most recently accessed.</br>- **Delete at disk space threshold and inactive threshold** applies the same disk space checks as noted above. It also deletes accounts if they haven't signed in within the number of days in `InactiveThreshold`.  |
| DiskLevelCaching  | A number between 0 and 100  | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account caching.  |
| DiskLevelDeletion  | A number between 0 and 100  | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account deletion.  |
| EnableAccountManager  | True or false  | Set as **True** to enable automatic account management. When set to **False**, no automatic account management will be done.  |
| InactiveThreshold  | Number  | If you set **DeletionPolicy** to **Delete at disk space threshold and inactive threshold**, set the number of days after which an account that hasn't signed in will be deleted.  |
| KioskModeAUMID  | String  | Set an Application User Model ID (AUMID) to enable the kiosk account on the sign in screen. A new account will be created and will use assigned access to only run the app specified by the AUMID. The app must be installed on the PC. Set the name of the account using **KioskModeUserTileDisplayText**, or a default name will be used. [Find the Application User Model ID of an installed app](/previous-versions/windows/embedded/dn449300(v=winembedded.82))  |
| KioskModeUserTileDisplayText  | String  | Sets the display text on the kiosk account if **KioskModeAUMID** has been set.  | 

## EnableSharedPCMode 

Set as **True** to enable **Shared PC Mode**. This setting controls this API: [IsEnabled](/uwp/api/windows.system.profile.sharedmodesettings). 

## EnableSharedPCModeWithOneDriveSync 

Set as **True** to enable **Shared PC Mode**. This setting controls this API: [IsEnabled](/uwp/api/windows.system.profile.sharedmodesettings). 


## PolicyCustomization 

Use these settings to configure additional Shared PC policies. 

| Setting | Value | Description |
| --- | --- | --- |
| MaintenanceStartTime  | A number between 0 and 1440  | By default, the maintenance start time (which is when automatic maintenance tasks run, such as Windows Update) is midnight. You can adjust the start time in this setting by entering a new start time in minutes from midnight. For example, if you want maintenance to begin at 2 AM, enter `120` as the value.  |
| MaxPageFileSizeMB  | A number between 1024 and 2048  | Adjusts the maximum page file size in MB. This setting can be used to fine-tune page file behavior, especially on low end PCs.  |
| RestrictLocalStorage  | True or false  | Set as **True** to restrict the user from saving or viewing local storage when using File Explorer. This setting controls this API: [ShouldAvoidLocalStorage](/uwp/api/windows.system.profile.sharedmodesettings)  |
| SetEduPolicies  | True or false  | Set to **True** for PCs that will be used in a school. For more information, see [Windows 10 configuration recommendations for education customers](/education/windows/configure-windows-for-education). This setting controls this API: [IsEducationEnvironment](/uwp/api/windows.system.profile.educationsettings)  |
| SetPowerPolicies  | True or false  | When set as **True**:</br></br>- Prevents users from changing power settings</br>- Turns off hibernate</br>- Overrides all power state transitions to sleep, such as a lid close.  |
| SignInOnResume  | True or false  | This setting specifies if the user is required to sign in with a password when the PC wakes from sleep.  |
| SleepTimeout  | Number  | Specifies all timeouts for when the PC should sleep. Enter the amount of idle time in seconds. If you don't set sleep timeout, the default of 1 hour applies.  | 

## Related articles 

- [Set up shared or guest PC](../set-up-shared-or-guest-pc.md)
