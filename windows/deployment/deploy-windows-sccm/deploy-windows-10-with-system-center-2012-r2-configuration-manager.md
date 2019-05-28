---
title: Deploy Windows 10 with System Center 2012 R2 Configuration Manager (Windows 10)
description: If you have Microsoft System Center 2012 R2 Configuration Manager in your environment, you will most likely want to use it to deploy Windows 10.
ms.assetid: eacd7b7b-dde0-423d-97cd-29bde9e8b363
keywords: deployment, custom, boot
ms.prod: w10
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.topic: article
---

# Deploy Windows 10 with System Center 2012 R2 Configuration Manager


**Applies to**

-   Windows 10 versions 1507, 1511

>[!IMPORTANT]
>For instructions to deploy the most recent version of Windows 10 with Configuration Manager, see [Scenarios to deploy enterprise operating systems with System Center Configuration Manager](https://docs.microsoft.com/sccm/osd/deploy-use/scenarios-to-deploy-enterprise-operating-systems).
>Configuration Manager 2012 and 2012 R2 provide support for Windows 10 versions 1507 and 1511 only. Later versions of Windows 10 require an updated Configuration Manager release. For a list of Configuration Manager versions and the corresponding Windows 10 client versions that are supported, see [Support for Windows 10 for System Center Configuration Manager](https://docs.microsoft.com/sccm/core/plan-design/configs/support-for-windows-10).

If you have Microsoft System Center 2012 R2 Configuration Manager in your environment, you will most likely want to use it to deploy Windows 10. This topic will show you how to set up Configuration Manager for operating system deployment and how to integrate Configuration Manager with the Microsoft Deployment Toolkit (MDT).

For the purposes of this topic, we will use four machines: DC01, CM01, PC0003, and PC0004. DC01 is a domain controller and CM01 is a machine running Windows Server 2012 R2 standard. PC0003 and PC0004 are machines with Windows 7 SP1, on which Windows 10 will be deployed via both refresh and replace scenarios. In addition to these four ready-made machines, you could also include a few blank virtual machines to be used for bare-metal deployments. DC01, CM01, PC003, and PC0004 are all members of the domain contoso.com for the fictitious Contoso Corporation. For more details on the setup for this topic, please see [Deploy Windows 10 with the Microsoft Deployment Toolkit](../deploy-windows-mdt/deploy-windows-10-with-the-microsoft-deployment-toolkit.md).

![figure 1](../images/mdt-06-fig01.png)

Figure 1. The machines used in this topic.

## In this section


-   [Integrate Configuration Manager with MDT](../deploy-windows-mdt/integrate-configuration-manager-with-mdt.md)

-   [Prepare for Zero Touch Installation of Windows with Configuration Manager](prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager.md)

-   [Create a custom Windows PE boot image with Configuration Manager](create-a-custom-windows-pe-boot-image-with-configuration-manager.md)

-   [Add a Windows 10 operating system image using Configuration Manager](add-a-windows-10-operating-system-image-using-configuration-manager.md)

-   [Create an application to deploy with Windows 10 using Configuration Manager](create-an-application-to-deploy-with-windows-10-using-configuration-manager.md)

-   [Add drivers to a Windows 10 deployment with Windows PE using Configuration Manager](add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager.md)

-   [Create a task sequence with Configuration Manager and MDT](../deploy-windows-mdt/create-a-task-sequence-with-configuration-manager-and-mdt.md)

-   [Finalize the operating system configuration for Windows 10 deployment with Configuration Manager](finalize-the-os-configuration-for-windows-10-deployment-with-configuration-manager.md)

-   [Deploy Windows 10 using PXE and Configuration Manager](deploy-windows-10-using-pxe-and-configuration-manager.md)

-   [Monitor the Windows 10 deployment with Configuration Manager](monitor-windows-10-deployment-with-configuration-manager.md)

-   [Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager](refresh-a-windows-7-client-with-windows-10-using-configuration-manager.md)

-   [Replace a Windows 7 SP1 client with Windows 10 using Configuration Manager](replace-a-windows-7-client-with-windows-10-using-configuration-manager.md)

## Components of Configuration Manager operating system deployment


Operating system deployment with Configuration Manager is part of the normal software distribution infrastructure, but there are additional components. For example, operating system deployment in Configuration Manager may use the State Migration Point role, which is not used by normal application deployment in Configuration Manager. This section describes the Configuration Manager components involved with the deployment of an operating system, such as Windows 10.

-   **State migration point (SMP).** The state migration point is used to store user state migration data during computer replace scenarios.

-   **Distribution point (DP).** The distribution point is used to store all packages in Configuration Manager, including the operating system deployment-related packages.

-   **Software update point (SUP).** The software update point, which is normally used to deploy updates to existing machines, also can be used to update an operating system as part of the deployment process. You also can use offline servicing to update the image directly on the Configuration Manager server.

-   **Reporting services point.** The reporting services point can be used to monitor the operating system deployment process.

-   **Boot images.** Boot images are the Windows Preinstallation Environment (Windows PE) images Configuration Manager uses to start the deployment.

-   **Operating system images.** The operating system image package contains only one file, the custom .wim image. This is typically the production deployment image.

-   **Operating system installers.** The operating system installers were originally added to create reference images using Configuration Manager. Instead, we recommend that you use MDT Lite Touch to create your reference images. For more information on how to create a reference image, see [Create a Windows 10 reference image](../deploy-windows-mdt/create-a-windows-10-reference-image.md).

-   **Drivers.** Like MDT Lite Touch, Configuration Manager also provides a repository (catalog) of managed device drivers.

-   **Task sequences.** The task sequences in Configuration Manager look and feel pretty much like the sequences in MDT Lite Touch, and they are used for the same purpose. However, in Configuration Manager the task sequence is delivered to the clients as a policy via the Management Point (MP). MDT provides additional task sequence templates to Configuration Manager.

    **Note**  Configuration Manager SP1 along with the Windows Assessment and Deployment Kit (ADK) for Windows 10 are required to support management and deployment of Windows 10.

     

## See also


-   [Microsoft Deployment Toolkit downloads and resources](https://go.microsoft.com/fwlink/p/?LinkId=618117)

-   [Windows deployment tools](../windows-deployment-scenarios-and-tools.md)

-   [Deploy Windows 10 with the Microsoft Deployment Toolkit](../deploy-windows-mdt/deploy-windows-10-with-the-microsoft-deployment-toolkit.md)

-   [Upgrade to Windows 10 with the Microsoft Deployment Toolkit](../upgrade/upgrade-to-windows-10-with-the-microsoft-deployment-toolkit.md)

-   [Deploy Windows To Go in your organization](../deploy-windows-to-go.md)

-   [Sideload Windows Store apps](https://technet.microsoft.com/library/dn613831.aspx)

-   [Windows ADK for Windows 10](https://go.microsoft.com/fwlink/p/?LinkId=526803)

 

 





