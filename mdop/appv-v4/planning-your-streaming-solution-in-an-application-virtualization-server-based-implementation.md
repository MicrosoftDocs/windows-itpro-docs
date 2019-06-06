---
title: Planning Your Streaming Solution in an Application Virtualization Server-Based Implementation
description: Planning Your Streaming Solution in an Application Virtualization Server-Based Implementation
author: eavena
ms.assetid: 3a57306e-5c54-4fde-8593-fe3b788f18d3
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Planning Your Streaming Solution in an Application Virtualization Server-Based Implementation


If you want to use Application Virtualization Streaming Servers in conjunction with your Application Virtualization Management Server-based implementation, you can choose from several alternatives, taking advantage of whatever infrastructure is already in place. For example, if you already have servers in your field branch offices, you can place the Application Virtualization \\CONTENT share on those servers and then configure the clients to use that content share as their application content source. If you choose to use only Application Virtualization Management Servers—for example, because you have only a single office—the clients can stream content from that server.

The supported options include using a file server, an IIS server, or an Application Virtualization Streaming Server. You could also install the Application Virtualization Streaming Server on an existing file server or IIS server. The characteristics of these different options are summarized in the following table.

**Note**  
The active upgrade feature enables a new version of an application to be added to an App-V Management Server or Streaming Server without affecting users currently running the application. The App-V clients will automatically receive the latest version of the application from the App-V Management Server or Streaming Server the next time the user starts the application. Use of the RTSP(S) protocol is required for this feature.

 

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
<td align="left"><p>SMB</p></td>
<td align="left"><ul>
<li><p>Simple low-cost solution to configure existing file server with \CONTENT share</p></li>
</ul></td>
<td align="left"><ul>
<li><p>No active upgrade</p></li>
</ul></td>
<td align="left"><p>[How to Configure the File Server](how-to-configure-the-file-server.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>IIS server</p></td>
<td align="left"><p>HTTP/ HTTPS</p></td>
<td align="left"><ul>
<li><p>Supports enhanced security using HTTPS protocol</p></li>
<li><p>Supports streaming to remote computers across the Internet</p></li>
<li><p>Only one port in firewall to open</p></li>
<li><p>Scalable</p></li>
<li><p>Familiar protocol</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Need to manage IIS</p></li>
<li><p>No active upgrade</p></li>
</ul></td>
<td align="left"><p>[How to Configure the Server for IIS](how-to-configure-the-server-for-iis.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Application Virtualization Streaming Server</p></td>
<td align="left"><p>RTSP/ RTSPS</p></td>
<td align="left"><ul>
<li><p>Active upgrade</p></li>
<li><p>Supports enhanced security using RTSPS protocol</p></li>
<li><p>Only one port in firewall to open</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Dual infrastructure</p></li>
<li><p>Server administration requirement</p></li>
</ul></td>
<td align="left"><p>[How to Configure the Application Virtualization Streaming Servers](how-to-configure-the-application-virtualization-streaming-servers.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Application Virtualization Management Server</p></td>
<td align="left"><p>RTSP/ RTSPS</p></td>
<td align="left"><ul>
<li><p>Active upgrade</p></li>
<li><p>Supports enhanced security using RTSPS protocol</p></li>
<li><p>Only one port in firewall to open</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Dual infrastructure</p></li>
<li><p>Server administration requirement</p></li>
</ul></td>
<td align="left"><p>[How to Configure the Application Virtualization Management Servers](how-to-configure-the-application-virtualization-management-servers.md)</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)

[Overview of the Application Virtualization System Components](overview-of-the-application-virtualization-system-components.md)

[Publishing Virtual Applications Using Application Virtualization Management Servers](publishing-virtual-applications-using-application-virtualization-management-servers.md)

 

 





