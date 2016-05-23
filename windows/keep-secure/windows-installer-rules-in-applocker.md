---
title: Windows Installer rules in AppLocker (Windows 10)
description: This topic describes the file formats and available default rules for the Windows Installer rule collection.
ms.assetid: 3fecde5b-88b3-4040-81fa-a2d36d052ec9
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Windows Installer rules in AppLocker
**Applies to**
-   Windows 10
This topic describes the file formats and available default rules for the Windows Installer rule collection.
AppLocker defines Windows Installer rules to include only the following file formats:
-   .msi
-   .msp
-   .mst
The purpose of this collection is to allow you to control the installation of files on client computers and servers through Group Policy or the Local Security Policy snap-in. The following table lists the default rules that are available for the Windows Installer rule collection.
<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Purpose</th>
<th align="left">Name</th>
<th align="left">User</th>
<th align="left">Rule condition type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Allow members of the local Administrators group to run all Windows Installer files</p></td>
<td align="left"><p>(Default Rule) All Windows Installer files</p></td>
<td align="left"><p>BUILTIN\Administrators</p></td>
<td align="left"><p>Path: *</p></td>
</tr>
<tr class="even">
<td align="left"><p>Allow all users to run Windows Installer files that are digitally signed</p></td>
<td align="left"><p>(Default Rule) All digitally signed Windows Installer files</p></td>
<td align="left"><p>Everyone</p></td>
<td align="left"><p>Publisher: * (all signed files)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow all users to run Windows Installer files that are located in the Windows Installer folder</p></td>
<td align="left"><p>(Default Rule) All Windows Installer files in %systemdrive%\Windows\Installer</p></td>
<td align="left"><p>Everyone</p></td>
<td align="left"><p>Path: %windir%\Installer\*</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Understanding AppLocker default rules](understanding-applocker-default-rules.md)
 
 
