---
title: Cellular (Windows 10)
description: This section describes the Cellular settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 08/21/2017
---

# Cellular (Windows Configuration Designer reference)

Use to configure settings for cellular connections.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [AccountExperienceURL](#accountexperienceurl) | X |    |  |  |  |
| [AppID](#appid) | X |    |  |  |  |
| [NetworkBlockList](#networkblocklist) | X |    |  |  |  |
| [SIMBlockList](#simblocklist) | X |    |  |  |  |


To begin, enter a SIM integrated circuit card identifier (**SimIccid**), and click **Add**. In the **Customizations** pane, select the SimIccid that you just entered and configure the following settings for it.

## AccountExperienceURL

Enter the URL for the mobile operator's web page.

## AppID

Enter the AppID for the mobile operator's app in Microsoft Store.

## NetworkBlockList

Enter a comma-separated list of mobile country code (MCC) and mobile network code (MCC) pairs (MCC:MNC).

## SIMBlockList

Enter a comma-separated list of mobile country code (MCC) and mobile network code (MCC) pairs (MCC:MNC).