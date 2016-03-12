---
title: Audit Handle Manipulation (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting Audit Handle Manipulation which determines whether the operating system generates audit events when a handle to an object is opened or closed.
MSHAttr: PreferredLib /library
ms.assetid: 1fbb004a-ccdc-4c80-b3da-a4aa7a9f4091
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Handle Manipulation


**Applies to**

-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Handle Manipulation**, which determines whether the operating system generates audit events when a handle to an object is opened or closed.

Only objects with configured system access control lists (SACLs) generate these events, and only if the attempted handle operation matches the SACL.

**Important**  
Handle Manipulation events are generated only for object types where the corresponding File System or Registry Object Access subcategory is enabled. For more information, see [Audit File System](audit-file-system.md) or [Audit Registry](audit-registry.md).

 

Event volume: High, depending on how SACLs are configured

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
<td align="left"><p>4656</p></td>
<td align="left"><p>A handle to an object was requested.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4658</p></td>
<td align="left"><p>The handle to an object was closed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4690</p></td>
<td align="left"><p>An attempt was made to duplicate a handle to an object.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





