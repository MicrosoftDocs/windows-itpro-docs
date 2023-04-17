---
title: Maps (Windows 10)
description: This section describes the Maps settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: windows-client
author: aczechowski
ms.localizationpriority: medium
ms.author: aaroncz
ms.topic: article
ms.reviewer: 
manager: dougeby
ms.technology: itpro-configure
ms.date: 12/31/2017
---

# Maps (Windows Configuration Designer reference)

Use for settings related to Maps. 

## Applies to

| Setting   | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: |
| [ChinaVariantWin10](#chinavariantwin10) | ✔️  | ✔️ |  |  |
| [UseExternalStorage](#useexternalstorage) | ✔️  | ✔️ |  |  |
| [UseSmallerCache](#usesmallercache) | ✔️  | ✔️ |  |  |


## ChinaVariantWin10

Use **ChinaVariantWin10** to specify that the Windows device is intended to ship in China. When set to **True**, maps approved by the State Bureau of Surveying and Mapping in China are used. These maps are obtained from a server located in China.

This customization may result in different maps, servers, or other configuration changes on the device.


## UseExternalStorage

Use to store map data on an SD card.

Map data is used by the Maps application and the map control for third-party applications. This data can be store on an SD card, which provides the advantage of saving internal memory space for user data and allows the user to download more offline map data. Microsoft recommends enabling the **UseExternalStorage** setting on devices that have less than 8 GB of user storage and an SD card slot.

You can use **UseExternalStorage** whether or not you include an SD card with preloaded map data on the phone. If set to **True**, the OS only allows the user to download offline maps when an SD card is present. If no SD card is present, users can view and cache maps, but they can't download a region of offline maps until an SD card is inserted.

If set to **False**, map data will always be stored on the internal data partition of the device.

>[!NOTE]
>SD card performance can affect the quality of the Maps experience when maps are stored on the SD card. When an SD card is used, Microsoft recommends that you test the Maps experience and the speed of map downloads with the specific SD card part that will be used on retail phones to determine if performance is satisfactory.

## UseSmallerCache

Don't use this setting.
