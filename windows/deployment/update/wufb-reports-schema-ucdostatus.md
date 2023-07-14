---
title: Windows Update for Business reports Data Schema - UCDOStatus
ms.reviewer: carmenf
manager: aaroncz
description: UCDOStatus schema
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: reference
ms.date: 11/17/2022
ms.technology: itpro-updates
---

# UCDOStatus
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

UCDOStatus provides information, for a single device, on its bandwidth utilization across content types in the event they use [Delivery Optimization and Microsoft Connected Cache](/windows/deployment/do).

|Field |Type |Example |Description |
|---|---|---|---|
| **AzureADDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Azure AD Device ID |
| **AzureADTenantId** |  [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Azure AD Tenant ID |
| **BWOptPercent28Days** |  [real](/azure/kusto/query/scalar-data-types/real) | `10.61` | Bandwidth optimization (as a percentage of savings of total bandwidth otherwise incurred) for this device. A rolling 28-day basis.|
| **BWOptPercent7Days** |  [real](/azure/kusto/query/scalar-data-types/real) | `10.61` | Bandwidth optimization (as a percentage of savings of total bandwidth otherwise incurred) for this device. A rolling 7-day basis.|
| **BytesFromCache** |  [long](/azure/kusto/query/scalar-data-types/long) | `285212672` | Total number of bytes that were delivered from Microsoft Connected Cache (MCC). |
| **BytesFromCDN** |  [long](/azure/kusto/query/scalar-data-types/long) | `11463008693388` | Total number of bytes that were delivered from a Content Delivery Network (CDN). |
| **BytesFromGroupPeers** |  [long](/azure/kusto/query/scalar-data-types/long) | `30830657175` | Total number of bytes that were delivered from Group peers, sharing the same GroupId. |
| **BytesFromIntPeers** |  [long](/azure/kusto/query/scalar-data-types/long) | `285212672` | Total number of bytes that were delivered from Internet peers. |
| **BytesFromPeers** |  [long](/azure/kusto/query/scalar-data-types/long) | `285212672` | Total number of bytes delivered via all peers. |
| **City** |  [string](/azure/kusto/query/scalar-data-types/string) | `Redmond` | Approximate city where device was located while downloading content, based on IP address. |
| **ContentDownloadMode** |  [int](/azure/kusto/query/scalar-data-types/int) | `1` | Device's Delivery Optimization Download Mode used to download content. |
| **ContentType** |  [string](/azure/kusto/query/scalar-data-types/string) | `Driver Updates` | One of the supported types of content. |
| **Country** |  [string](/azure/kusto/query/scalar-data-types/string) | `US` | Approximate country where device was located while downloading content, based on IP address. |
| **DeviceName** |  [string](/azure/kusto/query/scalar-data-types/string) | `DESKTOP-DO` | User or organization provided device name. If the value appears as '#', configure the device to send device name. |
| **DOStatusDescription** |  [string](/azure/kusto/query/scalar-data-types/string) | `Downloading` | A short description of Delivery Optimization status, if any. |
| **DownloadMode** |  [string](/azure/kusto/query/scalar-data-types/string) | `LAN (1)`  | Delivery Optimization Download Mode configured on the device. |
| **DownloadModeSrc** |  [string](/azure/kusto/query/scalar-data-types/string) | `MDM` | The source of the Download Mode configuration. |
| **GlobalDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `g:9832741921341` | Microsoft global device identifier. This identifier is used by Microsoft internally.  |
| **GroupID** |  [string](/azure/kusto/query/scalar-data-types/string) | `3suvw1efol0nmy8y9g8tfhtj1onwpsk9g9swpwnvfra=` | Delivery Optimization Group ID GUID value. |
| **ISP** |  [string](/azure/kusto/query/scalar-data-types/string) | `Microsoft Corporation` | Internet Service Provider estimation. |
| **LastCensusSeenTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The last time this device performed a successful census scan, if any. |
| **NoPeersCount** |  [long](/azure/kusto/query/scalar-data-types/long) | `4` | Count of peers device interacted with. |
| **OSVersion** |  [string](/azure/kusto/query/scalar-data-types/string) | `1909` | The Windows 10/11 operating system version currently installed on the device, such as 20H1, 21H2. |
| **PeerEligibleTransfers** |  [long](/azure/kusto/query/scalar-data-types/long) | `5` | Total count of eligible transfers by peers. |
| **PeeringStatus** |  [string](/azure/kusto/query/scalar-data-types/string) | `On` | Delivery Optimization peering status. |
| **PeersCannotConnectCount** |  [long](/azure/kusto/query/scalar-data-types/long) | `1` | Count of peers Delivery Optimization couldn't connect to. |
| **PeersSuccessCount** |  [long](/azure/kusto/query/scalar-data-types/long) | `2` | Count of peers Delivery Optimization successfully connected to. |
| **PeersUnknownCount** |  [long](/azure/kusto/query/scalar-data-types/long) | `0` | Count of peers with an unknown relation. |
| **TenantId** |  [string](/azure/kusto/query/scalar-data-types/string) |`6yy5y416-2d35-3yyf-ab5f-aea713e489d2` | Tenant ID |
| **TimeGenerated** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2022-11-17T22:11:40.1132971Z` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **TotalTimeForDownload** |  [string](/azure/kusto/query/scalar-data-types/string) | `00:02:11` | Total time to download content. |
| **TotalTransfers** |  [long](/azure/kusto/query/scalar-data-types/long) | `304` | Total count of data transfers needed to download content. |
| **Type** |  [string](/azure/kusto/query/scalar-data-types/string) | `UCDOAggregatedStatus` | The entity type. |
