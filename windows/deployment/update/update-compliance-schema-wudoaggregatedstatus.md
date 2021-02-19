---
title: Update Compliance Schema - WUDOAggregatedStatus
ms.reviewer: 
manager: laurawi
description: WUDOAggregatedStatus schema
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
itproauthor: jaimeo
author: jaimeo
ms.author: jaimeo
ms.collection: M365-analytics
ms.topic: article
---

# WUDOAggregatedStatus

WUDOAggregatedStatus records provide information, across all devices, on their bandwidth utilization for a specific content type in the event they use [Delivery Optimization](https://support.microsoft.com/help/4468254/windows-update-delivery-optimization-faq), over the past 28 days.

These fields are briefly described in this article, to learn more about Delivery Optimization in general, check out the [Delivery Optimization Reference](https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization-reference).

|Field |Type |Example |Description |
|-|-|-|-|
|**DeviceCount** |[int](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/int) |`9999` |Total number of devices in this aggregated record. |
|**BWOptPercent28Days** |[real](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/real) |`68.72` |Bandwidth optimization (as a percentage of savings of total bandwidth otherwise incurred) as a result of using Delivery Optimization *across all devices*, computed on a rolling 28-day basis. |
|**BWOptPercent7Days** |[real](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/real) |`13.58` |Bandwidth optimization (as a percentage of savings of total bandwidth otherwise incurred) as a result of using Delivery Optimization *across all devices*, computed on a rolling 7-day basis. |
|**BytesFromCDN** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`254139` |Total number of bytes downloaded from a CDN versus a Peer. This counts against bandwidth optimization.|
|**BytesFromGroupPeers** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`523132` |Total number of bytes downloaded from Group Peers. |
|**BytesFromIntPeers** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`328350` |Total number of bytes downloaded from Internet Peers. |
|**BytesFromPeers** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`43145` |Total number of bytes downloaded from peers. |
|**ContentType** |[int](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/int) |`Quality Updates` |The type of content being downloaded.|
|**DownloadMode** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) |`HTTP+LAN (1)` |Device's Delivery Optimization [Download Mode](https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization-reference#download-mode) configuration for this device. |
|**TimeGenerated** |[datetime](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/datetime)|`1601-01-01T00:00:00Z` |A DateTime corresponding to the moment Azure Monitor Logs ingested this record to your Log Analytics workspace.|
