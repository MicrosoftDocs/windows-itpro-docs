---
title: Conflicting configurations
description: This article explains how to remediate conflicting configurations affecting the Windows Autopatch service.
ms.date: 07/08/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: concept-article
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: adnich
ms.collection:
  - highpri
  - tier1
---

# Conflicting configurations (public preview)

> [!IMPORTANT]
> This feature is in **public preview**. The feature is being actively developed and might not be complete.

During Readiness checks, if there are devices with conflicting registry configurations, notifications are listed in the **Not ready** tab. The notifications include a list of alerts that explain why the device isn't ready for updates. Instructions are provided on how to resolve the issue(s). You can review any device marked as **Not ready** and remediate them to a **Ready** state.

Windows Autopatch monitors conflicting configurations. You're notified of the specific registry values that prevent Windows from updating properly. These registry keys should be removed to resolve the conflict. However, it's possible that other services write back the registry keys. It's recommended that you review common sources for conflicting configurations to ensure your devices continue to receive Windows Updates.

The most common sources of conflicting configurations include:

- Active Directory Group Policy (GPO)
- Configuration Manager Device client settings
- Windows Update for Business (WUfB) policies
- Manual registry updates
- Local Group Policy settings applied during imaging (LGPO)

## Registry keys inspected by Autopatch

```cmd
Location= HKLM:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\DoNotConnectToWindowsUpdateInternetLocations Value=Any
Location= HKLM:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\DisableWindowsUpdateAccess Value=Any
Location= HKLM:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoUpdate Value=Any
```

## Resolving conflicts

Windows Autopatch recommends removing the conflicting configurations. The following remediation examples can be used to remove conflicting settings and registry keys when targeted at Autopatch-managed clients.

> [!IMPORTANT]
> **It's recommended to only target devices with conflicting configuration alerts**. The following remediation examples can affect devices that aren't managed by Windows Autopatch, be sure to target accordingly.

### Intune Remediation

Navigate to Intune Remediations and create a remediation using the following examples. It's recommended to create a single remediation per value to understand if the value persists after removal.

If you use either [**Detect**](#detect) and/or [**Remediate**](#remediate) actions, ensure to update the appropriate **Path** and **Value** called out in the Alert. For more information, see [Remediations](/mem/intune/fundamentals/remediations).

#### Detect

```powershell
if((Get-ItemProperty HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate).PSObject.Properties.Name -contains 'DoNotConnectToWindowsUpdateInternetLocations') {
    Exit 1
} else {
    exit 0
}
```

| Alert details | Description |
| ----- | ----- |
| Path | `HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate` |
| Value | `DoNotConnectToWindowsUpdateInternetLocations` |

#### Remediate

```powershell
if((Get-ItemProperty HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate).PSObject.Properties.Name -contains 'DoNotConnectToWindowsUpdateInternetLocations') {
    Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "DoNotConnectToWindowsUpdateInternetLocations"
}
```

| Alert details | Description |
| ----- | ----- |
| Path | `HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate` |
| Value | `DoNotConnectToWindowsUpdateInternetLocations` |

### PowerShell

Copy and paste the following PowerShell script into PowerShell or a PowerShell editor, and save it with a `.ps1` extension. For more information, see [Remove-ItemProperty (Microsoft.PowerShell.Management)](/powershell/module/microsoft.powershell.management/remove-itemproperty).

```powershell
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "DoNotConnectToWindowsUpdateInternetLocations"
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" -Name "DisableWindowsUpdateAccess"
Remove-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate"
```

### Batch file

Copy and paste the following code into a text editor, and save it with a `.cmd` extension, and execute against affected devices. This command removes registry keys that affect the Windows Autopatch service.

```cmd
@echo off
echo Deleting registry keys...
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /f
echo Registry keys deleted.
Pause
```

### Registry file

Copy the following code to a Notepad file, save as a `.reg` extension, and execute against affected devices. This removes registry keys that affect the Windows Autopatch service. For more information, see [How to add, modify, or delete registry subkeys and values by using a .reg file](https://support.microsoft.com/topic/how-to-add-modify-or-delete-registry-subkeys-and-values-by-using-a-reg-file-9c7f37cf-a5e9-e1cd-c4fa-2a26218a1a23).

```cmd
Windows Registry Editor Version 5.00
[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate]
"DoNotConnectToWindowsUpdateInternetLocations"=-
"DisableWindowsUpdateAccess"=-
[HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU]
"NoAutoUpdate"=-
```

## Common sources of conflicting configurations

The following examples can be used to validate if the configuration is persistent from one of the following services. The list isn't an exhaustive, and Admins should be aware that changes can affect devices not managed by Windows Autopatch and should plan accordingly.

### Group Policy management

Group Policy management is the most popular client configuration tool in most organizations. For this reason, it's most often the source of conflicting configurations. Use Result Set of Policy (RSOP) on an affected client can quickly identify if configured policies conflict with Windows Autopatch. For more information, see Use Resultant Set of Policy to Manage Group Policy.

1. Launch an Elevated Command Prompt and enter `RSOP`.
1. Navigate to **Computer Configuration** > **Policies** > **Administrative Templates** > **Windows Components** > **Windows Update**
1. If a Policy **doesn't exist** in Windows Update, then it appears to not be Group Policy.
1. If a Policy **exists** in Windows Update is present, modify or limit the target of the conflicting policy to resolve the Alert.
1. If the **Policy name** is labeled **Local Group Policy**, these settings could have been applied during imaging or by Configuration Manager.

### Configuration Manager

Configuration Manager is a common enterprise management tool that, among many things, can help manage Windows Updates. For this reason, we see many environments misconfigured when moving to either a 100% cloud or co-managed workloads even when the workloads are configured correctly. The client settings are often missed. For more information, see [About client settings and software updates](/mem/configmgr/core/clients/deploy/about-client-settings#software-updates).

1. Go the **Microsoft Endpoint Configuration Manager Console**.
1. Navigate to **Administration** > **Overview** > **Client Settings**.
1. Ensure **Software Updates** isn't configured. If configured, it's recommended to remove these settings to prevent conflicts with Windows Autopatch.

## Third-party solutions

Third-party solutions can include any other product that may write configurations for the devices in question, such as MDMs (Mobile Device Managers) or Policy Managers.
