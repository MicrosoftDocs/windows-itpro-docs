---
title: Script rules in AppLocker (Windows 10)
description: This topic describes the file formats and available default rules for the script rule collection.
ms.assetid: fee24ca4-935a-4c5e-8a92-8cf1d134d35f
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Script rules in AppLocker


**Applies to**

-   Windows 10

This topic describes the file formats and available default rules for the script rule collection.

AppLocker defines script rules to include only the following file formats:

-   .ps1

-   .bat

-   .cmd

-   .vbs

-   .js

The following table lists the default rules that are available for the script rule collection.

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
<td align="left"><p>Allows members of the local Administrators group to run all scripts</p></td>
<td align="left"><p>(Default Rule) All scripts</p></td>
<td align="left"><p>BUILTIN\Administrators</p></td>
<td align="left"><p>Path: *</p></td>
</tr>
<tr class="even">
<td align="left"><p>Allow all users to run scripts in the Windows folder</p></td>
<td align="left"><p>(Default Rule) All scripts located in the Windows folder</p></td>
<td align="left"><p>Everyone</p></td>
<td align="left"><p>Path: %windir%\*</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow all users to run scripts in the Program Files folder</p></td>
<td align="left"><p>(Default Rule) All scripts located in the Program Files folder</p></td>
<td align="left"><p>Everyone</p></td>
<td align="left"><p>Path: %programfiles%\*</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Understanding AppLocker default rules](understanding-applocker-default-rules.md)

 

 





