---
title: Considerations for Surface and System Center Configuration Manager (Surface)
description: 
keywords:
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, 
ms.sitesec: library
author: miladCA
---

# Considerations for Surface and System Center Configuration Manager

Fundamentally, management and deployment of Surface devices with System Center Configuration Manager is the same as the management and deployment of any other PC. Like any other PC, a deployment to Surface devices includes importing drivers, importing a Windows image, preparing a deployment task sequence, and then deploying the task sequence to a collection. After deployment, Surface devices are like any other Windows client – to publish apps, settings, and policies, you use the same process that you would use for any other device.

You can find more information about how to use Configuration Manager to deploy and manage devices in the [Documentation for System Center Configuration Manager](https://docs.microsoft.com/sccm/index) article in the TechNet Library.

Although the deployment and management of Surface devices is fundamentally the same as any other PC, there are some scenarios that may require additional considerations or steps. This article provides descriptions and guidance for these scenarios; the solutions documented in this article may apply to other devices and manufacturers as well.

>[!NOTE]
>For management of Surface devices it is recommended that you use the Current Branch of System Center Configuration Manager.

## Updating Surface device drivers and firmware

For devices that receive updates through Windows Update, drivers for Surface components – and even firmware updates – are applied automatically as part of the Windows Update process. For devices with managed updates, such as those updated through Windows Server Update Services (WSUS), the option to install drivers and firmware through Windows Update is not available. For these managed devices, the recommended driver management process is the deployment of driver and firmware updates using the Windows Installer (.msi) files, which are provided through the Microsoft Download Center. You can find a list of these downloads at Download the latest firmware and drivers for Surface devices.

As .msi files, deployment of driver and firmware updates is performed in the same manner as deployment of an application. Instead of installing an application as would normally happen when an .msi file is run, the Surface driver and firmware .msi will apply the driver and firmware updates to the device. The single .msi file contains the driver and firmware updates required by each component of the Surface device. The updates for firmware are applied the next time the device reboots. You can read more about the .msi installation method for Surface drivers and firmware in Manage Surface driver and firmware updates. For more information about how to deploy applications with Configuration Manager, see Packages and programs in System Center Configuration Manager.
