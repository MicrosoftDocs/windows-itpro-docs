---
title: Get offline license
description: The Get offline license operation retrieves the offline license information of a product from the Microsoft Store for Business.
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/18/2017
---

# Get offline license

The **Get offline license** operation retrieves the offline license information of a product from the Microsoft Store for Business.

## Request

**POST:**

```http
https://bspmts.mp.microsoft.com/V1/Products/{productId}/{skuId}/OfflineLicense/{contentId}
```

### URI parameters

The following parameters may be specified in the request URI.

|Parameter|Type|Description|
|--- |--- |--- |
|productId|string|Required. Identifies a specific product that has been acquired.|
|skuId|string|Required. The SKU identifier.|
|contentId|string|Required. Identifies a specific application.|
   
|Error code|Description|Retry|Data field|
|--- |--- |--- |--- |
|400|Invalid parameters|No|Parameter name<br>Reason: Missing parameter or invalid parameter<br>Details: String|
|404|Not found|||
|409|Conflict||Reason: Not owned, Not offline|

## Response

### Response body

The response contains [OfflineLicense](data-structures-windows-store-for-business.md#offlinelicense).

 






