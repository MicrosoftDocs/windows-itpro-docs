---
title: '\[ConnectionSettings\]: .INS file setting'
description: \[ConnectionSettings\]: .INS file setting
ms.assetid: 41410300-6ddd-43b2-b9e2-0108a2221355
ms.prod: IE11
ms.mktglfcycl: plan
ms.sitesec: library
---

# \[ConnectionSettings\]: .INS file setting


Information about the network connection settings used to install your custom package. This section creates a common configuration on all of your employee’s computers.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name</th>
<th align="left">Value</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>ConnectName0</p></td>
<td align="left"><p><em>string</em></p></td>
<td align="left"><p>Name for the connection.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ConnectName1</p></td>
<td align="left"><p><em>string</em></p></td>
<td align="left"><p>Secondary name for the connection.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DeleteConnectionSettings</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether to remove the existing connection settings during installation of your custom package.</p>
<ul>
<li><p><strong>0</strong> – Don’t remove the connection settings during installation.</p></li>
<li><p><strong>1</strong> – Remove the connection settings during installation.</p>
<div class="alert">
<strong>Note</strong>  
<p>This only appears for the <strong>Internal</strong> version of the IEAK 11.</p>
</div>
<div>
 
</div></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Option</p></td>
<td align="left"><p><em>0</em> | <em>1</em></p></td>
<td align="left"><p>Determines whether an employee can import connection settings into the Internet Explorer Customization Wizard 8.</p>
<ul>
<li><p><strong>0</strong> – Don’t let employees import connection settings.</p></li>
<li><p><strong>1</strong> – Let employees import connection settings.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

 

 





