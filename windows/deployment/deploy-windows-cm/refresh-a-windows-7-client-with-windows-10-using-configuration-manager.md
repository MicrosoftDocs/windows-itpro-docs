---
title: Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager (Windows 10)
description: Learn how to use Configuration Manager and Microsoft Deployment Toolkit (MDT) to refresh a Windows 7 SP1 client with Windows 10.
ms.assetid: 57c81667-1019-4711-b3de-15ae9c5387c7
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: upgrade, install, installation, computer refresh
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.topic: article
---

# Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager

**Applies to**

- Windows 10

This topic will show you how to use a previously created task sequence to refresh a Windows 7 SP1 client with Windows 10 using Microsoft Endpoint Configuration Manager and Microsoft Deployment Toolkit (MDT). When refreshing a computer to a later version, it appears as an upgrade to the end user, but technically it is not an in-place upgrade. A computer refresh involves storing user data and settings from the old installation and then restoring this data at the end of the installation. Also see the MDT refesh procedure: [Refresh a Windows 7 computer with Windows 10](../deploy-windows-mdt/refresh-a-windows-7-computer-with-windows-10.md).

A computer refresh with Microsoft Endpoint Configuration Manager works the same as it does with MDT Lite Touch installation. Configuration Manager also uses the User State Migration Tool (USMT) from the Windows Assessment and Deployment Kit (Windows ADK) 10 in the background. A computer refresh with Configuration Manager involves the following steps:

1.  Data and settings are backed up locally in a backup folder.
2.  The partition is wiped, except for the backup folder.
3.  The new operating system image is applied.
4.  Other applications are installed.
5.  Data and settings are restored.

For the purposes of this guide, we will use a minimum of two server computers (DC01 and CM01) and one client computer (PC0001).
- DC01 is a domain controller and DNS server for the contoso.com domain. DHCP services are also available and optionally installed on DC01 or another server. Note: DHCP services are required for the client (PC0003) to connect to the Windows Deployment Service (WDS).
- CM01 is a domain member server and Configuration Manager software distribution point. In this guide CM01 is a standalone primary site server.
  - CM01 is also running WDS which will be required to start PC0001 via PXE. **Note**: Ensure that only CM01 is running WDS.
- PC0003 is a client computer that is blank, or has an operating system that will be erased and replaced with Windows 10. The device must be configured to boot from the network.

>[!NOTE]
>If desired, PC0003 can be a VM hosted on the server HV01, which is a Hyper-V host computer that we used previously to build a Windows 10 reference image. However, if PC0003 is a VM then you must ensure it has sufficient resources available to run the Configuration Manager OSD task sequence. 2GB of RAM or more is recommended.  

All servers are running Windows Server 2019. However, an earlier, supported version of Windows Server can also be used. 

All server and client computers referenced in this guide are on the same subnet. This is not required, but each server and client computer must be able to connect to each other to share files, and to resolve all DNS names and Active Directory information for the contoso.com domain. Internet connectivity is also required to download OS and application updates.

An existing Configuration Manager infrastructure that is integrated with MDT is used for the following procedures. For more information about the setup for this article, see [Prepare for Zero Touch Installation of Windows 10 with Configuration Manager](prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager.md).

In this topic, we assume that you have a Windows 7 SP1 client named PC0003 with the Configuration Manager client installed.

## Create a device collection and add the PC0003 computer

On **CM01**:

1.  On CM01, using the Configuration Manager console, in the Asset and Compliance workspace, right-click **Device Collections**, and then select **Create Device Collection**. Use the following settings:

    * General
    * Name: Install Windows 10 Enterprise x64
    * Limited Collection: All Systems
    * Membership rules:
    * Direct rule
    * Resource Class: System Resource
    * Attribute Name: Name
    * Value: PC0003
    * Select **Resources**
    * Select **PC0003**

2.  Review the Install Windows 10 Enterprise x64 collection. Do not continue until you see the PC0003 machine in the collection.

    >[!NOTE]
    >It may take a short while for the collection to refresh; you can view progress via the Colleval.log file. If you want to speed up the process, you can manually update membership on the Install Windows 10 Enterprise x64 collection by right-clicking the collection and selecting Update Membership.

## Create a new deployment

Using the Configuration Manager console, in the Software Library workspace, select **Task Sequences**, right-click **Windows 10 Enterprise x64 RTM**, and then select **Deploy**. Use the following settings:

- General
    - Collection: Install Windows 10 Enterprise x64
- Deployment Settings
    - Purpose: Available
    - Make available to the following: Configuration Manager clients, media and PXE

    >[!NOTE]
    >It is not necessary to make the deployment available to media and Pre-Boot Execution Environment (PXE) for a computer refresh, but you will use the same deployment for bare-metal deployments later on and you will need it at that point.

- Scheduling
    - &lt;default&gt;
- User Experience
    - &lt;default&gt;
- Alerts
    - &lt;default&gt;
- Distribution Points
    - &lt;default&gt;

## Initiate a computer refresh

Now you can start the computer refresh on PC0003.

1.  Using the Configuration Manager console, in the Asset and Compliance workspace, in the Install Windows 10 Enterprise x64 collection, right-click **PC0003** and select **Client Notification / Download Computer Policy**. Click **OK**.

    >[!NOTE]
    >The Client Notification feature is new in Configuration Manager.

2.  On PC0003, using the Software Center (begin using the Start screen, or click the **New software is available** balloon in the system tray), select the **Windows 10 Enterprise x64 RTM** deployment and click **INSTALL**.
3.  In the **Software Center** warning dialog box, click **INSTALL OPERATING SYSTEM**.

## Related topics

[Integrate Configuration Manager with MDT](../deploy-windows-mdt/integrate-configuration-manager-with-mdt.md)<br>
[Prepare for Zero Touch Installation of Windows 10 with Configuration Manager](prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager.md)<br>
[Create a custom Windows PE boot image with Configuration Manager](create-a-custom-windows-pe-boot-image-with-configuration-manager.md)<br>
[Add a Windows 10 operating system image using Configuration Manager](add-a-windows-10-operating-system-image-using-configuration-manager.md)<br>
[Create an application to deploy with Windows 10 using Configuration Manager](create-an-application-to-deploy-with-windows-10-using-configuration-manager.md)<br>
[Add drivers to a Windows 10 deployment with Windows PE using Configuration Manager](add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager.md)<br>
[Create a task sequence with Configuration Manager and MDT](../deploy-windows-mdt/create-a-task-sequence-with-configuration-manager-and-mdt.md)<br>
[Deploy Windows 10 using PXE and Configuration Manager](deploy-windows-10-using-pxe-and-configuration-manager.md)<br>
[Replace a Windows 7 SP1 client with Windows 10 using Configuration Manager](replace-a-windows-7-client-with-windows-10-using-configuration-manager.md)<br>
