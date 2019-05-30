---
title: How HoloLens stores data for spaces (HoloLens)
description: 
ms.prod: hololens
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 11/05/2018
---

# How HoloLens stores data for spaces

In the Windows 10, version 1803 update for Microsoft HoloLens, the mapping data for [spaces](https://support.microsoft.com/help/13760/hololens-spaces-on-hololens) is stored in a local database. 

The map database is not exposed to a user of the device, even when plugged into a PC or when using the File Explorer app. When BitLocker is enabled, the stored map data is also encrypted with the entire volume.

Holograms that are anchored within the same map section are considered to be “nearby” in the current space.


## Frequently asked questions

**How can I remove map data and known spaces from the HoloLens?**

There are two options for deleting map data in **Settings > System > Holograms**: 

- Select **Remove nearby holograms** to delete nearby holograms, clearing the map data and anchored holograms for the current space. A brand new map section would be created and stored in the database for that location while the device is used there. This option can be used to clear the map data for work without affecting any map data from home, for example.
- Select **Remove all holograms** to delete all holograms, clearing all locally stored map data and anchored holograms. No holograms will be rediscovered and any holograms need to be newly placed.

>[!NOTE]
>When you remove nearby or all holograms, HoloLens immediately starts scanning and mapping the current space.

**How does Wi-Fi data get used by HoloLens and where is the data stored?**

As long as Wi-Fi is enabled, map data will be correlated with nearby Wi-Fi access points. There is no difference in behavior if a network is connected or just nearby. Network characteristics are not sent to Microsoft, and all Wi-Fi references are kept local on the HoloLens.

Wi-Fi characteristics are stored locally to help correlate hologram locations and map sections stored within HoloLens’ database of known spaces. It’s inaccessible to users, and not sent to Microsoft via the cloud or via telemetry.



**Does HoloLens need to be connected to the internet?**

No, internet connectivity is not required. Observed Wi-Fi access points are obtained without being connected or authenticated. It does not change functionality if the access points are internet connected or intranet/local only.





**Since HoloLens no longer requires you to select a space when Wi-Fi is disabled, how does it find the space automatically?**

If Wi-Fi is disabled, the space search can still happen; HoloLens will need to search more of the map data within the spaces database, and finding holograms can take longer. 

HoloLens will sense and remember spaces even when Wi-Fi is disabled, by securely storing the sensor data when holograms are placed. Without the Wi-Fi info, the space and holograms may be slower to recognize at a later time, as the HoloLens needs to compare active scans to all hologram anchors and map sections stored on the device in order to locate the correct portion of the map.

HoloLens will visually compare the current scanning data from the sensors to locally stored map sections in the entire spaces database.  It will locate holograms faster if the Wi-Fi characteristics can be found, to narrow down the number of spaces to compare.




 



## Related topics

- [Environment considerations for HoloLens](https://docs.microsoft.com/windows/mixed-reality/environment-considerations-for-hololens)
- [Spatial mapping design](https://docs.microsoft.com/windows/mixed-reality/spatial-mapping-design)
- [HoloLens and holograms: FAQ](https://support.microsoft.com/help/13456/hololens-and-holograms-faq)
