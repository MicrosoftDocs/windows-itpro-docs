---
title: Windows Autopilot and Surface Devices
ms.reviewer: 
manager: dansimp
description: Find out about Windows Autopilot deployment options for Surface devices.
keywords: autopilot, windows 10, surface, deployment
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.audience: itpro
ms.date: 10/21/2019
---

# Windows Autopilot and Surface devices

Windows Autopilot is a cloud-based deployment technology available in Windows 10. Using Windows Autopilot, you can remotely deploy and configure devices in a zero-touch process right out of the box. Windows Autopilot registered devices are identified over the internet at first boot using a unique device signature, known as a hardware hash, and automatically enrolled and configured using modern management solutions such as Azure Active Directory (AAD) and Mobile Device Management (MDM). 

With Surface devices, you can choose to register your devices at the time of purchase when purchasing from a Surface partner enabled for Windows Autopilot. New devices can be shipped directly to your end-users and will be automatically enrolled and configured when the units are unboxed and turned on for the first time. This process  eliminates need to reimage your devices as part of your deployment process, reducing the work required of your deployment staff and opening up new, agile methods for device management and distribution.

## Modern management
Autopilot is the recommended deployment option for Surface devices including Surface Pro 7, Surface Laptop 3, and Surface Pro X, which is specifically designed to be deployed with Autopilot.

 For the best experience, enroll your Surface devices with the assistance of a Microsoft Cloud Solution Provider. Doing so enables you to manage UEFI firmware settings on Surface devices directly from Intune, eliminating the need to physically touch devices for certificate management. For more information, see [Intune management of Surface UEFI settings](surface-manage-dfci-guide.md).

## Windows version considerations
Support for broad deployments of Surface devices using Windows Autopilot, including enrollment performed by Surface partners at the time of purchase, requires devices manufactured with or otherwise installed with Windows 10 Version 1709 (Fall Creators Update) or later. These versions support a 4000-byte (4k) hash value to uniquely identify devices for Windows Autopilot that is necessary for deployments at scale.  All new Surface devices including Surface Pro 7, Surface Pro X, and Surface Laptop 3 ship with Windows 10 Version 1903 or above.

## Surface partners enabled for Windows Autopilot
Enrolling Surface devices in Windows Autopilot at the time of purchase is a capability provided by select Surface partners that are enabled with the capability to identify individual Surface devices during the purchase process and perform enrollment on an organization’s behalf. Devices enrolled by a Surface partner at time of purchase can be shipped directly to users and configured entirely through the zero-touch process of Windows Autopilot, Azure Active Directory, and Mobile Device Management.

When you purchase Surface devices from a Surface partner enabled for Windows Autopilot, your new devices can be enrolled in your Windows Autopilot deployment for you by the partner. Surface partners enabled for Windows Autopilot include: 

- [Atea](https://www.atea.com/)
- [Connection](https://www.connection.com/brand/microsoft/microsoft-surface) 
- [Insight](https://www.insight.com/en_US/buy/partner/microsoft/surface/windows-autopilot.html)
- [SHI](https://www.shi.com/Surface)

## Learn more
For more information about Windows Autopilot, refer to:
- [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-10-autopilot)
- [Windows Autopilot requirements](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-autopilot-requirements)