---
title: ADMX_Explorer Policy CSP
description: Learn more about the ADMX_Explorer Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Explorer-Begin -->
# Policy CSP - ADMX_Explorer

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_Explorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Explorer-Editable-End -->

<!-- AdminInfoUrl-Begin -->
## AdminInfoUrl

<!-- AdminInfoUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AdminInfoUrl-Applicability-End -->

<!-- AdminInfoUrl-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Explorer/AdminInfoUrl
```
<!-- AdminInfoUrl-OmaUri-End -->

<!-- AdminInfoUrl-Description-Begin -->
<!-- Description-Source-ADMX -->
Sets the target of the More Information link that will be displayed when the user attempts to run a program that's blocked by policy.
<!-- AdminInfoUrl-Description-End -->

<!-- AdminInfoUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AdminInfoUrl-Editable-End -->

<!-- AdminInfoUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AdminInfoUrl-DFProperties-End -->

<!-- AdminInfoUrl-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AdminInfoUrl |
| Friendly Name | Set a support web page link |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| ADMX File Name | Explorer.admx |
<!-- AdminInfoUrl-AdmxBacked-End -->

<!-- AdminInfoUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AdminInfoUrl-Examples-End -->

<!-- AdminInfoUrl-End -->

<!-- AlwaysShowClassicMenu-Begin -->
## AlwaysShowClassicMenu

<!-- AlwaysShowClassicMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AlwaysShowClassicMenu-Applicability-End -->

<!-- AlwaysShowClassicMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Explorer/AlwaysShowClassicMenu
```
<!-- AlwaysShowClassicMenu-OmaUri-End -->

<!-- AlwaysShowClassicMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures File Explorer to always display the menu bar.

> [!NOTE]
> By default, the menu bar isn't displayed in File Explorer.

- If you enable this policy setting, the menu bar will be displayed in File Explorer.

- If you disable or don't configure this policy setting, the menu bar won't be displayed in File Explorer.

> [!NOTE]
> When the menu bar isn't displayed, users can access the menu bar by pressing the 'ALT' key.
<!-- AlwaysShowClassicMenu-Description-End -->

<!-- AlwaysShowClassicMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AlwaysShowClassicMenu-Editable-End -->

<!-- AlwaysShowClassicMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AlwaysShowClassicMenu-DFProperties-End -->

<!-- AlwaysShowClassicMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AlwaysShowClassicMenu |
| Friendly Name | Display the menu bar in File Explorer  |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | AlwaysShowClassicMenu |
| ADMX File Name | Explorer.admx |
<!-- AlwaysShowClassicMenu-AdmxBacked-End -->

<!-- AlwaysShowClassicMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AlwaysShowClassicMenu-Examples-End -->

<!-- AlwaysShowClassicMenu-End -->

<!-- DisableRoamedProfileInit-Begin -->
## DisableRoamedProfileInit

<!-- DisableRoamedProfileInit-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRoamedProfileInit-Applicability-End -->

<!-- DisableRoamedProfileInit-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Explorer/DisableRoamedProfileInit
```
<!-- DisableRoamedProfileInit-OmaUri-End -->

<!-- DisableRoamedProfileInit-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows administrators who have configured roaming profile in conjunction with Delete Cached Roaming Profile Group Policy setting to ensure that Explorer won't reinitialize default program associations and other settings to default values.

If you enable this policy setting on a machine that doesn't contain all programs installed in the same manner as it was on the machine on which the user had last logged on, unexpected behavior could occur.
<!-- DisableRoamedProfileInit-Description-End -->

<!-- DisableRoamedProfileInit-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableRoamedProfileInit-Editable-End -->

<!-- DisableRoamedProfileInit-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRoamedProfileInit-DFProperties-End -->

<!-- DisableRoamedProfileInit-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRoamedProfileInit |
| Friendly Name | Do not reinitialize a pre-existing roamed user profile when it is loaded on a machine for the first time |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | DisableRoamedProfileInit |
| ADMX File Name | Explorer.admx |
<!-- DisableRoamedProfileInit-AdmxBacked-End -->

<!-- DisableRoamedProfileInit-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRoamedProfileInit-Examples-End -->

<!-- DisableRoamedProfileInit-End -->

<!-- PreventItemCreationInUsersFilesFolder-Begin -->
## PreventItemCreationInUsersFilesFolder

<!-- PreventItemCreationInUsersFilesFolder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PreventItemCreationInUsersFilesFolder-Applicability-End -->

<!-- PreventItemCreationInUsersFilesFolder-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Explorer/PreventItemCreationInUsersFilesFolder
```
<!-- PreventItemCreationInUsersFilesFolder-OmaUri-End -->

<!-- PreventItemCreationInUsersFilesFolder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows administrators to prevent users from adding new items such as files or folders to the root of their Users Files folder in File Explorer.

- If you enable this policy setting, users will no longer be able to add new items such as files or folders to the root of their Users Files folder in File Explorer.

- If you disable or don't configure this policy setting, users will be able to add new items such as files or folders to the root of their Users Files folder in File Explorer.

> [!NOTE]
> Enabling this policy setting doesn't prevent the user from being able to add new items such as files and folders to their actual file system profile folder at %userprofile%.
<!-- PreventItemCreationInUsersFilesFolder-Description-End -->

<!-- PreventItemCreationInUsersFilesFolder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PreventItemCreationInUsersFilesFolder-Editable-End -->

<!-- PreventItemCreationInUsersFilesFolder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PreventItemCreationInUsersFilesFolder-DFProperties-End -->

<!-- PreventItemCreationInUsersFilesFolder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PreventItemCreationInUsersFilesFolder |
| Friendly Name | Prevent users from adding files to the root of their Users Files folder. |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | PreventItemCreationInUsersFilesFolder |
| ADMX File Name | Explorer.admx |
<!-- PreventItemCreationInUsersFilesFolder-AdmxBacked-End -->

<!-- PreventItemCreationInUsersFilesFolder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PreventItemCreationInUsersFilesFolder-Examples-End -->

<!-- PreventItemCreationInUsersFilesFolder-End -->

<!-- TurnOffSPIAnimations-Begin -->
## TurnOffSPIAnimations

<!-- TurnOffSPIAnimations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TurnOffSPIAnimations-Applicability-End -->

<!-- TurnOffSPIAnimations-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Explorer/TurnOffSPIAnimations
```
<!-- TurnOffSPIAnimations-OmaUri-End -->

<!-- TurnOffSPIAnimations-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy is similar to settings directly available to computer users. Disabling animations can improve usability for users with some visual disabilities as well as improving performance and battery life in some scenarios.
<!-- TurnOffSPIAnimations-Description-End -->

<!-- TurnOffSPIAnimations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffSPIAnimations-Editable-End -->

<!-- TurnOffSPIAnimations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffSPIAnimations-DFProperties-End -->

<!-- TurnOffSPIAnimations-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffSPIAnimations |
| Friendly Name | Turn off common control and window animations |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | TurnOffSPIAnimations |
| ADMX File Name | Explorer.admx |
<!-- TurnOffSPIAnimations-AdmxBacked-End -->

<!-- TurnOffSPIAnimations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffSPIAnimations-Examples-End -->

<!-- TurnOffSPIAnimations-End -->

<!-- ADMX_Explorer-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Explorer-CspMoreInfo-End -->

<!-- ADMX_Explorer-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
