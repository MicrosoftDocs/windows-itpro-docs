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
ms.audience: itpro
ms.date: 10/21/2019
---

# Manage Surface driver and firmware updates

This article describes the available options that you can use to manage firmware and driver updates for Surface devices including Surface Pro 3 and later. 

To see a list of the available downloads for Surface devices and links to download the drivers and firmware for your device, see [Deploy the latest firmware and drivers for Surface devices](deploy-the-latest-firmware-and-drivers-for-surface-devices.md).

On Surface devices, the firmware is exposed to the operating system as a driver and is visible in Device Manager. This design allows a Surface device firmware to be automatically updated along with all drivers through Windows Update. This mechanism provides a seamless, automatic experience for receiving the latest firmware and driver updates. Although automatic updating is easy for end users, updating firmware and drivers automatically may not always be appropriate for organizations and businesses. In cases where you strictly manage updates or when you deploy a new operating system to a Surface device, automatic updates from Windows Update may not be appropriate.

## <a href="" id="methods-for-------firmware-deployment"></a>Methods for deploying firmware

Windows Update automatically provides firmware for computers that receive updates directly from Microsoft. However, in environments where  Windows Server Update Services (WSUS) manages updates, Windows Update cannot update the firmware. For managed environments, there are a number of options you can use to deploy firmware updates.

### Windows Update

The simplest solution to ensure that firmware on Surface devices in your organization is kept up to date is to allow Surface devices to receive updates directly from Microsoft. You can implement this solution easily by excluding Surface devices from Group Policy that directs computers to receive updates from WSUS.

Although this solution ensures that firmware will be updated as new releases are made available to Windows Update, it does present potential drawbacks. Each Surface device that receives updates from Windows Update downloads each update independently from Microsoft instead of accessing a central location. These operations increase demand on Internet connectivity and bandwidth. Additionally, such updates are not subjected to testing or review by administrators.

For details about Group Policy for client configuration of WSUS or Windows Update, see [Step 4: Configure Group Policy Settings for Automatic Updates](https://docs.microsoft.com/windows-server/administration/windows-server-update-services/deploy/4-configure-group-policy-settings-for-automatic-updates).

### Windows Installer Package

Surface driver and firmware updates are packaged as Windows Installer (MSI) files. To deploy these Windows Installer packages, you can use application deployment utilities such as the Microsoft Deployment Toolkit (MDT) or System Center Configuration Manager. Such solutions provide the means for administrators to test and review updates before deploying them, and to centralize deployment. For each device, it is important to select the correct MSI file for the device and its operating system. For more information see [Deploy the latest firmware and drivers for Surface devices](deploy-the-latest-firmware-and-drivers-for-surface-devices.md).

For instructions on how to deploy updates by using System Center Configuration Manager, refer to [Deploy applications with Configuration Manager](https://docs.microsoft.com/sccm/apps/deploy-use/deploy-applications). For instructions on how to deploy updates by using MDT, see [Deploy a Windows 10 image using MDT](https://docs.microsoft.com/windows/deployment/deploy-windows-mdt/deploy-a-windows-10-image-using-mdt).

> [!NOTE]
> You can deploy applications separately from an operating system deployment through MDT by using a Post OS Installation task sequence.

### Microsoft System Center Configuration Manager

Starting in Microsoft System Center Configuration Manager version 1710, you can synchronize and deploy Microsoft Surface firmware and driver updates by using the Configuration Manager client. The process resembles that for deploying regular updates. For additional information, see KB 4098906, [How to manage Surface driver updates in Configuration Manager](https://support.microsoft.com/help/4098906/manage-surface-driver-updates-in-configuration-manager).

## Considerations when deploying updates and operating systems together

The process of deploying firmware updates during an operating system deployment is straightforward. You can import the firmware and driver pack into either System Center Configuration Manager or MDT, and use them to deploy a fully updated environment to a target Surface device, complete with firmware. For a complete step-by-step guide to using MDT to deploy Windows to a Surface device, see [Deploy Windows 10 to Surface devices with Microsoft Deployment Toolkit](deploy-windows-10-to-surface-devices-with-mdt.md).

> [!IMPORTANT]
> Select the correct MSI file for each specific device and its operating system. For more information, see [Deploy the latest firmware and drivers for Surface devices](deploy-the-latest-firmware-and-drivers-for-surface-devices.md).

**WindowsPE and Surface firmware and drivers**

System Center Configuration Manager and MDT both use the Windows Preinstallation Environment (WindowsPE) during the deployment process. WindowsPE only supports a limited set of basic drivers such as those for network adapters and storage controllers. Drivers for Windows components that are not part of WindowsPE might produce errors. As a best practice, you can prevent such errors by configuring the deployment process to use only the required drivers during the WindowsPE phase.

## Supported devices
Downloadable MSI files are available for Surface devices from Surface Pro 2 and later. Information about MSI files for the newest Surface devices such as Surface Pro 7, Surface Pro X, and Surface Laptop 3 will be available from this page upon release. 
