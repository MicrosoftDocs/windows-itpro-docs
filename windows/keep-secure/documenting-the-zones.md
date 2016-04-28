---
title: Documenting the Zones (Windows 10)
description: Documenting the Zones
ms.assetid: ebd7a650-4d36-42d4-aac0-428617f5a32d
author: brianlic-msft
---

# Documenting the Zones


Generally, the task of determining zone membership is not complex, but it can be time-consuming. Use the information generated during the [Designing a Windows Firewall with Advanced Security Strategy](designing-a-windows-firewall-with-advanced-security-strategy.md) section of this guide to determine the zone in which to put each host. You can document this zone placement by adding a Group column to the inventory table shown in the Designing a Windows Firewall with Advanced Security Strategy section. A sample is shown here:

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<thead>
<tr class="header">
<th>Host name</th>
<th>Hardware reqs met</th>
<th>Software reqs met</th>
<th>Configuration required</th>
<th>Details</th>
<th>Projected cost</th>
<th>Group</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CLIENT001</p></td>
<td><p>No</p></td>
<td><p>No</p></td>
<td><p>Upgrade hardware and software.</p></td>
<td><p>Current operating system is Windows XP. Old hardware not compatible with Windows 8.</p></td>
<td><p>$??</p></td>
<td><p>Isolated domain</p></td>
</tr>
<tr class="even">
<td><p>SERVER002</p></td>
<td><p>Yes</p></td>
<td><p>No</p></td>
<td><p>Join trusted domain, upgrade from Windows Server 2008 to Windows Server 2012</p></td>
<td><p>No antivirus software present.</p></td>
<td><p>$??</p></td>
<td><p>Encryption</p></td>
</tr>
<tr class="odd">
<td><p>SENSITIVE001</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Not required.</p></td>
<td><p>Running Windows Server 2012. Ready for inclusion.</p></td>
<td><p>$0</p></td>
<td><p>Isolated server (in zone by itself)</p></td>
</tr>
<tr class="even">
<td><p>PRINTSVR1</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Not required.</p></td>
<td><p>Running Windows Server 2008 R2. Ready for inclusion.</p></td>
<td><p>$0</p></td>
<td><p>Boundary</p></td>
</tr>
</tbody>
</table>

 

**Next: **[Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md)

 

 





