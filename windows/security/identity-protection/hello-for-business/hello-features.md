---
title: Windows Hello for Business Features
description: Consider additional features you can use after your organization deploys Windows Hello for Business. 
ms.assetid: 5BF09642-8CF5-4FBC-AC9A-5CA51E19387E
ms.reviewer: 
keywords: identity, PIN, biometric, Hello, passport, WHFB, Windows Hello, PIN Reset, Dynamic Lock, Multifactor Unlock, Forgot PIN, Privileged credentials
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: mapalko
ms.author: mapalko
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 11/27/2019
---
# Windows Hello for Business Features

**Applies to:**

- Windows 10

Consider these additional features you can use after your organization deploys Windows Hello for Business.

## Conditional access

Azure Active Directory provides a wide set of options for protecting access to corporate resources. Conditional access provides more fine grained control over who can access certain resources and under what conditions. For more information see [Conditional Access](hello-feature-conditional-access.md).

## Dynamic lock

Dynamic lock uses a paired Bluetooth device to determine user presence and locks the device if a user is not present. For more information and configuration steps see [Dynamic Lock](hello-feature-dynamic-lock.md). 

## PIN reset

Windows Hello for Business supports user self-management of their PIN. If a user forgets their PIN, they have the ability to reset it from Settings or the lock screen. The Microsoft PIN reset service can be used for completing this reset without the user needing to enroll a new Windows Hello for Business credential. For more information and configuration steps see [Pin Reset](hello-feature-pin-reset.md).

## Dual Enrollment

This feature enables provisioning of administrator Windows Hello for Business credentials that can be used by non-privileged accounts to perform administrative actions. These credentials can be used from the non-privileged accounts using **Run as different user** or **Run as administrator**. For more information and configuration steps see [Dual Enrollment](hello-feature-dual-enrollment.md).

## Remote Desktop

Users with Windows Hello for Business certificate trust can use their credential to authenticate to remote desktop sessions over RDP. When authenticating to the session, biometric gestures can be used if they are enrolled. For more information and configuration steps see [Remote Desktop](hello-feature-remote-desktop.md).

## Related topics

- [Windows Hello for Business](hello-identity-verification.md)
- [Manage Windows Hello for Business in your organization](hello-manage-in-organization.md)
- [Why a PIN is better than a password](hello-why-pin-is-better-than-password.md)
- [Prepare people to use Windows Hello](hello-prepare-people-to-use.md)
- [Windows Hello and password changes](hello-and-password-changes.md)
- [Windows Hello errors during PIN creation](hello-errors-during-pin-creation.md)
- [Event ID 300 - Windows Hello successfully created](hello-event-300.md)
- [Windows Hello biometrics in the enterprise](hello-biometrics-in-enterprise.md)
