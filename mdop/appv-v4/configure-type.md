---
title: CONFIGURE TYPE
description: CONFIGURE TYPE
author: dansimp
ms.assetid: 2caf9433-5449-486f-ab94-83ee8e44d7f1
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# CONFIGURE TYPE


Enables the user to change settings for a file type association.

`SFTMIME CONFIGURE TYPE:file-extension [/GLOBAL] [/APP application]                 [/ICON icon-pathname] [/DESCRIPTION type-desc]                 [/CONTENT-TYPE content-type] [/PERCEIVED-TYPE perceived-type]                 [/PROGID progid] [/CONFIRMOPEN {YES|NO}]                 [/SHOWEXT {YES|NO}] [/NEWMENU {YES|NO}]                 [/LOG log-pathname | /CONSOLE | /GUI]`

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
<td align="left"><p>TYPE:&lt;file-extension&gt;</p></td>
<td align="left"><p>The file name extension to be configured.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/APP &lt;application&gt;</p></td>
<td align="left"><p>The name and version (optional) of the application to associate this file type with. Cannot be specified with PROGID.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/ICON &lt;icon-pathname&gt;</p></td>
<td align="left"><p>The path or URL for the icon file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/DESCRIPTION &lt;type-desc&gt;</p></td>
<td align="left"><p>The user-friendly name for the file type.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/CONTENT-TYPE &lt;content-type&gt;</p></td>
<td align="left"><p>The content type of the file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/GLOBAL</p></td>
<td align="left"><p>If present, indicates that the association that applies to all users should be edited, not the user-specific one.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/PERCEIVED-TYPE &lt;perceived-type&gt;</p></td>
<td align="left"><p>The perceived type of the file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/PROGID &lt;progid&gt;</p></td>
<td align="left"><p>Indicates that the extension should be associated with a different file type. The previous file type is not deleted. Cannot be specified with APP, ICON, DESCRIPTION, CONFIRMOPEN, or SHOWEXT.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/CONFIRMOPEN</p></td>
<td align="left"><p>Indicates whether users downloading a file of this type should be asked whether to open or save the file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/SHOWEXT</p></td>
<td align="left"><p>Indicates whether the file's extension should always be shown, even if the user has requested that all extensions be hidden.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/NEWMENU</p></td>
<td align="left"><p>Indicates whether an entry should be added to the shell's <strong>New</strong> menu.</p></td>
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

 

 





