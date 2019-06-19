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

Surface Hub 2S lets you connect external devices, mirror the display on Surface Hub 2S to another device, and connect a wide variety of third-party peripherals including video conference cameras, conference phones, and room system devices.

## Connect external PCs and related devices

You can display content from your devices to Surface Hub 2S. If the source device is Windows-based, that device can also provide TouchBack and InkBack, which takes video and audio from the connected device and presents them on Surface Hub 2S. If Surface Hub 2S encounters a High-Bandwidth Digital Content Protection (HDCP) signal, such as a Blu-ray DVD player, the source is displayed as a black image.

> [!NOTE]
> Surface Hub-2S will use the video input that you select until a new connection is made, the existing connection is disrupted, or the Connect App is closed.

## Recommended wired configurations for connecting to Surface Hub 2S

In general, it’s recommended to use native cable connections whenever possible such as USB-C to USB-C or HDMI to HDMI. Other combinations such as MiniDP to HDMI or MiniDP to USB-C will also work.

|**Mode**|**Connection**|**Functionality**|**Comments**|
|:---- |:---------- |:------------ |:-------- |
| Wired “Connect” Application | USB-C (via compute module) | Video, audio, TouchBack/InkBack into Surface Hub 2S.| Provides display port video, audio, and TouchBack/InkBack on a single cable. |
| | HDMI + USB-C | HDMI-in for Audio/Video <br> USB-C for TouchBack/InkBack | USB-C supports TouchBack/InkBack with the  HDMI A/V connection <br> <br>Use USB-C to USB-A to connect to legacy computers <br> <br> *NOTE: For best results, connect HDMI before connecting USB-C cable. If the computer you are using for HDMI is not compatible with TouchBack and InkBack, you won't need a USB-C cable.* |
| “Source” selection experience <br> (bypasses the OS, full screen requires source selection with keypad button) | USB-C (port in compute module) | Video, Audio into Surface Hub 2S | Single cable needed for A/V <br> Touchback/InkBack not supported <br> HDCP enabled |
| | HDMI (in port) | Video, Audio into Surface Hub 2S | Single cable needed for A/V <br> TouchBack/InkBack not supported <br> HDCP enabled |

When you connect a guest computer to Surface Hub 2S via the wired connect USB-C port, several USB devices are discovered and configured. These peripheral devices are created for TouchBack and InkBack. As shown in the table below, the peripheral devices can be viewed in Device Manager, which will show duplicate names for some devices.

|**Peripheral**|**Listing in Device Manager**|
|:---------- |:------------------------- |
| Human interface devices | HID-compliant consumer control device <br> HID-compliant pen <br> HID-compliant pen (duplicate item) <br> HID-compliant pen (duplicate item) <br> HID-compliant touch screen <br> USB Input Device <br> USB Input Device (duplicate item) |
| Keyboards | Standard PS/2 keyboard |
| Mice and other pointing devices | HID-compliant mouse |
| USB controllers | Generic USB hub <br> USB composite device |

### Connecting video-in to Surface Hub 2S

Your choice of video cable will be determined by what is available from your source input. Surface Hub 2S has two choices of video input: USB-C and HDMI. See the following chart for available resolutions.

|**Signal Type**|**Resolution**|**Frame rate**|**HDMI**|**USB-C**|
|:----------- |:----------- |:---------- |:---- |:----- |
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

|**MODE**|**Connection**|**Functionality**|**Comments**|
|:---- |:---------- |:------------- |:-------- |
| Display out | MiniDP output port | Display and audio out (support for duplicate mode only) | Requires external keyboard <br> Win+P and select Duplicate mode <br> Supports audio out (configurable via settings) |

### Selecting cables

DisplayPort cables are certified for to 3 meters in length. If a long cable is necessary, HDMI is recommended due to the wide availability of cost-effective, long-haul cables with the added benefit of installing repeaters if needed.

> [!NOTE]
> Most DisplayPort sources will automatically switch to HDMI signaling if HDMI is detected.

## Wirelessly connect to Surface Hub 2S

Windows 10 natively supports Miracast, which lets you wireless connect to Surface Hub 2S.

### To connect using Miracast

1. On your Windows 10 device, enter **Win** + **K**.
2. In the Connect window, look for the name of your Surface Hub 2S in the list of nearby devices. You can find the name of your Surface Hub 2S in the bottom left corner of the display.
3. If required, your system administrator may have enabled the PIN setting for Miracast connections on your Surface Hub which means that the first time you connect to that Surface Hub, a PIN number is displayed on the screen.  

> [!NOTE]
> If you’re a local administrator on Surface Hub 2S, you can configure PIN requirements via **Surface app > Settings.**

## Connecting peripherals to Surface Hub 2S

## Bluetooth accessories

You can connect the following accessories to Surface Hub-2S using Bluetooth:

- Mice
- Keyboards
- Headsets
- Speakers

> [!NOTE]
> After you connect a Bluetooth headset or speaker, you might need to change the default microphone and speaker settings. For more information, see [Local management for Surface Hub settings](local-management-surface-hub-settings.md).
