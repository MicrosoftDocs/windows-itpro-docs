---
title: About App-V Reporting (Windows 10)
description: About App-V Reporting
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# About App-V Reporting


Application Virtualization (App-V) includes a built-in reporting feature that helps you collect information about computers running the App-V client as well as information about virtual application package usage. You can use this information to generate reports from a centralized database.

## <a href="" id="---------app-v-reporting-overview"></a> App-V Reporting Overview


The following list displays the end–to-end high-level workflow for reporting in App-V.

1.  The App-V Reporting server has the following prerequisites:

    -   Internet Information Service (IIS) web server role

    -   Windows Authentication role (under **IIS / Security**)

    -   SQL Server installed and running with SQL Server Reporting Services (SSRS)

    To confirm SQL Server Reporting Services is running, view `http://localhost/Reports` in a web browser as administrator on the server that will host App-V Reporting. The SQL Server Reporting Services Home page should display.

2.  Install the App-V reporting server and associated database. For more information about installing the reporting server see [How to install the Reporting Server on a Standalone Computer and Connect it to the Database](appv-install-the-reporting-server-on-a-standalone-computer.md). Configure the time when the computer running the App-V client should send data to the reporting server.

3.  If you are not using an electronic software distribution system such as Configuration Manager to view reports then you can define reports in SQL Server Reporting Service. Download predefined appvshort Reports from the Download Center at [Application Virtualization SSRS Reports ](https://www.microsoft.com/en-us/download/details.aspx?id=42630).

    >**Note**  
    If you are using the Configuration Manager integration with App-V, most reports are generated from Configuration Manager rather than from App-V.


4.  After importing the App-V Windows PowerShell module using `Import-Module AppvClient` as administrator, enable App-V client reporting. This sample Windows PowerShell command enables App-V reporting:

    ``` syntax
    Set-AppvClientConfiguration -ReportingServerURL <url>:<port> -ReportingEnabled 1 -ReportingStartTime <0-23> -ReportingRandomDelay <#min>
    ```

    To immediately send App-V report data, run `Send-AppvClientReport` on the App-V client.

    For more information about configuring reporting on the App-V client, see [About Client Configuration Settings](appv-client-configuration-settings.md). To administer App-V Reporting with Windows PowerShell, see [How to Enable Reporting on the App-V Client by Using PowerShell](appv-enable-reporting-on-the-appv-client-with-powershell.md).

5.  After the reporting server receives the data from the App-V client it sends the data to the reporting database. When the database receives and processes the client data, a successful reply is sent to the reporting server and then a notification is sent to the App-V client.

6.  When the App-V client receives the success notification, it empties the data cache to conserve space.

    >**Note**  
    By default, the cache is cleared after the server confirms receipt of data. You can manually configure the client to save the data cache. If the App-V client device does not receive a success notification from the server, it retains data in the cache and tries to resend data at the next configured interval. Clients continue to collect data and add it to the cache.

### <a href="" id="-------------app-v-reporting-server-frequently-asked-questions"></a> App-V reporting server frequently asked questions

The following table displays answers to common questions about App-V reporting

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Question</th>
<th align="left">More Information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>What is the frequency that reporting information is sent to the reporting database?</p></td>
<td align="left"><p>The frequency depends on how the reporting task is configured on the computer running the App-V client. You must configure the frequency / interval for sending the reporting data. App-V Reporting is not enabled by default.</p></td>
</tr>
<tr class="even">
<td align="left"><p>What information is stored in the reporting server database?</p></td>
<td align="left"><p>The following list displays what is stored in the reporting database:</p>
<ul>
<li><p>The operating system running on the computer running the App-V client: host name, version, service pack, type - client/server, processor architecture.</p></li>
<li><p>App-V Client information: version.</p></li>
<li><p>Published package list: GUID, version GUID, name.</p></li>
<li><p>Application usage information: name, version, streaming server, user (domain\alias), package version GUID, launch status and time, shutdown time.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>What is the average volume of information that is sent to the reporting server?</p></td>
<td align="left"><p>It depends. The following list displays the three sets of the data sent to the reporting server:</p>
<ol>
<li><p>Operating system, and App-V client information. ~150 Bytes, every time this data is sent.</p></li>
<li><p>Published package list. ~7 KB for 30 packages. This is sent only when the package list is updated with a publishing refresh, which is done infrequently; if there is no change, this information is not sent.</p></li>
<li><p>Virtual application usage information – about 0.25KB per event. Opening and closing count as one event if both occur before sending the information. When sending using a scheduled task, only the data since the last successful upload is sent to the server. If sending manually through the Windows PowerShell cmdlet, there is an optional argument that controls if the data needs to be re-sent next time around – that argument is <strong>DeleteOnSuccess</strong>.</p>
<p></p>
<p>So for example, if twenty applications are opened and closed and reporting information is scheduled to be sent daily, the typical daily traffic should be about 0.15KB + 20 x 0.25KB, or about 5KB/user</p></li>
</ol></td>
</tr>
<tr class="even">
<td align="left"><p>Can reporting be scheduled?</p></td>
<td align="left"><p>Yes. Besides manually sending reporting using Windows PowerShell cmdlets (<strong>Send-AppvClientReport</strong>), the task can be scheduled so it will happen automatically. There are two ways to schedule the reporting:</p>
<ol>
<li><p>Using Windows PowerShell cmdlets - <strong>Set-AppvClientConfiguration</strong>. For example:</p>
<p>Set-AppvClientConfiguration -ReportingEnabled 1 -ReportingServerURL http://any.com/appv-reporting</p>
<p></p>
<p>For a complete list of client configuration settings see [About Client Configuration Settings](appv-client-configuration-settings.md) and look for the following entries: <strong>ReportingEnabled</strong>, <strong>ReportingServerURL</strong>, <strong>ReportingDataCacheLimit</strong>, <strong>ReportingDataBlockSize</strong>, <strong>ReportingStartTime</strong>, <strong>ReportingRandomDelay</strong>, <strong>ReportingInterval</strong>.</p>
<p></p></li>
<li><p>By using Group Policy. If distributed using the domain controller, the settings are the same as previously listed.</p>
<div class="alert">
<strong>Note</strong>  
<p>Group Policy settings override local settings configured using Windows PowerShell.</p>
</div>
<div>
 
</div></li>
</ol></td>
</tr>
</tbody>
</table>

 

## <a href="" id="---------app-v-client-reporting"></a> App-V Client Reporting

To use App-V reporting you must enable and configure the App-V client. To configure reporting on the client, use the Windows PowerShell cmdlet **Set-AppVClientConfiguration**, or the Group Policy **ADMX Template**. For more information about the Windows PowerShell cmdlets, see [About Client Configuration Settings](appv-client-configuration-settings.md). The following section provides examples of Windows PowerShell commands for configuring App-V client reporting.

### Configuring App-V Client reporting using Windows PowerShell

The following examples show how Windows PowerShell parameters can configure the reporting features of the App-V client.

**Note**  
The following configuration task can also be configured using Group Policy settings in the App-V ADMX template. The App-V settings are under **Computer Configuration &gt; Administrative Templates &gt; System &gt; App-V**. For more information about using the ADMX template, see [How to Modify App-V Client Configuration Using the ADMX Template and Group Policy](appv-modify-client-configuration-with-the-admx-template-and-group-policy.md).

 

**To enable reporting and to initiate data collection on the computer running the App-V client**:

```syntax
Set-AppVClientConfiguration –ReportingEnabled 1
```

**To configure the client to automatically send data to a specific reporting server**:

``` syntax
Set-AppVClientConfiguration –ReportingServerURL http://MyReportingServer:MyPort/ -ReportingStartTime 20 -ReportingInterval 1 -ReportingRandomDelay 30 -ReportingInterval 1 -ReportingRandomDelay 30
```

The preceding example configures the client to automatically send the reporting data to the reporting server URL **http://MyReportingServer:MyPort/**. Additionally, the reporting data will be sent daily between 8:00 and 8:30 PM, depending on the random delay generated for the session.

**To limit the size of the data cache on the client**:

```syntax
Set-AppvClientConfiguration –ReportingDataCacheLimit 100
```

Configures the maximum size of the reporting cache on the computer running the App-V client to 100 MB. If the cache limit is reached before the data is sent to the server, then the log rolls over and data will be overwritten as necessary.

**To configure the data block size transmitted across the network between the client and the server**:

```syntax
Set-AppvClientConfiguration –ReportingDataBlockSize 10240
```

Specifies the maximum data block that the client sends to 10240 MB.

### Types of data collected

The following table displays the types of information you can collect by using App-V reporting.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Client Information</th>
<th align="left">Package Information</th>
<th align="left">Application Usage</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Host Name</p></td>
<td align="left"><p>Package Name</p></td>
<td align="left"><p>Start and End Times</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Client Version</p></td>
<td align="left"><p>Package Version</p></td>
<td align="left"><p>Run Status</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Processor Architecture</p></td>
<td align="left"><p>Package Source</p></td>
<td align="left"><p>Shutdown State</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operating System Version</p></td>
<td align="left"><p>Percent Cached</p></td>
<td align="left"><p>Application Name</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Service Pack Level</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Application Version</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operating System Type</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Username</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Connection Group</p></td>
</tr>
</tbody>
</table>

 

The client collects and saves this data in an **.xml** format. The data cache is hidden by default and requires administrator rights to open the XML file.

### Sending data to the server

You can configure the computer that is running the App-V client to automatically send data to the specified reporting server. To specify the server use the **Set-AppvClientConfiguration** cmdlet with the following settings:

-   ReportingEnabled

-   ReportingServerURL

-   ReportingStartTime

-   ReportingInterval

-   ReportingRandomDelay

After you configure the previous settings, you must create a scheduled task. The scheduled task will contact the server specified by the **ReportingServerURL** setting and will initiate the transfer. If you want to manually send data outside of the scheduled times, use the following Windows PowerShell cmdlet:

```syntax
Send-AppVClientReport –URL http://MyReportingServer:MyPort/ -DeleteOnSuccess
```

If the reporting server has been previously configured, then the **–URL** parameter can be omitted. Alternatively, if the data should be sent to an alternate location, specify a different URL to override the configured **ReportingServerURL** for this data collection.

The **-DeleteOnSuccess** parameter indicates that if the transfer is successful, then the data cache is cleared. If this is not specified, then the cache will not be cleared.

### Manual Data Collection

You can also use the **Send-AppVClientReport** cmdlet to manually collect data. This solution is helpful with or without an existing reporting server. The following list displays information about collecting data with or without a reporting server.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">With a Reporting Server</th>
<th align="left">Without a Reporting Server</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>If you have an existing App-V reporting Server, create a customized scheduled task or script. Specify that the client send the data to the specified location with the desired frequency.</p></td>
<td align="left"><p>If you do not have an existing App-V reporting Server, use the <strong>–URL</strong> parameter to send the data to a specified share. For example:</p>
<p><code>Send-AppVClientReport –URL \\Myshare\MyData\ -DeleteOnSuccess</code></p>
<p>The previous example will send the reporting data to <strong>\\MyShare\MyData\</strong> location indicated by the <strong>-URL</strong> parameter. After the data has been sent, the cache is cleared.</p>
<div class="alert">
<strong>Note</strong>  
<p>If a location other than the Reporting Server is specified, the data is sent using <strong>.xml</strong> format with no additional processing.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

### Creating Reports

To retrieve report information and create reports using App-V you must use one of the following methods:

-   **Microsoft SQL Server Reporting Services (SSRS)** - Microsoft SQL Server Reporting Services is available with Microsoft SQL Server. SSRS is not installed when you install the App-V reporting server. It must be deployed separately to generate the associated reports.

    Use the following link for more information about using [Microsoft SQL Server Reporting Services](https://technet.microsoft.com/en-us/library/ms159106(v=sql.130).aspx).

-   **Scripting** – You can generate reports by scripting directly against the App-V reporting database. For example:

    **Stored Procedure:**

    **spProcessClientReport** is scheduled to run at midnight or 12:00 AM.

    To run the Microsoft SQL Server Scheduled Stored procedure, the Microsoft SQL Server Agent must be running. You should ensure that the Microsoft SQL Server Agent is set to **AutoStart**. For more information see [Autostart SQL Server Agent (SQL Server Management Studio)](http://go.microsoft.com/fwlink/?LinkId=287045).

    The stored procedure is also created when using the App-V database scripts.

You should also ensure that the reporting server web service’s **Maximum Concurrent Connections** is set to a value that the server will be able to manage without impacting availability. The recommended number of **Maximum Concurrent Connections** for the **Reporting Web Service** is **10,000**.

## Have a suggestion for App-V?


Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Deploying the App-V server](appv-deploying-the-appv-server.md)

[How to install the Reporting Server on a Standalone Computer and Connect it to the Database](appv-install-the-reporting-server-on-a-standalone-computer.md)

 

 





