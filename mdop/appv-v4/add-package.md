---
title: ADD PACKAGE
description: ADD PACKAGE
author: dansimp
ms.assetid: aa83928d-a234-4395-831e-2a7ef786ff53
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# ADD PACKAGE


Adds a package record. If the package already exists, this command will update the configuration of the existing package.

`SFTMIME ADD PACKAGE:package-name /MANIFEST manifest-path                 [/OVERRIDEURL url [/AUTOLOADONREFRESH] [/AUTOLOADONLOGIN]                 [/AUTOLOADONLAUNCH] [/AUTOLOADTARGET {NONE|ALL|PREVUSED}]                 [/GLOBAL] [/LOG log-pathname | /CONSOLE | /GUI]`

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
<td align="left"><p>PACKAGE:&lt;package-name&gt;</p></td>
<td align="left"><p>User-visible and user-friendly name for the package.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/MANIFEST &lt;manifest-path&gt;</p></td>
<td align="left"><p>The path of the manifest file that lists the applications included in the package and all of their publishing information.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/OVERRIDEURL &lt;URL&gt;</p></td>
<td align="left"><p>The location of the package's SFT file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/AUTOLOADONREFRESH</p></td>
<td align="left"><p>Background loading is performed after a publishing refresh.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/AUTOLOADONLOGIN</p></td>
<td align="left"><p>Background loading is performed when a user logs in.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/AUTOLOADONLAUNCH</p></td>
<td align="left"><p>Background loading is performed after a user starts an application from the package.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/AUTOLOADTARGET target</p></td>
<td align="left"><p>Indicates which applications from the package will be autoloaded.</p></td>
</tr>
<tr class="even">
<td align="left"><p>NONE</p></td>
<td align="left"><p>No autoloading will be performed, despite the presence of any /AUTOLOADONxxx flags.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ALL</p></td>
<td align="left"><p>If an autoload trigger is enabled, all applications in the package will be loaded into cache whether or not they have been previously started.</p></td>
</tr>
<tr class="even">
<td align="left"><p>PREVUSED</p></td>
<td align="left"><p>If an autoload trigger is enabled, the package will load if any applications in this package have previously been started by a user.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/GLOBAL</p></td>
<td align="left"><p>If present, the package will be available for all users on this computer.</p></td>
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

 

 





