---
title: Monitor and report on Microsoft Defender Antivirus protection
description: Use Configuration Manager or security information and event management (SIEM) tools to consume reports, and monitor Microsoft Defender AV with PowerShell and WMI.
keywords: siem, monitor, report, Microsoft Defender AV
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 12/07/2020
ms.reviewer: 
manager: dansimp
ms.technology: mde
---

# Report on Microsoft Defender Antivirus

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

Microsoft Defender Antivirus is built into Windows 10, Windows Server 2019, and Windows Server 2016. Microsoft Defender Antivirus is of your next-generation protection in Microsoft Defender for Endpoint. Next-generation protection helps protect your devices from software threats like viruses, malware, and spyware across email, apps, the cloud, and the web.

With Microsoft Defender Antivirus, you have several options for reviewing protection status and alerts. You can use Microsoft Endpoint Manager to [monitor Microsoft Defender Antivirus](/configmgr/protect/deploy-use/monitor-endpoint-protection) or [create email alerts](/configmgr/protect/deploy-use/endpoint-configure-alerts). Or, you can monitor protection using [Microsoft Intune](/intune/introduction-intune).  

Microsoft Operations Management Suite has an [Update Compliance add-in](/windows/deployment/update/update-compliance-get-started) that reports on key Microsoft Defender Antivirus issues, including protection updates and real-time protection settings.

If you have a third-party security information and event management (SIEM) server, you can also consume [Windows Defender client events](/windows/win32/events/windows-events). 

Windows events comprise several security event sources, including Security Account Manager (SAM) events ([enhanced for Windows 10](/windows/whats-new/whats-new-windows-10-version-1507-and-1511), also see the [Security auditing](/windows/device-security/auditing/security-auditing-overview) topic) and  [Windows Defender events](troubleshoot-microsoft-defender-antivirus.md). 

These events can be centrally aggregated using the [Windows event collector](/windows/win32/wec/windows-event-collector). Often, SIEM servers have connectors for Windows events, allowing you to correlate all security events in your SIEM server. 

You can also [monitor malware events using the Malware Assessment solution in Log Analytics](/azure/log-analytics/log-analytics-malware).

For monitoring or determining status with PowerShell, WMI, or Microsoft Azure, see the [(Deployment, management, and reporting options table)](deploy-manage-report-microsoft-defender-antivirus.md#ref2).

## Related articles

- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
- [Microsoft Defender Antivirus on Windows Server 2016 and 2019](./microsoft-defender-antivirus-on-windows-server-2016.md)
- [Deploy Microsoft Defender Antivirus](deploy-manage-report-microsoft-defender-antivirus.md)