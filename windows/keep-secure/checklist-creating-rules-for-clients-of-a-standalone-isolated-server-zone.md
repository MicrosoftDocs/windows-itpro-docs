---
title: Checklist Creating Rules for Clients of a Standalone Isolated Server Zone (Windows 10)
description: Checklist Creating Rules for Clients of a Standalone Isolated Server Zone
ms.assetid: 6a5e6478-add3-47e3-8221-972549e013f6
author: brianlic-msft
---

# Checklist: Creating Rules for Clients of a Standalone Isolated Server Zone


This checklist includes tasks for configuring connection security rules and IPsec settings in the GPOs for client computers that must connect to servers in an isolated server zone.

## <a href="" id="bkmk-section1"></a>


![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif)**Checklist: Configuring isolated server zone client rules for computers running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2**

**Note**  
The GPOs for computers running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 are usually similar. If this is true for your design, create one GPO, configure it by using the tasks in this checklist, and then create a copy of the GPO. For example, create and configure the GPO for Windows 8, create a copy of it for Windows Server 2012, and then follow the steps in this checklist to make the required changes (if any) to the copy.

 

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
<td><p>Create a GPO for the client computers that must connect to servers in the isolated server zone, and that are running one of the versions of Windows. After you have finished the tasks in this checklist, you can make a copy of it.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Creating Group Policy Objects](checklist-creating-group-policy-objects.md)</p>
<p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>To determine which computers receive the GPO, assign the NAG for the isolated servers to the security group filter for the GPO. Make sure that each GPO has the WMI filter for the correct version of Windows.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md)</p></td>
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
<td><p>Create a rule that requests authentication for network traffic. Because fallback-to-clear behavior in Windows Vista and Windows Server 2008 has no delay when communicating with computers that cannot use IPsec, you can use the same any-to-any rule used in an isolated domain.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create an Authentication Request Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](create-an-authentication-request-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Link the GPO to the domain level of the Active Directory organizational unit hierarchy.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Link the GPO to the Domain](link-the-gpo-to-the-domain.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Add your test computers to the NAG for the isolated server zone. Be sure to add at least one for each operating system supported by a different GPO in the group.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Test Computers to the Membership Group for a Zone](add-test-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
</tbody>
</table>

 

 

 





