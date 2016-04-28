---
title: Checklist Creating Outbound Firewall Rules (Windows 10)
description: Checklist Creating Outbound Firewall Rules
ms.assetid: 611bb98f-4e97-411f-82bf-7a844a4130de
author: brianlic-msft
---

# Checklist: Creating Outbound Firewall Rules


This checklist includes tasks for creating outbound firewall rules in your GPOs. Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2 support the use of outbound rules.

**Important**  
By default, in Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2, outbound filtering is disabled. Because all outbound network traffic is permitted, outbound rules are typically used to block traffic that is not wanted on the network. However, it is a best practice for an administrator to create outbound allow rules for those applications that are approved for use on the organization’s network. If you do this, then you have the option to set the default outbound behavior to block, preventing any network traffic that is not specifically authorized by the rules you create.

 

![checklist](images/2b05dce3-938f-4168-9b8f-1f4398cbdb9b.gif)**Checklist: Creating outbound firewall rules for Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2**

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
<td><p>Create a rule that allows a program to send any outbound network traffic on any port it requires.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create an Outbound Program or Service Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008 or Windows Server 2008 R2](create-an-outbound-program-or-service-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-or-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="even">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Create a rule that allows outbound network traffic on a specified port number.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Create an Outbound Port Rule on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008 or Windows Server 2008 R2](create-an-outbound-port-rule-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-or-windows-server-2008-r2.md)</p></td>
</tr>
<tr class="odd">
<td><p><img src="images/wfas-icon-checkbox.gif" alt="_" /></p></td>
<td><p>Enable a predefined rule or a group of predefined rules. Some predefined rules for basic network services are included as part of the installation of Windows; others can be created when you install a new application or network service.</p></td>
<td><p><img src="images/15dd35b6-6cc6-421f-93f8-7109920e7144.gif" alt="Procedure topic" />[Enable Predefined Outbound Rules on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2](enable-predefined-outbound-rules-on-windows-8-windows-7-windows-vista-windows-server-2012-windows-server-2008-or-windows-server-2008-r2.md)</p></td>
</tr>
</tbody>
</table>

 

 

 





