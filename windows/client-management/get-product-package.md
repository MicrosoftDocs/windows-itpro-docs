---
title: Get product package
description: The Get product package operation retrieves the information about a specific application in the Microsoft Store for Business.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/18/2017
---

# Get product package

The **Get product package** operation retrieves the information about a specific application in the Microsoft Store for Business.

## Request

**GET:**

```http
https://bspmts.mp.microsoft.com/V1/Products/{productId}/{skuId}/Packages/{packageId}
```

### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Description|
|--- |--- |--- |
|productId|string|Required. Product identifier for an application that is used by the Store for Business.|
|skuId|string|Required. Product identifier that specifies a specific SKU of an application.|
|packageId|string|Required.|

|Error code|Description|Retry|Data field|Details|
|--- |--- |--- |--- |--- |
|400|Invalid parameters|No|Parameter name <br/> <br/>Reason: Invalid parameter <br/> <br/>Details: String|Can be productId, skuId, or packageId|
|404|Not found|||Item type: Product/SKU|
|409|Conflict||Reason: Not owned||

## Response

### Response body

The response body contains [ProductPackageDetails](data-structures-windows-store-for-business.md#productpackagedetails).

 






