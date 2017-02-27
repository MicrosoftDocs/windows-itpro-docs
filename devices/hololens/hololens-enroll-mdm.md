---
title: Enroll HoloLens in MDM (HoloLens)
description: Enroll HoloLens in mobile device management (MDM) for easier management of multiple devices.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerMS
localizationpriority: medium
---

# Enroll HoloLens in MDM

You can manage multiple Microsoft HoloLens devices simultaneously using solutions like Microsoft InTune. You will be able to manage settings, select apps to install and set security configurations tailored to your organization's need.

>[!NOTE]
>Mobile device management (MDM) for the Development edition of HoloLens does not include VPN, BitLocker, or kiosk mode. Those features are only available when you [upgrade to Windows Holographic for Business](hololens-upgrade-enterprise.md).


## Requirements
 Your organization will need to have mobile device management (MDM) set up in order to manage HoloLens devices. Your MDM provider can be Microsoft Intune or a 3rd party provider that uses Microsoft MDM APIs.

## Auto-enrollment in MDM 

If your organization uses Azure Active Directory (Azure AD) and an MDM solution that accepts an AAD token for authentication (currently, only supported in Microsoft Intune and Airwatch), your IT admin can configure Azure AD to automatically allow MDM enrollment after the user signs in with their Azure AD account. [Learn how to configure Azure AD enrollment.](https://docs.microsoft.com/intune/deploy-use/set-up-windows-device-management-with-microsoft-intune#azure-active-directory-enrollment) 

When auto-enrollment is enabled, no additional manual enrollment is needed. When the user signs in with an Azure AD account, the device is enrolled in MDM after completing the first-run experience.

## Enroll through Settings app

 When the device is not enrolled in MDM during the first-run experience, the user can manually enroll the device with the organization's MDM server using the Settings app.
 
1. Go to **Settings** > **Accounts** > **Work access**.

2. Select **Enroll into device management** and enter your organizational account. You will be redirected to your organization's sign in page.

4. Upon successful authentication to the MDM server, a success message is shown.

Your device is now enrolled with your MDM server. The device will need to restart to acquire policies, certificates, and apps. The Settings app will now reflect that the device is enrolled in device management.