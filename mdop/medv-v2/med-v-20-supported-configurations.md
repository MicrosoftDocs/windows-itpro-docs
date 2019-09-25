---
title: MED-V 2.0 Supported Configurations
description: MED-V 2.0 Supported Configurations
author: dansimp
ms.assetid: 88f1d232-aa01-45ab-8da7-d086269250b5
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# MED-V 2.0 Supported Configurations


Your environment may already meet the configuration requirements provided here so that you can install and run Microsoft Enterprise Desktop Virtualization (MED-V) 2.0. We have included requirements including host operating system, disk space, and MED-V workspace requirements.

## MED-V 2.0 Host Computer Requirements


### MED-V 2.0 Host Operating System Requirements

The following table lists the operating systems that are supported for MED-V 2.0 installation on the host computer.

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
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Professional, Enterprise, or Ultimate</p></td>
<td align="left"><p>None or SP1</p></td>
<td align="left"><p>x86 or x64</p></td>
</tr>
</tbody>
</table>

 

The following table lists the minimal RAM required for each operating system supported in MED-V 2.0.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Minimum Required RAM</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 7 x86</p></td>
<td align="left"><p>2GB</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 7 x64</p></td>
<td align="left"><p>2GB</p></td>
</tr>
</tbody>
</table>

 

### Minimum Recommended Disk Space

We recommend a minimum of 10GB of available storage. However, the disk space that is required varies greatly and depends on the number of applications published in the MED-V workspace.

### <a href="" id="med-v-2-0-host-configuration-"></a>MED-V 2.0 Host Configuration

**.NET Framework Version**

The .NET Framework 3.5 SP1 version of the Microsoft .NET Framework is required for MED-V 2.0. However, you can install the .NET Framework 4 or later version if the .NET Framework 3.5 is already installed.

**Virtualization Engine**

Windows Virtual PC with the hotfix that is described in Microsoft Knowledge Base article 977206 is supported for MED-V 2.0.

**Internet Browser**

Windows Internet Explorer 8 and Windows Internet Explorer 9 are supported for MED-V 2.0.

**Microsoft Server Environments**

The MED-V Host Agent and the MED-V Workspace Packager are not supported in any server environment.

## MED-V 2.0 Workspace Requirements


### MED-V 2.0 Workspace Operating System Requirements

The following table lists the operating systems supported for MED-V 2.0 workspaces.

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
<td align="left"><p>SP3</p></td>
<td align="left"><p>x86</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="med-v-2-0-workspace-configuration-"></a>MED-V 2.0 Workspace Configuration

**.NET Framework Version**

Only the .NET Framework 3.5 SP1 version of the Microsoft .NET Framework is supported for MED-V 2.0 workspace installation.

**Internet Browser**

Windows Internet Explorer 6, Windows Internet Explorer 7, Windows Internet Explorer 8, and Windows Internet Explorer 9 are supported for the MED-V 2.0 workspace installation.

### MED-V 2.0 Workspace Creation

The virtual hard disk used to build a MED-V 2.0 workspace package must be created by using Windows Virtual PC.

## MED-V 2.0 Globalization Information


### MED-V 2.0 Host Agent Globalization Information

The following Windows operating system language versions are supported for the MED-V 2.0 Host Agent:

-   French

-   Italian

-   German

-   Spanish

-   Korean

-   Japanese

-   Brazilian Portuguese

-   Russian

-   Chinese Traditional

-   Chinese Simplified

-   Dutch

-   Swedish

-   Danish

-   Finnish

-   Portuguese

-   Norwegian

-   Polish

-   Turkish

-   Hungarian

-   Czech

-   Greek

-   Slovak

-   Slovenian

### MED-V 2.0 Workspace Packager Globalization Information

The following Windows operating system language versions are supported for the MED-V 2.0 Workspace Packager:

-   French

-   Italian

-   German

-   Spanish

-   Korean

-   Japanese

-   Brazilian Portuguese

-   Russian

-   Chinese Traditional

-   Chinese Simplified

## Related topics


[Deployment of MED-V](deployment-of-med-v.md)

 

 





