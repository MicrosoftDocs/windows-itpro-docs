---
title: Checklist Configuring Rules for an Isolated Server Zone (Windows 10)
description: Checklist Configuring Rules for an Isolated Server Zone
ms.assetid: 67c50a91-e71e-4f1e-a534-dad2582e311c
author: brianlic-msft
---

# Checklist: Configuring Rules for an Isolated Server Zone


The following checklists include tasks for configuring connection security rules and IPsec settings in your GPOs for servers in an isolated server zone that are part of an isolated domain. For information about creating a standalone isolated server zone that is not part of an isolated domain, see [Checklist: Implementing a Standalone Server Isolation Policy Design](checklist-implementing-a-standalone-server-isolation-policy-design.md).

In addition to requiring authentication and optionally encryption, servers in an isolated server zone can be accessed only by users or computers who are authenticated members of a network access group (NAG). Computers that are running Windows 2000, Windows XP, or Windows Server 2003 can restrict access in IPsec only to computers that are members of the NAG, because IPsec and IKE in those versions of Windows do not support user-based authentication. If you include user accounts in the NAG, then the restrictions can still apply; they are just enforced at the application layer, rather than the IP layer.

Computers that are running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 can identify both computers and users in the NAG because IPsec in these versions of Windows supports AuthIP in addition to IKE. AuthIP adds support for user-based authentication. For more information, see “AuthIP in Windows Vista” (<http://go.microsoft.com/fwlink/?linkid=69843>).

The GPOs for an isolated server or group of servers are similar to those for the isolated domain itself or the encryption zone, if you require encryption to your isolated servers. This checklist refers you to procedures for creating rules as well as restrictions that allow only members of the NAG to connect to the server.

## <a href="" id="bkmk-section1"></a>


![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif)**Checklist: Configuring rules for isolated servers for computers running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2**

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
<td><p>Create a GPO for the computers that need to have access restricted to the same set of client computers. If there are multiple servers and they run different versions of the Windows operating system, then start by creating the GPO for one version of Windows. After you have finished the tasks in this checklist and configured the GPO for that version of Windows, you can create a copy of it.</p>
<p>Copy the GPO from the isolated domain or from the encryption zone to serve as a starting point. Where your copy already contains elements listed in the following checklist, review the relevant procedures and compare them to your copied GPO’s element to make sure it is constructed in a way that meets the needs of the server isolation zone.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure the security group filters and WMI filters on the GPO so that only members of the isolated server zone’s membership group that are running the specified version of Windows can read and apply it.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Modify GPO Filters to Apply to a Different Zone or Version of Windows](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure IPsec to exempt all ICMP network traffic from IPsec protection.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Exempt ICMP from Authentication on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](exempt-icmp-from-authentication-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure the key exchange (main mode) security methods and algorithms to be used.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure Key Exchange (Main Mode) Settings on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](configure-key-exchange--main-mode--settings-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure the data protection (quick mode) algorithm combinations to be used. If you require encryption for the isolated server zone, then make sure that you choose only algorithm combinations that include encryption.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure Data Protection (Quick Mode) Settings on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](configure-data-protection--quick-mode--settings-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Configure the authentication methods to be used.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure Authentication Methods on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](configure-authentication-methods-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create a rule that exempts all network traffic to and from computers on the exemption list from IPsec.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create an Authentication Exemption List Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](create-an-authentication-exemption-list-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create a rule that requests authentication for all network traffic.</p>
<div class="alert">
<strong>Important</strong>  
<p>Just as in an isolated domain, do not set the rules to require authentication for inbound traffic until you have completed testing. That way, if the rules do not work as expected, communications are not affected by a failure to authenticate.</p>
</div>
<div>
 
</div></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create an Authentication Request Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](create-an-authentication-request-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the NAG to contain the computer or user accounts that are allowed to access the servers in the isolated server zone.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create a Group Account in Active Directory](create-a-group-account-in-active-directory.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create a firewall rule that permits inbound network traffic only if authenticated as a member of the NAG.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Restrict Server Access to Members of a Group Only](restrict-server-access-to-members-of-a-group-only.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Link the GPO to the domain level of the Active Directory organizational unit hierarchy.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Link the GPO to the Domain](link-the-gpo-to-the-domain.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Add your test server to the membership group for the isolated server zone. Be sure to add at least one server for each operating system supported by a GPO in the group.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Test Computers to the Membership Group for a Zone](add-test-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
</tbody>
</table>

 

Do not change the rules for any of your zones to require authentication until all of the zones have been set up and are operating correctly.

 

 





