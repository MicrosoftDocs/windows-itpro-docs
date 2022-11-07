---
title: Get product packages
description: The Get product packages operation retrieves the information about applications in the Microsoft Store for Business.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
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
|400|Invalid parameters|No|Parameter name <br/> <br/>Reason: Missing parameter or invalid parameter <br/> <br/>Details: String|
|404|Not found|||
|409|Conflict||Reason: Not owned|

## Response

### Response body

The response body contains [ProductPackageSet](data-structures-windows-store-for-business.md#productpackageset).

 





