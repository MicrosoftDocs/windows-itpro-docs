---
title: DataProtection Policy CSP
description: Learn more about the DataProtection Area in Policy CSP.
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

<!-- DataProtection-Begin -->
# Policy CSP - DataProtection

<!-- DataProtection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DataProtection-Editable-End -->

<!-- AllowDirectMemoryAccess-Begin -->
## AllowDirectMemoryAccess

<!-- AllowDirectMemoryAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowDirectMemoryAccess-Applicability-End -->

<!-- AllowDirectMemoryAccess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DataProtection/AllowDirectMemoryAccess
```
<!-- AllowDirectMemoryAccess-OmaUri-End -->

<!-- AllowDirectMemoryAccess-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to block direct memory access (DMA) for all hot pluggable PCI downstream ports until a user logs into Windows. Once a user logs in, Windows will enumerate the PCI devices connected to the host plug PCI ports. Every time the user locks the machine, DMA will be blocked on hot plug PCI ports with no children devices until the user logs in again. Devices which were already enumerated when the machine was unlocked will continue to function until unplugged. This policy setting is only enforced when [BitLocker Device Encryption](/windows/security/information-protection/bitlocker/bitlocker-device-encryption-overview-windows-10#bitlocker-device-encryption) is enabled. Most restricted value is 0.
<!-- AllowDirectMemoryAccess-Description-End -->

<!-- AllowDirectMemoryAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDirectMemoryAccess-Editable-End -->

<!-- AllowDirectMemoryAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowDirectMemoryAccess-DFProperties-End -->

<!-- AllowDirectMemoryAccess-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowDirectMemoryAccess-AllowedValues-End -->

<!-- AllowDirectMemoryAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDirectMemoryAccess-Examples-End -->

<!-- AllowDirectMemoryAccess-End -->

<!-- LegacySelectiveWipeID-Begin -->
## LegacySelectiveWipeID

<!-- LegacySelectiveWipeID-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- LegacySelectiveWipeID-Applicability-End -->

<!-- LegacySelectiveWipeID-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DataProtection/LegacySelectiveWipeID
```
<!-- LegacySelectiveWipeID-OmaUri-End -->

<!-- LegacySelectiveWipeID-Description-Begin -->
<!-- Description-Source-DDF -->
Important. This policy may change in a future release. It may be used for testing purposes, but shouldn't be used in a production environment at this time. Setting used by Windows 8. 1 Selective Wipe.

> [!NOTE]
> This policy isn't recommended for use in Windows 10.
<!-- LegacySelectiveWipeID-Description-End -->

<!-- LegacySelectiveWipeID-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LegacySelectiveWipeID-Editable-End -->

<!-- LegacySelectiveWipeID-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LegacySelectiveWipeID-DFProperties-End -->

<!-- LegacySelectiveWipeID-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LegacySelectiveWipeID-Examples-End -->

<!-- LegacySelectiveWipeID-End -->

<!-- DataProtection-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DataProtection-CspMoreInfo-End -->

<!-- DataProtection-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
