---
title: Audit Other Logon/Logoff Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Logon/Logoff Events, which determines whether Windows generates audit events for other logon or logoff events.
ms.assetid: 76d987cd-1917-4907-a739-dd642609a458
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Other Logon/Logoff Events


**Applies to**

-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Other Logon/Logoff Events**, which determines whether Windows generates audit events for other logon or logoff events.

These other logon or logoff events include:

-   A Remote Desktop session connects or disconnects.

-   A workstation is locked or unlocked.

-   A screen saver is invoked or dismissed.

-   A replay attack is detected. This event indicates that a Kerberos request was received twice with identical information. This condition could also be caused by network misconfiguration.

-   A user is granted access to a wireless network. It can either be a user account or the computer account.

-   A user is granted access to a wired 802.1x network. It can either be a user account or the computer account.

Logon events are essential to understanding user activity and detecting potential attacks.

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
<td align="left"><p>4649</p></td>
<td align="left"><p>A replay attack was detected.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4778</p></td>
<td align="left"><p>A session was reconnected to a Window Station.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4779</p></td>
<td align="left"><p>A session was disconnected from a Window Station.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4800</p></td>
<td align="left"><p>The workstation was locked.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4801</p></td>
<td align="left"><p>The workstation was unlocked.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4802</p></td>
<td align="left"><p>The screen saver was invoked.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4803</p></td>
<td align="left"><p>The screen saver was dismissed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5378</p></td>
<td align="left"><p>The requested credentials delegation was disallowed by policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>5632</p></td>
<td align="left"><p>A request was made to authenticate to a wireless network.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5633</p></td>
<td align="left"><p>A request was made to authenticate to a wired network.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





