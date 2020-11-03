---
title: Policy CSP - DmaGuard
description: Learn how to use the Policy CSP - DmaGuard setting to provide additional security against external DMA capable devices.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - DmaGuard


<hr/>

<!--Policies-->
## DmaGuard policies  

<dl>
  <dd>
    <a href="#dmaguard-deviceenumerationpolicy">DmaGuard/DeviceEnumerationPolicy</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="dmaguard-deviceenumerationpolicy"></a>**DmaGuard/DeviceEnumerationPolicy**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy is intended to provide additional security against external DMA capable devices. It allows for more control over the enumeration of external DMA capable devices incompatible with [DMA Remapping](https://docs.microsoft.com/windows-hardware/drivers/pci/enabling-dma-remapping-for-device-drivers)/device memory isolation and sandboxing. 

Device memory sandboxing allows the OS to leverage the I/O Memory Management Unit (IOMMU) of a device to block unallowed I/O, or memory access, by the peripheral. In other words, the OS assigns a certain memory range to the peripheral. If the peripheral attempts to read/write to memory outside of the assigned range, the OS blocks it.

This policy only takes effect when Kernel DMA Protection is supported and enabled by the system firmware. Kernel DMA Protection is a platform feature that cannot be controlled via policy or by end user. It has to be supported by the system at the time of manufacturing. To check if the system supports Kernel DMA Protection, please check the Kernel DMA Protection field in the Summary page of MSINFO32.exe.

> [!NOTE]
> This policy does not apply to 1394/Firewire, PCMCIA, CardBus, or ExpressCard devices.

Supported values:

0 - Block all (Most restrictive): Devices with DMA remapping compatible drivers will be allowed to enumerate at any time. Devices with DMA remapping incompatible drivers will never be allowed to start and perform DMA at any time.

1 - Only after log in/screen unlock (Default): Devices with DMA remapping compatible drivers will be allowed to enumerate at any time. Devices with DMA remapping incompatible drivers will only be enumerated after the user unlocks the screen

2 -  Allow all (Least restrictive): All external DMA capable PCIe devices will be enumerated at any time

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Enumeration policy for external devices incompatible with Kernel DMA Protection*
-   GP name: *DmaGuardEnumerationPolicy*
-   GP path: *System/Kernel DMA Protection*
-   GP ADMX file name: *dmaguard.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

