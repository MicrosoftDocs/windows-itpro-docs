---
title: Planning Isolation Groups for the Zones (Windows 10)
description: Planning Isolation Groups for the Zones
ms.assetid: be4b662d-c1ce-441e-b462-b140469a5695
author: brianlic-msft
---

# Planning Isolation Groups for the Zones


Isolation groups in Active Directory are how you implement the various domain and server isolation zones. A computer is assigned to a zone by adding its computer account to the group which represents that zone.

**Caution**  
Do not add computers to your groups yet. If a computer is in a group when the GPO is activated then that GPO is applied to the computer. If the GPO is one that requires authentication, and the other computers have not yet received their GPOs, the computer that uses the new GPO might not be able to communicate with the others.

 

Universal groups are the best option to use for GPO assignment because they apply to the whole forest and reduce the number of groups that must be managed. However, if universal groups are unavailable, you can use domain global groups instead.

The following table lists typical groups that can be used to manage the domain isolation zones discussed in the Woodgrove Bank example in this guide:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Group name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CG_DOMISO_No_IPsec</p></td>
<td><p>A universal group of computer accounts that do not participate in the IPsec environment. Typically consists of infrastructure computer accounts that will also be included in exemption lists.</p>
<p>This group is used in security group filters to ensure that GPOs with IPsec rules are not applied to group members.</p></td>
</tr>
<tr class="even">
<td><p>CG_DOMISO_IsolatedDomain</p></td>
<td><p>A universal group of computer accounts that contains the members of the isolated domain.</p>
<p>During the early days of testing, this group might contain only a very small number of computers. During production, it might contain the built-in <strong>Domain Computers</strong> group to ensure that every computer in the domain participates.</p>
<p>Members of this group receive the domain isolation GPO that requires authentication for inbound connections.</p></td>
</tr>
<tr class="odd">
<td><p>CG_DOMISO_Boundary</p></td>
<td><p>A universal group of computer accounts that contains the members of the boundary zone.</p>
<p>Members of this group receive a GPO that specifies that authentication is requested, but not required.</p></td>
</tr>
<tr class="even">
<td><p>CG_DOMISO_Encryption</p></td>
<td><p>A universal group of computer accounts that contains the members of the encryption zone.</p>
<p>Members of this group receive a GPO that specifies that both authentication and encryption are required for all inbound connections.</p></td>
</tr>
<tr class="odd">
<td><p>CG_SRVISO_<em>ServerRole</em></p></td>
<td><p>A universal group of computer accounts that contains the members of the server isolation group.</p>
<p>Members of this group receive the server isolation GPO that requires membership in a network access group in order to connect.</p>
<p>There will be one group for each set of servers that have different user and computer restriction requirements.</p></td>
</tr>
</tbody>
</table>

 

Multiple GPOs might be delivered to each group. Which one actually becomes applied depends on the security group filters assigned to the GPOs in addition to the results of any WMI filtering assigned to the GPOs. Details of the GPO layout are discussed in the section [Planning the GPOs](planning-the-gpos.md).

If multiple GPOs are assigned to a group, and similar rules are applied, the rule that most specifically matches the network traffic is the one that is used by the computer. For example, if one IPsec rule says to request authentication for all IP traffic, and a second rule from a different GPO says to require authentication for IP traffic to and from a specific IP address, then the second rule takes precedence because it is more specific.

**Next: **[Planning Network Access Groups](planning-network-access-groups.md)

 

 





