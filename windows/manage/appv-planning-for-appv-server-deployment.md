---
title: Planning for the App-V Server Deployment (Windows 10)
description: Planning for the App-V Server Deployment
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Planning for the App-V Server Deployment


The Microsoft Application Virtualization (App-V) server infrastructure consists of a set of specialized features that can be installed on one or more server computers, based on the requirements of the enterprise.

## Planning for App-V Server Deployment


The App-V server consists of the following features:

-   Management Server – provides overall management functionality for the App-V infrastructure.

-   Management Database – facilitates database predeployments for App-V management.

-   Publishing Server – provides hosting and streaming functionality for virtual applications.

-   Reporting Server – provides App-V reporting services.

-   Reporting Database – facilitates database predeployments for App-V reporting.

The following list displays the recommended methods for installing the App-V server infrastructure:

-   Install the App-V server. For more information, see [How to Deploy the App-V Server](appv-deploy-the-appv-server.md).

-   Install the database, reporting, and management features on separate computers. For more information, see [How to Install the Management and Reporting Databases on Separate Computers from the Management and Reporting Services](appv-install-the-management-and-reporting-databases-on-separate-computers.md).

-   Use Electronic Software Distribution (ESD). For more information, see [How to deploy App-V Packages Using Electronic Software Distribution](appv-deploy-appv-packages-with-electronic-software-distribution-solutions.md).

-   Install all server features on a single computer.

## <a href="" id="---------app-v-5-1-server-interaction"></a> App-V Server Interaction


This section contains information about how the various App-V server roles interact with each other.

The App-V Management Server contains the repository of packages and their assigned configurations. For Publishing Servers that are registered with the Management Server, the associated metadata is provided to the Publishing servers for use when publishing refresh requests are received from computers running the App-V Client. App-V publishing servers managed by a single management server can be serving different clients and can have different website names and port bindings. Additionally, all Publishing Servers managed by the same Management Server are replicas of each other.

**Note**  
The Management Server does not perform any load balancing. The associated metadata is simply passed to the publishing server for use when processing client requests.

 

## Server-Related Protocols and External Features


The following displays information about server-related protocols used by the App-V servers. The table also includes the reporting mechanism for each server type.

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

 

## Have a suggestion for App-V?


Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Planning to Deploy App-V](appv-planning-to-deploy-appv.md)

[Deploying the App-V Server](appv-deploying-the-appv-server.md)

 

 





