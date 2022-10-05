--
title: Manage multi-user and guest Windows devices
description: options to optimize Windows devices used in shared scenarios, such touchdown spaces in an enterprise, temporary customer use in retail or shared devices in a school.
ms.date: 10/15/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual
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

# Manage multi-user and guest Windows devices

*Shared PC* is a Windows feature that optimizes Windows clients for shared use scenarios, such as touchdown spaces in an enterprise, temporary customer use in retail or shared devices in a school.

## Shared PC mode

A Windows device enabled for *Shared PC mode* is designed to be maintenance-free with high reliability. Devices configured in Shared PC mode allow sign in of one user at a time. When a device is locked, the signed in user can be signed out at the lock screen.

## Account models
Shared PC offers the possibility to enable a **Guest** option on the sign-in screen. The Guest option doesn't require any user credentials or authentication, and creates a new local account each time it's used.
Windows also offers an **Assigned access** or **kiosk** mode. Shared PC can be configured to enable a the **Guest** option and execute a specific application in kiosk mode.

## Account management
When the account management service is configured, user profiles are automatically deleted to free up disk space and resources. The deletion process applies to Active Directory, Azure Active Directory, and local accounts that are created by the **Guest** and **Kiosk** options. Account management is performed both at sign-off time (to make sure there is enough disk space for the next user) as well as during system maintenance time periods. Shared PC mode can be configured to delete accounts immediately at sign-out or when disk space is low. In Windows client, an inactive option is added which deletes accounts if they haven't signed in after a specified number of days.

### Maintenance and sleep
Shared PC mode is configured to take advantage of maintenance time periods which run while the PC is not in use. Therefore, sleep is strongly recommended so that the PC can wake up when it is not in use to perform maintenance, clean up accounts, and run Windows Update. The recommended settings can be set by choosing **SetPowerPolicies** in the list of shared PC options. Additionally, on devices without Advanced Configuration and Power Interface (ACPI) wake alarms, shared PC mode will always override real-time clock (RTC) wake alarms to be allowed to wake the PC from sleep (by default, RTC wake alarms are off). This ensures that the widest variety of hardware will take advantage of maintenance periods.

While shared PC mode does not configure Windows Update itself, it is recommended to configure Windows Update to automatically install updates and reboot during maintenance hours. This will help ensure the PC is always up to date and not interrupting users with updates.  

Use one of the following methods to configure Windows Update:

- Group Policy: Set **Computer Configuration > Administrative Templates > Windows Components > Windows Update > Configure Automatic Updates** to `4` and check **Install during automatic maintenance**.
- MDM: Set **Update/AllowAutoUpdate** to `4`. 
- Provisioning: In Windows Imaging and Configuration Designer (ICD), set **Policies/Update/AllowAutoUpdate** to `4`. 

[Learn more about the AllowAutoUpdate settings](/windows/client-management/mdm/policy-configuration-service-provider#Update_AllowAutoUpdate)



### Customization
Shared PC mode exposes a set of customizations to tailor the behavior to your requirements. These customizations are the options that you'll set either using MDM or a provisioning package as explained in [Configuring Shared PC mode for Windows](#configuring-shared-pc-mode-for-windows). The options are listed in the following table.

| Setting | Value |
|:---|:---|
| EnableSharedPCMode | Set as **True**. If this is not set to **True**, shared PC mode is not turned on and none of the other settings apply. This setting controls this API: [IsEnabled](/uwp/api/windows.system.profile.sharedmodesettings) </br></br>Some of the remaining settings in **SharedPC** are optional, but we strongly recommend that you also set `EnableAccountManager` to **True**.  |
| AccountManagement: AccountModel | This option controls how users can sign-in on the PC. Choosing domain-joined will enable any user in the domain to sign-in. <br/><br/>Specifying the guest option will add the **Guest** option to the sign-in screen and enable anonymous guest access to the PC. <br/><br/>  - **Only guest** allows anyone to use the PC as a local standard (non-admin) account.<br/>  - **Domain-joined only** allows users to sign in with an Active Directory or Azure AD account.<br/>-   **Domain-joined and guest** allows users to sign in with an Active Directory, Azure AD, or local standard account. |
| AccountManagement: DeletionPolicy | - **Delete immediately** will delete the account on sign-out. <br/><br/>- **Delete at disk space threshold** will start deleting accounts when available disk space falls below the threshold you set for **DiskLevelDeletion**, and it will stop deleting accounts when the available disk space reaches the threshold you set for **DiskLevelCaching**. Accounts are deleted in order of oldest accessed to most recently accessed. <br/><br/>Example: The caching number is 50 and the deletion number is 25. Accounts will be cached while the free disk space is above 25%. When the free disk space is less than 25% (the deletion number) at a maintenance period, accounts will be deleted (oldest last used first) until the free disk space is above 50% (the caching number). Accounts will be deleted immediately at sign-off of an account if free space is under the deletion threshold and disk space is very low, regardless if the PC is actively in use or not. <br/>- **Delete at disk space threshold and inactive threshold** will apply the same disk space checks as noted above, but also delete accounts if they have not signed in within the number of days specified by **InactiveThreshold**  |
| AccountManagement: DiskLevelCaching | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account caching.   |
| AccountManagement: DiskLevelDeletion | If you set **DeletionPolicy** to **Delete at disk space threshold**, set the percent of total disk space to be used as the disk space threshold for account deletion.   |
| AccountManagement: InactiveThreshold | If you set **DeletionPolicy** to **Delete at disk space threshold and inactive threshold**, set the number of days after which an account that has not signed in will be deleted.   | 
| AccountManagement: EnableAccountManager | Set as **True** to enable automatic account management. If this is not set to true, no automatic account management will be done. |
| AccountManagement: KioskModeAUMID | Set an Application User Model ID (AUMID) to enable the kiosk account on the sign-in screen. A new account will be created and will use assigned access to only run the app specified by the AUMID. Note that the app must be installed on the PC. Set the name of the account using **KioskModeUserTileDisplayText**, or a default name will be used. [Find the Application User Model ID of an installed app](/previous-versions/windows/embedded/dn449300(v=winembedded.82))   |  
| AccountManagement: KioskModeUserTileDisplayText | Sets the display text on the kiosk account if **KioskModeAUMID** has been set. |  
| Customization: MaintenanceStartTime | By default, the maintenance start time (which is when automatic maintenance tasks run, such as Windows Update) is midnight. You can adjust the start time in this setting by entering a new start time in minutes from midnight. For example, if you want maintenance to begin at 2 AM, enter `120` as the value.   |
| Customization: MaxPageFileSizeMB | Adjusts the maximum page file size in MB. This can be used to fine-tune page file behavior, especially on low end PCs.  |  
| Customization: RestrictLocalStorage | Set as **True** to restrict the user from saving or viewing local storage when using File Explorer. This setting controls this API: [ShouldAvoidLocalStorage](/uwp/api/windows.system.profile.sharedmodesettings)  | 
| Customization: SetEduPolicies | Set to **True** for PCs that will be used in a school. For more information, see [Windows client configuration recommendations for education customers](/education/windows/configure-windows-for-education). This setting controls this API: [IsEducationEnvironment](/uwp/api/windows.system.profile.educationsettings) |
| Customization: SetPowerPolicies |  When set as **True**:<br/>- Prevents users from changing power settings<br/>- Turns off hibernate<br/>- Overrides all power state transitions to sleep (e.g. lid close)  |
| Customization: SignInOnResume | This setting specifies if the user is required to sign in with a password when the PC wakes from sleep.     |
| Customization: SleepTimeout | Specifies all timeouts for when the PC should sleep. Enter the amount of idle time in seconds. If you don't set sleep timeout, the default of 1 hour applies.     |
[Policies: Authentication](wcd/wcd-policies.md#authentication) (optional related setting) | Enables a quick first sign-in experience for a user by automatically connecting new non-admin Azure AD accounts to the pre-configured candidate local accounts.


## Additional information
