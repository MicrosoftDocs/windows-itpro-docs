---
title: Update Compliance - Windows Defender AV Status report
description: an overview of the Windows Defender AV Status report
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: jaimeo
ms.author: jaimeo
ms.date: 05/17/2018
---

# Windows Defender AV Status

![The Windows Defender AV Status report](images/uc-windowsdefenderavstatus.png)

The Windows Defender AV Status section deals with data concerning signature and threat status for devices that use Windows Defender Antivirus. The section tile in the [Overview Blade](update-compliance-using.md#overview-blade) provides the percentage of devices with insufficient protection – this percentage only considers devices using Windows Defender Antivirus.

>[!NOTE]
>Customers with E5 licenses can monitor the Windows Defender AV status by using the Windows Defender ATP portal. For more information about monitoring devices with this portal, see [Onboard Windows 10 machines](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-endpoints-windows-defender-advanced-threat-protection).

The **Protection Status** blade gives a count for devices that have either out-of-date signatures or real-time protection turned off. Below, it gives a more detailed breakdown of the two issues. Clicking any of these statuses will navigate you to a Log Search view containing the query. 

The **Threat Status** blade provides a visualization of, for devices that have encountered threats, how many were and were not remediated successfully. It also provides a detailed count. Clicking either of these will navigate to the respective query in Log Search for further investigation. 

Here are some important terms to consider when utilizing the Windows Defender AV Status section of Update Compliance:
* **Signature out of date** devices are devices with signature older than 14 days.
* **No real-time protection** devices are devices who are using Windows Defender AV but have turned off Real-time protection.
* **Recently disappeared** devices are devices that were previously seen by Windows Defender AV and are no longer seen in the past 7 days.
* **Remediation failed** devices are devices where Windows Defender AV failed to remediate the threat. This can be due to reason like disk full, network error, operation aborted, etc. Manual intervention may be needed from IT team.
* **Not assessed** devices are devices where either a third-party AV solution is used or it has been more than 7 days since the device recently disappeared.
