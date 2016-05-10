---
title: Audit Logoff (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Logoff, which determines whether the operating system generates audit events when logon sessions are terminated.
ms.assetid: 681e51f2-ba06-46f5-af8c-d9c48d515432
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Logoff
**Applies to**
-   Windows 10
-   Windows 10 Mobile
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Logoff**, which determines whether the operating system generates audit events when logon sessions are terminated.
These events occur on the computer that was accessed. In the case of an interactive logon, these events are generated on the computer that was logged on to.
**Note**  
There is no failure event in this subcategory because failed logoffs (such as when a system abruptly shuts down) do not generate an audit record.
 
Logon events are essential to understanding user activity and detecting potential attacks. Logoff events are not 100 percent reliable. For example, the computer can be turned off without a proper logoff and shutdown; in this case, a logoff event is not generated.
Event volume: Low
Default: Success
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
<td align="left"><p>4634</p></td>
<td align="left"><p>An account was logged off.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4647</p></td>
<td align="left"><p>User initiated logoff.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
