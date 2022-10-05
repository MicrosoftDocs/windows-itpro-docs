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