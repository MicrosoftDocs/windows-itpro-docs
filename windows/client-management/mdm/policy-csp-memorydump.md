---
title: MemoryDump Policy CSP
description: Learn more about the MemoryDump Area in Policy CSP.
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

<!-- MemoryDump-Begin -->
# Policy CSP - MemoryDump

<!-- MemoryDump-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MemoryDump-Editable-End -->

<!-- AllowCrashDump-Begin -->
## AllowCrashDump

<!-- AllowCrashDump-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowCrashDump-Applicability-End -->

<!-- AllowCrashDump-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MemoryDump/AllowCrashDump
```
<!-- AllowCrashDump-OmaUri-End -->

<!-- AllowCrashDump-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting decides if crash dump collection on the machine is allowed or not. Supported values: 0 - Disable crash dump collection. 1 (default) - Allow crash dump collection.
<!-- AllowCrashDump-Description-End -->

<!-- AllowCrashDump-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCrashDump-Editable-End -->

<!-- AllowCrashDump-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowCrashDump-DFProperties-End -->

<!-- AllowCrashDump-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable crash dump collection. |
| 1 (Default) | Allow crash dump collection. |
<!-- AllowCrashDump-AllowedValues-End -->

<!-- AllowCrashDump-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCrashDump-Examples-End -->

<!-- AllowCrashDump-End -->

<!-- AllowLiveDump-Begin -->
## AllowLiveDump

<!-- AllowLiveDump-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowLiveDump-Applicability-End -->

<!-- AllowLiveDump-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/MemoryDump/AllowLiveDump
```
<!-- AllowLiveDump-OmaUri-End -->

<!-- AllowLiveDump-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting decides if live dump collection on the machine is allowed or not. Supported values: 0 - Disable live dump collection. 1 (default) - Allow live dump collection.
<!-- AllowLiveDump-Description-End -->

<!-- AllowLiveDump-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLiveDump-Editable-End -->

<!-- AllowLiveDump-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowLiveDump-DFProperties-End -->

<!-- AllowLiveDump-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable live dump collection. |
| 1 (Default) | Allow live dump collection. |
<!-- AllowLiveDump-AllowedValues-End -->

<!-- AllowLiveDump-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLiveDump-Examples-End -->

<!-- AllowLiveDump-End -->

<!-- MemoryDump-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- MemoryDump-CspMoreInfo-End -->

<!-- MemoryDump-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
