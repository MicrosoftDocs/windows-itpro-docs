---
title: ADMX_DiskNVCache Policy CSP
description: Learn more about the ADMX_DiskNVCache Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_DiskNVCache-Begin -->
# Policy CSP - ADMX_DiskNVCache

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_DiskNVCache-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_DiskNVCache-Editable-End -->

<!-- BootResumePolicy-Begin -->
## BootResumePolicy

<!-- BootResumePolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- BootResumePolicy-Applicability-End -->

<!-- BootResumePolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskNVCache/BootResumePolicy
```
<!-- BootResumePolicy-OmaUri-End -->

<!-- BootResumePolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the boot and resume optimizations for the hybrid hard disks in the system.

- If you enable this policy setting, the system doesn't use the non-volatile (NV) cache to optimize boot and resume.

- If you disable this policy setting, the system uses the NV cache to achieve faster boot and resume. The system determines the data that will be stored in the NV cache to optimize boot and resume. The required data is stored in the NV cache during shutdown and hibernate, respectively. This might cause a slight increase in the time taken for shutdown and hibernate.

- If you don't configure this policy setting, the default behavior is observed and the NV cache is used for boot and resume optimizations.

> [!NOTE]
> This policy setting is applicable only if the NV cache feature is on.
<!-- BootResumePolicy-Description-End -->

<!-- BootResumePolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BootResumePolicy-Editable-End -->

<!-- BootResumePolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BootResumePolicy-DFProperties-End -->

<!-- BootResumePolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BootResumePolicy |
| Friendly Name | Turn off boot and resume optimizations |
| Location | Computer Configuration |
| Path | System > Disk NV Cache |
| Registry Key Name | Software\Policies\Microsoft\Windows\NvCache |
| Registry Value Name | OptimizeBootAndResume |
| ADMX File Name | DiskNVCache.admx |
<!-- BootResumePolicy-AdmxBacked-End -->

<!-- BootResumePolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BootResumePolicy-Examples-End -->

<!-- BootResumePolicy-End -->

<!-- CachePowerModePolicy-Begin -->
## CachePowerModePolicy

<!-- CachePowerModePolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CachePowerModePolicy-Applicability-End -->

<!-- CachePowerModePolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskNVCache/CachePowerModePolicy
```
<!-- CachePowerModePolicy-OmaUri-End -->

<!-- CachePowerModePolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off power save mode on the hybrid hard disks in the system.

- If you enable this policy setting, the hard disks aren't put into NV cache power save mode and no power savings are achieved.

- If you disable this policy setting, the hard disks are put into an NV cache power saving mode. In this mode, the system tries to save power by aggressively spinning down the disk.

- If you don't configure this policy setting, the default behavior is to allow the hybrid hard disks to be in power save mode.

> [!NOTE]
> This policy setting is applicable only if the NV cache feature is on.
<!-- CachePowerModePolicy-Description-End -->

<!-- CachePowerModePolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CachePowerModePolicy-Editable-End -->

<!-- CachePowerModePolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CachePowerModePolicy-DFProperties-End -->

<!-- CachePowerModePolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CachePowerModePolicy |
| Friendly Name | Turn off cache power mode |
| Location | Computer Configuration |
| Path | System > Disk NV Cache |
| Registry Key Name | Software\Policies\Microsoft\Windows\NvCache |
| Registry Value Name | EnablePowerModeState |
| ADMX File Name | DiskNVCache.admx |
<!-- CachePowerModePolicy-AdmxBacked-End -->

<!-- CachePowerModePolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CachePowerModePolicy-Examples-End -->

<!-- CachePowerModePolicy-End -->

<!-- FeatureOffPolicy-Begin -->
## FeatureOffPolicy

<!-- FeatureOffPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FeatureOffPolicy-Applicability-End -->

<!-- FeatureOffPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskNVCache/FeatureOffPolicy
```
<!-- FeatureOffPolicy-OmaUri-End -->

<!-- FeatureOffPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off all support for the non-volatile (NV) cache on all hybrid hard disks in the system. To check if you have hybrid hard disks in the system, from Device Manager, right-click the disk drive and select Properties. The NV cache can be used to optimize boot and resume by reading data from the cache while the disks are spinning up. The NV cache can also be used to reduce the power consumption of the system by keeping the disks spun down while satisfying reads and writes from the cache.

- If you enable this policy setting, the system won't manage the NV cache and won't enable NV cache power saving mode.

- If you disable this policy setting, the system will manage the NV cache on the disks if the other policy settings for the NV cache are appropriately configured.

> [!NOTE]
> This policy setting will take effect on next boot.

- If you don't configure this policy setting, the default behavior is to turn on support for the NV cache.
<!-- FeatureOffPolicy-Description-End -->

<!-- FeatureOffPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FeatureOffPolicy-Editable-End -->

<!-- FeatureOffPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FeatureOffPolicy-DFProperties-End -->

<!-- FeatureOffPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FeatureOffPolicy |
| Friendly Name | Turn off non-volatile cache feature |
| Location | Computer Configuration |
| Path | System > Disk NV Cache |
| Registry Key Name | Software\Policies\Microsoft\Windows\NvCache |
| Registry Value Name | EnableNvCache |
| ADMX File Name | DiskNVCache.admx |
<!-- FeatureOffPolicy-AdmxBacked-End -->

<!-- FeatureOffPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FeatureOffPolicy-Examples-End -->

<!-- FeatureOffPolicy-End -->

<!-- SolidStatePolicy-Begin -->
## SolidStatePolicy

<!-- SolidStatePolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SolidStatePolicy-Applicability-End -->

<!-- SolidStatePolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_DiskNVCache/SolidStatePolicy
```
<!-- SolidStatePolicy-OmaUri-End -->

<!-- SolidStatePolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the solid state mode for the hybrid hard disks.

- If you enable this policy setting, frequently written files such as the file system metadata and registry may not be stored in the NV cache.

- If you disable this policy setting, the system will store frequently written data into the non-volatile (NV) cache. This allows the system to exclusively run out of the NV cache and power down the disk for longer periods to save power. Note that this can cause increased wear of the NV cache.

- If you don't configure this policy setting, the default behavior of the system is observed and frequently written files will be stored in the NV cache.

> [!NOTE]
> This policy setting is applicable only if the NV cache feature is on.
<!-- SolidStatePolicy-Description-End -->

<!-- SolidStatePolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SolidStatePolicy-Editable-End -->

<!-- SolidStatePolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SolidStatePolicy-DFProperties-End -->

<!-- SolidStatePolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SolidStatePolicy |
| Friendly Name | Turn off solid state mode |
| Location | Computer Configuration |
| Path | System > Disk NV Cache |
| Registry Key Name | Software\Policies\Microsoft\Windows\NvCache |
| Registry Value Name | EnableSolidStateMode |
| ADMX File Name | DiskNVCache.admx |
<!-- SolidStatePolicy-AdmxBacked-End -->

<!-- SolidStatePolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SolidStatePolicy-Examples-End -->

<!-- SolidStatePolicy-End -->

<!-- ADMX_DiskNVCache-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_DiskNVCache-CspMoreInfo-End -->

<!-- ADMX_DiskNVCache-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
