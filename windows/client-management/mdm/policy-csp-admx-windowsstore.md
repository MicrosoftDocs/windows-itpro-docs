---
title: ADMX_WindowsStore Policy CSP
description: Learn more about the ADMX_WindowsStore Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WindowsStore-Begin -->
# Policy CSP - ADMX_WindowsStore

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WindowsStore-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsStore-Editable-End -->

<!-- DisableAutoDownloadWin8-Begin -->
## DisableAutoDownloadWin8

<!-- DisableAutoDownloadWin8-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableAutoDownloadWin8-Applicability-End -->

<!-- DisableAutoDownloadWin8-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsStore/DisableAutoDownloadWin8
```
<!-- DisableAutoDownloadWin8-OmaUri-End -->

<!-- DisableAutoDownloadWin8-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables or disables the automatic download of app updates on PCs running Windows 8.

- If you enable this setting, the automatic download of app updates is turned off.

- If you disable this setting, the automatic download of app updates is turned on.

- If you don't configure this setting, the automatic download of app updates is determined by a registry setting that the user can change using Settings in the Microsoft Store.
<!-- DisableAutoDownloadWin8-Description-End -->

<!-- DisableAutoDownloadWin8-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableAutoDownloadWin8-Editable-End -->

<!-- DisableAutoDownloadWin8-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableAutoDownloadWin8-DFProperties-End -->

<!-- DisableAutoDownloadWin8-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableAutoDownloadWin8 |
| Friendly Name | Turn off Automatic Download of updates on Win8 machines |
| Location | Computer Configuration |
| Path | Windows Components > Store |
| Registry Key Name | Software\Policies\Microsoft\WindowsStore |
| Registry Value Name | AutoDownload |
| ADMX File Name | WindowsStore.admx |
<!-- DisableAutoDownloadWin8-AdmxBacked-End -->

<!-- DisableAutoDownloadWin8-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableAutoDownloadWin8-Examples-End -->

<!-- DisableAutoDownloadWin8-End -->

<!-- DisableOSUpgrade_1-Begin -->
## DisableOSUpgrade_1

<!-- DisableOSUpgrade_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableOSUpgrade_1-Applicability-End -->

<!-- DisableOSUpgrade_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsStore/DisableOSUpgrade_1
```
<!-- DisableOSUpgrade_1-OmaUri-End -->

<!-- DisableOSUpgrade_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables or disables the Store offer to update to the latest version of Windows.

- If you enable this setting, the Store application won't offer updates to the latest version of Windows.

- If you disable or don't configure this setting the Store application will offer updates to the latest version of Windows.
<!-- DisableOSUpgrade_1-Description-End -->

<!-- DisableOSUpgrade_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableOSUpgrade_1-Editable-End -->

<!-- DisableOSUpgrade_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableOSUpgrade_1-DFProperties-End -->

<!-- DisableOSUpgrade_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableOSUpgrade_1 |
| Friendly Name | Turn off the offer to update to the latest version of Windows |
| Location | User Configuration |
| Path | Windows Components > Store |
| Registry Key Name | Software\Policies\Microsoft\WindowsStore |
| Registry Value Name | DisableOSUpgrade |
| ADMX File Name | WindowsStore.admx |
<!-- DisableOSUpgrade_1-AdmxBacked-End -->

<!-- DisableOSUpgrade_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableOSUpgrade_1-Examples-End -->

<!-- DisableOSUpgrade_1-End -->

<!-- DisableOSUpgrade_2-Begin -->
## DisableOSUpgrade_2

<!-- DisableOSUpgrade_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableOSUpgrade_2-Applicability-End -->

<!-- DisableOSUpgrade_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsStore/DisableOSUpgrade_2
```
<!-- DisableOSUpgrade_2-OmaUri-End -->

<!-- DisableOSUpgrade_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Enables or disables the Store offer to update to the latest version of Windows.

- If you enable this setting, the Store application won't offer updates to the latest version of Windows.

- If you disable or don't configure this setting the Store application will offer updates to the latest version of Windows.
<!-- DisableOSUpgrade_2-Description-End -->

<!-- DisableOSUpgrade_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableOSUpgrade_2-Editable-End -->

<!-- DisableOSUpgrade_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableOSUpgrade_2-DFProperties-End -->

<!-- DisableOSUpgrade_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableOSUpgrade_2 |
| Friendly Name | Turn off the offer to update to the latest version of Windows |
| Location | Computer Configuration |
| Path | Windows Components > Store |
| Registry Key Name | Software\Policies\Microsoft\WindowsStore |
| Registry Value Name | DisableOSUpgrade |
| ADMX File Name | WindowsStore.admx |
<!-- DisableOSUpgrade_2-AdmxBacked-End -->

<!-- DisableOSUpgrade_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableOSUpgrade_2-Examples-End -->

<!-- DisableOSUpgrade_2-End -->

<!-- RemoveWindowsStore_1-Begin -->
## RemoveWindowsStore_1

<!-- RemoveWindowsStore_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemoveWindowsStore_1-Applicability-End -->

<!-- RemoveWindowsStore_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsStore/RemoveWindowsStore_1
```
<!-- RemoveWindowsStore_1-OmaUri-End -->

<!-- RemoveWindowsStore_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Denies or allows access to the Store application.

- If you enable this setting, access to the Store application is denied. Access to the Store is required for installing app updates.

- If you disable or don't configure this setting, access to the Store application is allowed.
<!-- RemoveWindowsStore_1-Description-End -->

<!-- RemoveWindowsStore_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoveWindowsStore_1-Editable-End -->

<!-- RemoveWindowsStore_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemoveWindowsStore_1-DFProperties-End -->

<!-- RemoveWindowsStore_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemoveWindowsStore_1 |
| Friendly Name | Turn off the Store application |
| Location | User Configuration |
| Path | Windows Components > Store |
| Registry Key Name | Software\Policies\Microsoft\WindowsStore |
| Registry Value Name | RemoveWindowsStore |
| ADMX File Name | WindowsStore.admx |
<!-- RemoveWindowsStore_1-AdmxBacked-End -->

<!-- RemoveWindowsStore_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemoveWindowsStore_1-Examples-End -->

<!-- RemoveWindowsStore_1-End -->

<!-- RemoveWindowsStore_2-Begin -->
## RemoveWindowsStore_2

<!-- RemoveWindowsStore_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemoveWindowsStore_2-Applicability-End -->

<!-- RemoveWindowsStore_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsStore/RemoveWindowsStore_2
```
<!-- RemoveWindowsStore_2-OmaUri-End -->

<!-- RemoveWindowsStore_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Denies or allows access to the Store application.

- If you enable this setting, access to the Store application is denied. Access to the Store is required for installing app updates.

- If you disable or don't configure this setting, access to the Store application is allowed.
<!-- RemoveWindowsStore_2-Description-End -->

<!-- RemoveWindowsStore_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoveWindowsStore_2-Editable-End -->

<!-- RemoveWindowsStore_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemoveWindowsStore_2-DFProperties-End -->

<!-- RemoveWindowsStore_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemoveWindowsStore_2 |
| Friendly Name | Turn off the Store application |
| Location | Computer Configuration |
| Path | Windows Components > Store |
| Registry Key Name | Software\Policies\Microsoft\WindowsStore |
| Registry Value Name | RemoveWindowsStore |
| ADMX File Name | WindowsStore.admx |
<!-- RemoveWindowsStore_2-AdmxBacked-End -->

<!-- RemoveWindowsStore_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemoveWindowsStore_2-Examples-End -->

<!-- RemoveWindowsStore_2-End -->

<!-- ADMX_WindowsStore-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsStore-CspMoreInfo-End -->

<!-- ADMX_WindowsStore-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
