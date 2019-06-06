---
title: Get product details
description: The Get product details operation retrieves the product information from the Micosoft Store for Business for a specific application.
ms.assetid: BC432EBA-CE5E-43BD-BD54-942774767286
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/18/2017
---

# Get product details

The **Get product details** operation retrieves the product information from the Micosoft Store for Business for a specific application.

## Request

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Method</th>
<th>Request URI</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>GET</p></td>
<td><p>https://bspmts.mp.microsoft.com/V1/Products/{productId}/{skuId}</p></td>
</tr>
</tbody>
</table>


### URI parameters

The following parameters may be specified in the request URI.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>productId</p></td>
<td><p>string</p></td>
<td><p>Required. Product identifier for an application that is used by the Store for Business.</p></td>
</tr>
<tr class="even">
<td><p>skuId</p></td>
<td><p>string</p></td>
<td><p>Required. Product identifier that specifies a specific SKU of an application.</p></td>
</tr>
</tbody>
</table>


<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Error code</th>
<th>Description</th>
<th>Retry</th>
<th>Data field</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>400</p></td>
<td><p>Invalid parameters</p></td>
<td><p>No</p></td>
<td><p>Parameter name</p>
<p>Reason: Missing parameter or invalid parameter</p>
<p>Details: String</p></td>
</tr>
<tr class="even">
<td><p>404</p></td>
<td><p>Not found</p></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

 
## Response

### Response body

The response contains [ProductDetails](data-structures-windows-store-for-business.md#productdetails).

 






