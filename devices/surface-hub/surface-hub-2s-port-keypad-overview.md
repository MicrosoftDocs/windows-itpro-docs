---
title: "Surface Hub 2S ports and keypad overview"
description: "This page describes the ports, physical buttons, and configuration information essential for connecting to Surface Hub 2S."
keywords: separate values with commas
ms.prod: surface-hub
ms.sitesec: library
author: robmazz
ms.author: robmazz
audience: Admin
ms.topic: article
ms.localizationpriority: Normal
---

# Surface Hub 2S ports and keypad overview

This page describes the ports, physical buttons, and configuration information essential for connecting to Surface Hub 2S whether via wired, Wi-Fi, or Bluetooth methods. It also includes best practice recommendations for key connectivity scenarios.

The figure below shows the location of ports and physical buttons on a keypad attached to the underside of the device. The table includes detailed descriptions of each element.

 ![Front facing and underside view of I/O connections and physical buttons](images/hub2s-schematic.png)

## Port and keypad component reference

|**Key**|**Component**|**Description**|**Key parameters**|
|:--- |:--------- |:----------- |:-------------- |
| 1 | **USB C** | **USB 3.1 Gen 1** <br> Use as a walk-up port for plugging in peripherals such as thumb-drives. Guest ports are on each side of the device (4).<br> <br> *NOTE: This is the recommended port for connecting an external camera. Additional camera mount features are incorporated into the design to help support retention of attached cameras.*<br> <br> NOTE: TouchBack and video ingest are not supported on these ports. | Type C <br> <br> 15 W Port (5V/3A)       |
| 2 | **AC power** | **100-240 V input** <br> Connect to standard AC power and Surface Hub 2S will auto switch to the local power standard such as110 volts in the US and Canada or 220 volts in the UK. <br> <br> *NOTE: When the AC cord is plugged in, the system remains in an off state in which only the system management controller (SMC), real-time clock (RTC), and keypad are running.* | IEC 60320 C14 |
| 3 | **DC power** | **24V DC input port** <br> Use for connecting to mobile battery. | Xbox1 Dual barrel to Anderson connector |
| 4 | **Ethernet** | **1000/100/10 Base-T** <br> Use for providing a continuous connection in a corporate environment and related scenarios requiring maximum stability or capacity. | RJ45 |
| 5 | **USB-A** | **USB 3.1 Gen 1** <br> Use as a walk-up port for plugging in peripherals such as thumb-drives. | Type A<br>7.5 W Port (5V/1.5A) |
| 6 | **USB-C** | **USB 3.1 Gen 1** <br> Use as a walk-up port for connecting external PCs and related devices or plugging in peripherals such as thumb-drives.<br> <br> *NOTE: This is the recommended  input port for video, TouchBack, and InkBack.* | Type C <br> 18 W Port (5V/3A, 9V/2A) |
| 7 | **HDMI-in** | **HDMI 2.0, HDCP 2.2 /1.4** <br> Use for multiple scenarios including HDMI-to-HDMI guest input. | Standard HDMI |
| 8 | **Mini DP-out** | **Mini DP 1.2 output** <br> Use for video-out scenarios such as mirroring the Surface Hub 2S display to a larger projector.<br> <br> *NOTE: This supports a maximum resolution of 3840 x 2160 (4K UHD) @60Hz.* | Mini DP |
| 9 | **Source**  | Use to toggle among connected ingest sources — external PC, HDMI, and Mini DP modes. | n/a |
| 10 | **Volume** | Use +/- to adjust audio locally on the device. <br> <br> *NOTE: When navigating to the brightness control, use +/- on the volume slider to control display brightness.* | n/a |
| 11 | **Power** | Power device on/off. <br> Use also to navigate display menus and select items. | n/a |

 ![Rear facing view of wireless, audio, & related components](images/hub2s-rear.png)

## Major system components

Surface Hub 2S consists of two primary system components:

|**Component**|**Functionality**|
|:--------- |:----------------- |
|**Video board**| - Produces the image on the LCD display. <br> - Provides an audio/video connection path to/from the compute module. <br> - Provides video scaling to support external video sources. <br> - Performs color correction and calibration. <br> - Responsible for power management, including occupancy sensors and device power states. <br> - Monitors and manages all thermal sensors throughout the device. <br> - Performs internal diagnostics. <br> - Captures diagnostics, error logs, and telemetry for all components not connected to the compute module. <br> - Controls the behavior of keypad buttons. <br> - Provides an on-screen display for control of video source, brightness, and volume. |
|**Compute module**| Connects to and controls all USB devices. <br> - Provides video board interconnections for USB, Mini DP, HDMI, PCIe. <br> - Provides Ethernet access via wired and wireless interfaces. <br> Provides the on-screen audio/video content. <br> - Ingests audio/video provided by external sources. <br> - Allows video to be passed directly to the video board (bypassing the ingest process) for scenarios in which an external source is HDCP encrypted or is beyond the capability of the ingest subsystem. <br> - Provides digital audio output for accessibility and room audio systems respectively (USB dongle support only). |
