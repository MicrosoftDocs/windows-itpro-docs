---
title: Get seats assigned to a user
description: The Get seats assigned to a user operation retrieves information about assigned seats in the Micosoft Store for Business.
ms.assetid: CB963E44-8C7C-46F9-A979-89BBB376172B
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/18/2017
---

# Get seats assigned to a user

The **Get seats assigned to a user** operation retrieves information about assigned seats in the Micosoft Store for Business.

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
<td><p>https:<span></span>//bspmts.mp.microsoft.com/V1/Users/{username}/Seats?continuationToken={ContinuationToken}&amp;maxResults={MaxResults}</p></td>
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
<td><p>useName</p></td>
<td><p>string</p></td>
<td><p>Requires UserPrincipalName (UPN). User name of the target user account.</p></td>
</tr>
<tr class="even">
<td><p>continuationToken</p></td>
<td><p>string</p></td>
<td><p>Optional.</p></td>
</tr>
<tr class="odd">
<td><p>maxResults</p></td>
<td><p>inteter-32</p></td>
<td><p>Optional. Default = 25, Maximum = 100</p></td>
</tr>
</tbody>
</table>

 
## Response

### Response body

The response body contain [SeatDetailsResultSet](data-structures-windows-store-for-business.md#seatdetailsresultset).

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
<p>Reason: Invalid parameter</p>
<p>Details: String</p></td>
</tr>
<tr class="even">
<td><p>404</p></td>
<td><p>Not found</p></td>
<td></td>
<td><p>Item type: User</p>
<p>Values: UserName</p></td>
</tr>
</tbody>
</table>

 

 





