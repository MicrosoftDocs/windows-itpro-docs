---
title: Get Inventory
description: The Get Inventory operation retrieves information from the Microsoft Store for Business to determine if new or updated applications are available.
MS-HAID:
- 'p\_phdevicemgmt.get\_seatblock'
- 'p\_phDeviceMgmt.get\_inventory'
ms.assetid: C5485722-FC49-4358-A097-74169B204E74
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/18/2017
---

# Get Inventory

The **Get Inventory** operation retrieves information from the Microsoft Store for Business to determine if new or updated applications are available.

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
<td><p>https://bspmts.mp.microsoft.com/V1/Inventory?continuationToken={ContinuationToken}&amp;modifiedSince={ModifiedSince}&amp;licenseTypes={LicenseType}&amp;maxResults={MaxResults}</p></td>
</tr>
</tbody>
</table>


 

### URI parameters

The following parameters may be specified in the request URI.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Type</th>
<th>Default value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>continuationToken</p></td>
<td><p>string</p></td>
<td><p>Null</p></td>
<td></td>
</tr>
<tr class="even">
<td><p>modifiedSince</p></td>
<td><p>datetime</p></td>
<td><p>Null</p></td>
<td><p>Optional. Used to determine changes since a specific date.</p></td>
</tr>
<tr class="odd">
<td><p>licenseTypes</p></td>
<td><p>collection of <a href="data-structures-windows-store-for-business.md#licensetype" data-raw-source="[LicenseType](data-structures-windows-store-for-business.md#licensetype)">LicenseType</a></p></td>
<td><p>{online,offline}</p></td>
<td><p>Optional. A collection of license types</p></td>
</tr>
<tr class="even">
<td><p>maxResults</p></td>
<td><p>integer-32</p></td>
<td><p>25</p></td>
<td><p>Optional. Specifies the maximum number of applications returned in a single query.</p></td>
</tr>
</tbody>
</table>




Here are some examples.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Query type</th>
<th>Example query</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Online and offline</p></td>
<td><p>https:<span></span>//bspmts.mp.microsoft.com/V1/Inventory?licenseTypes=online&amp;licenseTypes=offline&amp;maxResults=25</p></td>
</tr>
<tr class="even">
<td><p>Online only</p></td>
<td><p>https:<span></span>//bspmts.mp.microsoft.com/V1/Inventory?licenseTypes=online&amp;maxResults=25</p></td>
</tr>
<tr class="odd">
<td><p>Offline only</p></td>
<td><p>https:<span></span>//bspmts.mp.microsoft.com/V1/Inventory?licenseTypes=offline&amp;maxResults=25</p></td>
</tr>
<tr class="even">
<td><p>Both license types and a time filter</p></td>
<td><p>https:<span></span>//bspmts.mp.microsoft.com/V1/Inventory?modifiedSince=2015-07-13T14%3a02%3a25.6863382-07%3a00&amp;licenseTypes=online&amp;licenseTypes=offline&amp;maxResults=25</p></td>
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
<p>Invalid modified date, license, or continuationToken</p>
<p>Details: String</p></td>
</tr>
</tbody>
</table>




## Response

### Response body

The response contains [InventoryResultSet](data-structures-windows-store-for-business.md#inventoryresultset).

 






