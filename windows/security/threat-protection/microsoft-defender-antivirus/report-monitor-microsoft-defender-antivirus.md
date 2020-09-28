---
title: Monitor and report on Microsoft Defender Antivirus protection
description: Use Configuration Manager or security information and event management (SIEM) tools to consume reports, and monitor Microsoft Defender AV with PowerShell and WMI.
keywords: siem, monitor, report, Microsoft Defender AV
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

# Report on Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

With Microsoft Defender Antivirus, you have several options for reviewing protection status and alerts. You can use Microsoft Endpoint Configuration Manager to [monitor Microsoft Defender Antivirus](https://docs.microsoft.com/configmgr/protect/deploy-use/monitor-endpoint-protection) or [create email alerts](https://docs.microsoft.com/configmgr/protect/deploy-use/endpoint-configure-alerts). Or, you can monitor protection using [Microsoft Intune](https://docs.microsoft.com/intune/introduction-intune).  

Microsoft Operations Management Suite has an [Update Compliance add-in](/windows/deployment/update/update-compliance-get-started) that reports on key Microsoft Defender Antivirus issues, including protection updates and real-time protection settings.

If you have a third-party security information and event management (SIEM) server, you can also consume [Windows Defender client events](https://msdn.microsoft.com/library/windows/desktop/aa964766(v=vs.85).aspx). 

Windows events comprise several security event sources, including Security Account Manager (SAM) events ([enhanced for Windows 10](https://technet.microsoft.com/library/mt431757.aspx), also see the [Security auditing](/windows/device-security/auditing/security-auditing-overview) topic) and  [Windows Defender events](troubleshoot-microsoft-defender-antivirus.md). 

These events can be centrally aggregated using the [Windows event collector](https://msdn.microsoft.com/library/windows/desktop/bb427443(v=vs.85).aspx). Often, SIEM servers have connectors for Windows events, allowing you to correlate all security events in your SIEM server. 

You can also [monitor malware events using the Malware Assessment solution in Log Analytics](https://docs.microsoft.com/azure/log-analytics/log-analytics-malware).

For monitoring or determining status with PowerShell, WMI, or Microsoft Azure, see the [(Deployment, management, and reporting options table)](deploy-manage-report-microsoft-defender-antivirus.md#ref2).

## Related articles

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)

- [Deploy Microsoft Defender Antivirus](deploy-manage-report-microsoft-defender-antivirus.md)
