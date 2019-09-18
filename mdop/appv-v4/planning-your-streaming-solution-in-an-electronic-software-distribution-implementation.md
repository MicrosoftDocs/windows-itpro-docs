---
title: Planning Your Streaming Solution in an Electronic Software Distribution Implementation
description: Planning Your Streaming Solution in an Electronic Software Distribution Implementation
author: dansimp
ms.assetid: bc18772a-f169-486f-adb1-7af1a31845aa
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning Your Streaming Solution in an Electronic Software Distribution Implementation


If you decide to use streaming servers in conjunction with your ESD system to make application content available to your end user computers, you can choose from several alternatives, taking advantage of whatever infrastructure is already in place. For example, if your ESD system has software distribution shares on servers in your field branch offices, you can place the Application Virtualization \\CONTENT share on those servers and then configure the clients to use that content share as their application content source. The supported options include using a file server or an IIS server. You could also install the Application Virtualization Streaming Server on an existing file server or IIS server.

The Application Virtualization Streaming Server provides support for the active upgrade feature in Application Virtualization. The active upgrade feature enables a new version of an application to be added to an App-V Management Server or Streaming Server without affecting users currently running the application. The App-V clients will automatically receive the latest version of the application from the App-V Management Server or Streaming Server the next time the user starts the application. Use of the RTSP(S) protocol is required for this feature. If you choose not to use the Application Virtualization Streaming Server, you will need to explicitly manage application package upgrades by using the ESD system.

**Note**  
Access to the applications is controlled by means of Security Groups in Active Directory Domain Services, so you will need to plan a process for setting up a security group for each virtual application and for managing which users are added to each group. The Application Virtualization system administrator configures each streaming server to use these Active Directory groups by applying ACLs to the application directories under the CONTENT share, which controls access to the packages based on Active Directory group membership.

 

The characteristics of the available streaming options are summarized in the following table.

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
<td align="left"><p><a href="how-to-configure-the-file-server.md" data-raw-source="[How to Configure the File Server](how-to-configure-the-file-server.md)">How to Configure the File Server</a></p></td>
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
<td align="left"><p><a href="how-to-configure-the-server-for-iis.md" data-raw-source="[How to Configure the Server for IIS](how-to-configure-the-server-for-iis.md)">How to Configure the Server for IIS</a></p></td>
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
<td align="left"><p><a href="how-to-configure-the-application-virtualization-management-servers.md" data-raw-source="[How to Configure the Application Virtualization Management Servers](how-to-configure-the-application-virtualization-management-servers.md)">How to Configure the Application Virtualization Management Servers</a></p></td>
</tr>
</tbody>
</table>

 

## Related topics


[How to Configure Servers for ESD-Based Deployment](how-to-configure-servers-for-esd-based-deployment.md)

[Security and Protection Overview](security-and-protection-overview.md)

[Publishing Virtual Applications Using Electronic Software Distribution](publishing-virtual-applications-using-electronic-software-distribution.md)

 

 





