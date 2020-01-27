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

# Licenses Required for Mixed Reality Deployment

If you plan on using a Mobile Device Management system (MDM) to manage your HoloLens, please review the MDM License Guidance section.

## Mobile Device Management (MDM) Licenses Guidance

If you plan on using an MDM other than Intune, an [Azure Active Directory Licenses](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-whatis) is required.

If you plan on using Intune as your MDM, you can acquire an [Enterprise Mobility + Security (EMS) suite (E3 or E5) licenses](https://www.microsoft.com/microsoft-365/enterprise-mobility-security/compare-plans-and-pricing). **Please note that Azure AD is included in both suites.** 

## Identify the licenses needed for your scenario and products

### Remote Assist License Requirements
Make sure you have the required licensing and device. Updated licensing and product requirements can be found [here](https://docs.microsoft.com/dynamics365/mixed-reality/remote-assist/requirements).

1.	[Remote Assist License](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-whatis)
1.	[Teams Freemium/Teams](https://products.office.com/microsoft-teams/free)
1.	[Azure Active Directory (Azure AD) License](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-whatis)

### Guides License Requirements
Updated licensing and device requirements can be found [here](https://docs.microsoft.com/dynamics365/mixed-reality/guides/requirements).

1.	[Azure Active Directory (Azure AD) License](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-whatis)
1.	[Power BI](https://powerbi.microsoft.com/desktop/)
1.	[Guides](https://docs.microsoft.com/dynamics365/mixed-reality/guides/setup)

### Scenario 1: Kiosk Mode
If you are not planning to use an MDM to manage your device and you are planning to use a local account or an MSA as the login identity, you will not need any additional licenses. Kiosk mode can be accomplished using a provisioning packages.

1.	If you are **not** planning to use an MDM to manage your device and you are planning to use a local account or an MSA as the login identity, you will not need any additional licenses. Kiosk mode can be accomplished using a provisioning packages.
1.	If you are planning to use an MDM other than Intune, your MDM provider will have steps on configuring Kiosk mode. 
1. If you are planning to use **Intune** as your MDM, implementation directions can be found in [Configuring your Network for HoloLens]().
