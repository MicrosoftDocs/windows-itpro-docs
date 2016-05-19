---
title: Audit Kerberos Service Ticket Operations (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Kerberos Service Ticket Operations, which determines whether the operating system generates security audit events for Kerberos service ticket requests.
ms.assetid: ddc0abef-ac7f-4849-b90d-66700470ccd6
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Audit Kerberos Service Ticket Operations
**Applies to**
-   Windows 10
-   Windows 10 Mobile
This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Kerberos Service Ticket Operations**, which determines whether the operating system generates security audit events for Kerberos service ticket requests.
Events are generated every time Kerberos is used to authenticate a user who wants to access a protected network resource. Kerberos service ticket operation audit events can be used to track user activity.
Event volume:
-   High on a domain controller that is in a Key Distribution Center (KDC)
-   Low on domain members
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
<td align="left"><p>4769</p></td>
<td align="left"><p>A Kerberos service ticket was requested.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4770</p></td>
<td align="left"><p>A Kerberos service ticket was renewed.</p></td>
</tr>
</tbody>
</table>
 
## Related topics
[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
