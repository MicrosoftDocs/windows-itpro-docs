---
title: Configure Autopilot deployment
description: How to configure Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greg-lindsay
ms.date: 10/02/2018
---

# Configure Autopilot deployment

**Applies to**

-   Windows 10

## Deploying new devices

When deploying new devices using Windows Autopilot, a common set of steps are required:

1.  [Register devices with the Windows Autopilot deployment service](add-devices.md). Ideally, this step would be performed by the OEM, reseller, or distributor from which the devices were purchased, but this can also be done by the organization by collecting the hardware identity and uploading it manually.

2.  [Assign a profile of settings to each device](profiles.md), specifying how the device should be deployed and what user experience should be presented.

3.  Boot the device. When the device is connected to a network with internet access, it will contact the Windows Autopilot deployment service to see if the device is registered, and if it is, it will download profile settings such as the [Enrollment Status page](enrollment-status.md), which are used to customize the end user experience.

<img src="./images/image2.png" width="511" height="249" />

## Related topics

[Windows Autopilot scenarios](windows-autopilot-scenarios.md)