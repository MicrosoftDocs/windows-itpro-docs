---
title: Checklist Configuring Rules for the Isolated Domain (Windows 10)
description: Checklist Configuring Rules for the Isolated Domain
ms.assetid: bfd2d29e-4011-40ec-a52e-a67d4af9748e
author: brianlic-msft
---

# Checklist: Configuring Rules for the Isolated Domain


The following checklists include tasks for configuring connection security rules and IPsec settings in your GPOs to implement the main zone in the isolated domain.

## <a href="" id="bkmk-section1"></a>


![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif)**Checklist: Configuring isolated domain rules for computers running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2**

**Note**  
The GPOs for computers running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 are usually similar. If this is true for your design, create one GPO, configure it by using the tasks in this checklist, and then make a copy of the GPO for the other operating system. For example, create and configure the GPO for Windows 8, make a copy of it for Windows Server 2012, and then follow the steps in this checklist to make the few required changes to the copy.

 

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
<td><p>Create a GPO for the computers in the isolated domain running one of the operating systems. After you have finished the tasks in this checklist and configured the GPO for that version of Windows, you can create a copy of it.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Creating Group Policy Objects](checklist-creating-group-policy-objects.md)</p>
<p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>If you are working on a GPO that was copied from another GPO, modify the group memberships and WMI filters so that they are correct for the isolated domain zone and the version of Windows for which this GPO is intended.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure IPsec to exempt all ICMP network traffic from IPsec protection.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Exempt ICMP from Authentication on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](exempt-icmp-from-authentication-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create a rule that exempts all network traffic to and from computers on the exemption list from IPsec.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create an Authentication Exemption List Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](create-an-authentication-exemption-list-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure the key exchange (main mode) security methods and algorithms to be used.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure Key Exchange (Main Mode) Settings on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](configure-key-exchange--main-mode--settings-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure the data protection (quick mode) algorithm combinations to be used.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure Data Protection (Quick Mode) Settings on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](configure-data-protection--quick-mode--settings-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure the authentication methods to be used.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure Authentication Methods on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](configure-authentication-methods-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the rule that requests authentication for all inbound network traffic.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create an Authentication Request Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](create-an-authentication-request-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Link the GPO to the domain level of the AD DS organizational unit hierarchy.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Link the GPO to the Domain](link-the-gpo-to-the-domain.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Add your test computers to the membership group for the isolated domain. Be sure to add at least one for each operating system supported by a different GPO in the group.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Test Computers to the Membership Group for a Zone](add-test-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Verify that the connection security rules are protecting network traffic to and from the test computers.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Verify That Network Traffic Is Authenticated](verify-that-network-traffic-is-authenticated.md)</p></td>
</tr>
</tbody>
</table>

 

Do not change the rules for any of your zones to require authentication until all of the zones have been set up and are operating correctly.

 

 





