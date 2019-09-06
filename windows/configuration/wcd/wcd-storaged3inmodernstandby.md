---
title: StorageD3InModernStandby (Windows 10)
description: This section describes the StorageD3InModernStandby settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
---

# StorageD3InModernStandby (Windows Configuration Designer reference)

Use **StorageD3InModernStandby** to enable or disable low power state (D3) during standby. When this setting is configured to **Enable Storage Device D3**, SATA and NVMe devices will be able to enter the D3 state when the system transits to modern standby state, if they are using a Microsoft inbox driver such as StorAHCI, StorNVMe.

[Learn more about device power states.](https://docs.microsoft.com/windows-hardware/drivers/kernel/device-power-states)

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings | X  | X | X |  | X |

