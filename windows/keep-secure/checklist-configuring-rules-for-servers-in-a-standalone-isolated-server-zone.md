---
title: Checklist Configuring Rules for Servers in a Standalone Isolated Server Zone (Windows 10)
description: Checklist Configuring Rules for Servers in a Standalone Isolated Server Zone
ms.assetid: ccc09d06-ef75-43b0-9c77-db06f2940955
author: brianlic-msft
---

# Checklist: Configuring Rules for Servers in a Standalone Isolated Server Zone


This checklist includes tasks for configuring connection security rules and IPsec settings in your GPOs for servers in a standalone isolated server zone that is not part of an isolated domain. In addition to requiring authentication and optionally encryption, servers in a server isolation zone are accessible only by users or computers that are authenticated as members of a network access group (NAG). The GPOs described here apply only to the isolated servers, not to the client computers that connect to them. For the GPOs for the client computers, see [Checklist: Creating Rules for Clients of a Standalone Isolated Server Zone](checklist-creating-rules-for-clients-of-a-standalone-isolated-server-zone.md).

The GPOs for isolated servers are similar to those for an isolated domain. This checklist refers you to those procedures for the creation of some of the rules. The other procedures in this checklist are for creating the restrictions that allow only members of the server access group to connect to the server.

## <a href="" id="bkmk-section1"></a>


![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif)**Checklist: Configuring rules for isolated servers running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2**

**Note**  
The GPOs for computers running Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 are usually similar. If this is true for your design, create one GPO, configure it by using the tasks in this checklist, and then create a copy of the GPO for the other operating system. For example, create and configure the GPO for Windows 8, make a copy of it for Windows Server 2012, and then follow the steps in this checklist to make the few required changes to the copy.

 

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
<td><p>Create a GPO for the computers that need to have access restricted to the same set of client computers. If there are multiple servers running different versions of the Windows operating system, start by creating the GPO for one version of Windows. After you have finished the tasks in this checklist and configured the GPO for that version of Windows, you can create a copy of it.</p></td>
<td><p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Checklist: Creating Group Policy Objects](checklist-creating-group-policy-objects.md)</p>
<p><img src="images/bc6cea1a-1c6c-4124-8c8f-1df5adfe8c88.gif" alt="Checklist topic" />[Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>If you are working on a copy of a GPO, modify the group memberships and WMI filters so that they are correct for the computers for which this GPO is intended.</p></td>
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
<td><p>Configure the authentication methods to be used. This procedure sets the default settings for the computer. If you want to set authentication on a per-rule basis, this procedure is optional.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure Authentication Methods on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](configure-authentication-methods-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create a rule that requests authentication for all inbound network traffic.</p>
<div class="alert">
<strong>Important</strong>  
<p>Just as in an isolated domain, do not set the rules to require authentication until your testing is complete. That way, if the rules do not work as expected, communications are not affected by a failure to authenticate.</p>
</div>
<div>
 
</div></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create an Authentication Request Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](create-an-authentication-request-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>If your design requires encryption in addition to authentication for access to the isolated servers, then modify the rule to require it.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Configure the Rules to Require Encryption on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2](configure-the-rules-to-require-encryption-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-and-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create the NAG to contain the computer or user accounts that are allowed to access the isolated servers. If you have multiple groups of isolated servers that are accessed by different client computers, then create a NAG for each set of servers.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create a Group Account in Active Directory](create-a-group-account-in-active-directory.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create a firewall rule that allows inbound network traffic only if it is authenticated from a user or computer that is a member of the zone’s NAG.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Restrict Server Access to Members of a Group Only](restrict-server-access-to-members-of-a-group-only.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Link the GPO to the domain level of the Active Directory organizational unit hierarchy.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Link the GPO to the Domain](link-the-gpo-to-the-domain.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Add your test server to the membership group for the isolated server zone. Be sure to add at least one for each operating system supported by a different GPO in the group.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Add Test Computers to the Membership Group for a Zone](add-test-computers-to-the-membership-group-for-a-zone.md)</p></td>
</tr>
</tbody>
</table>

 

Do not change the rules for any of your zones to require authentication until all zones have been set up and thoroughly tested.

 

 





