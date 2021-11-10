---
title: Get product packages
description: The Get product packages operation retrieves the information about applications in the Microsoft Store for Business.
ms.assetid: 039468BF-B9EE-4E1C-810C-9ACDD55C0835
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/18/2017
---

# Get product packages

The **Get product packages** operation retrieves the information about applications in the Microsoft Store for Business.

## Request

**GET:**

```http
https://bspmts.mp.microsoft.com/V1/Products/{productId}/{skuId}/Packages
```

 
### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Description|
|--- |--- |--- |
|productId|string|Required. Product identifier for an application that is used by the Store for Business.|
|skuId|string|Required. Product identifier that specifies a specific SKU of an application.|

|Error code|Description|Retry|Data field|
|--- |--- |--- |--- |
|400|Invalid parameters|No|Parameter name
Reason: Missing parameter or invalid parameter
Details: String|
|404|Not found|||
|409|Conflict||Reason: Not owned|

## Response

### Response body

The response body contains [ProductPackageSet](data-structures-windows-store-for-business.md#productpackageset).

 





