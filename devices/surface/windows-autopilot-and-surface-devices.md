---
title: Windows Autopilot and Surface devices
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
ms.date: 11/26/2019
---

# Windows Autopilot and Surface devices

Windows Autopilot is a cloud-based deployment technology in Windows 10. You can use Windows Autopilot to remotely deploy and configure devices in a zero-touch process right out of the box.

Windows Autopilot-registered devices are identified over the Internet at first startup through a unique device signature that's called a *hardware hash*. They're automatically enrolled and configured by using modern management solutions such as Azure Active Directory (Azure AD) and mobile device management.

You can register Surface devices at the time of purchase from a Surface partner that's enabled for Windows Autopilot. These partners can ship new devices directly to your users. The devices will be automatically enrolled and configured when they are first turned on. This process eliminates reimaging during deployment, which lets you implement new, agile methods of device management and distribution.

## Modern management
Autopilot is the recommended deployment option for Surface devices, including Surface Pro 7, Surface Laptop 3, and Surface Pro X, which is specifically designed for deployment through Autopilot.

 It's best to enroll your Surface devices with the help of a Microsoft Cloud Solution Provider. This step allows you to manage UEFI firmware settings on Surface directly from Intune. It eliminates the need to physically touch devices for certificate management. See [Intune management of Surface UEFI settings](surface-manage-dfci-guide.md) for details.

## Windows version considerations
Broad deployment of Surface devices through Windows Autopilot, including enrollment by Surface partners at the time of purchase, requires Windows 10 Version 1709 (Fall Creators Update) or later.

These Windows versions support a 4,000-byte (4k) hash value that uniquely identifies devices for Windows Autopilot, which is necessary for deployments at scale. All new Surface devices, including Surface Pro 7, Surface Pro X, and Surface Laptop 3, ship with Windows 10 Version 1903 or later.

## Surface partners enabled for Windows Autopilot

Select Surface partners can enroll Surface devices in Windows Autopilot for you at the time of purchase. They can also ship enrolled devices directly to your users. The devices can be configured entirely through a zero-touch process by using Windows Autopilot, Azure AD, and mobile device management.

Surface partners that are enabled for Windows Autopilot include:

- [ALSO](https://www.also.com/ec/cms5/de_1010/1010_anbieter/microsoft/windows-autopilot/index.jsp) 
- [Atea](https://www.atea.com/)
- [Bechtle](https://www.bechtle.com/de-en) 
- [Cancom](https://www.cancom.de/)
- [CDW](https://www.cdw.com/)
- [Computacenter](https://www.computacenter.com/uk)
- [Connection](https://www.connection.com/brand/microsoft/microsoft-surface) 
- [Insight](https://www.insight.com/en_US/buy/partner/microsoft/surface/windows-autopilot.html)
- [SHI](https://www.shi.com/Surface)
- [Synnex](https://www.synnexcorp.com/us/microsoft/surface-autopilot/)
- [Techdata](https://www.techdata.com/)

## Learn more
For more information about Windows Autopilot, see:
- [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-10-autopilot)
- [Windows Autopilot requirements](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-autopilot-requirements)