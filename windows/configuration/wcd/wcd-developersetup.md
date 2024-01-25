---
title: DeveloperSetup
description: This section describes the DeveloperSetup settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.topic: reference
ms.date: 01/25/2024
---

# DeveloperSetup (Windows Configuration Designer reference)

Use to unlock developer mode on HoloLens devices and configure authentication to Windows Device Portal.

## Applies to

| Setting groups  | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: |
| [EnableDeveloperMode](#developersetupsettings-enabledevelopermode) |   |  | ✅ |  |
| [AuthenticationMode](#windowsdeviceportalsettings-authentication-mode) |   |  | ✅ |  |

## DeveloperSetupSettings: EnableDeveloperMode

When this setting is configured as **True**, the device is unlocked for developer functionality.

## WindowsDevicePortalSettings: Authentication Mode

When AuthenticationMode is set to **Basic Auth**, enter a user name and password to enable the device to connect to and authenticate with the Windows Device Portal.

## Related topics

- [Device Portal for HoloLens](/windows/uwp/debug-test-perf/device-portal-hololens)
