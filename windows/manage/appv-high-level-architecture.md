---
title: High Level Architecture for App-V (Windows 10)
description: High Level Architecture for App-V
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# High Level Architecture for App-V


Use the following information to help you simplify you Microsoft Application Virtualization (App-V) deployment.

## Architecture Overview


A typical App-V implementation consists of the following elements.

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
<td align="left"><p>App-V Management Server</p></td>
<td align="left"><p>The App-V Management server provides overall management functionality for the App-V infrastructure. Additionally, you can install more than one instance of the management server in your environment which provides the following benefits:</p>
<ul>
<li><p>Fault Tolerance and High Availability – Installing and configuring the App-V Management server on two separate computers can help in situations when one of the servers is unavailable or offline.</p>
<p>You can also help increase App-V availability by installing the Management server on multiple computers. In this scenario, a network load balancer should also be considered so that server requests are balanced.</p></li>
<li><p>Scalability – You can add additional management servers as necessary to support a high load, for example you can install multiple servers behind a load balancer.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Publishing Server</p></td>
<td align="left"><p>The App-V publishing server provides functionality for virtual application hosting and streaming. The publishing server does not require a database connection and supports the following protocols:</p>
<ul>
<li><p>HTTP, and HTTPS</p></li>
</ul>
<p>You can also help increase App-V availability by installing the Publishing server on multiple computers. A network load balancer should also be considered so that server requests are balanced.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V Reporting Server</p></td>
<td align="left"><p>The App-V Reporting server enables authorized users to run and view existing App-V reports and ad hoc reports that can help them manage the App-V infrastructure. The Reporting server requires a connection to the App-V reporting database. You can also help increase App-V availability by installing the Reporting server on multiple computers. A network load balancer should also be considered so that server requests are balanced.</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Client</p></td>
<td align="left"><p>The App-V client enables packages created using App-V to run on target computers.</p></td>
</tr>
</tbody>
</table>


**Note**  
If you are using App-V with Electronic Software Distribution (ESD) you are not required to use the App-V Management server. However, you can still utilize the reporting and streaming functionality of App-V.

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Getting Started with App-V](appv-getting-started.md)

 

 





