---
title: Get product package
description: The Get product package operation retrieves the information about a specific application in the Micosoft Store for Business.
ms.assetid: 4314C65E-6DDC-405C-A591-D66F799A341F
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/18/2017
---

# Get product package

The **Get product package** operation retrieves the information about a specific application in the Micosoft Store for Business.

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
<td><p>https://bspmts.mp.microsoft.com/V1/Products/{productId}/{skuId}/Packages/{packageId}</p></td>
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
<td><p>packageId</p></td>
<td><p>string</p></td>
<td><p>Required.</p></td>
</tr>
</tbody>
</table>
   

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
<td><p>Can be productId, skuId, or packageId</p></td>
</tr>
<tr class="even">
<td><p>404</p></td>
<td><p>Not found</p></td>
<td></td>
<td></td>
<td><p>Item type: Product/SKU</p></td>
</tr>
<tr class="odd">
<td><p>409</p></td>
<td><p>Conflict</p></td>
<td></td>
<td><p>Reason: Not owned</p></td>
<td></td>
</tr>
</tbody>
</table>


## Response

### Response body

The response body contains [ProductPackageDetails](data-structures-windows-store-for-business.md#productpackagedetails).

 






