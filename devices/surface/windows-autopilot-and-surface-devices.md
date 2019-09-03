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

In this article learn how to enroll your Surface devices in Windows Autopilot with a Surface partner and the options and considerations you will need to know along the way. This article focuses specifically on Surface devices, for more information about using Windows Autopilot with other devices, or to read more about Windows Autopilot and its capabilities, see [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-10-autopilot) in the Windows Docs Library.  For information about licensing and other prerequisites, see [Windows Autopilot requirements](https://docs.microsoft.com/en-us/windows/deployment/windows-autopilot/windows-autopilot-requirements).  

### Windows version considerations
Support for broad deployments of Surface devices using Windows Autopilot, including enrollment performed by Surface partners at the time of purchase, requires devices manufactured with or otherwise installed with Windows 10 Version 1709 (Fall Creators Update) or later. These versions support a 4000-byte (4k) hash value to uniquely identify devices for Windows Autopilot that is necessary for deployments at scale.  All new Surface devices ship with Windows 10 Version 1709 or above.

## Surface partners enabled for Windows Autopilot
Enrolling Surface devices in Windows Autopilot at the time of purchase is a capability provided by select Surface partners that are enabled with the capability to identify individual Surface devices during the purchase process and perform enrollment on an organization’s behalf. Devices enrolled by a Surface partner at time of purchase can be shipped directly to users and configured entirely through the zero-touch process of Windows Autopilot, Azure Active Directory, and Mobile Device Management.

When you purchase Surface devices from a Surface partner enabled for Windows Autopilot, your new devices can be enrolled in your Windows Autopilot deployment for you by the partner. Surface partners enabled for Windows Autopilot include: 

- [Atea](https://www.atea.com/)
- [Connection](https://www.connection.com/brand/microsoft/microsoft-surface) 
- [Insight](https://www.insight.com/en_US/buy/partner/microsoft/surface/windows-autopilot.html)
- [SHI](https://www.shi.com/Surface)

