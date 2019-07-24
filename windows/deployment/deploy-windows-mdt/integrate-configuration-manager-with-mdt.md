---
title: Integrate Configuration Manager with MDT (Windows 10)
description: This topic will help you understand the benefits of integrating the Microsoft Deployment Toolkit with Microsoft System Center 2012 R2 Configuration Manager SP1 when you deploy a new or updated version of the Windows operating system.
ms.assetid: 3bd1cf92-81e5-48dc-b874-0f5d9472e5a5
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.pagetype: mdt
keywords: deploy, image, customize, task sequence
ms.prod: w10
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.topic: article
---

# Integrate Configuration Manager with MDT

**Applies to**
-   Windows 10

This topic will help you understand the benefits of integrating the Microsoft Deployment Toolkit with Microsoft System Center 2012 R2 Configuration Manager SP1 when you deploy a new or updated version of the Windows operating system.
MDT is a free, supported download from Microsoft that adds approximately 280 enhancements to Windows operating system deployment with System Center 2012 R2 Configuration Manager SP1. It is, therefore, recommended that you utilize MDT when deploying the Windows operating system with Configuration Manager SP1. In addition to integrating MDT with Configuration Manager, we also recommend using MDT Lite Touch to create the Windows 10 reference images used in Configuration Manager. For more information on how to create a reference image, see [Create a Windows 10 reference image](create-a-windows-10-reference-image.md).

## <a href="" id="sec01"></a>Why integrate MDT with Configuration Manager

As noted above, MDT adds many enhancements to Configuration Manager. While these enhancements are called Zero Touch, that name does not reflect how deployment is conducted. The following sections provide a few samples of the 280 enhancements that MDT adds to Configuration Manager.

> [!Note]
> Microsoft Deployment Toolkit requires you to install [Windows PowerShell 2.0 Engine](https://docs.microsoft.com/powershell/scripting/install/installing-the-windows-powershell-2.0-engine) on your server.

### MDT enables dynamic deployment

When MDT is integrated with Configuration Manager, the task sequence takes additional instructions from the MDT rules. In its most simple form, these settings are stored in a text file, the CustomSettings.ini file, but you can store the settings in Microsoft SQL Server databases, or have Microsoft Visual Basic Scripting Edition (VBScripts) or web services provide the settings used.

The task sequence uses instructions that allow you to reduce the number of task sequences in Configuration Manager and instead store settings outside the task sequence. Here are a few examples:
-   The following settings instruct the task sequence to install the HP Hotkeys package, but only if the hardware is a HP EliteBook 8570w. Note that you don't have to add the package to the task sequence.

    ``` syntax
    [Settings] 
    Priority=Model
    [HP EliteBook 8570w] 
    Packages001=PS100010:Install HP Hotkeys
    ```
-   The following settings instruct the task sequence to put laptops and desktops in different organizational units (OUs) during deployment, assign different computer names, and finally have the task sequence install the Cisco VPN client, but only if the machine is a laptop.

    ``` syntax
    [Settings]
    Priority= ByLaptopType, ByDesktopType
    [ByLaptopType]
    Subsection=Laptop-%IsLaptop%
    [ByDesktopType]
    Subsection=Desktop-%IsDesktop%
    [Laptop-True]
    Packages001=PS100012:Install Cisco VPN Client
    OSDComputerName=LT-%SerialNumber%
    MachineObjectOU=ou=laptops,ou=Contoso,dc=contoso,dc=com
    [Desktop-True]
    OSDComputerName=DT-%SerialNumber%
    MachineObjectOU=ou=desktops,ou=Contoso,dc=contoso,dc=com
    ```

![figure 2](../images/fig2-gather.png)

Figure 2. The Gather action in the task sequence is reading the rules.

### MDT adds an operating system deployment simulation environment

When testing a deployment, it is important to be able to quickly test any changes you make to the deployment without needing to run through an entire deployment. MDT rules can be tested very quickly, saving significant testing time in a deployment project. For more information, see [Configure MDT settings](configure-mdt-settings.md).

![figure 3](../images/mdt-06-fig03.png)

Figure 3. The folder that contains the rules, a few scripts from MDT, and a custom script (Gather.ps1).

### MDT adds real-time monitoring

With MDT integration, you can follow your deployments in real time, and if you have access to Microsoft Diagnostics and Recovery Toolkit (DaRT), you can even remote into Windows Preinstallation Environment (Windows PE) during deployment. The real-time monitoring data can be viewed from within the MDT Deployment Workbench, via a web browser, Windows PowerShell, the Event Viewer, or Microsoft Excel 2013. In fact, any script or app that can read an Open Data (OData) feed can read the information.

![figure 4](../images/mdt-06-fig04.png)

Figure 4. View the real-time monitoring data with PowerShell.

### MDT adds an optional deployment wizard

For some deployment scenarios, you may need to prompt the user for information during deployment such as the computer name, the correct organizational unit (OU) for the computer, or which applications should be installed by the task sequence. With MDT integration, you can enable the User-Driven Installation (UDI) wizard to gather the required information, and customize the wizard using the UDI Wizard Designer.

![figure 5](../images/mdt-06-fig05.png)

Figure 5. The optional UDI wizard open in the UDI Wizard Designer.

MDT Zero Touch simply extends Configuration Manager with many useful built-in operating system deployment components. By providing well-established, supported solutions, MDT reduces the complexity of deployment in Configuration Manager.

## <a href="" id="sec02"></a>Why use MDT Lite Touch to create reference images

You can create reference images for Configuration Manager in Configuration Manager, but in general we recommend creating them in MDT Lite Touch for the following reasons:
-   In a deployment project, it is typically much faster to create a reference image using MDT Lite Touch than Configuration Manager.
-   You can use the same image for every type of operating system deployment - Microsoft Virtual Desktop Infrastructure (VDI), Microsoft System Center 2012 R2 Virtual Machine Manager (SCVMM), MDT, Configuration Manager, Windows Deployment Services (WDS), and more.
-   Microsoft System Center 2012 R2 performs deployment in the LocalSystem context. This means that you cannot configure the Administrator account with all of the settings that you would like to be included in the image. MDT runs in the context of the Local Administrator, which means you can configure the look and feel of the configuration and then use the CopyProfile functionality to copy these changes to the default user during deployment.
-   The Configuration Manager task sequence does not suppress user interface interaction.
-   MDT Lite Touch supports a Suspend action that allows for reboots, which is useful when you need to perform a manual installation or check the reference image before it is automatically captured.
-   MDT Lite Touch does not require any infrastructure and is easy to delegate.

## Related topics

[Prepare for Zero Touch Installation of Windows 10 with Configuration Manager](../deploy-windows-sccm/prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager.md)

[Create a custom Windows PE boot image with Configuration Manager](../deploy-windows-sccm/create-a-custom-windows-pe-boot-image-with-configuration-manager.md)

[Add a Windows 10 operating system image using Configuration Manager](../deploy-windows-sccm/add-a-windows-10-operating-system-image-using-configuration-manager.md)

[Create an application to deploy with Windows 10 using Configuration Manager](../deploy-windows-sccm/create-an-application-to-deploy-with-windows-10-using-configuration-manager.md)

[Add drivers to a Windows 10 deployment with Windows PE using Configuration Manager](../deploy-windows-sccm/add-drivers-to-a-windows-10-deployment-with-windows-pe-using-configuration-manager.md)

[Create a task sequence with Configuration Manager and MDT](../deploy-windows-mdt/create-a-task-sequence-with-configuration-manager-and-mdt.md)

[Deploy Windows 10 using PXE and Configuration Manager](../deploy-windows-sccm/deploy-windows-10-using-pxe-and-configuration-manager.md)


[Refresh a Windows 7 SP1 client with Windows 10 using Configuration Manager](../deploy-windows-sccm/refresh-a-windows-7-client-with-windows-10-using-configuration-manager.md)

[Replace a Windows 7 SP1 client with Windows 10 using Configuration Manager](../deploy-windows-sccm/replace-a-windows-7-client-with-windows-10-using-configuration-manager.md) 
