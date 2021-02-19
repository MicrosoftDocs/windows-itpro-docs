---
title: DeveloperSetup (Windows 10)
description: This section describes the DeveloperSetup settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
ms.reviewer: 
manager: dansimp
---

# DeveloperSetup (Windows Configuration Designer reference)

Use to unlock developer mode on HoloLens devices and configure authentication to Windows Device Portal.

## Applies to

| Setting groups  | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [EnableDeveloperMode](#enabledevelopermode) |   |  |  | X |  |
| [AuthenticationMode](#authenticationmode) |   |  |  | X |  |


<span id="enabledevelopermode" />
## DeveloperSetupSettings: EnableDeveloperMode

When this setting is configured as **True**, the device is unlocked for developer functionality.

<span id="authenticationmode" />
## WindowsDevicePortalSettings: Authentication Mode

When AuthenticationMode is set to **Basic Auth**, enter a user name and password to enable the device to connect to and authenticate with the Windows Device Portal.

## Related topics

- [Device Portal for HoloLens](https://docs.microsoft.com/windows/uwp/debug-test-perf/device-portal-hololens)
