---
title: Map physical spaces with HoloLens
description: HoloLens learns what a space looks like over time. Users can facilitate this process by moving the HoloLens in certain ways through the space.
ms.assetid: bd55ecd1-697a-4b09-8274-48d1499fcb0b
author: dorreneb
ms.author: dobrown
ms.custom: 
- CI 111456
- CSSTroubleshooting
ms.date: 09/16/2019
keywords: hololens, Windows Mixed Reality, design, spatial mapping, HoloLens, surface reconstruction, mesh, head tracking, mapping
ms.prod: hololens
ms.sitesec: library
ms.topic: article
ms.localizationpriority: high
appliesto:
- HoloLens 1 (1st gen)
- HoloLens 2
---

# Map physical spaces with HoloLens

HoloLens blends holograms with your physical world. To do that, HoloLens has to learn about the physical world around you and remember where you place holograms within that space.

Over time, the HoloLens builds up a *spatial map* of the environment that it has seen.  HoloLens updates the map as the environment changes. As long as you are logged in and the device is turned on, HoloLens creates and updates your spatial maps. If you hold or wear the device with the cameras pointed at a space, the HoloLens tries to map the area. While the HoloLens learns a space naturally over time, there are ways in which you can help HoloLens map your space more quickly and efficiently.  

> [!NOTE]
> If your HoloLens can't map your space or is out of calibration, HoloLens may enter Limited mode. In Limited mode, you won't be able to place holograms in your surroundings.

This article explains how HoloLens maps spaces, how to improve spatial mapping, and how to manage the spatial data that HoloLens collects.

## Choosing and setting up and your space

Features in your environment can make it difficult for the HoloLens to interpret a space. Light levels, materials in the space, the layout of objects, and more can all affect how HoloLens maps an area.

HoloLens works best in certain kinds of environments. To produce the best spatial map, choose a room that has adequate light and plenty of space. Avoid dark spaces and rooms that have a lot of dark, shiny, or translucent surfaces (for instance, mirrors or gauzy curtains).

HoloLens is optimized for indoor use. Spatial mapping also works best when Wi-Fi is turned on, although it doesn't have to be connected to a network. HoloLens can obtain Wi-Fi access points even if it is not connected or authenticated. HoloLens functionality does not change whether the access points are internet-connected or intranet/local only.

Only use HoloLens in safe places with no tripping hazards. [More on safety](https://support.microsoft.com/help/4023454/safety-information).

## Mapping your space

Now you're ready to start mapping your spare.  When HoloLens starts mapping your surroundings, you'll see a mesh graphic spreading over the space.  In mixed reality home, you can trigger the map to show by selecting on a mapped surface.

Here are guidelines for building a great spatial map.

### Understand the scenarios for the area

It is important to spend the most time where you will be using the HoloLens, so that the map is relevant and complete. For example, if a user scenario for HoloLens involves moving from Point A to Point B, walk that path two to three times, looking in all directions as you move.  

### Walk slowly around the space

If you walk too quickly around the area, it's likely that the HoloLens will miss mapping areas. Walk slowly around the space, stopping every 5-8 feet to look around at your surroundings.  

Smooth movements also help the HoloLens map more efficiently.

### Look in all directions

Looking around as you map the space gives the HoloLens more data on where points are relative to each other.  

If you don't look up, for example, the HoloLens may not know where the ceiling in a room is.  

Don't forget to look down at the floor as you map the space.

### Cover key areas multiple times

Moving through an area multiple times will help pick up features you may have missed on the first walkthrough. To build an ideal map, try traversing an area two to three times.

If possible, while repeating these movements, spend time walking through an area in one direction, then turn around and walk back the way you came.

### Take your time mapping the area

It can take between 15 and 20 minutes for the HoloLens to fully map and adjust itself to its surroundings. If you have a space in which you plan to use a HoloLens frequently, taking that time up front to map the space can prevent issues later on.  

## Possible errors in the spatial map

Errors in spatial mapping data fall into a few categories:

- *Holes*: Real-world surfaces are missing from the spatial mapping data.
- *Hallucinations*: Surfaces exist in the spatial mapping data that do not exist in the real world.
- *Wormholes*: HoloLens 'loses' part of the spatial map by thinking it is in a different part of the map than it actually is.
- *Bias*: Surfaces in the spatial mapping data are imperfectly aligned with real-world surfaces, either pushed in or pulled out.

If you see any of these errors please use the [FeedbackHub](hololens-feedback.md) to send feedback.

## Security and storage for spatial data

Windows 10 version 1803 update for Microsoft HoloLens and later stores mapping data in a local (on-device) database.

HoloLens users cannot directly access the map database, even when the device is plugged into a PC or when using the File Explorer app. When BitLocker is enabled on HoloLens, the stored map data is also encrypted along with the entire volume.

### Remove map data and known spaces from HoloLens

There are two options for deleting map data in **Settings > System > Holograms**:

- To delete nearby holograms, select **Remove nearby holograms**. This command clears the map data and anchored holograms for the current space. If you continue to use the device in the same space, it creates and stores a brand new map section to replace the deleted information.

   > [!NOTE]
   > "Nearby" holograms are holograms that are anchored within the same map section in the current space.

   For example, you can use this option to clear work-related map data without affecting any home-related map data.

- To delete all holograms, select **Remove all holograms**. This command clears all map data that is stored on the device as well as all anchored holograms. You will need to explicitly place any holograms. You will not be able to rediscover the previously-placed holograms.

> [!NOTE]
> After you remove nearby or all holograms, HoloLens immediately starts scanning and mapping the current space.

### Wi-Fi data in spatial maps

HoloLens stores Wi-Fi characteristics to help correlate hologram locations and map sections that are stored within the HoloLens database of known spaces. Information about Wi-Fi characteristics is not accessible to users, and not sent to Microsoft using the cloud or using telemetry.

As long as Wi-Fi is enabled, HoloLens correlates map data with nearby Wi-Fi access points. There is no difference in behavior whether a network is connected or just detected nearby. If Wi-Fi is disabled, HoloLens still searches the space. However, HoloLens has to search more of the map data within the spaces database, and may need more time to find holograms. Without the Wi-Fi info, the HoloLens has to compare active scans to all hologram anchors and map sections that are stored on the device in order to locate the correct portion of the map.

## Related topics

- [Spatial mapping design](https://docs.microsoft.com/windows/mixed-reality/spatial-mapping-design)
