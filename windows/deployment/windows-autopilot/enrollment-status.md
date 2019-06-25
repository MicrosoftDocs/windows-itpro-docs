---
title: Windows Autopilot Enrollment Status Page 
ms.reviewer: 
manager: laurawi
description: Gives an overview of the Enrollment Status Page capabilities, configuration
keywords: Autopilot Plug and Forget, Windows 10
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
ms.localizationpriority: medium
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot Enrollment Status Page

**Applies to**

-   Windows 10, version 1803 and later 

The Enrollment Status Page (ESP) displays the status of the complete device configuration process when an MDM managed user signs into a device for the very first time.  The ESP will help users understand the progress of device provisioning and ensures the device has met the organizations desired state before the user can access the desktop for the first time.

The ESP will track the installation of applications, security policies, certificates and network connections.  Within Intune, an administrator can deploy ESP profiles to a licensed Intune user and configure specific settings within the ESP profile; a few of these settings are: force the installation of specified applications, allow users to collect troubleshooting logs, specify what a user can do if device setup fails.  For more information, see how to set up the [Enrollment Status Page in Intune](https://docs.microsoft.com/intune/windows-enrollment-status).   
 
 ![Enrollment Status Page](images/enrollment-status-page.png)
 

## Installation progress tracking

The Enrollment Status Page tracks a subset of the available MDM CSP policies that are delivered to the device as part of the complete device configuration process.  The specific types of policies that are tracked include:

- Certain types of app installations.
    - Enterprise modern apps (Appx/MSIX) installed by the [Enterprise Modern App Management CSP](https://docs.microsoft.com/windows/client-management/mdm/enterprisemodernappmanagement-csp).
    - Enterprise desktop apps (single-file MSIs) installed by the [Enterprise Desktop App Management CSP](https://docs.microsoft.com/windows/client-management/mdm/enterprisedesktopappmanagement-csp).

- Certain device configuration policies. The following types of policies and installations are not tracked:

- Intune Management Extensions PowerShell scripts
- Office 365 ProPlus installations<sup>**</sup>
- System Center Configuration Manager apps, packages, and task sequences

<sup>**</sup>The ability to track Office 365 ProPlus installations was added with Windows 10, version 1809.<br>

## More information

For more information on configuring the Enrollment Status Page, see the [Microsoft Intune documentation](https://docs.microsoft.com/intune/windows-enrollment-status).<br>
For details about the underlying implementation, see the [FirstSyncStatus details in the DMClient CSP documentation](https://docs.microsoft.com/windows/client-management/mdm/dmclient-csp).<br>
For more information about blocking for app installation:
- [Blocking for app installation using Enrollment Status Page](https://blogs.technet.microsoft.com/mniehaus/2018/12/06/blocking-for-app-installation-using-enrollment-status-page/).
- [Support Tip: Office C2R installation is now tracked during ESP](https://techcommunity.microsoft.com/t5/Intune-Customer-Success/Support-Tip-Office-C2R-installation-is-now-tracked-during-ESP/ba-p/295514).
