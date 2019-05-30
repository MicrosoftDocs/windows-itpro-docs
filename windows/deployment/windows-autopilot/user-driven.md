---
title: Windows Autopilot User-Driven Mode
description: Canonical Autopilot scenario
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: dulcemontemayor
ms.date: 11/07/2018
ms.author: dolmont
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

- [Azure Active Directory join](user-driven-aad.md) is available if devices do not need to be joined to an on-prem Active Directory domain.
- [Hybrid Azure Active Directory join](user-driven-hybrid.md) is available for devices that must be joined to both Azure Active Directory and your on-prem Active Directory domain.

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
