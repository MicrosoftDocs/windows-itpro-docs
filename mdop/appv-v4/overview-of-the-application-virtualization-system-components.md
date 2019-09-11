---
title: Overview of the Application Virtualization System Components
description: Overview of the Application Virtualization System Components
author: dansimp
ms.assetid: 75d88ef7-44d8-4fa7-b7f5-9153f37e570d
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Overview of the Application Virtualization System Components


The following table describes the primary components of the Microsoft Application Virtualization Management System. For more information about deploying these system components, see [Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Component</th>
<th align="left">Function</th>
<th align="left">Additional Information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Management Server</p></td>
<td align="left"><p>The component responsible for streaming the package content and publishing the shortcuts and file type associations to the Application Virtualization Client.</p></td>
<td align="left"><p>The Application Virtualization Management Server supports active upgrade, License Management, and a database that can be used for reporting.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Content</strong> folder</p></td>
<td align="left"><p>The location of the Application Virtualization packages for streaming.</p></td>
<td align="left"><p>This folder can be located on a share on or off the Application Virtualization Management Server. The folder can also be located on a Storage Area Network (SAN).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Management Console</p></td>
<td align="left"><p>An MMC 3.0 snap-in management utility for Microsoft Application Virtualization Server administration.</p></td>
<td align="left"><p>This component can be installed on the Microsoft Application Virtualization server or located on a separate workstation that has MMC 3.0 and .NET 2.0 installed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization Management Web Service</p></td>
<td align="left"><p>The component responsible for communicating any read/write requests to the Application Virtualization data store.</p></td>
<td align="left"><p>This component can installed on the Microsoft Application Virtualization Server or on a separate computer with IIS installed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Data Store</p></td>
<td align="left"><p>The component stored in the SQL database and responsible for storing all information related to the Application Virtualization infrastructure.</p></td>
<td align="left"><p>This information includes all application records, application assignments, and which groups have responsibility for managing the Application Virtualization environment.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization Streaming Server</p></td>
<td align="left"><p>The component responsible for hosting the Application Virtualization packages for streaming to clients in a branch office, where the link back to the Application Virtualization Management Server is considered a WAN.</p></td>
<td align="left"><p>This server contains streaming functionality only and provides neither the Application Virtualization Management Console nor the Application Virtualization Management Web Service.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Sequencer</p></td>
<td align="left"><p>The component used to monitor and capture the installation of applications to create virtual application packages.</p></td>
<td align="left"><p>Output consists of the application’s icons, an OSD file containing package definition information, a package manifest file, and the SFT file containing the application program’s content files.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization Client</p></td>
<td align="left"><p>The component installed on the Application Virtualization Desktop Client or on the Application Virtualization Client for Remote Desktop Services (formerly Terminal Services) and that provides the virtual environment for the virtualized applications.</p></td>
<td align="left"><p>The Microsoft Application Virtualization Client manages the package streaming into cache, publishing refresh, transport, and all interaction with the Application Virtualization Servers.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)

[Planning Your Streaming Solution in an Application Virtualization Server-Based Implementation](planning-your-streaming-solution-in-an-application-virtualization-server-based-implementation.md)

[Publishing Virtual Applications Using Application Virtualization Management Servers](publishing-virtual-applications-using-application-virtualization-management-servers.md)

 

 





