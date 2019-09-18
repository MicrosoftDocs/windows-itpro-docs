---
title: What's New in AGPM 4.0 SP3
description: What's New in AGPM 4.0 SP3
author: dansimp
ms.assetid: df495d55-9fbf-4f7e-a7af-3905f4f8790e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 09/27/2016
---


# What's New in AGPM 4.0 SP3


This content describes enhancements and supported configurations for Microsoft Advanced Group Policy Management (AGPM) 4.0 Service Pack 3 (SP3). If there is a difference between this content and other AGPM documentation, consider this content authoritative and assume that it supersedes the other documentation.

## <a href="" id="what-s-new"></a>What’s new


AGPM 4.0 SP3 supports the following features and functionality.

### Support for Windows 10

AGPM 4.0 SP3 adds support for the Windows 10 and Windows Server 2016 operating systems.

### Support for PowerShell

AGPM 4.0 SP3 adds support for PowerShell cmdlets. For a list of the cmdlets available in AGPM 4.0 SP3, including descriptions and syntax, see [Microsoft Desktop Optimization Pack Automation with Windows PowerShell](https://docs.microsoft.com/powershell/mdop/get-started?view=win-mdop2-ps).

### Customer feedback and hotfix rollup

AGPM 4.0 SP3 includes a rollup of all fixes up to and including Microsoft Advanced Group Policy Management 4.0 SP2 and any fixes for issues found since AGPM 4.0 SP2.

### Ability to upgrade to AGPM 4.0 SP3 without re-entering configuration parameters

You can upgrade the AGPM Client or AGPM Server to AGPM 4.0 SP3 without being prompted to re-enter configuration parameters (called the Smart Upgrade) only from AGPM 4.0 and later, as shown in the following table. If you are upgrading to AGPM 4.0 SP3 from other versions of AGPM, as shown in the table, you must use the Classic Upgrade, which requires you to re-enter the configuration parameters. Because each version of AGPM is associated with a particular operating system, see [Choosing Which Version of AGPM to Install](https://go.microsoft.com/fwlink/?LinkId=254350) and make sure that you upgrade your operating system as appropriate before you upgrade AGPM.

**AGPM 4.0 SP3 supported upgrades**

<table style="width:100%;">
<colgroup>
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
<col width="14%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>AGPM version from which you can upgrade</strong></p></td>
<td align="left"><p><strong>2.5</strong></p></td>
<td align="left"><p><strong>3.0</strong></p></td>
<td align="left"><p><strong>4.0</strong></p></td>
<td align="left"><p><strong>4.0 SP1</strong></p></td>
<td align="left"><p><strong>4.0 SP2</strong></p></td>
<td align="left"><p><strong>4.0 SP3</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>2.5</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Classic Upgrade</p></td>
<td align="left"><p>Classic Upgrade</p></td>
<td align="left"><p>Installation is blocked</p></td>
<td align="left"><p>Installation is blocked</p></td>
<td align="left"><p>Installation is blocked</p></td>
</tr>
<tr class="odd">
<td align="left"><p>3.0</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Classic Upgrade</p></td>
<td align="left"><p>Installation is blocked</p></td>
<td align="left"><p>Installation is blocked</p></td>
<td align="left"><p>Installation is blocked</p></td>
</tr>
<tr class="even">
<td align="left"><p>4.0</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Smart Upgrade</p></td>
<td align="left"><p>Smart Upgrade</p></td>
<td align="left"><p>Smart Upgrade</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4.0 SP1</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Smart Upgrade</p></td>
<td align="left"><p>Smart Upgrade</p></td>
</tr>
<tr class="even">
<td align="left"><p>4.0 SP2</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Smart Upgrade</p></td>
</tr>
</tbody>
</table>

 

## Supported configurations


AGPM 4.0 SP3 supports the configurations in the following table. Although AGPM supports mixed configurations, we strongly recommend that you run the AGPM Client and AGPM Server on the same operating system line—for example, Windows 10 with Windows Server 2016, Windows 8.1 with Windows Server 2012 R2, and so on.

**AGPM 4.0 SP3 supported operating systems and policy settings**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"><strong>Supported configurations for the AGPM Server</strong></th>
<th align="left"><strong>Supported configurations for the AGPM Client</strong></th>
<th align="left"><strong>AGPM Support</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2016 or Windows 10</p></td>
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2 or Windows 8.1</p></td>
<td align="left"><p>Windows Server 2012 R2 or Windows 8.1</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012 R2, Windows Server 2012, or Windows 8.1</p></td>
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8.1</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8.1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with Service Pack 1 (SP1)</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2, Windows 8.1, or Windows 7</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, or Windows 7</p></td>
<td align="left"><p>Not supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot report or edit policy settings or preference items that exist only in Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2, Windows 8.1, or Windows 7</p></td>
</tr>
</tbody>
</table>

 

## Prerequisites for installing AGPM 4.0 SP3

The following table describes the behavior of AGPM 4.0 SP3 Client and Server installers when the .NET Framework 4.5.1, PowerShell 3.0, or the GPMC in the Remote Server Administration Tools is missing.

| AGPM Client            |                                                                                                 |                                                                            | AGPM Server                                                                     |                                                                                                 |                                                                                 |
|------------------------|-------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|---------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------|
| Operating system       | .NET Framework                                                                                  | PowerShell                                                                 | Remote Server Administration Tools                                              | .NET Framework                                                                                  | Remote Server Administration Tools                                              |
| Windows 10             | If the .NET Framework 4.5.1 is not enabled or installed, the installer blocks the installation. | If Powershell 3.0 is not installed, the installer blocks the installation. | If the GPMC is not enabled or installed, the installer blocks the installation. | If the .NET Framework 4.5.1 is not enabled or installed, the installer blocks the installation. | If the GPMC is not enabled or installed, the installer blocks the installation. |
| Windows 8.1            | If the .NET Framework 4.5.1 is not enabled or installed, the installer blocks the installation. | If Powershell 3.0 is not installed, the installer blocks the installation. | If the GPMC is not enabled or installed, the installer blocks the installation. | If the .NET Framework 4.5.1 is not enabled or installed, the installer blocks the installation. | If the GPMC is not enabled or installed, the installer blocks the installation. |
| Windows Server 2012 R2 | If the .NET Framework 4.5.1 is not enabled or installed, the installer blocks the installation. | If Powershell 3.0 is not installed, the installer blocks the installation. | If the GPMC is not enabled, the installer enables it during the installation.   | If the .NET Framework 4.5.1 is not enabled or installed, the installer blocks the installation. | If the GPMC is not enabled, the installer enables it during the installation.   |

 

## How to Get MDOP Technologies


AGPM 4.0 SP3 is a part of the Microsoft Desktop Optimization Pack (MDOP). MDOP is part of Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see [How Do I Get MDOP](https://go.microsoft.com/fwlink/?LinkId=322049) (https://go.microsoft.com/fwlink/?LinkId=322049).

## Related topics


[Advanced Group Policy Management](index.md)

[Release Notes for Microsoft Advanced Group Policy Management 4.0 SP3](release-notes-for-microsoft-advanced-group-policy-management-40-sp3.md)

[Choosing Which Version of AGPM to Install](choosing-which-version-of-agpm-to-install.md)

 

 





