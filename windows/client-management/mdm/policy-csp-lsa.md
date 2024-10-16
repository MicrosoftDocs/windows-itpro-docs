---
title: LocalSecurityAuthority Policy CSP
description: Learn more about the LocalSecurityAuthority Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- LocalSecurityAuthority-Begin -->
# Policy CSP - LocalSecurityAuthority

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- LocalSecurityAuthority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalSecurityAuthority-Editable-End -->

<!-- AllowCustomSSPsAPs-Begin -->
## AllowCustomSSPsAPs

<!-- AllowCustomSSPsAPs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- AllowCustomSSPsAPs-Applicability-End -->

<!-- AllowCustomSSPsAPs-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalSecurityAuthority/AllowCustomSSPsAPs
```
<!-- AllowCustomSSPsAPs-OmaUri-End -->

<!-- AllowCustomSSPsAPs-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the configuration under which LSASS loads custom SSPs and APs.

- If you enable this setting or don't configure it, LSA allows custom SSPs and APs to be loaded.

- If you disable this setting, LSA doesn't load custom SSPs and APs.
<!-- AllowCustomSSPsAPs-Description-End -->

<!-- AllowCustomSSPsAPs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCustomSSPsAPs-Editable-End -->

<!-- AllowCustomSSPsAPs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowCustomSSPsAPs-DFProperties-End -->

<!-- AllowCustomSSPsAPs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowCustomSSPsAPs |
| Friendly Name | Allow Custom SSPs and APs to be loaded into LSASS |
| Location | Computer Configuration |
| Path | System > Local Security Authority |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowCustomSSPsAPs |
| ADMX File Name | LocalSecurityAuthority.admx |
<!-- AllowCustomSSPsAPs-AdmxBacked-End -->

<!-- AllowCustomSSPsAPs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCustomSSPsAPs-Examples-End -->

<!-- AllowCustomSSPsAPs-End -->

<!-- ConfigureLsaProtectedProcess-Begin -->
## ConfigureLsaProtectedProcess

<!-- ConfigureLsaProtectedProcess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- ConfigureLsaProtectedProcess-Applicability-End -->

<!-- ConfigureLsaProtectedProcess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/LocalSecurityAuthority/ConfigureLsaProtectedProcess
```
<!-- ConfigureLsaProtectedProcess-OmaUri-End -->

<!-- ConfigureLsaProtectedProcess-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy controls the configuration under which LSASS is run.

- If you don't configure this policy and there is no current setting in the registry, LSA will run as protected process for all clean installed, HVCI capable, client SKUs. This configuration isn't UEFI locked. This can be overridden if the policy is configured.

- If you configure and set this policy setting to "Disabled", LSA won't run as a protected process.

- If you configure and set this policy setting to "EnabledWithUEFILock," LSA will run as a protected process and this configuration is UEFI locked.

- If you configure and set this policy setting to "EnabledWithoutUEFILock", LSA will run as a protected process and this configuration isn't UEFI locked.
<!-- ConfigureLsaProtectedProcess-Description-End -->

<!-- ConfigureLsaProtectedProcess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigureLsaProtectedProcess-Editable-End -->

<!-- ConfigureLsaProtectedProcess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- ConfigureLsaProtectedProcess-DFProperties-End -->

<!-- ConfigureLsaProtectedProcess-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. Default value. LSA won't run as protected process. |
| 1 | Enabled with UEFI lock. LSA will run as protected process and this configuration is UEFI locked. |
| 2 | Enabled without UEFI lock. LSA will run as protected process and this configuration isn't UEFI locked. |
<!-- ConfigureLsaProtectedProcess-AllowedValues-End -->

<!-- ConfigureLsaProtectedProcess-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | ConfigureLsaProtectedProcess |
| Friendly Name | Configures LSASS to run as a protected process |
| Location | Computer Configuration |
| Path | System > Local Security Authority |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | LocalSecurityAuthority.admx |
<!-- ConfigureLsaProtectedProcess-GpMapping-End -->

<!-- ConfigureLsaProtectedProcess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigureLsaProtectedProcess-Examples-End -->

<!-- ConfigureLsaProtectedProcess-End -->

<!-- LocalSecurityAuthority-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- LocalSecurityAuthority-CspMoreInfo-End -->

<!-- LocalSecurityAuthority-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
