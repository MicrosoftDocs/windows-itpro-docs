---
title: Get localized product details
description: The Get localized product details operation retrieves the localization information of a product from the Microsoft Store for Business.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/07/2020
---

# Get localized product details

The **Get localized product details** operation retrieves the localization information of a product from the Microsoft Store for Business.

## Request

**GET:**

```http
https://bspmts.mp.microsoft.com/V1/Products/{ProductId}/{SkuId}/LocalizedDetails/{language}
```


### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Description|
|--- |--- |--- |
|productId|string|Required. Product identifier for an application that is used by the Store for Business.|
|skuId|string|Required. Product identifier that specifies a specific SKU of an application.|
|language|string|Required. Language in ISO format, such as en-us, en-ca.|

|Error code|Description|Retry|Data field|
|--- |--- |--- |--- |
|400|Invalid parameters|No|Parameter name<br>Reason: Missing parameter or invalid parameter<br>Details: String|
|404|Not found||Item type: productId, skuId, language|

## Response

The response contains [LocalizedProductDetail](data-structures-windows-store-for-business.md#localizedproductdetail).

 






