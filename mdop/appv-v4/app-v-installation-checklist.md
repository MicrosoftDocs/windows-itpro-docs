---
title: App-V Installation Checklist
description: App-V Installation Checklist
author: dansimp
ms.assetid: b17efaab-cd6d-4c30-beb7-c6e7c9c87657
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# App-V Installation Checklist


The following checklist is intended to provide a high-level list of items to consider and outlines the steps you should take to install the Microsoft Application Virtualization (App-V) servers.

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
<td align="left"><p>Install the App-V Management Server. If you are installing the Management Web Service, Management Console, or the Data Store on different servers, you can use the custom installation option.</p></td>
<td align="left"><p>[How to Install Application Virtualization Management Server](how-to-install-application-virtualization-management-server.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Install the App-V Management Web Service. (Optional ¹)</p></td>
<td align="left"><p>[How to Install the Management Web Service](how-to-install-the-management-web-service.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Install the App-V Management Console. (Optional ¹)</p></td>
<td align="left"><p>[How to Install the Management Console](how-to-install-the-management-console.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Install the App-V Data Store. (Optional ¹)</p></td>
<td align="left"><p>[How to Install a Database](how-to-install-a-database.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Install the App-V client.</p></td>
<td align="left"><p>[How to Manually Install the Application Virtualization Client](how-to-manually-install-the-application-virtualization-client.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Install the App-V Sequencer.</p></td>
<td align="left"><p>[How to Install the Application Virtualization Sequencer](how-to-install-the-application-virtualization-sequencer.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Install the App-V Streaming Server. (This is optional and required only if you are installing the Streaming Server).</p></td>
<td align="left"><p>[How to Install the Application Virtualization Streaming Server](how-to-install-the-application-virtualization-streaming-server.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Create Content directories on the servers that will be used for streaming applications to users’ computers.</p></td>
<td align="left"><p>[How to Configure the Application Virtualization Management Servers](how-to-configure-the-application-virtualization-management-servers.md)</p>
<p>[How to Configure the Application Virtualization Streaming Servers](how-to-configure-the-application-virtualization-streaming-servers.md)</p>
<p>[How to Configure the Server for IIS](how-to-configure-the-server-for-iis.md)</p>
<p>[How to Configure the File Server](how-to-configure-the-file-server.md)</p></td>
</tr>
</tbody>
</table>

 

¹ This is required only if you are installing the App-V Management Web Service, Management Console, or the Data Store on a different computer.

## Related topics


[Application Virtualization Deployment and Upgrade Checklists](application-virtualization-deployment-and-upgrade-checklists.md)

[App-V Postinstallation Checklist](app-v-postinstallation-checklist.md)

 

 





