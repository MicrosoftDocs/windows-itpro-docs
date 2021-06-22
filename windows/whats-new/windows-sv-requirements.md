---
title: Windows Sun Valley requirements
description: Hardware requirements to deploy Windows Sun Valley
ms.reviewer: 
manager: laurawi
ms.audience: itpro
author: greg-lindsay
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: medium
audience: itpro
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Windows Sun Valley requirements

**Applies to**

-   Windows Sun Valley, version 21H2

This article lists the system requirements for Windows Sun Valley. Windows Sun Valley is also supported on a virtual machine (VM). 

## Hardware requirements

To install or upgrade to Windows Sun Valley, devices must meet the following minimum hardware requirements:
 
- Processor: 1 gigahertz (GHz) or faster with two or more cores on a [compatible 64-bit processor](https://aka.ms/CPUlist) or system on a chip (SoC).
- RAM: 4 gigabytes (GB) or greater.
- Storage: 64 GB or greater available storage is required to install Windows Sun Valley.
  - Additional storage space might be required to download updates and enable specific features.
- Graphics card: Compatible with DirectX 12 or later with WDDM 2.0 driver.
- System firmware: UEFI, Secure Boot capable.
- TPM: Trusted Platform Module (TPM) version 2.0.
- Display: High definition (720p) display, 9" or greater monitor, 8 bits per color channel.
- Internet connection: Internet connectivity is necessary to perform updates and to download and take advantage of some features. 
  - Windows Sun Valley Home edition requires an Internet connection and a Microsoft Account to complete device setup on first use.

For additional guidance, see [Determine eligibility](windows-sv-plan.md#determine-eligibility).

## Operating system requirements

For the best Windows Sun Valley upgrade experience, eligible devices should be running Windows 10, version 20H1 or later.

> [!NOTE]
> S mode is not supported on Windows Sun Valley.
> If you are running Windows in S mode, you will need to first [switch out of S mode](/windows/deployment/windows-10-pro-in-s-mode) prior to upgrading. Switching a device out of Windows 10 in S mode also requires internet connectivity. If you switch out of S mode, you cannot switch back to S mode later.

## Feature-specific requirements

Some features in Windows Sun Valley have requirements beyond those listed above. See the following list: 

- **5G support** requires 5G capable modem.
- **Auto HDR** requires an HDR monitor.
- **BitLocker to Go** requires a USB flash drive. This feature is available in Windows Pro and above editions. 
- **Client Hyper-V** requires a processor with second-level address translation (SLAT) capabilities. This feature is available in Windows Pro editions and above. 
- **Cortana** requires a microphone and speaker and is currently available on Windows Sun Valley for Australia, Brazil, Canada, China, France, Germany, India, Italy, Japan, Mexico, Spain, United Kingdom, and United States.
- **DirectStorage** requires 1 TB or greater NVMe SSD to store and run games that use the "Standard NVM Express Controller" driver and a DirectX12 Ultimate GPU.
- **DirectX 12 Ultimate** is available with supported games and graphics chips.
- **Presence** requires sensor that can detect human distance from device or intent to interact with device.
- **Intelligent Video Conferencing** requires video camera, microphone, and speaker (audio output) 
- **Multiple Voice Assistant** requires a microphone and speaker.
- **Snap** three-column layouts require a screen that is 1920 effective pixels or greater in width.
- **Mute** and **unmute** from Taskbar requires video camera, microphone, and speaker (audio output). App must be compatible with feature to enable global mute/unmute.
- **Spatial Sound** requires supporting hardware and software.
- **Microsoft Teams** requires video camera, microphone, and speaker (audio output).
- **Touch** requires a screen or monitor that supports multi-touch.
- **Two-factor authentication** requires use of PIN, biometric (fingerprint reader or illuminated infrared camera), or a phone with Wi-Fi or Bluetooth capabilities.
- **Voice Typing** requires a PC with a microphone.
- **Wake on Voice** requires Modern Standby power model and microphone.
- **Wi-Fi 6E** requires new WLAN IHV hardware and driver and a Wi-Fi 6E capable AP/router.
- **Windows Hello** requires a camera configured for near infrared (IR) imaging or fingerprint reader for biometric authentication. Devices without biometric sensors can use Windows Hello with a PIN or portable Microsoft compatible security key. For more information, see [IT tools to support Windows 10, version 21H1](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/it-tools-to-support-windows-10-version-21h1/ba-p/2365103).
- **Windows Projection** requires a display adapter which supports Windows Display Driver Model (WDDM) 2.0 and a Wi-Fi adapter that supports Wi-Fi Direct.
- **Xbox** app requires an Xbox Live account, which is not available in all regions. Please go to the Xbox Live Countries and Regions page for the most up-to-date information on availability. Some features in the Xbox app will require an active Xbox Game Pass subscription. See https://www.xbox.com/xbox-game-pass to learn more about the pass.  


## Next steps

[Plan to deploy Windows Sun Valley](windows-sv-plan.md)<br>
[Prepare for Windows Sun Valley](windows-sv-prepare.md)

## See also

[Windows Sun Valley overview](windows-sv.md)

