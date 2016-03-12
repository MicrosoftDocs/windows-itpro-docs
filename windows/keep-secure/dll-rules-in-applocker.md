---
title: DLL rules in AppLocker (Windows 10)
description: This topic describes the file formats and available default rules for the DLL rule collection.
MSHAttr: PreferredLib /library
ms.assetid: a083fd08-c07e-4534-b0e7-1e15d932ce8f
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# DLL rules in AppLocker


**Applies to**

-   Windows 10

This topic describes the file formats and available default rules for the DLL rule collection.

AppLocker defines DLL rules to include only the following file formats:

-   .dll

-   .ocx

The following table lists the default rules that are available for the DLL rule collection.

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
<td align="left"><p>Allows members of the local Administrators group to run all DLLs</p></td>
<td align="left"><p>(Default Rule) All DLLs</p></td>
<td align="left"><p>BUILTIN\Administrators</p></td>
<td align="left"><p>Path: *</p></td>
</tr>
<tr class="even">
<td align="left"><p>Allow all users to run DLLs in the Windows folder</p></td>
<td align="left"><p>(Default Rule) Microsoft Windows DLLs</p></td>
<td align="left"><p>Everyone</p></td>
<td align="left"><p>Path: %windir%\*</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow all users to run DLLs in the Program Files folder</p></td>
<td align="left"><p>(Default Rule) All DLLs located in the Program Files folder</p></td>
<td align="left"><p>Everyone</p></td>
<td align="left"><p>Path: %programfiles%\*</p></td>
</tr>
</tbody>
</table>

 

**Important**  
If you use DLL rules, a DLL allow rule has to be created for each DLL that is used by all of the allowed apps

 

**Caution**  
When DLL rules are used, AppLocker must check each DLL that an app loads. Therefore, users may experience a reduction in performance if DLL rules are used.

 

## Related topics


[Understanding AppLocker default rules](understanding-applocker-default-rules.md)

 

 





