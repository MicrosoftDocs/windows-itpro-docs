---
title: Microsoft Defender Antivirus compatibility with other security products
description: What to expect from Microsoft Defender Antivirus with other security products and the operating systems you are using.
keywords: windows defender, next-generation, antivirus, compatibility, passive mode
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: tewchen, pahuijbr, shwjha
manager: dansimp
ms.date: 01/27/2021
ms.technology: mde
---

# Microsoft Defender Antivirus compatibility

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

## Overview

Microsoft Defender Antivirus is automatically enabled and installed on endpoints and devices that are running Windows 10. But what happens when another antivirus/antimalware solution is used? It depends on whether you're using [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection) together with your antivirus protection.
- If your organization's endpoints and devices are protected with a non-Microsoft antivirus/antimalware solution, and Microsoft Defender for Endpoint is not used, then Microsoft Defender Antivirus automatically goes into disabled mode.
- If your organization is using Microsoft Defender for Endpoint together with a non-Microsoft antivirus/antimalware solution, then Microsoft Defender Antivirus automatically goes into passive mode. (Real-time protection and threats are not remediated by Microsoft Defender Antivirus.)
- If your organization is using Microsoft Defender for Endpoint together with a non-Microsoft antivirus/antimalware solution, and you have [EDR in block mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/edr-in-block-mode) enabled, then whenever a malicious artifact is detected, Microsoft Defender for Endpoint takes action to block and remediate the artifact.

## Antivirus and Microsoft Defender for Endpoint

The following table summarizes what happens with Microsoft Defender Antivirus when third-party antivirus products are used together or without Microsoft Defender for Endpoint. 


| Windows version   | Antimalware protection  | Microsoft Defender for Endpoint enrollment | Microsoft Defender Antivirus state     |
|------|------|-------|-------|
| Windows 10  | A third-party product that is not offered or developed by Microsoft | Yes  | Passive mode  |
| Windows 10  | A third-party product that is not offered or developed by Microsoft | No   | Automatically disabled mode     |
| Windows 10  | Microsoft Defender Antivirus | Yes  | Active mode | 
| Windows 10  | Microsoft Defender Antivirus | No   | Active mode |
| Windows Server, version 1803 or newer, or Windows Server 2019 | A third-party product that is not offered or developed by Microsoft | Yes  | Must be set to passive mode (manually) <sup>[[1](#fn1)]<sup>  | 
| Windows Server, version 1803 or newer, or Windows Server 2019 | A third-party product that is not offered or developed by Microsoft | No  | Must be disabled (manually) <sup>[[2](#fn2)]<sup></sup>  |
| Windows Server, version 1803 or newer, or Windows Server 2019 | Microsoft Defender Antivirus  | Yes |         Active mode  |
| Windows Server, version 1803 or newer, or Windows Server 2019 | Microsoft Defender Antivirus | No  | Active mode |
| Windows Server 2016 | Microsoft Defender Antivirus | Yes | Active mode |
| Windows Server 2016 | Microsoft Defender Antivirus | No | Active mode |
| Windows Server 2016 | A third-party product that is not offered or developed by Microsoft | Yes | Must be disabled (manually) <sup>[[2](#fn2)]<sup> |
| Windows Server 2016 | A third-party product that is not offered or developed by Microsoft | No | Must be disabled (manually) <sup>[[2](#fn2)]<sup> |

(<a id="fn1">1</a>)  On Windows Server, version 1803 or newer, or Windows Server 2019, Microsoft Defender Antivirus does not enter passive mode automatically when you install a non-Microsoft antivirus product. In those cases, [set Microsoft Defender Antivirus to passive mode](microsoft-defender-antivirus-on-windows-server-2016.md#need-to-set-microsoft-defender-antivirus-to-passive-mode) to prevent problems caused by having multiple antivirus products installed on a server.

If you are using Windows Server, version 1803 or newer, or Windows Server 2019, you can set Microsoft Defender Antivirus to passive mode by setting the following registry key:
- Path: `HKLM\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection`
- Name: `ForceDefenderPassiveMode`
- Type: `REG_DWORD`
- Value: `1`

> [!NOTE]
> The `ForceDefenderPassiveMode` registry key is not supported on Windows Server 2016.

(<a id="fn2">2</a>) On Windows Server 2016, Microsoft Defender Antivirus does not enter passive mode automatically when you install a non-Microsoft antivirus product. In addition, Microsoft Defender Antivirus is not supported in passive mode. In those cases, [disable/uninstall Microsoft Defender Antivirus manually](microsoft-defender-antivirus-on-windows-server-2016.md#are-you-using-windows-server-2016) to prevent problems caused by having multiple antivirus products installed on a server.

See [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server-2016.md) for key differences and management options for Windows Server installations.

> [!IMPORTANT]
> Microsoft Defender Antivirus is only available on devices running Windows 10, Windows Server 2016, Windows Server, version 1803 or later, and Windows Server 2019.
>
> In Windows 8.1 and Windows Server 2012, enterprise-level endpoint antivirus protection is offered as [System Center Endpoint Protection](https://technet.microsoft.com/library/hh508760.aspx), which is managed through Microsoft Endpoint Configuration Manager.
>
> Windows Defender is also offered for [consumer devices on Windows 8.1 and Windows Server 2012](https://technet.microsoft.com/library/dn344918#BKMK_WindowsDefender), although it does not provide enterprise-level management (or an interface on Windows Server 2012 Server Core installations).

## Functionality and features available in each state

The table in this section summarizes the functionality and features that are available in each state. The table is designed to be informational only. It is intended to describe the features & capabilities that are actively working or not, according to whether Microsoft Defender Antivirus is in active mode, in passive mode, or is disabled/uninstalled. 

> [!IMPORTANT]
> Do not turn off capabilities, such as real-time protection, cloud-delivered protection, or limited periodic scanning, if you are using Microsoft Defender Antivirus in passive mode or you are using EDR in block mode. 

|Protection |Active mode |Passive mode |EDR in block mode |Disabled or uninstalled |
|:---|:---|:---|:---|:---|
| [Real-time protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus) and [cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus) | Yes | No <sup>[[3](#fn3)]<sup> | No | No |
| [Limited periodic scanning availability](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/limited-periodic-scanning-microsoft-defender-antivirus) | No | No | No | Yes |
| [File scanning and detection information](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/customize-run-review-remediate-scans-microsoft-defender-antivirus) | Yes | Yes | Yes | No |
|  [Threat remediation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-remediation-microsoft-defender-antivirus) | Yes | See note <sup>[[4](#fn4)]<sup> | Yes | No |
| [Security intelligence updates](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/manage-updates-baselines-microsoft-defender-antivirus) | Yes | Yes | Yes | No |

(<a id="fn3">3</a>) In general, when Microsoft Defender Antivirus is in passive mode, real-time protection does not provide any blocking or enforcement, even though it is enabled and in passive mode. 

(<a id="fn4">4</a>) When Microsoft Defender Antivirus is in passive mode, threat remediation features are active only during scheduled or on-demand scans.

> [!NOTE]
> [Microsoft 365 Endpoint data loss prevention](https://docs.microsoft.com/microsoft-365/compliance/endpoint-dlp-learn-about) protection continues to operate normally when Microsoft Defender Antivirus is in active or passive mode.

## Keep the following points in mind

- In active mode, Microsoft Defender Antivirus is used as the antivirus app on the machine. All configuration made with Configuration Manager, Group Policy, Intune, or other management products will apply. Files are scanned and threats remediated, and detection information are reported in your configuration tool (such as Configuration Manager or the Microsoft Defender Antivirus app on the machine itself).

- In passive mode, Microsoft Defender Antivirus is not used as the antivirus app, and threats are not remediated by Microsoft Defender Antivirus. Files are scanned and reports are provided for threat detections that are shared with the Microsoft Defender for Endpoint service. Therefore, you might encounter alerts in the Security Center console with Microsoft Defender Antivirus as a source, even when Microsoft Defender Antivirus is in Passive mode.

- When [EDR in block mode](../microsoft-defender-atp/edr-in-block-mode.md) is turned on and Microsoft Defender Antivirus is not the primary antivirus solution, it can still detect and remediate malicious items.

- When disabled, Microsoft Defender Antivirus is not used as the antivirus app. Files are not scanned and threats are not remediated. Disabling/uninstalling Microsoft Defender Antivirus is not recommended in general; if possible, keep Microsoft Defender Antivirus in passive mode if you are using a non-Microsoft antimalware/antivirus solution.

- If you are enrolled in Microsoft Defender for Endpoint and you are using a third-party antimalware product, then passive mode is enabled. [The service requires common information sharing from Microsoft Defender Antivirus service](../microsoft-defender-atp/defender-compatibility.md) in order to properly monitor your devices and network for intrusion attempts and attacks.

- When Microsoft Defender Antivirus is disabled automatically, it can be re-enabled automatically if the protection offered by a non-Microsoft antivirus product expires or otherwise stops providing real-time protection from viruses, malware, or other threats. Automatic re-enabling helps to ensure that antivirus protection is maintained on your devices. It also allows you to enable [limited periodic scanning](limited-periodic-scanning-microsoft-defender-antivirus.md), which uses the Microsoft Defender Antivirus engine to periodically check for threats in addition to your main antivirus app.

- When Microsoft Defender Antivirus is in passive mode, you can still [manage updates for Microsoft Defender Antivirus](manage-updates-baselines-microsoft-defender-antivirus.md); however, you can't move Microsoft Defender Antivirus into active mode if your devices have an up-to-date, non-Microsoft antivirus product providing real-time protection from malware.

   If you uninstall the non-Microsoft antivirus product, and use Microsoft Defender Antivirus to provide protection to your devices, Microsoft Defender Antivirus will return to its normal active mode automatically.

> [!WARNING]
> Do not disable, stop, or modify any of the associated services that are used by Microsoft Defender Antivirus, Microsoft Defender for Endpoint, or the Windows Security app. This recommendation includes the *wscsvc*, *SecurityHealthService*, *MsSense*, *Sense*, *WinDefend*, or *MsMpEng* services and processes. Manually modifying these services can cause severe instability on your devices and can make your network vulnerable. Disabling, stopping, or modifying those services can also cause problems when using non-Microsoft antivirus solutions and how their information is displayed in the [Windows Security app](microsoft-defender-security-center-antivirus.md).


## See also

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Microsoft Defender Antivirus on Windows Server](microsoft-defender-antivirus-on-windows-server-2016.md)
- [EDR in block mode](../microsoft-defender-atp/edr-in-block-mode.md)
- [Configure Endpoint Protection](https://docs.microsoft.com/mem/configmgr/protect/deploy-use/endpoint-protection-configure)
- [Address false positives/negatives in Microsoft Defender for Endpoint](../microsoft-defender-atp/defender-endpoint-false-positives-negatives.md)
- [Learn about Microsoft 365 Endpoint data loss prevention](https://docs.microsoft.com/microsoft-365/compliance/endpoint-dlp-learn-about)
