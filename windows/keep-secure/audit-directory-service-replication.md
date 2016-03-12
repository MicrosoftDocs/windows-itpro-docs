---
title: Audit Directory Service Replication (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting Audit Directory Service Replication which determines whether the operating system generates audit events when replication between two domain controllers begins and ends.
MSHAttr: PreferredLib /library
ms.assetid: b95d296c-7993-4e8d-8064-a8bbe284bd56
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Directory Service Replication


**Applies to**

-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Directory Service Replication**, which determines whether the operating system generates audit events when replication between two domain controllers begins and ends.

Event volume: Medium on domain controllers; none on client computers

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
<td align="left"><p>4932</p></td>
<td align="left"><p>Synchronization of a replica of an Active Directory naming context has begun.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4933</p></td>
<td align="left"><p>Synchronization of a replica of an Active Directory naming context has ended.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





