---
title: Viewing App-V Server Publishing Metadata
description: Viewing App-V Server Publishing Metadata
author: msfttracyp
ms.assetid: 048dd42a-24d4-4cc4-81f6-7a919aadd9b2
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Viewing App-V Server Publishing Metadata


Use this procedure to view publishing metadata, which can help you resolve publishing-related issues. You must be using the App-V Management server to use this procedure.

This article contains the following information:

-   [App-V 5.0 SP3 requirements for viewing publishing metadata](#bkmk-50sp3-reqs-pub-meta)

-   [Syntax to use for viewing publishing metadata](#bkmk-syntax-view-pub-meta)

-   [Query values for client operating system and version](#bkmk-values-query-pub-meta)

-   [Definition of publishing metadata](#bkmk-whatis-pub-metadata)

## <a href="" id="bkmk-50sp3-reqs-pub-meta"></a>App-V 5.0 SP3 requirements for viewing publishing metadata


In App-V 5.0 SP3, you must provide the following values in the address when you query the App-V Publishing server for metadata:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Value</th>
<th align="left">Additional details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>ClientVersion</strong></p></td>
<td align="left"><p>If you omit the <strong>ClientVersion</strong> parameter from the query, the metadata excludes the new App-V 5.0 SP3 features.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>ClientOS</strong></p></td>
<td align="left"><p>You have to provide this value only if you select specific client operating systems when you sequence the package. If you select the default (all operating systems), do not specify this value in the query.</p>
<p>If you omit the <strong>ClientOS</strong> parameter from the query, only the packages that were sequenced to support any operating system appear in the metadata.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-syntax-view-pub-meta"></a>Query syntax for viewing publishing metadata


The following table provides the syntax and query examples.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Version of App-V</th>
<th align="left">Query syntax</th>
<th align="left">Parameter descriptions</th>
<th align="left">Example</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V 5.0 SP3</p></td>
<td align="left"><p><code>http://&lt;PubServer&gt;:&lt;Publishing Port#&gt;/?ClientVersion=&lt;AppvClientVersion&gt;&amp;ClientOS=&lt;OSStringValue&gt;</code></p></td>
<td align="left"><table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>&lt;PubServer&gt;</p></td>
<td align="left"><p>Name of the App-V Publishing server.</p></td>
</tr>
<tr class="even">
<td align="left"><p>&lt;Publishing Port#&gt;</p></td>
<td align="left"><p>Port to the App-V Publishing server, which you defined when you configured the Publishing server.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ClientVersion=&lt;AppvClientVersion&gt;</p></td>
<td align="left"><p>Version of the App-V client. Refer to the following table for the correct value to use.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ClientOS=&lt;OSStringValue&gt;</p></td>
<td align="left"><p>Operating system of the computer that is running the App-V client. Refer to the following table for the correct value to use.</p></td>
</tr>
</tbody>
</table>
<p> </p>
<p>To get the name of the Publishing server and the port number (http://&lt;PubServer&gt;:&lt;Publishing Port#&gt;) from the App-V Client, look at the URL configuration of the <strong>Get-AppvPublishingServer</strong> PowerShell cmdlet.</p></td>
<td align="left"><p><code>http://pubsvr01:2718/?clientversion=5.0.10066.0&amp;clientos=WindowsClient_6.2_x64</code></p>
<p>In the example:</p>
<ul>
<li><p>A Windows Server 2012 R2 named “pubsvr01” hosts the Publishing service.</p></li>
<li><p>The Windows client is Windows 8.1 64-bit.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 5.0 through App-V 5.0 SP2</p></td>
<td align="left"><p><code>http://&lt;PubServer&gt;:&lt;Publishing Port#&gt;/ </code></p>
<div class="alert">
<strong>Note</strong>  
<p><strong>ClientVersion</strong> and <strong>ClientOS</strong> are supported only in App-V 5.0 SP3.</p>
</div>
<div>
 
</div></td>
<td align="left"><p>See the information for App-V 5.0 SP3.</p></td>
<td align="left"><p><code>http://pubsvr01:2718</code></p>
<p>In the example, A Windows Server 2012 R2 named “pubsvr01” hosts the Management and Publishing services.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-values-query-pub-meta"></a>Query values for client operating system and version


In your publishing metadata query, enter the string values that correspond to the client operating system and version that you’re using.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Architecture</th>
<th align="left">Operating string string value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 8.1</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>WindowsClient_6.2_x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8.1</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>WindowsClient_6.2_x86</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 8</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>WindowsClient_6.2_x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>WindowsClient_6.2_x86</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012 R2</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>WindowsServer_6.2_x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>WindowsServer_6.2_x86</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>WindowsServer_6.2_x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>WindowsServer_6.2_x86</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>WindowsClient_6.1_x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>WindowsClient_6.1_x86</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>WindowsServer_6.1_x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>WindowsServer_6.1_x86</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-whatis-pub-metadata"></a>Definition of publishing metadata


When packages are published to a computer that is running the App-V client, metadata is sent to that computer indicating which packages and connection groups are being published. The App-V Client makes two separate requests for the following:

-   Packages and connection groups that are entitled to the client computer.

-   Packages and connection groups that are entitled to the current user.

The Publishing server communicates with the Management server to determine which packages and connection groups are available to the requester. The Publishing server must be registered with the Management server in order for the metadata to be generated.

You can view the metadata for each request in an Internet browser by using a query that is in the context of the specific user or computer.






## Related topics


[Technical Reference for App-V 5.0](technical-reference-for-app-v-50.md)

 

 





