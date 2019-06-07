---
title: App-V 5.1 Supported Configurations
description: App-V 5.1 Supported Configurations
author: v-madhi
ms.assetid: 8b8db63b-f71c-4ae9-80e7-a6752334e1f6
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 09/27/2016
---


# App-V 5.1 Supported Configurations


This topic specifies the requirements to install and run Microsoft Application Virtualization (App-V) 5.1 in your environment.

## App-V Server system requirements


This section lists the operating system and hardware requirements for all of the App-V Server components.

### Unsupported App-V 5.1 Server scenarios

The App-V 5.1 Server does not support the following scenarios:

-   Deployment to a computer that runs Microsoft Windows Server Core.

-   Deployment to a computer that runs a previous version of App-V 5.1 Server components. You can install App-V 5.1 side by side with the App-V 4.5 Lightweight Streaming Server (LWS) server only. Deployment of App-V side by side with the App-V 4.5 Application Virtualization Management Service (HWS) server is not supported.

-   Deployment to a computer that runs Microsoft SQL Server Express edition.

-   Deployment to a domain controller.

-   Short paths. If you plan to use a short path, you must create a new volume.

### Management server operating system requirements

The following table lists the operating systems that are supported for the App-V 5.1 Management server installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). See [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976) for more information.

 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Service Pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2016</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2012 R2</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2012</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2008 R2</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

 

**Important**  
Deployment of the Management server role to a computer with Remote Desktop Sharing (RDS) enabled is not supported.

 

### <a href="" id="management-server-hardware-requirements-"></a>Management server hardware requirements

-   Processor—1.4 GHz or faster, 64-bit (x64) processor

-   RAM—1 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space, not including the content directory

### Management server database requirements

The following table lists the SQL Server versions that are supported for the App-V 5.1 Management database installation.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">SQL Server version</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft SQL Server 2014</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft SQL Server 2012</p></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft SQL Server 2008 R2</p></td>
<td align="left"><p>SP3</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
</tbody>
</table>

 

### Publishing server operating system requirements

The following table lists the operating systems that are supported for the App-V 5.1 Publishing server installation.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Service Pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2016</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2012 R2</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2012</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2008 R2</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="publishing-server-hardware-requirements-"></a>Publishing server hardware requirements

App-V adds no additional requirements beyond those of Windows Server.

-   Processor—1.4 GHz or faster, 64-bit (x64) processor

-   RAM—2 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space, not including the content directory

### Reporting server operating system requirements

The following table lists the operating systems that are supported for the App-V 5.1 Reporting server installation.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Service Pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2016</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2012 R2</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2012</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2008 R2</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="reporting-server-hardware-requirements-"></a>Reporting server hardware requirements

App-V adds no additional requirements beyond those of Windows Server.

-   Processor—1.4 GHz or faster, 64-bit (x64) processor

-   RAM—2 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space

### Reporting server database requirements

The following table lists the SQL Server versions that are supported for the App-V 5.1 Reporting database installation.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">SQL Server version</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft SQL Server 2014</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft SQL Server 2012</p></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft SQL Server 2008 R2</p></td>
<td align="left"><p>SP3</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-client-supp-cfgs"></a>App-V client system requirements


The following table lists the operating systems that are supported for the App-V 5.1 client installation.

**Note:** With the Windows 10 Anniversary release (aka 1607 version), the App-V client is in-box and will block installation of any previous version of the App-V client

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
<td align="left"><p>Microsoft Windows 10 (pre-1607 version)</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows 8.1</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
</tbody>
</table>

 

The following App-V client installation scenarios are not supported, except as noted:

-   Computers that run Windows Server

-   Computers that run App-V 4.6 SP1 or earlier versions

-   The App-V 5.1 Remote Desktop services client is supported only for RDS-enabled servers

### <a href="" id="app-v-client-hardware-requirements-"></a>App-V client hardware requirements

The following list displays the supported hardware configuration for the App-V 5.1 client installation.

-   Processor— 1.4 GHz or faster 32-bit (x86) or 64-bit (x64) processor

-   RAM— 1 GB (32-bit) or 2 GB (64-bit)

-   Disk— 100 MB for installation, not including the disk space that is used by virtualized applications.

## Remote Desktop Services client system requirements


The following table lists the operating systems that are supported for App-V 5.1 Remote Desktop Services (RDS) client installation.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Service Pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2016</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2012 R2</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2012</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2008 R2</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

 

### Remote Desktop Services client hardware requirements

App-V adds no additional requirements beyond those of Windows Server.

-   Processor—1.4 GHz or faster, 64-bit (x64) processor

-   RAM—2 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space

## Sequencer system requirements


The following table lists the operating systems that are supported for the App-V 5.1 Sequencer installation.

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
<td align="left"><p>Microsoft Windows Server 2016</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2012 R2</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2012</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2008 R2</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows 10</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows 8.1</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows 7</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
</tbody>
</table>

 

### Sequencer hardware requirements

See the Windows or Windows Server documentation for the hardware requirements. App-V adds no additional hardware requirements.

## <a href="" id="bkmk-supp-ver-sccm"></a>Supported versions of System Center Configuration Manager


The App-V client supports the following versions of System Center Configuration Manager:

-   Microsoft System Center 2012 Configuration Manager

-   System Center 2012 R2 Configuration Manager

-   System Center 2012 R2 Configuration Manager SP1

The following App-V and System Center Configuration Manager version matrix shows all officially supported combinations of App-V and Configuration Manager.

**Note:** Both App-V 4.5 and 4.6 have exited Mainstream support.

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
<th align="left">App-V Version</th>
<th align="left">System Center Configuration Manager 2007</th>
<th align="left">System Center 2012 Configuration Manager</th>
<th align="left">System Center 2012 Configuration Manager SP1</th>
<th align="left">System Center 2012 R2 Configuration Manager</th>
<th align="left">System Center 2012 R2 Configuration Manager SP1</th>
<th align="left">System Center 2012 Configuration Manager SP2</th>
<th align="left">System Center Configuration Manager Version 1511</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V 5.0 SP3</p></td>
<td align="left"><p>MSI-Wrapper Only</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>2012 SP1 CU4</p></td>
<td align="left"><p>2012 R2 CU1</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V 5.1</p></td>
<td align="left"><p>MSI-Wrapper Only</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>2012 SP1 CU4</p></td>
<td align="left"><p>2012 R2 CU1</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
</tbody>
</table>

 

For more information about how Configuration Manager integrates with App-V, see [Planning for App-V Integration with Configuration Manager](https://technet.microsoft.com/library/jj822982.aspx).






## Related topics


[Planning to Deploy App-V](planning-to-deploy-app-v51.md)

[App-V 5.1 Prerequisites](app-v-51-prerequisites.md)

 

 





