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
localizationpriority: medium
author: iaanw
---

# Report on Windows Defender Antivirus protection

**Applies to:**

- Windows 10

**Audience**

- IT administrators

There are a number of ways you can review protection status and alerts, depending on the management tool you are using for Windows Defender AV.



You can use System Center Configuration Manager to [monitor Windows Defender AV protection](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/monitor-endpoint-protection) or [create email alerts](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-configure-alerts), or you can also monitor protection using the [Microsoft Intune console](https://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#monitor-endpoint-protection).  

If you have a third-party security information and event management (SIEM) tool, you can also consume [Windows Defender client events](https://msdn.microsoft.com/en-us/library/windows/desktop/aa964766(v=vs.85).aspx). 

Windows events comprise several security event sources, including Security Account Manager (SAM) events ([enhanced for Windows 10](https://technet.microsoft.com/library/mt431757.aspx), also see the [Security audting](security-auditing-overview.md) topic) and  [Windows Defender events](troubleshoot-windows-defender-antivirus.md). 

These events can be centrally aggregated using the [Windows event collector](https://msdn.microsoft.com/en-us/library/windows/desktop/bb427443(v=vs.85).aspx). It is common practice for SIEMs to have connectors for Windows events. This technique allows for correlation of all security events from the machine in the SIEM. 

You can also [monitor malware events using the Malware Assessment solution in Log Analytics](https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-malware).

For monitoring or determining status with PowerShell, WMI, or Microsoft Azure, see the [(Deployment, management, and reporting options table)](deploy-manage-report-windows-defender-antivirus.md#ref2).

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Deploy, manage updates, and report on Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md)
