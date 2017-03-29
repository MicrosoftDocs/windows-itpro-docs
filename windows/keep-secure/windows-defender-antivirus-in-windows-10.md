---
title: Windows Defender Antivirus
description: Learn how to manage, configure, and use Windows Defender AV, the built-in antimalware and antivirus product available in Windows 10.
keywords: windows defender antivirus, windows defender, antimalware, scep, system center endpoint protection, system center configuration manager, virus, malware, threat, detection, protection, security
ms.assetid: 6A9EB85E-1F3A-40AC-9A47-F44C4A2B55E2
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

## Compatibility with Windows Defender Advanced Threat Protection

Windows Defender Advanced Threat Protection (ATP) is an additional service that helps enterprises to detect, investigate, and respond to advanced persistent threats on their network. 

See the [Windows Defender Advanced Threat Protection](windows-defender-advanced-threat-protection.md) topics for more information about the service.

If you are enrolled in Windows Defender ATP, and you are not using Windows Defender AV as your real-time protection service on your endpoints, Windows Defender will automatically enter into a passive mode. On Windows Server 2016 SKUs, Windows Defender AV will not enter into the passive mode and will run alongisde your other antivirus product.

In passive mode, Windows Defender will continue to run (using the *msmpeng.exe* process), and will continue to be updated, however there will be no Windows Defender user interface, scheduled scans won’t run, and Windows Defender will not provide real-time protection from malware.

You can still [manage updates for Windows Defender](manage-updates-baselines-windows-defender-antivirus.md), however you can't move Windows Defender into the normal active mode if your endpoints have an up-to-date third-party product providing real-time protection from malware.

If you uninstall the other product, and choose to use Windows Defender to provide protection to your endpoints, Windows Defender will automatically return to its normal active mode.


 
## In this library

Topic | Description
:---|:---
[Evaluate Windows Defender Antivirus protection](evaluate-windows-defender-antivirus.md) | Evaluate the protection capabilities of Windows Defender Antivirus with a specialized evaluation guide and powershell script.
[Deploy, manage updates, and report on Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md) | While traditional client deployment is not required for Windows Defender AV, you will need to enable the service. You can also manage how protection and product updates are applies, and receive reports from Configuration Manager, Intune, and with some security information and event monitoring (SIEM) tools.
[Configure Windows Defender features](configure-windows-defender-antivirus-features.md) | Windows Defender AV has a large set of configurable features and options. You can use a number of management tools, including Group Policy, System Center Configuration Manager, Microsoft Intune, PowerShell cmdlets, and Windows Management Instrumentation (WMI). You can configure options such as cloud-delivered protection, always-on monitoring and scanning, and how end-users can interact or override global policy settings.
[Customize, initiate, and review the results of scans and remediation](customize-run-review-remediate-scans-windows-defender-antivirus.md) | You can set up scheduled scans, run on-demand scans, and configure how remediation works when threats are detected.
[Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-antivirus.md)|Review event IDs in Windows Defender Antivirus and take the appropriate actions.
[Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)|The management and configuration tools that you can use with Windows Defender AV are listed and described here.

