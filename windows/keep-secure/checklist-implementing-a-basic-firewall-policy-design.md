---
title: Checklist Implementing a Basic Firewall Policy Design (Windows 10)
description: Checklist Implementing a Basic Firewall Policy Design
ms.assetid: 6caf0c1e-ac72-4f9d-a986-978b77fbbaa3
author: brianlic-msft
---

# Checklist: Implementing a Basic Firewall Policy Design


This parent checklist includes cross-reference links to important concepts about the basic firewall policy design. It also contains links to subordinate checklists that will help you complete the tasks that are required to implement this design.

**Note**  
Complete the tasks in this checklist in order. When a reference link takes you to a procedure, return to this topic after you complete the steps in that procedure so that you can proceed with the remaining tasks in this checklist.

The procedures in this section use the Group Policy MMC snap-in interfaces to configure the GPOs, but you can also use Windows PowerShell. For more information, see [Windows Firewall with Advanced Security Administration with Windows PowerShell](http://technet.microsoft.com/library/hh831755.aspx) at http://technet.microsoft.com/library/hh831755.aspx.

 

![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif) **Checklist: Implementing a basic firewall policy design**

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
<td><p>Review important concepts and examples for the basic firewall policy design to determine if this design meets the needs of your organization.</p></td>
<td><p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Identifying Your Windows Firewall with Advanced Security Deployment Goals](../p_server_archive/identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Basic Firewall Policy Design](../p_server_archive/basic-firewall-policy-design.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Firewall Policy Design Example](../p_server_archive/firewall-policy-design-example.md)</p>
<p><img src="images/faa393df-4856-4431-9eda-4f4e5be72a90.gif" alt="Conceptual topic" />[Planning Settings for a Basic Firewall Policy](../p_server_archive/planning-settings-for-a-basic-firewall-policy.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the membership group and a GPO for each set of computers that require different firewall rules. Where GPOs will be similar, such as for Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2, create one GPO, configure it by using the tasks in this checklist, and then make a copy of the GPO for the other version of Windows. For example, create and configure the GPO for Windows 8, make a copy of it for Windows Server 2012, and then follow the steps in this checklist to make the few required changes to the copy.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Creating Group Policy Objects](../p_server_archive/checklist-creating-group-policy-objects.md)</p>
<p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Copy a GPO to Create a New GPO](../p_server_archive/copy-a-gpo-to-create-a-new-gpo.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>If you are working on a GPO that was copied from another, modify the group membership and WMI filters so that they are correct for the computers for which this GPO is intended.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Modify GPO Filters to Apply to a Different Zone or Version of Windows](../p_server_archive/modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure the GPO with firewall default settings appropriate for your design.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Configuring Basic Firewall Settings](../p_server_archive/checklist-configuring-basic-firewall-settings.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create one or more inbound firewall rules to allow unsolicited inbound network traffic.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Creating Inbound Firewall Rules](../p_server_archive/checklist-creating-inbound-firewall-rules.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create one or more outbound firewall rules to block unwanted outbound network traffic.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Creating Outbound Firewall Rules](../p_server_archive/checklist-creating-outbound-firewall-rules.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Link the GPO to the domain level of the Active Directory organizational unit hierarchy.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Link the GPO to the Domain](../p_server_archive/link-the-gpo-to-the-domain.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Add test computers to the membership group, and then confirm that the computers receive the firewall rules from the GPOs as expected.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Test Computers to the Membership Group for a Zone](../p_server_archive/add-test-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>According to the testing and roll-out schedule in your design plan, add computer accounts to the membership group to deploy the completed firewall policy settings to your computers.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Production Computers to the Membership Group for a Zone](../p_server_archive/add-production-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
</tbody>
</table>

 

 

 





