---
title: Windows Defender Antivirus
description: Learn how to manage, configure, and use Windows Defender AV, the built-in antimalware and antivirus product available in Windows 10.
keywords: windows defender antivirus, windows defender, antimalware, scep, system center endpoint protection, system center configuration manager, virus, malware, threat, detection, protection, security
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Windows Defender Antivirus in Windows 10

**Applies to**
-   Windows 10

Windows Defender Antivirus is a built-in antimalware solution that provides security and antimalware management for desktops, portable computers, and servers.

This library of documentation is aimed for enterprise security administrators who are either considering deployment, or have already deployed and are wanting to manage and configure Windows Defender AV on PC endpoints in their network.

For more important information about running Windows Defender on a server platform, see [Windows Defender Overview for Windows Server](https://technet.microsoft.com/library/dn765478.aspx).

Windows Defender AV can be managed with:
- System Center Configuration Manager (as System Center Endpoint Protection, or SCEP) 
- Microsoft Intune

It can be configured with:
- System Center Configuration Manager (as System Center Endpoint Protection, or SCEP) 
- Microsoft Intune
- PowerShell
- Windows Management Instrumentation (WMI)
- Group Policy

Some of the highlights of Windows Defender AV include:
- [Cloud-delivered protection](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) for near-instant detection and blocking of new and emerging threats
- [Always-on scanning](configure-real-time-protection-windows-defender-antivirus.md), using advanced file and process behavior monitoring and other heuristics (also known as "real-time protection")
- [Dedicated protection updates](manage-updates-baselines-windows-defender-antivirus.md) based on machine-learning, human and automated big-data analysis, and in-depth threat resistance research

## What's new in Windows 10, version 1703

New features for Windows Defender AV in Windows 10, version 1703 include:
- [Updates to how the Block at First Sight feature can be configured](configure-block-at-first-sight-windows-defender-antivirus.md)
- [The ability to specify the level of cloud-protection](specify-cloud-protection-level-windows-defender-antivirus.md)
- [Windows Defender Antivirus protection in the Windows Defender Security Center app](windows-defender-security-center-antivirus.md)

We've expanded this documentation library to cover end-to-end deployment, management, and configuration for Windows Defender AV, and we've added some new guides that can help with evaluating and deploying Windows Defender AV in certain scenarios:
- [Evaluation guide for Windows Defender AV](evaluate-windows-defender-antivirus.md)
- [Deployment guide for Windows Defender AV in a virtual desktop infrastructure environment](deployment-vdi-windows-defender-antivirus.md)

See the [In this library](#in-this-library) list at the end of this topic for links to each of the updated sections in this library.



<a id="sysreq"></a>
## Minimum system requirements

Windows Defender has the same hardware requirements as Windows 10. For more information, see:
-   [Minimum hardware requirements](https://msdn.microsoft.com/library/windows/hardware/dn915086.aspx)
-   [Hardware component guidelines](https://msdn.microsoft.com/library/windows/hardware/dn915049.aspx)


Some features require a certain version of Windows 10 - the minimum version required is specified at the top of each topic.

Functionality, configuration, and management is largely the same when using Windows Defender Antivirus on Windows Server 2016, however [there are some differences](windows-defender-antivirus-on-windows-server-2016.md).



 
## In this library

Topic | Description
:---|:---
[Evaluate Windows Defender Antivirus protection](evaluate-windows-defender-antivirus.md) | Evaluate the protection capabilities of Windows Defender Antivirus with a specialized evaluation guide and PowerShell script
[Deploy, manage updates, and report on Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md) | While traditional client deployment is not required for Windows Defender AV, you will need to enable the service. You can also manage how protection and product updates are applies, and receive reports from Configuration Manager, Intune, and with some security information and event monitoring (SIEM) tools
[Configure Windows Defender features](configure-windows-defender-antivirus-features.md) | Windows Defender AV has a large set of configurable features and options. You can configure options such as cloud-delivered protection, always-on monitoring and scanning, and how end-users can interact or override global policy settings
[Customize, initiate, and review the results of scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md) | You can set up scheduled scans, run on-demand scans, and configure how remediation works when threats are detected
[Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-antivirus.md)|Review event IDs and error codes in Windows Defender Antivirus to determine causes of problems and troubleshoot issues
[Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)|The management and configuration tools that you can use with Windows Defender AV are listed and described here

