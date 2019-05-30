---
title: Overview of Application Virtualization
description: Overview of Application Virtualization
author: eavena
ms.assetid: 80545ef4-cf4c-420c-88d6-48e9f226051f
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Overview of Application Virtualization


Microsoft Application Virtualization (App-V) can make applications available to end user computers without having to install the applications directly on those computers. This is made possible through a process known as *sequencing the application*, which enables each application to run in its own self-contained virtual environment on the client computer. The sequenced applications are isolated from each other. This eliminates application conflicts, but the applications can still interact with the client computer.

The App-V client is the feature that lets the end user interact with the applications after they have been published to the computer. The client manages the virtual environment in which the virtualized applications run on each computer. After the client has been installed on a computer, the applications must be made available to the computer through a process known as *publishing*, which enables the end user to run the virtual applications. The publishing process copies the virtual application icons and shortcuts to the computer—typically on the Windows desktop or on the **Start** menu—and also copies the package definition and file type association information to the computer. Publishing also makes the application package content available to the end user’s computer.

The virtual application package content can be copied onto one or more Application Virtualization servers so that it can be streamed down to the clients on demand and cached locally. File servers and Web servers can also be used as streaming servers, or the content can be copied directly to the end user’s computer—for example, if you are using an electronic software distribution system, such as Microsoft System Center Configuration Manager 2007. In a multi-server implementation, maintaining the package content and keeping it up to date on all the streaming servers requires a comprehensive package management solution. Depending on the size of your organization, you might need to have many virtual applications available to end users located all over the world. Managing the packages to ensure that the appropriate applications are available to all users where and when they need access to them is therefore an important requirement.

## Microsoft Application Virtualization System Features


The following table describes the primary features of the Microsoft Application Virtualization Management System.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="left">Function</th>
<th align="left">Additional Information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Management Server</p></td>
<td align="left"><p>Responsible for streaming the package content and publishing the shortcuts and file type associations to the Application Virtualization client.</p></td>
<td align="left"><p>The Application Virtualization Management Server supports active upgrade, License Management, and a database that can be used for reporting.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Content</strong> folder</p></td>
<td align="left"><p>Indicates the location of the Application Virtualization packages for streaming.</p></td>
<td align="left"><p>This folder can be located on a share on or off the Application Virtualization Management Server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Management Console</p></td>
<td align="left"><p>This console is an MMC 3.0 snap-in management tool used for Microsoft Application Virtualization Server administration.</p></td>
<td align="left"><p>This tool can be installed on the Microsoft Application Virtualization server or located on a separate workstation that has Microsoft Management Console (MMC) 3.0 and Microsoft .NET Framework 2.0 installed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization Management Web Service</p></td>
<td align="left"><p>Responsible for communicating any read and write requests to the Application Virtualization data store.</p></td>
<td align="left"><p>The Management Web Service can be installed on the Microsoft Application Virtualization Management server or on a separate computer that has Microsoft Internet Information Services (IIS) installed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Data Store</p></td>
<td align="left"><p>The App-V SQL Server database responsible for storing all information related to the Application Virtualization infrastructure.</p></td>
<td align="left"><p>This information includes all application records, application assignments, and which groups have responsibility for managing the Application Virtualization environment.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization Streaming Server</p></td>
<td align="left"><p>Responsible for hosting the Application Virtualization packages for streaming to clients in a branch office, where the link back to the Application Virtualization Management Server is considered a wide area networks (WAN) connection.</p></td>
<td align="left"><p>This server contains streaming functionality only and provides neither the Application Virtualization Management Console nor the Application Virtualization Management Web Service.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Application Virtualization Sequencer</p></td>
<td align="left"><p>The sequencer is used to monitor and capture the installation of applications to create virtual application packages.</p></td>
<td align="left"><p>The output consists of the application’s icons, an .osd file that contains package definition information, a package manifest file, and the .sft file that contains the application program’s content files.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Application Virtualization Client</p></td>
<td align="left"><p>The Application Virtualization Desktop Client and the Application Virtualization Client for Remote Desktop Services provide and manage the virtual environment for the virtualized applications.</p></td>
<td align="left"><p>The Microsoft Application Virtualization client manages the package streaming into cache, publishing refresh, transport, and all interaction with the Application Virtualization servers.</p></td>
</tr>
</tbody>
</table>

 

 

 





