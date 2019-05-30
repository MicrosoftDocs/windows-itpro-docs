---
title: Monitor and report on Windows Defender Antivirus protection
description: Use Configuration Manager or SIEM tools to consume reports, and monitor Windows Defender AV with PowerShell and WMI.
keywords: siem, monitor, report, windows defender av
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.author: v-anbic
ms.date: 09/03/2018
---

# Report on Windows Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

There are a number of ways you can review protection status and alerts, depending on the management tool you are using for Windows Defender Antivirus.

You can use System Center Configuration Manager to [monitor Windows Defender Antivirus](https://docs.microsoft.com/sccm/protect/deploy-use/monitor-endpoint-protection) or [create email alerts](https://docs.microsoft.com/sccm/protect/deploy-use/endpoint-configure-alerts), or you can also monitor protection using [Microsoft Intune](https://docs.microsoft.com/intune/introduction-intune).  

Microsoft Operations Management Suite has an [Update Compliance add-in](/windows/deployment/update/update-compliance-get-started) that reports on key Windows Defender Antivirus issues, including protection updates and real-time protection settings.


If you have a third-party security information and event management (SIEM) tool, you can also consume [Windows Defender client events](https://msdn.microsoft.com/library/windows/desktop/aa964766(v=vs.85).aspx). 

Windows events comprise several security event sources, including Security Account Manager (SAM) events ([enhanced for Windows 10](https://technet.microsoft.com/library/mt431757.aspx), also see the [Security audting](/windows/device-security/auditing/security-auditing-overview) topic) and  [Windows Defender events](troubleshoot-windows-defender-antivirus.md). 

These events can be centrally aggregated using the [Windows event collector](https://msdn.microsoft.com/library/windows/desktop/bb427443(v=vs.85).aspx). It is common practice for SIEMs to have connectors for Windows events. This technique allows for correlation of all security events from the machine in the SIEM. 

You can also [monitor malware events using the Malware Assessment solution in Log Analytics](https://docs.microsoft.com/azure/log-analytics/log-analytics-malware).

For monitoring or determining status with PowerShell, WMI, or Microsoft Azure, see the [(Deployment, management, and reporting options table)](deploy-manage-report-windows-defender-antivirus.md#ref2).

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Deploy Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md)
