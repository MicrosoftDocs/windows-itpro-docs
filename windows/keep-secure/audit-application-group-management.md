---
title: Audit Application Group Management (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Application Group Management, which determines whether the operating system generates audit events when application group management tasks are performed.
ms.assetid: 1bcaa41e-5027-4a86-96b7-f04eaf1c0606
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Application Group Management
**Applies to**
-   Windows 10
This topic for the IT professional describes the advanced security audit policy setting, **Audit Application Group Management**, which determines whether the operating system generates audit events when application group management tasks are performed.
Application group management tasks include:
-   An application group is created, changed, or deleted.
-   A member is added to or removed from an application group.
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
<td align="left"><p>4783</p></td>
<td align="left"><p>A basic application group was created.</p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>4784</p></td>
<td align="left"><p>A basic application group was changed.</p>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>4785</p></td>
<td align="left"><p>A member was added to a basic application group.</p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>4786</p></td>
<td align="left"><p>A member was removed from a basic application group.</p>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>4787</p></td>
<td align="left"><p>A non-member was added to a basic application group.</p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>4788</p></td>
<td align="left"><p>A non-member was removed from a basic application group.</p>
<p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>4789</p></td>
<td align="left"><p>A basic application group was deleted.</p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>4790</p></td>
<td align="left"><p>An LDAP query group was created.</p>
<p></p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
