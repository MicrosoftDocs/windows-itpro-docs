---
title: OtherAssets (Windows 10)
description: This section describes the OtherAssets settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
---

# OtherAssets (Windows Configuration Designer reference)

Use to configure settings for Map data.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| MapData |   | X |  |  |  |

Use **MapData** to specify the source directory location of the map region you want to include.

For example, if C:\Path\Maps\Europe contains the downloaded map data that you want to preload, set the value to that directory. 

To add additional maps, add a new MapData setting and set the source to the directory location of the map region you want to include.
