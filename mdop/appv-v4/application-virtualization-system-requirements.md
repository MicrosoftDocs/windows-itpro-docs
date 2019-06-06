---
title: Application Virtualization System Requirements
description: Application Virtualization System Requirements
author: dansimp
ms.assetid: a2798dd9-168e-45eb-8103-e12e128fae7c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Application Virtualization System Requirements


This topic describes the minimum hardware and software requirements for the Microsoft Application Virtualization (App-V) Management Server and Streaming Server.

## Application Virtualization Management and Streaming Servers


The following list includes the minimum recommended hardware and software requirements for the App-V Management Server and App-V Streaming Server.

### Hardware Requirements

-   Processor—Intel Pentium III, 1 GHz

-   RAM—512 MB

-   Disk space—200 MB available hard disk space, not including the Content directory

### Software Requirements

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2003</p></td>
<td align="left"><p>Standard Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003</p></td>
<td align="left"><p>Enterprise Edition or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Standard Edition</p></td>
<td align="left"><p>No service pack or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Enterprise Edition or Datacenter Edition</p></td>
<td align="left"><p>No service pack or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2¹</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>x64</p></td>
</tr>
</tbody>
</table>

 

¹Applies to App-V 4.5 SP1 and SP2 only.

## Data Store


The following list includes the minimum recommended hardware and software requirements for the computer that is used when you install the data store on a separate server. The data store is required only for the Application Virtualization Management Server.

### Hardware Requirements

-   Processor—Intel Pentium III, 850 MHz

-   RAM—512 MB

-   Disk space—200 MB available hard disk space

### Software Requirements

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2003</p></td>
<td align="left"><p>Standard Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003</p></td>
<td align="left"><p>Enterprise Edition or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Standard Edition</p></td>
<td align="left"><p>No service pack or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Enterprise Edition or Datacenter Edition</p></td>
<td align="left"><p>No service pack or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2¹</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>x64</p></td>
</tr>
</tbody>
</table>

 

¹Applies to App-V 4.5 SP1 and SP2 only.

-   Database—Microsoft SQL Server 2000 SP3a or SP4, SQL Server 2005 SP1, SP2, or SP3, or SQL Server 2008, no service pack or SP1 or SQL Server 2008 R2 (32-bit or 64-bit)

-   Microsoft Data Access Components—MDAC 2.7

-   Domain controller—Active Directory Domain Services or Windows NT 4.0-based primary domain controller (PDC) as the central authentication authority

## Management Web Service


The following list includes the minimum recommended hardware and software requirements for the Application Virtualization Management Web Service when it is installed on a separate computer.

### Hardware Requirements

-   Processor—Intel Pentium III, 800 MHz

-   RAM—256 MB

-   Disk space—50 MB available hard disk space

### Software Requirements

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2003</p></td>
<td align="left"><p>Standard Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003</p></td>
<td align="left"><p>Enterprise Edition or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Standard Edition</p></td>
<td align="left"><p>No service pack or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Enterprise Edition or Datacenter Edition</p></td>
<td align="left"><p>No service pack or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2¹</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>x64</p></td>
</tr>
</tbody>
</table>

 

¹Applies to App-V 4.5 SP1 and SP2 only.

-   Internet Information Services—Internet Information Services (IIS) 6.0 configured with Microsoft ASP.NET, IIS 7

-   Microsoft .NET Framework 2.0

## Management Console


The following list includes the minimum recommended hardware and software requirements for the Application Virtualization Management Console when it is installed on a separate computer.

### Hardware Requirements

-   Processor—Intel Pentium III, 450 MHz

-   RAM—256 MB

-   Disk space—200 MB available hard disk space

### Software Requirements

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows XP</p></td>
<td align="left"><p>Professional Edition</p></td>
<td align="left"><p>SP2 or SP3</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Vista</p></td>
<td align="left"><p>Business, Enterprise, or Ultimate Edition</p></td>
<td align="left"><p>No service pack, SP1, or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Professional, Enterprise, or Ultimate Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003</p></td>
<td align="left"><p>Standard Edition, Enterprise Edition, or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Standard Edition, Enterprise Edition, or Datacenter Edition</p></td>
<td align="left"><p>No service pack or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2¹</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>x64</p></td>
</tr>
</tbody>
</table>

 

¹Applies to App-V 4.5 SP1 and SP2 only.

-   Microsoft Management Console—MMC 3.0 or later

-   Microsoft .NET Framework 2.0 SP2 (minimum)

    **Important**  
    The minimum requirement is .NET Framework 2.0 SP2 if you must install App-V hotfix KB980850 or subsequent App-V hotfixes on the computer that is running the App-V Management Console.

     

## Related topics


[Application Virtualization Client Hardware and Software Requirements](application-virtualization-client-hardware-and-software-requirements.md)

[Application Virtualization Sequencer Hardware and Software Requirements](application-virtualization-sequencer-hardware-and-software-requirements.md)

[How to Configure Servers for Server-Based Deployment](how-to-configure-servers-for-server-based-deployment.md)

[How to Install the Servers and System Components](how-to-install-the-servers-and-system-components.md)

[How to Upgrade the Servers and System Components](how-to-upgrade-the-servers-and-system-components.md)

 

 





