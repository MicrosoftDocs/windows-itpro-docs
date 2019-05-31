---
title: Application Virtualization Server-Based Scenario Overview
description: Application Virtualization Server-Based Scenario Overview
author: dansimp
ms.assetid: 2d91392b-5085-4a5d-94f2-15eed1ed2928
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Application Virtualization Server-Based Scenario Overview


If you plan to use a server-based deployment scenario for your Microsoft Application Virtualization environment, it is important to understand the differences between the *Application Virtualization Management Server* and the *Application Virtualization Streaming Server*. This topic describes those differences and also provides information about package delivery methods, transmission protocols, and external components that you will need to consider as you proceed with your deployment.

##  Application Virtualization Management Server


The Application Virtualization Management Server performs both the publishing function and the streaming function. The server publishes application icons, shortcuts, and file type associations to the App-V clients for authorized users. When user requests for applications are received the server streams that data on-demand to authorized users using RTSP or RTSPS protocols. In most configurations using this server, one or more Management Servers share a common data store for configuration and package information.

The Application Virtualization Management Servers use Active Directory groups to manage user authorization. In addition to Active Directory Domain Services, these servers have SQL Server installed to manage the database and data store. The Management Server is controlled through the Application Virtualization Management Console, a snap-in to the Microsoft Management Console.

Because the Application Virtualization Management Servers stream applications to end-users on demand, these servers are ideally suited for system configurations that have reliable, high-bandwidth LANs.

##  Application Virtualization Streaming Server


The Application Virtualization Streaming Server delivers the same streaming and package upgrade capabilities provided by the Management Server, but without its Active Directory or SQL Server requirements. However, the Streaming Server does not have a publishing service, nor does it have licensing or metering capabilities. The publishing service of a separate App-V Management Server is used in conjunction with the App-V Streaming Server. The App-V Streaming Server addresses the needs of businesses that want to use Application Virtualization in multiple locations with the streaming capabilities of the classic server configuration but might not have the infrastructure to support App-V Management Servers in every location.

The Application Virtualization Streaming Server can also be used in environments with an existing electronic software distribution system (ESD). You use the ESD to manage streaming applications. Unlike the Application Virtualization Management Server, the Streaming Server does not use SQL or a management console. These servers use access control lists (ACLs) to grant user authorization.

## Package Delivery Methods


If you plan to use an Application Virtualization Server as the publishing delivery method, you need to determine which of the following package delivery methods your scenario employs:

-   *Dynamic package delivery*

-   *Load from file package delivery*

### Dynamic Package Delivery

During dynamic package delivery, the server (Application Virtualization Management Server, Application Virtualization Streaming Server, or IIS server) delivers the virtualized applications to the end users through on-demand deployment. The server delivers the virtualized applications and packages to a client computer only when a user first attempts to launch an application (on demand). The server streams only the blocks needed to start the application (primary feature block). After the primary feature block is delivered to the client, the application runs; the client does not receive the complete application (incremental deployment) unless the client needs access to a part of the application that is not included in the primary feature block. When this occurs, the client performs an out-of-sequence request and the secondary feature block is streamed to the client. Dynamic package delivery allows for rapid application launch.

### Load from File Package Delivery

For load from file package delivery, the server delivers the entire virtualized application package to a client computer before the user launches the application. In this scenario, virtualized applications are delivered as a full package, rather than through the dynamic, incremental method used by the dynamic delivery model.

**Note**  
For each delivery method, the initial virtual application delivery process and the virtual application update process are the same; the updated virtual application package replaces the original application package.

 

The following table compares the advantages and disadvantages of each package delivery method.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Advantages</th>
<th align="left">Disadvantages</th>
<th align="left">Comments</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Dynamic package delivery</p></td>
<td align="left"><p>Applications are delivered and updated on demand.</p>
<p>Applications are delivered and updated incrementally to optimize launch time.</p>
<p>Updates are delivered automatically to the client desktop.</p></td>
<td align="left"><p>Larger footprint in enterprise topology because of server requirements.</p>
<p>Application streaming should be over a LAN; deployment scenarios over a WAN or that use an unreliable or intermittent connection between the server and client might be unusable.</p></td>
<td align="left"><p>Requires a streaming infrastructure.</p>
<p>Windows Installer used to deploy Application Virtualization Desktop Client software to end-user computers.</p>
<p>Large enterprises should use Application Virtualization Streaming Servers as distribution points.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Load from file package delivery</p></td>
<td align="left"><p>Consistent with typical enterprise management practices.</p>
<p>Supports stand-alone configuration scenario.</p>
<p>Provides solution to micro–branch office problem.</p></td>
<td align="left"><p>Application delivery and update is not possible on-demand.</p>
<p>Application delivery and update is not incremental; it increases resource consumption relative to dynamic delivery.</p></td>
<td align="left"><p>The IT organization is often responsible for managing application licenses, user authorization, and authentication.</p></td>
</tr>
</tbody>
</table>

 

## Server-Related Protocols and External Components


The following table lists the server types that can be used in an Application Virtualization Server-based scenarios, along with their corresponding transmission protocols and the external components needed to support the specific server configuration. The table also includes the reporting mechanism and the active upgrade mechanism for each server type. Because these scenarios all use the Application Virtualization Management Server, you can use the internal reporting functionality that is built into the system. If you use an Application Virtualization Management or an Application Virtualization Streaming Server to deliver packages to the client, packages on the server are automatically upgraded when a user logs into the client; if you use IIS servers or a file to deliver the packages to the client, the packages on the client must be upgraded manually.

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
<th align="left">Protocols</th>
<th align="left">External Components Needed</th>
<th align="left">Reporting</th>
<th align="left">Active Upgrade</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Application Virtualization Management Server</p></td>
<td align="left"><p>RTSP</p>
<p>RTSPS</p></td>
<td align="left"><p>When using HTTPS, use an IIS server to download ICO and OSD files and a firewall to protect the server from exposure to the Internet.</p></td>
<td align="left"><p>Internal</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Application Virtualization Streaming Server</p></td>
<td align="left"><p>RTSP</p>
<p>RTSPS</p></td>
<td align="left"><p>Use a mechanism to synchronize the content between the Management Server and the Streaming Server. When using HTTPS, use an IIS server to download ICO and OSD files and use a firewall to protect the server from exposure to the Internet.</p></td>
<td align="left"><p>Internal</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>IIS server</p></td>
<td align="left"><p>HTTP</p>
<p>HTTPS</p></td>
<td align="left"><p>Use a mechanism to synchronize the content between the Management Server and the Streaming Server. When using HTTP or HTTPS, use an IIS server to download ICO and OSD files and a firewall to protect the server from exposure to the Internet.</p></td>
<td align="left"><p>Internal</p></td>
<td align="left"><p>Not Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>File</p></td>
<td align="left"><p>SMB</p></td>
<td align="left"><p>You need a way to synchronize the content between the Management Server and the Streaming Server. You need a client computer with file sharing or streaming capability.</p></td>
<td align="left"><p>Internal</p></td>
<td align="left"><p>Not Supported</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)

[How to Configure Servers for Server-Based Deployment](how-to-configure-servers-for-server-based-deployment.md)

[How to Install the Servers and System Components](how-to-install-the-servers-and-system-components.md)

 

 





