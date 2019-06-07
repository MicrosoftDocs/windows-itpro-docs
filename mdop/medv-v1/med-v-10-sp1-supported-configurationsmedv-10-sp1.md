---
title: MED-V 1.0 SP1 Supported Configurations
description: MED-V 1.0 SP1 Supported Configurations
author: dansimp
ms.assetid: 4dcf37c4-a061-43d2-878c-28efc87c3cdd
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# MED-V 1.0 SP1 Supported Configurations


This topic specifies the requirements necessary to install and run Microsoft Enterprise Desktop Virtualization (MED-V) 1.0 Service Pack 1 (SP1) in your environment.

## MED-V 1.0 SP1 Client System Requirements


### MED-V Client Operating System Requirements

The following table lists the operating systems that are supported for MED-V 1.0 SP1 client installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/?LinkId=31975) (https://go.microsoft.com/fwlink/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/?LinkId=31976) (https://go.microsoft.com/fwlink/?LinkId=31976).



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
<td align="left"><p>Windows XP</p></td>
<td align="left"><p>Professional Edition</p></td>
<td align="left"><p>SP2 or SP3</p></td>
<td align="left"><p>x86</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Vista</p></td>
<td align="left"><p>Business, Enterprise, or Ultimate</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>x86</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Professional, Enterprise, or Ultimate</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
</tbody>
</table>



**Note**  
MED-V client does not run in native x64 mode. Instead, MED-V runs in Windows on Windows 64-bit (WOW64) mode on 64-bit computers.



The following table lists the minimal RAM required for each operating system supported in MED-V 1.0 SP1.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Minimal Required RAM</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows XP Professional</p></td>
<td align="left"><p>1 GB</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Vista</p></td>
<td align="left"><p>2 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7 x86</p></td>
<td align="left"><p>2 GB</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 7 x64</p></td>
<td align="left"><p>3 GB</p></td>
</tr>
</tbody>
</table>



### <a href="" id="med-v-1-0-sp1-client-configuration-"></a>MED-V 1.0 SP1 Client Configuration

**.NET Framework Version**

The following versions of the Microsoft .NET Framework are supported for MED-V 1.0 SP1 client installation:

-   .NET Framework 2.0 or .NET Framework 2.0 SP1

-   .NET Framework 3.0 or .NET Framework 3.0 SP1

-   .NET Framework 3.5 or .NET Framework 3.5 SP1

**Virtualization Engine**

Microsoft Virtual PC 2007 SP1 with the hotfix that is described in Microsoft Knowledge Base article 974918 is supported for MED-V 1.0 SP1 client installation in the following configurations:

-   Static Virtual Hard Disk (VHD) file

-   Multiple VHD files located within the same directory

-   Dynamic VHD file

**Internet Browser**

Windows Internet Explorer 7 and Windows Internet Explorer 8 are supported for MED-V 1.0 SP1 client installation.

**Microsoft Hyper-V Server**

The MED-V client is not supported in a Microsoft Hyper-V Server environment.

## MED-V 1.0 SP1 Workspace System Requirements


MED-V 1.0 SP1 introduces changes to system requirements from those for MED-V 1.0.

### MED-V Workspace Operating System Requirements

The following table lists the operating systems supported for MED-V 1.0 SP1 workspaces.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/?LinkId=31975) (https://go.microsoft.com/fwlink/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/?LinkId=31976) (https://go.microsoft.com/fwlink/?LinkId=31976).



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
<td align="left"><p>Windows 2000</p></td>
<td align="left"><p>Professional</p></td>
<td align="left"><p>SP4</p></td>
<td align="left"><p>X86</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows XP</p></td>
<td align="left"><p>Professional Edition</p></td>
<td align="left"><p>SP2 or SP3</p>
<div class="alert">
<strong>Note</strong><br/><p>SP3 is recommended to ensure that the MED-V workspace will be compatible with future versions of MED-V.</p>
</div>
<div>

</div></td>
<td align="left"><p>x86</p></td>
</tr>
</tbody>
</table>



### <a href="" id="med-v-1-0-sp1-workspace-configuration-"></a>MED-V 1.0 SP1 Workspace Configuration

**.NET Framework Version**

MED-V requires one of the following supported versions of the Microsoft .NET Framework for MED-V 1.0 SP1 workspace installation:

-   .NET Framework 2.0 SP1

-   .NET Framework 3.0 SP1

-   .NET Framework 3.5 or .NET Framework 3.5 SP1

**Note**  
We recommend the .NET Framework 3.5 SP1 to ensure that the MED-V workspace is compatible with future versions of MED-V.



**Internet Browser**

Windows Internet Explorer 6 SP2 and Windows Internet Explorer 7 are supported for the MED-V 1.0 SP1 workspace installation.

### <a href="" id="med-v-workspace-images-"></a>MED-V Workspace Images

MED-V workspace images must be created by using Virtual PC 2007 SP1.

## MED-V 1.0 SP1 Server System Requirements


MED-V 1.0 SP1 introduces changes to system requirements from those for MED-V 1.0.

### MED-V 1.0 Server Operating System Requirements

The following table lists the operating systems supported for MED-V 1.0 SP1 server installations.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/?LinkId=31975) (https://go.microsoft.com/fwlink/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/?LinkId=31976) (https://go.microsoft.com/fwlink/?LinkId=31976).



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
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>Standard or Enterprise</p></td>
<td align="left"><p>SP1 or SP2</p></td>
<td align="left"><p>X86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard or Enterprise</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>x64</p></td>
</tr>
</tbody>
</table>



### <a href="" id="med-v-1-0-sp1-server-configuration-"></a>MED-V 1.0 SP1 Server Configuration

**.NET Framework Version**

MED-V requires one of the following supported versions of the Microsoft .NET Framework for MED-V 1.0 SP1 workspace installation:

-   .NET Framework 2.0 or .NET Framework 2.0 SP1

-   .NET Framework 3.0 or .NET Framework 3.0 SP1

-   .NET Framework 3.5 or .NET Framework 3.5 SP1

**Microsoft SQL Server Version**

The following versions of Microsoft SQL Server are supported for MED-V 1.0 SP1 when SQL Server is installed locally or remotely from the MED-V 1.0 SP1 Server:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">SQL Server Version</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>SQL Server 2005</p></td>
<td align="left"><p>Express, Standard, or Enterprise Edition</p></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>X86 or x64</p></td>
</tr>
<tr class="even">
<td align="left"><p>SQL Server 2008</p></td>
<td align="left"><p>Express, Standard, or Enterprise</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>X86 or x64</p></td>
</tr>
</tbody>
</table>



**Microsoft Hyper-V Server**

The MED-V server is supported in a Microsoft Hyper-V server environment.

## MED-V 1.0 SP1 Globalization Information


Although MED-V is not released in languages other than English, the following Windows operating system language versions are supported for the MED-V 1.0 SP1 client, workspace, and server installations:

-   English

-   French

-   German

-   Italian

-   Spanish

-   Portuguese (Brazil)

-   Dutch (Netherlands)

-   Japanese









