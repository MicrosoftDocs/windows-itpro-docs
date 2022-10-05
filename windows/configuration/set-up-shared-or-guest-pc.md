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

Shared PC mode exposes a set of customizations to tailor the behavior to your requirements. These customizations are the options that you'll set either using Intune/MDM, a provisioning package, or via PowerShell scripting as explained in [Configuring Shared PC mode](#configuring-shared-pc-mode). The customizations offered by Shared PC are listed in the following table.

| Setting | Value |
|:---|:---|
| EnableSharedPCMode and EnableSharedPCModeWithOneDriveSync | <li>When enabled, **Shared PC mode** is turned on and different settings in the local GPO are configured. For a detailed list of settings enabled by Shared PC Mode, see [Technical Guide]</li><li>This setting controls the API: [IsEnabled](/uwp/api/windows.system.profile.sharedmodesettings)</li>|

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

## Technical reference

- For a list of settings configured by the different options offered by Shared PC mode, see the [Shared PC technical reference](shared-pc-technical.md).
- For a list of settings exposed by the SharedPC configuration service provider, see [SharedPC CSP][WIN-3].
- For a list of settings exposed by Windows Configuration Designer, see [SharedPC CSP][WIN-4].

-----------

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package
[WIN-3]: /windows/client-management/mdm/sharedpc-csp
[WIN-4]: /windows/configuration/wcd/wcd-sharedpc