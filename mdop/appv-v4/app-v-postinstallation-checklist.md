---
title: App-V Postinstallation Checklist
description: App-V Postinstallation Checklist
author: dansimp
ms.assetid: 74db297e-a744-4287-bcc6-0e096ca8b57a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# App-V Postinstallation Checklist


The following checklist provides a high-level list of items to consider and outlines the steps you should take after you have completed the installation of the Microsoft Application Virtualization (App-V) Management Server, App-V Streaming Server, and the App-V Desktop Client.

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
<td align="left"><p>Create firewall exceptions for the App-V Management Server or Streaming Server services.</p></td>
<td align="left"><p>[Configuring the Firewall for the App-V Servers](configuring-the-firewall-for-the-app-v-servers.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Verify that the App-V system is functioning correctly by publishing, streaming, and testing the default application.</p></td>
<td align="left"><p>[How to Install and Configure the Default Application](how-to-install-and-configure-the-default-application.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure the App-V Client to use the App-V Streaming Server or other server for streaming by means of the <strong>ApplicationSourceRoot</strong>, <strong>IconSourceRoot</strong>, and <strong>OSDSourceRoot</strong> settings.</p></td>
<td align="left"><p>[How to Configure the Client for Application Package Retrieval](how-to-configure-the-client-for-application-package-retrieval.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Understand how to use the .msi file version of sequenced application packages for offline deployment.</p></td>
<td align="left"><p>[How to Publish a Virtual Application on the Client](how-to-publish-a-virtual-application-on-the-client.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>(Optional) Configure SQL Server database mirroring for the App-V database.</p></td>
<td align="left"><p>[How to Configure Microsoft SQL Server Mirroring Support for App-V](how-to-configure-microsoft-sql-server-mirroring-support-for-app-v.md)</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Application Virtualization Deployment and Upgrade Checklists](application-virtualization-deployment-and-upgrade-checklists.md)

 

 





