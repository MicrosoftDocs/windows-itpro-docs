---
title: UNLOAD APP
description: UNLOAD APP
author: manikadhiman
ms.assetid: f0d729ae-8772-498b-be11-1a4b35499c53
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# UNLOAD APP


Unloads the application and all other applications in the package from the file system cache.

`SFTMIME UNLOAD APP:application [/LOG log-pathname | /CONSOLE | /GUI]`

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>APP:&lt;application&gt;</p></td>
<td align="left"><p>The name and version (optional) of the application to unload.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/LOG</p></td>
<td align="left"><p>If specified, output is logged to the specified path name.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/CONSOLE</p></td>
<td align="left"><p>If specified, output is presented in the active console window (default).</p></td>
</tr>
<tr class="even">
<td align="left"><p>/GUI</p></td>
<td align="left"><p>If specified, output is presented in a Windows dialog box.</p></td>
</tr>
</tbody>
</table>

 

For version 4.6, the following option has been added.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>/LOGU</p></td>
<td align="left"><p>If specified, output is logged to the specified path name in UNICODE format.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[SFTMIME Command Reference](sftmime--command-reference.md)

 

 





