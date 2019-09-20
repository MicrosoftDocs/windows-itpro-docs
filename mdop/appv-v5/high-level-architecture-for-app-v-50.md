---
title: High Level Architecture for App-V 5.0
description: High Level Architecture for App-V 5.0
author: dansimp
ms.assetid: fdf8b841-918f-4672-b352-0f2b9519581b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# High Level Architecture for App-V 5.0


Use the following information to help you simplify you Microsoft Application Virtualization (App-V) 5.0 deployment.

## Architecture Overview


A typical App-V 5.0 implementation consists of the following elements.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Element</th>
<th align="left">More information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V 5.0 Management Server</p></td>
<td align="left"><p>The App-V 5.0 Management server provides overall management functionality for the App-V 5.0 infrastructure. Additionally, you can install more than one instance of the management server in your environment which provides the following benefits:</p>
<ul>
<li><p>Fault Tolerance and High Availability – Installing and configuring the App-V 5.0 Management server on two separate computers can help in situations when one of the servers is unavailable or offline.</p>
<p>You can also help increase App-V 5.0 availability by installing the Management server on multiple computers. In this scenario, a network load balancer should also be considered so that server requests are balanced.</p></li>
<li><p>Scalability – You can add additional management servers as necessary to support a high load, for example you can install multiple servers behind a load balancer.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 5.0 Publishing Server</p></td>
<td align="left"><p>The App-V 5.0 publishing server provides functionality for virtual application hosting and streaming. The publishing server does not require a database connection and supports the following protocols:</p>
<ul>
<li><p>HTTP, and HTTPS</p></li>
</ul>
<p>You can also help increase App-V 5.0 availability by installing the Publishing server on multiple computers. A network load balancer should also be considered so that server requests are balanced.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V 5.0 Reporting Server</p></td>
<td align="left"><p>The App-V 5.0 Reporting server enables authorized users to run and view existing App-V 5.0 reports and ad hoc reports that can help them manage the App-V 5.0 infrastructure. The Reporting server requires a connection to the App-V 5.0 reporting database. You can also help increase App-V 5.0 availability by installing the Reporting server on multiple computers. A network load balancer should also be considered so that server requests are balanced.</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 5.0 Client</p></td>
<td align="left"><p>The App-V 5.0 client enables packages created using App-V 5.0 to run on target computers.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
If you are using App-V 5.0 with Electronic Software Distribution (ESD) you are not required to use the App-V 5.0 Management server, however you can still utilize the reporting and streaming functionality of App-V 5.0.

 






## Related topics


[Getting Started with App-V 5.0](getting-started-with-app-v-50--rtm.md)

 

 





