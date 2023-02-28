---
title: Deploy applications to Windows 11 SE with Intune
description: Learn how to deploy application to Windows 11 SE devices with Intune as a managed installer.
ms.date: 02/28/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Deploy applications to Windows 11 SE with managed installer

Windows 11 SE prevents the installation of third party applications, unless the application is in an [approved list][EDU-1] or the IT admin consults with Microsoft.\
Starting with Windows 11 SE, version 22H2, you can deploy any applications to Windows 11 SE devices via Intune, without having to contact Microsoft. This is possible because Microsoft has enabled the *Intune Management Extension (IME)* as a *WDAC managed installer*.

In this tutorial, you'll learn how to set up Windows 11 SE devices with the IME as a managed installer, and how to validate the applications deployed via Intune.

## Introduction

Windows 11 SE prevents the installation and execution of third party applications with a security feature called *Windows Defender Application Control (WDAC)*.\
On Windows 11 SE, WDAC applies an *allowlist policy* called *E-Mode*. The E-Mode policy ensures that unwanted apps don't run or get installed.

When Windows 11 SE was initially released, Microsoft allowed specific application by using [WDAC supplemental policies][WIN-1], with an [allowlist process][EDU-1] done on an app-by-app basis.

Starting in Windows 11 SE, version 22H2, Microsoft enabled the IME as a managed installer. Applications deployed through Microsoft Intune will be automatically allowed on Windows 11 SE, removing the allowlist process requirement.

> [!NOTE]
> End-users of Windows 11 SE devices still cannot install and use arbitrary applications without being blocked. Only IT admins can control what apps are allowed.

Some applications may experience difficulties running due to their type or due to the complexity of how they're installed and executed. In these cases, the IT admin may need to write more policies to enable the applications.\
IT admins can write and deploy their own WDAC supplemental policies through Microsoft Intune, to allow third party application to run.

## Goals

In this tutorial you'll learn:

> [!div class="checklist"]
> - Which applications can be installed on a Windows 11 SE device when managed installer policies are enabled
> - How to install an application to a Windows 11 SE device
> - How to validate that an application is installed and runs successfully
> - How to write additional policies to enable incompatible applications
> - How to troubleshoot problems related to application installation

## Installation process

There are three main steps to install an application on Windows 11 SE using the managed installer. Each step will be covered in detail in the next sections of this tutorial:

:::image type="content" source="./images/process.svg" alt-text="Diagram showing the three tutorial steps." border="false":::

1. **Deploy an application via Microsoft Intune** - Applications are deployed via Microsoft Intune. There are some restrictions on the types of apps that are compatible with managed installers, but the process is the same used for non-Windows 11 SE devices
1. **Validate the application** - Applications are validated to ensure that they're installed and running successfully. The process is the same for non-Windows 11 SE devices. Some applications may be incompatible due to how they're installed, how they execute, or how they update. You'll learn about known limitations in a later section of the tutorial
1. **Create additional policies (optional)** - To allow apps that aren't installable or don't behave as intended, more policies can be created and deployed so that these applications can be used

All these steps are done by the IT administrator. Once the steps are complete, users of Windows 11 SE devices should be able to run the applications that you've deployed via Intune.

## Prerequisites

To receive policies on your Windows 11 SE devices, allowing app installation controlled by your IT admin, you must have:

- Windows 11 SE, version 22H2 and later
- Intune for Education licenses. The license requirement is for the managed installer to deploy apps and supplemental policies via Intune

If you don't have an Intune for Education license for your devices yet, refer to [Microsoft Intune for Education][EXT-1] for access to a free trial version.

## Next steps

Advance to the next article to learn which application can be deployed to Windows 11 SE devices, and how to deploy them via Intune.

> [!div class="nextstepaction"]
> [Next: deploy apps >](deploy-apps.md)

[EDU-1]: https://learn.microsoft.com/education/windows/windows-11-se-overview#add-your-own-applications
[EDU-2]: https://learn.microsoft.com/education/windows/windows-11-se-overview#available-applications
[EXT-1]: https://www.microsoft.com/en-us/education/intune
[WIN-1]: https://learn.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-control/select-types-of-rules-to-create