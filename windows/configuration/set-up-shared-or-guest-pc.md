---
title: Set up a shared or guest Windows device
description: Description of how to configured Shared PC mode, which is a Windows feature that optimizes devices for shared use scenarios.
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
---

# Set up a shared or guest Windows device

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

## Configure Shared PC mode

The configuration of Shared PC can be done using:

- Microsoft Intune/MDM
- a provisioning package (PPKG)
- PowerShell

Follow the instructions below to configure your devices, selecting the option that best suits your needs.

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

- Mobile device management (MDM): Shared PC mode is enabled by the [SharedPC configuration service provider (CSP)](/windows/client-management/mdm/sharedpc-csp). To set up a shared device policy for Windows client in Intune, complete the following steps:

  1. Sign in to the [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
  
  2. Select **Devices** > **Windows** > **Configuration profiles** > **Create profile**.
  
  3. Enter the following properties:

     - **Platform**: Select **Windows 10 and later**.
     - **Profile**: Select **Templates** > **Shared multi-user device**.

  4. Select **Create**.
  
  5. In **Basics**, enter the following properties:

     - **Name**: Enter a descriptive name for the new profile.
     - **Description**: Enter a description for the profile. This setting is optional, but recommended.

  6. Select **Next**.
  
  7. In **Configuration settings**, depending on the platform you chose, the settings you can configure are different. Choose your platform for detailed settings:

  8. On the **Configuration settings** page, set the ‘Shared PC Mode’ value to **Enabled**.

     > [!div class="mx-imgBorder"]
     > ![Shared PC mode in the Configuration settings page.](images/shared_pc_3.png) 

  11. From this point on, you can configure any additional settings you’d like to be part of this policy, and then follow the rest of the set-up flow to its completion by selecting **Create** after **Step 6**.

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

[Create a provisioning package][WIN-1] using Windows Configuration Designer with the following settings:


Follow the steps in [Apply a provisioning package][WIN-2] to apply the package that you created.
#### [:::image type="icon" source="images/icons/powershell.svg"::: **PowerShell**](#tab/powershell)

- WMI bridge: Environments that use Group Policy can use the [MDM Bridge WMI Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal) to configure the [MDM_SharedPC class](/windows/win32/dmwmibridgeprov/mdm-sharedpc). For all device settings, the WMI Bridge client must be executed under local system user; for more information, see [Using PowerShell scripting with the WMI Bridge Provider](/windows/client-management/mdm/using-powershell-scripting-with-the-wmi-bridge-provider). For example, open PowerShell as an administrator and enter the following:

  ```powershell
  $sharedPC = Get-CimInstance -Namespace "root\cimv2\mdm\dmmap" -ClassName "MDM_SharedPC"
  $sharedPC.EnableSharedPCMode = $True
  $sharedPC.SetEduPolicies = $True
  $sharedPC.SetPowerPolicies = $True
  $sharedPC.MaintenanceStartTime = 0
  $sharedPC.SignInOnResume = $True
  $sharedPC.SleepTimeout = 0
  $sharedPC.EnableAccountManager = $True
  $sharedPC.AccountModel = 2
  $sharedPC.DeletionPolicy = 1
  $sharedPC.DiskLevelDeletion = 25
  $sharedPC.DiskLevelCaching = 50
  $sharedPC.RestrictLocalStorage = $False
  $sharedPC.KioskModeAUMID = ""
  $sharedPC.KioskModeUserTileDisplayText = ""
  $sharedPC.InactiveThreshold = 0
  Set-CimInstance -CimInstance $sharedPC
  Get-CimInstance -Namespace "root\cimv2\mdm\dmmap" -ClassName MDM_SharedPC
  ```

---

## Guidance for accounts on shared PCs

- When a PC is set up in shared PC mode with the default deletion policy, accounts will be cached automatically until disk space is low. Then, accounts will be deleted to reclaim disk space. This account management happens automatically. Both Azure AD and Active Directory domain accounts are managed in this way. Any accounts created through **Guest** and **Kiosk** will be deleted automatically at sign-out.

- Local accounts that already exist on a PC won't be deleted when turning on shared PC mode. New local accounts that are created using **Settings > Accounts > Other people > Add someone else to this PC** after shared PC mode is turned on won't be deleted. However, any new guest accounts created by the **Guest** and **Kiosk** options on the sign-in screen (if enabled) will automatically be deleted at sign-out. To set a general policy on all local accounts, you can configure the following local Group Policy setting: **Computer Configuration** > **Administrative Templates** > **System** > **User Profiles**: **Delete User Profiles Older Than A Specified Number Of Days On System Restart**.

- The account management service supports accounts that are exempt from deletion. An account can be marked exempt from deletion by adding the account SID to the registry key: `HKEY_LOCAL_MACHINE\SOFTARE\Microsoft\Windows\CurrentVersion\SharedPC\Exemptions\`.
    - To add the account SID to the registry key using PowerShell:

    ```powershell
    $adminName = "LocalAdmin"
    $adminPass = 'Pa$$word123'
    invoke-expression "net user /add $adminName $adminPass"
    $user = New-Object System.Security.Principal.NTAccount($adminName) 
    $sid = $user.Translate([System.Security.Principal.SecurityIdentifier]) 
    $sid = $sid.Value;
    New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\SharedPC\Exemptions\$sid" -Force
    ```

## Shared PC APIs and app behavior

Applications can take advantage of Shared PC mode with the following three APIs:  

- [**IsEnabled**][API-1] - This API informs applications when the device is configured for shared use scenarios. For example, an app might only download content on demand on a device in shared PC mode, or might skip first run experiences.
- [**ShouldAvoidLocalStorage**][API-2] - This API informs applications when the PC has been configured to not allow the user to save to the local storage of the PC. Instead, only cloud save locations should be offered by the app or saved automatically by the app.  
- [**IsEducationEnvironment**][API-3] - This API informs applications when the PC is used in an education environment. Apps may want to handle diagnostic data differently or hide advertising functionality.  

## Technical reference

- For a list of settings configured by the different options offered by Shared PC mode, see the [Shared PC technical reference](shared-pc-technical.md).
- For a list of settings exposed by the SharedPC configuration service provider, see [SharedPC CSP][WIN-3].

-----------

[API-1]: /uwp/api/windows.system.profile.sharedmodesettings
[API-2]: /uwp/api/windows.system.profile.sharedmodesettings
[API-3]: /uwp/api/windows.system.profile.educationsettings

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package
[WIN-3]: /windows/client-management/mdm/sharedpc-csp