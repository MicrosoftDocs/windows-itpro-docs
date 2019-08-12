---
title: Get started with the Microsoft Deployment Toolkit (MDT) (Windows 10)
description: This topic will help you gain a better understanding of how to use the Microsoft Deployment Toolkit (MDT), as part of a Windows operating system deployment.
ms.assetid: a256442c-be47-4bb9-a105-c831f58ce3ee
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: deploy, image, feature, install, tools
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mdt
audience: itpro
author: greg-lindsay
ms.topic: article
---

# Get started with the Microsoft Deployment Toolkit (MDT)

**Applies to**
-   Windows 10

This topic will help you gain a better understanding of how to use the Microsoft Deployment Toolkit (MDT) to deploy Windows 10. When you are ready to try using MDT to deploy Windows 10 in various says, see [Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-10-with-the-microsoft-deployment-toolkit.md).

## Introduction

MDT is one of the most important tools available to IT professionals today. You can use it to create reference images or as a complete deployment solution. MDT also can be used to extend the operating system deployment features available in Microsoft System Center Configuration Manager. 

In addition to familiarizing you with the features and options available in MDT, this topic will walk you through the process of preparing for deploying Windows 10 using MDT by configuring Active Directory, creating an organizational unit (OU) structure, creating service accounts, configuring log files and folders, and installing the tools needed to view the logs and continue with the deployment process.

## Key features in MDT

The Microsoft Deployment Toolkit (MDT) has been in existence since 2003, when it was first introduced as Business Desktop Deployment (BDD) 1.0. The toolkit has evolved, both in functionality and popularity, and today it is considered fundamental to Windows operating system and enterprise application deployment.

MDT has many useful features, the most important of which are:
-   **Windows Client support.** Supports Windows 7, Windows 8, Windows 8.1, and Windows 10.
-   **Windows Server support.** Supports Windows Server 2008 R2, Windows Server 2012, and Windows Server 2012 R2.
-   **Additional operating systems support.** Supports Windows Thin PC and Windows Embedded POSReady 7, as well as Windows 8.1 Embedded Industry.
-   **UEFI support.** Supports deployment to machines using Unified Extensible Firmware Interface (UEFI) version 2.3.1.
-   **GPT support.** Supports deployment to machines that require the new GUID (globally unique identifier) partition table (GPT) format. This is related to UEFI.
-   **Enhanced Windows PowerShell support.** Provides support for running PowerShell scripts.

    ![figure 2](../images/mdt-05-fig02.png)

    Figure 2. The deployment share mounted as a standard PSDrive allows for administration using PowerShell.

-   **Add local administrator accounts.** Allows you to add multiple user accounts to the local Administrators group on the target computers, either via settings or the deployment wizard.
-   **Automated participation in CEIP and WER.** Provides configuration for participation in Windows Customer Experience Improvement Program (CEIP) and Windows Error Reporting (WER).
-   **Deploy Windows RE.** Enables deployment of a customized Windows Recovery Environment (Windows RE) as part of the task sequence.
-   **Deploy to VHD.** Provides ready-made task sequence templates for deploying Windows into a virtual hard disk (VHD) file.
-   **Improved deployment wizard.** Provides additional progress information and a cleaner UI for the Lite Touch Deployment Wizard.
-   **Monitoring.** Allows you to see the status of currently running deployments.
-   **Apply GPO Pack.** Allows you to deploy local group policy objects created by Microsoft Security Compliance Manager (SCM).
-   **Partitioning routines.** Provides improved partitioning routines to ensure that deployments work regardless of the current hard drive structure.
-   **Offline BitLocker.** Provides the capability to have BitLocker enabled during the Windows Preinstallation Environment (Windows PE) phase, thus saving hours of encryption time.
-   **USMT offline user-state migration.** Provides support for running the User State Migration Tool (USMT) capture offline, during the Windows PE phase of the deployment.

    ![figure 3](../images/mdt-05-fig03.png)

    Figure 3. The offline USMT backup in action.

-   **Install or uninstall Windows roles or features.** Enables you to select roles and features as part of the deployment wizard. MDT also supports uninstall of roles and features.
-   **Microsoft System Center 2012 Orchestrator integration.** Provides the capability to use Orchestrator runbooks as part of the task sequence.
-   **Support for DaRT.** Supports optional integration of the DaRT components into the boot image.
-   **Support for Office 2013.** Provides added support for deploying Microsoft Office Professional Plus 2013.
-   **Support for Modern UI app package provisioning.** Provisions applications based on the new Windows app package standard, which is used in Windows 8 and later.
-   **Extensibility.** Provides the capability to extend MDT far beyond the built-in features by adding custom scripts, web services, System Center Orchestrator runbooks, PowerShell scripts, and VBScripts.
-   **Upgrade task sequence.** Provides a new upgrade task sequence template that you can use to upgrade existing Windows 7, Windows 8, and Windows 8.1 systems directly to Windows 10, automatically preserving all data, settings, applications, and drivers. For more information about using this new upgrade task sequence, refer to the [Microsoft Deployment Toolkit resource page](https://go.microsoft.com/fwlink/p/?LinkId=618117).

## MDT Lite Touch components

This topic provides an overview of the features in the Microsoft Deployment Toolkit (MDT) that support Lite Touch Installation (LTI) for Windows 10. An LTI deployment strategy requires very little infrastructure or user interaction, and can be used to deploy an operating system from a network share or from a physical media, such as a USB flash drive or disc.
When deploying the Windows operating system using MDT, most of the administration and configuration is done through the Deployment Workbench, but you also can perform many of the tasks using Windows PowerShell. The easiest way to find out how to use PowerShell in MDT is to use the Deployment Workbench to perform an operation and at the end of that task, click View Script. That will give you the PowerShell command.

![figure 4](../images/mdt-05-fig04.png)

Figure 4. If you click **View Script** on the right side, you will get the PowerShell code that was used to perform the task.

## Deployment shares

A deployment share is essentially a folder on the server that is shared and contains all the setup files and scripts needed for the deployment solution. It also holds the configuration files (called rules) that are gathered when a machine is deployed. These configuration files can reach out to other sources, like a database, external script, or web server to get additional settings for the deployment. For Lite Touch deployments, it is common to have two deployment shares: one for creating the reference images and one for deployment. For Zero Touch, it is common to have only the deployment share for creating reference images because Microsoft System Center 2012 R2 Configuration Manager deploys the image in the production environment.

## Rules

The rules (CustomSettings.ini and Bootstrap.ini) make up the brain of MDT. The rules control the Windows Deployment Wizard on the client and, for example, can provide the following settings to the machine being deployed:
-   Computer name
-   Domain to join, and organizational unit (OU) in Active Directory to hold the computer object
-   Whether to enable BitLocker
-   Regional settings
You can manage hundreds of settings in the rules. For more information, see the [Microsoft Deployment Toolkit resource center](https://go.microsoft.com/fwlink/p/?LinkId=618117).

![figure 5](../images/mdt-05-fig05.png)

Figure 5. Example of a MDT rule. In this example, the new computer name is being calculated based on PC- plus the first seven (Left) characters from the serial number

## Boot images

Boot images are the Windows Preinstallation Environment (Windows PE) images that are used to start the deployment. They can be started from a CD or DVD, an ISO file, a USB device, or over the network using a Pre-Boot Execution Environment (PXE) server. The boot images connect to the deployment 
share on the server and start the deployment.

## Operating systems

Using the Deployment Workbench, you import the operating systems you want to deploy. You can import either the full source (like the full Windows 10 DVD/ISO) or a custom image that you have created. The full-source operating systems are primarily used to create reference images; however, they also can be used for normal deployments.

## Applications

Using the Deployment Workbench, you also add the applications you want to deploy. MDT supports virtually every executable Windows file type. The file can be a standard .exe file with command-line switches for an unattended install, a Microsoft Windows Installer (MSI) package, a batch file, or a VBScript. In fact, it can be just about anything that can be executed unattended. MDT also supports the new Universal Windows apps.

## Driver repository

You also use the Deployment Workbench to import the drivers your hardware needs into a driver repository that lives on the server, not in the image.

## Packages

With the Deployment Workbench, you can add any Microsoft packages that you want to use. The most commonly added packages are language packs, and the Deployment Workbench Packages node works well for those. You also can add security and other updates this way. However, we generally recommend that you use Windows Server Update Services (WSUS) for operating system updates. The rare exceptions are critical hotfixes that are not available via WSUS, packages for the boot image, or any other package that needs to be deployed before the WSUS update process starts.

## Task sequences

Task sequences are the heart and soul of the deployment solution. When creating a task sequence, you need to select a template. The templates are located in the Templates folder in the MDT installation directory, and they determine which default actions are present in the sequence.

You can think of a task sequence as a list of actions that need to be executed in a certain order. Each action can also have conditions. Some examples of actions are as follows:
-   **Gather.** Reads configuration settings from the deployment server.
-   **Format and Partition.** Creates the partition(s) and formats them.
-   **Inject Drivers.** Finds out which drivers the machine needs and downloads them from the central driver repository.
-   **Apply Operating System.** Uses ImageX to apply the image.
-   **Windows Update.** Connects to a WSUS server and updates the machine.

## Task sequence templates

MDT comes with nine default task sequence templates. You can also create your own templates. As long as you store them in the Templates folder, they will be available when you create a new task sequence.
-   **Sysprep and Capture task sequence.** Used to run the System Preparation (Sysprep) tool and capture an image of a reference computer.

    **Note**  
    It is preferable to use a complete build and capture instead of the Sysprep and Capture task sequence. A complete build and capture can be automated, whereas Sysprep and Capture cannot.
     
-   **Standard Client task sequence.** The most frequently used task sequence. Used for creating reference images and for deploying clients in production.
-   **Standard Client Replace task sequence.** Used to run User State Migration Tool (USMT) backup and the optional full Windows Imaging (WIM) backup action. Can also be used to do a secure wipe of a machine that is going to be decommissioned.
-   **Custom task sequence.** As the name implies, a custom task sequence with only one default action (one Install Application action).
-   **Standard Server task sequence.** The default task sequence for deploying operating system images to servers. The main difference between this template and the Standard Client task sequence template is that it does not contain any USMT actions because USMT is not supported on servers.
-   **Lite Touch OEM task sequence.** Used to preload operating systems images on the computer hard drive. Typically used by computer original equipment manufacturers (OEMs) but some enterprise organizations also use this feature.
-   **Post OS Installation task sequence.** A task sequence prepared to run actions after the operating system has been deployed. Very useful for server deployments but not often used for client deployments.
-   **Deploy to VHD Client task sequence.** Similar to the Standard Client task sequence template but also creates a virtual hard disk (VHD) file on the target computer and deploys the image to the VHD file.
-   **Deploy to VHD Server task sequence.** Same as the Deploy to VHD Client task sequence but for servers.
-   **Standard Client Upgrade task sequence.** A simple task sequence template used to perform an in-place upgrade from Windows 7, Windows 8, or Windows 8.1 directly to Windows 10, automatically preserving existing data, settings, applications, and drivers.

## Selection profiles

Selection profiles, which are available in the Advanced Configuration node, provide a way to filter content in the Deployment Workbench. Selection profiles are used for several purposes in the Deployment Workbench and in Lite Touch deployments. For example, they can be used to:
-   Control which drivers and packages are injected into the Lite Touch (and generic) boot images.
-   Control which drivers are injected during the task sequence.
-   Control what is included in any media that you create.
-   Control what is replicated to other deployment shares.
-   Filter which task sequences and applications are displayed in the Deployment Wizard.

## Logging

MDT uses many log files during operating system deployments. By default the logs are client side, but by configuring the deployment settings, you can have MDT store them on the server, as well.

**Note**  
The easiest way to view log files is to use Configuration Manager Trace (CMTrace), which is included in the [System Center 2012 R2 Configuration Manager Toolkit](https://go.microsoft.com/fwlink/p/?LinkId=734717).
 
## Monitoring

On the deployment share, you also can enable monitoring. After you enable monitoring, you will see all running deployments in the Monitor node in the Deployment Workbench.

## Related topics

[Microsoft Deployment Toolkit downloads and documentation](https://go.microsoft.com/fwlink/p/?LinkId=618117)<br>
[Create a Windows 10 reference image](create-a-windows-10-reference-image.md)<br>
[Deploy a Windows 10 image using MDT](deploy-a-windows-10-image-using-mdt.md)<br>
[Build a distributed environment for Windows 10 deployment](build-a-distributed-environment-for-windows-10-deployment.md)<br>
[Refresh a Windows 7 computer with Windows 10](refresh-a-windows-7-computer-with-windows-10.md)<br>
[Replace a Windows 7 computer with a Windows 10 computer](replace-a-windows-7-computer-with-a-windows-10-computer.md)<br>
[Configure MDT settings](configure-mdt-settings.md)
=======
=======
>>>>>>> bc07494f1704b1e23c818d59e7f42c56fefb83d1
---
title: Get started with the Microsoft Deployment Toolkit (MDT) (Windows 10)
description: This topic will help you gain a better understanding of how to use the Microsoft Deployment Toolkit (MDT), as part of a Windows operating system deployment.
ms.assetid: a256442c-be47-4bb9-a105-c831f58ce3ee
ms.reviewer: 
manager: laurawi
ms.author: greglin
keywords: deploy, image, feature, install, tools
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: mdt
audience: itpro
author: greg-lindsay
ms.topic: article
---

# Get started with the Microsoft Deployment Toolkit (MDT)

**Applies to**
-   Windows 10

This topic will help you gain a better understanding of how to use the Microsoft Deployment Toolkit (MDT), as part of a Windows operating system deployment. MDT is one of the most important tools available to IT professionals today. You can use it to create reference images or as a complete deployment solution. MDT also can be used to extend the operating system deployment features available in Microsoft System Center 2012 R2 Configuration Manager.

In addition to familiarizing you with the features and options available in MDT, this topic will walk you through the process of preparing for deploying Windows 10 using MDT by configuring Active Directory, creating an organizational unit (OU) structure, creating service accounts, configuring log files and folders, and installing the tools needed to view the logs and continue with the deployment process.

For the purposes of this topic, we will use two machines: DC01 and MDT01. DC01 is a domain controller and MDT01 is a Windows Server 2012 R2 standard server. MDT01 is a member of the domain contoso.com for the fictitious Contoso Corporation. For more details on the setup for this topic, please see 
[Deploy Windows 10 with the Microsoft Deployment Toolkit](deploy-windows-10-with-the-microsoft-deployment-toolkit.md#proof).

![figure 1](../images/mdt-05-fig01.png)

Figure 1. The machines used in this topic.

## In this section

-   [Key features in MDT](key-features-in-mdt.md)
-   [MDT Lite Touch components](mdt-lite-touch-components.md)
-   [Prepare for deployment with MDT](prepare-for-windows-deployment-with-mdt.md)

## Related topics

[Microsoft Deployment Toolkit downloads and documentation](https://go.microsoft.com/fwlink/p/?LinkId=618117)<br>
[Create a Windows 10 reference image](create-a-windows-10-reference-image.md)<br>
[Deploy a Windows 10 image using MDT](deploy-a-windows-10-image-using-mdt.md)<br>
[Build a distributed environment for Windows 10 deployment](build-a-distributed-environment-for-windows-10-deployment.md)<br>
[Refresh a Windows 7 computer with Windows 10](refresh-a-windows-7-computer-with-windows-10.md)<br>
[Replace a Windows 7 computer with a Windows 10 computer](replace-a-windows-7-computer-with-a-windows-10-computer.md)<br>
[Configure MDT settings](configure-mdt-settings.md)

