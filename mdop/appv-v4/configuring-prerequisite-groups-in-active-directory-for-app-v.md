---
title: Configuring Prerequisite Groups in Active Directory for App-V
description: Configuring Prerequisite Groups in Active Directory for App-V
author: dansimp
ms.assetid: 0010d534-46c0-44a3-b5c1-621b4d5e2c31
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configuring Prerequisite Groups in Active Directory for App-V


Before you install the Microsoft Application Virtualization (App-V) Management Server, you must create the following objects in Active Directory. App-V uses Active Directory groups to control access to applications and administrative functions. You will use these groups during the server installation process and when publishing applications.

## Configuring Prerequisite Groups in Active Directory for Application Virtualization


This table lists the Active Directory groups that are required for installing App-V.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Object</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Organizational Unit (OU)</p></td>
<td align="left"><p>Create an OU in Active Directory for the specific groups required for App-V.</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Administrative Group</p></td>
<td align="left"><p>During installation of the App-V Management Server, you must select an Active Directory group to use as the App-V Administrators group to control administrative access to the Management Console. Create a security group for App-V administrators, and add to this group every user who needs to use the Management Console. You cannot create this group directly from the App-V Management Server installer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V Users Group</p></td>
<td align="left"><p>App-V requires that every User account that accesses App-V functions be a member of a provider policy associated with a single group for general platform access. Use an existing group; for example, Domain Users, if all users are to have access to App-V, or create a new group.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Application Groups</p></td>
<td align="left"><p>App-V associates the right to use an individual application with an Active Directory group. Create an Active Directory group for each application, and assign users to these groups as needed to control user access to the applications.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Application Virtualization Deployment Requirements](application-virtualization-deployment-requirements.md)

[How to Configure Windows Server 2008 for App-V Management Servers](how-to-configure-windows-server-2008-for-app-v-management-servers.md)

 

 





