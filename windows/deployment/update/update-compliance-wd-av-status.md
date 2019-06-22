---
title: Update Compliance - Windows Defender AV Status report
ms.reviewer: 
manager: laurawi
description: an overview of the Windows Defender AV Status report
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-analytics
ms.topic: article
---

# Windows Defender AV Status

![The Windows Defender AV Status report](images/UC_workspace_WDAV_status.png)

The Windows Defender AV Status section deals with data concerning signature and threat status for devices that use Windows Defender Antivirus. The section tile in the [Overview Blade](update-compliance-using.md#overview-blade) provides the percentage of devices with insufficient protection – this percentage only considers devices using Windows Defender Antivirus.

>[!NOTE]
>Update Compliance's Windows Defender Antivirus status is compatible with E3, B, F1, VL Professional and below licenses. Devices with an E5 license are not shown here; devices with an E5 license can be monitored using the [Windows Defender ATP portal](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/configure-endpoints-windows-defender-advanced-threat-protection). If you'd like to learn more about Windows 10 licensing, see the [Windows 10 product licensing options](https://www.microsoft.com/en-us/Licensing/product-licensing/windows10.aspx). 

# Windows Defender AV Status sections
The **Protection Status** blade gives a count for devices that have either out-of-date signatures or real-time protection turned off. Below, it gives a more detailed breakdown of the two issues. Selecting any of these statuses will navigate you to a Log Search view containing the query. 

The **Threat Status** blade shows, among devices that have encountered threats, how many were and were not remediated successfully. It also provides a detailed count. Selecting either of these will take you to the respective query in Log Search for further investigation. 

Here are some important terms to consider when using the Windows Defender AV Status section of Update Compliance:
* **Signature out of date** devices are devices with a signature older than 14 days.
* **No real-time protection** devices are devices that are using Windows Defender AV but have turned off real-time protection.
* **Recently disappeared** devices are devices that were previously seen by Windows Defender AV and are no longer seen in the past 7 days.
* **Remediation failed** devices are devices where Windows Defender AV failed to remediate the threat. This could be due to a number of reasons, including a full disk, network error, operation aborted, etc. Manual intervention might be needed from IT team.
* **Not assessed** devices are devices where either a non-Microsoft AV solution is used or it has been more than 7 days since the device recently disappeared.

## Windows Defender data latency
Because of the way Windows Defender is associated with the rest of Windows device data, Defender data for new devices might take much longer to appear than other data types. This process could take up to 28 days. 
