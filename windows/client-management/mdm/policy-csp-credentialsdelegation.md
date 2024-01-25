---
title: CredentialsDelegation Policy CSP
description: Learn more about the CredentialsDelegation Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- CredentialsDelegation-Begin -->
# Policy CSP - CredentialsDelegation

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- CredentialsDelegation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CredentialsDelegation-Editable-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Begin -->
## RemoteHostAllowsDelegationOfNonExportableCredentials

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Applicability-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/CredentialsDelegation/RemoteHostAllowsDelegationOfNonExportableCredentials
```
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-OmaUri-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Description-Begin -->
<!-- Description-Source-ADMX -->
Remote host allows delegation of non-exportable credentials.

When using credential delegation, devices provide an exportable version of credentials to the remote host. This exposes users to the risk of credential theft from attackers on the remote host.

- If you enable this policy setting, the host supports Restricted Admin or Remote Credential Guard mode.

- If you disable or don't configure this policy setting, Restricted Administration and Remote Credential Guard mode aren't supported. User will always need to pass their credentials to the host.
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Description-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Editable-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-DFProperties-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AllowProtectedCreds |
| Friendly Name | Remote host allows delegation of non-exportable credentials |
| Location | Computer Configuration |
| Path | System > Credentials Delegation |
| Registry Key Name | Software\Policies\Microsoft\Windows\CredentialsDelegation |
| Registry Value Name | AllowProtectedCreds |
| ADMX File Name | CredSsp.admx |
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-AdmxBacked-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-Examples-End -->

<!-- RemoteHostAllowsDelegationOfNonExportableCredentials-End -->

<!-- CredentialsDelegation-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- CredentialsDelegation-CspMoreInfo-End -->

<!-- CredentialsDelegation-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
