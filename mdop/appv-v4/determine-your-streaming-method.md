---
title: Determine Your Streaming Method
description: Determine Your Streaming Method
author: dansimp
ms.assetid: 50d5e0ec-7f48-4cea-8711-5882bd89153b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Determine Your Streaming Method


The first time that a user double-clicks the icon that has been placed on a computer through the publishing process, the Application Virtualization client will obtain the virtual application package content from a streaming source location.

**Note**  
*Streaming* is the term used to describe the process of obtaining content from a sequenced application package, starting with the primary feature block and then obtaining additional blocks as needed.

 

The streaming source location is usually a server that is accessible by the user’s computer; however, some electronic distribution systems, such as Microsoft System Center Configuration Manager, can distribute the SFT file to the user’s computer and then stream the virtual application package locally from that computer’s cache.

**Note**  
A streaming source location for virtual packages can be set up on a computer that is not a server. This is especially useful in a small branch office that has no server.

 

The streaming sources that can be used to store sequenced applications are described in the following table.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server Type</th>
<th align="left">Protocol</th>
<th align="left">Advantages</th>
<th align="left">Disadvantages</th>
<th align="left">Links</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>File server</p></td>
<td align="left"><p>File</p></td>
<td align="left"><ul>
<li><p>Simple low-cost solution to configure existing file server with \CONTENT share</p></li>
</ul></td>
<td align="left"><ul>
<li><p>No active upgrade</p></li>
</ul></td>
<td align="left"><p><a href="how-to-configure-the-file-server.md" data-raw-source="[How to Configure the File Server](how-to-configure-the-file-server.md)">How to Configure the File Server</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>IIS server</p></td>
<td align="left"><p>HTTP/ HTTPS</p></td>
<td align="left"><ul>
<li><p>Supports enhanced security using HTTPS protocol.</p></li>
<li><p>Supports streaming to remote computers across the Internet</p></li>
<li><p>Only one port in firewall to open</p></li>
<li><p>Highly scalable</p></li>
<li><p>Familiar protocol</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Need to manage IIS</p></li>
<li><p>No active upgrade</p></li>
</ul></td>
<td align="left"><p><a href="how-to-configure-the-server-for-iis.md" data-raw-source="[How to Configure the Server for IIS](how-to-configure-the-server-for-iis.md)">How to Configure the Server for IIS</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Application Virtualization Streaming Server</p></td>
<td align="left"><p>RTSP/ RTSPS</p></td>
<td align="left"><ul>
<li><p>Active upgrade</p></li>
<li><p>Supports enhanced security using RTSPS protocol</p></li>
<li><p>Only one port in firewall to open (RTSPS only)</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Dual infrastructure</p></li>
<li><p>Server administration requirement</p></li>
</ul></td>
<td align="left"><p><a href="how-to-configure-the-application-virtualization-management-servers.md" data-raw-source="[How to Configure the Application Virtualization Management Servers](how-to-configure-the-application-virtualization-management-servers.md)">How to Configure the Application Virtualization Management Servers</a></p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)

[Electronic Software Distribution-Based Scenario Overview](electronic-software-distribution-based-scenario-overview.md)

[Determine Your Publishing Method](determine-your-publishing-method.md)

 

 





