---
title: Audit Computer Account Management (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting Audit Computer Account Management which determines whether the operating system generates audit events when a computer account is created changed or deleted.
MSHAttr: PreferredLib /library
ms.assetid: 6c406693-57bf-4411-bb6c-ff83ce548991
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Computer Account Management


**Applies to**

-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Computer Account Management**, which determines whether the operating system generates audit events when a computer account is created, changed, or deleted.

This policy setting is useful for tracking account-related changes to computers that are members of a domain.

Event volume: Low

Default: Not configured

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event ID</th>
<th align="left">Event message</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>4741</p></td>
<td align="left"><p>A computer account was created.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4742</p></td>
<td align="left"><p>A computer account was changed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4743</p></td>
<td align="left"><p>A computer account was deleted.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





