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
ms.date: 06/20/2019
ms.localizationpriority: Normal
---

# Connect devices to Surface Hub 2S
Surface Hub 2S lets you connect external devices, mirror the display on Surface Hub 2S to another device, and connect a wide variety of third-party peripherals including video conference cameras, conference phones, and room system devices.

You can display content from your devices to Surface Hub 2S. If the source device is Windows-based, that device can also provide TouchBack and InkBack, which takes video and audio from the connected device and presents them on Surface Hub 2S. If Surface Hub 2S encounters a High-Bandwidth Digital Content Protection (HDCP) signal, such as a Blu-ray DVD player, the source is displayed as a black image.

> [!NOTE]
> Surface Hub 2S uses the video input selected until a new connection is made, the existing connection is disrupted, or the Connect app is closed.

## Recommended wired configurations 

In general, it’s recommended to use native cable connections whenever possible such as USB-C to USB-C or HDMI to HDMI. Other combinations such as MiniDP to HDMI or MiniDP to USB-C will also work.

| **Connection**   | **Functionality**     | **Description**|
| --- | --- | ---|
| USB-C <br>(via compute module)     | Video-in<br> Video-out<br> Audio-in<br> Audio-out <br><br>TouchBack and InkBack  | Provides video, audio, and TouchBack/InkBack on a single cable.<br><br>**NOTE:** Some configuration is required to optimize the video-out experience. Refer to the section below: [Mirroring Surface Hub 2S display on another device](#).                                                                           |
| HDMI + USB-C                   | HDMI-in for audio and video<br><br>USB-C for TouchBack and InkBack                         | USB-C supports TouchBack and InkBack with the HDMI A/V connection.<br><br>Use USB-C to USB-A to connect to legacy computers.<br><br>**NOTE:** For best results, connect HDMI before connecting a USB-C cable. If the computer you're using for HDMI is not compatible with TouchBack and InkBack, you won't need a USB-C cable. |
| USB-C <br> (via compute module) | Video-in <br>Audio-in                                                | Single cable needed for A/V<br><br>TouchBack and InkBack not supported<br><br>HDCP enabled                                                                                                                                                                                                                                   |
| HDMI (in port)                 | Video, Audio into Surface Hub 2S                                               | Single cable needed for A/V<br><br>TouchBack and InkBack not supported<br><br>HDCP enabled                                                                                                                                                                                                                                   |
| MiniDP 1.2 output          | Video-out such as mirroring to a larger projector.                             | Single cable needed for A/V                                                                                                                                                                                                                                                                                      |


 
When you connect a guest computer to Surface Hub 2S via the USB-C port, several USB devices are discovered and configured. These peripheral devices are created for TouchBack and InkBack. As shown in the following table, the peripheral devices can be viewed in Device Manager, which will show duplicate names for some devices.
 
**Device Manager reference**
| **Peripheral**                  | **Listing in Device Manager**                                                                                                                                                                                                 |
| ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Human interface devices         | HID-compliant consumer control device<br>HID-compliant pen<br>HID-compliant pen (duplicate item)<br>HID-compliant pen (duplicate item)<br>HID-compliant touch screen<br>USB Input Device<br>USB Input Device (duplicate item) |
| Keyboards                       | Standard PS/2 keyboard                                                                                                                                                                                                        |
| Mice and other pointing devices | HID-compliant mouse                                                                                                                                                                                                           |
| USB controllers                 | Generic USB hub<br>USB composite device                                                                                                                                                                                       |

## Connecting video-in to Surface Hub 2S
You can input video to Surface Hub 2S using USB-C or HDMI, as indicated in the following table.  

### Surface Hub 2S video-in settings

| **Signal Type** | **Resolution** | **Frame rate** | **HDMI** | **USB-C** |
| --------------- | -------------- | -------------- | -------- | --------- |
| PC              | 640 x 480      | 60             | X        | X         |
| PC              | 720 x 480      | 60             | X        | X         |
| PC              | 1024 x 768     | 60             | X        | X         |
| PC              | 1920 x 1080    | 60             | X        | X         |
| PC              | 3840x2560      | 30             | X        | X         |
| HDTV            | 720p           | 60             | X        | X         |
| HDTV            | 1080p          | 60             | X        | X         |
| 4K UHD          | 3840x2560      | 30             | X        | X         |

 
> [!NOTE]
> The 4K UHD resolution (3840×2560) is only supported when connecting to ports on the compute module. It is not supported on the “guest” USB ports located on the left, top, and right sides of the device.
 
> [!NOTE]
> Video from a connected external PC may appear smaller when displayed on Surface Hub 2S.

## Mirroring Surface Hub 2S display on another device
You can output video to another display using either USB-C or MiniDP, as indicated in the following table.

### Surface Hub 2S video-out settings

| **Signal Type** | **Resolution** | **Frame rate** | **USB-C** | **MiniDP** |
| --------------- | -------------- | -------------- | --------- | ---------- |
| PC              | 640 x 480      | 60             | X         | X          |
| PC              | 720 x 480      | 60             | X         | X          |
| PC              | 1024 x 768     | 60             | X         | X          |
| PC              | 1920 x 1080    | 60             | X         | X          |
| PC              | 3840x2560      | 60             | X         | X          |
| HDTV            | 720p           | 60             | X         | X          |
| HDTV            | 1080p          | 60             | X         | X          |
| 4K UHD          | 3840x2560      | 60             | X         | X          |

 
Surface Hub 2S includes a MiniDP video-out port for projecting visual content from Surface Hub 2S to another display. If you plan to use Surface Hub 2S to project to another display, note the following recommendations:

- **Keyboard required.** Before you begin, you’ll need to connect either a wired or Bluetooth-enabled external keyboard  to Surface Hub 2S. Note that unlike the original Surface Hub, a keyboard for Surface Hub 2S is sold separately and is not included in the shipping package.<br><br>
- **Set duplicate mode.** Surface Hub 2S supports video-out in duplicate mode only. However, you will still need to manually configure the display mode when you connect for the first time:
    1. Enter the **Windows logo key** + **P**, which opens the Project pane on the right side of Surface Hub 2S, and then select **Duplicate** mode.
    2. When you’re finished with your Surface Hub 2S session, select **End Session**. This ensures that the duplicate setting is saved for the next session.<br><br>
- **Plan for different aspect ratios.** Like other Surface devices, Surface Hub 2S uses a 3:2 display aspect ratio (the relationship between the width and the height of the display). Projecting Surface Hub 2S onto displays with different aspect ratios is supported. Note however that because Surface Hub 2S duplicates the display, the MiniDP output will also only display in a 3:2 aspect ratio, which may result in letterboxing or curtaining depending on the aspect ratio of the receiving display. 

> [!NOTE]
> if your second monitor uses a 16:9 aspect ratio (the predominant ratio for most TV monitors), black bars may appear on the left and right sides of the mirrored display. If this occurs, you may wish to inform your users that there is no need to adjust the second display.


 
## Selecting cables
Note the following recommendations:

- **USB.** USB 3.1 Gen 2 cables.
- **MiniDP.** DisplayPort cables certified for up to 3 meters in length.
- **HDMI.** If a long cable is necessary, HDMI is recommended due to the wide availability of cost-effective, long-haul cables with the ability to install repeaters if needed.

> [!NOTE]
> Most DisplayPort sources will automatically switch to HDMI signaling if HDMI is detected.

# Wirelessly connect to Surface Hub 2S

Windows 10 natively supports Miracast, which lets you wireless connect to Surface Hub 2S.<br><br>
**To connect using Miracast:**

1. On your Windows 10 device, enter **Windows logo key** + **K**. 
2. In the Connect window, look for the name of your Surface Hub 2S in the list of nearby devices. You can find the name of your Surface Hub 2S in the bottom left corner of the display.
3. Enter a PIN if your system administrator has enabled the PIN setting for Miracast connections. This requires you to enter a PIN number when you connect to Surface Hub 2S for the first time.

> [!NOTE]
>If you do not see the name of the Surface Hub 2S device as expected, it’s possible the previous session was prematurely closed. If so, sign into Surface Hub 2S directly to end the previous session and then connect from your external device.

## Connecting peripherals to Surface Hub 2S

### Bluetooth accessories
You can connect the following accessories to Surface Hub-2S using Bluetooth:

- Mice
- Keyboards
- Headsets
- Speakers

> [!NOTE]
> After you connect a Bluetooth headset or speaker, you might need to change the default microphone and speaker settings. For more information, see [**Local management for Surface Hub settings**](https://docs.microsoft.com/en-us/surface-hub/local-management-surface-hub-settings).
