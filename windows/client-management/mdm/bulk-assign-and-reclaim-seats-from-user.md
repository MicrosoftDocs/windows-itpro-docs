---
title: Bulk assign and reclaim seats from users
description: The Bulk assign and reclaim seats from users operation returns reclaimed or assigned seats in the Microsoft Store for Business.
ms.assetid: 99E2F37D-1FF3-4511-8969-19571656780A
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/18/2017
---

# Bulk assign and reclaim seats from users

The **Bulk assign and reclaim seats from users** operation returns reclaimed or assigned seats in the Microsoft Store for Business.

## Request

**POST**:

```http
https:<span></span>//bspmts.mp.microsoft.com/V1/Inventory/{productId}/{skuId}/Seats
```
 
### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Description|
|--- |--- |--- |
|productId|string|Required. Product identifier for an application that is used by the Store for Business.|
|skuId|string|Required. Product identifier that specifies a specific SKU of an application.|
|username|string|Requires UserPrincipalName (UPN). User name of the target user account.|
|seatAction|SeatAction||

 
## Response

### Response body

The response body contains [BulkSeatOperationResultSet](data-structures-windows-store-for-business.md#bulkseatoperationresultset).

|Error code|Description|Retry|Data field|
|--- |--- |--- |--- |
|404|Not found||Item type: Inventory<br> Values: ProductId/SkuId|

 