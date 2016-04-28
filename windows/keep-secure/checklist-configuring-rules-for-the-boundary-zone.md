---
title: Checklist Configuring Rules for the Boundary Zone (Windows 10)
description: Checklist Configuring Rules for the Boundary Zone
ms.assetid: 25fe0197-de5a-4b4c-bc44-c6f0620ea94b
author: brianlic-msft
---

# Checklist: Configuring Rules for the Boundary Zone


The following checklists include tasks for configuring connection security rules and IPsec settings in your GPOs to implement the boundary zone in an isolated domain.

Rules for the boundary zone are typically the same as those for the isolated domain, with the exception that the final rule is left to only request, not require, authentication.

## <a href="" id="bkmk-section1"></a>


![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif)**Checklist: Configuring boundary zone rules for computers running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2**

A GPO for Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2 can simply be copied and then customized. This checklist assumes that you have already created the GPO for the isolated domain as described in [Checklist: Implementing a Domain Isolation Policy Design](../p_server_archive/checklist-implementing-a-domain-isolation-policy-design.md). After you create a copy for the boundary zone, make sure that you do not change the rule from request authentication to require authentication when you create the other GPOs.

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
<td><p>Make a copy of the domain isolation GPO for this version of Windows to serve as a starting point for the GPO for the boundary zone. Unlike the GPO for the main isolated domain zone, this copy is not changed after deployment to require authentication.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Copy a GPO to Create a New GPO](../p_server_archive/copy-a-gpo-to-create-a-new-gpo.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>If you are working on a copy of a GPO, modify the group memberships and WMI filters so that they are correct for the boundary zone and version of Windows for which this GPO is intended.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Modify GPO Filters to Apply to a Different Zone or Version of Windows](../p_server_archive/modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Link the GPO to the domain level of the Active Directory organizational unit hierarchy.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Link the GPO to the Domain](../p_server_archive/link-the-gpo-to-the-domain.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Add your test computers to the membership group for the boundary zone. Be sure to add at least one for each operating system supported by a different GPO in the group.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Test Computers to the Membership Group for a Zone](../p_server_archive/add-test-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Verify that the connection security configuration is protecting network traffic with authentication when it can, and that unauthenticated traffic is accepted.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Verify That Network Traffic Is Authenticated](../p_server_archive/verify-that-network-traffic-is-authenticated.md)</p></td>
</tr>
</tbody>
</table>

 

 

 





