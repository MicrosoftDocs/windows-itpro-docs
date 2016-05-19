---
title: Audit Filtering Platform Packet Drop (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Filtering Platform Packet Drop, which determines whether the operating system generates audit events when packets are dropped by the Windows Filtering Platform.
ms.assetid: 95457601-68d1-4385-af20-87916ddab906
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Filtering Platform Packet Drop
**Applies to**
-   Windows 10
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Filtering Platform Packet Drop**, which determines whether the operating system generates audit events when packets are dropped by the Windows Filtering Platform.
Windows Filtering Platform (WFP) enables independent software vendors (ISVs) to filter and modify TCP/IP packets, monitor or authorize connections, filter Internet Protocol security (IPsec)-protected traffic, and filter remote procedure calls (RPCs).
A high rate of dropped packets may indicate that there have been attempts to gain unauthorized access to computers on your network.
Event volume: High
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
<td align="left"><p>5152</p></td>
<td align="left"><p>The Windows Filtering Platform blocked a packet.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5153</p></td>
<td align="left"><p>A more restrictive Windows Filtering Platform filter has blocked a packet.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
