---
title: StorageD3InModernStandby (Windows 10)
description: This section describes the StorageD3InModernStandby settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
ms.topic: article
manager: dansimp
---

# StorageD3InModernStandby (Windows Configuration Designer reference)

Use **StorageD3InModernStandby** to enable or disable low-power state (D3) during standby. When set to **Enable Storage Device D3**, SATA and NVMe devices can enter the D3 state when:

- The system transits to modern standby state.
- If they're using a Microsoft inbox driver such as StorAHCI, StorNVMe

[Learn more about device power states.](/windows-hardware/drivers/kernel/device-power-states)

## Applies to

| Setting   | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | 
| All settings | ✔️  | ✔️ |  | ✔️ |