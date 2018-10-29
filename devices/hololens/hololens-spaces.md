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


## Frequently asked questions

**How does Wi-Fi data get used by HoloLens and where is the data stored?**

Wi-Fi fingerprint data (MAC address and signal strength) is stored locally to help correlate hologram locations and map sections stored within HoloLens’ database of known spaces. It’s secured locally, inaccessible to users, and never sent to Microsoft via the cloud or via telemetry.

**Does HoloLens need to be connected to the internet?**

No, internet connectivity is not required. The MAC addresses of access points within reach can be obtained without being connected or authenticated.
This also means that if Wi-Fi is disabled, the space search can still happen; HoloLens will need to search more of the map data within the spaces database, and finding holograms can take slightly longer. 

**Since HoloLens no longer requires you to select a space when Wi-Fi is disabled, how does it find the space automatically?**

HoloLens will visually compare the currently scanning data from the sensors to locally stored spaces in the entire spaces database.  It will locate holograms faster if the Wi-Fi fingerprint reference (same MAC address and signal strength) can be found, to narrow down the number of spaces to compare.

**How can I remove map data and known spaces from the HoloLens?**

There are two settings in **Settings > System > Spaces**: 

- Select **?** to delete nearby holograms, clearing the map data and anchored holograms for the current space
- Select **?** to delete all holograms, clearing all locally stored map data and anchored holograms.  

**Where is the database of map data stored and how can it be accessed or secured?**

The stored map data is located in the spaces database in the directory `u:\programdata\microsoft\spectrum\hup\head tracker`. The database is specially accessed by only the system components, with no user access via HoloLens or PC. When BitLocker is enabled, the database is encrypted as well. There is no way to access or download the entire set of map data from the spaces database.
 



## Related topics

- [Environment considerations for HoloLens](https://docs.microsoft.com/windows/mixed-reality/environment-considerations-for-hololens)
- [Spatial mapping design](https://docs.microsoft.com/windows/mixed-reality/spatial-mapping-design)
- [HoloLens and holograms: FAQ](https://support.microsoft.com/help/13456/hololens-and-holograms-faq)
