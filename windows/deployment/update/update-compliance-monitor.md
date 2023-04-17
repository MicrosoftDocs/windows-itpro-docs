---
title: Monitor Windows Updates and Microsoft Defender AV with Update Compliance
manager: aaroncz
description: You can use Update Compliance in Azure portal to monitor the progress of updates and key anti-malware protection features on devices in your network.
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.topic: article
ms.technology: itpro-updates
ms.date: 04/01/2023
---

# Monitor Windows Updates with Update Compliance

**Applies to**

- Windows 10
- Windows 11

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]
## Introduction

Update Compliance enables organizations to:

* Monitor security, quality, and feature updates for Windows 10 or Windows 11 Professional, Education, and Enterprise editions.
* View a report of device and update issues related to compliance that need attention.
* Check bandwidth savings incurred across multiple content types by using [Delivery Optimization](../do/waas-delivery-optimization.md).

Update Compliance is offered through the Azure portal, and is included as part of Windows 10 or Windows 11 licenses listed in the [prerequisites](update-compliance-get-started.md#update-compliance-prerequisites). Azure Log Analytics ingestion and retention charges are not incurred on your Azure subscription for Update Compliance data.

Update Compliance uses Windows client diagnostic data for all of its reporting. It collects system data including update deployment progress, [Windows Update for Business](waas-manage-updates-wufb.md) configuration data, and Delivery Optimization usage data, and then sends this data to a customer-owned [Azure Log Analytics](/azure/log-analytics/query-language/get-started-analytics-portal) workspace to power the experience.

See the following articles in this guide for detailed information about configuring and using the Update Compliance solution:

- [Get started with Update Compliance](update-compliance-get-started.md) provides directions on adding Update Compliance to your Azure subscription and configuring devices to send data to Update Compliance.
- [Using Update Compliance](update-compliance-using.md) breaks down every aspect of the Update Compliance experience.

## Related articles

* [Get started with Update Compliance](update-compliance-get-started.md)
* [Use Update Compliance to monitor Windows Updates](update-compliance-using.md)
* [Update Compliance Schema Reference](update-compliance-schema.md)
