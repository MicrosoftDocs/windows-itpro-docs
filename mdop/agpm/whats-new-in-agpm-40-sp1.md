---
title: What's New in AGPM 4.0 SP1
description: What's New in AGPM 4.0 SP1
author: dansimp
ms.assetid: c6a3d94a-13c3-44e6-a466-c3011879999e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# What's New in AGPM 4.0 SP1


This “What’s New” content describes enhancements and supported configurations for Microsoft Advanced Group Policy Management (AGPM) 4.0 SP1. If there is a difference between this content and other AGPM documentation, this content should be considered authoritative and should supersede the content included with this product.

## <a href="" id="what-s-new"></a>What’s new


AGPM 4.0 SP1 supports the following enhancements:

### New and changed client-side extensions

Group Policy client-side extensions (CSEs) have been added or changed for AGPM to support new Group Policies in Windows 8 and Windows Server 2012. These group policies enable Group Policy administrators to manage and track Windows 8-specific Group Policy settings that change between two Group Policy Objects (GPOs) or templates. You can also create custom GPOs, with Windows 8-specific settings, and configure and save the GPOs as a template. To view your CSEs, use the settings and difference reports that are available in the AGPM 4.0 SP1 client.

The new and changed Group Policy client-side extensions are:

-   **Central Access Policy:** Enables Group Policy administrators to specify Central Access Policies on Group Policy servers, for example, file servers. Central Access Policy is an authorization policy that is specified by a GPO item and applied to policy targets to facilitate centralized access and control of resources. These Central Access Policies must be configured on a Group Policy client computer from within Active Directory. A Group Policy distributes the knowledge of an applicable Central Access Policy to the computers that have to enforce it.

-   **Name Resolution Policy changes:** Enables Group Policy administrators to configure settings for DNS security and DirectAccess on DNS client computers. New tabs for configuring Generic DNS Server settings and Encoding settings have been added.

-   **Group Policy Preference changes:** Adds support for the configuration and management of Internet Explorer 10 settings that were added for Windows 8.

-   **Remote Application and Desktop Connections:** Lets Group Policy administrators specify the default connection URL that is used for Remote Application and Desktop Connections.

-   **Windows To Go Startup Options:** Lets Group Policy administrators configure whether the computer will boot to Windows To Go if a USB device that contains a Windows To Go workspace is connected.

-   **Windows To Go Hibernate Options:** Lets Group Policy administrators configure whether a computer can use the hibernation sleep state (S4) when the computer is started from a Windows To Go workspace.

### Customer feedback and hotfix rollup

AGPM 4.0 SP1 includes a rollup of fixes to address issues found since the AGPM 4.0 release. AGPM 4.0 SP1 contains the latest fixes up to and including Microsoft Advanced Group Policy Management 4.0 Hotfix 1.

### Settings and difference reports show new Group Policy extensions

The new Group Policy extensions have been added to the settings and difference reports.

### Installer changes and support

The changes and support for the AGPM 4.0 SP1 installer are:

-   If you install AGPM 4.0 SP1 on Windows 8 or Windows Server 2012, the AGPM installer verifies that the required prerequisite software (Group Policy Management Console and the .NET 3.5 Framework) is installed. If these prerequisites are not installed, the AGPM 4.0 SP1 installation is blocked.

-   When you install AGPM 4.0 SP1, WCF Activation, Non-HTTP Activation, and Windows Process Activation Service are automatically enabled.

-   On Windows Vista, Windows 7, and Windows 8 client operating systems, download the appropriate version of the Remote System Administration Toolkit for your operating system before you install AGPM 4.0 SP1.

-   Backward compatibility with older supported operating systems is supported.

### Ability to upgrade or update to AGPM 4.0 SP1 without re-entering configuration parameters

You can upgrade the AGPM client or server to AGPM 4.0 SP1 only from AGPM 4.0 without being prompted to re-enter configuration parameters (called “Smart Upgrade”), as shown in the following table. If you are upgrading to AGPM 4.0 SP1 from other versions of AGPM, as shown in the table, you must use the “Classic Upgrade,” which requires you to re-enter the configuration parameters. Since each version of AGPM is associated with a particular operating system, refer to [Choosing Which Version of AGPM to Install](https://go.microsoft.com/fwlink/?LinkId=254350), and be sure to upgrade your operating system as appropriate before performing an upgrade.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>AGPM Version From Which You Can Upgrade</strong></p></td>
<td align="left"><p><strong>2.5</strong></p></td>
<td align="left"><p><strong>3.0</strong></p></td>
<td align="left"><p><strong>4.0</strong></p></td>
<td align="left"><p><strong>4.0 SP1</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>2.5</p></td>
<td align="left"><p>Not Applicable</p></td>
<td align="left"><p>Classic Upgrade</p></td>
<td align="left"><p>Classic Upgrade</p></td>
<td align="left"><p>Installation is blocked</p></td>
</tr>
<tr class="odd">
<td align="left"><p>3.0</p></td>
<td align="left"><p>Not Applicable</p></td>
<td align="left"><p>Not Applicable</p></td>
<td align="left"><p>Classic Upgrade</p></td>
<td align="left"><p>Installation is blocked</p></td>
</tr>
<tr class="even">
<td align="left"><p>4.0</p></td>
<td align="left"><p>Not Applicable</p></td>
<td align="left"><p>Not Applicable</p></td>
<td align="left"><p>Not Applicable</p></td>
<td align="left"><p>Smart Upgrade</p></td>
</tr>
</tbody>
</table>

 

## Supported configurations


AGPM supports the configurations in the following table. Although AGPM supports mixed configurations, it is strongly recommended that you run the AGPM client and server on the same operating system family, for example, Windows 8 with Windows Server 2012, Windows 7 with Windows Server 2008 R2, and so on.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Supported Configurations for AGPM 4.0 SP1 Server</strong></p></td>
<td align="left"><p><strong>Supported Configurations for AGPM 4.0 SP1 Client</strong></p></td>
<td align="left"><p><strong>AGPM 4.0 SP1 Support</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8 or Windows Server 2012</p></td>
<td align="left"><p>Windows 8 or Windows Server 2012</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows 8</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2 or Windows 7 or Windows 8 or Windows Server 2012</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot edit policy settings or preference items that exist only in Windows Server 2008 R2 or Windows 7 or Windows 8.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 R2 or Windows 7 or Windows 8 or Windows Server 2012</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Windows Server 2008 or Windows Vista with SP1</p></td>
<td align="left"><p>Supported, but cannot report or edit policy settings or preference items that exist only in Windows Server 2008 R2 or Windows 7 or Windows 8</p></td>
</tr>
</tbody>
</table>

 

## Prerequisites for installing AGPM 4.0 SP1


The following table describes the behavior on Windows 8 of AGPM 4.0 SP1 client and server installers when .NET 3.5 or the Group Policy Management Console in the Remote Server Administration Tools (RSAT) is missing.

**AGPM Client 4.0 SP1**

**AGPM Server 4.0 SP1**

**Operating System**

**.NET**

**RSAT**

**.NET**

**RSAT**

**Windows 8**

If .NET 3.5 is not enabled or installed, the installer blocks the installation.

If GPMC is not enabled or installed on the system, the installer blocks the installation.

If .NET 3.5 is not enabled or installed, the installer blocks the installation.

If GPMC is not enabled or installed on the system, the installer blocks the installation.

**Windows Server 2012**

If .NET 3.5 is not enabled or installed, the installer blocks the installation.

If GPMC is not enabled, the installer enables it during the installation.

If .NET 3.5 is not enabled or installed, the installer blocks the installation.

If GPMC is not enabled, the installer enables it during the installation.

 

## Related topics


[Advanced Group Policy Management](index.md)

[Release Notes for Microsoft Advanced Group Policy Management 4.0 SP1](release-notes-for-microsoft-advanced-group-policy-management-40-sp1.md)

 

 





