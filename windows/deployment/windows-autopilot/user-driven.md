---
title: Windows Autopilot User-Driven Mode
description: Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.reviewer: mniehaus
manager: laurawi
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot user-driven mode

Windows Autopilot user-driven mode is designed to enable new Windows 10 devices to be transformed from their initial state, directly from the factory, into a ready-to-use state without requiring that IT personnel ever touch the device.  The process is designed to be simple so that anyone can complete it, enabling devices to be shipped or distributed to the end user directly with simple instructions:

-   Unbox the device, plug it in, and turn it on.
-   Choose a language, locale and keyboard.
-   Connect it to a wireless or wired network with internet access.
-   Specify your e-mail address and password for your organization account.

After completing those simple steps, the remainder of the process is completely automated, with the device being joined to the organization, enrolled in Intune (or another MDM service), and fully configured as defined by the organization.  Any additional prompts during the Out-of-Box Experience (OOBE) can be supressed; see [Configuring Autopilot Profiles](profiles.md) for options that are available.

Today, Windows Autopilot user-driven mode supports joining devices to Azure Active Directory.  Support for Hybrid Azure Active Directory Join (with devices joined to an on-premises Active Directory domain) will be available in a future Windows 10 release.  See [Introduction to device management in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/device-management-introduction) for more information about the differences between these two join options.

## Available user-driven modes

The following options are available for user-driven deployment:

- [Azure Active Directory join](#user-driven-mode-for-azure-active-directory-join) is available if devices do not need to be joined to an on-prem Active Directory domain.
- [Hybrid Azure Active Directory join](#user-driven-mode-for-hybrid-azure-active-directory-join) is available for devices that must be joined to both Azure Active Directory and your on-prem Active Directory domain.

### User-driven mode for Azure Active Directory join

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

Also see the [Validation](#validation) section below.

### User-driven mode for hybrid Azure Active Directory join

Windows Autopilot requires that devices be Azure Active Directory joined. If you have an on-premises Active Directory environment and want to also join devices to your on-premises domain, you can accomplish this by configuring Autopilot devices to be [hybrid Azure Active Directory (AAD) joined](https://docs.microsoft.com/azure/active-directory/devices/hybrid-azuread-join-plan).  

#### Requirements

To perform a user-driven hybrid AAD joined deployment using Windows Autopilot:

- A Windows Autopilot profile for user-driven mode must be created and 
    - **Hybrid Azure AD joined** must be specified as the selected option under **Join to Azure AD as** in the Autopilot profile.
- If using Intune, a device group in Azure Active Directory must exist with the Windows Autopilot profile assigned to that group.
- The device must be running Windows 10, version 1809 or later.
- The device must be able to access an Active Directory domain controller, so it must be connected to the organization's network (where it can resolve the DNS records for the AD domain and the AD domain controller, and communicate with the domain controller to authenticate the user).
- The device must be able to access the Internet, following the [documented Windows Autopilot network requirements](windows-autopilot-requirements.md).
- The Intune Connector for Active Directory must be installed.
    - Note: The Intune Connector will perform an on-prem AD join, therefore users do not need on-prem AD-join permission, assuming the Connector is [configured to perform this action](https://docs.microsoft.com/intune/windows-autopilot-hybrid#increase-the-computer-account-limit-in-the-organizational-unit) on the user's behalf. 
- If using Proxy, WPAD Proxy settings option must be enabled and configured.

**AAD device join**: The hybrid AAD join process uses the system context to perform device AAD join, therefore it is not affected by user based AAD join permission settings. In addition, all users are enabled to join devices to AAD by default.

#### Step by step instructions

See [Deploy hybrid Azure AD joined devices using Intune and Windows Autopilot](https://docs.microsoft.com/intune/windows-autopilot-hybrid).

Also see the **Validation** section in the [Windows Autopilot user-driven mode](user-driven.md) topic. 

## Validation

When performing a user-driven deployment using Windows Autopilot, the following end-user experience should be observed:

-   If multiple languages are preinstalled in Windows 10, the user must pick a language.
-   The user must pick a locale and a keyboard layout, and optionally a second keyboard layout.
-   If connected via Ethernet, no network prompt is expected.  If no Ethernet connection is available and Wi-fi is built in, the user needs to connect to a wireless network.
-   Once connected to a network, the Autopilot profile will be downloaded.
-   Windows 10 will check for critical OOBE updates, and if any are available they will be automatically installed (rebooting if required).
-   The user will be prompted for Azure Active Directory credentials, with a customized user experience showing the Azure AD tenant name, logo, and sign-in text.
-   Once correct credentials have been entered, the device will join Azure Active Directory.
-   After joining Azure Active Directory, the device will enroll in Intune (or other configured MDM services).
-   If configured, the [enrollment status page](enrollment-status.md) will be displayed.
-   Once the device configuration tasks have completed, the user will be signed into Windows 10 using the credentials they previously provided.
-   Once signed in, the enrollment status page will again be displayed for user-targeted configuration tasks.

In case the observed results do not match these expectations, consult the [Windows Autopilot Troubleshooting](troubleshooting.md) documentation.
