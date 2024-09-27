---
title: AppDeviceInventory Policy CSP
description: Learn more about the AppDeviceInventory Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- AppDeviceInventory-Begin -->
# Policy CSP - AppDeviceInventory

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- AppDeviceInventory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AppDeviceInventory-Editable-End -->

<!-- TurnOffAPISamping-Begin -->
## TurnOffAPISamping

<!-- TurnOffAPISamping-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- TurnOffAPISamping-Applicability-End -->

<!-- TurnOffAPISamping-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppDeviceInventory/TurnOffAPISamping
```
<!-- TurnOffAPISamping-OmaUri-End -->

<!-- TurnOffAPISamping-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the state of API Sampling. API Sampling monitors the sampled collection of application programming interfaces used during system runtime to help diagnose compatibility problems.

- If you enable this policy, API Sampling won't be run.

- If you disable or don't configure this policy, API Sampling will be turned on.
<!-- TurnOffAPISamping-Description-End -->

<!-- TurnOffAPISamping-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffAPISamping-Editable-End -->

<!-- TurnOffAPISamping-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffAPISamping-DFProperties-End -->

<!-- TurnOffAPISamping-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffAPISamping |
| Friendly Name | Turn off API Sampling |
| Location | Computer Configuration |
| Path | Windows Components > App and Device Inventory |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisableAPISamping |
| ADMX File Name | AppDeviceInventory.admx |
<!-- TurnOffAPISamping-AdmxBacked-End -->

<!-- TurnOffAPISamping-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffAPISamping-Examples-End -->

<!-- TurnOffAPISamping-End -->

<!-- TurnOffApplicationFootprint-Begin -->
## TurnOffApplicationFootprint

<!-- TurnOffApplicationFootprint-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- TurnOffApplicationFootprint-Applicability-End -->

<!-- TurnOffApplicationFootprint-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppDeviceInventory/TurnOffApplicationFootprint
```
<!-- TurnOffApplicationFootprint-OmaUri-End -->

<!-- TurnOffApplicationFootprint-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the state of Application Footprint. Application Footprint monitors the sampled collection of registry and file usage to help diagnose compatibility problems.

- If you enable this policy, Application Footprint won't be run.

- If you disable or don't configure this policy, Application Footprint will be turned on.
<!-- TurnOffApplicationFootprint-Description-End -->

<!-- TurnOffApplicationFootprint-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffApplicationFootprint-Editable-End -->

<!-- TurnOffApplicationFootprint-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffApplicationFootprint-DFProperties-End -->

<!-- TurnOffApplicationFootprint-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffApplicationFootprint |
| Friendly Name | Turn off Application Footprint |
| Location | Computer Configuration |
| Path | Windows Components > App and Device Inventory |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisableApplicationFootprint |
| ADMX File Name | AppDeviceInventory.admx |
<!-- TurnOffApplicationFootprint-AdmxBacked-End -->

<!-- TurnOffApplicationFootprint-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffApplicationFootprint-Examples-End -->

<!-- TurnOffApplicationFootprint-End -->

<!-- TurnOffInstallTracing-Begin -->
## TurnOffInstallTracing

<!-- TurnOffInstallTracing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- TurnOffInstallTracing-Applicability-End -->

<!-- TurnOffInstallTracing-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppDeviceInventory/TurnOffInstallTracing
```
<!-- TurnOffInstallTracing-OmaUri-End -->

<!-- TurnOffInstallTracing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the state of Install Tracing. Install Tracing is a mechanism that tracks application installs to help diagnose compatibility problems.

- If you enable this policy, Install Tracing won't be run.

- If you disable or don't configure this policy, Install Tracing will be turned on.
<!-- TurnOffInstallTracing-Description-End -->

<!-- TurnOffInstallTracing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffInstallTracing-Editable-End -->

<!-- TurnOffInstallTracing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffInstallTracing-DFProperties-End -->

<!-- TurnOffInstallTracing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffInstallTracing |
| Friendly Name | Turn off Install Tracing |
| Location | Computer Configuration |
| Path | Windows Components > App and Device Inventory |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisableInstallTracing |
| ADMX File Name | AppDeviceInventory.admx |
<!-- TurnOffInstallTracing-AdmxBacked-End -->

<!-- TurnOffInstallTracing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffInstallTracing-Examples-End -->

<!-- TurnOffInstallTracing-End -->

<!-- TurnOffWin32AppBackup-Begin -->
## TurnOffWin32AppBackup

<!-- TurnOffWin32AppBackup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- TurnOffWin32AppBackup-Applicability-End -->

<!-- TurnOffWin32AppBackup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/AppDeviceInventory/TurnOffWin32AppBackup
```
<!-- TurnOffWin32AppBackup-OmaUri-End -->

<!-- TurnOffWin32AppBackup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the state of the compatibility scan for backed up applications. The compatibility scan for backed up applications evaluates for compatibility problems in installed applications.

- If you enable this policy, the compatibility scan for backed up applications won't be run.

- If you disable or don't configure this policy, the compatibility scan for backed up applications will be run.
<!-- TurnOffWin32AppBackup-Description-End -->

<!-- TurnOffWin32AppBackup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffWin32AppBackup-Editable-End -->

<!-- TurnOffWin32AppBackup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffWin32AppBackup-DFProperties-End -->

<!-- TurnOffWin32AppBackup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffWin32AppBackup |
| Friendly Name | Turn off compatibility scan for backed up applications |
| Location | Computer Configuration |
| Path | Windows Components > App and Device Inventory |
| Registry Key Name | Software\Policies\Microsoft\Windows\AppCompat |
| Registry Value Name | DisableWin32AppBackup |
| ADMX File Name | AppDeviceInventory.admx |
<!-- TurnOffWin32AppBackup-AdmxBacked-End -->

<!-- TurnOffWin32AppBackup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffWin32AppBackup-Examples-End -->

<!-- TurnOffWin32AppBackup-End -->

<!-- AppDeviceInventory-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- AppDeviceInventory-CspMoreInfo-End -->

<!-- AppDeviceInventory-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
