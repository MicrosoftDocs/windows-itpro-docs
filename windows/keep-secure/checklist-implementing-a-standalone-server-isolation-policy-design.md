---
title: Checklist Implementing a Standalone Server Isolation Policy Design (Windows 10)
description: Checklist Implementing a Standalone Server Isolation Policy Design
ms.assetid: 50a997d8-f079-408c-8ac6-ecd02078ade3
author: brianlic-msft
---

# Checklist: Implementing a Standalone Server Isolation Policy Design


This checklist contains procedures for creating a server isolation policy design that is not part of an isolated domain. For the steps required to create an isolated server zone within an isolated domain, see [Checklist: Configuring Rules for an Isolated Server Zone](../p_server_archive/checklist-configuring-rules-for-an-isolated-server-zone.md).

This parent checklist includes cross-reference links to important concepts about the domain isolation policy design. It also contains links to subordinate checklists that will help you complete the tasks that are required to implement this design.

**Note**  
Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist.

The procedures in this section use the Group Policy MMC snap-in interfaces to configure the GPOs, but you can also use Windows PowerShell. For more information, see [Windows Firewall with Advanced Security Administration with Windows PowerShell](http://technet.microsoft.com/library/hh831755.aspx) at http://technet.microsoft.com/library/hh831755.aspx.

 

![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif) **Checklist: Implementing a standalone server isolation policy design**

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
<td><p>Review important concepts and examples for the server isolation policy design to determine if this design meets your deployment goals and the needs of your organization.</p></td>
<td><p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Identifying Your Windows Firewall with Advanced Security Deployment Goals](../p_server_archive/identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Server Isolation Policy Design](../p_server_archive/server-isolation-policy-design.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Server Isolation Policy Design Example](../p_server_archive/server-isolation-policy-design-example.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Planning Server Isolation Zones](../p_server_archive/planning-server-isolation-zones.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the GPOs and connection security rules for isolated servers.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Configuring Rules for Servers in a Standalone Isolated Server Zone](../p_server_archive/checklist-configuring-rules-for-servers-in-a-standalone-isolated-server-zone.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the GPOs and connection security rules for the client computers that must connect to the isolated servers.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Creating Rules for Clients of a Standalone Isolated Server Zone](../p_server_archive/checklist-creating-rules-for-clients-of-a-standalone-isolated-server-zone.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Verify that the connection security rules are protecting network traffic on your test computers.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Verify That Network Traffic Is Authenticated](../p_server_archive/verify-that-network-traffic-is-authenticated.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>After you confirm that network traffic is authenticated by IPsec as expected, you can change authentication rules for the isolated server zone to require authentication instead of requesting it.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Change Rules from Request to Require Mode](../p_server_archive/change-rules-from-request-to-require-mode.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>According to the testing and roll-out schedule in your design plan, add computer accounts for the client computers to the membership group so that you can deploy the settings.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Production Computers to the Membership Group for a Zone](../p_server_archive/add-production-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
</tbody>
</table>

 

 

 





