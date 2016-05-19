---
title: Audit Registry (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Registry, which determines whether the operating system generates audit events when users attempt to access registry objects.
ms.assetid: 02bcc23b-4823-46ac-b822-67beedf56b32
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Registry
**Applies to**
-   Windows 10
-   Windows 10 Mobile
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Registry**, which determines whether the operating system generates audit events when users attempt to access registry objects.
Audit events are generated only for objects that have configured system access control lists (SACLs) specified, and only if the type of access requested (such as Write, Read, or Modify) and the account making the request match the settings in the SACL.
If success auditing is enabled, an audit entry is generated each time any account successfully accesses a registry object that has a matching SACL. If failure auditing is enabled, an audit entry is generated each time any user unsuccessfully attempts to access a registry object that has a matching SACL.
Event volume: Low to medium, depending on how registry SACLs are configured
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
<td align="left"><p>4657</p></td>
<td align="left"><p>A registry value was modified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5039</p></td>
<td align="left"><p>A registry key was virtualized.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
