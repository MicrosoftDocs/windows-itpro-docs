---
title: Get seat
description: The Get seat operation retrieves the information about an active seat for a specified user in the Microsoft Store for Business.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/18/2017
---

# Get seat

The **Get seat** operation retrieves the information about an active seat for a specified user in the Microsoft Store for Business.

## Request

**GET:**

```http
https://bspmts.mp.microsoft.com/V1/Inventory/{productId}/{skuId}/Seats/{username}
```

### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Description|
|--- |--- |--- |
|productId|string|Required. Product identifier for an application that is used by the Store for Business.|
|skuId|string|Required. Product identifier that specifies a specific SKU of an application.|
|username|string|Requires UserPrincipalName (UPN). User name of the target user account.|

 
## Response

### Response body

The response body contains [SeatDetails](data-structures-windows-store-for-business.md#seatdetails).

|Error code|Description|Retry|Data field|Details|
|--- |--- |--- |--- |--- |
|400|Invalid parameters|No|Parameter name <br/><br/>Reason: Missing parameter or invalid parameter<br/><br/>Details: String|Invalid can include productId, skuId or username|
|404|Not found|||ItemType: Inventory, User, Seat<br/><br/>Values: ProductId/SkuId, UserName, ProductId/SkuId/Username|
|409|Conflict||Reason: Not online||
