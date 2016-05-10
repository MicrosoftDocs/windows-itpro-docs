---
title: Audit Process Creation (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Process Creation, which determines whether the operating system generates audit events when a process is created (starts).
ms.assetid: 67e39fcd-ded6-45e8-b1b6-d411e4e93019
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Process Creation
**Applies to**
-   Windows 10
-   Windows 10 Mobile
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Process Creation**, which determines whether the operating system generates audit events when a process is created (starts).
These audit events can help you track user activity and understand how a computer is being used. Information includes the name of the program or the user that created the process.
Event volume: Low to medium, depending on system usage
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
<td align="left"><p>4688</p></td>
<td align="left"><p>A new process has been created.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4696</p></td>
<td align="left"><p>A primary token was assigned to a process.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
