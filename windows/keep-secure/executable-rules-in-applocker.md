---
title: Executable rules in AppLocker (Windows 10)
description: This topic describes the file formats and available default rules for the executable rule collection.
ms.assetid: 65e62f90-6caa-48f8-836a-91f8ac9018ee
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Executable rules in AppLocker
**Applies to**
-   Windows 10
This topic describes the file formats and available default rules for the executable rule collection.
AppLocker defines executable rules as any files with the .exe and .com extensions that are associated with an app. Because all of the default rules for the executable rule collection are based on folder paths, all files under those paths will be allowed. The following table lists the default rules that are available for the executable rule collection.
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
<td align="left"><p>Allow members of the local Administrators group access to run all executable files</p></td>
<td align="left"><p>(Default Rule) All files</p></td>
<td align="left"><p>BUILTIN\Administrators</p></td>
<td align="left"><p>Path: *</p></td>
</tr>
<tr class="even">
<td align="left"><p>Allow all users to run executable files in the Windows folder</p></td>
<td align="left"><p>(Default Rule) All files located in the Windows folder</p></td>
<td align="left"><p>Everyone</p></td>
<td align="left"><p>Path: %windir%\*</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow all users to run executable files in the Program Files folder</p></td>
<td align="left"><p>(Default Rule) All files located in the Program Files folder</p></td>
<td align="left"><p>Everyone</p></td>
<td align="left"><p>Path: %programfiles%\*</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Understanding AppLocker Default Rules](understanding-applocker-default-rules.md)
 
 
