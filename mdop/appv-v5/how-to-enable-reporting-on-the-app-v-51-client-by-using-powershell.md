---
title: How to Enable Reporting on the App-V 5.1 Client by Using PowerShell
description: How to Enable Reporting on the App-V 5.1 Client by Using PowerShell
author: dansimp
ms.assetid: c4c58be6-cc50-44f6-bf4f-8346fc5d0c0e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Enable Reporting on the App-V 5.1 Client by Using PowerShell


Use the following procedure to configure the App-V 5.1 for reporting.

**To configure the computer running the App-V 5.1 client for reporting**

1.  Install the App-V 5.1 client. For more information about installing the client see [How to Deploy the App-V Client](how-to-deploy-the-app-v-client-51gb18030.md).

2.  After you have installed the App-V 5.1 client, use the **Set-AppvClientConfiguration** PowerShell to configure appropriate Reporting Configuration settings:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Setting</th>
    <th align="left">Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>ReportingEnabled</p></td>
    <td align="left"><p>Enables the client to return information to a reporting server. This setting is required for the client to collect the reporting data on the client.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>ReportingServerURL</p></td>
    <td align="left"><p>Specifies the location on the reporting server where client information is saved. For example, http://&lt;reportingservername&gt;:&lt;reportingportnumber&gt;.</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>This is the port number that was assigned during the Reporting Server setup</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>Reporting Start Time</p></td>
    <td align="left"><p>This is set to schedule the client to automatically send the data to the server. This setting will indicate the hour at which the reporting data will start to send. It is in the 24 hour format and will take a number between 0-23.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>ReportingRandomDelay</p></td>
    <td align="left"><p>Specifies the maximum delay (in minutes) for data to be sent to the reporting server. When the scheduled task is started, the client generates a random delay between 0 and ReportingRandomDelay and will wait the specified duration before sending data.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>ReportingInterval</p></td>
    <td align="left"><p>Specifies the retry interval that the client will use to resend data to the reporting server.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>ReportingDataCacheLimit</p></td>
    <td align="left"><p>Specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The size applies to the cache in memory. When the limit is reached, the log file will roll over.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p>ReportingDataBlockSize</p></td>
    <td align="left"><p>Specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The size applies to the cache in memory. When the limit is reached, the log file will roll over.</p></td>
    </tr>
    </tbody>
    </table>

     

3.  After the appropriate settings have been configured, the computer running the App-V 5.1 client will automatically collect data and will send the data back to the reporting server.

    Additionally, administrators can manually send the data back in an on-demand manner using the **Send-AppvClientReport** PowerShell cmdlet.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Administering App-V 5.1 by Using PowerShell](administering-app-v-51-by-using-powershell.md)

 

 





