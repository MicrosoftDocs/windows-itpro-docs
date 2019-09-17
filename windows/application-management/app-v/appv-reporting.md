---
title: About App-V Reporting (Windows 10)
description: About App-V Reporting
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/16/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# About App-V reporting

>Applies to: Windows 10, version 1607

Application Virtualization (App-V) includes a built-in reporting feature that collects information about computers running the App-V client and virtual application package usage. You can generate reports from a centralized database with this information.

## App-V reporting overview

The following list displays the end–to-end high-level workflow for reporting in App-V.

1. The App-V Reporting server requires the following things:

   * Internet Information Service (IIS) web server role
   * Windows Authentication role (under **IIS / Security**)
   * SQL Server installed and running with SQL Server Reporting Services (SSRS)

     To confirm SQL Server Reporting Services is running, enter <https://localhost/Reports> in a web browser as administrator on the server that will host App-V Reporting. The SQL Server Reporting Services Home page should appear.
2. Install the App-V reporting server and associated database. For more information about installing the reporting server see [How to install the Reporting Server on a standalone computer and connect it to the database](appv-install-the-reporting-server-on-a-standalone-computer.md). Configure the time when the computer running the App-V client should send data to the reporting server.
3. If you are not using an electronic software distribution system such as Configuration Manager to view reports then you can define reports in SQL Server Reporting Service. Download predefined appvshort Reports from the Download Center at [Application Virtualization SSRS Reports](https://www.microsoft.com/download/details.aspx?id=42630).

   > [!NOTE]
    >If you are using the Configuration Manager integration with App-V, most reports are generated from Configuration Manager rather than from App-V.
4. After importing the App-V Windows PowerShell module using **Import-Module AppvClient** as administrator, enable App-V client reporting. This sample Windows PowerShell command enables App-V reporting:

    ```PowerShell
    Set-AppvClientConfiguration -ReportingServerURL <url>:<port> -ReportingEnabled 1 -ReportingStartTime <0-23> -ReportingRandomDelay <#min>
    ```

    To immediately send App-V report data, run **Send-AppvClientReport** on the App-V client.

    For more information about configuring reporting on the App-V client, see [About client configuration settings](appv-client-configuration-settings.md). To administer App-V Reporting with Windows PowerShell, see [How to enable reporting on the App-V client by using PowerShell](appv-enable-reporting-on-the-appv-client-with-powershell.md).
5. After the reporting server receives the data from the App-V client it sends the data to the reporting database. When the database receives and processes the client data, a successful reply is sent to the reporting server, which then notifies the App-V client.
6. When the App-V client receives the success notification, it empties the data cache to conserve space.

   > [!NOTE]
    >By default, the cache is cleared after the server confirms receipt of data. You can manually configure the client to save the data cache.
    
    If the App-V client device does not receive a success notification from the server, it retains data in the cache and tries to resend data at the next configured interval. Clients continue to collect data and add it to the cache.

### App-V reporting server frequently asked questions

The following sections provide answers to frequently asked questions about how App-V reporting works.

#### How frequently is reporting information sent to the reporting database?

Frequency depends on the computer running the App-V client's reporting configuration. You must configure the frequency or interval for sending the reporting data manually, as App-V reporting is not enabled by default.

#### What information is stored in the reporting server database?

The following information is stored in the reporting database:

* The operating system running on the computer running the App-V client: host name, version, service pack, type - client/server, processor architecture.
* App-V client information: version.
* Published package list: GUID, version GUID, name.
* Application usage information: name, version, streaming server, user (domain\alias), package version GUID, launch status and time, shutdown time.

#### What is the average volume of information that is sent to the reporting server?

It depends. Three sets of data can be sent to the reporting server:

* Operating system and App-V client information, which is about 150 Bytes every time it gets sent to the server.
* Published package lists, which are about 7 KB per 30 packages. This is sent only when the package list is updated with a publishing refresh, which is done infrequently; if there is no change, this information is not sent.
* Virtual application usage information is about 0.25 KB per event. Opening and closing count as one event if both occur before sending the information. When sending using a scheduled task, only the data since the last successful upload is sent to the server. If sending manually through the Windows PowerShell cmdlet, there is an optional argument called **DeleteOnSuccess** that controls if the data needs to be re-sent the next time around.

For example, if twenty applications are opened and closed and reporting information is scheduled to be sent daily, the typical daily traffic should be about 0.15 KB + 20 × 0.25 KB, or about 5 KB/user.

#### Can I schedule reporting?

Yes. Besides manually sending reporting using Windows PowerShell cmdlets (**Send-AppvClientReport**), the task can be scheduled so it will happen automatically. There are two ways to schedule the reporting:

* Using a Windows PowerShell cmdlet: **Set-AppvClientConfiguration**. For example:

    ```PowerShell
    Set-AppvClientConfiguration -ReportingEnabled 1 -ReportingServerURL http://any.com/appv-reporting
    ```

    For a complete list of client configuration settings, go to [About client configuration settings](appv-client-configuration-settings.md) and look for the following entries: **ReportingEnabled**, **ReportingServerURL**, **ReportingDataCacheLimit**, **ReportingDataBlockSize**, **ReportingStartTime**, **ReportingRandomDelay**, **ReportingInterval**.
* Using Group Policy. If distributed using the domain controller, the settings are the same as previously listed.

   > [!NOTE]
    >Group Policy settings override local settings configured using Windows PowerShell.

## App-V Client reporting

To use App-V reporting you must enable and configure the App-V client. To configure reporting on the client, use the Windows PowerShell cmdlet **Set-AppVClientConfiguration**, or the Group Policy **ADMX Template**. For more information about the Windows PowerShell cmdlets, see [About client configuration settings](appv-client-configuration-settings.md). The following section provides examples of Windows PowerShell commands for configuring App-V client reporting.

### Configuring App-V client reporting using Windows PowerShell

The following examples show how Windows PowerShell parameters can configure the reporting features of the App-V client.

>[!NOTE]
>The following configuration tasks can also be configured using Group Policy settings in the App-V ADMX template. The App-V settings are under **Computer Configuration** > **Administrative Templates** > **System** > **App-V**.

#### Enabling reporting and initiating data collection on the computer running the App-V client

Use the following command to enable reporting and initiate date collection on the computer running the App-V client:

```PowerShell
Set-AppVClientConfiguration –ReportingEnabled 1
```

#### Configuring the client to automatically send data to a specific reporting server

To configure the client to automatically send data to a specific reporting server, use a command with the following format:

```PowerShell
Set-AppVClientConfiguration -ReportingServerURL http://MyReportingServer:MyPort/ -ReportingStartTime 20 -ReportingInterval 1 -ReportingRandomDelay 30
```

This example command configures the client to automatically send the reporting data to the reporting server URL ```http://MyReportingServer:MyPort/```. The reporting data will be sent to the URL daily between 8:00 PM and 8:30 PM, depending on the session's generated random delay.

#### Limiting the size of the client's data cache

To limit the client's data cache size, use a command with the following format:

```PowerShell
Set-AppvClientConfiguration –ReportingDataCacheLimit 100
```

This example command configures the maximum size of the App-V client computer's reporting cache to 100 MB. If the cache limit is reached before the data is sent to the server, then the log rolls over and data will be overwritten as necessary.

#### Configuring the data block size transmitted across the network between the client and the server

To configure the data block size, use a command with the following format:

```PowerShell
Set-AppvClientConfiguration –ReportingDataBlockSize 10240
```

This example command specifies the maximum size of the data block as 10,240 MB.

### Types of data collected

The following table displays the types of information you can collect by using App-V reporting.

|Client information|Package information|Application usage|
|---|---|---|
|Host name|Package name|Start and end times|
|App-V client version|Package version|Run status|
|Processor architecture|Package source|Shutdown state|
|Operating system version|Percent cached|Application name|
|Service Pack level||Application version|
|Operating system type||Username|
|||Connection group|

The client collects and saves this data in an **.xml** format. The data cache is hidden by default and requires administrator rights to open the XML file.

### Sending data to the server

You can configure the computer that is running the App-V client to automatically send data to the specified reporting server. To specify the server, use the **Set-AppvClientConfiguration** cmdlet with the following settings:

* ReportingEnabled
* ReportingServerURL
* ReportingStartTime
* ReportingInterval
* ReportingRandomDelay

After you configure the previous settings, you must create a scheduled task. The scheduled task will contact the server specified by the **ReportingServerURL** setting and will initiate the transfer. If you want to manually send data outside of the scheduled times, use the following Windows PowerShell cmdlet:

```PowerShell
Send-AppVClientReport –URL http://MyReportingServer:MyPort/ -DeleteOnSuccess
```

If the reporting server has been previously configured, then the **–URL** parameter can be omitted. Alternatively, if the data should be sent to an alternate location, specify a different URL to override the configured **ReportingServerURL** for this data collection.

The **-DeleteOnSuccess** parameter indicates that if the transfer is successful, then the data cache will be cleared. If this is not specified, then the cache will not be cleared.

### Manual Data Collection

You can also use the **Send-AppVClientReport** cmdlet to manually collect data. This solution is helpful with or without an existing reporting server. The following list displays information about collecting data with or without a reporting server.

|With a reporting server|Without a reporting server|
|---|---|
|f you have an existing App-V reporting server, create a customized scheduled task or script. Specify that the client sends the data to the specified location at the desired frequency.|If you do not have an existing App-V reporting Server, use the **–URL** parameter to send the data to a specified share. For example: ```Send-AppVClientReport –URL \\Myshare\MyData\ -DeleteOnSuccess``` <br>The previous example will send the reporting data to the ```\\MyShare\MyData\``` location indicated by the **-URL** parameter. After the data has been sent, the cache is cleared.|

>[!NOTE]
>If a location other than the Reporting Server is specified, the data is sent in **.xml** format with no additional processing.

### Creating reports

To retrieve report information and create reports using App-V you must use one of the following methods:

* Microsoft SQL Server Reporting Services (SSRS)—Microsoft SSRS is available with Microsoft SQL Server. SSRS is not installed when you install the App-V reporting server. It must be deployed separately to generate the associated reports. For more information, see the [What is SQL Server Reporting Services (SSRS)?](https://docs.microsoft.com/sql/reporting-services/create-deploy-and-manage-mobile-and-paginated-reports) article.

* Scripting—You can generate reports by scripting directly against the App-V reporting database. For example:

    **Stored Procedure:**

    **spProcessClientReport** is scheduled to run at midnight or 12:00 AM.

    To run the Microsoft SQL Server Scheduled Stored procedure, the Microsoft SQL Server Agent must be running. Make sure the Microsoft SQL Server Agent is set to **AutoStart**. For more information, see [Autostart SQL Server Agent (SQL Server Management Studio)](https://docs.microsoft.com/sql/ssms/agent/autostart-sql-server-agent-sql-server-management-studio).

    The stored procedure is also created when you use the App-V database scripts.

You should also ensure that the reporting server web service’s **Maximum Concurrent Connections** is set to a value that the server can manage without affecting availability. The recommended number of **Maximum Concurrent Connections** for the **Reporting Web Service** is **10,000**.





## Related topics

* [Deploying the App-V server](appv-deploying-the-appv-server.md)
* [How to install the reporting server on a standalone computer and connect it to the database](appv-install-the-reporting-server-on-a-standalone-computer.md)
