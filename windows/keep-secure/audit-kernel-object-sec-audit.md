---
title: Audit Kernel Object (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting Audit Kernel Object which determines whether the operating system generates audit events when users attempt to access the system kernel which includes mutexes and semaphores.
MSHAttr: PreferredLib /library
ms.assetid: 75619d8b-b1eb-445b-afc9-0f9053be97fb
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Kernel Object


**Applies to**

-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Kernel Object**, which determines whether the operating system generates audit events when users attempt to access the system kernel, which includes mutexes and semaphores.

Only kernel objects with a matching system access control list (SACL) generate security audit events. The audits generated are usually useful only to developers.

Typically, kernel objects are given SACLs only if the **AuditBaseObjects** or **AuditBaseDirectories** auditing options are enabled.

**Note**  
The **Audit: Audit the access of global system objects** policy setting controls the default SACL of kernel objects.

 

Event volume: High if you have enabled one of the Global Object Access Auditing settings

Default setting: Not configured

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
<td align="left"><p>4659</p></td>
<td align="left"><p>A handle to an object was requested with intent to delete.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4660</p></td>
<td align="left"><p>An object was deleted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4661</p></td>
<td align="left"><p>A handle to an object was requested.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4663</p></td>
<td align="left"><p>An attempt was made to access an object.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





