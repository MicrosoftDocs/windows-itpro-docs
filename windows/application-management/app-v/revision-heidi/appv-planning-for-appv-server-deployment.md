---
title: Planning for the App-V Server Deployment (Windows 10)
description: Planning for the App-V 5.1 Server Deployment
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---
# Planning for the App-V server deployment

>Applies to Windows Server 2016.

The Microsoft Application Virtualization (App-V) server infrastructure consists of a set of specialized features that can be installed on one or more server computers, based on the requirements of the enterprise.

## About the App-V server

The App-V server consists of the following features:

* Management Server—provides overall management functionality for the App-V infrastructure.
* Management Database—facilitates database predeployments for App-V management.
* Publishing Server—provides hosting and streaming functionality for virtual applications.
* Reporting Server—provides App-V reporting services.
* Reporting Database—facilitates database predeployments for App-V reporting.

The following list describes recommended App-V server infrastructure installation methods:

* Install the App-V server. For more information, see [How to deploy the App-V Server](appv-deploy-the-appv-server.md).
* Install the database, reporting, and management features on separate computers. For more information, see [How to install the Management and Reporting databases on separate computers from the Management and Reporting services](appv-install-the-management-and-reporting-databases-on-separate-computers.md).
* Use Electronic Software Distribution (ESD). For more information, see [How to deploy App-V packages using Electronic Software Distribution](appv-deploy-appv-packages-with-electronic-software-distribution-solutions.md).
* Install all server features on a single computer.

## App-V server interaction

This section describes how the various App-V server roles interact with each other.

The App-V Management Server contains the repository of packages and their assigned configurations. For Publishing Servers that are registered with the Management Server, the associated metadata is provided to the Publishing servers for use when publishing refresh requests are received from computers running the App-V Client. App-V publishing servers managed by a single management server can serve different clients with different website names and port bindings. Additionally, all Publishing Servers managed by the same Management Server are replicas of each other.

>[!NOTE]
>The Management Server does not perform load balancing. The associated metadata is passed to the publishing server for use when processing client requests.

## Server-related protocols and external features

The following table lists server-related protocols used by the App-V servers, and also describes the reporting mechanism for each server type.

|||||
|---|---|---|---|
|||||
|||||
|||||
|||||

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
<th align="left">Server type</th>
<th align="left">Protocols</th>
<th align="left">External features needed</th>
<th align="left">Reporting</th>
<th align="left"></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>IIS server</p></td>
<td align="left"><p>HTTP</p>
<p>HTTPS</p></td>
<td align="left"><p>This server-protocol combination requires a mechanism to synchronize content between the Management Server and the Streaming Server. When using HTTP or HTTPS, use an IIS server and a firewall to protect the server from exposure to the Internet.</p></td>
<td align="left"><p>Internal</p></td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"><p>File</p></td>
<td align="left"><p>SMB</p></td>
<td align="left"><p>This server-protocol combination requires support to synchronize the content between the Management Server and the Streaming Server. Use a client computer that's capable of file sharing or streaming.</p></td>
<td align="left"><p>Internal</p></td>
<td align="left"></td>
</tr>
</tbody>
</table>

## Have a suggestion for App-V?

Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Planning to deploy App-V](appv-planning-to-deploy-appv.md)

[Deploying the App-V server](appv-deploying-the-appv-server.md)
