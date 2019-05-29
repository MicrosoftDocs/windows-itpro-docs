---
title: "Connect devices to Surface Hub 2S"
description: "This page explains how to connect external devices to Surface Hub 2S."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.localizationpriority: Normal
---

# Connect devices to Surface Hub 2S

With Surface Hub 2S you can connect external devices such as a PC; mirror the display on Surface Hub 2S to another device; and connect a wide variety of third-party peripherals including video conference cameras, conference phones, and room system devices. 


## Connect external PCs and related devices

You can display content from your devices to Surface Hub 2S. If the source device is Windows-based, that device can also provide TouchBack and InkBack, which takes video and audio from the connected device and presents them on Surface Hub 2S. If Surface Hub 2S encounters a High-Bandwidth Digital Content Protection (HDCP) signal, such as a Blu Ray DVD player, the source will be displayed as a black image. To display your content without violating HDCP requirements, use the keypad of Surface Hub 2S to directly choose the external source via a wired connection such as USB-C or HDMI.
NOTE: Surface Hub-2S will use the video input that you select until a new connection is made, the existing connection is disrupted, or the Connect App is closed.
**Recommended configurations for connecting to Surface Hub 2S**
In general, it’s recommended to use native cable connections whenever possible such as USB-C to USB-C or HDMI to HDMI. Other combinations such as MiniDP to HDMI or MiniDP to USB-C will also work.
*Table 2. Connecting external devices*

| Mode                                                                                                         | Connection                           | Functionality                                          | Comments                                                                                                                                                                                                                                                                                                                |
| ------------------------------------------------------------------------------------------------------------ | ------------------------------------ | ------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Wired “Connect” Application                                                                                  | USB-C (via underside compute module) | Video, audio, TouchBack/InkBack into Surface Hub 2S.   | Provides display port video, audio, and TouchBack/InkBack on a single cable.                                                                                                                                                                                                                                            |
|                                                                                                              | HDMI + USB-C                         | HDMI-in for Audio/Video<br>USB-C for TouchBack/InkBack | USB-C supports TouchBack/InkBack with the  HDMI A/V connection<br> <br>Use USB-C to USB-A to connect to legacy computers<br> <br>NOTE: For best results, connect HDMI before connecting USB-C cable. If the computer you are using for HDMI is not compatible with TouchBack and InkBack, you won't need a USB-C cable. |
| “Source” selection experience<br>(bypasses the OS, full screen requires source selection with keypad button) | USB-C (port in compute module)       | Video, Audio into Surface Hub 2S                       | - Single cable needed for A/V<br>- Touchback not supported<br>- HDCP enabled                                                                                                                                                                                                                                            |
|                                                                                                              | HDMI (in port)                       | Video, Audio into Surface Hub 2S                       | - Single cable needed for A/V<br>- TouchBack not supported<br>- HDCP enabled                                                                                                                                                                                                                                            |

 
When you connect a guest computer to Surface Hub 2S via the wired connect USB-C port, several USB devices are discovered and configured. These peripheral devices are created for TouchBack and InkBack. As shown in Table 3, the peripheral devices can be viewed in Device Manager, which will show duplicate names for some devices.
Table 3. Viewing peripherals in Device Manager

| Peripheral                      | Listing in Device Manager                                                                                                                                                                                                     |
| ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Human interface devices         | HID-compliant consumer control device<br>HID-compliant pen<br>HID-compliant pen (duplicate item)<br>HID-compliant pen (duplicate item)<br>HID-compliant touch screen<br>USB Input Device<br>USB Input Device (duplicate item) |
| Keyboards                       | Standard PS/2 keyboard                                                                                                                                                                                                        |
| Mice and other pointing devices | HID-compliant mouse                                                                                                                                                                                                           |
| USB controllers                 | Generic USB hub<br>USB composite device                                                                                                                                                                                       |

**Connecting video-in to Surface Hub 2S**
Your choice of video cable will be determined by what is available from your source input. Surface Hub 2S has two choices of video input: USB-C and HDMI. See the following chart for available resolutions.
*Table 4. Display parameters*

| Signal Type | Resolution  | Frame rate | HDMI | USB-C |
| ----------- | ----------- | ---------- | ---- | ----- |
| PC          | 640 x 480   | 59.94/60   | X    | X     |
| PC          | 720 x 480   | 59.94/60   | X    | X     |
| PC          | 1024 x 768  | 60         | X    | X     |
| PC          | 1920 x 1080 | 60         | X    | X     |
| PC          | 3840x2560   | 60         | X    | X     |
| HDTV        | 720p        | 59.94/60   | X    | X     |
| HDTV        | 1080p       | 59.94/60   | X    | X     |
| UHD         | 3840x2560   | 60         | X    | X     |

## Mirroring Surface Hub 2S display on another device

Surface Hub 2S includes a Video Out port for mirroring visual content from Surface Hub 2S to another display.
*Table 5. Mirroring Surface Hub 2S via video out mode*

| MODE        | Connection         | Functionality                                           | Comments                                                                                                               |
| ----------- | ------------------ | ------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Display out | MiniDP output port | Display and audio out (support for duplicate mode only) | - Requires external keyboard,<br>- Win+P and select Duplicate mode<br>- Supports audio out (configurable via settings) |

**Selecting cables**
DisplayPort cables are certified for to 3 meters in length. If a long cable is necessary, HDMI is recommended due to the wide availability of cost-effective, long-haul cables with the added benefit of installing repeaters if needed.
NOTE: Most DisplayPort sources will automatically switch to HDMI signaling if HDMI is detected~~.~~

## Connecting peripherals to Surface Hub 2S

**Bluetooth accessories**
You can connect the following accessories to Surface Hub-2S using Bluetooth:

- Mice
- Keyboards
- Headsets
- Speakers

NOTE: After you connect a Bluetooth headset or speaker, you might need to change the default microphone and speaker settings. For more information, refer to [Local management for Surface Hub settings](https://docs.microsoft.com/en-us/surface-hub/local-management-surface-hub-settings).

# Learn more


