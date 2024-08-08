---
title: ADMX_SharedFolders Policy CSP
description: Learn more about the ADMX_SharedFolders Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_SharedFolders-Begin -->
# Policy CSP - ADMX_SharedFolders

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_SharedFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_SharedFolders-Editable-End -->

<!-- PublishDfsRoots-Begin -->
## PublishDfsRoots

<!-- PublishDfsRoots-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PublishDfsRoots-Applicability-End -->

<!-- PublishDfsRoots-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_SharedFolders/PublishDfsRoots
```
<!-- PublishDfsRoots-OmaUri-End -->

<!-- PublishDfsRoots-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the user can publish DFS roots in Active Directory Domain Services (AD DS).

- If you enable or don't configure this policy setting, users can use the "Publish in Active Directory" option to publish DFS roots as shared folders in AD DS .

- If you disable this policy setting, users can't publish DFS roots in AD DS and the "Publish in Active Directory" option is disabled.

> [!NOTE]
> The default is to allow shared folders to be published when this setting isn't configured.
<!-- PublishDfsRoots-Description-End -->

<!-- PublishDfsRoots-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishDfsRoots-Editable-End -->

<!-- PublishDfsRoots-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishDfsRoots-DFProperties-End -->

<!-- PublishDfsRoots-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PublishDfsRoots |
| Friendly Name | Allow DFS roots to be published |
| Location | User Configuration |
| Path | Shared Folders |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\SharedFolders |
| Registry Value Name | PublishDfsRoots |
| ADMX File Name | SharedFolders.admx |
<!-- PublishDfsRoots-AdmxBacked-End -->

<!-- PublishDfsRoots-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishDfsRoots-Examples-End -->

<!-- PublishDfsRoots-End -->

<!-- PublishSharedFolders-Begin -->
## PublishSharedFolders

<!-- PublishSharedFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PublishSharedFolders-Applicability-End -->

<!-- PublishSharedFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_SharedFolders/PublishSharedFolders
```
<!-- PublishSharedFolders-OmaUri-End -->

<!-- PublishSharedFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the user can publish shared folders in Active Directory Domain Services (AD DS).

- If you enable or don't configure this policy setting, users can use the "Publish in Active Directory" option in the Shared Folders snap-in to publish shared folders in AD DS.

- If you disable this policy setting, users can't publish shared folders in AD DS, and the "Publish in Active Directory" option is disabled.

> [!NOTE]
> The default is to allow shared folders to be published when this setting isn't configured.
<!-- PublishSharedFolders-Description-End -->

<!-- PublishSharedFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PublishSharedFolders-Editable-End -->

<!-- PublishSharedFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PublishSharedFolders-DFProperties-End -->

<!-- PublishSharedFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PublishSharedFolders |
| Friendly Name | Allow shared folders to be published |
| Location | User Configuration |
| Path | Shared Folders |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\SharedFolders |
| Registry Value Name | PublishSharedFolders |
| ADMX File Name | SharedFolders.admx |
<!-- PublishSharedFolders-AdmxBacked-End -->

<!-- PublishSharedFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PublishSharedFolders-Examples-End -->

<!-- PublishSharedFolders-End -->

<!-- ADMX_SharedFolders-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_SharedFolders-CspMoreInfo-End -->

<!-- ADMX_SharedFolders-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
