---
title: StorageD3InModernStandby (Windows 10)
description: This section describes the StorageD3InModernStandby settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: windows-client
author: aczechowski
ms.localizationpriority: medium
ms.author: aaroncz
ms.topic: reference
ms.collection: must-keep
manager: aaroncz
ms.technology: itpro-configure
ms.date: 12/31/2017
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
