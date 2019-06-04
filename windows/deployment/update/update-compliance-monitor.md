---
title: Monitor Windows Updates and Windows Defender AV with Update Compliance (Windows 10)
ms.reviewer: 
manager: laurawi
description: You can use Update Compliance in Azure Portal to monitor the progress of updates and key antimalware protection features on devices in your network.
keywords: oms, operations management suite, wdav, updates, upgrades, antivirus, antimalware, signature, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
---

# Monitor Windows Updates with Update Compliance

## Introduction

Update Compliance is a [Windows Analytics solution](windows-analytics-overview.md) that enables organizations to:

* Monitor Windows 10 Professional, Education, and Enterprise security, quality, and feature updates.
* View a report of device and update issues related to compliance that need attention.
* See the status of Windows Defender Antivirus signatures and threats.
* Check bandwidth savings incurred across multiple content types by using [Delivery Optimization](waas-delivery-optimization.md).

Update Compliance is offered through the Azure portal, and is available free for devices that meet the [prerequisites](update-compliance-get-started.md#update-compliance-prerequisites).

Update Compliance uses Windows 10 and Windows Defender Antivirus diagnostic data for all of its reporting. It collects system data including update deployment progress, [Windows Update for Business](waas-manage-updates-wufb.md) configuration data, Windows Defender Antivirus data, and Delivery Optimization usage data, and then sends this data to a secure cloud to be stored for analysis and usage in [Azure Log Analytics](https://docs.microsoft.com/azure/log-analytics/query-language/get-started-analytics-portal).

See the following topics in this guide for detailed information about configuring and using the Update Compliance solution:

- [Get started with Update Compliance](update-compliance-get-started.md): How to add Update Compliance to your environment.
- [Using Update Compliance](update-compliance-using.md): How to begin using Update Compliance.

## Update Compliance architecture

The Update Compliance architecture and data flow is summarized by the following four-step process:

1. User computers send diagnostic data to a secure Microsoft data center using the Microsoft Data Management Service.<BR>
2. Diagnostic data is analyzed by the Update Compliance Data Service.<BR>
3. Diagnostic data is pushed from the Update Compliance Data Service to your Azure Monitor workspace.<BR>
4. Diagnostic data is available in the Update Compliance solution.<BR>


>[!NOTE]
>This process assumes that Windows diagnostic data is enabled and data sharing is enabled as described in [Enrolling devices in Windows Analytics](windows-analytics-get-started.md).



 
## Related topics

[Get started with Update Compliance](update-compliance-get-started.md)<BR>
[Use Update Compliance to monitor Windows Updates](update-compliance-using.md)
