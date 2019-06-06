---
title: Share HoloLens with multiple people (HoloLens)
description: You can configure HoloLens to be shared by multiple Azure Active Directory accounts.
ms.prod: hololens
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# Share HoloLens with multiple people


A HoloLens device can be shared by multiple Azure Active Directory (Azure AD) accounts, each with their own user settings and user data on the device.

**Prerequisite**: The HoloLens device must be running Windows 10, version 1803, and be [upgraded to Windows Holographic for Business](hololens-upgrade-enterprise.md).

During setup, you must select **My work or school owns it** and sign in with an Azure AD account. After setup, ensure that **Other People** appears in **Settings** > **Accounts**.

Other people can use the HoloLens device by signing in with their Azure AD account credentials. To switch users, press the power button once to go to standby and then press the power button again to return to the lock screen, or select the user tile on the upper right of the pins panel to sign out the current user.  

>[!NOTE] 
>Each subsequent user will need to perform [Calibration](https://developer.microsoft.com/windows/mixed-reality/calibration) in order to set their correct interpupillary distance (PD) for the device while signed in.

To see users on the device or to remove a user from the device, go to **Settings** > **Accounts** > **Other users**.
 

 

