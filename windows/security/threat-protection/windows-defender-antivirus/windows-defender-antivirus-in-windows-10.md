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
---

# Windows Defender Antivirus in Windows 10 and Windows Server 2016

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Windows Defender Antivirus is a built-in antimalware solution that provides next generation protection for desktops, portable computers, and servers.

Windows Defender Antivirus includes:
- [Cloud-delivered protection](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) for near-instant detection and blocking of new and emerging threats. Along with machine learning and the Intelligent Security Graph, cloud-delivered protection is part of the next-gen technologies that power Windows Defender Antivirus. 
- [Always-on scanning](configure-real-time-protection-windows-defender-antivirus.md), using advanced file and process behavior monitoring and other heuristics (also known as "real-time protection")
- [Dedicated protection updates](manage-updates-baselines-windows-defender-antivirus.md) based on machine-learning, human and automated big-data analysis, and in-depth threat resistance research

You can configure and manage Windows Defender Antivirus with:
- System Center Configuration Manager (as System Center Endpoint Protection, or SCEP) 
- Microsoft Intune
- PowerShell
- Windows Management Instrumentation (WMI)
- Group Policy

>[!TIP]
>You can visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to confirm the following features are working and see how they work:
>- Cloud-delivered protection
>- Fast learning (including Block at first sight)
>- Potentially unwanted application blocking

## What's new in Windows 10, version 1803

- The [block at first sight feature](configure-block-at-first-sight-windows-defender-antivirus.md) can now block non-portable executable files (such as JS, VBS, or macros) as well as executable files.
- The [Virus & threat protection area in the Windows Security app](windows-defender-security-center-antivirus.md) now includes a section for ransomware protection. It includes controlled folder access settings and ransomware recovery settings.


## What's new in Windows 10, version 1703

New features for Windows Defender Antivirus in Windows 10, version 1703 include:
- [Updates to how the block at first sight feature can be configured](configure-block-at-first-sight-windows-defender-antivirus.md)
- [The ability to specify the level of cloud-protection](specify-cloud-protection-level-windows-defender-antivirus.md)
- [Windows Defender Antivirus protection in the Windows Security app](windows-defender-security-center-antivirus.md)

We've expanded this documentation library to cover end-to-end deployment, management, and configuration for Windows Defender Antivirus, and we've added some new guides that can help with evaluating and deploying Windows Defender AV in certain scenarios:
- [Evaluation guide for Windows Defender Antivirus](evaluate-windows-defender-antivirus.md)
- [Deployment guide for Windows Defender Antivirus in a virtual desktop infrastructure environment](deployment-vdi-windows-defender-antivirus.md)


<a id="sysreq"></a>
## Minimum system requirements

Windows Defender AV has the same hardware requirements as Windows 10. For more information, see:
-   [Minimum hardware requirements](https://msdn.microsoft.com/library/windows/hardware/dn915086.aspx)
-   [Hardware component guidelines](https://msdn.microsoft.com/library/windows/hardware/dn915049.aspx)

Functionality, configuration, and management is largely the same when using Windows Defender AV on Windows Server 2016; however, [there are some differences](windows-defender-antivirus-on-windows-server-2016.md).

## Related topics

- [Windows Defender AV in the Windows Security app](windows-defender-security-center-antivirus.md)
- [Windows Defender AV on Windows Server 2016](windows-defender-antivirus-on-windows-server-2016.md)
- [Windows Defender AV compatibility](windows-defender-antivirus-compatibility.md)
- [Evaluate Windows Defender AV protection](evaluate-windows-defender-antivirus.md)
- [Deploy, manage updates, and report on Windows Defender AV](deploy-manage-report-windows-defender-antivirus.md)
- [Configure Windows Defender AV features](configure-windows-defender-antivirus-features.md)
- [Customize, initiate, and review the results of scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md)
- [Review event logs and error codes to troubleshoot issues](troubleshoot-windows-defender-antivirus.md)
- [Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)

