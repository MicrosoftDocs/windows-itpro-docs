---
title: ADMX_WindowsRemoteManagement Policy CSP
description: Learn more about the ADMX_WindowsRemoteManagement Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WindowsRemoteManagement-Begin -->
# Policy CSP - ADMX_WindowsRemoteManagement

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WindowsRemoteManagement-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsRemoteManagement-Editable-End -->

<!-- DisallowKerberos_1-Begin -->
## DisallowKerberos_1

<!-- DisallowKerberos_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisallowKerberos_1-Applicability-End -->

<!-- DisallowKerberos_1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsRemoteManagement/DisallowKerberos_1
```
<!-- DisallowKerberos_1-OmaUri-End -->

<!-- DisallowKerberos_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts Kerberos credentials over the network.

- If you enable this policy setting, the WinRM service doesn't accept Kerberos credentials over the network.

- If you disable or don't configure this policy setting, the WinRM service accepts Kerberos authentication from a remote client.
<!-- DisallowKerberos_1-Description-End -->

<!-- DisallowKerberos_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowKerberos_1-Editable-End -->

<!-- DisallowKerberos_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowKerberos_1-DFProperties-End -->

<!-- DisallowKerberos_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowKerberos_1 |
| Friendly Name | Disallow Kerberos authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Service |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Service |
| Registry Value Name | AllowKerberos |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- DisallowKerberos_1-AdmxBacked-End -->

<!-- DisallowKerberos_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowKerberos_1-Examples-End -->

<!-- DisallowKerberos_1-End -->

<!-- DisallowKerberos_2-Begin -->
## DisallowKerberos_2

<!-- DisallowKerberos_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisallowKerberos_2-Applicability-End -->

<!-- DisallowKerberos_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsRemoteManagement/DisallowKerberos_2
```
<!-- DisallowKerberos_2-OmaUri-End -->

<!-- DisallowKerberos_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Kerberos authentication directly.

- If you enable this policy setting, the Windows Remote Management (WinRM) client doesn't use Kerberos authentication directly. Kerberos can still be used if the WinRM client is using the Negotiate authentication and Kerberos is selected.

- If you disable or don't configure this policy setting, the WinRM client uses the Kerberos authentication directly.
<!-- DisallowKerberos_2-Description-End -->

<!-- DisallowKerberos_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisallowKerberos_2-Editable-End -->

<!-- DisallowKerberos_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisallowKerberos_2-DFProperties-End -->

<!-- DisallowKerberos_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisallowKerberos_2 |
| Friendly Name | Disallow Kerberos authentication |
| Location | Computer Configuration |
| Path | Windows Components > Windows Remote Management (WinRM) > WinRM Client |
| Registry Key Name | Software\Policies\Microsoft\Windows\WinRM\Client |
| Registry Value Name | AllowKerberos |
| ADMX File Name | WindowsRemoteManagement.admx |
<!-- DisallowKerberos_2-AdmxBacked-End -->

<!-- DisallowKerberos_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisallowKerberos_2-Examples-End -->

<!-- DisallowKerberos_2-End -->

<!-- ADMX_WindowsRemoteManagement-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsRemoteManagement-CspMoreInfo-End -->

<!-- ADMX_WindowsRemoteManagement-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
