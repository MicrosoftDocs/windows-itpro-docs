---
title: Policy CSP - DmaGuard
description: Policy CSP - DmaGuard
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/17/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - DmaGuard

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


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
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy is intended to provide additional security against external DMA capable devices. It allows for more control over the enumeration of external DMA capable devices incompatible with DMA Remapping/device memory isolation and sandboxing. 

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

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in the next major release of Windows 10.

<!--/Policies-->

