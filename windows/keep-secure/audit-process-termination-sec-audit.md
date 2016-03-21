---
title: Audit Process Termination (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Process Termination, which determines whether the operating system generates audit events when an attempt is made to end a process.
ms.assetid: 65d88e53-14aa-48a4-812b-557cebbf9e50
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Process Termination


**Applies to**

-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Process Termination**, which determines whether the operating system generates audit events when an attempt is made to end a process.

Success audits record successful attempts and Failure audits record unsuccessful attempts.

If you do not configure this policy setting, no audit event is generated when a process ends.

This policy setting can help you track user activity and understand how the computer is used.

Event volume: Varies, depending on how the computer is used

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
<td align="left"><p>4689</p></td>
<td align="left"><p>A process has exited.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





