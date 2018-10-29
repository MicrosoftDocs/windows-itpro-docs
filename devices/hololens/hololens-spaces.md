---
title: How HoloLens stores data for spaces (HoloLens)
description: 
ms.prod: hololens
ms.sitesec: library
author: jdeckerms
ms.author: jdecker
ms.topic: article
ms.localizationpriority: medium
ms.date: 10/23/2018
---

# How HoloLens stores data for spaces

In the Windows 10, version 1803 update for Microsoft HoloLens, the mapping data for [spaces](https://support.microsoft.com/help/13760/hololens-spaces-on-hololens) is stored in a local database. (Previously, spaces were correlated to a Wi-Fi network SSID and saved separately.)

The map database is stored securely, with access only available to the internal system. The database is never available to a user of the device, even when plugged into a PC or when using the File Explorer app. When BitLocker is enabled, the stored map data is also encrypted.





## Related topics

- [Environment considerations for HoloLens](https://docs.microsoft.com/windows/mixed-reality/environment-considerations-for-hololens)
- [Spatial mapping design](https://docs.microsoft.com/windows/mixed-reality/spatial-mapping-design)
- [HoloLens and holograms: FAQ](https://support.microsoft.com/help/13456/hololens-and-holograms-faq)
