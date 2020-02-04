---
title: App-V 5.0 Supported Configurations
description: App-V 5.0 Supported Configurations
author: dansimp
ms.assetid: 3787ff63-7ce7-45a8-8f01-81b4b6dced34
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# App-V 5.0 Supported Configurations


This topic specifies the requirements that are necessary to install and run Microsoft Application Virtualization (App-V) 5.0 in your environment.

**Important**  
**The supported configurations in this article apply only to App-V 5.0**. For supported configurations that apply to App-V 5.0 Service Packs, see the following web pages:

-   [What's new in App-V 5.0 SP1](whats-new-in-app-v-50-sp1.md)

-   [About App-V 5.0 SP2](about-app-v-50-sp2.md)

-   [App-V 5.0 SP3 Supported Configurations](app-v-50-sp3-supported-configurations.md)



## <a href="" id="---------app-v-5-0-server-system-requirements"></a> App-V 5.0 server system requirements


**Important**  
The App-V 5.0 server does not support the following scenarios:



-   Deployment to a computer that runs Microsoft Windows Server Core.

-   Deployment to a computer that runs a previous version of App-V 5.0 server components.

    **Note**  
    You can install App-V 5.0 side-by-side with the App-V 4.5 Lightweight Streaming Server (LWS) server only. Deployment of App-V 5.0 side-by-side with the App-V 4.5 Application Virtualization Management Service (HWS) server is not supported.



-   Deployment to a computer that runs Microsoft SQL Server Express edition.

-   Remote deployment of the management server database or the reporting database. The installer must be run directly on the computer running Microsoft SQL for the database installation to succeed.

-   Deployment to a domain controller.

-   Short paths are not supported. If you plan to use a short path you must create a new volume.

### Management Server operating system requirements

The following table lists the operating systems that are supported for the App-V 5.0 management server installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).



<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Edition</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2008 (Standard, Enterprise, Datacenter, or Web Server)</p></td>
<td align="left"><p>R2</p></td>
<td align="left"><p>SP1 and higher</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2012 (Standard, Datacenter)</p></td>
<td align="left"><p></p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2012 (Standard, Datacenter)</p></td>
<td align="left"><p>R2</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>



**Important**  
Deployment of the management server role to a computer with Remote Desktop Sharing (RDS) enabled is not supported.



### <a href="" id="management-server-hardware-requirements-"></a>Management Server hardware requirements

-   Processor—1.4 GHz or faster, 64-bit (x64) processor

-   RAM— 1 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space, not including the content directory.

### Publishing Server operating system requirements

The following table lists the operating systems that are supported for the App-V 5.0 publishing server installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).



<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Edition</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2008 (Standard, Enterprise, Datacenter, or Web Server)</p></td>
<td align="left"><p>R2</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2012 (Standard, Datacenter)</p></td>
<td align="left"><p></p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2012 (Standard, Datacenter)</p></td>
<td align="left"><p>R2</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>



### <a href="" id="publishing-server-hardware-requirements-"></a>Publishing Server hardware requirements

-   Processor—1.4 GHz or faster. 64-bit (x64) processor

-   RAM— 2 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space. not including content directory

### Reporting Server operating system requirements

The following table lists the operating systems that are supported for the App-V 5.0 reporting server installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).



<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2008 (Standard, Enterprise, Datacenter, or Web Server)</p></td>
<td align="left"><p>R2</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2012 (Standard, Datacenter)</p></td>
<td align="left"><p></p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2012 (Standard, Datacenter)</p></td>
<td align="left"><p>R2</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>



### <a href="" id="reporting-server-hardware-requirements-"></a>Reporting Server hardware requirements

-   Processor—1.4 GHz or faster. 64-bit (x64) processor

-   RAM—2 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space

### <a href="" id="sql-server-database-requirements-"></a>SQL Server database requirements

The following table lists the SQL Server versions that are supported for the App-V 5.0 database and server installation.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">App-V 5.0 server type</th>
<th align="left">SQL Server version</th>
<th align="left">Edition</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Management / Reporting</p></td>
<td align="left"><p>Microsoft SQL Server 2008</p>
<p>(Standard, Enterprise, Datacenter, or the Developer Edition with the following feature: <strong>Database Engine Services</strong>.)</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Management / Reporting</p></td>
<td align="left"><p>Microsoft SQL Server 2008 </p>
<p>(Standard, Enterprise, Datacenter, or the Developer Edition with the following feature: <strong>Database Engine Services</strong>.)</p></td>
<td align="left"><p>R2</p></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Management / Reporting</p></td>
<td align="left"><p>Microsoft SQL Server 2012</p>
<p>(Standard, Enterprise, Datacenter, or the Developer Edition with the following feature: <strong>Database Engine Services</strong>.)</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
</tbody>
</table>



## <a href="" id="bkmk-client-supp-cfgs"></a> App-V 5.0 client system requirements


The following table lists the operating systems that are supported for the App-V 5.0 client installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).



<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Windows 7</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows 8</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><div class="alert">
<strong>Important</strong><br/><p>Windows 8.1 is only supported by App-V 5.0 SP2</p>
</div>
<div>

</div>
<p>Windows 8.1</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
</tbody>
</table>



The following App-V client installation scenarios are not supported, except as noted:

-   Computers that run Windows Server

-   Computers that run App-V 4.6 SP1 or earlier versions

-   The App-V 5.0 Remote Desktop services client is supported only for RDS-enabled servers

### <a href="" id="client-hardware-requirements-"></a>Client hardware requirements

The following list displays the supported hardware configuration for the App-V 5.0 client installation.

-   Processor— 1.4 GHz or faster 32-bit (x86) or 64-bit (x64) processor

-   RAM— 1 GB (32-bit) or 2 GB (64-bit)

-   Disk— 100 MB for installation, not including the disk space that is used by virtualized applications.

## <a href="" id="---------app-v-5-0-remote-desktop-client-system-requirements"></a> App-V 5.0 Remote Desktop client system requirements


The following table lists the operating systems that are supported for App-V 5.0 Remote Desktop client installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).



Operating system
Edition
Service pack
Microsoft Windows Server 2008

R2

SP1

Microsoft Windows Server 2012

**Important**  
Windows Server 2012 R2 is only supported by App-V 5.0 SP2



Microsoft Windows Server 2012 (Standard, Datacenter)

R2

64-bit



### <a href="" id="remote-desktop-client-hardware-requirements-"></a>Remote Desktop client hardware requirements

The following list displays the supported hardware configuration for the App-V 5.0 client installation.

-   Processor— 1.4 GHz or faster 32-bit (x86) or 64-bit (x64) processor

-   RAM— 1 GB (32-bit) or 2 GB (64-bit)

-   Disk— 100 MB for installation, not including the disk space that is used by virtualized applications.

## <a href="" id="---------app-v-5-0-sequencer-system-requirements"></a> App-V 5.0 Sequencer system requirements


The following table lists the operating systems that are supported for App-V 5.0 Sequencer installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).



<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Edition</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Windows 7</p></td>
<td align="left"></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows 8</p></td>
<td align="left"></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><div class="alert">
<strong>Important</strong><br/><p>Windows 8.1 is only supported by App-V 5.0 SP2</p>
</div>
<div>

</div>
<p>Windows 8.1</p></td>
<td align="left"></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2008</p></td>
<td align="left"><p>R2</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2012</p></td>
<td align="left"></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><div class="alert">
<strong>Important</strong><br/><p>Windows Server 2012 R2 is only supported by App-V 5.0 SP2</p>
</div>
<div>

</div>
<p>Microsoft Windows Server 2012</p></td>
<td align="left"><p>R2</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>



## <a href="" id="bkmk-supp-ver-sccm"></a>Supported versions of System Center Configuration Manager


You can use Microsoft System Center 2012 Configuration Manager or System Center 2012 R2 Configuration Manager to manage App-V virtual applications, reporting, and other functions. The following table lists the supported versions of Configuration Manager for each applicable version of App-V.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Supported Configuration Manager version</th>
<th align="left">App-V version</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft System Center 2012 Configuration Manager</p></td>
<td align="left"><ul>
<li><p>App-V 5.0</p></li>
<li><p>App-V 5.0 SP1</p></li>
<li><p>App-V 5.0 SP2</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>System Center 2012 R2 Configuration Manager</p></td>
<td align="left"><ul>
<li><p>App-V 5.0</p></li>
<li><p>App-V 5.0 SP1</p></li>
<li><p>App-V 5.0 SP2</p></li>
</ul></td>
</tr>
</tbody>
</table>



For more information about how Configuration Manager integrates with App-V, see [Planning for App-V Integration with Configuration Manager](https://technet.microsoft.com/library/jj822982.aspx).






## Related topics


[Planning to Deploy App-V](planning-to-deploy-app-v.md)

[App-V 5.0 Prerequisites](app-v-50-prerequisites.md)









