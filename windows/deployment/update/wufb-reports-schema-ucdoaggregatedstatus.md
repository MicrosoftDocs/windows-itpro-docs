---
title: Windows Update for Business reports Data Schema - UCDOAggregatedStatus
ms.reviewer: carmenf
manager: aaroncz
description: UCDOAggregatedStatus schema
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: reference
ms.date: 11/17/2022
ms.technology: itpro-updates
---

# UCDOAggregatedStatus
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

UCDOAggregatedStatus is an aggregation of all individual UDDOStatus records across the tenant and summarizes bandwidth savings across all devices enrolled using [Delivery Optimization and Microsoft Connected Cache](/windows/deployment/do).

|Field |Type |Example |Description |
|---|---|---|---|
| **AzureADDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Azure AD Device ID |
| **AzureADTenantId** |  [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Azure AD Tenant ID |
| **BWOptPercent28Days** |  [real](/azure/kusto/query/scalar-data-types/real) | `10.61` | Bandwidth optimization (as a percentage of savings of total bandwidth otherwise incurred) for this device. A rolling 28-day basis.|
| **BytesFromCache** |  [long](/azure/kusto/query/scalar-data-types/long) | `285212672` | Total number of bytes that were delivered from Microsoft Connected Cache (MCC). |
| **BytesFromCDN** |  [long](/azure/kusto/query/scalar-data-types/long) | `11463008693388` | Total number of bytes that were delivered from a Content Delivery Network (CDN). |
| **BytesFromGroupPeers** |  [long](/azure/kusto/query/scalar-data-types/long) | `30830657175` | Total number of bytes that were delivered from Group peers, sharing the same GroupId. |
| **BytesFromIntPeers** |  [long](/azure/kusto/query/scalar-data-types/long) | `285212672` | Total number of bytes that were delivered from Internet peers. |
| **BytesFromPeers** |  [long](/azure/kusto/query/scalar-data-types/long) | `285212672` | Total number of bytes delivered via all peers. |
| **ContentType** |  [string](/azure/kusto/query/scalar-data-types/string) | `Driver Updates` | One of the supported types of content. |
| **DeviceCount** |  [long](/azure/kusto/query/scalar-data-types/long) | `27077` | Number of devices. |
| **TenantId** |  [string](/azure/kusto/query/scalar-data-types/string) | `6yy5y416-2d35-3yyf-ab5f-aea713e489d2` | Tenant ID |
| **TimeGenerated** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2022-11-17T22:11:40.1132971Z` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** |  [string](/azure/kusto/query/scalar-data-types/string) | `UCDOAggregatedStatus` | The entity type. |
