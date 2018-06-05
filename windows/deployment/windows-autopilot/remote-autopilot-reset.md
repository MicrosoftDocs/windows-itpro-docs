---
title: Reset devices with Remote Autopilot Reset (Preview)
description: Gives an overview of Remote Autopilot Reset and how to use it.
keywords: Autopilot Reset, Windows 10
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

# Reset devices with Remote Autopilot Reset (Preview)

**Applies to: Windows 10** 

Windows Autopilot Reset removes personal files, apps, and settings and reapplies a device’s original settings, maintaining its identity connection to Azure AD and its management connection to Intune so that the device is once again ready for use. Windows Autopilot Reset takes the device back to a business-ready state, allowing the next user to sign in and get productive quickly and simply. 
 
Once either local or remote Windows Autopilot Reset is complete, the device can automatically: 
 
Set the region, language, and keyboard. 
Connect to Wi-Fi. 
Apply a new provisioning package (if a provisioning package is inserted via USB when Windows Autopilot Reset is triggered), or reapply the original provisioning package to the device. 
Return to a known, good, managed state, connected to Azure AD and MDM. 
Block the user from accessing the desktop until all provisioning package policies have been applied. If MDM is set up, Windows Autopilot Reset will block the user from the desktop until a successful MDM sync is complete. 
To enable a device for remote Windows Autopilot Reset, the device must be MDM managed, joined to an Azure AD tenant, and configured to use the Enrollment Status Page. Instructions for triggering remote Windows Autopilot Reset via Intune are as follows:  
 
Navigate to **Devices** tab in the Intune console. 
In the **All devices** view, select the targeted reset devices and then click **More** to view device actions. 
Select **Autopilot Reset** to kick-off the reset task. 
 