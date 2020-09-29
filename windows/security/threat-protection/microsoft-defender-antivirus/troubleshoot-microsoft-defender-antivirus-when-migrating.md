---
title: Troubleshoot Microsoft Defender Antivirus when migrating from a third-party solution
description: Troubleshoot common errors when migrating to Microsoft Defender Antivirus
keywords: event, error code, logging, troubleshooting, microsoft defender antivirus, windows defender antivirus, migration
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: martyav
ms.author: v-maave
ms.custom: nextgen
ms.date: 09/11/2018
ms.reviewer: 
manager: dansimp
---

# Troubleshoot Microsoft Defender Antivirus when migrating from a third-party solution

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can find help here if you encounter issues while migrating from a third-party security solution to Microsoft Defender Antivirus.

## Microsoft Defender Antivirus won't start

### Event IDs

This issue can manifest in the form of  several different event IDs, all of which have the same underlying cause.

 Event ID | Log name | Description | Source
-|-|-|-
15 | Application | Updated Windows Defender status successfully to SECURITY_PRODUCT_STATE_OFF. | Security Center
5007 | Microsoft-Windows-Windows Defender/Operational | Windows Defender Antivirus Configuration has changed.  If this is an unexpected event you should review the settings as this may be the result of malware.<br /><br />**Old value:** Default\IsServiceRunning = 0x0<br />**New value:** HKLM\SOFTWARE\Microsoft\Windows Defender\IsServiceRunning = 0x1 | Windows Defender
5010 | Microsoft-Windows-Windows Defender/Operational | Windows Defender Antivirus scanning for spyware and other potentially unwanted software is disabled. | Windows Defender

### How to tell if Microsoft Defender Antivirus won't start because a third-party antivirus is installed

On a Windows 10 device, if you are not using Microsoft Defender Advanced Threat Protection (ATP), and you have a third-party antivirus installed, then Microsoft Defender Antivirus will be automatically turned off. If you are using Microsoft Defender ATP with a third-party antivirus installed, Microsoft Defender Antivirus will start in passive mode, with reduced functionality.

> [!TIP]
> The scenario just described applies only to Windows 10. Other versions of Windows have [different responses](microsoft-defender-antivirus-compatibility.md) to Microsoft Defender Antivirus being run alongside third-party security software.

#### Use Services app to check if Microsoft Defender Antivirus is turned off

To open the Services app, select the **Search** icon from the taskbar and search for *services*.

Information about Microsoft Defender Antivirus will be listed within the Services app under **Windows Defender** > **Operational**. The antivirus service name is *Windows Defender Antivirus Service*.

While checking the app, you may see that *Windows Defender Antivirus Service* is set to manual — but when you try to start this service manually, you get a warning stating, *The Windows Defender Antivirus Service service on Local Computer started and then stopped. Some services stop automatically if they are not in use by other services or programs.*

This indicates that Microsoft Defender Antivirus has been automatically turned off to preserve compatibility with a third-party antivirus.

#### Generate a detailed report

You can generate a detailed report about currently active group policies by opening a command prompt in **Run as admin** mode, then entering the following command:

```powershell
GPresult.exe /h gpresult.html
```

This will generate a report located at *./gpresult.html*. Open this file and you might see the following results, depending on how Microsoft Defender Antivirus was turned off.

##### Group policy results

##### If security settings are implemented via group policy (GPO) at the domain or local level, or though System center configuration manager (SCCM)

Within the GPResults report, under the heading, *Windows Components/Windows Defender Antivirus*, you may see something like the following entry, indicating that Microsoft Defender Antivirus is turned off.

Policy | Setting | Winning GPO
-|-|-
Turn off Windows Defender Antivirus | Enabled | Win10-Workstations

###### If security settings are implemented via Group policy preference (GPP)

Under the heading, *Registry item (Key path: HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\WindowsDefender, Value name: DisableAntiSpyware)*, you may see something like the following entry, indicating that Microsoft Defender Antivirus is turned off.

DisableAntiSpyware | -
-|-
Winning GPO | Win10-Workstations
Result: Success | 
**General** | 
Action | Update
**Properties** | 
Hive | HKEY_LOCAL_MACHINE
Key path | SOFTWARE\Microsoft\WindowsDefender
Value name | DisableAntiSpyware
Value type | REG_DWORD
Value data | 0x1 (1)

###### If security settings are implemented via registry key

The report may contain the following text, indicating that Microsoft Defender Antivirus is turned off:
 
> Registry (regedit.exe)
>
> HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender
> DisableAntiSpyware (dword) 1 (hex)

###### If security settings are set in Windows or your Windows Server image

Your imagining admin might have set the security policy, **[DisableAntiSpyware](https://docs.microsoft.com/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware)**, locally via *GPEdit.exe*, *LGPO.exe*, or by modifying the registry in their task sequence. You can [configure a Trusted Image Identifier](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/configure-a-trusted-image-identifier-for-windows-defender) for Microsoft Defender Antivirus.

### Turn Microsoft Defender Antivirus back on

Microsoft Defender Antivirus will automatically turn on if no other antivirus is currently active. You'll need to turn the third-party antivirus completely off to ensure Microsoft Defender Antivirus can run with full functionality.

If you want to keep your third-party antivirus active alongside Microsoft Defender, you can  turn on [limited periodic scanning](limited-periodic-scanning-microsoft-defender-antivirus.md). This enables a subset of Microsoft Defender Antivirus features.

> [!IMPORTANT] 
> Limited periodic scanning is not recommended in enterprise environments. The detection, management and reporting capabilities available when running Microsoft Defender Antivirus in this mode are reduced to prevent confusion and aid with compatibility.

> [!WARNING]
> Solutions suggesting that you edit the *Windows Defender* start value for *wdboot*, *wdfilter*, *wdnisdrv*, *wdnissvc*, and *windefend* in  HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services are unsupported, and may force you to re-image your system.

### See also

* [Microsoft Defender Antivirus compatibility](microsoft-defender-antivirus-compatibility.md)
* [Microsoft Defender Antivirus in the Windows Security app](microsoft-defender-security-center-antivirus.md)
