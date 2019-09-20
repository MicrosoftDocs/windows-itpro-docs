---
title: Start (Windows 10)
description: This section describes the Start settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
ms.reviewer: 
manager: dansimp
---

# Start (Windows Configuration Designer reference)

Use Start settings to apply a customized Start screen to devices.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| StartLayout | X  | X |  |  |  |
| StartLayoutFilePath |   | X |  |  |  |

>[!IMPORTANT]
>The StartLayout setting is available in the advanced provisioning for Windows 10 desktop editions, but should only be used to apply a layout to Windows 10 Mobile devices. For desktop editions, use [Policies > StartLayout](wcd-policies.md#start).

## StartLayout

Use StartLayout to select the `LayoutModification.xml` file that applies a customized Start screen to a mobile device.

>[!NOTE]
>The XML file that defines the Start layout for Windows 10 Mobile must be named `LayoutModification.xml`.

For more information, see [Start layout XML for mobile editions of Windows 10](../mobile-devices/lockdown-xml.md)).

## StartLayoutFilePath

Do not use.
