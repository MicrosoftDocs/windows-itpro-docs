---
title: Manage Surface driver and firmware updates (Surface)
description: This article describes the available options to manage firmware and driver updates for Surface devices.
ms.assetid: CD1219BA-8EDE-4BC8-BEEF-99B50C211D73
ms.reviewer: 
manager: dansimp
keywords: Surface, Surface Pro 3, firmware, update, device, manage, deploy, driver, USB
ms.localizationpriority: medium
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.date: 07/27/2017
---

# Manage Surface driver and firmware updates


This article describes the available options to manage firmware and driver updates for Surface devices.

For a list of the available downloads for Surface devices and links to download the drivers and firmware for your device, see [Download the latest firmware and drivers for Surface devices](deploy-the-latest-firmware-and-drivers-for-surface-devices.md).

On Surface devices, the firmware is exposed to the operating system as a driver and is visible in Device Manager. This allows a Surface device firmware to be automatically updated along with all drivers through Windows Update. This mechanism provides a seamless, automatic experience to receive the latest firmware and driver updates. Although automatic updating is easy for end users, updating firmware and drivers automatically may not always apply to organizations and businesses. Automatic updates with Windows Update may not be applicable where updates are carefully managed, or when you deploy a new operating system to a Surface device.

## <a href="" id="methods-for-------firmware-deployment"></a>Methods for firmware deployment


Although firmware is provided automatically by Windows Update for computers that receive updates directly from Microsoft, in environments where updates are carefully managed by using Windows Server Update Services (WSUS), updating the firmware through Windows Update is not supported. For managed environments, there are a number of options you can use to deploy firmware updates.

**Windows Update**

The simplest solution to ensure that firmware on Surface devices in your organization is kept up to date is to allow Surface devices to receive updates directly from Microsoft. You can implement this solution easily by excluding Surface devices from Group Policy that directs computers to receive updates from WSUS.

Although this solution ensures that firmware will be updated as new releases are made available to Windows Update, it does present potential drawbacks. Each Surface device that receives Windows Updates directly will separately download each update rather than accessing a central location, which increases demand on Internet connectivity and bandwidth. Updates are also provided automatically to devices, without being subjected to testing or review by administrators.

For details about Group Policy for client configuration of WSUS or Windows Update, see [Step 5: Configure Group Policy Settings for Automatic Updates](https://technet.microsoft.com/library/dn595129).

**Windows Installer Package**

The firmware and driver downloads for Surface devices now include Windows Installer files for firmware and driver updates. These Windows Installer packages can be deployed with utilities that support application deployment, including the Microsoft Deployment Toolkit (MDT) and System Center Configuration Manager. This solution allows for centralized deployment and for administrators to test and review firmware updates before they are deployed. For more information about the Windows Installer package delivery method for firmware and driver updates, including details on what drivers are updated by the package and why certain drivers and firmware are not updated by the Windows Installer package, see the [Surface Pro 3 MSI Now Available](https://blogs.technet.microsoft.com/surface/2015/03/04/surface-pro-3-msi-now-available/) blog post.

For instructions on how to deploy with System Center Configuration Manager, refer to [How to Deploy Applications in Configuration Manager](https://technet.microsoft.com/library/gg682082). For deployment of applications with MDT, see [Step 4: Add an application in the Deploy a Windows 8.1 Image Using MDT 2013](https://technet.microsoft.com/library/dn744279#sec04). Note that you can deploy applications separately from an operating system deployment through MDT by using a Post OS Installation task sequence.

**Provisioning packages**

New in Windows 10, provisioning packages (PPKG files) provide a simple method to apply a configuration to a destination device. You can find out more about provisioning packages, including instructions for how to create your own, in [Provisioning packages](https://technet.microsoft.com/itpro/windows/deploy/provisioning-packages). For easy application of a complete set of drivers and firmware to devices running Windows 10, a provisioning package is supplied for Surface Pro 3 devices. This file contains all of the instructions and required assets to update a Surface Pro 3 device with Windows 10 to the latest drivers and firmware.

**Windows PowerShell**

Another method you can use to update the firmware when Windows Updates are managed in the organization is to install the firmware from the firmware and driver pack by using PowerShell. This method allows for a similar deployment experience to the Windows Installer package and can similarly be deployed as a package by using System Center Configuration Manager. You can find the PowerShell script and details on how to perform the firmware deployment in the [Deploying Drivers and Firmware to Surface Pro](https://blogs.technet.microsoft.com/deploymentguys/2013/05/16/deploying-drivers-and-firmware-to-surface-pro/) blog post.

## Operating system deployment considerations


The deployment of firmware updates during an operating system deployment is a straightforward process. The firmware and driver pack can be imported into either System Center Configuration Manager or MDT, and are used to deploy a fully updated environment, complete with firmware, to a target Surface device. For a complete step-by-step guide for deployment to Surface Pro 3 using either Configuration Manager or MDT, download the [Deployment and Administration Guide for Surface Pro 3](https://www.microsoft.com/download/details.aspx?id=45292) from the Microsoft Download Center.

The individual driver files are also made available in the Microsoft Download Center if you are using deployment tools. The driver files are available in the ZIP archive file in the list of available downloads for your device.

**Windows PE and Surface firmware and drivers**

A best practice for deployment with any solution that uses the Windows Preinstallation Environment (WinPE), such as System Center Configuration Manager or MDT, is to configure WinPE with only the drivers that are required during the WinPE stage of deployment. These usually include drivers for network adapters and storage controllers. This best practice helps to prevent errors with more complex drivers that rely on components that are not present in WinPE. For Surface Pro 3 devices, this is especially true of the Touch Firmware. The Touch Firmware should never be loaded in a WinPE environment on Surface Pro 3.

**Update Surface Pro 3 firmware offline through USB**

In some early versions of Surface Pro 3 firmware, PXE boot performance can be quite slow. This has been resolved with updated firmware, but for organizations where firmware will be updated through operating system deployment, this issue is encountered before the updates can be deployed to the device. In this scenario, you can deploy updated firmware through a USB drive to ensure that when the operating system deployment is initiated, the network boot is quick, and deployment can complete in a timely fashion. To create a USB drive to update Surface Pro 3 firmware, see [How to Update the Surface Pro 3 Firmware Offline using a USB Drive](https://blogs.technet.microsoft.com/askpfeplat/2014/10/19/how-to-update-the-surface-pro-3-firmware-offline-using-a-usb-drive/) on the Ask Premier Field Engineering (PFE) Platforms TechNet Blog.

 

 





