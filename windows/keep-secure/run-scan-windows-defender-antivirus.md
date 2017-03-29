---
title: Run and customize on-demand scans in Windows Defender AV
description: Run and configure on-demand scans using PowerShell, Windows Management Instrumentation, or individually on endpoints with the Windows Defender Security Center app
keywords: scan, on-demand, dos, intune, instant scan
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---





# Configure and run on-demand Windows Defender AV scans

**Applies to:**

- Windows 10

**Audience**

- Enterprise security administrators

**Manageability available with**

- Windows Defender AV mpcmdrun utility
- PowerShell
- Windows Management Instrumentation (WMI)
- System Center Configuration Manager 
- Microsoft Intune
- Windows Defender Security Center app

You can run an on-demand scan on individual endpoints. These scans will start immediately, and you can define parameters for the scan, such as the location or type.


## Quick scan versus full scan

Quick scan looks at all the locations where there could be malware registered to start with the system, such as registry keys and known Windows startup folders. 

Combined with [always-on real-time protection capability](configure-real-time-protection-windows-defender-antivirus.md) - which reviews files when they are opened and closed, and whenever a user navigates to a folder - a quick scan helps provide strong coverage both for malware that starts with the system and kernel-level malware.  

In most instances, this means a quick scan is adequate to find malware that wasn't picked up by real-time protection.

A full scan can be useful on endpoints that have encountered a malware threat to identify if there are any inactive components that require a more thorough clean-up, and can be ideal when running on-demand scans.


**Use the mpcmdrum.exe command-line utility to run a scan:**

Use the following `-scan` parameter:

```DOS
mpcmdrun.exe -scan -scantype 1
```



See [Use the mpcmdrun.exe commandline tool to configure and manage Windows Defender Antivirus](command-line-arguments-windows-defender-antivirus.md) for more information on how to use the tool and additional parameters, including starting a full scan or defining paths.



**Use Configuration Manager to run a scan:**

See [Antimalware and firewall tasks: How to perform an on-demance scan](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-firewall#how-to-perform-an-on-demand-scan-of-computers) for details on using System Center Configuration Manager (current branch) to run a scan.



**Use the Windows Defender Security Center app to run a scan:**

See [Run a scan in the Windows Defender Security Center app](windows-defender-security-center-antivirus.md#scan) for instructions on running a scan on individual endpoints.



**Use PowerShell cmdlets to run a scan:**

Use the following cmdlet:

```PowerShell
Start-MpScan
```


See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/itpro/powershell/windows/defender/index) for more information on how to use PowerShell with Windows Defender Antivirus.

**Use Windows Management Instruction (WMI) to run a scan:**

Use the [**Start** method of the **MSFT_MpScan**](https://msdn.microsoft.com/en-us/library/dn455324(v=vs.85).aspx#methods) class.

See the following for more information and allowed parameters:
- [Windows Defender WMIv2 APIs](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx)


**Use Microsoft Intune to run a scan:**


See [Help secure Windows PCs with Endpoint Protection for Microsoft Intune: Run a malware scan](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#run-a-malware-scan-or-update-malware-definitions-on-a-computer) and [Windows Defender policy settings in Windows 10](https://docs.microsoft.com/en-us/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune#windows-defender-1) for more details.


## Related topics


- [Configure scanning options in Windows Defender AV](configure-advanced-scan-types-windows-defender-antivirus.md)
- [Configure scheduled scans for Windows Defender AV](scheduled-catch-up-scans-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)