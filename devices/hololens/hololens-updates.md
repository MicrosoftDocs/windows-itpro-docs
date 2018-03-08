---
title: Manage updates to HoloLens (HoloLens)
description: Administrators can use mobile device management to manage updates to HoloLens devices.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerms
ms.localizationpriority: medium
ms.date: 04/01/2018
---

# Manage updates to HoloLens

Windows 10, version 1803, is the first feature update to Windows Holographic for Business since its release in Windows 10, version 1607. As with desktop devices, administrators can manage updates to the HoloLens operating system using [Windows Update for Business](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wufb).

## Use MDM policies to manage updates

mobile device management (MDM)

## Use Windows Server Update Service to update HoloLens

Windows Server Update Service (WSUS)

## sandbox

For HoloLens, customers would configure update deferral settings in a general config policy and create a custom profile to point them to the WSUS server.

WSUS is not directly supported by Intune since Intune is pushing WUFB. You would need to go to the Custom OMA-DM URI route to set those unsupported policies as @Alvin Chardon descirbes below. 

Below is policies HL supports and the mechanism you need to use in Intune.
•	Update/AllowAutoUpdate – directly supported in UI. Software Updates > Windows 10 Update Rings > Automatic update behavior
•	Update/AllowUpdateService  - Custom OMA-DM URI 
•	Update/RequireDeferUpgrade  -- directly supported in UI. Software Updates > Windows 10 Update Rings > Servicing channel
•	Update/RequireUpdateApproval -- Custom OMA-DM URI
•	Update/UpdateServiceUrl Custom OMA-DM URI

MDM can defer the update directly from Windows Update by setting Servicing Channel to semi-annual (not targeted).

Here is the general Intune documentation for Microsoft Update for Business:
https://docs.microsoft.com/en-us/intune/windows-update-for-business-configure

Here is the Holographic-specific section of that article naming what features are supported:
https://docs.microsoft.com/en-us/intune/windows-update-for-business-configure#windows-holographic-for-business-support 

For the settings Intune doesn’t offer UI, including WSUS, we recommended setting them through Custom OMA-DM Uris:
https://docs.microsoft.com/en-us/intune/custom-settings-windows-holographic 

link dump:
https://docs.microsoft.com/en-us/intune/windows-update-for-business-configure
https://docs.microsoft.com/en-us/windows/deployment/update/waas-manage-updates-wufb
https://docs.microsoft.com/en-us/intune/custom-settings-windows-holographic
