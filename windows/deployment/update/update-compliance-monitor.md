---
title: Monitor Windows Updates and Microsoft Defender AV with Update Compliance (Windows 10)
ms.reviewer: 
manager: laurawi
description: You can use Update Compliance in Azure Portal to monitor the progress of updates and key antimalware protection features on devices in your network.
keywords: oms, operations management suite, wdav, updates, upgrades, antivirus, antimalware, signature, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Monitor Windows Updates with Update Compliance

> [!IMPORTANT]
> While [Windows Analytics was retired on January 31, 2020](https://docs.microsoft.com/windows/deployment/update/update-compliance-monitor), support for Update Compliance has continued through the Azure Portal. Two planned feature removals for Update Compliance – Microsoft Defender Antivirus reporting and Perspectives – are now scheduled to be removed beginning Monday, May 11, 2020. 
> * The retirement of Microsoft Defender Antivirus reporting will begin Monday, May 11, 2020. You can continue to review malware definition status and manage and monitor malware attacks with Microsoft Endpoint Manager's [Endpoint security node in Microsoft Intune](https://docs.microsoft.com/mem/intune/protect/endpoint-security-antivirus-policy#antivirus-policy-reports). Configuration Manager customers can monitor Endpoint Protection with [Endpoint Protection in Configuration Manager](https://docs.microsoft.com/configmgr/protect/deploy-use/monitor-endpoint-protection).
> * The Perspectives feature of Update Compliance will be retired Monday, May 11, 2020. The Perspectives feature is part of the Log Search portal of Log Analytics, which was deprecated on February 15, 2019 in favor of [Azure Monitor Logs](https://docs.microsoft.com/azure/azure-monitor/log-query/log-search-transition). Your Update Compliance solution will be automatically upgraded to Azure Monitor Logs, and the data available in Perspectives will be migrated to a set of queries in the [Needs Attention section](update-compliance-need-attention.md) of Update Compliance.

## Introduction

Update Compliance enables organizations to:

* Monitor security, quality, and feature updates for Windows 10 Professional, Education, and Enterprise editions.
* View a report of device and update issues related to compliance that need attention.
* Check bandwidth savings incurred across multiple content types by using [Delivery Optimization](waas-delivery-optimization.md).

Update Compliance is offered through the Azure portal, and is included as part of Windows 10 licenses listed in the [prerequisites](update-compliance-get-started.md#update-compliance-prerequisites). Azure Log Analytics ingestion and retention charges are not incurred on your Azure subscription for Update Compliance data.

Update Compliance uses Windows 10 diagnostic data for all of its reporting. It collects system data including update deployment progress, [Windows Update for Business](waas-manage-updates-wufb.md) configuration data, and Delivery Optimization usage data, and then sends this data to a customer-owned [Azure Log Analytics](/azure/log-analytics/query-language/get-started-analytics-portal) workspace to power the experience.

See the following topics in this guide for detailed information about configuring and using the Update Compliance solution:

- [Get started with Update Compliance](update-compliance-get-started.md) provides directions on adding Update Compliance to your Azure subscription and configuring devices to send data to Update Compliance.
- [Using Update Compliance](update-compliance-using.md) breaks down every aspect of the Update Compliance experience.

## Related topics

* [Get started with Update Compliance](update-compliance-get-started.md)
* [Use Update Compliance to monitor Windows Updates](update-compliance-using.md)
* [Update Compliance Schema Reference](update-compliance-schema.md)