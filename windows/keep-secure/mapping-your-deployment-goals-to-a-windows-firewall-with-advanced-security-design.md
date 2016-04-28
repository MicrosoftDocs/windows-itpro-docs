---
title: Mapping Your Deployment Goals to a Windows Firewall with Advanced Security Design (Windows 10)
description: Mapping Your Deployment Goals to a Windows Firewall with Advanced Security Design
ms.assetid: 7e68c59e-ba40-49c4-8e47-5de5d6b5eb22
author: brianlic-msft
---

# Mapping Your Deployment Goals to a Windows Firewall with Advanced Security Design


After you finish reviewing the existing Windows Firewall with Advanced Security deployment goals and you determine which goals are important to your specific deployment, you can map those goals to a specific Windows Firewall with Advanced Security design.

**Important**  
The first three designs presented in this guide build on each other to progress from simpler to more complex. Therefore during deployment, consider implementing them in the order presented. Each deployed design also provides a stable position from which to evaluate your progress, and to make sure that your goals are being met before you continue to the next design.

 

Use the following table to determine which Windows Firewall with Advanced Security design maps to the appropriate combination of Windows Firewall with Advanced Security deployment goals for your organization. This table refers only to the Windows Firewall with Advanced Security designs as described in this guide. However, you can create a hybrid or custom Windows Firewall with Advanced Security design by using any combination of the Windows Firewall with Advanced Security deployment goals to meet the needs of your organization.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Deployment Goals</th>
<th>[Basic Firewall Policy Design](basic-firewall-policy-design.md)</th>
<th>[Domain Isolation Policy Design](domain-isolation-policy-design.md)</th>
<th>[Server Isolation Policy Design](server-isolation-policy-design.md)</th>
<th>[Certificate-based Isolation Policy Design](certificate-based-isolation-policy-design.md)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Protect Computers from Unwanted Network Traffic](protect-computers-from-unwanted-network-traffic.md)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Restrict Access to Only Trusted Computers](restrict-access-to-only-trusted-computers.md)</p></td>
<td><p>-</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Restrict Access to Only Specified Users or Computers](restrict-access-to-only-specified-users-or-computers.md)</p></td>
<td><p>-</p></td>
<td><p>-</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Require Encryption When Accessing Sensitive Network Resources](require-encryption-when-accessing-sensitive-network-resources.md)</p></td>
<td><p>-</p></td>
<td><p>Optional</p></td>
<td><p>Optional</p></td>
<td><p>Optional</p></td>
</tr>
</tbody>
</table>

 

To examine details for a specific design, click the design title at the top of the column in the preceding table.

**Next: **[Basic Firewall Policy Design](basic-firewall-policy-design.md)

 

 





