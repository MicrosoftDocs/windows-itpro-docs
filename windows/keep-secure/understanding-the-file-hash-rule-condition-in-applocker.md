---
title: Understanding the file hash rule condition in AppLocker (Windows 10)
description: This topic explains the AppLocker file hash rule condition the advantages and disadvantages and how it is applied.
MSHAttr: PreferredLib /library
ms.assetid: 4c6d9af4-2b1a-40f4-8758-1a6f9f147756
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Understanding the file hash rule condition in AppLocker


**Applies to**

-   Windows 10

This topic explains the AppLocker file hash rule condition, the advantages and disadvantages, and how it is applied.

File hash rules use a system-computed cryptographic hash of the identified file. For files that are not digitally signed, file hash rules are more secure than path rules. The following table describes the advantages and disadvantages of the file hash condition.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">File hash condition advantages</th>
<th align="left">File hash condition disadvantages</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Because each file has a unique hash, a file hash condition applies to only one file.</p></td>
<td align="left"><p>Each time that the file is updated (such as a security update or upgrade), the file's hash will change. As a result, you must manually update file hash rules.</p></td>
</tr>
</tbody>
</table>

 

For an overview of the three types of AppLocker rule conditions and explanations of the advantages and disadvantages of each, see [Understanding AppLocker rule condition types](understanding-applocker-rule-condition-types.md).

## Related topics


[How AppLocker works](how-applocker-works-techref.md)

 

 





