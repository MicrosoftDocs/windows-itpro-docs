---
title: Hybrid AAD Join
ms.reviewer: 
manager: dansimp
description: Listing of Autopilot scenarios
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: low
ms.sitesec: library
ms.pagetype: deploy
author: dulcemontemayor
ms.author: dolmont
ms.collection: M365-modern-desktop
ms.topic: article
---



# Windows Autopilot user-driven mode for hybrid Azure Active Directory join

**Applies to: Windows 10**

Windows Autopilot requires that devices be Azure Active Directory joined. If you have an on-premises Active Directory environment and want to also join devices to your on-premises domain, you can accomplish this by configuring Autopilot devices to be [hybrid Azure Active Directory (AAD) joined](https://docs.microsoft.com/azure/active-directory/devices/hybrid-azuread-join-plan).  

## Requirements

To perform a user-driven hybrid AAD joined deployment using Windows Autopilot:

- A Windows Autopilot profile for user-driven mode must be created and 
    - **Hybrid Azure AD joined** must be specified as the selected option under **Join to Azure AD as** in the Autopilot profile.
- If using Intune, a device group in Azure Active Directory must exist with the Windows Autopilot profile assigned to that group.
- The device must be running Windows 10, version 1809 or later.
- The device must be able to access an Active Directory domain controller, so it must be connected to the organization's network (where it can resolve the DNS records for the AD domain and the AD domain controller, and communicate with the domain controller to authenticate the user).
- The device must be able to access the Internet, following the [documented Windows Autopilot network requirements](windows-autopilot-requirements-network.md).
- The Intune Connector for Active Directory must be installed.
    - Note: The Intune Connector will perform an on-prem AD join, therefore users do not need on-prem AD-join permission, assuming the Connector is [configured to perform this action](https://docs.microsoft.com/intune/windows-autopilot-hybrid#increase-the-computer-account-limit-in-the-organizational-unit) on the user's behalf. 
- If using Proxy, WPAD Proxy settings option must be enabled and configured.

**AAD device join**: The hybrid AAD join process uses the system context to perform device AAD join, therefore it is not affected by user based AAD join permission settings. In addition, all users are enabled to join devices to AAD by default.

## Step by step instructions

See [Deploy hybrid Azure AD joined devices using Intune and Windows Autopilot](https://docs.microsoft.com/intune/windows-autopilot-hybrid).

Also see the **Validation** section in the [Windows Autopilot user-driven mode](user-driven.md) topic. 
