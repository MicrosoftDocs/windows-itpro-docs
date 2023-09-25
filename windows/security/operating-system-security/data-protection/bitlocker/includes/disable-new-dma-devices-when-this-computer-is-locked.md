---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Disable new DMA devices when this computer is locked

This policy allows blocking direct memory access (DMA) for all Thunderbolt hot pluggable PCI downstream ports until a user logs into Windows. Once a user logs in, Windows will enumerate the PCI devices connected to the host Thunderbolt PCI ports. Every time the user locks the machine, DMA will be blocked on hot plug Thunderbolt PCI ports with no children devices, until the user logs in again. Devices which were already enumerated when the machine was unlocked will continue to function until unplugged or the system is rebooted or hibernated. This policy setting is only enforced when BitLocker or device encryption is enabled. Note: Some PCs may not be compatible with this policy if the system firmware enables DMA for newly attached Thunderbolt devices before exposing the new devices to Windows.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |
