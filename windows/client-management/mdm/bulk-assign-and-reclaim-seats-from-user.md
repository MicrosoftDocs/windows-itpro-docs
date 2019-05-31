---
title: Bulk assign and reclaim seats from users
description: The Bulk assign and reclaim seats from users operation returns reclaimed or assigned seats in the Microsoft Store for Business.
ms.assetid: 99E2F37D-1FF3-4511-8969-19571656780A
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 09/18/2017
---

# Bulk assign and reclaim seats from users

The **Bulk assign and reclaim seats from users** operation returns reclaimed or assigned seats in the Microsoft Store for Business.

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
<td><p>https:<span></span>//bspmts.mp.microsoft.com/V1/Inventory/{productId}/{skuId}/Seats</p></td>
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
<tr class="odd">
<td><p>username</p></td>
<td><p>string</p></td>
<td><p>Requires UserPrincipalName (UPN). User name of the target user account.</p></td>
</tr>
<tr class="even">
<td><p>seatAction</p></td>
<td><p>[SeatAction](data-structures-windows-store-for-business.md#seataction)</p></td>
<td></td>
</tr>
</tbody>
</table>

 
## Response

### Response body

The response body contains [BulkSeatOperationResultSet](data-structures-windows-store-for-business.md#bulkseatoperationresultset).

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
<td><p>404</p></td>
<td><p>Not found</p></td>
<td></td>
<td><p>Item type: Inventory</p>
<p>Values: ProductId/SkuId</p></td>
</tr>
</tbody>
</table>

 

 





