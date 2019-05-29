---
title: Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager (Windows 10)
description: This topic will show you how to use a previously created task sequence to refresh a Windows 7 SP1 client with Windows 10 using Microsoft System Center 2012 R2 Configuration Manager and Microsoft Deployment Toolkit (MDT) 2013 Update 2.
ms.assetid: 57c81667-1019-4711-b3de-15ae9c5387c7
keywords: upgrade, install, installation, computer refresh
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
author: greg-lindsay
ms.topic: article
---

# Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager


**Applies to**

-   Windows 10 versions 1507, 1511

>[!IMPORTANT]
>For instructions to deploy the most recent version of Windows 10 with Configuration Manager, see [Scenarios to deploy enterprise operating systems with System Center Configuration Manager](https://docs.microsoft.com/sccm/osd/deploy-use/scenarios-to-deploy-enterprise-operating-systems). 
>Configuration Manager 2012 and 2012 R2 provide support for Windows 10 versions 1507 and 1511 only. Later versions of Windows 10 require an updated Configuration Manager release. For a list of Configuration Manager versions and the corresponding Windows 10 client versions that are supported, see [Support for Windows 10 for System Center Configuration Manager](https://docs.microsoft.com/sccm/core/plan-design/configs/support-for-windows-10).

This topic will show you how to use a previously created task sequence to refresh a Windows 7 SP1 client with Windows 10 using Microsoft System Center 2012 R2 Configuration Manager and Microsoft Deployment Toolkit (MDT) 2013 Update 2. When refreshing a machine to a later version, it appears as an upgrade to the end user, but technically it is not an in-place upgrade. A computer refresh also involves taking care of user data and settings from the old installation and making sure to restore those at the end of the installation. For more information, see [Refresh a Windows 7 computer with Windows 10](../deploy-windows-mdt/refresh-a-windows-7-computer-with-windows-10.md).

A computer refresh with System Center 2012 R2 Configuration Manager works the same as it does with MDT Lite Touch installation. Configuration Manager also uses the User State Migration Tool (USMT) from the Windows Assessment and Deployment Kit (Windows ADK) 10 in the background. A computer refresh with Configuration Manager involves the following steps:

1.  Data and settings are backed up locally in a backup folder.

2.  The partition is wiped, except for the backup folder.

3.  The new operating system image is applied.

4.  Other applications are installed.

5.  Data and settings are restored.

For the purposes of this topic, we will use three machines: DC01, CM01, and PC0003. DC01 is a domain controller and CM01 is a machine running Windows Server 2012 R2 Standard. PC0003 is a machine with Windows 7 SP1, on which Windows 10 will be deployed. DC01, CM01, and PC003 are all members of the domain contoso.com for the fictitious Contoso Corporation. For more details on the setup for this topic, please see [Deploy Windows 10 with the Microsoft Deployment Toolkit](../deploy-windows-mdt/deploy-windows-10-with-the-microsoft-deployment-toolkit.md).

In this topic, we assume that you have a Windows 7 SP1 client named PC0003 with the Configuration Manager client installed.

## <a href="" id="sec01"></a>Create a device collection and add the PC0003 computer


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

 

## <a href="" id="sec02"></a>Create a new deployment


Using the Configuration Manager console, in the Software Library workspace, select **Task Sequences**, right-click **Windows 10 Enterprise x64 RTM**, and then select **Deploy**. Use the following settings:

-   General

    -   Collection: Install Windows 10 Enterprise x64

-   Deployment Settings

    -   Purpose: Available

    -   Make available to the following: Configuration Manager clients, media and PXE

    >[!NOTE]  
    >It is not necessary to make the deployment available to media and Pre-Boot Execution Environment (PXE) for a computer refresh, but you will use the same deployment for bare-metal deployments later on and you will need it at that point.

     

-   Scheduling

    -   &lt;default&gt;

-   User Experience

    -   &lt;default&gt;

-   Alerts

    -   &lt;default&gt;

-   Distribution Points

    -   &lt;default&gt;

## <a href="" id="sec03"></a>Initiate a computer refresh


Now you can start the computer refresh on PC0003.

1.  Using the Configuration Manager console, in the Asset and Compliance workspace, in the Install Windows 10 Enterprise x64 collection, right-click **PC0003** and select **Client Notification / Download Computer Policy**. Click **OK**.

    >[!NOTE]  
    >The Client Notification feature is new in Configuration Manager.

2.  On PC0003, using the Software Center (begin using the Start screen, or click the **New software is available** balloon in the system tray), select the **Windows 10 Enterprise x64 RTM** deployment and click **INSTALL**.

3.  In the **Software Center** warning dialog box, click **INSTALL OPERATING SYSTEM**.

## Related topics


[Integrate Configuration Manager with MDT](../deploy-windows-mdt/integrate-configuration-manager-with-mdt.md)

[Prepare for Zero Touch Installation of Windows 10 with Configuration Manager](prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager.md)

[Create a custom Windows PE boot image with Configuration Manager](create-a-custom-windows-pe-boot-image-with-configuration-manager.md)

[Add a Windows 10 operating system image using Configuration Manager](add-a-windows-10-operating-system-image-using-configuration-manager.md)

[Create an application to deploy with Windows 10 using Configuration Manager](create-an-application-to-deploy-with-windows-10-using-configuration-manager.md)

[Add drivers to a Windows 10 deployment with Windows PE using Configuration Manager](add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager.md)

[Create a task sequence with Configuration Manager and MDT](../deploy-windows-mdt/create-a-task-sequence-with-configuration-manager-and-mdt.md)

[Deploy Windows 10 using PXE and Configuration Manager](deploy-windows-10-using-pxe-and-configuration-manager.md)

[Replace a Windows 7 SP1 client with Windows 10 using Configuration Manager](replace-a-windows-7-client-with-windows-10-using-configuration-manager.md)