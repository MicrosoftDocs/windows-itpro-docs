---
title: ADD APP
description: ADD APP
author: dansimp
ms.assetid: 329fd0c8-a795-49be-b0fd-1367c5b4a34b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# ADD APP


Adds an application record.

`SFTMIME ADD APP:application /OSD osd-pathname [/ICON icon-pathname] [/LOG log-pathname | /CONSOLE | /GUI]`

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
<td align="left"><p>The name and version (optional) of the application.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/OSD &lt;osd-pathname&gt;</p></td>
<td align="left"><p>The path or URL for the OSD file.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/ICON &lt;icon-pathname&gt;</p></td>
<td align="left"><p>The path or URL for the icon file.</p></td>
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

 

**Note**  
The resulting name of the application will be taken from the OSD file and not from the name provided in APP:&lt;application&gt;.

 

## Related topics


[SFTMIME Command Reference](sftmime--command-reference.md)

 

 





