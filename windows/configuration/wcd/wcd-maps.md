---
title: Maps (Windows 10)
description: This section describes the Maps settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.reviewer: 
manager: dansimp
---

# Maps (Windows Configuration Designer reference)

Use for settings related to Maps. 

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [ChinaVariantWin10](#chinavariantwin10) | X  | X | X |  |  |
| [UseExternalStorage](#useexternalstorage) | X  | X | X |  |  |
| [UseSmallerCache](#usesmallercache) | X  | X | X |  |  |


## ChinaVariantWin10

Use **ChinaVariantWin10** to specify that the Windows device is intended to ship in China. When set to **True**, maps approved by the State Bureau of Surveying and Mapping in China are used, which are obtained from a server located in China.

This customization may result in different maps, servers, or other configuration changes on the device.


## UseExternalStorage

Use to store map data on an SD card.

Map data is used by the Maps application and the map control for third-party applications. This data can be store on an SD card, which provides the advantage of saving internal memory space for user data and allows the user to download more offline map data. Microsoft recommends enabling the **UseExternalStorage** setting on devices that have less than 8 GB of user storage and an SD card slot.

You can use **UseExternalStorage** whether or not you include an SD card with preloaded map data on the phone. If set to **True**, the OS only allows the user to download offline maps when an SD card is present. If an SD card is not present, users can still view and cache maps, but they will not be able to download a region of offline maps until an SD card is inserted.

If set to **False**, map data will always be stored on the internal data partition of the device.

>[!NOTE]
>SD card performance can affect the quality of the Maps experience when maps are stored on the SD card. When an SD card is used, Microsoft recommends that you test the Maps experience and the speed of map downloads with the specific SD card part that will be used on retail phones to determine if performance is satisfactory.

## UseSmallerCache

Do not use.
