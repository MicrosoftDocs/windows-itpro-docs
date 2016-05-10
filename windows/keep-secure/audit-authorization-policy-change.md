---
title: Audit Authorization Policy Change (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Authorization Policy Change, which determines whether the operating system generates audit events when specific changes are made to the authorization policy.
ms.assetid: ca0587a2-a2b3-4300-aa5d-48b4553c3b36
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Authorization Policy Change
**Applies to**
-   Windows 10
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Authorization Policy Change**, which determines whether the operating system generates audit events when specific changes are made to the authorization policy.
Authorization policy changes that can be audited include:
-   Assigning or removing user rights (privileges) such as **SeCreateTokenPrivilege**, except for the system access rights that are audited by using the [Audit Authentication Policy Change](audit-authentication-policy-change.md) subcategory.
-   Changing the Encrypting File System (EFS) policy.
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
<td align="left"><p>4704</p></td>
<td align="left"><p>A user right was assigned.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4705</p></td>
<td align="left"><p>A user right was removed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4706</p></td>
<td align="left"><p>A new trust was created to a domain.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4707</p></td>
<td align="left"><p>A trust to a domain was removed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4714</p></td>
<td align="left"><p>Encrypted data recovery policy was changed.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
