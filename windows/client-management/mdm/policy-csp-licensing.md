---
title: Licensing Policy CSP
description: Learn more about the Licensing Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Licensing-Begin -->
# Policy CSP - Licensing

<!-- Licensing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Licensing-Editable-End -->

<!-- AllowWindowsEntitlementReactivation-Begin -->
## AllowWindowsEntitlementReactivation

<!-- AllowWindowsEntitlementReactivation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowWindowsEntitlementReactivation-Applicability-End -->

<!-- AllowWindowsEntitlementReactivation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Licensing/AllowWindowsEntitlementReactivation
```
<!-- AllowWindowsEntitlementReactivation-OmaUri-End -->

<!-- AllowWindowsEntitlementReactivation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether OS Reactivation is blocked on a device.

Policy Options:

- Not Configured (default -- Windows registration and reactivation is allowed)
- Disabled (Windows registration and reactivation isn't allowed)
- Enabled (Windows registration is allowed)
<!-- AllowWindowsEntitlementReactivation-Description-End -->

<!-- AllowWindowsEntitlementReactivation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWindowsEntitlementReactivation-Editable-End -->

<!-- AllowWindowsEntitlementReactivation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowWindowsEntitlementReactivation-DFProperties-End -->

<!-- AllowWindowsEntitlementReactivation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable Windows license reactivation on managed devices. |
| 1 (Default) | Enable Windows license reactivation on managed devices. |
<!-- AllowWindowsEntitlementReactivation-AllowedValues-End -->

<!-- AllowWindowsEntitlementReactivation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowWindowsEntitlementReactivation |
| Friendly Name | Control Device Reactivation for Retail devices |
| Location | Computer Configuration |
| Path | Windows Components > Software Protection Platform |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform |
| Registry Value Name | AllowWindowsEntitlementReactivation |
| ADMX File Name | AVSValidationGP.admx |
<!-- AllowWindowsEntitlementReactivation-GpMapping-End -->

<!-- AllowWindowsEntitlementReactivation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWindowsEntitlementReactivation-Examples-End -->

<!-- AllowWindowsEntitlementReactivation-End -->

<!-- DisallowKMSClientOnlineAVSValidation-Begin -->
## DisallowKMSClientOnlineAVSValidation

<!-- DisallowKMSClientOnlineAVSValidation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- DisallowKMSClientOnlineAVSValidation-Applicability-End -->

<!-- DisallowKMSClientOnlineAVSValidation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Licensing/DisallowKMSClientOnlineAVSValidation
```
<!-- DisallowKMSClientOnlineAVSValidation-OmaUri-End -->

<!-- DisallowKMSClientOnlineAVSValidation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you opt-out of sending KMS client activation data to Microsoft automatically. Enabling this setting prevents this computer from sending data to Microsoft regarding its activation state.

If you disable or don't configure this policy setting, KMS client activation data will be sent to Microsoft services when this device activates.

Policy Options:

- Not Configured (default -- data will be automatically sent to Microsoft)
- Disabled (data will be automatically sent to Microsoft)
- Enabled (data won't be sent to Microsoft)
<!-- DisallowKMSClientOnlineAVSValidation-Description-End -->

<!-- DisallowKMSClientOnlineAVSValidation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowKMSClientOnlineAVSValidation-Editable-End -->

<!-- DisallowKMSClientOnlineAVSValidation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisallowKMSClientOnlineAVSValidation-DFProperties-End -->

<!-- DisallowKMSClientOnlineAVSValidation-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- DisallowKMSClientOnlineAVSValidation-AllowedValues-End -->

<!-- DisallowKMSClientOnlineAVSValidation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | NoAcquireGT |
| Friendly Name | Turn off KMS Client Online AVS Validation |
| Location | Computer Configuration |
| Path | Windows Components > Software Protection Platform |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\CurrentVersion\Software Protection Platform |
| Registry Value Name | NoGenTicket |
| ADMX File Name | AVSValidationGP.admx |
<!-- DisallowKMSClientOnlineAVSValidation-GpMapping-End -->

<!-- DisallowKMSClientOnlineAVSValidation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowKMSClientOnlineAVSValidation-Examples-End -->

<!-- DisallowKMSClientOnlineAVSValidation-End -->

<!-- Licensing-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Licensing-CspMoreInfo-End -->

<!-- Licensing-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
