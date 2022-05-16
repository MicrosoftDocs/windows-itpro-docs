---
title: How to Enable Reporting on the App-V Client by Using Windows PowerShell (Windows 10/11)
description: How to Enable Reporting on the App-V Client by Using Windows PowerShell
author: aczechowski
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
---

# How to Enable Reporting on the App-V Client by Using Windows PowerShell

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

Use the following procedure to configure the App-V for reporting.

**To configure the computer running the App-V client for reporting**

1. Enable the App-V client. For more information, see [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md).

2. After you have enabled the App-V client, use the **Set-AppvClientConfiguration** cmdlet to configure appropriate Reporting Configuration settings:

|Setting|Description|
|--- |--- |
|ReportingEnabled|Enables the client to return information to a reporting server. This setting is required for the client to collect the reporting data on the client.|
|ReportingServerURL|Specifies the location on the reporting server where client information is saved. For example, https://&lt;reportingservername&gt;:&lt;reportingportnumber&gt;.<br> **Note:** <br>This is the port number that was assigned during the Reporting Server setup|
|Reporting Start Time|This is set to schedule the client to automatically send the data to the server. This setting will indicate the hour at which the reporting data will start to send. It is in the 24 hour format and will take a number between 0-23.|
|ReportingRandomDelay|Specifies the maximum delay (in minutes) for data to be sent to the reporting server. When the scheduled task is started, the client generates a random delay between 0 and ReportingRandomDelay and will wait the specified duration before sending data.|
|ReportingInterval|Specifies the retry interval that the client will use to resend data to the reporting server.|
|ReportingDataCacheLimit|Specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The size applies to the cache in memory. When the limit is reached, the log file will roll over.|
|ReportingDataBlockSize|Specifies the maximum size in megabytes (MB) of the XML cache for storing reporting information. The size applies to the cache in memory. When the limit is reached, the log file will roll over.|

3. After the appropriate settings have been configured, the computer running the App-V client will automatically collect data and will send the data back to the reporting server.

   Additionally, administrators can manually send the data back in an on-demand manner using the **Send-AppvClientReport** cmdlet.




<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related articles


[Administering App-V by Using Windows PowerShell](appv-administering-appv-with-powershell.md)
