---
title: User-driven mode for AAD
description: Listing of Autopilot scenarios
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: low
ms.sitesec: library
ms.pagetype: deploy
author: dulcemontemayor
ms.author: dolmont
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot user-driven mode for Azure Active Directory join

**Applies to: Windows 10**

## Procedures

In order to perform a user-driven deployment using Windows Autopilot, the following preparation steps need to be completed:

-   Ensure that the users who will be performing user-driven mode deployments are able to join devices to Azure Active Directory.  See [Configure device settings](https://docs.microsoft.com/azure/active-directory/device-management-azure-portal#configure-device-settings) in the Azure Active Directory documentation for more information.
-   Create an Autopilot profile for user-driven mode with the desired settings.  In Microsoft Intune, this mode is explicitly chosen when creating the profile. With Microsoft Store for Business and Partner Center, user-driven mode is the default and does not need to be selected.
-   If using Intune, create a device group in Azure Active Directory and assign the Autopilot profile to that group.

For each device that will be deployed using user-driven deployment, these additional steps are needed:

-   Ensure that the device has been added to Windows Autopilot.  This can be done automatically by an OEM or partner at the time the device is purchased, or it can be done through a manual harvesting process later.  See [Adding devices to Windows Autopilot](add-devices.md) for more information.
-   Ensure an Autopilot profile has been assigned to the device:
    -   If using Intune and Azure Active Directory dynamic device groups, this can be done automatically.
    -   If using Intune and Azure Active Directory static device groups, manually add the device to the device group.
    -   If using other methods (e.g. Microsoft Store for Business or Partner Center), manually assign an Autopilot profile to the device.

Also see the **Validation** section in the [Windows Autopilot user-driven mode](user-driven.md) topic.
