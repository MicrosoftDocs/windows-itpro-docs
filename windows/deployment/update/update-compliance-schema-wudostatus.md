---
title: Update Compliance Schema - WUDOStatus
ms.reviewer: 
manager: laurawi
description: WUDOStatus schema
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

# WUDOStatus

> [!NOTE]
> Currently all location-based fields are not working properly. This is a known issue.

WUDOStatus records provide information, for a single device, on their bandwidth utilization for a specific content type in the event they use [Delivery Optimization](https://support.microsoft.com/help/4468254/windows-update-delivery-optimization-faq), and other information to create more detailed reports and splice on certain common characteristics.

These fields are briefly described in this article, to learn more about Delivery Optimization in general, check out the [Delivery Optimization Reference](https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization-reference).

|Field |Type |Example |Description |
|-|-|-|-|
|**Computer** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) |`JohnPC-Contoso` |User or Organization-provided device name. If this appears as '#', then Device Name may not be sent through telemetry. To enable Device Name to be sent with telemetry, see [Enabling Device Name in Telemetry](https://docs.microsoft.com/windows/deployment/update/update-compliance-get-started#allow-device-name-in-telemetry-with-group-policy). |
|**ComputerID** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) |`g:6755412281299915` |Microsoft Global Device Identifier. This is an internal identifier used by Microsoft. A connection to the end-user Managed Service Account (MSA) service is required for this identifier to be populated; no device data will be present in Update Compliance without this identifier. |
|**City** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) | |Approximate city device was in while downloading content, based on IP Address. |
|**Country** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) | |Approximate country device was in while downloading content, based on IP Address. |
|**ISP** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) | |The Internet Service Provider estimation. |
|**BWOptPercent28Days** |[real](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/real) |`68.72` |Bandwidth optimization (as a percentage of savings of total bandwidth otherwise incurred) as a result of using Delivery Optimization *for this device*, computed on a rolling 28-day basis. |
|**BWOptPercent7Days** |[real](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/real) |`13.58` |Bandwidth optimization (as a percentage of savings of total bandwidth otherwise incurred) as a result of using Delivery Optimization *for this device*, computed on a rolling 7-day basis. |
|**BytesFromCDN** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`254139` |Total number of bytes downloaded from a CDN versus a Peer. This counts against bandwidth optimization. |
|**BytesFromGroupPeers** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`523132` |Total number of bytes downloaded from Group Peers. |
|**BytesFromIntPeers** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`328350` |Total number of bytes downloaded from Internet Peers. |
|**BytesFromPeers** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`43145` |Total number of bytes downloaded from peers. |
|**ContentDownloadMode** |[int](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/int) |`0` |Device's Delivery Optimization [Download Mode](https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization-reference#download-mode) configuration for this content. |
|**ContentType** |[int](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/int) |`Quality Updates` |The type of content being downloaded. |
|**DOStatusDescription** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) | |A short description of DO's status, if any. |
|**DownloadMode** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) |`HTTP+LAN (1)` |Device's Delivery Optimization [Download Mode](https://docs.microsoft.com/windows/deployment/update/waas-delivery-optimization-reference#download-mode) configuration for this device. |
|**DownloadModeSrc** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) |`Default` |The source of the DownloadMode configuration. |
|**GroupID** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) | |The DO Group ID. |
|**NoPeersCount** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) | |The number of peers this device interacted with. |
|**OSName** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) |`Windows 10` |The name of the Operating System. This will always be Windows 10 for Update Compliance. |
|**OSVersion** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) |`1909` |The version of Windows 10. This typically is of the format of the year of the version's release, following the month. In this example, `1909` corresponds to 2019-09 (September). This maps to the `Major` portion of OSBuild.  |
|**PeerEligibleTransfers** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`0` |Total number of eligible transfers by Peers. |
|**PeeringStatus** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) |`On` |The DO Peering Status |
|**PeersCannotConnectCount**|[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`0` |The number of peers this device was unable to connect to. |
|**PeersSuccessCount** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`0` |The number of peers this device successfully connected to. |
|**PeersUnknownCount** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`0` |The number of peers for which there is an unknown relation. |
|**LastScan** |[datetime](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/datetime)|`1601-01-01T00:00:00Z` |A DateTime corresponding to the last time the device sent data to Microsoft. This does not necessarily mean all data that is needed to populate all fields Update Compliance uses was sent, this is more like a "heartbeat". |
|**TimeGenerated** |[datetime](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/datetime)|`1601-01-01T00:00:00Z` |A DateTime corresponding to the moment Azure Monitor Logs ingested this record to your Log Analytics workspace. |
|**TotalTimeForDownload** |[string](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/string) |`0:00:00` |The total time it took to download the content. |
|**TotalTransfers** |[long](https://docs.microsoft.com/azure/kusto/query/scalar-data-types/long) |`0` |The total number of data transfers to download this content. |

