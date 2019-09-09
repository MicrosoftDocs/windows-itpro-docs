---
title: UnifiedWriteFilter (Windows 10)
description: This section describes the UnifiedWriteFilter settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.reviewer: 
manager: dansimp
---

# UnifiedWriteFilter (reference)


Use UnifiedWriteFilter to configure settings for the Unified Write Filter (UWF) in your device to help protect your physical storage media, including most standard writable storage types that are supported by the OS, such as physical hard disks, solidate-state drives, internal USB devices, external SATA devices, and so on. You can also use UWF to make read-only media appear to the OS as a writeable volume.

>[!IMPORTANT]
>You cannot use UWF to protect external USB devices or flash drives.

UWF intercepts all write attempts to a protected volume and redirects those write attempts to a virtual overlay. This improves the reliability and stability of your device and reduces the wear on write-sensitive media, such as flash memory media like solid-state drives.

The overlay does not mirror the entire volume, but dynamically grows to keep track of redirected writes. Generally the overlay is stored in system memory, although you can cache a portion of the overlay on a physical volume. 

>[!NOTE]
>UWF fully supports the NTFS system; however, during device startup, NTFS file system journal files can write to a protected volume before UWF has loaded and started protecting the volume. 

[Learn more about the Unified Write Filter feature.](https://docs.microsoft.com/windows-hardware/customize/enterprise/unified-write-filter)


## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings | X |  |  |  |  X |

## FilterEnabled

Set to **True** to enable UWF.

## OverlayFlags

OverlayFlags specifies whether to allow writes to unused space on the volume to pass through, and not be redirected to the overlay file. Enabling this setting helps conserve space on the overlay file. 

- Value `0` (default value when [OverlayType](#overlaytype) is not **Disk**): writes are redirected to the overlay file
- Value `1`(default value when [OverlayType](#overlaytype) is  **Disk**): writes to unused space on the volume are allowed to pass through without being redirected to the overlay file.

## OverlaySize

Enter the maximum overlay size, in megabytes (MB), for the UWF overlay. The minimum value for maximum overlay size is 1024.

>[!NOTE]
>UnifiedWriteFilter must be enabled for this setting to work.

## OverlayType

OverlayType specifies where the overlay is stored. Select between **RAM** (default) and **Disk** (pre-allocated file on the system volume). 

## RegistryExclusions

You can add or remove registry entries that will be excluded from UWF filtering. When a registry key is in the exclusion list, all writes to that registry key bypass UWF filtering and are written directly to the registry and persist after the device restarts.

Use **Add** to add a registry entry to the exclusion list after you restart the device.

Use **Remove** to remove a registry entry from the exclusion list after you restart the device.

## ResetPersistentState

Set to **True** to reset UWF settings to the original state that was captured at installation time.

## Volumes

Enter a drive letter for a volume to be protected by UWF. 

>[!NOTE]
>In the current OS release, Windows Configuration Designer contains a validation bug. To work around this issue, you must include a ":" after the drive letter when specifying the value for the setting. For example, if you are specifying the C drive, you must set DriveLetter to "C:" instead of just "C".
