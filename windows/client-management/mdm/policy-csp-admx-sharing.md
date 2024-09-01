---
title: ADMX_Sharing Policy CSP
description: Learn more about the ADMX_Sharing Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Sharing-Begin -->
# Policy CSP - ADMX_Sharing

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Sharing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Sharing-Editable-End -->

<!-- DisableHomeGroup-Begin -->
## DisableHomeGroup

<!-- DisableHomeGroup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableHomeGroup-Applicability-End -->

<!-- DisableHomeGroup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Sharing/DisableHomeGroup
```
<!-- DisableHomeGroup-OmaUri-End -->

<!-- DisableHomeGroup-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether users can add computers to a homegroup. By default, users can add their computer to a homegroup on a private network.

- If you enable this policy setting, users can't add computers to a homegroup. This policy setting doesn't affect other network sharing features.

- If you disable or don't configure this policy setting, users can add computers to a homegroup. However, data on a domain-joined computer isn't shared with the homegroup.

This policy setting isn't configured by default.

You must restart the computer for this policy setting to take effect.
<!-- DisableHomeGroup-Description-End -->

<!-- DisableHomeGroup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableHomeGroup-Editable-End -->

<!-- DisableHomeGroup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableHomeGroup-DFProperties-End -->

<!-- DisableHomeGroup-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableHomeGroup |
| Friendly Name | Prevent the computer from joining a homegroup |
| Location | Computer Configuration |
| Path | Windows Components > HomeGroup |
| Registry Key Name | Software\Policies\Microsoft\Windows\HomeGroup |
| Registry Value Name | DisableHomeGroup |
| ADMX File Name | Sharing.admx |
<!-- DisableHomeGroup-AdmxBacked-End -->

<!-- DisableHomeGroup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableHomeGroup-Examples-End -->

<!-- DisableHomeGroup-End -->

<!-- NoInplaceSharing-Begin -->
## NoInplaceSharing

<!-- NoInplaceSharing-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoInplaceSharing-Applicability-End -->

<!-- NoInplaceSharing-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Sharing/NoInplaceSharing
```
<!-- NoInplaceSharing-OmaUri-End -->

<!-- NoInplaceSharing-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether users can share files within their profile. By default users are allowed to share files within their profile to other users on their network after an administrator opts in the computer. An administrator can opt in the computer by using the sharing wizard to share a file within their profile.

- If you enable this policy setting, users can't share files within their profile using the sharing wizard. Also, the sharing wizard can't create a share at %root%\users and can only be used to create SMB shares on folders.

- If you disable or don't configure this policy setting, users can share files out of their user profile after an administrator has opted in the computer.
<!-- NoInplaceSharing-Description-End -->

<!-- NoInplaceSharing-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoInplaceSharing-Editable-End -->

<!-- NoInplaceSharing-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoInplaceSharing-DFProperties-End -->

<!-- NoInplaceSharing-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoInplaceSharing |
| Friendly Name | Prevent users from sharing files within their profile. |
| Location | User Configuration |
| Path | Windows Components > Network Sharing |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoInplaceSharing |
| ADMX File Name | Sharing.admx |
<!-- NoInplaceSharing-AdmxBacked-End -->

<!-- NoInplaceSharing-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoInplaceSharing-Examples-End -->

<!-- NoInplaceSharing-End -->

<!-- ADMX_Sharing-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Sharing-CspMoreInfo-End -->

<!-- ADMX_Sharing-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
