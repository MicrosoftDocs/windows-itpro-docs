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

Windows Autopilot is a cloud-based deployment technology in Windows 10. You can use Windows Autopilot to remotely deploy and configure devices in a zero-touch process right out of the box. Windows Autopilot-registered devices are identified over the Internet at first startup through a unique device signature that's called a *hardware hash*. Device are  automatically enrolled and configured by using modern management solutions such as Azure Active Directory (AAD) and mobile device management.

With Surface, you can choose to register your devices at the time of purchase from a Surface partner that's enabled for Windows Autopilot. New devices can be shipped directly to your end-users. The devices will be automatically enrolled and configured when they are unboxed and turned on for the first time. This process  eliminates the need to reimage devices as part of deployment, which which allows you to implement new, agile methods for device management and distribution.

## Modern management
Autopilot is the recommended deployment option for Surface devices including Surface Pro 7, Surface Laptop 3, and Surface Pro X, which is specifically designed to be deployed with Autopilot.

 For the best experience, enroll your Surface devices with the assistance of a Microsoft Cloud Solution Provider. That method allows you to manage UEFI firmware settings on Surface devices directly from Intune, eliminating the need to physically touch devices for certificate management. For more information, see [Intune management of Surface UEFI settings](surface-manage-dfci-guide.md).

## Windows version considerations
Broad deployment of Surface devices through Windows Autopilot, including enrollment by Surface partners at the time of purchase, requires Windows 10 Version 1709 (Fall Creators Update) or later.

 These versions support a 4000-byte (4k) hash value to uniquely identify devices for Windows Autopilot that's necessary for deployments at scale.  All new Surface devices including Surface Pro 7, Surface Pro X, and Surface Laptop 3, ship with Windows 10 Version 1903 or later.

## Surface partners enabled for Windows Autopilot

Select Surface partners can enroll Surface devices in Windows Autopilot at the time of purchase for your organization. 

These partners can ship enrolled devices directly to your users. And the devices can be configured entirely through the zero-touch process of Windows Autopilot, Azure AD, and mobile device management.

Surface partners enabled for Windows Autopilot include: 

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
For more information about Windows Autopilot, refer to:
- [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-10-autopilot)
- [Windows Autopilot requirements](https://docs.microsoft.com/windows/deployment/windows-autopilot/windows-autopilot-requirements)