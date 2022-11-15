---
title: Get product details
description: The Get product details operation retrieves the product information from the Microsoft Store for Business for a specific application.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/18/2017
---

# Get product details

The **Get product details** operation retrieves the product information from the Microsoft Store for Business for a specific application.

## Request

**GET:**

```http
https://bspmts.mp.microsoft.com/V1/Products/{productId}/{skuId}
```

### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Description|
|--- |--- |--- |
|productId|string|Required. Product identifier for an application that is used by the Store for Business.|
|skuId|string|Required. Product identifier that specifies a specific SKU of an application.|

|Error code|Description|Retry|Data field|
|--- |--- |--- |--- |
|400|Invalid parameters|No|Parameter name<br>Reason: Missing parameter or invalid parameter<br>Details: String|
|404|Not found|||

## Response

### Response body

The response contains [ProductDetails](data-structures-windows-store-for-business.md#productdetails).

 






