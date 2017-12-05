---
title: Cellular (Windows 10)
description: This section describes the Cellular settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date:  10/17/2017
---

# Cellular (Windows Configuration Designer reference)

Use to configure settings for cellular connections.

>[!IMPORTANT]
>These settings are intended to be used only by manufacturers, mobile operators, and solution providers when configuring devices, and are not intended for use by administrators in the enterprise.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings | X |    |  |  |  |



To begin, enter a SIM integrated circuit card identifier (**SimIccid**), and click **Add**. In the **Customizations** pane, select the SimIccid that you just entered and configure the following settings for it.

## AccountExperienceURL

Enter the URL for the mobile operator's web page.

## AppID

Enter the AppID for the mobile operator's app in Microsoft Store.

## BrandingIcon

Browse to and select an .ico file.

## BrandingIconPath

Enter the destination path for the BrandingIcon .ico file.

## BrandingName

Enter the service provider name for the mobile operator.

## NetworkBlockList

Enter a comma-separated list of mobile country code (MCC) and mobile network code (MCC) pairs (MCC:MNC).

## SIMBlockList

Enter a comma-separated list of mobile country code (MCC) and mobile network code (MCC) pairs (MCC:MNC).


## UseBrandingNameOnRoaming

Select an option for displaying the BrandingName when the device is roaming.