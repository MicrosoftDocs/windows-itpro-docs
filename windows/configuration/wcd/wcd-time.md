---
title: Time (Windows 10)
description: This section describes the Time settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
manager: dansimp
ms.topic: article
---

# Time

Use **Time** to configure settings for time zone setup for Windows 10, version (TBD) and later. 

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [ProvisionSetTimeZone](#provisionsettimezone) | X  |  |  |  |  |

## ProvisionSetTimeZone

Set to **True** to skip time zone assignment when the first user signs in, in which case the device will remain in its default time zone. For the proper configuration, you should also use **Policies > TimeLanguageSettings > ConfigureTimeZone** to set the default time zone.

>[!TIP]
>Configuring a time zone in **Policies > TimeLanguageSettings > ConfigureTimeZone** accomplishes the same purpose as setting **ProvisionSetTimeZone** to **True**, so you don't need to configure both settings.

Set to **False** for time zone assignment to occur when the first user signs in. The user will be prompted to select a time zone during first sign-in.

>[!NOTE]
>Do not set **Time > ProvisionSetTimeZone** to **False** and also set a time zone in **Policies > TimeLanguageSettings > ConfigureTimeZone**.



