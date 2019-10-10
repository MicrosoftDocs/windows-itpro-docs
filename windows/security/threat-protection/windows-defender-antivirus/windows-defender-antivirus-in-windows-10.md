---
title: Next-generation protection in Windows 10 and Windows Server 2016
description: Learn how to manage, configure, and use Windows Defender AV, the built-in antimalware and antivirus product available in Windows 10 and Windows Server 2016
keywords: windows defender antivirus, windows defender, antimalware, scep, system center endpoint protection, system center configuration manager, virus, malware, threat, detection, protection, security
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.date: 10/10/2019
ms.reviewer: 
manager: dansimp
---

# Next-generation protection in Windows 10 and Windows Server 2016

**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Next-generation protection provides enhanced safety, alongside more traditional security measures. These services use machine learning and the cloud to keep all devices in your enterprise organization network safe.

Next-generation protection services include:

- [Always-on scanning](configure-real-time-protection-windows-defender-antivirus.md), also known as "real-time protection", for advanced file and process behavior monitoring
- [Cloud-based delivery](utilize-microsoft-cloud-protection-windows-defender-antivirus.md) for near-instant detection and blocking of new and emerging threats
- [Dedicated protection updates](manage-updates-baselines-windows-defender-antivirus.md) powered by machine-learning, big-data analysis, and in-depth threat resistance research

>[!TIP]
>Visit the Windows Defender Testground website at [demo.wd.microsoft.com](https://demo.wd.microsoft.com?ocid=cx-wddocs-testground) to see how the following features work:
>
>- [Cloud-delivered protection](enable-cloud-protection-windows-defender-antivirus.md)
>- Fast learning (including [block at first sight](configure-block-at-first-sight-windows-defender-antivirus.md))
>- [Potentially unwanted application blocking](detect-block-potentially-unwanted-apps-windows-defender-antivirus.md)

> [!NOTE]
> For more information regarding what's new in each Windows version, please refer to [What's new in Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/whats-new-in-microsoft-defender-atp).

## Minimum system requirements

Windows Defender Antivirus is your main vehicle for next-generation protection, and it has the same hardware requirements as Windows 10. For more information, see:

- [Minimum hardware requirements](https://docs.microsoft.com/windows-hardware/design/minimum/minimum-hardware-requirements-overview)
- [Hardware component guidelines](https://docs.microsoft.com/windows-hardware/design/component-guidelines/components)

## Configuring Next-generation services

You can use the following to configure and manage next-generation services in Windows 10, while running Windows Defender Antivirus:

- System Center Configuration Manager (as System Center Endpoint Protection, or SCEP)
- Microsoft Intune
- PowerShell
- Windows Management Instrumentation (WMI)
- Group Policy

Configuration and management is largely the same in Windows Server 2016, while running Windows Defender Antivirus; however, [there are some differences](windows-defender-antivirus-on-windows-server-2016.md).

## Related topics

- [Full version history for Microsoft Defender Advanced Threat Protection](../microsoft-defender-atp/whats-new-in-microsoft-defender-atp.md)
- [Windows Defender Antivirus management and configuration](configuration-management-reference-windows-defender-antivirus.md)
- [Evaluate Windows Defender Antivirus protection](evaluate-windows-defender-antivirus.md)
- [Enable cloud protection](enable-cloud-protection-windows-defender-antivirus.md)
- [Configure real-time protection](configure-real-time-protection-windows-defender-antivirus.md)
- [Configure cloud block at first sight](configure-block-at-first-sight-windows-defender-antivirus.md)
- [Create and deploy cloud-protected antimalware policies](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-antimalware-policies#cloud-protection-service.md)
