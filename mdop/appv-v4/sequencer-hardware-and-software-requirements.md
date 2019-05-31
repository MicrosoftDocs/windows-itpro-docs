---
title: Sequencer Hardware and Software Requirements
description: Sequencer Hardware and Software Requirements
author: eavena
ms.assetid: 36084e12-831d-452f-a4a4-45f07f9ce471
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Sequencer Hardware and Software Requirements


This topic describes the minimum recommended hardware and software requirements for the computer running the Microsoft Application Virtualization (App-V) Sequencer.

Before you install the Sequencer and after you sequence each application, you must restore a clean operating system image to the sequencing computer. You can use one of the following methods to restore the computer running the Sequencer:

-   Reformat the hard drive and reinstall the operating system.

-   Restore the hard drive on the computer running the Sequencer image by using another disk-imaging software.

The following list outlines the recommended hardware requirements for running the App-V Sequencer.

### <a href="" id="hardware-requirements-"></a>Hardware Requirements

-   Processor—Intel Pentium III, 1 GHz (32-bit or 64-bit). The sequencing process is a single-threaded process and does not take advantage of dual processors.

-   Memory—1 GB or above, 2 GB recommended.

-   Hard Disk—40 gigabyte (GB) hard disk space with a minimum of 15 GB available hard disk space. We recommend that you have at least three times the hard disk space that the application you are sequencing requires.

    **Note**  
    Sequencing requires heavy disk usage. A fast disk speed can decrease the sequencing time.

     

### Software Requirements

The following list outlines the supported operating systems for running the Sequencer.

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
<td align="left"><p>Professional</p></td>
<td align="left"><p>SP2 or SP3</p></td>
<td align="left"><p>x86</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Vista</p></td>
<td align="left"><p>Business, Enterprise, or Ultimate</p></td>
<td align="left"><p>No service pack, SP1, or SP2</p></td>
<td align="left"><p>x86</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7¹</p></td>
<td align="left"><p>Professional, Enterprise, or Ultimate</p></td>
<td align="left"><p></p></td>
<td align="left"><p>x86</p></td>
</tr>
</tbody>
</table>

 

¹Supported for App-V 4.5 with SP1 or SP2, and App-V 4.6 only

**Note**  
The Application Virtualization (App-V) 4.6 Sequencer supports 32-bit and 64-bit versions of these operating systems.

 

You should configure computers running the Sequencer with the same applications that are installed on target computers.

### Software Requirements for Remote Desktop Services

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
<td align="left"><p>Standard Edition, Enterprise Edition, or Datacenter Edition</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2003 R2</p></td>
<td align="left"><p>Standard Edition, Enterprise Edition, or Datacenter Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>x86</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86</p></td>
</tr>
</tbody>
</table>

 

**Note**  
Application Virtualization (App-V) 4.6 for Remote Desktop Services supports 32-bit and 64-bit versions of these operating systems.

 

## Related topics


[Application Virtualization Sequencer Overview](application-virtualization-sequencer-overview.md)

 

 





