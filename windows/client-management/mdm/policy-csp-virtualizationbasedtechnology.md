---
title: VirtualizationBasedTechnology Policy CSP
description: Learn more about the VirtualizationBasedTechnology Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- VirtualizationBasedTechnology-Begin -->
# Policy CSP - VirtualizationBasedTechnology

<!-- VirtualizationBasedTechnology-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- VirtualizationBasedTechnology-Editable-End -->

<!-- HypervisorEnforcedCodeIntegrity-Begin -->
## HypervisorEnforcedCodeIntegrity

<!-- HypervisorEnforcedCodeIntegrity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HypervisorEnforcedCodeIntegrity-Applicability-End -->

<!-- HypervisorEnforcedCodeIntegrity-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/VirtualizationBasedTechnology/HypervisorEnforcedCodeIntegrity
```
<!-- HypervisorEnforcedCodeIntegrity-OmaUri-End -->

<!-- HypervisorEnforcedCodeIntegrity-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Hypervisor-Protected Code Integrity: 0 - Turns off Hypervisor-Protected Code Integrity remotely if configured previously without UEFI Lock, 1 - Turns on Hypervisor-Protected Code Integrity with UEFI lock, 2 - Turns on Hypervisor-Protected Code Integrity without UEFI lock.
<!-- HypervisorEnforcedCodeIntegrity-Description-End -->

<!-- HypervisorEnforcedCodeIntegrity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HypervisorEnforcedCodeIntegrity-Editable-End -->

<!-- HypervisorEnforcedCodeIntegrity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- HypervisorEnforcedCodeIntegrity-DFProperties-End -->

<!-- HypervisorEnforcedCodeIntegrity-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | (Disabled) Turns off Hypervisor-Protected Code Integrity remotely if configured previously without UEFI Lock. |
| 1 | (Enabled with UEFI lock) Turns on Hypervisor-Protected Code Integrity with UEFI lock. |
| 2 | (Enabled without lock) Turns on Hypervisor-Protected Code Integrity without UEFI lock. |
<!-- HypervisorEnforcedCodeIntegrity-AllowedValues-End -->

<!-- HypervisorEnforcedCodeIntegrity-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VirtualizationBasedSecurity |
| Friendly Name | Turn On Virtualization Based Security |
| Element Name | Virtualization Based Protection of Code Integrity. |
| Location | Computer Configuration |
| Path | System > Device Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeviceGuard |
| ADMX File Name | DeviceGuard.admx |
<!-- HypervisorEnforcedCodeIntegrity-GpMapping-End -->

<!-- HypervisorEnforcedCodeIntegrity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HypervisorEnforcedCodeIntegrity-Examples-End -->

<!-- HypervisorEnforcedCodeIntegrity-End -->

<!-- RequireUEFIMemoryAttributesTable-Begin -->
## RequireUEFIMemoryAttributesTable

<!-- RequireUEFIMemoryAttributesTable-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RequireUEFIMemoryAttributesTable-Applicability-End -->

<!-- RequireUEFIMemoryAttributesTable-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/VirtualizationBasedTechnology/RequireUEFIMemoryAttributesTable
```
<!-- RequireUEFIMemoryAttributesTable-OmaUri-End -->

<!-- RequireUEFIMemoryAttributesTable-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
Require UEFI Memory Attributes Table.
<!-- RequireUEFIMemoryAttributesTable-Description-End -->

<!-- RequireUEFIMemoryAttributesTable-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RequireUEFIMemoryAttributesTable-Editable-End -->

<!-- RequireUEFIMemoryAttributesTable-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RequireUEFIMemoryAttributesTable-DFProperties-End -->

<!-- RequireUEFIMemoryAttributesTable-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Don't require UEFI Memory Attributes Table. |
| 1 | Require UEFI Memory Attributes Table. |
<!-- RequireUEFIMemoryAttributesTable-AllowedValues-End -->

<!-- RequireUEFIMemoryAttributesTable-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | VirtualizationBasedSecurity |
| Friendly Name | Turn On Virtualization Based Security |
| Element Name | Require UEFI Memory Attributes Table. |
| Location | Computer Configuration |
| Path | System > Device Guard |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\DeviceGuard |
| ADMX File Name | DeviceGuard.admx |
<!-- RequireUEFIMemoryAttributesTable-GpMapping-End -->

<!-- RequireUEFIMemoryAttributesTable-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RequireUEFIMemoryAttributesTable-Examples-End -->

<!-- RequireUEFIMemoryAttributesTable-End -->

<!-- VirtualizationBasedTechnology-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- VirtualizationBasedTechnology-CspMoreInfo-End -->

<!-- VirtualizationBasedTechnology-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
