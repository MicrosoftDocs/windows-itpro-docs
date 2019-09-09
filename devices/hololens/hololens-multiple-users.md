---
title: Share HoloLens with multiple people (HoloLens)
description: You can configure HoloLens to be shared by multiple Azure Active Directory accounts.
ms.prod: hololens
ms.sitesec: library
author: scooley
ms.author: scooley
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Sharing a HoloLens with many people

It's common to share one HoloLens with many people or to have many people share a set of HoloLens.  This article talks about options for device sharing.

## Multiple users with unique accounts per person

A HoloLens device can be shared by multiple Azure Active Directory (Azure AD) accounts, each with their own user settings and user data on the device.

**Prerequisite**: The HoloLens device must be running Windows 10, version 1803 or later.  HoloLens (1st gen) also need to be [upgraded to Windows Holographic for Business](hololens1-upgrade-enterprise.md).

During setup, you must select **My work or school owns it** and sign in with an Azure AD account. After setup, ensure that **Other People** appears in **Settings** > **Accounts**.

Other people can use the HoloLens device by signing in with their Azure AD account credentials. To switch users, press the power button once to go to standby and then press the power button again to return to the lock screen, or select the user tile on the upper right of the pins panel to sign out the current user.  

>[!NOTE]
>Each subsequent user will need to perform [Calibration](hololens-calibration.md).

To see users on the device or to remove a user from the device, go to **Settings** > **Accounts** > **Other users**.

## Multiple people sharing a single account

Multiple users can also share a HoloLens device while using a single user account.

On HoloLens 2, when a user shares the device with another user (while keeping the same account signed in), the device prompts the new user to quickly calibrate and personalize the viewing experience. The device can store the calibration information so that in the future, the device can automatically optimize the quality and comfort of each user's viewing experience. The users do not need to calibrate the device again.
