---
title: Monitoring Web Service Request Performance Counters
description: Monitoring Web Service Request Performance Counters
author: dansimp
ms.assetid: bdb812a1-465a-4098-b4c0-cb99890d1b0d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Monitoring Web Service Request Performance Counters


Microsoft BitLocker Administration and Monitoring (MBAM) provides performance counters that record the performance of requests that are sent to the following web services:

-   **StatusReportingService.svc** – service that receives requests for compliance status

-   **CoreService.svc** – service that receives requests for key recovery attempts

## Performance counters that MBAM provides


MBAM provides the following performance counters for each of the public methods that is implemented by its StatusReportingService and CoreService web services:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Type of performance counter</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Total number of requests</p></td>
<td align="left"><p>Provides an incrementing count that starts from zero when the server is started or restarted.</p>
<p>Provides an overall view of system activity. Can be monitored by automated tools to ensure the health of the server and to validate that the counter continually increments over a specified period of time.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Requests per second</p></td>
<td align="left"><p>Indicates the current throughput of the MBAM Server as it supports the MBAM client base.</p>
<p>Enables site administrators to:</p>
<ul>
<li><p>Calculate the average number of requests per second, based on the number of MBAM Clients and their reporting frequency.</p></li>
<li><p>Validate that the number of requests per second broadly correlates with the calculated average number of requests per second. A significant variance can indicate that the MBAM Client isn't installed on a percentage of the client base or that an MBAM Group Policy Object hasn't been successfully deployed.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Request duration</p></td>
<td align="left"><p>Records the duration of requests in milliseconds.</p>
<p>Although this counter is updated with the duration of each request, Windows Performance Monitor samples it only periodically (typically every second), so you might see some variability in the value. For this reason, consider using the average value displayed by Performance Monitor.</p></td>
</tr>
</tbody>
</table>

 

## Performance counter results and recommendations


As you add new MBAM Clients to an MBAM Server with spare capacity, expect to see an increase in the number of requests per second. This increase will be proportional to the number of new client computers. The average request duration will remain relatively static. As the server nears its maximum capacity, the requests per second start to level out, and the average request duration starts to get longer.

If you are concerned about whether your MBAM Servers can support your client base, consider deploying MBAM in phases across different collections of client computers. As you deploy MBAM to each collection of client computers, we recommend that you take snapshots of the performance counters to see the relative impact of deploying to each new client collection. If the number of requests per second starts to level off and the average request duration increases, consider enhancing your MBAM Server infrastructure by doing one of the following:

-   Moving the MBAM database onto a dedicated Microsoft SQL Server or SQL Server cluster

-   Load-balancing MBAM across multiple Internet Information Services (IIS) web servers

-   Deploying MBAM on more powerful server hardware

## Viewing performance counters


The recommended tool for viewing MBAM performance counters is Windows Performance Monitor, which comes with Windows. If you are using Windows PowerShell, you don’t need to enable the counters before viewing them, as they are automatically registered by the Windows PowerShell **Enable-webapplication** cmdlet.

For detailed instructions on how to view performance counters, see [How to View MBAM Performance Counters](https://go.microsoft.com/fwlink/?LinkId=393457).



## Related topics


[Maintaining MBAM 2.5](maintaining-mbam-25.md)

 

 


## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).


