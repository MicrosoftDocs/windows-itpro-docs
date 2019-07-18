---
title: Windows Autopilot and Surface Devices (Surface)
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
---

# Windows Autopilot and Surface devices

Windows Autopilot is a cloud-based deployment technology available in Windows 10. Using Windows Autopilot, you can remotely deploy and configure devices in a truly zero-touch process right out of the box. Windows Autopilot registered devices are identified over the internet at first boot using a unique device signature, known as the hardware hash, and automatically enrolled and configured using modern management solutions such as Azure Active Directory (AAD) and Mobile Device Management (MDM). 

With Surface devices, you can choose to register your devices at the time of purchase when purchasing from a Surface partner enabled for Windows Autopilot. New devices can be shipped directly to your end-users and will be automatically enrolled and configured when the units are unboxed and turned on for the first time. This process can eliminate need to reimage your devices as part of your deployment process, reducing the work required of your deployment staff and opening up new, agile methods for device management and distribution.

In this article learn how to enroll your Surface devices in Windows Autopilot with a Surface partner and the options and considerations you will need to know along the way. This article focuses specifically on Surface devices, for more information about using Windows Autopilot with other devices, or to read more about Windows Autopilot and its capabilities, see [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-10-autopilot) in the Windows Docs Library.

## Prerequisites
Enrollment of Surface devices in Windows Autopilot with a Surface partner enabled for Windows Autopilot has the following licensing requirements for each enrolled Surface device:
* **Azure Active Directory Premium** – Required to enroll your devices in your organization and to automatically enroll devices in your organization’s mobile management solution.
* **Mobile Device Management (such as Microsoft Intune)** – Required to remotely deploy applications, configure, and manage your enrolled devices.
* **Office 365 ProPlus** – Required to deploy Microsoft Office to your enrolled devices.

These requirements are also met by the following solutions:
* Microsoft 365 E3 or E5 (includes Azure Active Directory Premium, Microsoft Intune, and Office 365 ProPlus)

Or
* Enterprise Mobility + Security E3 or E5 (includes Azure Active Directory Premium and Microsoft Intune)
* Office 365 ProPlus, E3, or E5 (includes Office 365 ProPlus)

>[!NOTE]
>Deployment of devices using Windows Autopilot to complete the Out-of-Box Experience (OOBE) is supported without these prerequisites, however will yield deployed devices without applications, configuration, or enrollment in a management solution and is highly discouraged.

### Windows version considerations
Support for broad deployments of Surface devices using Windows Autopilot, including enrollment performed by Surface partners at the time of purchase, requires devices manufactured with or otherwise installed with Windows 10 Version 1709 (Fall Creators Update). Windows 10 Version 1709 uses a secure 4096-bit (4k) hash value to uniquely identify devices for Windows Autopilot that is necessary for deployments at scale.

### Surface device support
Surface devices with support for out-of-box deployment with Windows Autopilot, enrolled during the purchase process with a Surface partner, include the following devices, where the devices ship from the factory with Windows 10 Version 1709:

* Surface Pro (5th gen)
* Surface Laptop(1st gen)
* Surface Studio (1st gen)
* Surface Pro 6
* Surface Book 2
* Surface Laptop 2
* Surface Studio 2
* Surface Go
* Surface Go with LTE Advanced

## Surface partners enabled for Windows Autopilot
Enrolling Surface devices in Windows Autopilot at the time of purchase is a capability provided by select Surface partners that are enabled with the capability to identify individual Surface devices during the purchase process and perform enrollment on an organization’s behalf. Devices enrolled by a Surface partner at time of purchase can be shipped directly to users and configured entirely through the zero-touch process of Windows Autopilot, Azure Active Directory, and Mobile Device Management.

When you purchase Surface devices from a Surface partner enabled for Windows Autopilot, your new devices can be enrolled in your Windows Autopilot deployment for you by the partner. Surface partners enabled for Windows Autopilot include: 

- [Atea](https://www.atea.com/)
- [Connection](https://www.connection.com/brand/microsoft/microsoft-surface) 
- [Insight](https://www.insight.com/en_US/buy/partner/microsoft/surface/windows-autopilot.html)
- [SHI](https://www.shi.com/Surface)


