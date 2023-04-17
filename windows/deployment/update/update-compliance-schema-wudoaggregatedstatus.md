---
title: Update Compliance Schema - WUDOAggregatedStatus
manager: aaroncz
description: WUDOAggregatedStatus schema
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: article
ms.technology: itpro-updates
ms.date: 04/01/2023
---

# WUDOAggregatedStatus

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]


WUDOAggregatedStatus records provide information, across all devices, on their bandwidth utilization for a specific content type in the event they use [Delivery Optimization](https://support.microsoft.com/help/4468254/windows-update-delivery-optimization-faq), over the past 28 days.

These fields are briefly described in this article, to learn more about Delivery Optimization in general, check out the [Delivery Optimization Reference](../do/waas-delivery-optimization-reference.md).

|Field |Type |Example |Description |
|-|-|-|-|
|**DeviceCount** |[int](/azure/kusto/query/scalar-data-types/int) |`9999` |Total number of devices in this aggregated record. |
|**BWOptPercent28Days** |[real](/azure/kusto/query/scalar-data-types/real) |`68.72` |Bandwidth optimization (as a percentage of savings of total bandwidth otherwise incurred) as a result of using Delivery Optimization *across all devices*, computed on a rolling 28-day basis. |
|**BWOptPercent7Days** |[real](/azure/kusto/query/scalar-data-types/real) |`13.58` |Bandwidth optimization (as a percentage of savings of total bandwidth otherwise incurred) as a result of using Delivery Optimization *across all devices*, computed on a rolling 7-day basis. |
|**BytesFromCDN** |[long](/azure/kusto/query/scalar-data-types/long) |`254139` |Total number of bytes downloaded from a CDN versus a Peer. This counts against bandwidth optimization.|
|**BytesFromGroupPeers** |[long](/azure/kusto/query/scalar-data-types/long) |`523132` |Total number of bytes downloaded from Group Peers. |
|**BytesFromIntPeers** |[long](/azure/kusto/query/scalar-data-types/long) |`328350` |Total number of bytes downloaded from Internet Peers. |
|**BytesFromPeers** |[long](/azure/kusto/query/scalar-data-types/long) |`43145` |Total number of bytes downloaded from peers. |
|**ContentType** |[int](/azure/kusto/query/scalar-data-types/int) |`Quality Updates` |The type of content being downloaded.|
|**DownloadMode** |[string](/azure/kusto/query/scalar-data-types/string) |`HTTP+LAN (1)` |Device's Delivery Optimization [Download Mode](../do/waas-delivery-optimization-reference.md#download-mode) configuration for this device. |
|**TimeGenerated** |[datetime](/azure/kusto/query/scalar-data-types/datetime)|`1601-01-01T00:00:00Z` |A DateTime corresponding to the moment Azure Monitor Logs ingested this record to your Log Analytics workspace.|
