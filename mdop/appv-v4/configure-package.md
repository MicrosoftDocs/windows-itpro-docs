---
title: CONFIGURE PACKAGE
description: CONFIGURE PACKAGE
author: dansimp
ms.assetid: acc7eaa8-6ada-47b9-a655-2ca2537605b9
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# CONFIGURE PACKAGE


Enables the user to change a package manifest file, package source, load trigger types, or load target for a package.

`SFTMIME CONFIGURE PACKAGE:package-name [/MANIFEST manifest-path]                 [/OVERRIDEURL url] [/AUTOLOADNEVER] [/AUTOLOADONREFRESH]                 [/AUTOLOADONLOGIN] [/AUTOLOADONLAUNCH]                 [/AUTOLOADTARGET {NONE|ALL|PREVUSED}]                 [/LOG log-pathname | /CONSOLE | /GUI]                 [/NO-UPDATE-FTA-SHORTCUT {TRUE|FALSE} {/GLOBAL}]`

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
<td align="left"><p>The path or URL of the manifest file that lists the applications included in the package and all of their publishing information.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/OVERRIDEURL &lt;URL&gt;</p></td>
<td align="left"><p>The location of the package's SFT file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/AUTOLOADNEVER</p></td>
<td align="left"><p>Background loading is turned off for the package.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/AUTOLOADONREFRESH</p></td>
<td align="left"><p>Background loading is performed after a publishing refresh.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/AUTOLOADONLOGIN</p></td>
<td align="left"><p>Background loading is performed when a user logs in.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/AUTOLOADONLAUNCH</p></td>
<td align="left"><p>Background loading is performed after a user starts an application from the package.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/AUTOLOADTARGET &lt;target&gt;</p></td>
<td align="left"><p>Indicates which applications from the package will be autoloaded.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>NONE</p></td>
<td align="left"><p>No autoloading will be performed despite the presence of any /AUTOLOADONxxx flags.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ALL</p></td>
<td align="left"><p>If an autoload trigger is enabled, all applications in the package will be loaded into cache regardless of whether they have ever been launched.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>PREVUSED</p></td>
<td align="left"><p>If an autoload trigger is enabled, the package will load if any applications in this package have previously been started by a user.</p></td>
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

 

For version 4.6 SP2, the following option has been added.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>[/NO-UPDATE-FTA-SHORTCUT {TRUE|FALSE} {/GLOBAL}]</p></td>
<td align="left"><p>If set to TRUE, a registry value is created for the package, either per user, or globally if the /GLOBAL flag is specified.</p>
<p>If set to FALSE, the registry value is removed and the file type associations (FTA) for the package are reinstalled.</p>
<p>If not specified, normal FTA and shortcut publishing behavior occurs. If you perform any subsequent publishing refresh operations on the App-V 4.6 SP2 client, the shortcuts and FTAs for packages that have this registry value set will not be changed, and the shortcuts and FTAs will not be registered at system startup or user login unless you reset the flag.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/GLOBAL</p></td>
<td align="left"><p>Works in conjunction with the /NO-UPDATE-FTA-SHORTCUT flag. If the /GLOBAL flag is present, it indicates that a registry value will be created for that package for all users. By default, the registry value is created only for this user.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[SFTMIME Command Reference](sftmime--command-reference.md)

 

 





