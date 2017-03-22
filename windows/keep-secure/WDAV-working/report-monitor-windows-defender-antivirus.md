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



You can use System Center Configuration Manager to [monitor Windows Defender AV protection](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/monitor-endpoint-protection) or [create email alerts](https://docs.microsoft.com/en-us/sccm/protect/deploy-use/endpoint-configure-alerts), or you can also monitor protection using the [Microsoft Intune console](ttps://docs.microsoft.com/en-us/intune/deploy-use/help-secure-windows-pcs-with-endpoint-protection-for-microsoft-intune#monitor-endpoint-protection).  

If you have a third-party security information and event management (SIEM) tool, you can also consume [Windows Defender client event IDs](troubleshoot-windows-defender-antivirus.md#windows-defender-av-ids) to review specific events and errors from your endpoints.

For monitoring or determining status with PowerShell, WMI, or Microsoft Azure, see the [(Deployment, managament, and reporting options table)](deploy-manage-report-windows-defender-antivirus.md#ref1).

## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Deploy, manage updates, and report on Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md)
