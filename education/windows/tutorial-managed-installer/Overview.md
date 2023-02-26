---
title: Consideration before deploying apps with Managed Installer
description: Learn how to Consideration before deploying apps with Managed Installer
ms.date: 02/24/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Deploy apps to Windows 11 SE with Managed Installer

Currently, Windows 11 SE prevents the installation of 3<sup>rd</sup> party applications, unless the application is in an [approved list][EDU-1] or the IT admin consults with Microsoft.

Microsoft is changing the 3<sup>rd</sup> party application installation process by enabling the **Intune Management Extension (IME)** as a *managed installer*. What that means, is that you will be able to install 3<sup>rd</sup> party applications on Windows 11 SE devices via Intune, without having to contact Microsoft.

The documentation in this GitHub repository covers how to set up Windows 11 SE devices with the IME as a managed installer, and deploy apps via Intune to those devices.

## Goals

In this tutorial you will learn:

> [!div class="checklist"]
> - what applications can be installed on a Windows 11 SE device when managed installer policies are enabled
> - How to install an application to a Windows 11 SE device
> - How to validate that an application is installed and runs successfully
> - How to write additional policies to enable incompatible applications
> - How to troubleshoot problems related to application installation

## Introduction

Windows 11 SE prevents the installation and execution of 3<sup>rd</sup> party applications with a technology called **Windows Defender Application Control (WDAC)**.\
WDAC applies an allow-list policy called *E-Mode*, which ensures that unwanted apps do not run or get installed. With the use of [WDAC supplemental policies][WIN-1] Microsoft allows specific 3<sup>rd</sup> party applications to run at the request of IT admins. The [whitelist process][EDU-1] is done on a one-by-one basis, and the turnaround time to request an application to be allowed and have the supplemental policy deployed can be lengthy.

Microsoft is changing the 3<sup>rd</sup> party app installation process by enabling the **Intune Management Extension (IME)** as a *managed installer*. As a managed installer, any applications deployed through Microsoft Intune via IME, will be automatically allowed on Windows 11 SE, removing the whitelist process requirement.

> **Note**
> 
> End-users of Windows 11 SE devices still cannot install and use arbitrary applications without being blocked; only IT admins can control what apps are allowed.

Some applications may experience difficulties running due to their app type or due to the complexity of how the app is installed and executed. In these cases, the IT admin may need to write additional policies to enable the application. This documentation covers how to set up Windows 11 SE devices with the IME as a managed installer, and deploy apps via Intune to those devices.

IT admins can write and deploy their own WDAC supplemental policies through Microsoft Intune, to allow 3<sup>rd</sup> party application to run. There won't be any need to work with Microsoft directly.

## Installation process

There are four main steps to install an application on Windows 11 SE using the managed installer. Each step will be covered in detail in this tutorial.

![](./images/process.svg)

1. **Deploy an application via Microsoft Intune** - Applications are deployed via Microsoft Intune. There are some restrictions on the types of apps that are compatible with managed installers, but this step is the same as it would be for non-Windows 11 SE devices.
1. **Validate the application** - Applications are validated to ensure that they are installed and running successfully. This step is the same as it would be for non-Windows 11 SE devices. Since some applications may be incompatible due to how they are installed, how they execute, or how they update, the known limitations are discussed in a later section of this tutorial.
1. **Create additional policies (optional)** - To allow apps that are not installable or do not behave as intended, additional policies can be created and deployed so that these applications can be used.

All four of these steps are done by the IT administrator. Once the steps are complete, users of Windows 11 SE devices should be able to run the applications that you've deployed via Intune.

## Prerequisites

In order to receive policies on your Windows 11 SE device to allow 3rd party app installation controlled by your IT admin, you must have the following:
- Windows 11 SE devices with a minimum version of 10.0.22621.819 (22H2, November Update) and later.
- Your Windows 11 devices must be connected to a tenant with an Intune for Education license. If you do not have an Intune for Education license for your devices yet, refer to [Microsoft Intune for Education][EXT-1] for access to a free trial version. This license is needed for Managed Installer to successfully deploy apps and supplemental policies via Intune.

## Next steps

Advance to the next article to learn how to create...
> [!div class="nextstepaction"]
> [Next: deploy apps](deploy-apps.md)

[EDU-1]: https://learn.microsoft.com/education/windows/windows-11-se-overview#add-your-own-applications
[EDU-2]: https://learn.microsoft.com/education/windows/windows-11-se-overview#available-applications
[EXT-1]: https://www.microsoft.com/en-us/education/intune
[WIN-1]: https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/select-types-of-rules-to-create