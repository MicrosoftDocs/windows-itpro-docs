---
title: DaRT 10 Supported Configurations
description: DaRT 10 Supported Configurations
author: msfttracyp
ms.assetid: a07d6562-1fa9-499f-829c-9cc487ede0b7
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# DaRT 10 Supported Configurations


This topic specifies the prerequisite software and supported configurations requirements that are necessary to install and run Microsoft Diagnostics and Recovery Toolset (DaRT) 10 in your environment. Both the operating system requirements and the system requirements that are required to run DaRT 10 are specified. For information about prerequisites that you need to consider to create the DaRT recovery image, see [Planning to Create the DaRT 10 Recovery Image](planning-to-create-the-dart-10-recovery-image.md).

For supported configurations that apply to later releases, see the documentation for the applicable release.

You can install DaRT in one of two ways. You can install all functionality on an IT administrator computer, where you will perform all the tasks associated with running DaRT. Alternatively, you can install, on the administrator computer, only the DaRT functionality that creates the recovery image, and then install the functionality used to run DaRT (that is, the DaRT Remote Connection Viewer) on a help desk computer.

## DaRT 10 prerequisite software


Make sure that the following prerequisites are met before you install DaRT.

### Administrator computer prerequisites

The following table lists the installation prerequisites for the administrator computer when you are installing DaRT 10 and all of the DaRT tools.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Windows Assessment and Development Kit (ADK)</strong></p></td>
<td align="left"><p>Required for the DaRT Recovery Image wizard. Contains the Deployment Tools, which are used to customize, deploy, and service Windows images, and contains the Windows Preinstallation Environment (Windows PE). The ADK is not required if you are installing only the Remote Connection Viewer and/or Crash Analyzer.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Windows Development Kit OR Software Development Kit (optional)</strong></p></td>
<td align="left"><p>Crash Analyzer requires the Windows 10 Debugging Tools from the Windows Driver Kit to analyze memory dump files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Windows 10 64-bit or 32-bit ISO image</strong></p></td>
<td align="left"><p>DaRT requires the Windows Recovery Environment (Windows RE) image from the Windows 10 media. Download the 32-bit or 64-bit version of Windows 10, depending on the type of DaRT recovery image you want to create. If you support both system types in your environment, download both versions of Windows 10.</p></td>
</tr>
</tbody>
</table>

 

### Help desk computer prerequisites

The following table lists the installation prerequisites for the help desk computer when you are running the DaRT 10 Remote Connection Viewer.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>DaRT 10 Remote Connection Viewer</strong></p></td>
<td align="left"><p>Must be installed on a Windows 10 operating system.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Debugging Tools for Windows</strong></p></td>
<td align="left"><p>Required only if you are installing the Crash Analyzer tool</p></td>
</tr>
</tbody>
</table>

 

### End-user computer prerequisites

There is no prerequisite software that must be installed on end-user computers, other than the Windows 10 operating system.

## <a href="" id="---------dart-10-operating-system-requirements"></a> DaRT 10 operating system requirements


### Administrator computer system requirements

The following table lists the operating systems that are supported for the DaRT 10 administrator computer installation.

**Note**  
Make sure that you allocate enough space for any additional tools that you want to install on the administrator computer.

 

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).

 

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
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
<th align="left">Operating System Requirements</th>
<th align="left">RAM Requirement for Running DaRT</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>All editions</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>2 GB</p></td>
<td align="left"><p>2.5 GB</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>All editions</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>1 GB</p></td>
<td align="left"><p>1.5 GB</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="-------------dart-help-desk-computer-system-requirements"></a> DaRT help desk computer system requirements

If you allow a help desk to remotely troubleshoot computers, you must have the Remote Connection Viewer installed on the help desk computer. You can optionally install the Crash Analyzer tool on the help desk computer.

DaRT 10 enables a help desk worker to connect to a DaRT 10 computer by using either the DaRT 7.0, DaRT 8.0, DaRt 8.1, or DaRT 10 Remote Connection Viewer. The DaRT 7.0, DaRT 8.0 and DaRt 8.1, Remote Connection Viewers require Windows 7, Windows 8, or Windows 8.1 operating systems respectively, while the DaRT 10 Remote Connection Viewer requires Windows 10. The DaRT 10 Remote Connection Viewer and all other DaRT 10 tools can be installed only on a computer running Windows 10.

The following table lists the operating systems that are supported for the DaRT help desk computer installation.

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
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
<th align="left">Operating System Requirements</th>
<th align="left">RAM Requirements for Running DaRT</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>All editions</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>2 GB</p></td>
<td align="left"><p>2.5 GB</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 10 (with Remote Connection Viewer 10.0 only)</p></td>
<td align="left"><p>All editions</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>1 GB</p></td>
<td align="left"><p>1.5 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 8</p></td>
<td align="left"><p>All editions</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>2 GB</p></td>
<td align="left"><p>2.5 GB</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8 (with Remote Connection Viewer 8.0 only)</p></td>
<td align="left"><p>All editions</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>1 GB</p></td>
<td align="left"><p>1.5 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7 (with Remote Connection Viewer 7.0 only)</p></td>
<td align="left"><p>All editions</p></td>
<td align="left"><p>SP1, SP2</p></td>
<td align="left"><p>64-bit or 32-bit</p></td>
<td align="left"><p>1 GB</p></td>
<td align="left"><p>N/A</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Standard, Enterprise, Data Center</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>2 GB</p></td>
<td align="left"><p>1.0 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012 R2</p></td>
<td align="left"><p>Standard, Enterprise, Data Center</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>2 GB</p></td>
<td align="left"><p>1.0 GB</p></td>
</tr>
</tbody>
</table>

 

DaRT also has the following minimum hardware requirements for the end-user computer:

A CD or DVD drive or a USB port - required only if you are deploying DaRT in your enterprise by using a CD, DVD, or USB.

BIOS support for starting the computer from a CD or DVD, a USB flash drive, or from a remote or recovery partition.

### <a href="" id="-------------dart-10-end-user-computer-system-requirements"></a> DaRT 10 end-user computer system requirements

The Diagnostics and Recovery Toolset window in DaRT 10 requires that the end-user computer use one of the following operating systems together with the specified amount of system memory available for DaRT:

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
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
<th align="left">Operating System Requirements</th>
<th align="left">RAM Requirements</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>All editions</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>64-bit</p></td>
<td align="left"><p>2 GB</p></td>
<td align="left"><p>2.5 GB</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>All editions</p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p>32-bit</p></td>
<td align="left"><p>1 GB</p></td>
<td align="left"><p>1.5 GB</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Planning to Deploy DaRT 10](planning-to-deploy-dart-10.md)

 

 





