---
title: Switch to Windows 10 Pro/Enterprise from S mode
ms.reviewer: 
manager: laurawi
ms.author: greg-lindsay
description: Overview of Windows 10 Pro/Enterprise in S mode. S mode switch options are also outlined in this document. Switching out of S mode is optional.
keywords: Windows 10 S switch, S mode Switch, Switch in S mode, s mode switch, Windows 10 S, S-mode, system requirements, Overview, Windows 10 Pro in S mode, Windows 10 Pro in S mode
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.prod: w10
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.collection: M365-modern-desktop
ms.topic: article
---

# Switch to Windows 10 Pro or Enterprise from S mode

We recommend staying in S mode. However, in some limited scenarios, you might need to switch to Windows 10 Pro, Home, or Enterprise (not in S mode). You can switch devices running Windows 10, version 1709 or later. 


A number of other transformations are possible depending on which version and edition of Windows 10 you are starting with. Depending on the details, you might *switch* between S mode and the ordinary version or *convert* between different editions while staying in or out of S mode. The following quick reference table summarizes all of the switches or conversions that are supported by various means:




| If a device is running this version of Windows 10 | and this edition of Windows 10       | then you can switch or convert it to this edition of Windows 10 by these methods: |                               |                                            |
|-------------|---------------------|-----------------------------------|-------------------------------|--------------------------------------------|
|             |                     | **Store for Education** (switch/convert all devices in your tenant)           | **Microsoft Store** (switch/convert one device at a time)          | **Intune** (switch/convert any number of devices selected by admin)                                |
| **Windows 10, version 1709**     | Pro in S mode | Pro EDU                           | Pro                           | Not by this method                                        |
|             | Pro                 | Pro EDU                           | Not by any method                | Not by any method                             |
|             | Home                | Not by any method                    | Not by any method                | Not by any method                             |
|             |                     |                                   |                               |                                            |
| **Windows 10, version 1803**     | Pro in S mode       | Pro EDU in S mode                 | Pro                           | Not by this method                                         |
|             | Pro                 | Pro EDU                           | Not by any method                | Not by any method                             |
|             | Home in S mode      | Not by any method                    | Home                          | Not by this method                                         |
|             | Home                | Not by any method                    | Not by any method                | Not by any method                             |
|             |                     |                                   |                               |                                            |
| **Windows 10, version 1809**     | Pro in S mode       | Pro EDU in S mode                 | Pro                           | Pro                                        |
|             | Pro                 | Pro EDU                           | Not by any method                | Not by any method                             |
|             | Home in S mode      | Not by any method                    | Home                          | Home                                       |
|             | Home                | Not by any method                    | Not by any method                | Not by any method                             |


Use the following information to switch to Windows 10 Pro through the Microsoft Store.
> [!IMPORTANT]
> While it’s free to switch to Windows 10 Pro, it’s not reversible. The only way to rollback this kind of switch is through a [bare-metal recovery (BMR)](https://docs.microsoft.com/windows-hardware/manufacture/desktop/create-media-to-run-push-button-reset-features-s14) reset. This restores a Windows device to the factory state, even if the user needs to replace the hard drive or completely wipe the drive clean. If a device is switched out of S mode via the Microsoft Store, it will remain out of S mode even after the device is reset.

## Switch one device through the Microsoft Store
Use the following information to switch to Windows 10 Pro through the Microsoft Store or by navigating to **Settings** and then **Activation** on the device.

Note these differences affecting switching modes in various releases of Windows 10:

- In Windows 10, version 1709, you can switch devices one at a time from Windows 10 Pro in S mode to Windows 10 Pro by using the Microsoft Store or **Settings**. No other switches are possible.
- In Windows 10, version 1803, you can switch devices running any S mode edition to the equivalent non-S mode edition one at a time by using the Microsoft Store or **Settings**.
-  Windows 10, version 1809, you can switch devices running any S mode edition to the equivalent non-S mode edition one at a time by using the Microsoft Store, **Settings**, or you can switch multiple devices in bulk by using Intune. You can also block users from switching devices themselves.


1. Sign into the Microsoft Store using your Microsoft account. 
2. Search for "S mode".
3. In the offer, select **Buy**, **Get**, or **Learn more.**

You'll be prompted to save your files before the switch starts. Follow the prompts to switch to Windows 10 Pro.

## Switch one or more devices by using Microsoft Intune

Starting with Windows 10, version 1809, if you need to switch multiple devices in your environment from Windows 10 Pro in S mode to Windows 10 Pro, you can use Microsoft Intune or any other supported mobile device management software. You can configure devices to switch out of S mode during OOBE or post-OOBE - this gives you flexibility to manage Windows 10 in S mode devices at any point during the device lifecycle.

1.	Start Microsoft Intune.
2.	Navigate to **Device configuration > Profiles > Windows 10 and later > Edition upgrade and mode switch**.
3.	Follow the instructions to complete the switch.


## Block users from switching

You can control which devices or users can use the Microsoft Store to switch out of S mode in Windows 10.
To set this, go to **Device configuration > Profiles > Windows 10 and later > Edition upgrade and mode switch in Microsoft Intune**, and then choose **Keep in S mode**.

## S mode management with CSPs

In addition to using Microsoft Intune or another modern device management tool to manage S mode, you can also use the [WindowsLicensing](https://docs.microsoft.com/windows/client-management/mdm/windowslicensing-csp) configuration service provider (CSP). In Windows 10, version 1809, we added S mode functionality that lets you switch devices, block devices from switching, and check the status (whether a device is in S mode).


## Related topics

[FAQs](https://support.microsoft.com/help/4020089/windows-10-in-s-mode-faq)<br>
[Compare Windows 10 editions](https://www.microsoft.com/WindowsForBusiness/Compare)<BR>
[Windows 10 Pro Education](https://docs.microsoft.com/education/windows/test-windows10s-for-edu)<BR>
[Introduction to Microsoft Intune in the Azure portal](https://docs.microsoft.com/intune/what-is-intune)
