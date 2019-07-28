---
title: What's New in AGPM 4.0 SP2
description: What's New in AGPM 4.0 SP2
author: dansimp
ms.assetid: 5c0dcab4-f27d-4153-8b8e-b280b080be51
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# What's New in AGPM 4.0 SP2


This content describes enhancements and supported configurations for Microsoft Advanced Group Policy Management (AGPM) 4.0 Service Pack 2 (SP2). If there is a difference between this content and other AGPM documentation, consider this content authoritative and assume that it supersedes the other documentation.

## <a href="" id="what-s-new"></a>What’s new


AGPM 4.0 SP2 supports the following features and functionality.

### Support for Windows 8.1 and Windows Server 2012 R2

AGPM 4.0 SP2 adds support for the Windows 8.1 and Windows Server 2012 R2 operating systems.

### New and changed client-side extensions

Group Policy client-side extensions have been added or changed for AGPM to support new policy settings in Windows 8.1. These policy settings enable Group Policy administrators to manage and track Windows 8.1–specific policy settings that change between two Group Policy Objects (GPOs) or templates. To view your client-side extensions, use the settings and difference reports that are available in the AGPM Client.

The new and changed Group Policy client-side extensions are:

-   **Specify Work Folders settings**. If you enable this policy setting, IT administrators can configure Work Folders to be created automatically. The Work Folders feature enables end users to synchronize files from their Windows desktop devices to their other devices. Use this policy setting to create the synchronization relationship on an end user’s devices and to configure how to identify the file server that stores the user’s Work Folders. If you select the **Auto provision synchronization** check box, the synchronization partnership will be created without user input, and data will automatically start synchronizing to the user’s device. If you do not select the **Auto provision synchronization** check box, users must provide input to start the synchronization.

-   **Force automatic setup for all users**. If you enable this policy setting, IT administrators can determine whether to create the Work Folders partnership automatically on end-user devices without input from end users. If you enable this policy setting, the synchronization will be set up according to how you configure the **Specify Work Folders settings** policy setting. If you set the **Force automatic setup for all users** policy setting to **Disabled** or **Not configured**, the Work Folders partnership will be configured according to how you set the **Automatic Provisioning** option in the **Specify Work Folders settings** policy setting.

For more information about the Work Folders feature, see [Work Folders Overview](https://go.microsoft.com/fwlink/?LinkId=330444).

### Customer feedback and hotfix rollup

AGPM 4.0 SP2 includes a rollup of hotfixes to address issues found since the AGPM 4.0 Service Pack 1 (SP1) release. AGPM 4.0 SP2 contains the latest fixes up to and including Microsoft Advanced Group Policy Management 4.0 SP1 Hotfix 1. For more information, see Knowledge Base article [2873472](https://go.microsoft.com/fwlink/?LinkId=325400)).

### New Group Policy extensions in settings and difference reports

The new Group Policy extensions have been added to the settings and difference reports.

### Installer changes and support

The changes and support for the AGPM 4.0 SP2 installer are:

-   If you install AGPM 4.0 SP2 on the Windows 8 or Windows Server 2012 operating system or later operating systems, the AGPM installer verifies that the required prerequisite software (the Group Policy Management Console (GPMC) and the Microsoft .NET Framework 3.5) is installed. If this prerequisite software is not installed, the AGPM 4.0 SP2 installation is blocked.

-   When you install the AGPM Server, WCF Activation, Non-HTTP Activation, and Windows Process Activation Service are automatically enabled.

-   On the Windows Vista client operating system and later operating systems, download the appropriate version of the Remote System Administration Tools for your operating system before you install AGPM 4.0 SP2.

-   AGPM 4.0 SP2 supports backward compatibility with older supported operating systems.

### Ability to upgrade to AGPM 4.0 SP2 without reentering configuration parameters

You can upgrade the AGPM Client or AGPM Server to AGPM 4.0 SP2 without being prompted to reenter configuration parameters (called the Smart Upgrade) only from AGPM 4.0 onward, as shown in the following table. If you are upgrading to AGPM 4.0 SP2 from other versions of AGPM, as shown in the table, you must use the Classic Upgrade, which requires you to reenter the configuration parameters. Because each version of AGPM is associated with a particular operating system, see [Choosing Which Version of AGPM to Install](https://go.microsoft.com/fwlink/?LinkId=254350) and make sure that you upgrade your operating system as appropriate before you upgrade AGPM.

**AGPM 4.0 SP2 supported upgrades**

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>AGPM version from which you can upgrade</strong></p></td>
<td align="left"><p><strong>2.5</strong></p></td>
<td align="left"><p><strong>3.0</strong></p></td>
<td align="left"><p><strong>4.0</strong></p></td>
<td align="left"><p><strong>4.0 SP1</strong></p></td>
<td align="left"><p><strong>4.0 SP2</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>2.5</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Classic Upgrade</p></td>
<td align="left"><p>Classic Upgrade</p></td>
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
</tr>
<tr class="even">
<td align="left"><p>4.0</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
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
</tr>
</tbody>
</table>

 

## Supported configurations


AGPM 4.0 SP2 supports the configurations in the following table. Although AGPM supports mixed configurations, we strongly recommend that you run the AGPM Client and AGPM Server on the same operating system line—for example, Windows 8.1 with Windows Server 2012 R2, Windows 8 with Windows Server 2012, and so on.

**AGPM 4.0 SP2 supported operating systems and policy settings**

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
<td align="left"><p>Windows Server 2012 R2 or Windows 8.1</p></td>
<td align="left"><p>Windows Server 2012 R2 or Windows 8.1</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2, Windows Server 2012, Windows 8.1, or Windows 8</p></td>
<td align="left"><p>Windows Server 2012 or Windows 8</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8.1</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8.1 or Windows 8</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, Windows 8, or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with Service Pack 1 (SP1)</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2, Windows 8.1, Windows 8, or Windows 7</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2012, Windows Server 2008 R2, Windows 8, or Windows 7</p></td>
<td align="left"><p>Not supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot report or edit policy settings or preference items that exist only in Windows Server 2012 R2, Windows Server 2012, Windows Server 2008 R2, Windows 8.1, Windows 8, or Windows 7</p></td>
</tr>
</tbody>
</table>

 

## Prerequisites for installing AGPM 4.0 SP2


The following table describes the behavior of AGPM 4.0 SP2 Client and Server installers on Windows 8.1 when the .NET Framework 3.5 or the GPMC in the Remote Server Administration Tools is missing.

**AGPM Client**

**AGPM Server**

**Operating system**

**.NET Framework**

**Remote Server Administration Tools**

**.NET Framework**

**Remote Server Administration Tools**

**Windows 8.1**

If the .NET Framework 3.5 is not enabled or installed, the installer blocks the installation.

If the GPMC is not enabled or installed, the installer blocks the installation.

If the .NET Framework 3.5 is not enabled or installed, the installer blocks the installation.

If the GPMC is not enabled or installed, the installer blocks the installation.

**Windows Server 2012 R2**

If the .NET Framework 3.5 is not enabled or installed, the installer blocks the installation.

If the GPMC is not enabled, the installer enables it during the installation.

If the .NET Framework 3.5 is not enabled or installed, the installer blocks the installation.

If the GPMC is not enabled, the installer enables it during the installation.

 

## How to Get MDOP Technologies


AGPM 4.0 SP2 is a part of the Microsoft Desktop Optimization Pack (MDOP). MDOP is part of Microsoft Software Assurance. For more information about Microsoft Software Assurance and acquiring MDOP, see [How Do I Get MDOP](https://go.microsoft.com/fwlink/?LinkId=322049) (https://go.microsoft.com/fwlink/?LinkId=322049).

## Related topics


[Advanced Group Policy Management](index.md)

[Release Notes for Microsoft Advanced Group Policy Management 4.0 SP2](release-notes-for-microsoft-advanced-group-policy-management-40-sp2.md)

[Choosing Which Version of AGPM to Install](choosing-which-version-of-agpm-to-install.md)

 

 





