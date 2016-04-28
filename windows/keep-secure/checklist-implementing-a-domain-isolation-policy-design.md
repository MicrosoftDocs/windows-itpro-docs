---
title: Checklist Implementing a Domain Isolation Policy Design (Windows 10)
description: Checklist Implementing a Domain Isolation Policy Design
ms.assetid: 76586eb3-c13c-4d71-812f-76bff200fc20
author: brianlic-msft
---

# Checklist: Implementing a Domain Isolation Policy Design


This parent checklist includes cross-reference links to important concepts about the domain isolation policy design. It also contains links to subordinate checklists that will help you complete the tasks that are required to implement this design.

**Note**  
Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist.

The procedures in this section use the Group Policy MMC snap-ins to configure the GPOs, but you can also use Windows PowerShell to configure GPOs. For more information, see [Windows Firewall with Advanced Security Administration with Windows PowerShell](http://technet.microsoft.com/library/hh831755.aspx) at http://technet.microsoft.com/library/hh831755.aspx.

For more information about the security algorithms and authentication methods available in each version of Windows, see [IPsec Algorithms and Methods Supported in Windows](http://technet.microsoft.com/library/dd125380.aspx) at http://technet.microsoft.com/library/dd125380.aspx.

 

![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif) **Checklist: Implementing a domain isolation policy design**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>Task</th>
<th>Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Review important concepts and examples for the domain isolation policy design, determine your Windows Firewall with Advanced Security deployment goals, and customize this design to meet the needs of your organization.</p></td>
<td><p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Identifying Your Windows Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Domain Isolation Policy Design](domain-isolation-policy-design.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Domain Isolation Policy Design Example](domain-isolation-policy-design-example.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Planning Domain Isolation Zones](planning-domain-isolation-zones.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the GPOs and connection security rules for the isolated domain.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Configuring Rules for the Isolated Domain](checklist-configuring-rules-for-the-isolated-domain.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the GPOs and connection security rules for the boundary zone.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Configuring Rules for the Boundary Zone](checklist-configuring-rules-for-the-boundary-zone.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the GPOs and connection security rules for the encryption zone.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Configuring Rules for the Encryption Zone](checklist-configuring-rules-for-the-encryption-zone.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the GPOs and connection security rules for the isolated server zone.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Configuring Rules for an Isolated Server Zone](checklist-configuring-rules-for-an-isolated-server-zone.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>According to the testing and roll-out schedule in your design plan, add computer accounts to the membership group to deploy rules and settings to your computers.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Production Computers to the Membership Group for a Zone](add-production-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>After you confirm that network traffic is authenticated by IPsec, you can change authentication rules for the isolated domain and encryption zone from request to require mode.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Change Rules from Request to Require Mode](change-rules-from-request-to-require-mode.md)</p></td>
</tr>
</tbody>
</table>

 

 

 





