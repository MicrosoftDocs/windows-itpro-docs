---
title: Deploy applications with managed installer to Windows SE
description: Learn how to deploy application with Intune as a managed installer to Windows 11 SE devices.
ms.date: 03/05/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Deploy applications with managed installer to Windows SE

Windows 11 SE prevents the installation of third party applications, unless the apps are in an *approved list*.\
Starting with Windows 11 SE, version 22H2, you can deploy applications to Windows SE devices via Intune, without having to contact Microsoft. The scenario is possible by configuring the *Intune Management Extension (IME)* as a *WDAC managed installer*.

In this tutorial, you'll learn how to set up Windows 11 SE devices with the IME as a managed installer, and how to validate the applications deployed via Intune.


<!-- New part

Windows 11 SE is designed to provide a simplified and secure experience for students. The installation and execution of applications that are not included in the operating system is prevented through the use of two technologies: WDAC and AppLocker.

If Windows 11 SE is managed by Intune, IT admins may deploy applcations from a curated list of education apps maintained by Microsoft.

Starting from <>, IT admins have more flexibility to deploy applications to Windows 11 SE devices. When a Windows 11 SE device is enrolled in Intune, it will automatically receive new polices that will enable the Intune Management Extention (IME) as a WDAC managed installer.\
What that means is that IT admins can deploy any Win32 applications and other type of apps outside of the ones that are allowlisted by default.

In this tutorial you will learn

- which types of apps can be deployed via Intune to Windows 11 SE devices
- how to verify that the apps are installed correctly
- how to mitigate app installation issues
- speical considerations when deploying apps to Windows 11 SE
-->

## Introduction

Windows 11 SE prevents the installation and execution of third party applications with a security feature called *Windows Defender Application Control (WDAC)*.\
On Windows 11 SE, WDAC applies an *allowlist policy* called *E-Mode*. The E-Mode policy ensures that unwanted apps don't run or get installed.

When Windows 11 SE was initially released, Microsoft enabled the execution of specific applications by using [WDAC supplemental policies][WIN-1], with an [allowlist process][EDU-1] done on an app-by-app basis.

Starting in Windows 11 SE, version 22H2, Microsoft enabled the IME as a managed installer. Applications deployed through Microsoft Intune will be automatically allowed on Windows 11 SE, removing the allowlist process requirement. For more information about managed installer, see [How does a managed installer work?][WIN-2]

> [!NOTE]
> End-users of Windows 11 SE devices still cannot install and use arbitrary applications without being blocked. Only IT admins can control what apps are allowed.

Some applications may not execute due to their type or complexity. In these scenarios, the IT admin must create their own policies that allow the apps execution.\
The policies can then be deployed to the Windows SE devices via Microsoft Intune.

## Goals

In this tutorial you'll learn:

> [!div class="checklist"]
> - Which applications can be installed on a Windows 11 SE device managed by Intune
> - How to install an application to a Windows 11 SE device using Intune
> - How to validate that an application is installed and runs successfully
> - How to write additional policies to enable incompatible applications
> - How to troubleshoot problems related to application installation

## Installation process

There are three main steps to install an application on Windows 11 SE using the managed installer. Each step will be covered in detail in the next sections of this tutorial:

:::image type="content" source="./images/process.png" alt-text="Diagram showing the three steps deploying apps to Windows SE devices with Intune." border="false":::

1. **Deploy an application via Microsoft Intune** - Applications are deployed via Microsoft Intune. There are some restrictions on the types of apps that are compatible with managed installers, but the process is the same used for non-Windows 11 SE devices
1. **Validate the application** - Applications are validated to ensure that they're installed and execute successfully. The process is the same for non-Windows 11 SE devices. Some applications may be incompatible due to how they're installed, how they execute, or how they update. You'll learn about known limitations in a later section of the tutorial
1. **Create additional policies (optional)** - To allow apps that aren't installable or don't behave as intended, more policies can be created and deployed so that the apps can be used

All the steps are done by the IT administrator. Once the steps are complete, users of Windows 11 SE devices should be able to run the applications deployed via Intune.

## Prerequisites

To receive policies on your Windows 11 SE devices, allowing app installation controlled by your IT admin, you must have:

- Windows 11 SE, version 22H2 with [KB5019980][KB-1] and later
- Intune for Education licenses. The license requirement is for the managed installer to deploy apps and supplemental policies via Intune

If you don't have an Intune for Education license for your devices yet, refer to [Microsoft Intune for Education][EXT-1] for access to a free trial version.

## Next steps

Advance to the next article to learn which application can be deployed to Windows 11 SE devices, and how to deploy them via Intune.

> [!div class="nextstepaction"]
> [Next: app deployment considerations >](deploy-apps.md)

[KB-1]: https://support.microsoft.com/kb/5019980
[EDU-1]: /education/windows/windows-11-se-overview#add-your-own-applications
[EXT-1]: https://www.microsoft.com/en-us/education/intune
[WIN-1]: /windows/security/threat-protection/windows-defender-application-control/select-types-of-rules-to-create
[WIN-2]: /windows/security/threat-protection/windows-defender-application-control/configure-authorized-apps-deployed-with-a-managed-installer#how-does-a-managed-installer-work