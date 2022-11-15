---
title: Assign seat
description: The Assign seat operation assigns seat for a specified user in the Microsoft Store for Business.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/18/2017
---

# Assign seat

The **Assign seat** operation assigns seat for a specified user in the Microsoft Store for Business.

## Request

**POST:**

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
|400|Invalid parameters|No|Parameter name <br>Reason: Invalid parameter<br>Details: String|Invalid can include productId, skuId or userName|
|404|Not found||Item type: Inventory, User, Seat<br> <br>Values: ProductId/SkuId, UserName, ProductId/SkuId/UserName|ItemType: Inventory User Seat<br> <br>Values: ProductId/SkuId UserName ProductId/SkuId/UserName|
|409|Conflict||Reason: Not online||

