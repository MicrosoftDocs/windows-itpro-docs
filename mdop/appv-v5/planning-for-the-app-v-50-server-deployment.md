---
title: Planning for the App-V 5.0 Server Deployment
description: Planning for the App-V 5.0 Server Deployment
author: msfttracyp
ms.assetid: fd89b324-3961-471a-ad90-c8f9ae7a8155
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning for the App-V 5.0 Server Deployment


The Microsoft Application Virtualization (App-V) 5.0 server infrastructure consists of a set of specialized features that can be installed on one or more server computers, based on the requirements of the enterprise.

## Planning for App-V 5.0 Server Deployment


The App-V 5.0 server consists of the following features:

-   Management Server – provides overall management functionality for the App-V 5.0 infrastructure.

-   Management Database – facilitates database predeployments for App-V 5.0 management.

-   Publishing Server – provides hosting and streaming functionality for virtual applications.

-   Reporting Server – provides App-V 5.0 reporting services.

-   Reporting Database – facilitates database predeployments for App-V 5.0 reporting.

The following list displays the recommended methods for installing the App-V 5.0 server infrastructure:

-   Install the App-V 5.0 server. For more information, see [How to Deploy the App-V 5.0 Server](how-to-deploy-the-app-v-50-server-50sp3.md).

-   Install the database, reporting, and management features on separate computers. For more information, see [How to Install the Management and Reporting Databases on Separate Computers from the Management and Reporting Services](how-to-install-the-management-and-reporting-databases-on-separate-computers-from-the-management-and-reporting-services.md).

-   Use Electronic Software Distribution (ESD). For more information, see [How to deploy App-V 5.0 Packages Using Electronic Software Distribution](how-to-deploy-app-v-50-packages-using-electronic-software-distribution.md).

-   Install all server features on a single computer.

## <a href="" id="---------app-v-5-0-server-interaction"></a> App-V 5.0 Server Interaction


This section contains information about how the various App-V 5.0 server roles interact with each other.

The App-V 5.0 Management Server contains the repository of packages and their assigned configurations. For Publishing Servers that are registered with the Management Server, the associated metadata is provided to the Publishing servers for use when publishing refresh requests are received from computers running the App-V 5.0 Client. App-V 5.0 publishing servers managed by a single management server can be serving different clients and can have different website names and port bindings. Additionally, all Publishing Servers managed by the same Management Server are replicas of each other.

**Note**  
The Management Server does not perform any load balancing. The associated metadata is simply passed to the publishing server for use when processing client requests.

 

## Server-Related Protocols and External Features


The following displays information about server-related protocols used by the App-V 5.0 servers. The table also includes the reporting mechanism for each server type.

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
<th align="left">External Features Needed</th>
<th align="left">Reporting</th>
<th align="left"></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>IIS server</p></td>
<td align="left"><p>HTTP</p>
<p>HTTPS</p></td>
<td align="left"><p>This server-protocol combination requires a mechanism to synchronize the content between the Management Server and the Streaming Server. When using HTTP or HTTPS, use an IIS server and a firewall to protect the server from exposure to the Internet.</p></td>
<td align="left"><p>Internal</p></td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left"><p>File</p></td>
<td align="left"><p>SMB</p></td>
<td align="left"><p>This server-protocol combination requires support to synchronize the content between the Management Server and the Streaming Server. Use a client computer with file sharing or streaming capability.</p></td>
<td align="left"><p>Internal</p></td>
<td align="left"></td>
</tr>
</tbody>
</table>

 






## Related topics


[Planning to Deploy App-V](planning-to-deploy-app-v.md)

[Deploying the App-V 5.0 Server](deploying-the-app-v-50-server.md)

 

 





