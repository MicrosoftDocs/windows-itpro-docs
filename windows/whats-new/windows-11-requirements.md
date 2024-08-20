---
title: Windows 11 requirements
description: Hardware requirements to deploy Windows 11.
manager: aaroncz
author: mestew
ms.author: mstewart
ms.service: windows-client
ms.localizationpriority: medium
ms.topic: conceptual
ms.collection:
  - highpri
  - tier1
ms.subservice: itpro-fundamentals
ms.date: 03/13/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>

---

# Windows 11 requirements

This article lists the system requirements for Windows 11. Windows 11 is also [supported on a virtual machine (VM)](#virtual-machine-support).

## Hardware requirements

To install or upgrade to Windows 11, devices must meet the following minimum hardware requirements:

- **Processor**: 1 gigahertz (GHz) or faster with two or more cores on a [compatible 64-bit processor](/windows-hardware/design/minimum/windows-processor-requirements) or system on a chip (SoC).

- **Memory**: 4 gigabytes (GB) or greater.

- **Storage**: 64 GB or greater available disk space.

  > [!NOTE]
  > There might be more storage requirements over time for updates, and to enable specific features within the OS. For more information, see [Windows 11 specifications](https://www.microsoft.com/windows/windows-11-specifications).

- **Graphics card**: Compatible with DirectX 12 or later, with a WDDM 2.0 driver.

- **System firmware**: UEFI, Secure Boot capable.

- **TPM**: [Trusted Platform Module](/windows/security/information-protection/tpm/trusted-platform-module-overview) (TPM) version 2.0.

- **Display**: High definition (720p) display, 9" or greater monitor, 8 bits per color channel.

- **Internet connection**: Internet connectivity is necessary to perform updates, and to download and use some features.

  - Windows 11 Home edition requires an internet connection and a Microsoft Account to complete device setup on first use.

For more information, see the following Windows Insider blog post: [Update on Windows 11 minimum system requirements](https://blogs.windows.com/windows-insider/2021/06/28/update-on-windows-11-minimum-system-requirements/).

For more information about tools to evaluate readiness, see [Determine eligibility](windows-11-plan.md#determine-eligibility).

## OS requirements

To upgrade directly to Windows 11, eligible Windows 10 devices must meet both of the following criteria:

- Running Windows 10, version 2004 or later.
- Installed the September 14, 2021 security update or later.

> [!NOTE]
>
> - S mode is only supported on the Home edition of Windows 11.
> - If you're running a different edition of Windows in S mode, before upgrading to Windows 11, first [switch out of S mode](/previous-versions/windows/it-pro/windows-10/deployment/s-mode/switch-edition-from-s-mode).
> - To switch a device out of Windows 10 in S mode also requires internet connectivity. If you switch out of S mode, you can't switch back to S mode later.

## Feature-specific requirements

Some features in Windows 11 have requirements beyond the minimum [hardware requirements](#hardware-requirements).

- **5G support**: requires 5G capable modem.
- **Auto HDR**: requires an HDR monitor.
- **BitLocker to Go**: requires a USB flash drive. This feature is available in Windows Pro and above editions.
- **Client Hyper-V**: requires a processor with second-level address translation (SLAT) capabilities. This feature is available in Windows Pro editions and greater.
- **DirectStorage**: requires an NVMe SSD to store and run games that use the Standard NVM Express Controller driver and a DirectX12 GPU with Shader Model 6.0 support.
- **DirectX 12 Ultimate**: available with supported games and graphics chips.
- **Presence**: requires sensor that can detect human distance from device or intent to interact with device.
- **Intelligent Video Conferencing**: requires video camera, microphone, and speaker (audio output).
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
- **Xbox app**: requires an Xbox Live account, which isn't available in all regions. Go to the Xbox Live *Countries and Regions* page for the most up-to-date information on availability. Some features in the Xbox app require an active [Xbox Game Pass](https://www.xbox.com/xbox-game-pass) subscription.

## Virtual machine support

The following configuration requirements apply to VMs running Windows 11.

- **Generation**: 2

  > [!NOTE]
  > In-place upgrade of existing generation 1 VMs to Windows 11 isn't possible.

- **Storage**: 64 GB or greater disk space.

- **Security**:

  - **Azure**: [Trusted launch](/azure/virtual-machines/trusted-launch) with vTPM enabled.
  - **Hyper-V**: [Secure boot and TPM enabled](/windows-server/virtualization/hyper-v/learn-more/Generation-2-virtual-machine-security-settings-for-Hyper-V#secure-boot-setting-in-hyper-v-manager).

    - General settings: Secure boot capable, virtual TPM enabled.

- **Memory**: 4 GB or greater.

- **Processor**: Two or more virtual processors.

  - The VM host processor must also meet Windows 11 [processor requirements](/windows-hardware/design/minimum/windows-processor-requirements).

    > [!NOTE]
    > There may be some instances where this requirement for the VM host doesn't apply. For more information, see [Options for using Windows 11 with Mac computers](https://support.microsoft.com/topic/cd15fd62-9b34-4b78-b0bc-121baa3c568c).<!-- 7600331 -->

  - Procedures to configure required VM settings depend on the VM host type. For example, VM hosts running Hyper-V, virtualization (VT-x, VT-d) must be enabled in the BIOS. Virtual TPM 2.0 is emulated in the guest VM independent of the Hyper-V host TPM presence or version.

## Next steps

- [What's new in Windows 11](/windows/whats-new/windows-11-overview)
- [Plan for Windows 11](windows-11-plan.md)
- [Prepare for Windows 11](windows-11-prepare.md)
- [Windows minimum hardware requirements](/windows-hardware/design/minimum/minimum-hardware-requirements-overview)

