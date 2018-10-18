---
title: Windows Autopilot Enrollment Status page 
description: Gives an overview of the enrollment status page capabilities, configuration
keywords: Autopilot Plug and Forget, Windows 10
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype:
ms.localizationpriority: medium
author: greg-lindsay
ms.author: greglin
ms.date: 06/01/2018
---

# Windows Autopilot Enrollment Status page

The Windows Autopilot Enrollment Status page displaying the status of the complete device configuration process.  Incorporating feedback from customers, this provides information to the user to show that the device is being set up and can be configured to prevent access to the desktop until the configuration is complete. 
 
 ![Enrollment Status Page](images/enrollment-status-page.png)

## Available settings

 The following settings can be configured:

 - Show app and profile installation progress.  When enabled, the Enrollment Status page is displayed.
 - Block device use until all apps and profiles are installed.  When enabled, the Enrollment Status page will be displayed until the device configuraton process is complete.  When not enabled, the user can dismiss the page at any time.
 - Allow users to reset device if installation errors occur.
 - Allow users to use device if installation errors occur.
 - Show error when installation takes longer than the specified number of minutes.
 - Show custom error message when an error occurs.
 - Allow users to collect logs about installation errors.

## Installation progresss tracked

The Enrollment Status page tracks a subset of the available MDM CSP policies that are delivered to the device as part of the complete device configuration process.  The specific types of policies that are tracked include:

- Certain types of app installations.
    - Enterprise modern apps (Appx/MSIX) installed by the [Enterprise Modern App Managment CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/enterprisemodernappmanagement-csp).
    - Enterprise desktop apps (single-file MSIs) installed by the [Enterprise Desktop App Management CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/enterprisedesktopappmanagement-csp).
- Certain device configuration policies.

Presently the following types of policies are not tracked:

- Intune Management Extensions PowerShell scripts.
- Office 365 ProPlus installations.
- System Center Configuration Manager apps, packages, and task sequences.

## For more information

For more information on configuring the Enrollment Status page, [see the Microsoft Intune documentation](https://docs.microsoft.com/en-us/intune/windows-enrollment-status).  For details about the underlying implementation, see the [FirstSyncStatus details in the DMClient CSP docuementation](https://docs.microsoft.com/en-us/windows/client-management/mdm/dmclient-csp).

