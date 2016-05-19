---
title: Audit RPC Events (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit RPC Events, which determines whether the operating system generates audit events when inbound remote procedure call (RPC) connections are made.
ms.assetid: 868aec2d-93b4-4bc8-a150-941f88838ba6
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit RPC Events
**Applies to**
-   Windows 10
This topic for the IT professional describes the advanced security audit policy setting, **Audit RPC Events**, which determines whether the operating system generates audit events when inbound remote procedure call (RPC) connections are made.
RPC is a technology for creating distributed client/server programs. RPC is an interprocess communication technique that enables client and server software to communicate. For more information, see [What Is RPC?](http://technet.microsoft.com/library/cc787851.aspx).
Event volume: High on RPC servers
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
<td align="left"><p>5712</p></td>
<td align="left"><p>A Remote Procedure Call (RPC) was attempted.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
