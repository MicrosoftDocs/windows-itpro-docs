---
title: CredentialProviders Policy CSP
description: Learn more about the CredentialProviders Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- CredentialProviders-Begin -->
# Policy CSP - CredentialProviders

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- CredentialProviders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CredentialProviders-Editable-End -->

<!-- AllowPINLogon-Begin -->
## AllowPINLogon

<!-- AllowPINLogon-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowPINLogon-Applicability-End -->

<!-- AllowPINLogon-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/CredentialProviders/AllowPINLogon
```
<!-- AllowPINLogon-OmaUri-End -->

<!-- AllowPINLogon-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether a domain user can sign in using a convenience PIN.

- If you enable this policy setting, a domain user can set up and sign in with a convenience PIN.

- If you disable or don't configure this policy setting, a domain user can't set up and use a convenience PIN.

> [!NOTE]
> The user's domain password will be cached in the system vault when using this feature.

To configure Windows Hello for Business, use the Administrative Template policies under Windows Hello for Business.
<!-- AllowPINLogon-Description-End -->

<!-- AllowPINLogon-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowPINLogon-Editable-End -->

<!-- AllowPINLogon-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AllowPINLogon-DFProperties-End -->

<!-- AllowPINLogon-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowDomainPINLogon |
| Friendly Name | Turn on convenience PIN sign-in |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowDomainPINLogon |
| ADMX File Name | CredentialProviders.admx |
<!-- AllowPINLogon-AdmxBacked-End -->

<!-- AllowPINLogon-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowPINLogon-Examples-End -->

<!-- AllowPINLogon-End -->

<!-- BlockPicturePassword-Begin -->
## BlockPicturePassword

<!-- BlockPicturePassword-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- BlockPicturePassword-Applicability-End -->

<!-- BlockPicturePassword-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/CredentialProviders/BlockPicturePassword
```
<!-- BlockPicturePassword-OmaUri-End -->

<!-- BlockPicturePassword-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether a domain user can sign in using a picture password.

- If you enable this policy setting, a domain user can't set up or sign in with a picture password.

- If you disable or don't configure this policy setting, a domain user can set up and use a picture password.

Note that the user's domain password will be cached in the system vault when using this feature.
<!-- BlockPicturePassword-Description-End -->

<!-- BlockPicturePassword-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BlockPicturePassword-Editable-End -->

<!-- BlockPicturePassword-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- BlockPicturePassword-DFProperties-End -->

<!-- BlockPicturePassword-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | BlockDomainPicturePassword |
| Friendly Name | Turn off picture password sign-in |
| Location | Computer Configuration |
| Path | System > Logon |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | BlockDomainPicturePassword |
| ADMX File Name | CredentialProviders.admx |
<!-- BlockPicturePassword-AdmxBacked-End -->

<!-- BlockPicturePassword-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BlockPicturePassword-Examples-End -->

<!-- BlockPicturePassword-End -->

<!-- DisableAutomaticReDeploymentCredentials-Begin -->
## DisableAutomaticReDeploymentCredentials

<!-- DisableAutomaticReDeploymentCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- DisableAutomaticReDeploymentCredentials-Applicability-End -->

<!-- DisableAutomaticReDeploymentCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/CredentialProviders/DisableAutomaticReDeploymentCredentials
```
<!-- DisableAutomaticReDeploymentCredentials-OmaUri-End -->

<!-- DisableAutomaticReDeploymentCredentials-Description-Begin -->
<!-- Description-Source-DDF -->
Boolean policy to disable the visibility of the credential provider that triggers the PC refresh on a device. This policy doesn't actually trigger the refresh. The admin user is required to authenticate to trigger the refresh on the target device. The Autopilot Reset feature allows admin to reset devices to a known good managed state while preserving the management enrollment. After the Autopilot Reset is triggered the devices are for ready for use by information workers or students.
<!-- DisableAutomaticReDeploymentCredentials-Description-End -->

<!-- DisableAutomaticReDeploymentCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAutomaticReDeploymentCredentials-Editable-End -->

<!-- DisableAutomaticReDeploymentCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- DisableAutomaticReDeploymentCredentials-DFProperties-End -->

<!-- DisableAutomaticReDeploymentCredentials-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Enable the visibility of the credentials for Autopilot Reset. |
| 1 (Default) | Disable visibility of the credentials for Autopilot Reset. |
<!-- DisableAutomaticReDeploymentCredentials-AllowedValues-End -->

<!-- DisableAutomaticReDeploymentCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAutomaticReDeploymentCredentials-Examples-End -->

<!-- DisableAutomaticReDeploymentCredentials-End -->

<!-- CredentialProviders-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- CredentialProviders-CspMoreInfo-End -->

<!-- CredentialProviders-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
