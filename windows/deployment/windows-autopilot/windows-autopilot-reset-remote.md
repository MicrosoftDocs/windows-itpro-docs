---
title: Reset devices with remote Autopilot Reset (Preview)
ms.reviewer: 
manager: dansimp
description: Gives an overview of remote Autopilot Reset and how to use it.
keywords: Autopilot Reset, Windows 10
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype:
ms.localizationpriority: medium
author: dulcemontemayor
ms.author: dolmont
ms.collection: M365-modern-desktop
ms.topic: article
---


# Reset devices with remote Windows Autopilot Reset (Preview)

**Applies to: Windows 10, build 17672 or later**

When performing a remote Windows Autopilot Reset, an MDM service such an Microsoft Intune can be used to initiate the reset process, avoiding the need for IT staff or other administrators to visit each machine to initiate the process.

To enable a device for a remote Windows Autopilot Reset, the device must be MDM managed and joined to Azure AD. This feature is not supported on devices that were enrolled using [Autopilot self deploying mode](self-deploying.md).

## Triggering a remote Windows Autopilot Reset

To trigger a remote Windows Autopilot Reset via Intune, follow these steps:
 
-   Navigate to **Devices** tab in the Intune console. 
-   In the **All devices** view, select the targeted reset devices and then click **More** to view device actions. 
-   Select **Autopilot Reset** to kick-off the reset task. 

>[!NOTE]
>The Autopilot Reset option will not be enabled in Microsoft Intune for devices not running Windows 10 build 17672 or higher.

>[!IMPORTANT]
>The feature for Autopilot Reset (preview) will stay grayed out, **unless** you reset the device using Autopilot (either using Fresh Reset or manually sysprep the device).

Once the reset is complete, the device is again ready for use.
 
