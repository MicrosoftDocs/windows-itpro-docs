---
title: Windows Autopilot Self-Deploying mode (Preview) 
description: Gives an overview of Autopilot Plug and Forget and how to use it.
keywords: Autopilot Plug and Forget, Windows 10
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype:
ms.localizationpriority: high
author: coreyp-at-msft
ms.author: coreyp
ms.date: 06/01/2018
---

# Windows Autopilot Enrollment Status page

The Windows Autopilot Enrollment Status page displaying the status of the complete device configuration process.  Incorporating feedback from customers, this provides information to the user to show that the device is being set up and can be configured to prevent access to the desktop until the configuration is complete. 
 
 ![Enrollment Status Page](images/enrollment-status-page.png)
 
We have also improved the mechanism for assigning Windows Autopilot profiles in Microsoft Intune.  Now, you can create groups of devices in Azure AD and then assign a Windows Autopilot profile to those groups – Intune will automatically assign the profile to all devices in the group.  Combined with dynamic device groups in Azure AD, you can completely automate the profile assignment process.  For example, you could create a dynamic group containing all Windows Autopilot devices (which can contain devices added by an OEM or partner, or devices that you uploaded yourself), or a group containing all devices from a particular purchase order. 
 
We have also made sure that the “Consumer Features” setting (configured in Intune in the Windows Spotlight device restriction category) is applied before the user first signs on, to ensure no additional apps are installed when the user is automatically signed in as part of the Windows Autopilot device provisioning process. 
 