---
title: Audit Detailed Directory Service Replication (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting Audit Detailed Directory Service Replication which determines whether the operating system generates audit events that contain detailed tracking information about data that is replicated between domain controllers.
MSHAttr: PreferredLib /library
ms.assetid: 1b89c8f5-bce7-4b20-8701-42585c7ab993
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit Detailed Directory Service Replication


**Applies to**

-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit Detailed Directory Service Replication**, which determines whether the operating system generates audit events that contain detailed tracking information about data that is replicated between domain controllers.

This audit subcategory can be useful to diagnose replication issues.

Event volume: These events can create a very high volume of event data.

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
<td align="left"><p>4928</p></td>
<td align="left"><p>An Active Directory replica source naming context was established.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4929</p></td>
<td align="left"><p>An Active Directory replica source naming context was removed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4930</p></td>
<td align="left"><p>An Active Directory replica source naming context was modified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4931</p></td>
<td align="left"><p>An Active Directory replica destination naming context was modified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4934</p></td>
<td align="left"><p>Attributes of an Active Directory object were replicated.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4935</p></td>
<td align="left"><p>Replication failure begins.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4936</p></td>
<td align="left"><p>Replication failure ends.</p></td>
</tr>
<tr class="even">
<td align="left"><p>4937</p></td>
<td align="left"><p>A lingering object was removed from a replica.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Advanced security audit policy settings](advanced-security-audit-policy-settings.md)

 

 





