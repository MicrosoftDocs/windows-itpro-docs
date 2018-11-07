---
title: Overview of Windows Autopilot
description: This topic goes over Windows Autopilot and how it helps setup OOBE Windows 10 devices.
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: high
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greg-lindsay
ms.date: 10/02/2018
---

# Overview of Windows Autopilot

**Applies to: Windows 10**

Windows Autopilot is designed to simplify all parts of the lifecycle of Windows devices, for both IT and end users, from initial deployment through the eventual end of life. Leveraging cloud-based services, it can reduce the overall costs for deploying, managing, and retiring devices by reducing the amount of time that IT needs to spend on these processes and the amount of infrastructure that they need to maintain, while ensuring ease of use for all types of end users.

<img src="images/image1.png">

When initially deploying new Windows devices, Windows Autopilot leverages the OEM-optimized version of Windows 10 that is preinstalled on the device, saving organizations the effort of having to maintain custom images as well as drivers for every model of device being used. Instead of re-imaging the device, that existing Windows 10 installation can be transformed into a “business-ready” state, applying settings and policies, installing apps, and even changing the edition of Windows 10 being used (e.g. from Windows 10 Pro to Windows 10 Enterprise, to support advanced features).

Once deployed, Windows 10 devices can be managed by tools such as Microsoft Intune, Windows Update for Business, System Center Configuration Manager, and other similar tools. Windows Autopilot can help with device re-purposing scenarios, leveraging Windows Autopilot Reset to quickly prepare a device for a new user, as well as in break/fix scenarios to enable a device to quickly be brought back to a business-ready state.

