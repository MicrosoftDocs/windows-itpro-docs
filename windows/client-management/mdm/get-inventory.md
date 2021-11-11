---
title: Get Inventory
description: The Get Inventory operation retrieves information from the Microsoft Store for Business to determine if new or updated applications are available.
MS-HAID:
- 'p\_phdevicemgmt.get\_seatblock'
- 'p\_phDeviceMgmt.get\_inventory'
ms.assetid: C5485722-FC49-4358-A097-74169B204E74
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/18/2017
---

# Get Inventory

The **Get Inventory** operation retrieves information from the Microsoft Store for Business to determine if new or updated applications are available.

## Request

**GET:**

```http
https://bspmts.mp.microsoft.com/V1/Inventory?continuationToken={ContinuationToken}&amp;modifiedSince={ModifiedSince}&amp;licenseTypes={LicenseType}&amp;maxResults={MaxResults}
```
### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Default value|Description|
|--- |--- |--- |--- |
|continuationToken|string|Null||
|modifiedSince|datetime|Null|Optional. Used to determine changes since a specific date.|
|licenseTypes|collection of [LicenseType](data-structures-windows-store-for-business.md#licensetype)|{online,offline}|Optional. A collection of license types|
|maxResults|integer-32|25|Optional. Specifies the maximum number of applications returned in a single query.|

Here are some examples.

|Query type|Example query|
|--- |--- |
|Online and offline|[https://bspmts.mp.microsoft.com/V1/Inventory?licenseTypes=online&licenseTypes=offline&maxResults=25](https://bspmts.mp.microsoft.com/V1/Inventory?licenseTypes=online&licenseTypes=offline&maxResults=25)|
|Online only|[https://bspmts.mp.microsoft.com/V1/Inventory?licenseTypes=online&maxResults=25](https://bspmts.mp.microsoft.com/V1/Inventory?licenseTypes=online&maxResults=25)|
|Offline only|[https://bspmts.mp.microsoft.com/V1/Inventory?licenseTypes=offline&maxResults=25](https://bspmts.mp.microsoft.com/V1/Inventory?licenseTypes=offline&maxResults=25)|
|Both license types and a time filter|[https://bspmts.mp.microsoft.com/V1/Inventory?modifiedSince=2015-07-13T14%3a02%3a25.6863382-07%3a00&licenseTypes=online&licenseTypes=offline&maxResults=25](https://bspmts.mp.microsoft.com/V1/Inventory?modifiedSince=2015-07-13T14%3a02%3a25.6863382-07%3a00&licenseTypes=online&licenseTypes=offline&maxResults=25)|

|Error code|Description|Retry|Data field|
|--- |--- |--- |--- |
|400|Invalid parameters|No|Parameter name<br><br>Invalid modified date, license, or continuationToken<br><br>Details: String|

## Response

### Response body

The response contains [InventoryResultSet](data-structures-windows-store-for-business.md#inventoryresultset).

 






