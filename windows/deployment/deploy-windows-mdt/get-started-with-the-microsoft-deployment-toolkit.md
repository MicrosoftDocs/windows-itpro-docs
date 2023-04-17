---
title: Get started with the Microsoft Deployment Toolkit (MDT) (Windows 10)
description: This article will help you gain a better understanding of how to use the Microsoft Deployment Toolkit (MDT), as part of a Windows operating system deployment.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
ms.localizationpriority: medium
author: frankroj
ms.topic: article
ms.technology: itpro-deploy
ms.collection:
  - highpri
  - tier3
ms.date: 11/28/2022
---

# Get started with MDT

**Applies to:**

- Windows 10

This article provides an overview of the features, components, and capabilities of the [Microsoft Deployment Toolkit (MDT)](/mem/configmgr/mdt/). When you have finished reviewing this information, see [Prepare for deployment with MDT](prepare-for-windows-deployment-with-mdt.md).

## About MDT

MDT is a unified collection of tools, processes, and guidance for automating desktop and server deployment. You can use it to create reference images or as a complete deployment solution. MDT is one of the most important tools available to IT professionals today.

In addition to reducing deployment time and standardizing desktop and server images, MDT enables you to more easily manage security and ongoing configurations. MDT builds on top of the core deployment tools in the [Windows Assessment and Deployment Kit](/windows-hardware/get-started/adk-install) (Windows ADK) with more guidance and features designed to reduce the complexity and time required for deployment in an enterprise environment.

MDT supports the deployment of Windows 10, and Windows 7, Windows 8.1, and Windows Server. It also includes support for zero-touch installation (ZTI) with [Microsoft Configuration Manager](/configmgr/).

> [!IMPORTANT]
> For more information about MDT supported platforms, see [MDT Release Notes](/mem/configmgr/mdt/release-notes#supported-platforms) and [MDT FAQ](/mem/configmgr/mdt/faq#is-this-release-only-supported-with-version--x--of-windows-client--windows-adk--or-configuration-manager-).

## Key features in MDT

MDT has been in existence since 2003, when it was first introduced as Business Desktop Deployment (BDD) 1.0. The toolkit has evolved, both in functionality and popularity, and today it's considered fundamental to Windows operating system and enterprise application deployment.

MDT has many useful features, such as:

- **Windows Client support**: Supports Windows 7, Windows 8.1, and Windows 10.

- **Windows Server support**: Supports Windows Server 2008 R2, Windows Server 2012, Windows Server 2012 R2, Windows Server 2016, and Windows Server 2019.

- **Additional operating systems support**: Supports Windows Thin PC and [Windows Embedded POSReady 7](https://www.microsoft.com/download/details.aspx?id=26558), and Windows 8.1 Embedded Industry.

- **UEFI support**: Supports deployment to machines using Unified Extensible Firmware Interface (UEFI) version 2.3.1.

- **GPT support**: Supports deployment to machines that require the new GPT partition table format. This feature is related to UEFI.

- **Enhanced Windows PowerShell support**: Provides support for running PowerShell scripts.

    ![figure 2.](../images/mdt-05-fig02.png)
    The deployment share mounted as a standard PSDrive allows for administration using PowerShell.

- **Add local administrator accounts**: Allows you to add multiple user accounts to the local Administrators group on the target computers, either via settings or the deployment wizard.

- **Automated participation in CEIP and WER**: Provides configuration for participation in Windows Customer Experience Improvement Program (CEIP) and Windows Error Reporting (WER).

- **Deploy Windows RE**: Enables deployment of a customized Windows Recovery Environment (Windows RE) as part of the task sequence.

- **Deploy to VHD**: Provides ready-made task sequence templates for deploying Windows into a virtual hard disk (VHD) file.

- **Improved deployment wizard**: Provides more progress information and a cleaner UI for the Lite Touch Deployment Wizard.

- **Monitoring**: Allows you to see the status of currently running deployments.

- **Apply GPO Pack**: Allows you to deploy local group policy objects created by Microsoft Security Compliance Manager (SCM).

- **Partitioning routines**: Provides improved partitioning routines to ensure that deployments work regardless of the current hard drive structure.

- **Offline BitLocker**: Provides the capability to have BitLocker enabled during the Windows Preinstallation Environment (Windows PE) phase, thus saving hours of encryption time.

- **USMT offline user-state migration**: Provides support for running the User State Migration Tool (USMT) capture offline, during the Windows PE phase of the deployment.

    ![figure 3.](../images/mdt-05-fig03.png)
    The offline USMT backup in action.

- **Install or uninstall Windows roles or features**: Enables you to select roles and features as part of the deployment wizard. MDT also supports uninstall of roles and features.

- **Microsoft System Center Orchestrator integration**: Provides the capability to use Orchestrator runbooks as part of the task sequence.

- **Support for DaRT**: Supports optional integration of the DaRT components into the boot image.

- **Support for Microsoft Office**: Provides added support for deploying Microsoft Office.

- **Support for Modern UI app package provisioning**: Provisions applications based on the new Windows app package standard, which is used in Windows 8 and later.

- **Extensibility**: Provides the capability to extend MDT far beyond the built-in features by adding custom scripts, web services, System Center Orchestrator runbooks, PowerShell scripts, and VBScripts.

- **Upgrade task sequence**: Provides a new upgrade task sequence template that you can use to upgrade existing Windows 7, Windows 8, and Windows 8.1 systems directly to Windows 10, automatically preserving all data, settings, applications, and drivers. For more information about using this new upgrade task sequence, see the [Microsoft Deployment Toolkit resource page](/mem/configmgr/mdt/).

## MDT Lite Touch components

Many features in MDT support Lite Touch Installation (LTI) for Windows 10. An LTI deployment strategy requires little infrastructure or user interaction, and can be used to deploy an operating system from a network share or from a physical media, such as a USB flash drive or disk.

When the Windows operating system is being deployed using MDT, most of the administration and configuration is done through the Deployment Workbench, but you also can perform many of the tasks using Windows PowerShell. The easiest way to find out how to use PowerShell in MDT is to use the Deployment Workbench to perform an operation and at the end of that task, select **View Script**. You're provided the PowerShell command.

![figure 4.](../images/mdt-05-fig04.png)

If you select **View Script** on the right side, you'll get the PowerShell code that was used to perform the task.

## Deployment shares

A deployment share is essentially a folder on the server that is shared and contains all the setup files and scripts needed for the deployment solution. It also holds the configuration files (called rules) that are gathered when a machine is deployed. These configuration files can reach out to other sources, like a database, external script, or web server to get more settings for the deployment. For Lite Touch deployments, it's common to have two deployment shares: one for creating the reference images and one for deployment. For Zero Touch, it's common to have only the deployment share for creating reference images because Configuration Manager deploys the image in the production environment.

## Rules

The rules (CustomSettings.ini and Bootstrap.ini) make up the brain of MDT. The rules control the Windows Deployment Wizard on the client and, for example, can provide the following settings to the machine being deployed:

- Computer name
- Domain to join, and organizational unit (OU) in Active Directory to hold the computer object
- Whether to enable BitLocker
- Regional settings
You can manage hundreds of settings in the rules. For more information, see the [Microsoft Deployment Toolkit resource center](/mem/configmgr/mdt/).

![figure 5.](../images/mdt-05-fig05.png)
Example of an MDT rule. In this example, the new computer name is being calculated based on PC- plus the first seven (Left) characters from the serial number

## Boot images

Boot images are the Windows Preinstallation Environment (Windows PE) images that are used to start the deployment. They can be started from a CD or DVD, an ISO file, a USB device, or over the network using a Pre-Boot Execution Environment (PXE) server. The boot images connect to the deployment share on the server and start the deployment.

## Operating systems

Using the Deployment Workbench, you import the operating systems you want to deploy. You can import either the full source (like the full Windows 10 DVD/ISO) or a custom image that you've created. The full-source operating systems are primarily used to create reference images; however, they also can be used for normal deployments.

## Applications

Using the Deployment Workbench, you also add the applications you want to deploy. MDT supports virtually every executable Windows file type. The file can be a standard .exe file with command-line switches for an unattended install, a Microsoft Windows Installer (MSI) package, a batch file, or a VBScript. In fact, it can be just about anything that can be executed unattended. MDT also supports the new Universal Windows apps.

## Driver repository

You also use the Deployment Workbench to import the drivers your hardware needs into a driver repository that lives on the server, not in the image.

## Packages

With the Deployment Workbench, you can add any Microsoft packages that you want to use. The most commonly added packages are language packs, and the Deployment Workbench Packages node works well for those packages. You also can add security and other updates this way. However, we generally recommend that you use Windows Server Update Services (WSUS) for operating system updates. The rare exceptions are critical hotfixes that aren't available via WSUS, packages for the boot image, or any other package that needs to be deployed before the WSUS update process starts.

## Task sequences

Task sequences are the heart and soul of the deployment solution. When creating a task sequence, you need to select a template. The templates are located in the Templates folder in the MDT installation directory, and they determine which default actions are present in the sequence.

You can think of a task sequence as a list of actions that need to be executed in a certain order. Each action can also have conditions. Some examples of actions are as follows:

- **Gather**: Reads configuration settings from the deployment server.
- **Format and Partition**: Creates the partition(s) and formats them.
- **Inject Drivers**: Finds out which drivers the machine needs and downloads them from the central driver repository.
- **Apply Operating System**: Applies the Windows image.
- **Windows Update**: Connects to a WSUS server and updates the machine.

## Task sequence templates

MDT comes with nine default task sequence templates. You can also create your own templates. As long as you store them in the Templates folder, they'll be available when you create a new task sequence.

- **Sysprep and Capture task sequence**: Used to run the System Preparation (Sysprep) tool and capture an image of a reference computer.

    > [!NOTE]
    > It's preferable to use a complete build and capture instead of the Sysprep and Capture task sequence. A complete build and capture can be automated, whereas Sysprep and Capture can't.

- **Standard Client task sequence**: The most frequently used task sequence. Used for creating reference images and for deploying clients in production.

- **Standard Client Replace task sequence**: Used to run User State Migration Tool (USMT) backup and the optional full Windows Imaging (WIM) backup action. Can also be used to do a secure wipe of a machine that is going to be decommissioned.

- **Custom task sequence**: As the name implies, a custom task sequence with only one default action (one Install Application action).

- **Standard Server task sequence**: The default task sequence for deploying operating system images to servers. The main difference between this template and the Standard Client task sequence template is that it doesn't contain any USMT actions because USMT isn't supported on servers.

- **Lite Touch OEM task sequence**: Used to preload operating systems images on the computer hard drive. Typically used by computer original equipment manufacturers (OEMs) but some enterprise organizations also use this feature.

- **Post OS Installation task sequence**: A task sequence prepared to run actions after the operating system has been deployed. Useful for server deployments but not often used for client deployments.

- **Deploy to VHD Client task sequence**: Similar to the Standard Client task sequence template but also creates a virtual hard disk (VHD) file on the target computer and deploys the image to the VHD file.

- **Deploy to VHD Server task sequence**: Same as the Deploy to VHD Client task sequence but for servers.

- **Standard Client Upgrade task sequence**: A simple task sequence template used to perform an in-place upgrade from Windows 7, Windows 8, or Windows 8.1 directly to Windows 10, automatically preserving existing data, settings, applications, and drivers.

## Selection profiles

Selection profiles, which are available in the Advanced Configuration node, provide a way to filter content in the Deployment Workbench. Selection profiles are used for several purposes in the Deployment Workbench and in Lite Touch deployments. For example, they can be used to:

- Control which drivers and packages are injected into the Lite Touch (and generic) boot images.
- Control which drivers are injected during the task sequence.
- Control what is included in any media that you create.
- Control what is replicated to other deployment shares.
- Filter which task sequences and applications are displayed in the Deployment Wizard.

## Logging

MDT uses many log files during operating system deployments. By default the logs are client side, but by configuring the deployment settings, you can have MDT store them on the server, as well.

> [!NOTE]
> The easiest way to view log files is to use Configuration Manager Trace (CMTrace). For more information, see [CMTrace](/mem/configmgr/core/support/cmtrace).

## Monitoring

On the deployment share, you also can enable monitoring. After you enable monitoring, you'll see all running deployments in the Monitor node in the Deployment Workbench.

## See next

- [Prepare for deployment with MDT](prepare-for-windows-deployment-with-mdt.md)
