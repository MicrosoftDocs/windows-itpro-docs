---
title: Configure Autopilot profiles
description: How to configure Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greg-lindsay
ms.date: 12/12/2018
---

# Configure Autopilot profiles

**Applies to**

-   Windows 10

For each device that has been defined to the Windows Autopilot deployment service, a profile of settings needs to be applied to specify the exact behavior of that device when it is deployed. For detailed procedures on how to configure profile settings and register devices, see [Adding devices](add-devices.md#registering-devices).

>[!NOTE]
>When an Internet-connected Windows 10 device boots up, it will attempt to download an Autopilot profile. In Windows 10 version 1809 and later, the PC will re-fetch the profile after each reboot. In previous versions, the profile is downloaded once. To remove the currently cached local profile in Windows 10 version 1803 and earlier, it is necessary to re-generalize the OS using **sysprep /generalize /oobe**, reinstall the OS, or re-image the PC.

The following profile settings are available:

-   **Skip Cortana, OneDrive and OEM registration setup pages**. All devices registered with Autopilot will automatically skip these pages during the out-of-box experience (OOBE) process.

-   **Automatically setup for work or school**. All devices registered with Autopilot will automatically be considered work or school devices, so this question will not be asked during the OOBE process.

-   **Sign in experience with company branding**. Instead of presenting a generic Azure Active Directory sign-in page, all devices registered with Autopilot will automatically present a customized sign-in page with the organization’s name, logon, and additional help text, as configured in Azure Active Directory. See [Add company branding to your directory](https://docs.microsoft.com/azure/active-directory/customize-branding#add-company-branding-to-your-directory) to customize these settings.

-   **Skip privacy settings**. This optional Autopilot profile setting enables organizations to not ask about privacy settings during the OOBE process. This is typically desirable so that the organization can configure these settings via Intune or other management tool.

-   **Disable local admin account creation on the device**. Organizations can decide whether the user setting up the device should have administrator access once the process is complete.

-   **Skip End User License Agreement (EULA)**. Starting in Windows 10 version 1709, organizations can decide to skip the EULA page presented during the OOBE process. This means that organizations accept the EULA terms on behalf of their users.

-   **Disable Windows consumer features**. Starting in Windows 10 version 1803, organizations can disable Windows consumer features so that the device does not automatically install any additional Microsoft Store apps when the user first signs into the device. See the [MDM documentation](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-experience#experience-allowwindowsconsumerfeatures) for more details.
