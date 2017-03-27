---
title: Block Potentially Unwanted Applications with Windows Defender AV
description: Enable the Potentially Unwanted Application (PUA) feature in Windows Defender Antivirus to block unwanted software such as adware.
keywords: pua, enable, unwanted software, unwanted apps, adware, browser toolbar, detect, block, windows defender
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: detect
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Detect and block Potentially Unwanted Applications

**Applies to:**

- Windows 10

**Audience**

- Enterprise security administrators

**Manageability available with**

- System Center Configuration Manager
- PowerShell cmdlets
- Microsoft Intune

The Potentially Unwanted Application (PUA) protection feature in Windows Defender Antivirus can identify and block PUAs from downloading and installing on endpoints in your network.

These applications are not considered viruses, malware, or other types of threats, but might perform actions on endpoints that adversely affect their performance or use. PUA can also refer to applications that are considered to have a poor reputation.

Typical PUA behavior includes:
- Various types of software bundling
- Ad-injection into web browsers
- Driver and registry optimizers that detect issues, request payment to fix the errors, but remain on the endpoint and make no changes or optimizations (also known as "rogue antivirus" programs)

These applications can increase the risk of your network being infected with malware, cause malware infections to be harder to identify, and can waste IT resources in cleaning up the applications.

## How it works

PUAs are blocked when a user attempts to download or install the detected file, and if the file meets one of the following conditions:
- The file is being scanned from the browser
- The file is in the %downloads% folder
- The file is in the %temp% folder

The file is placed in the quarantine section so it won’t run. 

When a PUA is detected on an endpoint, the endpoint will present a notification to the user ([unless notifications have been disabled](configure-notifications-windows-defender-antivirus.md)) in the same format as normal threat detections (prefaced with "PUA:"). 

They will also appear in the usual [quarantine list in the Windows Defender Security Center app](windows-defender-security-center-antivirus.md#detection-history).


## View PUA events

PUA events are reported in the Windows Event Viewer and not in System Center Configuration Manager or Intune. 

See [Troubleshoot event IDs](troubleshoot-windows-defender-antivirus.md) for details on viewing Windows Defender Antivirus events. PUA events are recorded under event ID 1160.


## Configure the PUA protection feature

You can enable the PUA protection feature with System Center Configuration Manager, PowerShell cmdlets, or Microsoft Intune.

You can also use the PUA audit mode to detect PUA without blocking them. The detections will be captured in the Windows event log. 

This feature is useful if your company is conducting an internal software security compliance check and you’d like to avoid any false positives.


**Use Configuration Manager to configure the PUA protection feature:**

PUA protection is enabled by default in System Center Configuration Manager (current branch), including version 1606 and later. 

See [How to create and deploy antimalware policies: Scheduled scans settings](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-antimalware-policies#real-time-protection-settings) for details on configuring System Center Configuration Manager (current branch).

For Configuration Manager 2012, see [How to Deploy Potentially Unwanted Application Protection Policy for Endpoint Protection in Configuration Manager](https://technet.microsoft.com/library/hh508770.aspx#BKMK_PUA).

> [!NOTE]
> PUA events are reported in the Windows Event Viewer and not in System Center Configuration Manager.  

**Use PowerShell cmdlets to configure the PUA protection feature:**

Use the following cmdlet:

```PowerShell
Set-MpPreference -PUAProtection
```

Setting the value for this cmdlet to `Enabled` will turn the feature on if it has been disabled. 

Setting `AuditMode` will detect PUAs but will not block them.

See [Use PowerShell cmdlets to configure and run Windows Defender Antivirus](use-powershell-cmdlets-windows-defender-antivirus.md) and [Defender cmdlets](https://technet.microsoft.com/en-us/library/dn433280.aspx) for more information on how to use PowerShell with Windows Defender Antivirus.



**Use Intune to configure the PUA protection feature**

See [Help secure Windows PCs with Endpoint Protection for Microsoft Intune](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune) and [Windows Defender policy settings in Windows 10](https://docs.microsoft.com/en-us/intune/deploy-use/windows-10-policy-settings-in-microsoft-intune#windows-defender-1) for more details.



## Related topics

- [Windows Defender Antivirus](windows-defender-antivirus-in-windows-10.md)
- [Configure behavioral, heuristic, and real-time protection](configure-protection-features-windows-defender-antivirus.md)


