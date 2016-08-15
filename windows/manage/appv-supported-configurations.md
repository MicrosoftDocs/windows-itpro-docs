---
title: App-V Supported Configurations (Windows 10)
description: App-V Supported Configurations
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# App-V Supported Configurations

Applies to: Windows 10, version 1607; Windows Server 2016; Windows Server 2012 R2; Windows Server 2012; and Windows Server 2008 R2

This topic specifies the requirements to install and run App-V in your Windows 10 environment.

## App-V Server system requirements

This section lists the operating system and hardware requirements for all of the App-V server components.

### Unsupported App-V server scenarios

The App-V server does not support the following scenarios:

-   Deployment to a computer that runs the Server Core installation option.

-   Deployment to a computer that runs a previous version of the App-V server components. You can install App-V side by side with the App-V 4.5 Lightweight Streaming Server (LWS) server only. Deployment of App-V side by side with the Application Virtualization Management Service (HWS) 4.x is not supported.

-   Deployment to a computer that runs Microsoft SQL Server Express edition.

-   Deployment to a domain controller.

-   Short paths. If you plan to use a short path, you must create a new volume.

### Management server operating system requirements

The App-V Management server can be installed on a server that runs Windows Server 2008 R2 with SP1 or later.

> [!IMPORTANT]  
> Deployment of the Management server role to a computer with Remote Desktop Services enabled is not supported.

 

### Management server hardware requirements

-   Processor—1.4 GHz or faster, 64-bit (x64) processor

-   RAM—1 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space, not including the content directory

### Management server database requirements

The following table lists the SQL Server versions that are supported for the App-V Management database installation.

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

The App-V Publishing server can be installed on a server that runs Windows Server 2008 R2 with SP1 or later.


### Publishing server hardware requirements

App-V adds no additional requirements beyond those of Windows Server.

-   Processor—1.4 GHz or faster, 64-bit (x64) processor

-   RAM—2 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space, not including the content directory

### Reporting server operating system requirements

The App-V Reporting server can be installed on a server that runs Windows Server 2008 R2 with SP1 or later. 

### Reporting server hardware requirements

App-V adds no additional requirements beyond those of Windows Server.

-   Processor—1.4 GHz or faster, 64-bit (x64) processor

-   RAM—2 GB RAM (64-bit)

-   Disk space—200 MB available hard disk space

### Reporting server database requirements

The following table lists the SQL Server versions that are supported for the App-V Reporting database installation.

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

 

## App-V client requirements and Remote Desktop Services client requirements

With Windows 10, version 1607 and later releases, the App-V client is included with Windows 10 Enterprise and Windows 10 Education. The App-V client is no longer part of the Microsoft Desktop Optimization Pack. Before you can use the App-V client, it must be enabled, as described in [Enable the App-V desktop client](appv-enable-the-app-v-desktop-client.md).

Similarly, the App-V Remote Desktop Services (RDS) client is included with Windows Server 2016 Standard and Windows Server 2016 Datacenter.

## Sequencer system requirements


The following table lists the operating systems that are supported for the App-V Sequencer installation.

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
<td align="left"><p>Microsoft Windows Server 2012 R2</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows Server 2012</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows Server 2008 R2</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows 10</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft Windows 8.1</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit and 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft Windows 8</p></td>
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

The App-V client works with System Center Configuration Manager versions starting with Technical Preview for System Center Configuration Manager, version 1606.

## Have a suggestion for App-V?


Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

- [Planning to Deploy App-V](appv-planning-to-deploy-appv.md)
- [App-V Prerequisites](appv-prerequisites.md)
