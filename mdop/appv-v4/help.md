---
title: HELP
description: HELP
author: dansimp
ms.assetid: 0ddb5f18-0c0a-45ea-b7c7-2d4749e3d35d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# HELP


Displays information about the various SFTMIME commands that can be used in Application Virtualization (App-V).

## HELP


`SFTMIME [/? | /HELP [VERB:<verb>]]`

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
<td align="left"><p>/?, /HELP</p></td>
<td align="left"><p>Displays usage information.</p></td>
</tr>
<tr class="even">
<td align="left"><p>verb</p></td>
<td align="left"><p>The command to run, such as ADD, REFRESH, HELP or REMOVE.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>object</p></td>
<td align="left"><p>What the command applies to, such as APP:&quot;Default Application.&quot;</p></td>
</tr>
<tr class="even">
<td align="left"><p>parameters</p></td>
<td align="left"><p>Optional parameters for the specified verb and object.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/LOG</p></td>
<td align="left"><p>Log output to the specified path name.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/CONSOLE</p></td>
<td align="left"><p>Displays output in the active console window (default).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/GUI</p></td>
<td align="left"><p>Displays errors in a dialog box (not valid for queries).</p></td>
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

 

The verbs described in the following table are supported.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>ADD</p></td>
<td align="left"><p>Adds a new application, package, file type association, or publishing server to the App-V Client.</p></td>
</tr>
<tr class="even">
<td align="left"><p>CONFIGURE</p></td>
<td align="left"><p>Changes the configuration of an application, a package, a file type association, or a publishing server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>DELETE</p></td>
<td align="left"><p>Removes applications, packages, file type associations, or servers.</p></td>
</tr>
<tr class="even">
<td align="left"><p>LOAD</p></td>
<td align="left"><p>Loads a package into the file system cache.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>REPAIR</p></td>
<td align="left"><p>Resets your personal settings for an application.</p></td>
</tr>
<tr class="even">
<td align="left"><p>REFRESH</p></td>
<td align="left"><p>Triggers a publishing server refresh.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>PUBLISH</p></td>
<td align="left"><p>Publishes an application shortcut to the user's Start menu, desktop, or other specified location, or can be used to publish the contents of an entire package.</p></td>
</tr>
<tr class="even">
<td align="left"><p>UNPUBLISH</p></td>
<td align="left"><p>Removes the shortcuts and file types for an entire package.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>QUERY</p></td>
<td align="left"><p>Gets a current list of applications, packages, file type associations, or publishing servers.</p></td>
</tr>
<tr class="even">
<td align="left"><p>CLEAR</p></td>
<td align="left"><p>Removes your personal settings and desktop configurations for one or more applications.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>UNLOAD</p></td>
<td align="left"><p>Unloads a package from the file system cache.</p></td>
</tr>
<tr class="even">
<td align="left"><p>LOCK</p></td>
<td align="left"><p>Locks the application specified in the file system cache.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>UNLOCK</p></td>
<td align="left"><p>Unlocks the application specified in the file system cache.</p></td>
</tr>
</tbody>
</table>

 

For more information about the preceding actions, use the following command:

`SFTMIME /HELP VERB:verb`

For example, the following command will display information for the ADD verb:

`SFTMIME /HELP VERB:ADD`

## Related topics


[SFTMIME Command Reference](sftmime--command-reference.md)

 

 





