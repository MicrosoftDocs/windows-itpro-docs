---
title: Assign seat
description: The Assign seat operation assigns seat for a specified user in the Microsoft Store for Business.
ms.assetid: B42BF490-35C9-405C-B5D6-0D9F0E377552
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 09/18/2017
---

# Assign seat

The **Assign seat** operation assigns seat for a specified user in the Microsoft Store for Business.

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
<td><p>https://bspmts.mp.microsoft.com/V1/Inventory/{productId}/{skuId}/Seats/{username}</p></td>
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
</tbody>
</table>


## Response

### Response body

The response body contains [SeatDetails](data-structures-windows-store-for-business.md#seatdetails).

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Error code</th>
<th>Description</th>
<th>Retry</th>
<th>Data field</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>400</p></td>
<td><p>Invalid parameters</p></td>
<td><p>No</p></td>
<td><p>Parameter name</p>
<p>Reason: Invalid parameter</p>
<p>Details: String</p></td>
<td><p>Invalid can include productId, skuId or userName</p></td>
</tr>
<tr class="even">
<td><p>404</p></td>
<td><p>Not found</p></td>
<td></td>
<td><p>Item type: Inventory, User, Seat</p>
<p>Values: ProductId/SkuId, UserName, ProductId/SkuId/UserName</p></td>
<td><p>ItemType: Inventory User Seat</p>
<p>Values: ProductId/SkuId UserName ProductId/SkuId/UserName</p></td>
</tr>
<tr class="odd">
<td><p>409</p></td>
<td><p>Conflict</p></td>
<td></td>
<td><p>Reason: Not online</p></td>
<td></td>
</tr>
</tbody>
</table>

 

 






