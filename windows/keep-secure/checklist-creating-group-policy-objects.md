---
title: Checklist Creating Group Policy Objects (Windows 10)
description: Checklist Creating Group Policy Objects
ms.assetid: e99bd6a4-34a7-47b5-9791-ae819977a559
author: brianlic-msft
---

# Checklist: Creating Group Policy Objects


To deploy firewall or IPsec settings or firewall or connection security rules, we recommend that you use Group Policy in AD DS. This section describes a tested, efficient method that requires some up-front work, but serves an administrator well in the long run by making GPO assignments as easy as dropping a computer into a membership group.

The checklists for firewall, domain isolation, and server isolation include a link to this checklist.

## About membership groups


For most GPO deployment tasks, you must determine which computers must receive and apply which GPOs. Because different versions of Windows can support different settings and rules to achieve similar behavior, you might need multiple GPOs: one for each operating system that has settings different from the others to achieve the same result. For example, Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 use rules and settings that are incompatible with Windows 2000, Windows XP, and Windows Server 2003. Therefore, if your network included those older operating systems you would need to create a GPO for each set of operating systems that can share common settings. To deploy typical domain isolation settings and rules, you might have five different GPOs for the versions of Windows discussed in this guide. By following the procedures in this guide, you only need one membership group to manage all five GPOs. The membership group is identified in the security group filter for all five GPOs. To apply the settings to a computer, you make that computer's account a member of the membership group. WMI filters are used to ensure that the correct GPO is applied.

## About exclusion groups


A Windows Firewall with Advanced Security design must often take into account domain-joined computers on the network that cannot or must not apply the rules and settings in the GPOs. Because these computers are typically fewer in number than the computers that must apply the GPO, it is easier to use the Domain Members group in the GPO membership group, and then place these exception computers into an exclusion group that is denied Apply Group Policy permissions on the GPO. Because deny permissions take precedence over allow permissions, a computer that is a member of both the membership group and the exception group is prevented from applying the GPO. Computers typically found in a GPO exclusion group for domain isolation include the domain controllers, DHCP servers, and DNS servers.

You can also use a membership group for one zone as an exclusion group for another zone. For example, computers in the boundary and encryption zones are technically in the main domain isolation zone, but must apply only the GPO for their assigned role. To do this, the GPOs for the main isolation zone deny Apply Group Policy permissions to members of the boundary and encryption zones.

![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif)**Checklist: Creating Group Policy objects**

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
<td><p>Review important concepts and examples for deploying GPOs in a way that best meets the needs of your organization.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Identifying Your Windows Firewall with Advanced Security Deployment Goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)</p>
<p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the membership group in AD DS that will be used to contain computer accounts that must receive the GPO.</p>
<p>If some computers in the membership group are running an operating system that does not support WMI filters, such as Windows 2000, create an exclusion group to contain the computer accounts for the computers that cannot be blocked by using a WMI filter.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create a Group Account in Active Directory](create-a-group-account-in-active-directory.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create a GPO for each version of Windows that has different implementation requirements.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create a Group Policy Object](create-a-group-policy-object.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create security group filters to limit the GPO to only computers that are members of the membership group and to exclude computers that are members of the exclusion group.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Assign Security Group Filters to the GPO](assign-security-group-filters-to-the-gpo.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create WMI filters to limit each GPO to only the computers that match the criteria in the filter.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create WMI Filters for the GPO](create-wmi-filters-for-the-gpo.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>If you are working on a GPO that was copied from another, modify the group memberships and WMI filters so that they are correct for the new zone or version of Windows for which this GPO is intended.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Link the GPO to the domain level of the Active Directory organizational unit hierarchy.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Link the GPO to the Domain](link-the-gpo-to-the-domain.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Before adding any rules or configuring the GPO, add a few test computers to the membership group, and make sure that the correct GPO is received and applied to each member of the group.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Test Computers to the Membership Group for a Zone](add-test-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
</tbody>
</table>

 

 

 





