---
title: App-V 5.0 Capacity Planning
description: App-V 5.0 Capacity Planning
author: manikadhiman
ms.assetid: 56f48b00-cd91-4280-9481-5372a0e2e792
ms.reviewer: 
manager: dansimp
ms.author: manikadhiman
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# App-V 5.0 Capacity Planning


The following recommendations can be used as a baseline to help determine capacity planning information that is appropriate to your organization’s App-V 5.0 infrastructure.

**Important**  
Use the information in this section only as a general guide for planning your App-V 5.0 deployment. Your system capacity requirements will depend on the specific details of your hardware and application environment. Additionally, the performance numbers displayed in this document are examples and your results may vary.

 

## Determine the Project Scope


Before you design the App-V 5.0 infrastructure, you must determine the project’s scope. The scope consists of determining which applications will be available virtually and to also identify the target users, and their locations. This information will help determine what type of App-V 5.0 infrastructure should be implemented. Decisions about the scope of the project must be based on the specific needs of your organization.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">More Information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Determine Application Scope</p></td>
<td align="left"><p>Depending on the applications to be virtualized, the App-V 5.0 infrastructure can be set up in different ways. The first task is to define what applications you want to virtualize.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Determine Location Scope</p></td>
<td align="left"><p>Location scope refers to the physical locations (for example, enterprise-wide or a specific geographic location) where you plan to run the virtualized applications. It can also refer to the user population (for example, a single department) who will run the virtual applications. You should obtain a network map that includes the connection paths as well as available bandwidth to each location and the number of users using virtualized applications and the WAN link speed.</p></td>
</tr>
</tbody>
</table>

 

## Determine Which App-V 5.0 Infrastructure is Required


**Important**  
Both of the following models require the App-V 5.0 client to be installed on the computer where you plan to run virtual applications.

You can also manage your App-V 5.0 environment using an Electronic Software Distribution (ESD) solution such as Microsoft Systems Center Configuration Manager. For more information see [Deploying App-V 5.0 Packages by Using Electronic Software Distribution (ESD)](deploying-app-v-50-packages-by-using-electronic-software-distribution--esd-.md).

 

-   **Standalone Model** - The standalone model allows virtual applications to be Windows Installer-enabled for distribution without streaming. App-V 5.0 in Standalone Mode consists of the sequencer and the client; no additional components are required. Applications are prepared for virtualization using a process called sequencing. For more information see, [Planning for the App-V 5.0 Sequencer and Client Deployment](planning-for-the-app-v-50-sequencer-and-client-deployment.md). The stand-alone model is recommended for the following scenarios:

    -   With disconnected remote users who cannot connect to the App-V 5.0 infrastructure.

    -   When you are running a software management system, such as Configuration Manager 2012.

    -   When network bandwidth limitations inhibit electronic software distribution.

-   **Full Infrastructure Model** - The full infrastructure model provides for software distribution, management, and reporting capabilities; it also includes the streaming of applications across the network. The App-V 5.0 Full Infrastructure Model consists of one or more App-V 5.0 management servers. The Management Server can be used to publish applications to all clients. The publishing process places the virtual application icons and shortcuts on the target computer. It can also stream applications to local users. For more information about installing the management server see, [Planning for the App-V 5.0 Server Deployment](planning-for-the-app-v-50-server-deployment.md). The full infrastructure model is recommended for the following scenarios:

    **Important**  
    The App-V 5.0 full infrastructure model requires Microsoft SQL Server to store configuration data. For more information see [App-V 5.0 Supported Configurations](app-v-50-supported-configurations.md).

     

    -   When you want to use the Management Server to publish the application to target computers.

    -   For rapid provisioning of applications to target computers.

    -   When you want to use App-V 5.0 reporting.

## End-to-end Server Sizing Guidance


The following section provides information about end-to-end App-V 5.0 sizing and planning. For more specific information, refer to the subsequent sections.

**Note**  
Round trip response time on the client is the time taken by the computer running the App-V 5.0 client to receive a successful notification from the publishing server. Round trip response time on the publishing server is the time taken by the computer running the publishing server to receive a successful package metadata update from the management server.

 

-   20,000 clients can target a single publishing server to obtain the package refreshes in an acceptable round trip time. (&lt;3 seconds)

-   A single management server can support up to 50 publishing servers for package metadata refreshes in an acceptable round trip time. (&lt;5 seconds)

## <a href="" id="---------app-v-5-0-management-server-capacity-planning-recommendations"></a> App-V 5.0 Management Server Capacity Planning Recommendations


The App-V 5.0 publishing servers require the management server for package refresh requests and package refresh responses. The management server then sends the information to the management database to retrieve information. For more information about App-V 5.0 management server supported configurations see [App-V 5.0 Supported Configurations](app-v-50-supported-configurations.md).

**Note**  
The default refresh time on the App-V 5.0 publishing server is ten minutes.

 

When multiple simultaneous publishing servers contact a single management server for package metadata refreshes, the following three factors influence the round trip response time on the publishing server:

1.  Number of publishing servers making simultaneous requests.

2.  Number of connection groups configured on the management server.

3.  Number of access groups configured on the management server.

The following table displays more information about each factor that impacts round trip time.

**Note**  
Round trip response time is the time taken by the computer running the App-V 5.0 publishing server to receive a successful package metadata update from the management server.

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Factors impacting round trip response time</th>
<th align="left">More Information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>The number of publishing servers simultaneously requesting package metadata refreshes.</p></td>
<td align="left"><p></p>
<ul>
<li><p>A single management server can respond to up to 320 publishing servers requesting publishing metadata simultaneously.</p></li>
<li><p>Round trip response time for 320 pub servers is ~40 seconds.</p></li>
<li><p>For &lt;50 publishing servers requesting metadata simultaneously, the round trip response time is &lt;5 seconds.</p></li>
<li><p>From 50 to 320 publishing servers, the response time increases linearly (approximately 2x).</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>The number of connection groups configured on the management server.</p>
<p></p></td>
<td align="left"><p></p>
<ul>
<li><p>For up to 100 connection groups, there is no significant change in the round trip response time on the publishing server.</p></li>
<li><p>For 100 - 400 connection groups, there is a minor linear increase in the round trip response time.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>The number of access groups configured on the management server.</p>
<p></p></td>
<td align="left"><p></p>
<ul>
<li><p>For up to 40 access groups, there is a linear (approximately 3x) increase in the round trip response time on the publishing server.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The following table displays sample values for each of the previous factors. In each variation, 120 packages are refreshed from the App-V 5.0management server.

<table>
<colgroup>
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Scenario</th>
<th align="left">Variation</th>
<th align="left">Number of connection groups</th>
<th align="left">Number of access groups</th>
<th align="left">Number of publishing servers</th>
<th align="left">Network connection type publishing server / management server</th>
<th align="left">Round trip response time on the publishing server (in seconds)</th>
<th align="left">CPU utilization on management server</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Publishing servers simultaneously contacting management server for publishing metadata.</p></td>
<td align="left"><p>Number of publishing servers</p></td>
<td align="left"><p></p>
<ul>
<li><p>0</p></li>
<li><p>0</p></li>
<li><p>0</p></li>
<li><p>0</p></li>
<li><p>0</p></li>
<li><p>0</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1</p></li>
<li><p>1</p></li>
<li><p>1</p></li>
<li><p>1</p></li>
<li><p>1</p></li>
<li><p>1</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>50</p></li>
<li><p>100</p></li>
<li><p>200</p></li>
<li><p>300</p></li>
<li><p>315</p></li>
<li><p>320</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>5</p></li>
<li><p>10</p></li>
<li><p>19</p></li>
<li><p>32</p></li>
<li><p>30</p></li>
<li><p>37</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>17</p></li>
<li><p>17</p></li>
<li><p>17</p></li>
<li><p>15</p></li>
<li><p>17</p></li>
<li><p>15</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Publishing metadata contains connection groups</p></td>
<td align="left"><p>Number of connection groups</p></td>
<td align="left"><p></p>
<ul>
<li><p>10</p></li>
<li><p>50</p></li>
<li><p>100</p></li>
<li><p>150</p></li>
<li><p>300</p></li>
<li><p>400</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1</p></li>
<li><p>1</p></li>
<li><p>1</p></li>
<li><p>1</p></li>
<li><p>1</p></li>
<li><p>1</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>100</p></li>
<li><p>100</p></li>
<li><p>100</p></li>
<li><p>100</p></li>
<li><p>100</p></li>
<li><p>100</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>10</p></li>
<li><p>11</p></li>
<li><p>11</p></li>
<li><p>16</p></li>
<li><p>22</p></li>
<li><p>25</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>17</p></li>
<li><p>19</p></li>
<li><p>22</p></li>
<li><p>19</p></li>
<li><p>20</p></li>
<li><p>20</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Publishing metadata contains access groups</p></td>
<td align="left"><p>Number of access groups</p></td>
<td align="left"><p></p>
<ul>
<li><p>0</p></li>
<li><p>0</p></li>
<li><p>0</p></li>
<li><p>0</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1</p></li>
<li><p>10</p></li>
<li><p>20</p></li>
<li><p>40</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>100</p></li>
<li><p>100</p></li>
<li><p>100</p></li>
<li><p>100</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>10</p></li>
<li><p>43</p></li>
<li><p>153</p></li>
<li><p>535</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>17</p></li>
<li><p>26</p></li>
<li><p>24</p></li>
<li><p>24</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The CPU utilization of the computer running the management server is around 25% irrespective of the number of publishing servers targeting it. The Microsoft SQL Server database transactions/sec, batch requests/sec and user connections are identical irrespective of the number of publishing servers. For example: Transactions/sec is ~30, batch requests ~200, and user connects ~6.

Using a geographically distributed deployment, where the management server & publishing servers utilize a slow link network between them, the round trip response time on the publishing servers is within acceptable time limits (&lt;5 seconds), even for 100 simultaneous requests on a single management server.

<table>
<colgroup>
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Scenario</th>
<th align="left">Variation</th>
<th align="left">Number of connection groups</th>
<th align="left">Number of access groups</th>
<th align="left">Number of publishing servers</th>
<th align="left">Network connection type publishing server / management server</th>
<th align="left">Round trip response time on the publishing server (in seconds)</th>
<th align="left">CPU utilization on management server</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Network connection between the publishing server and management server</p></td>
<td align="left"><p>1.5 Mbps Slow link Network</p></td>
<td align="left"><p></p>
<ul>
<li><p>0</p></li>
<li><p>0</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1</p></li>
<li><p>1</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>50</p></li>
<li><p>100</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1.5Mbps Cable DSL</p></li>
<li><p>1.5Mbps Cable DSL</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>4</p></li>
<li><p>5</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1</p></li>
<li><p>2</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Network connection between the publishing server and management server</p></td>
<td align="left"><p>LAN / WIFI Network</p></td>
<td align="left"><p></p>
<ul>
<li><p>0</p></li>
<li><p>0</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1</p></li>
<li><p>1</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>100</p></li>
<li><p>200</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>Wifi</p></li>
<li><p>Wifi</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>11</p></li>
<li><p>20</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>15</p></li>
<li><p>17</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

Whether the management server and publishing servers are connected over a slow link network, or a high speed network, the management server can handle approximately 15,000 package refresh requests in 30 minutes.

## <a href="" id="---------app-v-5-0-reporting-server-capacity-planning-recommendations"></a> App-V 5.0 Reporting Server Capacity Planning Recommendations


App-V 5.0 clients send reporting data to the reporting server. The reporting server then records the information in the Microsoft SQL Server database and returns a successful notification back to the computer running App-V 5.0 client. For more information about App-V 5.0 Reporting Server supported configurations see [App-V 5.0 Supported Configurations](app-v-50-supported-configurations.md).

**Note**  
Round trip response time is the time taken by the computer running the App-V 5.0 client to send the reporting information to the reporting server and receive a successful notification from the reporting server.

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Scenario</th>
<th align="left">Summary</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Multiple App-V 5.0 clients send reporting information to the reporting server simultaneously.</p></td>
<td align="left"><p></p>
<ul>
<li><p>Round trip response time from the reporting server is 2.6 seconds for 500 clients.</p></li>
<li><p>Round trip response time from the reporting server is 5.65 seconds for 1000 clients.</p></li>
<li><p>Round trip response time increases linearly depending on number of clients.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Requests per second processed by the reporting server.</p>
<p></p></td>
<td align="left"><p></p>
<ul>
<li><p>A single reporting server and a single database, can process a maximum of 139 requests per second. The average is 121 requests/second.</p></li>
<li><p>Using two reporting servers reporting to the same Microsoft SQL Server database, the average requests/second is similar to a single reporting server = ~127, with a max of 278 requests/second.</p></li>
<li><p>A single reporting server can process 500 concurrent/active connections.</p></li>
<li><p>A single reporting server can process a maximum 1500 concurrent connections.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Reporting Database.</p>
<p></p></td>
<td align="left"><p></p>
<ul>
<li><p>Lock contention on the computer running Microsoft SQL Server is the limiting factor for requests/second.</p></li>
<li><p>Throughput and response time are independent of database size.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

**Calculating random delay**:

The random delay specifies the maximum delay (in minutes) for data to be sent to the reporting server. When the scheduled task is started, the client generates a random delay between **0** and **ReportingRandomDelay** and will wait the specified duration before sending data.

Random delay = 4 \* number of clients / average requests per second.

Example: For 500 clients, with 120 requests per second, the Random delay is, 4 \* 500 / 120 = ~17 minutes.

## <a href="" id="---------app-v-5-0-publishing-server-capacity-planning-recommendations"></a> App-V 5.0 Publishing Server Capacity Planning Recommendations


Computers running the App-V 5.0 client connect to the App-V 5.0 publishing server to send a publishing refresh request and to receive a response. Round trip response time is measured on the computer running the App-V 5.0 client. Processor time is measured on the publishing server. For more information about App-V 5.0 Publishing Server supported configurations see [App-V 5.0 Supported Configurations](app-v-50-supported-configurations.md).

**Important**  
The following list displays the main factors to consider when setting up the App-V 5.0 publishing server:

-   The number of clients connecting simultaneously to a single publishing server.

-   The number of packages in each refresh.

-   The available network bandwidth in your environment between the client and the App-V 5.0 publishing server.

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Scenario</th>
<th align="left">Summary</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Multiple App-V 5.0 clients connect to a single publishing server simultaneously.</p></td>
<td align="left"><p></p>
<ul>
<li><p>A publishing server running dual core processors can respond to at most 5000 clients requesting a refresh simultaneously.</p></li>
<li><p>For 5000-10000 clients, the publishing server requires a minimum quad core.</p></li>
<li><p>For 10000-20000 clients, the publishing server should have dual quad cores for more efficient response times.</p></li>
<li><p>A publishing server with a quad core can refresh up to 10000 packages within 3 seconds. (Supporting 10000 simultaneous clients)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Number of packages in each refresh.</p>
<p></p></td>
<td align="left"><p></p>
<ul>
<li><p>Increasing number of packages will increase response time by ~40% (up to 1000 packages).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Network between the App-V 5.0 client and the publishing server.</p>
<p></p></td>
<td align="left"><p></p>
<ul>
<li><p>Across a slow network (1.5 Mbps bandwidth), there is a 97% increase in response time compared to LAN (up to 1000 users).</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

**Note**  
The publishing server CPU usage is always high during the time interval when it has to process simultaneous requests (&gt;90% in most cases). The publishing server can handle ~1500 client requests in 1 second.

 

<table>
<colgroup>
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Scenario</th>
<th align="left">Variation</th>
<th align="left">Number of App-V 5.0 clients</th>
<th align="left">Number of packages</th>
<th align="left">Processor configuration on the publishing server</th>
<th align="left">Network connection type publishing server / App-V 5.0 client</th>
<th align="left">Round trip time on the App-V 5.0 client (in seconds)</th>
<th align="left">CPU utilization on publishing server (in %)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V 5.0 client sends publishing refresh request &amp; receives response, each request containing 120 packages</p></td>
<td align="left"><p>Number of clients</p></td>
<td align="left"><p></p>
<ul>
<li><p>100</p></li>
<li><p>1000</p></li>
<li><p>5000</p></li>
<li><p>10000</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>120</p></li>
<li><p>120</p></li>
<li><p>120</p></li>
<li><p>120</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>Dual Core</p></li>
<li><p>Dual Core</p></li>
<li><p>Quad Core</p></li>
<li><p>Quad Core</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1</p></li>
<li><p>2</p></li>
<li><p>2</p></li>
<li><p>3</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>100</p></li>
<li><p>99</p></li>
<li><p>89</p></li>
<li><p>77</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Multiple packages in each refresh</p></td>
<td align="left"><p>Number of packages</p></td>
<td align="left"><p></p>
<ul>
<li><p>1000</p></li>
<li><p>1000</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>500</p></li>
<li><p>1000</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>Quad Core</p></li>
<li><p>Quad Core</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>2</p></li>
<li><p>3</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>92</p></li>
<li><p>91</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Network between client and publishing server</p></td>
<td align="left"><p>1.5 Mbps Slow link network</p></td>
<td align="left"><p></p>
<ul>
<li><p>100</p></li>
<li><p>500</p></li>
<li><p>1000</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>120</p></li>
<li><p>120</p></li>
<li><p>120</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>Quad Core</p></li>
<li><p>Quad Core</p></li>
<li><p>Quad Core</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1.5 Mbps Intra-Continental Network</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>3</p></li>
<li><p>10 (with 0.2% failure rate)</p></li>
<li><p>17 (with 1% failure rate)</p></li>
</ul></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="---------app-v-5-0-streaming-capacity-planning-recommendations"></a> App-V 5.0 Streaming Capacity Planning Recommendations


Computers running the App-V 5.0 client stream the virtual application package from the streaming server. Round trip response time is measured on the computer running the App-V 5.0 client, and is the time taken to stream the entire package.

**Important**  
The following list identifies the main factors to consider when setting up the App-V 5.0 streaming server:

-   The number of clients streaming application packages simultaneously from a single streaming server.

-   The size of the package being streamed.

-   The available network bandwidth in your environment between the client and the streaming server.

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Scenario</th>
<th align="left">Summary</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Multiple App-V 5.0 clients stream applications from a single streaming server simultaneously.</p></td>
<td align="left"><p></p>
<ul>
<li><p>If the number of clients simultaneously streaming from the same server increases, there is a linear relationship with the package download/streaming time.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Size of the package being streamed.</p>
<p></p></td>
<td align="left"><p></p>
<ul>
<li><p>The package size has a significant impact on the streaming/download time only for larger packages with a size ~ 1GB. For package sizes ranging from 3 MB to 100 MB, the streaming time ranges from 20 seconds to 100 seconds, with 100 simultaneous clients.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Network between the App-V 5.0 client and the streaming server.</p>
<p></p></td>
<td align="left"><p></p>
<ul>
<li><p>Across a slow network (1.5 Mbps bandwidth), there is a 70-80% increase in response time compared to LAN (up to 100 users).</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

The following table displays sample values for each of the factors in the previous list:

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Scenario</th>
<th align="left">Variation</th>
<th align="left">Number of App-V 5.0 clients</th>
<th align="left">Size of each package</th>
<th align="left">Network connection type streaming server / App-V 5.0 client</th>
<th align="left">Round trip time on the App-V 5.0 client (in seconds)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Multiple App-V 5.0 clients streaming virtual application packages from a streaming server.</p></td>
<td align="left"><p>Number of clients.</p></td>
<td align="left"><p></p>
<ul>
<li><p>100</p></li>
<li><p>200</p></li>
<li><p>1000</p></li>
<li><p></p></li>
<li><p>100</p></li>
<li><p>200</p></li>
<li><p>1000</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>3.5 MB</p></li>
<li><p>3.5 MB</p></li>
<li><p>3.5 MB</p></li>
<li><p></p></li>
<li><p>5 MB</p></li>
<li><p>5 MB</p></li>
<li><p>5 MB</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p></p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>29</p></li>
<li><p>39</p></li>
<li><p>391</p></li>
<li><p></p></li>
<li><p>35</p></li>
<li><p>68</p></li>
<li><p>461</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Size of each package being streamed.</p></td>
<td align="left"><p>Size of each package.</p></td>
<td align="left"><p></p>
<ul>
<li><p>100</p></li>
<li><p>200</p></li>
<li><p></p></li>
<li><p>100</p></li>
<li><p>200</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>21 MB</p></li>
<li><p>21 MB</p></li>
<li><p></p></li>
<li><p>109</p></li>
<li><p>109</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
<li><p></p></li>
<li><p>LAN</p></li>
<li><p>LAN</p></li>
</ul></td>
<td align="left"><p></p>
<p>33</p>
<p>83</p>
<p></p>
<p>100</p>
<p>160</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Network connection between client and App-V 5.0 streaming server.</p></td>
<td align="left"><p>1.5 Mbps Slow link network.</p></td>
<td align="left"><p></p>
<ul>
<li><p>100</p></li>
<li><p></p></li>
<li><p>100</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>3.5 MB</p></li>
<li><p></p></li>
<li><p>5 MB</p></li>
</ul></td>
<td align="left"><p></p>
<ul>
<li><p>1.5 Mbps Intra-Continental Network</p></li>
</ul></td>
<td align="left"><p></p>
<p>102</p>
<p></p>
<p>121</p></td>
</tr>
</tbody>
</table>

 

Each App-V 5.0 streaming server should be able to handle a minimum of 200 clients concurrently streaming virtualized applications.

**Note**  
The actual time to it will take to stream is determined primarily by the number of clients streaming simultaneously, number of packages, package size, the server’s network activity, and network conditions.

 

For example, an average user can stream a 100 MB package in less than 2 minutes, when 100 simultaneous clients are streaming from the server. However, a package of size 1 GB could take up to 30 minutes. In most real world environments streaming demand is not uniformly distributed, you will need to understand the approximate peak streaming requirements present in your environment in order to properly size the number of required streaming servers.

The number of clients a streaming server can support can be significantly increased and the peak streaming requirements reduced if you pre-cache your applications. You can also increase the number of clients a streaming server can support by using on-demand streaming delivery and stream optimized packages.

## Combining App-V 5.0 Server Roles


Discounting scaling and fault-tolerance requirements, the minimum number of servers needed for a location with connectivity to Active Directory is one. This server will host the management server, management server service, and Microsoft SQL Server roles. Server roles, therefore, can be arranged in any desired combination since they do not conflict with one another.

Ignoring scaling requirements, the minimum number of servers necessary to provide a fault-tolerant implementation is four. The management server, and Microsoft SQL Server roles support being placed in fault-tolerant configurations. The management server service can be combined with any of the roles, but remains a single point of failure.

Although there are a number of fault-tolerance strategies and technologies available, not all are applicable to a given service. Additionally, if App-V 5.0 roles are combined, certain fault-tolerance options may no longer apply due to incompatibilities.






## Related topics


[App-V 5.0 Supported Configurations](app-v-50-supported-configurations.md)

[Planning for High Availability with App-V 5.0](planning-for-high-availability-with-app-v-50.md)

[Planning to Deploy App-V](planning-to-deploy-app-v.md)

 

 





