---
title: UnifiedWriteFilter (Windows 10)
description: This section describes the UnifiedWriteFilter settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: windows-client
author: aczechowski
ms.localizationpriority: medium
ms.author: aaroncz
ms.topic: article
ms.reviewer: 
manager: dougeby
ms.technology: itpro-configure
ms.date: 12/31/2017
---

# UnifiedWriteFilter (reference)


Use UnifiedWriteFilter to configure settings for the Unified Write Filter (UWF). It helps protect your physical storage media, including most standard writable storage types that are supported by the OS, such as:

- Physical hard disks
- Solidate-state drives
- Internal USB devices
- External SATA devices
- And so on

You can also use UWF to make read-only media appear to the OS as a writeable volume.

>[!IMPORTANT]
>You can't use UWF to protect external USB devices or flash drives.

UWF intercepts all write attempts to a protected volume and redirects these write attempts to a virtual overlay. This feature improves the reliability and stability of your device. It also reduces the wear on write-sensitive media, such as flash memory media like solid-state drives.

The overlay doesn't mirror the entire volume. It dynamically grows to keep track of redirected writes. Generally, the overlay is stored in system memory. You can cache a portion of the overlay on a physical volume.

>[!NOTE]
>UWF fully supports the NTFS system; however, during device startup, NTFS file system journal files can write to a protected volume before UWF has loaded and started protecting the volume. 

[Learn more about the Unified Write Filter feature.](/windows-hardware/customize/enterprise/unified-write-filter)


## Applies to

| Setting   | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: |
| All settings | ✔️ |  |  |  ✔️ |

## FilterEnabled

Set to **True** to enable UWF.

## OverlayFlags

OverlayFlags specifies whether to allow writes to unused space on the volume to pass through, and not redirect to the overlay file. Enabling this setting helps conserve space on the overlay file. 

- Value `0` (default value when [OverlayType](#overlaytype) isn't **Disk**): writes are redirected to the overlay file
- Value `1`(default value when [OverlayType](#overlaytype) is  **Disk**): writes to unused space on the volume are allowed to pass through without being redirected to the overlay file.

## OverlaySize

Enter the maximum overlay size, in megabytes (MB), for the UWF overlay. The minimum value for maximum overlay size is 1024.

>[!NOTE]
>UnifiedWriteFilter must be enabled for this setting to work.

## OverlayType

OverlayType specifies where the overlay is stored. Select between **RAM** (default) and **Disk** (pre-allocated file on the system volume). 

## RegistryExclusions

You can add or remove registry entries that will be excluded from UWF filtering. When a registry key is in the exclusion list, all writes to that registry key bypass UWF filtering. They're written directly to the registry and persist after the device restarts.

Use **Add** to add a registry entry to the exclusion list after you restart the device.

Use **Remove** to remove a registry entry from the exclusion list after you restart the device.

## ResetPersistentState

Set to **True** to reset UWF settings to the original state that was captured at installation time.

## Volumes

Enter a drive letter for a volume to be protected by UWF. 

>[!NOTE]
>In the current OS release, Windows Configuration Designer contains a validation bug. To work around this issue, you must include a ":" after the drive letter when specifying the value for the setting. For example, if you are specifying the C drive, you must set DriveLetter to "C:" instead of just "C".
