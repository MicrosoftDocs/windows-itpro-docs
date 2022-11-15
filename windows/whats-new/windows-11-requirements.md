---
title: Windows 11 requirements
description: Hardware requirements to deploy Windows 11
manager: aaroncz
author: mestew
ms.author: mstewart
ms.prod: windows-client
ms.localizationpriority: medium
ms.topic: article
ms.custom: seo-marvel-apr2020
ms.collection: highpri
ms.technology: itpro-fundamentals
---

# Windows 11 requirements

**Applies to**

- Windows 11

This article lists the system requirements for Windows 11. Windows 11 is also [supported on a virtual machine (VM)](#virtual-machine-support). 

## Hardware requirements

To install or upgrade to Windows 11, devices must meet the following minimum hardware requirements:
 
- Processor: 1 gigahertz (GHz) or faster with two or more cores on a [compatible 64-bit processor](https://aka.ms/CPUlist) or system on a chip (SoC).
- RAM: 4 gigabytes (GB) or greater.
- Storage: 64 GB\* or greater available storage is required to install Windows 11.
  - Extra storage space might be required to download updates and enable specific features.
- Graphics card: Compatible with DirectX 12 or later, with a WDDM 2.0 driver.
- System firmware: UEFI, Secure Boot capable.
- TPM: [Trusted Platform Module](/windows/security/information-protection/tpm/trusted-platform-module-overview) (TPM) version 2.0.
- Display: High definition (720p) display, 9" or greater monitor, 8 bits per color channel.
- Internet connection: Internet connectivity is necessary to perform updates, and to download and use some features. 
  - Windows 11 Home edition requires an Internet connection and a Microsoft Account to complete device setup on first use.

\* There might be more requirements over time for updates, and to enable specific features within the operating system. For more information, see [Windows 11 specifications](https://www.microsoft.com/windows/windows-11-specifications). 

Also see [Update on Windows 11 minimum system requirements](https://blogs.windows.com/windows-insider/2021/06/28/update-on-windows-11-minimum-system-requirements/).

For information about tools to evaluate readiness, see [Determine eligibility](windows-11-plan.md#determine-eligibility).

## Operating system requirements

Eligible Windows 10 devices must be on version 2004 or later, and have installed the September 14, 2021 security update or later, to upgrade directly to Windows 11.

> [!NOTE]
> S mode is only supported on the Home edition of Windows 11.
> If you are running a different edition of Windows in S mode, you will need to first [switch out of S mode](/windows/deployment/windows-10-pro-in-s-mode) prior to upgrading.<br>&nbsp;<br>
> Switching a device out of Windows 10 in S mode also requires internet connectivity. If you switch out of S mode, you cannot switch back to S mode later.

## Feature-specific requirements

Some features in Windows 11 have requirements beyond those requirements listed above. See the following list of features and associated requirements.

- **5G support**: requires 5G capable modem.
- **Auto HDR**: requires an HDR monitor.
- **BitLocker to Go**: requires a USB flash drive. This feature is available in Windows Pro and above editions. 
- **Client Hyper-V**: requires a processor with second-level address translation (SLAT) capabilities. This feature is available in Windows Pro editions and above. 
- **Cortana**: requires a microphone and speaker and is currently available on Windows 11 for Australia, Brazil, Canada, China, France, Germany, India, Italy, Japan, Mexico, Spain, United Kingdom, and United States.
- **DirectStorage**: requires an NVMe SSD to store and run games that use the Standard NVM Express Controller driver and a DirectX12 GPU with Shader Model 6.0 support.
- **DirectX 12 Ultimate**: available with supported games and graphics chips.
- **Presence**: requires sensor that can detect human distance from device or intent to interact with device.
- **Intelligent Video Conferencing**: requires video camera, microphone, and speaker (audio output) 
- **Multiple Voice Assistant**: requires a microphone and speaker.
- **Snap**: three-column layouts require a screen that is 1920 effective pixels or greater in width.
- **Mute** and **unmute**: from Taskbar requires video camera, microphone, and speaker (audio output). App must be compatible with feature to enable global mute/unmute.
- **Spatial Sound**: requires supporting hardware and software.
- **Microsoft Teams**: requires video camera, microphone, and speaker (audio output).
- **Touch**: requires a screen or monitor that supports multi-touch.
- **Two-factor authentication**: requires use of PIN, biometric (fingerprint reader or illuminated infrared camera), or a phone with Wi-Fi or Bluetooth capabilities.
- **Voice Typing**: requires a PC with a microphone.
- **Wake on Voice**: requires Modern Standby power model and microphone.
- **Wi-Fi 6E**: requires new WLAN IHV hardware and driver and a Wi-Fi 6E capable AP/router.
- **Windows Hello**: requires a camera configured for near infrared (IR) imaging or fingerprint reader for biometric authentication. Devices without biometric sensors can use Windows Hello with a PIN or portable Microsoft compatible security key. For more information, see [IT tools to support Windows 10, version 21H1](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/it-tools-to-support-windows-10-version-21h1/ba-p/2365103).
- **Windows Projection**: requires a display adapter that supports Windows Display Driver Model (WDDM) 2.0 and a Wi-Fi adapter that supports Wi-Fi Direct.
- **Xbox app**: requires an Xbox Live account, which isn't available in all regions. Go to the Xbox Live Countries and Regions page for the most up-to-date information on availability. Some features in the Xbox app will require an active [Xbox Game Pass](https://www.xbox.com/xbox-game-pass) subscription.

## Virtual machine support

The following configuration requirements apply to VMs running Windows 11. 

-	Generation: 2<b> \*</b>
-	Storage: 64 GB or greater
-	Security: 
    - Azure: [Trusted launch](/azure/virtual-machines/trusted-launch) with vTPM and secure boot enabled
    - Hyper-V: [Secure boot and TPM enabled](/windows-server/virtualization/hyper-v/learn-more/Generation-2-virtual-machine-security-settings-for-Hyper-V#secure-boot-setting-in-hyper-v-manager)
    - General settings: Secure boot capable, virtual TPM enabled
-	Memory:  4 GB or greater
-	Processor: Two or more virtual processors

The VM host CPU must also meet Windows 11 [processor requirements](/windows-hardware/design/minimum/windows-processor-requirements).

<b>\*</b> In-place upgrade of existing generation 1 VMs to Windows 11 isn't possible.

> [!NOTE]
> Procedures to configure required VM settings depend on the VM host type. For example, VM hosts running Hyper-V, virtualization (VT-x, VT-d) must be enabled in BIOS. Virtual TPM 2.0 is emulated in the guest VM independent of the Hyper-V host TPM presence or version.

## Next steps

[Plan for Windows 11](windows-11-plan.md)<br>
[Prepare for Windows 11](windows-11-prepare.md)

## See also

[Windows minimum hardware requirements](/windows-hardware/design/minimum/minimum-hardware-requirements-overview)<br>
[What's new in Windows 11 overview](windows-11-whats-new.md)

