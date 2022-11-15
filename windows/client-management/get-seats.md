---
title: Get seats
description: The Get seats operation retrieves the information about active seats in the Microsoft Store for Business.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/18/2017
---

# Get seats

The **Get seats** operation retrieves the information about active seats in the Microsoft Store for Business.

## Request

**GET:**

```http
https://bspmts.mp.microsoft.com/V1/Inventory/{productId}/{skuId}/Seats?continuationToken={ContinuationToken}&amp;maxResults={MaxResults}
```

### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Description|
|--- |--- |--- |
|productId|string|Required. Product identifier for an application that is used by the Store for Business.|
|skuId|string|Required. Product identifier that specifies a specific SKU of an application.|
|continuationToken|string|Optional.|
|maxResults|int32|Optional. Default = 25, Maximum = 100|

## Response

### Response body

The response body contains [SeatDetailsResultSet](data-structures-windows-store-for-business.md#seatdetailsresultset).

|Error code|Description|Retry|Data field|
|--- |--- |--- |--- |
|400|Invalid parameters|No|Parameter name <br> Reason: Missing parameter or invalid parameter <br> Details: String|
|404|Not found|||
|409|Conflict||Reason: Not online|



