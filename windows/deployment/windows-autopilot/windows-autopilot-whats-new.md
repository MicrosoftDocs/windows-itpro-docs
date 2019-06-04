---
title: Windows Autopilot what's new
ms.reviewer: 
manager: laurawi
description: Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot: What's new

**Applies to**

-   Windows 10

## New in Windows 10, version 1903

[Windows Autopilot for white glove deployment](white-glove.md) is new in Windows 10, version 1903. See the following video:

<br>

<iframe width="560" height="315" src="https://youtu.be/nE5XSOBV0rI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Also new in this version of Windows:
- The Intune enrollment status page (ESP) now tracks Intune Management Extensions.
- Cortana voiceover and speech recognition during OOBE is disabled by default for all Windows 10 Pro Education, and Enterprise SKUs.
- Windows Autopilot is self-updating during OOBE. Starting with the Windows 10, version 1903 Autopilot functional and critical updates will begin downloading automatically during OOBE.
- Windows Autopilot will set the diagnostics data level to Full on Windows 10 version 1903 and later during OOBE. 

## New in Windows 10, version 1809

Windows Autopilot [self-deploying mode](self-deploying.md) enables a zero touch device provisioning experience. Simply power on the device, plug it into the Ethernet, and the device is fully configured by Windows Autopilot. This self-deploying capability removes the current need to have an end user interact by pressing the “Next” button during the deployment process. 

You can utilize Windows Autopilot self-deploying mode to register the device to an AAD tenant, enroll in your organization’s MDM provider, and provision policies and applications, all with no user authentication or user interaction required. 

## Related topics

[What's new in Microsoft Intune](https://docs.microsoft.com/intune/whats-new)<br>
[What's new in Windows 10](https://docs.microsoft.com/windows/whats-new/)