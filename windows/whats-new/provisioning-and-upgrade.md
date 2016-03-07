---
title: Provisioning packages (Windows 10)
description: With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.
ms.assetid: 287706E5-063F-4AB5-902C-A0DF6D0730BC
ms.prod: W10
ms.mktglfcycl: explore
ms.sitesec: library
author: TrudyHa
---

# Provisioning packages


**Applies to**

-   Windows 10
-   Windows 10 Mobile

With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.

Provisioning packages are simple enough that with a short set of written instructions, a student or non-technical employee can use them to configure their device. This can result in a significant reduction in the time required to configure multiple devices in your organization.

## Benefits of provisioning packages


Provisioning packages let you:

-   Quickly configure a new device without going through the process of installing a new image.

-   Save time by configuring multiple devices using one provisioning package.

-   Quickly configure employee-owned devices in an organization without a mobile device management (MDM) infrastructure.

-   Set up a device without the device having network connectivity.

Provisioning packages can be:

-   Installed using removable media such as an SD card or USB flash drive.

-   Attached to an email.

-   Downloaded from a network share.

## What you can configure


The following table provides some examples of what can be configured using provisioning packages.

| Customization options    | Examples                                                                                      |
|--------------------------|-----------------------------------------------------------------------------------------------|
| Applications             | Windows apps, line-of-business applications                                                   |
| Bulk enrollment into MDM | Automatic enrollment into Microsoft Intune or a third-party MDM service                       |
| Certificates             | Root certification authority (CA), client certificates                                        |
| Connectivity profiles    | Wi-Fi, proxy settings, Email                                                                  |
| Enterprise policies      | Security restrictions (password, device lock, camera, and so on), encryption, update settings |
| Data assets              | Documents, music, videos, pictures                                                            |
| Start menu customization | Start menu layout, application pinning                                                        |
| Other                    | Home and lock screen wallpaper, computer name, domain join, DNS settings, and so on           |

 

For details about the settings you can customize in provisioning packages, see [Windows Provisioning settings reference]( http://go.microsoft.com/fwlink/p/?LinkId=619012).

## Creating a provisioning package


With Windows 10, you can use the Windows Imaging and Configuration Designer (ICD) tool to create provisioning packages. To install Windows ICD and create provisioning packages, you must install the Windows Assessment and Deployment Kit (ADK) for Windows 10[from the Windows Insider Program site](http://go.microsoft.com/fwlink/p/?linkid=533700).

While running ADKsetup.exe, select the following features from the **Select the features you want to install** dialog box:

-   Deployment Tools

-   Windows Preinstallation Environment (Windows PE)

-   Windows Imaging and Configuration Designer (ICD)

-   Windows User State Migration Tool (USMT)

Windows ICD depends on other tools in order to work correctly. If you only select Windows ICD in the installation wizard, the other tools listed above will also be selected for installation.

Once you have installed Windows ICD, you can use it to create a provisioning package. For detailed instructions on how to create a provisioning package, see [Build and apply a provisioning package](http://go.microsoft.com/fwlink/p/?LinkID=629651).

## Applying a provisioning package to a device


Provisioning packages can be applied both during image deployment and during runtime. For information on how to apply a provisioning package to a Windows 10-based device, see [Build and apply a provisioning package](http://go.microsoft.com/fwlink/p/?LinkID=629651).

## Learn more


[Windows 10: Deployment](http://go.microsoft.com/fwlink/p/?LinkId=533708)

## Related topics


[Update Windows 10 images with provisioning packages](windows/deploy/update-windows-10-images-with-provisioning-packages.md)

[Configure devices without MDM](windows/manage/configure-devices-without-mdm.md)

 

 





