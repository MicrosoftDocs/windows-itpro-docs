---
title: App-V Pre-Installation Checklist
description: App-V Pre-Installation Checklist
author: dansimp
ms.assetid: 3af609b1-2c09-4edb-b083-b913b6d5e8c4
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# App-V Pre-Installation Checklist


The following checklist is intended to provide a high-level list of items to consider and outlines the steps you should take before you install the Microsoft Application Virtualization (App-V) servers.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Step</th>
<th align="left">Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Ensure your computing environment meets the supported configurations required for App-V.</p></td>
<td align="left"><p>[Application Virtualization Deployment Requirements](application-virtualization-deployment-requirements.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure the necessary Active Directory groups and accounts.</p></td>
<td align="left"><p>[Configuring Prerequisite Groups in Active Directory for App-V](configuring-prerequisite-groups-in-active-directory-for-app-v.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure the Internet Information Services (IIS) settings on the server that is running IIS.</p></td>
<td align="left"><p>[How to Configure Windows Server 2008 for App-V Management Servers](how-to-configure-windows-server-2008-for-app-v-management-servers.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure the server that is running IIS to be trusted for delegation.</p>
<div class="alert">
<strong>Note</strong>  
<p>This is required only if you are installing the App-V Management Server by using a distributed system architecture, that is, if you install the App-V Management Console, the Management Web Service, and the database on different computers.</p>
</div>
<div>
 
</div></td>
<td align="left"><p>[How to Configure the Server to be Trusted for Delegation](how-to-configure-the-server-to-be-trusted-for-delegation.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Install Microsoft SQL Server 2008.</p></td>
<td align="left"><p>[Install SQL Server 2008](https://go.microsoft.com/fwlink/?LinkId=181924) (https://go.microsoft.com/fwlink/?LinkId=181924).</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Application Virtualization Deployment and Upgrade Checklists](application-virtualization-deployment-and-upgrade-checklists.md)

[App-V Installation Checklist](app-v-installation-checklist.md)

 

 





