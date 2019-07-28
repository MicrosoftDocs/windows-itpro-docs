---
title: PUBLISH APP
description: PUBLISH APP
author: eavena
ms.assetid: f25f06a8-ca23-435b-a0c2-16a5f39b6b97
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# PUBLISH APP


Publishes an application shortcut to the user's Start menu, desktop, or other specified location.

`SFTMIME PUBLISH APP:application                 {/DESKTOP | /START | /TARGET target-path} [/ICON icon-pathname]                 [/DISPLAY display-name] [/ARGS command-args...]                 [/LOG log-pathname | /CONSOLE | /GUI]`

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
<td align="left"><p>APPLICATION:&lt;application&gt;</p></td>
<td align="left"><p>The name and version (optional) of the application.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/DESKTOP</p></td>
<td align="left"><p>Publishes a shortcut to the user's desktop.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/START</p></td>
<td align="left"><p>Publishes a shortcut to the Application Virtualization Applications folder in the Programs folder of the Start menu.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/TARGET &lt;target-path&gt;</p></td>
<td align="left"><p>The absolute path where the shortcut should be published.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/ICON &lt;icon-pathname&gt;</p></td>
<td align="left"><p>The path or URL for the icon file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/DISPLAY &lt;display-name&gt;</p></td>
<td align="left"><p>The display name for the shortcut.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/ARGS &lt;command-args&gt;</p></td>
<td align="left"><p>Parameters to be passed to the application.</p></td>
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

 

 





