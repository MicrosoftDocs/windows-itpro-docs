---
title: Manage Windows Defender Credential Guard 
description: Learn how to deploy and manage Windows Defender Credential Guard using Group Policy or the registry.
ms.date: 11/23/2022
ms.collection:
  - highpri
  - tier2
ms.topic: article
---

# Manage Windows Defender Credential Guard

## Default Enablement

Starting in **Windows 11 Enterprise, version 22H2** and **Windows 11 Education, version 22H2**, compatible systems have Windows Defender Credential Guard turned on by default. This feature changes the default state of the feature in Windows, though system administrators can still modify this enablement state. Windows Defender Credential Guard can still be manually [enabled](#enable-windows-defender-credential-guard) or [disabled](#disable-windows-defender-credential-guard) via the methods documented below.  
  
Known issues arising from default enablement are documented in [Windows Defender Credential Guard: Known issues](credential-guard-known-issues.md#known-issue-single-sign-on-sso-for-network-services-breaks-after-upgrading-to-windows-11-version-22h2).

### Requirements for automatic enablement

Windows Defender Credential Guard will be enabled by default when a PC meets the following minimum requirements:

|Component|Requirement|
|---|---|
|Operating System|**Windows 11 Enterprise, version 22H2** or **Windows 11 Education, version 22H2**|
|Existing Windows Defender Credential Guard Requirements|Only devices that meet the [existing hardware and software requirements](credential-guard-requirements.md#hardware-and-software-requirements) to run Windows Defender Credential Guard will have it enabled by default.|
|Virtualization-based Security (VBS) Requirements|VBS must be enabled in order to run Windows Defender Credential Guard. Starting with Windows 11 Enterprise 22H2 and Windows 11 Education 22H2, devices that meet the requirements to run Windows Defender Credential Guard as well as the [minimum requirements to enable VBS](/windows-hardware/design/device-experiences/oem-vbs) will have both Windows Defender Credential Guard and VBS enabled by default.

> [!NOTE]
> If Windows Defender Credential Guard or VBS has previously been explicitly disabled, default enablement will not overwrite this setting.

> [!NOTE]
> Devices running Windows 11 Pro 22H2 may have Virtualization-Based Security (VBS) and/or Windows Defender Credential Guard automaticaly enabled if they meet the other requirements for default enablement listed above and have previously run Windows Defender Credential Guard (for example if Windows Defender Credential Guard was running on an Enterprise device that later downgraded to Pro).
> 
> To determine whether the Pro device is in this state, check if the registry key `IsolatedCredentialsRootSecret` is present in `Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0`. In this scenario, if you wish to disable VBS and Windows Defender Credential Guard, follow the instructions for [disabling Virtualization-Based Security](#disabling-virtualization-based-security). If you wish to disable only Windows Defender Credential Guard without disabling Virtualization-Based Security, use the procedures for [disabling Windows Defender Credential Guard](#disable-windows-defender-credential-guard).

## Enable Windows Defender Credential Guard

Windows Defender Credential Guard can be enabled either by using [Group Policy](#enable-windows-defender-credential-guard-by-using-group-policy) or the [registry](#enable-windows-defender-credential-guard-by-using-the-registry). Windows Defender Credential Guard can also protect secrets in a Hyper-V virtual machine, just as it would on a physical machine.
The same set of procedures used to enable Windows Defender Credential Guard on physical machines applies also to virtual machines.

> [!NOTE]
> Credential Guard and Device Guard are not supported when using Azure Gen 1 VMs. These options are available with Gen 2 VMs only.

### Enable Windows Defender Credential Guard by using Group Policy

You can use Group Policy to enable Windows Defender Credential Guard. When enabled, it will add and enable the virtualization-based security features for you if needed.

1. From the Group Policy Management Console, go to **Computer Configuration** > **Administrative Templates** > **System** > **Device Guard**.

1. Select **Turn On Virtualization Based Security**, and then select the **Enabled** option.

1. In the **Select Platform Security Level** box, choose **Secure Boot** or **Secure Boot and DMA Protection**.

1. In the **Credential Guard Configuration** box, select **Enabled with UEFI lock**. If you want to be able to turn off Windows Defender Credential Guard remotely, choose **Enabled without lock**.

1. In the **Secure Launch Configuration** box, choose **Not Configured**, **Enabled** or **Disabled**. For more information, see [System Guard Secure Launch and SMM protection](../../hardware-security/system-guard-secure-launch-and-smm-protection.md).

   :::image type="content" source="images/credguard-gp.png" alt-text="Windows Defender Credential Guard Group Policy setting.":::

1. Select **OK**, and then close the Group Policy Management Console.

To enforce processing of the group policy, you can run `gpupdate /force`.

### Enable Windows Defender Credential Guard by using Microsoft Intune

1. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), select **Devices**.

1. Select **Configuration Profiles**.

1. Select  **Create Profile** > **Windows 10 and later** > **Settings catalog** > **Create**.

   1. Configuration settings: In the settings picker, select **Device Guard** as category and add the needed settings.

> [!NOTE]
> Enable VBS and Secure Boot and you can do it with or without UEFI Lock. If you will need to disable Credential Guard remotely, enable it without UEFI lock.

> [!TIP]
> You can also configure Credential Guard by using an account protection profile in endpoint security. For more information, see [Account protection policy settings for endpoint security in Microsoft Intune](/mem/intune/protect/endpoint-security-account-protection-profile-settings).

### Enable Windows Defender Credential Guard by using the registry

If you don't use Group Policy, you can enable Windows Defender Credential Guard by using the registry. Windows Defender Credential Guard uses virtualization-based security features that have to be enabled first on some operating systems.

#### Add the virtualization-based security features

Starting with Windows 10, version 1607 and Windows Server 2016, enabling Windows features to use virtualization-based security isn't necessary and this step can be skipped.

If you're using Windows 10, version 1507 (RTM) or Windows 10, version 1511, Windows features have to be enabled to use virtualization-based security.
To enable, use the Control Panel or the Deployment Image Servicing and Management tool (DISM).

> [!NOTE]
> If you enable Windows Defender Credential Guard by using Group Policy, the steps to enable Windows features through Control Panel or DISM are not required. Group Policy will install Windows features for you.

##### Add the virtualization-based security features by using Programs and Features

1. Open the Programs and Features control panel.

1. Select **Turn Windows feature on or off**.

1. Go to **Hyper-V** > **Hyper-V Platform**, and then select the **Hyper-V Hypervisor** check box.

1. Select the **Isolated User Mode** check box at the top level of the feature selection.

1. Select **OK**.

##### Add the virtualization-based security features to an offline image by using DISM

1. Open an elevated command prompt.

1. Add the Hyper-V Hypervisor by running the following command:

   ```cmd
   dism /image:<WIM file name> /Enable-Feature /FeatureName:Microsoft-Hyper-V-Hypervisor /all
   ```

1. Add the Isolated User Mode feature by running the following command:

   ```cmd
   dism /image:<WIM file name> /Enable-Feature /FeatureName:IsolatedUserMode
   ```

   > [!NOTE]
   > In Windows 10, version 1607 and later, the Isolated User Mode feature has been integrated into the core operating system. Running the command in step 3 above is therefore no longer required.

> [!TIP]
> You can also add these features to an online image by using either DISM or Configuration Manager.

#### Enable virtualization-based security and Windows Defender Credential Guard

1. Open Registry Editor.

1. Enable virtualization-based security:

   1. Go to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceGuard`.

   1. Add a new DWORD value named **EnableVirtualizationBasedSecurity**. Set the value of this registry setting to 1 to enable virtualization-based security and set it to 0 to disable it.

   1. Add a new DWORD value named **RequirePlatformSecurityFeatures**. Set the value of this registry setting to 1 to use **Secure Boot** only or set it to 3 to use **Secure Boot and DMA protection**.

1. Enable Windows Defender Credential Guard:

   1. Go to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa`.

   1. Add a new DWORD value named **LsaCfgFlags**. Set the value of this registry setting to 1 to enable Windows Defender Credential Guard with UEFI lock, set it to 2 to enable Windows Defender Credential Guard without lock, and set it to 0 to disable it.

1. Close Registry Editor.

> [!NOTE]
> You can also enable Windows Defender Credential Guard by setting the registry entries in the [FirstLogonCommands](/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-firstlogoncommands) unattend setting.

### Review Windows Defender Credential Guard performance

#### Is Windows Defender Credential Guard running?

You can view System Information to check that Windows Defender Credential Guard is running on a PC.

1. Select **Start**, type **msinfo32.exe**, and then select **System Information**.

1. Select **System Summary**.

1. Confirm that **Credential Guard** is shown next to **Virtualization-based security Services Running**.

   :::image type="content" source="images/credguard-msinfo32.png" alt-text="The 'Virtualization-based security Services Running' entry lists Credential Guard in System Information (msinfo32.exe).":::

> [!NOTE]
> For client machines that are running Windows 10 1703, LsaIso.exe is running whenever virtualization-based security is enabled for other features.

- We recommend enabling Windows Defender Credential Guard before a device is joined to a domain. If Windows Defender Credential Guard is enabled after domain join, the user and device secrets may already be compromised. In other words, enabling Credential Guard won't help to secure a device or identity that has already been compromised. So, we recommend turning on Credential Guard as early as possible.

- You should perform regular reviews of the PCs that have Windows Defender Credential Guard enabled. You can use security audit policies or WMI queries. Here's a list of WinInit event IDs to look for:

  - **Event ID 13** Windows Defender Credential Guard (LsaIso.exe) was started and will protect LSA credentials.

  - **Event ID 14** Windows Defender Credential Guard (LsaIso.exe) configuration: \[**0x0** \| **0x1** \| **0x2**\], **0**

    - The first variable: **0x1** or **0x2** means that Windows Defender Credential Guard is configured to run. **0x0** means that it's not configured to run.

    - The second variable: **0** means that it's configured to run in protect mode. **1** means that it's configured to run in test mode. This variable should always be **0**.

  - **Event ID 15** Windows Defender Credential Guard (LsaIso.exe) is configured but the secure kernel isn't running; continuing without Windows Defender Credential Guard.

  - **Event ID 16** Windows Defender Credential Guard (LsaIso.exe) failed to launch: \[error code\]

  - **Event ID 17** Error reading Windows Defender Credential Guard (LsaIso.exe) UEFI configuration: \[error code\]  

- You can also verify that TPM is being used for key protection by checking **Event ID 51** in *Applications and Services logs > Microsoft > Windows > Kernel-Boot* event log. The full event text will read like this: `VSM Master Encryption Key Provisioning. Using cached copy status: 0x0. Unsealing cached copy status: 0x1. New key generation status: 0x1. Sealing status: 0x1. TPM PCR mask: 0x0.` If you're running with a TPM, the TPM PCR mask value will be something other than 0.

- You can use Windows PowerShell to determine whether credential guard is running on a client computer. On the computer in question, open an elevated PowerShell window and run the following command:

  ```powershell
  (Get-CimInstance -ClassName Win32_DeviceGuard -Namespace root\Microsoft\Windows\DeviceGuard).SecurityServicesRunning
  ```

  This command generates the following output:  

  - **0**: Windows Defender Credential Guard is disabled (not running)

  - **1**: Windows Defender Credential Guard is enabled (running)

    > [!NOTE]  
    > Checking the task list or Task Manager to see if LSAISO.exe is running is not a recommended method for determining whether Windows Defender Credential Guard is running.

## Disable Windows Defender Credential Guard

Windows Defender Credential Guard can be disabled via several methods explained below, depending on how the feature was enabled. For devices that had Windows Defender Credential Guard automatically enabled in the 22H2 update and didn't have it enabled prior to the update, it's sufficient to [disable via Group Policy](#disabling-windows-defender-credential-guard-using-group-policy).

If Windows Defender Credential Guard was enabled with UEFI Lock, the procedure described in [Disabling Windows Defender Credential Guard with UEFI Lock](#disabling-windows-defender-credential-guard-with-uefi-lock) must be followed. The default enablement change in eligible 22H2 devices does **not** use a UEFI Lock.

If Windows Defender Credential Guard was enabled via Group Policy without UEFI Lock, Windows Defender Credential Guard should be [disabled via Group Policy](#disabling-windows-defender-credential-guard-using-group-policy).

Otherwise, Windows Defender Credential Guard can be [disabled by changing registry keys](#disabling-windows-defender-credential-guard-using-registry-keys).

Windows Defender Credential Guard running in a virtual machine can be [disabled by the host](#disable-windows-defender-credential-guard-for-a-virtual-machine).

For information on disabling Virtualization-Based Security (VBS), see [Disabling Virtualization-Based Security](#disabling-virtualization-based-security).

### Disabling Windows Defender Credential Guard using Group Policy

If Windows Defender Credential Guard was enabled via Group Policy and without UEFI Lock, disabling the same Group Policy setting will disable Windows Defender Credential Guard.

1. Disable the Group Policy setting that governs Windows Defender Credential Guard. Navigate to **Computer Configuration** > **Administrative Templates** > **System** > **Device Guard** > **Turn on Virtualization Based Security**. In the "Credential Guard Configuration" section, set the dropdown value to "Disabled":

   :::image type="content" source="images/credguard-gp-disabled.png" alt-text="Windows Defender Credential Guard Group Policy set to Disabled.":::

1. Restart the machine.

### Disabling Windows Defender Credential Guard using Registry Keys

If Windows Defender Credential Guard was enabled without UEFI Lock and without Group Policy, it's sufficient to edit the registry keys as described below to disable Windows Defender Credential Guard.

1. Change the following registry settings to 0:

   - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\LsaCfgFlags`

   - `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard\LsaCfgFlags`

     > [!NOTE]
     > Deleting these registry settings may not disable Windows Defender Credential Guard. They must be set to a value of 0.

1. Restart the machine.

### Disabling Windows Defender Credential Guard with UEFI Lock

If Windows Defender Credential Guard was enabled with UEFI Lock enabled, then the following procedure must be followed since the settings are persisted in EFI (firmware) variables. This scenario will require physical presence at the machine to press a function key to accept the change.

1. If Group Policy was used to enable Windows Defender Credential Guard, disable the relevant Group Policy setting. Navigate to **Computer Configuration** > **Administrative Templates** > **System** > **Device Guard** > **Turn on Virtualization Based Security**. In the "Credential Guard Configuration" section, set the dropdown value to "Disabled".

1. Change the following registry settings to 0:

   - `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\LsaCfgFlags`

   - `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard\LsaCfgFlags`

1. Delete the Windows Defender Credential Guard EFI variables by using bcdedit. From an elevated command prompt, type the following commands:

   ```cmd
   mountvol X: /s
   copy %WINDIR%\System32\SecConfig.efi X:\EFI\Microsoft\Boot\SecConfig.efi /Y
   bcdedit /create {0cb3b571-2f2e-4343-a879-d86a476d7215} /d "DebugTool" /application osloader
   bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} path "\EFI\Microsoft\Boot\SecConfig.efi"
   bcdedit /set {bootmgr} bootsequence {0cb3b571-2f2e-4343-a879-d86a476d7215}
   bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} loadoptions DISABLE-LSA-ISO
   bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} device partition=X:
   mountvol X: /d
   ```

1. Restart the PC. Before the OS boots, a prompt will appear notifying that UEFI was modified, and asking for confirmation. This prompt must be confirmed for the changes to persist. This step requires physical access to the machine.

### Disable Windows Defender Credential Guard for a virtual machine

From the host, you can disable Windows Defender Credential Guard for a virtual machine:

```powershell
Set-VMSecurity -VMName <VMName> -VirtualizationBasedSecurityOptOut $true
```

## Disabling Virtualization-Based Security

Instructions are given below for how to disable Virtualization-Based Security (VBS) entirely, rather than just Windows Defender Credential Guard. Disabling Virtualization-Based Security will automatically disable Windows Defender Credential Guard and other features that rely on VBS.

> [!IMPORTANT]
> Other security features in addition to Windows Defender Credential Guard rely on Virtualization-Based Security in order to run. Disabling Virtualization-Based Security may have unintended side effects.

1. If Group Policy was used to enable Virtualization-Based Security, set the Group Policy setting that was used to enable it (**Computer Configuration** > **Administrative Templates** > **System** > **Device Guard** > **Turn on Virtualization Based Security**) to "Disabled".

1. Delete the following registry settings:

   - `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard\EnableVirtualizationBasedSecurity`

   - `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard\RequirePlatformSecurityFeatures`

     > [!IMPORTANT]
     > If you manually remove these registry settings, make sure to delete them all. If you don't remove them all, the device might go into BitLocker recovery.

1. If Windows Defender Credential Guard is running when disabling Virtualization-Based Security and either feature was enabled with UEFI Lock, the EFI (firmware) variables must be cleared using bcdedit. From an elevated command prompt, run the following bcdedit commands after turning off all Virtualization-Based Security Group Policy and registry settings as described in steps 1 and 2 above:

     >
     > ```cmd
     > bcdedit /set {0cb3b571-2f2e-4343-a879-d86a476d7215} loadoptions DISABLE-LSA-ISO,DISABLE-VBS
     > bcdedit /set vsmlaunchtype off
     > ```

1. Restart the PC.
