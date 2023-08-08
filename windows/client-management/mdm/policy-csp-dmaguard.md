---
title: DmaGuard Policy CSP
description: Learn more about the DmaGuard Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- DmaGuard-Begin -->
# Policy CSP - DmaGuard

<!-- DmaGuard-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DmaGuard-Editable-End -->

<!-- DeviceEnumerationPolicy-Begin -->
## DeviceEnumerationPolicy

<!-- DeviceEnumerationPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- DeviceEnumerationPolicy-Applicability-End -->

<!-- DeviceEnumerationPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DmaGuard/DeviceEnumerationPolicy
```
<!-- DeviceEnumerationPolicy-OmaUri-End -->

<!-- DeviceEnumerationPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
Enumeration policy for external DMA-capable devices incompatible with DMA remapping. This policy only takes effect when Kernel DMA Protection is enabled and supported by the system. Note this policy doesn't apply to 1394, PCMCIA or ExpressCard devices.
<!-- DeviceEnumerationPolicy-Description-End -->

<!-- DeviceEnumerationPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy is intended to provide more security against external DMA capable devices. It allows for more control over the enumeration of external DMA capable devices that are incompatible with [DMA Remapping](/windows-hardware/drivers/pci/enabling-dma-remapping-for-device-drivers), device memory isolation and sandboxing.

Device memory sandboxing allows the OS to use the I/O Memory Management Unit (IOMMU) of a device to block unallowed I/O, or memory access by the peripheral. In other words, the OS assigns a certain memory range to the peripheral. If the peripheral attempts to read/write to memory outside of the assigned range, the OS blocks it.

This policy requires a system reboot to take effect.

This policy only takes effect when Kernel DMA Protection is supported and enabled by the system firmware. Kernel DMA Protection is a platform feature that can't be controlled via policy or by end user. It has to be supported by the system at the time of manufacturing. To check if the system supports Kernel DMA Protection, check the Kernel DMA Protection field in the Summary page of MSINFO32.exe.
<!-- DeviceEnumerationPolicy-Editable-End -->

<!-- DeviceEnumerationPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- DeviceEnumerationPolicy-DFProperties-End -->

<!-- DeviceEnumerationPolicy-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Block all (Most restrictive). |
| 1 (Default) | Only after log in/screen unlock. |
| 2 | Allow all (Least restrictive). |
<!-- DeviceEnumerationPolicy-AllowedValues-End -->

<!-- DeviceEnumerationPolicy-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DmaGuardEnumerationPolicy |
| Friendly Name | Enumeration policy for external devices incompatible with Kernel DMA Protection |
| Location | Computer Configuration |
| Path | System > Kernel DMA Protection |
| Registry Key Name | Software\Policies\Microsoft\Windows\Kernel DMA Protection |
| ADMX File Name | DmaGuard.admx |
<!-- DeviceEnumerationPolicy-GpMapping-End -->

<!-- DeviceEnumerationPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DeviceEnumerationPolicy-Examples-End -->

<!-- DeviceEnumerationPolicy-End -->

<!-- DmaGuard-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DmaGuard-CspMoreInfo-End -->

<!-- DmaGuard-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
