---
title: Deploy applications to Windows 11 SE with Intune
description: Learn how to deploy applications to Windows 11 SE with Intune and how to validate the apps.
ms.date: 05/23/2023
ms.topic: tutorial
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE, version 22H2 and later</a>
---

# Tutorial: deploy applications to Windows 11 SE with Intune

This guide describes how to deploy applications to Windows 11 SE devices that are managed by Microsoft Intune in an education environment. The guide also describes how to validate the apps and how to create policies to allow apps that aren't installable or don't behave as intended.

## Windows 11 SE and application deployment

Windows 11 SE is designed to provide a simplified and secure experience for students. Windows 11 SE prevents the installation and execution of third party applications with a technology called *Windows Defender Application Control (WDAC)*.

WDAC applies an *allowlist* policy called *Windows 11 SE base policy*, which ensures that unwanted apps don't run or get installed. However, it also prevents IT admins from deploying apps to Windows 11 SE devices, unless they're included in the Windows 11 SE base policy.

With the use of WDAC *supplemental policies*, Intune allows specific third party applications to be installed and executed. The [allowlist process][EDU-1] is done on an app-by-app basis, and the time to request an application to be allowed and have the supplemental policy deployed can be lengthy.

Starting with Windows 11 SE, version 22H2, IT admins have more flexibility to deploy applications to Windows 11 SE devices. When a Windows 11 SE device is enrolled in an Intune education tenant, it will automatically receive an AppLocker policy that sets the *Intune Management Extension (IME)* as a *managed installer*.

As a managed installer, applications deployed through the IME will be automatically allowed on Windows 11 SE, removing the allowlist process requirement. For more information about managed installer, see [How does a managed installer work?][WIN-2]

> [!NOTE]
> End-users of Windows 11 SE devices still cannot install and use arbitrary applications without being blocked. Only IT admins can control what apps are allowed.

## Tutorial objectives

Even when using managed installer, some applications may not execute due to their type or complexity. In these scenarios, the IT admin must create their own policies that allow the apps execution.\
The policies can then be deployed to the Windows SE devices via Intune.

In this tutorial you'll learn:

- Which types of apps can be deployed via Intune to Windows 11 SE devices
- How to verify that the apps are installed correctly
- How to mitigate app installation issues
- Special considerations when deploying apps to Windows 11 SE

## Installation process

There are three main steps to install an application on Windows 11 SE using the managed installer. Each step will be covered in detail in the next sections of this tutorial:

:::image type="content" source="./images/process.png" alt-text="Diagram showing the three steps deploying apps to Windows SE devices with Intune." border="false":::

1. **Deploy an application via Microsoft Intune** - Applications are deployed via Microsoft Intune. There are some restrictions on the types of apps that are compatible with managed installers, but the process is the same used for non-Windows 11 SE devices
1. **Validate the application** - Applications are validated to ensure that they're installed and execute successfully. The process is the same for non-Windows 11 SE devices. Some applications may be incompatible due to how they're installed, how they execute, or how they update. You'll learn about known limitations in a later section of the tutorial
1. **Create additional policies (optional)** - To allow apps that aren't installable or don't behave as intended, more policies can be created and deployed so that the apps can be used

All the steps are done by the IT administrator. Once the steps are complete, users of Windows 11 SE devices should be able to run the applications deployed via Intune.


## Installation process 2

There are three main steps to install an application on Windows 11 SE using the managed installer. Each step will be covered in detail in the next sections of this tutorial:
:::row:::
   :::column span="":::
    :::image type="icon" source="images/phase-1-on.svg" border="false":::
      [**Deploy an application via Microsoft Intune**](deploy-apps.md)<br>
      Applications are deployed via Microsoft Intune. There are some restrictions on the types of apps that are compatible with managed installers, but the process is the same used for non-Windows 11 SE devices
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-2-on.svg" border="false":::
      [**Validate the application**](validate-apps.md)<br>
      Applications are validated to ensure that they're installed and execute successfully. The process is the same for non-Windows 11 SE devices. Some applications may be incompatible due to how they're installed, how they execute, or how they update. You'll learn about known limitations in a later section of the tutorial
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-3-on.svg" border="false":::
      [**Create additional policies (optional)**](create-policies.md)<br>
      To allow apps that aren't installable or don't behave as intended, more policies can be created and deployed so that the apps can be used
   :::column-end:::
:::row-end:::

## Installation process 3

:::row:::
   :::column span="":::
    :::image type="icon" source="images/phase-1-off.svg" border="false":::
      [**Deploy an application via Microsoft Intune**](deploy-apps.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-2-off.svg" border="false":::
      [**Validate the application**](validate-apps.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-3-off.svg" border="false":::
      [**Create additional policies (optional)**](create-policies.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-3-off.svg" border="false":::
      [**Create additional policies (optional)**](create-policies.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-3-off.svg" border="false":::
      [**Create additional policies (optional)**](create-policies.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-3-off.svg" border="false":::
      [**Create additional policies (optional)**](create-policies.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-3-off.svg" border="false":::
      [**Create additional policies (optional)**](create-policies.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-3-off.svg" border="false":::
      [**Create additional policies (optional)**](create-policies.md)
   :::column-end:::
:::row-end:::

## Installation process 4

:::row:::
   :::column span="":::
    :::image type="icon" source="images/phase-1-off.svg" border="false":::
      [**Deploy an application via Microsoft Intune**](deploy-apps.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-2-off.svg" border="false":::
      [**Validate the application**](validate-apps.md)
   :::column-end:::
   :::column span="":::
    :::image type="icon" source="images/phase-3-off.svg" border="false":::
      [**Create additional policies (optional)**](create-policies.md)
   :::column-end:::
:::row-end:::

## Installation process 5

:::row:::
   :::column span="1":::
    :::image type="icon" source="images/phase-1-off.svg" border="false":::
      [**Deploy an application via Microsoft Intune**](deploy-apps.md)
   :::column-end:::
   :::column span="3":::
      Applications are deployed via Microsoft Intune. There are some restrictions on the types of apps that are compatible with managed installers, but the process is the same used for non-Windows 11 SE devices
   :::column-end:::
:::row-end:::
:::row:::
   :::column span="1":::
    :::image type="icon" source="images/phase-1-off.svg" border="false":::
      [**Deploy an application via Microsoft Intune**](deploy-apps.md)
   :::column-end:::
   :::column span="3":::
      Applications are deployed via Microsoft Intune. There are some restrictions on the types of apps that are compatible with managed installers, but the process is the same used for non-Windows 11 SE devices
   :::column-end:::
:::row-end:::
:::row:::
   :::column span="1":::
    :::image type="icon" source="images/phase-1-off.svg" border="false":::
      [**Deploy an application via Microsoft Intune**](deploy-apps.md)
   :::column-end:::
   :::column span="3":::
      Applications are deployed via Microsoft Intune. There are some restrictions on the types of apps that are compatible with managed installers, but the process is the same used for non-Windows 11 SE devices
   :::column-end:::
:::row-end:::

## Prerequisites

To receive policies on your Windows 11 SE devices, allowing app installation from Intune, you must have:

- Windows 11 SE, version 22H2 with [KB5019980][KB-1] and later
- Intune for Education licenses. The license requirement is for the managed installer to deploy apps and supplemental policies via Intune

If you don't have an Intune for Education license for your devices yet, refer to [Microsoft Intune for Education][EXT-1] for access to a free trial version.

## Next steps

Advance to the next article to learn which applications can be deployed to Windows 11 SE devices, and how to deploy them via Intune.

> [!div class="nextstepaction"]
> [Next: deploy apps >](deploy-apps.md)

[KB-1]: https://support.microsoft.com/kb/5019980
[EDU-1]: /education/windows/windows-11-se-overview#add-your-own-applications
[EXT-1]: https://www.microsoft.com/en-us/education/intune
[WIN-1]: /windows/security/threat-protection/windows-defender-application-control/select-types-of-rules-to-create
[WIN-2]: /windows/security/threat-protection/windows-defender-application-control/configure-authorized-apps-deployed-with-a-managed-installer#how-does-a-managed-installer-work