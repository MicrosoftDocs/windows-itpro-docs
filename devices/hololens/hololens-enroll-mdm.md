---
title: Enroll HoloLens in MDM
description: Enroll HoloLens in mobile device management (MDM) for easier management of multiple devices.
ms.prod: hololens
ms.sitesec: library
ms.assetid: 2a9b3fca-8370-44ec-8b57-fb98b8d317b0
author: scooley
ms.author: scooley
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/15/2019
ms.reviewer: 
manager: laurawi
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Enroll HoloLens in MDM

You can manage multiple Microsoft HoloLens devices simultaneously using solutions like [Microsoft Intune](https://docs.microsoft.com/intune/windows-holographic-for-business). You will be able to manage settings, select apps to install and set security configurations tailored to your organization's need. See [Manage devices running Windows Holographic with Microsoft Intune](https://docs.microsoft.com/intune/windows-holographic-for-business), the [configuration service providers (CSPs) that are supported in Windows Holographic](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/configuration-service-provider-reference#hololens), and the [policies supported by Windows Holographic for Business](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#hololenspolicies).

> [!NOTE]
> Mobile device management (MDM), including the VPN, Bitlocker, and kiosk mode features, is only available when you [upgrade to Windows Holographic for Business](hololens1-upgrade-enterprise.md).

## Requirements

 Your organization will need to have Mobile Device Management (MDM) set up in order to manage HoloLens devices. Your MDM provider can be Microsoft Intune or a 3rd party provider that uses Microsoft MDM APIs.

## Auto-enrollment in MDM

If your organization uses Azure Active Directory (Azure AD) and an MDM solution that accepts an AAD token for authentication (currently, only supported in Microsoft Intune and AirWatch), your IT admin can configure Azure AD to automatically allow MDM enrollment after the user signs in with their Azure AD account. [Learn how to configure Azure AD enrollment.](https://docs.microsoft.com/mem/intune/enrollment/windows-enroll#enable-windows-10-automatic-enrollment)

When auto-enrollment is enabled, no additional manual enrollment is needed. When the user signs in with an Azure AD account, the device is enrolled in MDM after completing the first-run experience.

## Enroll through Settings app

 When the device is not enrolled in MDM during the first-run experience, the user can manually enroll the device with the organization's MDM server using the Settings app.

1. Go to **Settings** > **Accounts** > **Work access**.
1. Select **Enroll into device management** and enter your organizational account. You will be redirected to your organization's sign in page.
1. Upon successful authentication to the MDM server, a success message is shown.

Your device is now enrolled with your MDM server. The Settings app will now reflect that the device is enrolled in device management.

## Unenroll HoloLens from Intune

You cannot [unenroll](https://docs.microsoft.com/intune-user-help/unenroll-your-device-from-intune-windows) HoloLens from Intune remotely. If the administrator unenrolls the device using MDM, the device will age out of the Intune dashboard.
