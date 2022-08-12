---
title: # Microsoft Endpoint Manager support
description: # How to obtain Microsoft support from Microsoft Endpoint Manager admin center.
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
#ms.reviewer: 
manager: aaroncz
ms.collection: education
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
---

# Device reset

When a device is lost, stolen, or needs to be replaced, or when a user moves to another position, it is usually time to wipe or reset the device. There are several ways you can do this—including resetting the device, removing it from management, or wiping the personal and school data on it. In scenarios where a device needs to be exchanged or returned, additional steps are required to prepare the device and then send it for repair. With Intune, IT administrators can remotely execute all these actions for device reset. 

## Resetting a device

Two Reset Device actions can be used to reset and deregister student devices in preparation for next year: Autopilot Reset and factory reset. With Autopilot Reset, you return the device to a fully configured or known IT-approved state. With factory reset, you wipe all personal and school data and settings from the device, returning it to the default factory settings. 

### Autopilot Reset

This reset action is ideal when all data on a device needs to be wiped, but the device will remain enrolled in your school. You can use Autopilot Reset to remove personal files, apps, and settings; reset Windows 11 SE devices from the lock screen; and apply original Intune settings and management enrollment (Azure Active Directory and device management). 

With Intune for Education, wiping can be performed remotely: 

1. In Intune for Education, choose **Groups** → **Choose a device group**.
1. Choose a device, and then select **Autopilot Reset**. 
1. To confirm the reset, select **Autopilot Reset** again. A message appears when the reset is initiated. The device will reset the next time it connects to the Internet. 

:::image type="content" source="./image17.png" alt-text="Using Autopilot Reset in Microsoft Endpoint Manager admin center" border="true":::

### Factory reset (wipe)

A factory reset, or a wipe, reverts a device to the original settings when it was purchased. All apps and data installed on the device after purchase are removed. The device is also removed from Intune management, and all data and settings are wiped from the device.

To perform a factory reset: 

1. In Microsoft Endpoint Manager, go to **Devices** → **Windows devices** to view all enrolled devices.
1. Choose the device you want to reset, and on the next screen, select **Wipe**.
1. **NOTE:** We recommend keeping the enrollment state and associated user account. This option ensures that the Wipe action cannot be circumvented by turning off the device.
1. Select **Yes** to reset the device to its factory defaults and delete the Intune object.

:::image type="content" source="./image18.png" alt-text="Using factory reset in Microsoft Endpoint Manager admin center" border="true":::

## Wiping and removing a device

With this action, a device’s data is wiped, and the device is removed from the school deployment. This action should only be performed for devices that are no longer going to be used. To completely remove a device, you need to perform two actions: 

1. Perform a [factory reset (wipe)](#) on the device.
1. Complete one of the following actions, depending on Intune enrollment:
1. If the device [is not enrolled](#) in Intune, delete it from Autopilot. 
1. If the device [is enrolled](#) in Intune, delete it from Microsoft Endpoint Manager. (This removes device records from Intune, Azure AD, and Autopilot).  

### Delete a device from Autopilot

To delete Autopilot devices that are not enrolled in Intune:

1. In Windows Autopilot, go to **Devices** → **Windows** → **Windows enrollment**.
1. Under Windows Autopilot Deployment Program, select **Devices**. 
1. Choose the device you want to delete, and then select **Delete**. Note that device deletion can take a few minutes to complete.

### Delete a device using Intune

To delete devices that are enrolled in Intune:

1. Delete the device from the [**All devices blade**](https://github.com/MicrosoftDocs/IntuneDocs/blob/main/intune/remote-actions/devices-wipe.md) in Microsoft Endpoint Manager: 
1. Sign in to the Microsoft Endpoint Manager admin center.
1. Select **Devices** → **All devices**. 
1. Choose the device you want to delete, and then select **Delete**.
1. Delete the device from Azure Active Directory: 
1. From the Azure portal, sign in to Azure Active Directory.
1. Select **Devices** → **Azure AD devices**. 
1. Follow the steps outlined in [Delete devices from the Azure Active Directory portal](https://docs.microsoft.com/en-us/mem/intune/remote-actions/devices-wipe).

:::image type="content" source="./image19.png" alt-text="Device and account deletion page in Azure Active Directory admin center" border="true":::