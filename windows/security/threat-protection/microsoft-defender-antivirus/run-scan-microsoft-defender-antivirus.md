---
title: Run and customize on-demand scans in Microsoft Defender AV
description: Run and configure on-demand scans using PowerShell, Windows Management Instrumentation, or individually on endpoints with the Windows Security app
keywords: scan, on-demand, dos, intune, instant scan
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Configure and run on-demand Microsoft Defender Antivirus scans

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can run an on-demand scan on individual endpoints. These scans will start immediately, and you can define parameters for the scan, such as the location or type.


## Quick scan versus full scan

Quick scan looks at all the locations where there could be malware registered to start with the system, such as registry keys and known Windows startup folders. 

> [!IMPORTANT] 
> Microsoft Defender Antivirus runs in the context of the [LocalSystem](https://docs.microsoft.com/en-us/windows/win32/services/localsystem-account) account when performing a local scan. For network scans, it uses the context of the device account. If the domain device account doesn't have appropriate permissions to access the share, the scan won't work. Ensure that the device has permissions to the access network share. 

Combined with [always-on real-time protection capability](configure-real-time-protection-microsoft-defender-antivirus.md)--which reviews files when they are opened and closed, and whenever a user navigates to a folder--a quick scan helps provide strong coverage both for malware that starts with the system and kernel-level malware.  

In most instances, this means a quick scan is adequate to find malware that wasn't picked up by real-time protection.

A full scan can be useful on endpoints that have encountered a malware threat to identify if there are any inactive components that require a more thorough clean-up, and can be ideal when running on-demand scans.

>[!NOTE]
>By default, quick scans run on mounted removable devices, such as USB drives.

## Use Configuration Manager to run a scan

See [Antimalware and firewall tasks: How to perform an on-demand scan](https://docs.microsoft.com/configmgr/protect/deploy-use/endpoint-antimalware-firewall#how-to-perform-an-on-demand-scan-of-computers) for details on using Microsoft Endpoint Configuration Manager (current branch) to run a scan.

## Use the mpcmdrun.exe command-line utility to run a scan

Use the following `-scan` parameter:

```DOS
mpcmdrun.exe -scan -scantype 1
```
See [Use the mpcmdrun.exe commandline tool to configure and manage Microsoft Defender Antivirus](command-line-arguments-microsoft-defender-antivirus.md) for more information on how to use the tool and additional parameters, including starting a full scan or defining paths.

## Use Microsoft Intune to run a scan

1. In Intune, go to **Devices > All Devices** and select the device you want to scan.

2. Select **...More** and then select **Quick Scan** or **Full Scan**.


## Use the Windows Security app to run a scan

See [Run a scan in the Windows Security app](microsoft-defender-security-center-antivirus.md#scan) for instructions on running a scan on individual endpoints.

## Use PowerShell cmdlets to run a scan

Use the following cmdlet:

```PowerShell
Start-MpScan
```
See [Use PowerShell cmdlets to configure and run Microsoft Defender Antivirus](use-powershell-cmdlets-microsoft-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Microsoft Defender Antivirus.

## Use Windows Management Instruction (WMI) to run a scan

Use the [**Start** method of the **MSFT_MpScan**](https://msdn.microsoft.com/library/dn455324(v=vs.85).aspx#methods) class.

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx)


## Related articles

- [Configure Microsoft Defender Antivirus scanning options](configure-advanced-scan-types-microsoft-defender-antivirus.md)
- [Configure scheduled Microsoft Defender Antivirus scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
