---
title: Get offline license
description: The Get offline license operation retrieves the offline license information of a product from the Micosoft Store for Business.
ms.assetid: 08DAD813-CF4D-42D6-A783-994A03AEE051
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/18/2017
---

# Get offline license

The **Get offline license** operation retrieves the offline license information of a product from the Micosoft Store for Business.

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
<td><p>POST</p></td>
<td><p>https://bspmts.mp.microsoft.com/V1/Products/{productId}/{skuId}/OfflineLicense/{contentId}</p></td>
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
<td><p>Required. Identifies a specific product that has been acquired.</p></td>
</tr>
<tr class="even">
<td><p>skuId</p></td>
<td><p>string</p></td>
<td><p>Required. The SKU identifier.</p></td>
</tr>
<tr class="odd">
<td><p>contentId</p></td>
<td><p>string</p></td>
<td><p>Required. Identifies a specific application.</p></td>
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
<tr class="odd">
<td><p>409</p></td>
<td><p>Conflict</p></td>
<td></td>
<td><p>Reason: Not owned, Not offline</p></td>
</tr>
</tbody>
</table>


## Response

### Response body

The response contains [OfflineLicense](data-structures-windows-store-for-business.md#offlinelicense).

 






