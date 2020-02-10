---
title: Licenses for Mixed Reality Deployment
description: 
ms.prod: hololens
ms.sitesec: library
author: pawinfie
ms.author: pawinfie
audience: ITPro
ms.topic: article
ms.localizationpriority: high
ms.date: 1/23/2020
ms.reviewer: 
manager: bradke
appliesto:
- HoloLens (1st gen)
- HoloLens 2
---

# Determine what licenses you need

## Mobile Device Management (MDM) Licenses Guidance

If you plan on managing your HoloLens devices, you will need Azure AD and an MDM. Active Director (AD) cannot be used to manage HoloLens devices.
If you plan on using an MDM other than Intune, an [Azure Active Directory Licenses](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-whatis) is required.
If you plan on using Intune as your MDM, you can acquire an [Enterprise Mobility + Security (EMS) suite (E3 or E5) licenses](https://www.microsoft.com/microsoft-365/enterprise-mobility-security/compare-plans-and-pricing). **Please note that Azure AD is included in both suites.**

## Identify the licenses needed for your scenario and products

### HoloLens Licenses Requirements

You may need to upgrade your HoloLens 1st Gen Device to Windows Holographic for Business. (See [HoloLens commercial features](holoLens-commercial-features.md#feature-comparison-between-editions) to determine if you need to upgrade).

 If so, you will need to do the following:

- Acquire a HoloLens Enterprise license XML file
- Apply the XML file to the HoloLens. You can do this through a [Provisioning package](hololens-provisioning.md) or through your [Mobile Device Manager](https://docs.microsoft.com/en-us/intune/configuration/holographic-upgrade)

Some of the HoloLens configurations you can apply in a provisioning package:

- Apply certificates to the device
- Set up a Wi-Fi connection
- Pre-configure out of box questions like language and locale
- (HoloLens 2) bulk enroll in mobile device management
- (HoloLens v1) Apply key to enable Windows Holographic for Business

Follow [this guide](hololens-provisioning.md) to create and apply a provisioning package to HoloLens.

### Remote Assist License Requirements

Make sure you have the required licensing and device. Updated licensing and product requirements can be found [here](https://docs.microsoft.com/dynamics365/mixed-reality/remote-assist/requirements).

1. [Remote Assist License](https://docs.microsoft.com/dynamics365/mixed-reality/remote-assist/buy-and-deploy-remote-assist)
1. [Teams Freemium/Teams](https://products.office.com/microsoft-teams/free)
1. [Azure Active Directory (Azure AD) License](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-whatis)

### Guides License Requirements

Updated licensing and device requirements can be found [here](https://docs.microsoft.com/dynamics365/mixed-reality/guides/requirements).

1. [Azure Active Directory (Azure AD) License](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-whatis)
1. [Power BI](https://powerbi.microsoft.com/desktop/)
1. [Guides](https://docs.microsoft.com/dynamics365/mixed-reality/guides/setup)

### Scenario 1: Kiosk Mode

1. If you are **not** planning to manage your device and you are planning to use a local account or an MSA as the login identity, you will not need any additional licenses. Kiosk mode can be accomplished using a provisioning packages.
1. If you are planning to use an MDM to implement Kiosk mode, you will need an [Azure Active Directory (Azure AD) License](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-whatis).

Additional information regarding kiosk mode will be covered in [Configuring your Network for HoloLens](hololens-commercial-infrastructure.md#how-to-configure-kiosk-mode-using-microsoft-intune).

## Next Step: [Configure your network for HoloLens](hololens-commercial-infrastructure.md)