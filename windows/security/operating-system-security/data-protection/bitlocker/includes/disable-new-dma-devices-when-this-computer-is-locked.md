---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Disable new DMA devices when this computer is locked

When enabled, this policy setting blocks direct memory access (DMA) for all hot pluggable PCI ports until a user signs into Windows.

Once a user signs in, Windows enumerates the PCI devices connected to the host Thunderbolt PCI ports. Every time the user locks the device, DMA is blocked on hot plug Thunderbolt PCI ports with no children devices, until the user signs in again.

Devices that were already enumerated when the device was unlocked will continue to function until unplugged, or the system is rebooted or hibernated.

This policy setting is only enforced when BitLocker or device encryption is enabled.

> [!IMPORTANT]
> This policy is not compatible with *Kernel DMA Protection*. It's recommended to disable this policy if the system supports Kernel DMA Protection, as Kernel DMA Protection provides higher security for the system. For more information about Kernel DMA Protection, see [Kernel DMA Protection](../../../../hardware-security/kernel-dma-protection-for-thunderbolt.md).

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |
