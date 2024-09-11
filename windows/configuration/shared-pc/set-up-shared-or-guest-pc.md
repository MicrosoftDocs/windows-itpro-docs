---
title: Configure a shared or guest Windows device
description: Description of how to configured Shared PC mode, which is a Windows feature that optimizes devices for shared use scenarios.
ms.date: 09/06/2024
ms.topic: how-to
---

# Configure a shared or guest Windows device

**Shared PC** offers options to facilitate the management and optimization of shared devices. The customizations offered by Shared PC are listed in the following table.

| Area Name | Setting name and description|
|---|---|
|Shared PC mode | **EnableSharedPCMode** or **EnableSharedPCModeWithOneDriveSync**: when enabled, **Shared PC mode** is turned on and different settings are configured in the local group policy object (LGPO). For a detailed list of settings enabled by Shared PC Mode in the LGPO, see the [Shared PC technical reference](shared-pc-technical.md#enablesharedpcmode-and-enablesharedpcmodewithonedrivesync).<ul><li>This setting controls the API: [IsEnabled][UWP-1]</li></ul>|
| Account management | **EnableAccountManager**: when enabled, automatic account management is turned on. The following settings define the behavior of *account manager*: <ul><li> **DeletionPolicy**</li><li>**DiskLevelDeletion** </li><li>**DiskLevelCaching**</li><li>**InactiveThreshold**</li></ul>For more information, see the [Shared PC CSP documentation][WIN-3].<br><br>**AccountModel**: this option controls which types of users can sign-in to the device, and can be used to enable the Guest and Kiosk accounts. For more information, see the [Shared PC CSP documentation][WIN-3].<br><br>**KioskModeAUMID**: configures an application (referred as Application User Model ID - AUMID) to automatically execute when the kiosk account is used to sign in. A new account will be created and will use assigned access to only run the app specified by the AUMID. [Find the Application User Model ID of an installed app][WIN-7].<br><br>**KioskModeUserTileDisplayText**: sets the display text on the kiosk account if **KioskModeAUMID** has been set.|
| Advanced customizations | **SetEduPolicies**: when enabled, specific settings designed for education devices are configured in the LGPO. For a detailed list of settings enabled by SetEduPolicies in the LGPO, see [Shared PC technical reference](shared-pc-technical.md#setedupolicy).<ul><li>This setting controls the API: [IsEducationEnvironment][UWP-2]</li></ul>**SetPowerPolicies**: when enabled, different power settings optimized for shared devices are configured in the LGPO. For a detailed list of settings enabled by SetPowerPolicies in the LGPO, see [Shared PC technical reference](shared-pc-technical.md#setpowerpolicies).<br><br>**SleepTimeout**: specifies all timeouts for when the PC should sleep.<br><br>**SignInOnResume**: if enabled, specifies if the user is required to sign in with a password when the PC wakes from sleep.<br><br>**MaintenanceStartTime**: by default, the maintenance start time (which is when automatic maintenance tasks run, such as Windows Update or Search indexing) is midnight. You can adjust the start time in this setting by entering a new start time in minutes from midnight. For a detailed list of settings enabled by MaintenanceStartTime, see [Shared PC technical reference](shared-pc-technical.md#maintenancestarttime).<br><br>**MaxPageFileSizeMB**: adjusts the maximum page file size in MB. This can be used to fine-tune page file behavior, especially on low end PCs.<br><br> **RestrictLocalStorage**: when enabled, users are prevented from saving or viewing local storage while using File Explorer.<ul><li>This setting controls the API: [ShouldAvoidLocalStorage][UWP-3]</li></ul>|

## Configure Shared PC

Shared PC can be configured using the following methods:

- Microsoft Intune/MDM
- Provisioning package (PPKG)
- PowerShell script

Follow the instructions below to configure your devices, selecting the option that best suits your needs.

#### [:::image type="icon" source="../images/icons/intune.svg"::: **Intune/CSP**](#tab/intune)

To configure devices using Microsoft Intune, [create a **Settings catalog** policy][MEM-2], and use the settings listed under the category **`Shared PC`**:

:::image type="content" source="images/shared-pc-intune.png" alt-text="Screenshot that shows the Shared PC policies in the Intune settings catalog." lightbox="images/shared-pc-intune.png" border="True":::

Assign the policy to a security group that contains as members the devices or users that you want to configure.

Alternatively, you can configure devices using a [custom policy][MEM-1] with the [SharedPC CSP][WIN-3].

#### [:::image type="icon" source="../images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure devices using a provisioning package, [create a provisioning package][WIN-1] using WCD, and use the settings listed under the category **`SharedPC`**:

:::image type="content" source="./images/shared-pc-wcd.png" alt-text="Screenshot that shows the Shared PC policies in WCD." lightbox="./images/shared-pc-wcd.png" border="False":::

For a list and description of CSP settings exposed in Windows Configuration Designer, see the [SharedPC WCD reference][WIN-4].

Follow the steps in [Apply a provisioning package][WIN-2] to apply the package that you created.

#### [:::image type="icon" source="../images/icons/powershell.svg"::: **PowerShell**](#tab/powershell)

To configure devices using a PowerShell script, you can use the [MDM Bridge WMI Provider][WIN-6].

> [!TIP]
> PowerShell scripts can be executed as scheduled tasks via Group Policy.

> [!IMPORTANT]
> For all device settings, the WMI Bridge client must be executed as SYSTEM (LocalSystem) account.
>
> To test a PowerShell script, you can:
> 1. [Download the psexec tool](/sysinternals/downloads/psexec)
> 1. Open an elevated command prompt and run: `psexec.exe -i -s powershell.exe`
> 1. Run the script in the PowerShell session

Edit the following sample PowerShell script to customize the settings that you want to configure:
```powershell
$namespaceName = "root\cimv2\mdm\dmmap"
$parentID="./Vendor/MSFT/Policy/Config"
$className = "MDM_SharedPC"
$cimObject = Get-CimInstance -Namespace $namespaceName -ClassName $className
if (-not ($cimObject)) {
   $cimObject = New-CimInstance -Namespace $namespaceName -ClassName $className -Property @{ParentID=$ParentID;InstanceID=$instance}
}
$cimObject.EnableSharedPCMode = $True
$cimObject.SetEduPolicies = $True
$cimObject.SetPowerPolicies = $True
$cimObject.MaintenanceStartTime = 0
$cimObject.SignInOnResume = $True
$cimObject.SleepTimeout = 0
$cimObject.EnableAccountManager = $True
$cimObject.AccountModel = 2
$cimObject.DeletionPolicy = 1
$cimObject.DiskLevelDeletion = 25
$cimObject.DiskLevelCaching = 50
$cimObject.RestrictLocalStorage = $False
$cimObject.KioskModeAUMID = ""
$cimObject.KioskModeUserTileDisplayText = ""
$cimObject.InactiveThreshold = 0
Set-CimInstance -CimInstance $cimObject
```

For more information, see [Using PowerShell scripting with the WMI Bridge Provider][WIN-5].

---

## Guidance for accounts on shared PCs

- When a device is configured in *shared PC mode* with the default deletion policy, accounts will be cached automatically until disk space is low. Then, accounts will be deleted to reclaim disk space. This account management happens automatically. Both Microsoft Entra ID and Active Directory domain accounts are managed in this way. Any accounts created through **Guest** and **Kiosk** will be deleted automatically at sign out.

- Local accounts that already exist on a PC won't be deleted when turning on shared PC mode. New local accounts that are created using **Settings > Accounts > Other people > Add someone else to this PC** after shared PC mode is turned on won't be deleted. However, any new guest accounts created by the **Guest** and **Kiosk** options on the sign-in screen (if enabled) will automatically be deleted at sign out. To set a general policy on all local accounts, you can configure the following local Group Policy setting: **Computer Configuration** > **Administrative Templates** > **System** > **User Profiles**: **Delete User Profiles Older Than A Specified Number Of Days On System Restart**.

- The account management service supports accounts that are exempt from deletion. An account can be marked exempt from deletion by adding the account SID to the registry key: `HKEY_LOCAL_MACHINE\SOFTARE\Microsoft\Windows\CurrentVersion\SharedPC\Exemptions\`. To add the account SID to the registry key using PowerShell, use the following example as a reference:

    ```powershell
    $adminName = "LocalAdmin"
    $adminPass = 'Pa$$word123'
    invoke-expression "net user /add $adminName $adminPass"
    $user = New-Object System.Security.Principal.NTAccount($adminName)

    $sid = $user.Translate([System.Security.Principal.SecurityIdentifier])

    $sid = $sid.Value;
    New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\SharedPC\Exemptions\$sid" -Force
    ```

## Troubleshooting Shared PC

To troubleshoot Shared PC, you can use the following tools:

- Check the log `C:\Windows\SharedPCSetup.log`
- Check the registry keys under `HKLM\Software\Microsoft\Windows\CurrentVersion\SharedPC`
  - `AccountManagement` key contains settings on how profiles are managed
  - `NodeValues` contains what values are set for the features managed by Shared PC

## Technical reference

- For a list of settings configured by the different options offered by Shared PC mode, see the [Shared PC technical reference](shared-pc-technical.md).
- For a list of settings exposed by the SharedPC configuration service provider, see [SharedPC CSP][WIN-3].
- For a list of settings exposed by Windows Configuration Designer, see [SharedPC CSP][WIN-4].

<!--links-->

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package
[WIN-3]: /windows/client-management/mdm/sharedpc-csp
[WIN-4]: /windows/configuration/wcd/wcd-sharedpc
[WIN-5]: /windows/client-management/mdm/using-powershell-scripting-with-the-wmi-bridge-provider
[WIN-6]: /windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal
[WIN-7]: /previous-versions/windows/embedded/dn449300(v=winembedded.82)

[MEM-1]: /mem/intune/configuration/custom-settings-windows-10
[MEM-2]: /mem/intune/configuration/settings-catalog

[UWP-1]: /uwp/api/windows.system.profile.sharedmodesettings
[UWP-2]: /uwp/api/windows.system.profile.educationsettings
[UWP-3]: /uwp/api/windows.system.profile.sharedmodesettings.shouldavoidlocalstorage
