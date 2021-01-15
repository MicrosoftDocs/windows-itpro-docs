---
title: Deploy Windows 10 using PXE and Configuration Manager (Windows 10)
description: In this topic, you will learn how to deploy Windows 10 using Microsoft Endpoint Manager deployment packages and task sequences.
ms.assetid: fb93f514-5b30-4f4b-99dc-58e6860009fa
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: deployment, image, UEFI, task sequence
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.topic: article
---

# Deploy Windows 10 using PXE and Configuration Manager

**Applies to**

-   Windows 10

In this topic, you will learn how to deploy Windows 10 using Microsoft Endpoint Manager deployment packages and task sequences. This topic will walk you through the process of deploying the Windows 10 Enterprise image to a Unified Extensible Firmware Interface (UEFI) computer named PC0001. An existing Configuration Manager infrastructure that is integrated with MDT is used for the procedures in this topic.

This topic assumes that you have completed the following prerequisite procedures:
- [Prepare for Zero Touch Installation of Windows 10 with Configuration Manager](prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager.md)
- [Create a custom Windows PE boot image with Configuration Manager](create-a-custom-windows-pe-boot-image-with-configuration-manager.md)
- [Add a Windows 10 operating system image using Configuration Manager](add-a-windows-10-operating-system-image-using-configuration-manager.md)
- [Create an application to deploy with Windows 10 using Configuration Manager](create-an-application-to-deploy-with-windows-10-using-configuration-manager.md)
- [Add drivers to a Windows 10 deployment with Windows PE using Configuration Manager](add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager.md)
- [Create a task sequence with Configuration Manager and MDT](create-a-task-sequence-with-configuration-manager-and-mdt.md)
- [Finalize the operating system configuration for Windows 10 deployment with Configuration Manager](finalize-the-os-configuration-for-windows-10-deployment-with-configuration-manager.md)

For the purposes of this guide, we will use a minimum of two server computers (DC01 and CM01) and one client computer (PC0001).
- DC01 is a domain controller and DNS server for the contoso.com domain. DHCP services are also available and optionally installed on DC01 or another server. Note: DHCP services are required for the client (PC0001) to connect to the Windows Deployment Service (WDS).
- CM01 is a domain member server and Configuration Manager software distribution point. In this guide CM01 is a standalone primary site server.
  - CM01 is also running WDS which will be required to start PC0001 via PXE. **Note**: Ensure that only CM01 is running WDS.
- PC0001 is a client computer that is blank, or has an operating system that will be erased and replaced with Windows 10. The device must be configured to boot from the network.

>[!NOTE]
>If desired, PC0001 can be a VM hosted on the server HV01, which is a Hyper-V host computer that we used previously to build a Windows 10 reference image. However, if PC0001 is a VM then you must ensure it has sufficient resources available to run the Configuration Manager OSD task sequence. 2GB of RAM or more is recommended.  

All servers are running Windows Server 2019. However, an earlier, supported version of Windows Server can also be used. 

All server and client computers referenced in this guide are on the same subnet. This is not required, but each server and client computer must be able to connect to each other to share files, and to resolve all DNS names and Active Directory information for the contoso.com domain. Internet connectivity is also required to download OS and application updates.

>[!NOTE]
>No WDS console configuration is required for PXE to work. Everything is done with the Configuration Manager console.

## Procedures

1. Start the PC0001 computer. At the Pre-Boot Execution Environment (PXE) boot menu, press **Enter** to allow it to PXE boot.
2. On the **Welcome to the Task Sequence Wizard** page, type in the password **pass\@word1** and click **Next**.
3. On the **Select a task sequence to run** page, select **Windows 10 Enterprise x64 RTM** and click **Next**.
4. On the **Edit Task Sequence Variables** page, double-click the **OSDComputerName** variable, and in the **Value** field, type **PC0001** and click **OK**. Then click **Next**.
5. The operating system deployment will take several minutes to complete. 
6. You can monitor the deployment on CM01 using the MDT Deployment Workbench. When you see the PC0001 entry, double-click **PC0001**, and then click **DaRT Remote Control** and review the **Remote Control** option. The task sequence will run and do the following:

    * Install the Windows 10 operating system.
    * Install the Configuration Manager client and the client hotfix.
    * Join the computer to the domain.
    * Install the application added to the task sequence.
    
    >[!NOTE]
    >You also can use the built-in reports to get information about ongoing deployments. For example, a task sequence report gives you a quick overview of the task sequence progress.

    ![MDT monitoring](../images/pc0001-monitor.png)

    Monitoring the deployment with MDT.

7. When the deployment is finished you will have a domain-joined Windows 10 computer with the Adobe Reader application installed as well as the applications that were included in the reference image, such as Office 365 Pro Plus.

Examples are provided below of various stages of deployment:

![pc0001a](../images/pc0001a.png)<br>
![pc0001b](../images/pc0001b.png)<br>
![pc0001c](../images/pc0001c.png)<br>
![pc0001d](../images/pc0001d.png)<br>
![pc0001e](../images/pc0001e.png)<br>
![pc0001f](../images/pc0001f.png)<br>
![pc0001g](../images/pc0001g.png)<br>
![pc0001h](../images/pc0001h.png)<br>
![pc0001i](../images/pc0001i.png)<br>
![pc0001j](../images/pc0001j.png)<br>
![pc0001k](../images/pc0001k.png)<br>
![pc0001l](../images/pc0001l.png)<br>
![pc0001m](../images/pc0001m.png)<br>
![pc0001n](../images/pc0001n.png)

Next, see [Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager](refresh-a-windows-7-client-with-windows-10-using-configuration-manager.md).

## Related topics

[Prepare for Zero Touch Installation of Windows 10 with Configuration Manager](prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager.md)<br>
[Create a custom Windows PE boot image with Configuration Manager](create-a-custom-windows-pe-boot-image-with-configuration-manager.md)<br>
[Add a Windows 10 operating system image using Configuration Manager](add-a-windows-10-operating-system-image-using-configuration-manager.md)<br>
[Create an application to deploy with Windows 10 using Configuration Manager](create-an-application-to-deploy-with-windows-10-using-configuration-manager.md)<br>
[Add drivers to a Windows 10 deployment with Windows PE using Configuration Manager](add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager.md)<br>
[Create a task sequence with Configuration Manager and MDT](../deploy-windows-mdt/create-a-task-sequence-with-configuration-manager-and-mdt.md)<br>
[Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager](refresh-a-windows-7-client-with-windows-10-using-configuration-manager.md)<br>
[Replace a Windows 7 SP1 client with Windows 10 using Configuration Manager](replace-a-windows-7-client-with-windows-10-using-configuration-manager.md)<br>
