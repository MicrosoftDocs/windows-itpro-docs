---
title: Use HoloLens in New Spaces
description: HoloLens learns what a space looks like over time. Users can facilitate this process by moving the HoloLens in certain ways through the space.
ms.assetid: bd55ecd1-697a-4b09-8274-48d1499fcb0b
author: dorreneb
ms.author: dobrown
ms.date: 08/16/2019
keywords: hololens, Windows Mixed Reality, design, spatial mapping, HoloLens, surface reconstruction, mesh, head tracking, mapping
ms.prod: hololens
ms.sitesec: library
ms.topic: article
ms.localizationpriority: medium
appliesto:
- HoloLens 1
- HoloLens 2
---

# Mapping physical spaces with HoloLens

HoloLens blends holograms with your physical world.  To do that, HoloLens needs to learn about the physical world around you and remember where you place holograms within that space.

Over time, the HoloLens builds up a *spatial map* of the environment that it has seen.  HoloLens updates the map as the environment changes.

HoloLens will create and update your spatial maps as long as the device is on and a user is logged in. If you hold or wear the device with the cameras pointed at a space, the device will try to map the area. While the HoloLens will learn a space naturally over time, there are tips and tricks available to map the space faster and more efficiently.  

> [!NOTE]
> If your HoloLens can’t map your space or is out of calibration, you may enter Limited mode. In Limited mode, you won’t be able to place holograms in your surroundings.

This article explains how HoloLens maps spaces, how to improve spatial mapping, and how to manage the spatial data HoloLens collects.

## Setting up and choosing your space

Features in an environment can make it difficult for the HoloLens to interpret a space. Light levels, materials in the space, the layout of objects, and more can all affect how HoloLens maps an area.

HoloLens works best in certain kinds of environments.  For the best spatial map, choose a room with adequate light and plenty of space. Avoid dark spaces and rooms with a lot of dark, shiny, or translucent surfaces (for instance, mirrors or gauzy curtains).

HoloLens is optimized for indoor use. Spatial mapping also works best when Wi-Fi is turned on, though it doesn't have to be connected to a network.  Wi-Fi access points are obtained without being connected or authenticated. It does not change functionality if the access points are internet connected or intranet/local only.

Only use HoloLens in safe places with no tripping hazards. [More on safety](https://support.microsoft.com/help/4023454/safety-information).

## Mapping your space

Now you're ready to start mapping your spare.  When HoloLens starts mapping your surroundings, you'll see a mesh graphic spreading over the space.

Here are guidelines for building a great spatial map.

### Understand the scenarios for the area

It is important to spend the most time where you will be using the HoloLens so that the map is relevant and complete.  

For example, if a user scenario for HoloLens involves moving from Point A to Point B, walk that path two to three times, looking in all directions as you move.  

### Walk slowly around the space

If you walk too quickly around the area, it's likely that the HoloLens will miss mapping areas. Walk slowly around the space, stopping every 5-8 feet to look around at your surroundings.  

Smooth movements also help the HoloLens map more efficiently.

### Look in all directions

Looking around as you map the space gives the HoloLens more data on where points are relative to each other.  

If you don't look up, for example, the HoloLens may not know where the ceiling in a room is.  

Don't forget to look down at the floor as you map the space.

### Cover key areas multiple times

Moving through an area multiple times will help pick up features you may have missed on the first walkthrough. Try traversing an area two to three times to build an ideal map.

If possible, while repeating these movements, spend time walking through an area in one direction, then turn around and walk back the way you came.

### Take your time mapping the area

It can take between 15 and 20 minutes for the HoloLens to fully map and adjust itself to its surroundings. If you have a space in which you plan to use a HoloLens frequently, taking that time up front to map the space can prevent issues later on.  

## Possible errors in the spatial map

Errors in spatial mapping data fall into one of three categories:

- *Holes*: Real-world surfaces are missing from the spatial mapping data.
- *Hallucinations*: Surfaces exist in the spatial mapping data that do not exist in the real world.
- *Wormholes*: HoloLens 'loses' part of the spatial map by thinking it is in a different part of the map than it actually is.
- *Bias*: Surfaces in the spatial mapping data are imperfectly aligned with real-world surfaces, either pushed in or pulled out.

If you see any of these errors please file feedback via [FeedbackHub](hololens-feedback.md).

## Security and storage for spatial data

Windows 10 version 1803 update for Microsoft HoloLens and later store mapping data in a local (on-device) database.

The map database is not exposed to a user of the device, even when plugged into a PC or when using the File Explorer app. When BitLocker is enabled, the stored map data is also encrypted with the entire volume.

Holograms that are anchored within the same map section are considered to be “nearby” in the current space.

### Remove map data and known spaces from HoloLens

There are two options for deleting map data in **Settings > System > Holograms**:

- Select **Remove nearby holograms** to delete nearby holograms, clearing the map data and anchored holograms for the current space. A brand new map section would be created and stored in the database for that location while the device is used there. This option can be used to clear the map data for work without affecting any map data from home, for example.
- Select **Remove all holograms** to delete all holograms, clearing all locally stored map data and anchored holograms. No holograms will be rediscovered and any holograms need to be newly placed.

> [!NOTE]
> When you remove nearby or all holograms, HoloLens immediately starts scanning and mapping the current space.

### Wi-Fi data in spatial maps

As long as Wi-Fi is enabled, map data will be correlated with nearby Wi-Fi access points. There is no difference in behavior if a network is connected or just nearby. Network characteristics are not sent to Microsoft, and all Wi-Fi references are kept local on the HoloLens.

Wi-Fi characteristics are stored locally to help correlate hologram locations and map sections stored within HoloLens’ database of known spaces. It’s inaccessible to users, and not sent to Microsoft via the cloud or via telemetry.

If Wi-Fi is disabled, the space search can still happen; HoloLens will need to search more of the map data within the spaces database, and finding holograms can take longer.

HoloLens will sense and remember spaces even when Wi-Fi is disabled, by securely storing the sensor data when holograms are placed. Without the Wi-Fi info, the space and holograms may be slower to recognize at a later time, as the HoloLens needs to compare active scans to all hologram anchors and map sections stored on the device in order to locate the correct portion of the map.

HoloLens will visually compare the current scanning data from the sensors to locally stored map sections in the entire spaces database.  It will locate holograms faster if the Wi-Fi characteristics can be found, to narrow down the number of spaces to compare.

## Related topics

- [Spatial mapping design](https://docs.microsoft.com/windows/mixed-reality/spatial-mapping-design)
