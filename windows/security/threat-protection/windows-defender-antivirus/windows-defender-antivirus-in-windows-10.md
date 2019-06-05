---
title: Windows Defender Antivirus
description: Learn how to manage, configure, and use Windows Defender AV, the built-in antimalware and antivirus product available in Windows 10 and Windows Server 2016
keywords: windows defender antivirus, windows defender, antimalware, scep, system center endpoint protection, system center configuration manager, virus, malware, threat, detection, protection, security
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Next Generation Protection in Windows 10 and Windows Server 2016

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Alongside traditional security measures, we also provide next-gen protection. Next-gen protection uses machine learning and the cloud to keep your servers and personal devices safe.

Next-gen security services include:

- [Always-on scanning](configure-real-time-protection-windows-defender-antivirus.md), also known as "real-time protection", for advanced file and process behavior monitoring, and other heuristics
- [Cloud-based delivery](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) for near-instant detection and blocking of new and emerging threats
- [Dedicated protection updates](manage-updates-baselines-windows-defender-antivirus.md) powered by machine-learning, human and automated big-data analysis, and in-depth threat resistance research

We've also pumped up our endpoint security for Windows 10.

>[!TIP]
>You can visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the following features are working and see how they work:
>
>- Cloud-delivered protection
>- Fast learning (including Block at first sight)
>- Potentially unwanted application blocking

## Minimum system requirements

Windows Defender Antivirus is our main vehicle for next-gen protection.

It has the same hardware requirements as Windows 10. For more information, see:

- [Minimum hardware requirements](https://msdn.microsoft.com/library/windows/hardware/dn915086.aspx)
- [Hardware component guidelines](https://msdn.microsoft.com/library/windows/hardware/dn915049.aspx)

## Configuring next-gen services

You can use the following to configure and manage next-gen services in Windows 10, while running Windows Defender Antivirus:

- System Center Configuration Manager (as System Center Endpoint Protection, or SCEP)
- Microsoft Intune
- PowerShell
- Windows Management Instrumentation (WMI)
- Group Policy

Configuration and management is largely the same in Windows Server 2016, while running  Windows Defender Antivirus; however, [there are some differences](windows-defender-antivirus-on-windows-server-2016.md).

## Related topics

- [What's new in Microsoft Defender Advanced Threat Protection](../microsoft-defender-atp/whats-new-in-microsoft-defender-atp.md)
- [Windows Defender Antivirus in the Windows Security app](windows-defender-security-center-antivirus.md)
- [Windows Defender Antivirus on Windows Server 2016](windows-defender-antivirus-on-windows-server-2016.md)
- [Windows Defender Antivirus compatibility](windows-defender-antivirus-compatibility.md)
- [Evaluate Windows Defender Antivirus protection](evaluate-windows-defender-antivirus.md)
- [Deploy, manage updates, and report on Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md)
- [Configure Windows Defender Antivirus features](configure-windows-defender-antivirus-features.md)
- [Customize, initiate, and review the results of scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Review event logs and error codes to troubleshoot issues](troubleshoot-windows-defender-antivirus.md)
- [Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)
