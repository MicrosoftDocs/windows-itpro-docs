---
title: ADMX_WindowsExplorer Policy CSP
description: Learn more about the ADMX_WindowsExplorer Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_WindowsExplorer-Begin -->
# Policy CSP - ADMX_WindowsExplorer

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_WindowsExplorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsExplorer-Editable-End -->

<!-- CheckSameSourceAndTargetForFRAndDFS-Begin -->
## CheckSameSourceAndTargetForFRAndDFS

<!-- CheckSameSourceAndTargetForFRAndDFS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CheckSameSourceAndTargetForFRAndDFS-Applicability-End -->

<!-- CheckSameSourceAndTargetForFRAndDFS-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/CheckSameSourceAndTargetForFRAndDFS
```
<!-- CheckSameSourceAndTargetForFRAndDFS-OmaUri-End -->

<!-- CheckSameSourceAndTargetForFRAndDFS-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent data loss when you change the target location for Folder Redirection, and the new and old targets point to the same network share, but have different network paths.

- If you enable this policy setting, Folder Redirection creates a temporary file in the old location in order to verify that new and old locations point to the same network share. If both new and old locations point to the same share, the target path is updated and files aren't copied or deleted. The temporary file is deleted.

- If you disable or don't configure this policy setting, Folder Redirection doesn't create a temporary file and functions as if both new and old locations point to different shares when their network paths are different.

> [!NOTE]
> If the paths point to different network shares, this policy setting isn't required. If the paths point to the same network share, any data contained in the redirected folders is deleted if this policy setting isn't enabled.
<!-- CheckSameSourceAndTargetForFRAndDFS-Description-End -->

<!-- CheckSameSourceAndTargetForFRAndDFS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CheckSameSourceAndTargetForFRAndDFS-Editable-End -->

<!-- CheckSameSourceAndTargetForFRAndDFS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CheckSameSourceAndTargetForFRAndDFS-DFProperties-End -->

<!-- CheckSameSourceAndTargetForFRAndDFS-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CheckSameSourceAndTargetForFRAndDFS |
| Friendly Name | Verify old and new Folder Redirection targets point to the same share before redirecting |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | CheckSameSourceAndTargetForFRAndDFS |
| ADMX File Name | WindowsExplorer.admx |
<!-- CheckSameSourceAndTargetForFRAndDFS-AdmxBacked-End -->

<!-- CheckSameSourceAndTargetForFRAndDFS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CheckSameSourceAndTargetForFRAndDFS-Examples-End -->

<!-- CheckSameSourceAndTargetForFRAndDFS-End -->

<!-- ClassicShell-Begin -->
## ClassicShell

<!-- ClassicShell-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ClassicShell-Applicability-End -->

<!-- ClassicShell-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/ClassicShell
```
<!-- ClassicShell-OmaUri-End -->

<!-- ClassicShell-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting allows an administrator to revert specific Windows Shell behavior to classic Shell behavior.

- If you enable this setting, users can't configure their system to open items by single-clicking (such as in Mouse in Control Panel). As a result, the user interface looks and operates like the interface for Windows NT 4.0, and users can't restore the new features.

Enabling this policy will also turn off the preview pane and set the folder options for File Explorer to Use classic folders view and disable the users ability to change these options.

- If you disable or not configure this policy, the default File Explorer behavior is applied to the user.

> [!NOTE]
> In operating systems earlier than Windows Vista, enabling this policy will also disable the Active Desktop and Web view. This setting will also take precedence over the "Enable Active Desktop" setting. If both policies are enabled, Active Desktop is disabled.

Also, see the "Disable Active Desktop" setting in User Configuration\Administrative Templates\Desktop\Active Desktop and the "Do not allow Folder Options to be opened from the Options button on the View tab of the ribbon" setting in User Configuration\Administrative Templates\Windows Components\File Explorer.
<!-- ClassicShell-Description-End -->

<!-- ClassicShell-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ClassicShell-Editable-End -->

<!-- ClassicShell-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ClassicShell-DFProperties-End -->

<!-- ClassicShell-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ClassicShell |
| Friendly Name | Turn on Classic Shell |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | ClassicShell |
| ADMX File Name | WindowsExplorer.admx |
<!-- ClassicShell-AdmxBacked-End -->

<!-- ClassicShell-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ClassicShell-Examples-End -->

<!-- ClassicShell-End -->

<!-- ConfirmFileDelete-Begin -->
## ConfirmFileDelete

<!-- ConfirmFileDelete-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfirmFileDelete-Applicability-End -->

<!-- ConfirmFileDelete-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/ConfirmFileDelete
```
<!-- ConfirmFileDelete-OmaUri-End -->

<!-- ConfirmFileDelete-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows you to have File Explorer display a confirmation dialog whenever a file is deleted or moved to the Recycle Bin.

- If you enable this setting, a confirmation dialog is displayed when a file is deleted or moved to the Recycle Bin by the user.

- If you disable or don't configure this setting, the default behavior of not displaying a confirmation dialog occurs.
<!-- ConfirmFileDelete-Description-End -->

<!-- ConfirmFileDelete-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfirmFileDelete-Editable-End -->

<!-- ConfirmFileDelete-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ConfirmFileDelete-DFProperties-End -->

<!-- ConfirmFileDelete-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ConfirmFileDelete |
| Friendly Name | Display confirmation dialog when deleting files |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | ConfirmFileDelete |
| ADMX File Name | WindowsExplorer.admx |
<!-- ConfirmFileDelete-AdmxBacked-End -->

<!-- ConfirmFileDelete-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfirmFileDelete-Examples-End -->

<!-- ConfirmFileDelete-End -->

<!-- DefaultLibrariesLocation-Begin -->
## DefaultLibrariesLocation

<!-- DefaultLibrariesLocation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DefaultLibrariesLocation-Applicability-End -->

<!-- DefaultLibrariesLocation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/DefaultLibrariesLocation
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/DefaultLibrariesLocation
```
<!-- DefaultLibrariesLocation-OmaUri-End -->

<!-- DefaultLibrariesLocation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a location where all default Library definition files for users/machines reside.

- If you enable this policy setting, administrators can specify a path where all default Library definition files for users reside. The user won't be allowed to make changes to these Libraries from the UI. On every logon, the policy settings are verified and Libraries for the user are updated or changed according to the path defined.

- If you disable or don't configure this policy setting, no changes are made to the location of the default Library definition files.
<!-- DefaultLibrariesLocation-Description-End -->

<!-- DefaultLibrariesLocation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DefaultLibrariesLocation-Editable-End -->

<!-- DefaultLibrariesLocation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DefaultLibrariesLocation-DFProperties-End -->

<!-- DefaultLibrariesLocation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DefaultLibrariesLocation |
| Friendly Name | Location where all default Library definition files for users/machines reside. |
| Location | Computer and User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\Explorer |
| ADMX File Name | WindowsExplorer.admx |
<!-- DefaultLibrariesLocation-AdmxBacked-End -->

<!-- DefaultLibrariesLocation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DefaultLibrariesLocation-Examples-End -->

<!-- DefaultLibrariesLocation-End -->

<!-- DisableBindDirectlyToPropertySetStorage-Begin -->
## DisableBindDirectlyToPropertySetStorage

<!-- DisableBindDirectlyToPropertySetStorage-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableBindDirectlyToPropertySetStorage-Applicability-End -->

<!-- DisableBindDirectlyToPropertySetStorage-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/DisableBindDirectlyToPropertySetStorage
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/DisableBindDirectlyToPropertySetStorage
```
<!-- DisableBindDirectlyToPropertySetStorage-OmaUri-End -->

<!-- DisableBindDirectlyToPropertySetStorage-Description-Begin -->
<!-- Description-Source-ADMX -->
Changes the behavior of IShellFolder::BindToObject for IID_IPropertySetStorage to not bind directly to the IPropertySetStorage implementation, and to include the intermediate layers provided by the Property System. This behavior is consistent with Windows Vista's behavior in this scenario.

This disables access to user-defined properties, and properties stored in NTFS secondary streams.
<!-- DisableBindDirectlyToPropertySetStorage-Description-End -->

<!-- DisableBindDirectlyToPropertySetStorage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableBindDirectlyToPropertySetStorage-Editable-End -->

<!-- DisableBindDirectlyToPropertySetStorage-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableBindDirectlyToPropertySetStorage-DFProperties-End -->

<!-- DisableBindDirectlyToPropertySetStorage-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableBindDirectlyToPropertySetStorage |
| Friendly Name | Disable binding directly to IPropertySetStorage without intermediate layers. |
| Location | Computer and User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | DisableBindDirectlyToPropertySetStorage |
| ADMX File Name | WindowsExplorer.admx |
<!-- DisableBindDirectlyToPropertySetStorage-AdmxBacked-End -->

<!-- DisableBindDirectlyToPropertySetStorage-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableBindDirectlyToPropertySetStorage-Examples-End -->

<!-- DisableBindDirectlyToPropertySetStorage-End -->

<!-- DisableIndexedLibraryExperience-Begin -->
## DisableIndexedLibraryExperience

<!-- DisableIndexedLibraryExperience-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableIndexedLibraryExperience-Applicability-End -->

<!-- DisableIndexedLibraryExperience-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/DisableIndexedLibraryExperience
```
<!-- DisableIndexedLibraryExperience-OmaUri-End -->

<!-- DisableIndexedLibraryExperience-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off Windows Libraries features that need indexed file metadata to function properly.

- If you enable this policy, some Windows Libraries features will be turned off to better handle included folders that have been redirected to non-indexed network locations.

Setting this policy will:

* Disable all Arrangement views except for "By Folder"
* Disable all Search filter suggestions other than "Date Modified" and "Size"
* Disable view of file content snippets in Content mode when search results are returned
* Disable ability to stack in the Context menu and Column headers
* Exclude Libraries from the scope of Start search.

This policy won't enable users to add unsupported locations to Libraries.

- If you enable this policy, Windows Libraries features that rely on indexed file data will be disabled.

- If you disable or don't configure this policy, all default Windows Libraries features will be enabled.
<!-- DisableIndexedLibraryExperience-Description-End -->

<!-- DisableIndexedLibraryExperience-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableIndexedLibraryExperience-Editable-End -->

<!-- DisableIndexedLibraryExperience-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableIndexedLibraryExperience-DFProperties-End -->

<!-- DisableIndexedLibraryExperience-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableIndexedLibraryExperience |
| Friendly Name | Turn off Windows Libraries features that rely on indexed file data |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | DisableIndexedLibraryExperience |
| ADMX File Name | WindowsExplorer.admx |
<!-- DisableIndexedLibraryExperience-AdmxBacked-End -->

<!-- DisableIndexedLibraryExperience-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableIndexedLibraryExperience-Examples-End -->

<!-- DisableIndexedLibraryExperience-End -->

<!-- DisableKnownFolders-Begin -->
## DisableKnownFolders

<!-- DisableKnownFolders-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableKnownFolders-Applicability-End -->

<!-- DisableKnownFolders-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/DisableKnownFolders
```
<!-- DisableKnownFolders-OmaUri-End -->

<!-- DisableKnownFolders-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a list of known folders that should be disabled. Disabling a known folder will prevent the underlying file or directory from being created via the known folder API. If the folder exists before the policy is applied, the folder must be manually deleted since the policy only blocks the creation of the folder.

You can specify a known folder using its known folder id or using its canonical name. For example, the Sample Videos known folder can be disabled by specifying {440fcffd-a92b-4739-ae1a-d4a54907c53f} or SampleVideos.

> [!NOTE]
> Disabling a known folder can introduce application compatibility issues in applications that depend on the existence of the known folder.
<!-- DisableKnownFolders-Description-End -->

<!-- DisableKnownFolders-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableKnownFolders-Editable-End -->

<!-- DisableKnownFolders-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableKnownFolders-DFProperties-End -->

<!-- DisableKnownFolders-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableKnownFolders |
| Friendly Name | Disable Known Folders |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | DisableKnownFolders |
| ADMX File Name | WindowsExplorer.admx |
<!-- DisableKnownFolders-AdmxBacked-End -->

<!-- DisableKnownFolders-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableKnownFolders-Examples-End -->

<!-- DisableKnownFolders-End -->

<!-- DisableMotWOnInsecurePathCopy-Begin -->
## DisableMotWOnInsecurePathCopy

<!-- DisableMotWOnInsecurePathCopy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableMotWOnInsecurePathCopy-Applicability-End -->

<!-- DisableMotWOnInsecurePathCopy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/DisableMotWOnInsecurePathCopy
```
<!-- DisableMotWOnInsecurePathCopy-OmaUri-End -->

<!-- DisableMotWOnInsecurePathCopy-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- DisableMotWOnInsecurePathCopy-Description-End -->

<!-- DisableMotWOnInsecurePathCopy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableMotWOnInsecurePathCopy-Editable-End -->

<!-- DisableMotWOnInsecurePathCopy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableMotWOnInsecurePathCopy-DFProperties-End -->

<!-- DisableMotWOnInsecurePathCopy-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableMotWOnInsecurePathCopy |
| ADMX File Name | WindowsExplorer.admx |
<!-- DisableMotWOnInsecurePathCopy-AdmxBacked-End -->

<!-- DisableMotWOnInsecurePathCopy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableMotWOnInsecurePathCopy-Examples-End -->

<!-- DisableMotWOnInsecurePathCopy-End -->

<!-- DisableSearchBoxSuggestions-Begin -->
## DisableSearchBoxSuggestions

<!-- DisableSearchBoxSuggestions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableSearchBoxSuggestions-Applicability-End -->

<!-- DisableSearchBoxSuggestions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/DisableSearchBoxSuggestions
```
<!-- DisableSearchBoxSuggestions-OmaUri-End -->

<!-- DisableSearchBoxSuggestions-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables suggesting recent queries for the Search Box and prevents entries into the Search Box from being stored in the registry for future references.

File Explorer shows suggestion pop-ups as users type into the Search Box. These suggestions are based on their past entries into the Search Box.

> [!NOTE]
> If you enable this policy, File Explorer won't show suggestion pop-ups as users type into the Search Box, and it won't store Search Box entries into the registry for future references. If the user types a property, values that match this property will be shown but no data will be saved in the registry or re-shown on subsequent uses of the search box.
<!-- DisableSearchBoxSuggestions-Description-End -->

<!-- DisableSearchBoxSuggestions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSearchBoxSuggestions-Editable-End -->

<!-- DisableSearchBoxSuggestions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSearchBoxSuggestions-DFProperties-End -->

<!-- DisableSearchBoxSuggestions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSearchBoxSuggestions |
| Friendly Name | Turn off display of recent search entries in the File Explorer search box |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | DisableSearchBoxSuggestions |
| ADMX File Name | WindowsExplorer.admx |
<!-- DisableSearchBoxSuggestions-AdmxBacked-End -->

<!-- DisableSearchBoxSuggestions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSearchBoxSuggestions-Examples-End -->

<!-- DisableSearchBoxSuggestions-End -->

<!-- EnableShellShortcutIconRemotePath-Begin -->
## EnableShellShortcutIconRemotePath

<!-- EnableShellShortcutIconRemotePath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableShellShortcutIconRemotePath-Applicability-End -->

<!-- EnableShellShortcutIconRemotePath-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/EnableShellShortcutIconRemotePath
```
<!-- EnableShellShortcutIconRemotePath-OmaUri-End -->

<!-- EnableShellShortcutIconRemotePath-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether remote paths can be used for file shortcut (.lnk file) icons.

- If you enable this policy setting, file shortcut icons are allowed to be obtained from remote paths.

- If you disable or don't configure this policy setting, file shortcut icons that use remote paths are prevented from being displayed.

> [!NOTE]
> Allowing the use of remote paths in file shortcut icons can expose users' computers to security risks.
<!-- EnableShellShortcutIconRemotePath-Description-End -->

<!-- EnableShellShortcutIconRemotePath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableShellShortcutIconRemotePath-Editable-End -->

<!-- EnableShellShortcutIconRemotePath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableShellShortcutIconRemotePath-DFProperties-End -->

<!-- EnableShellShortcutIconRemotePath-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableShellShortcutIconRemotePath |
| Friendly Name | Allow the use of remote paths in file shortcut icons |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | EnableShellShortcutIconRemotePath |
| ADMX File Name | WindowsExplorer.admx |
<!-- EnableShellShortcutIconRemotePath-AdmxBacked-End -->

<!-- EnableShellShortcutIconRemotePath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableShellShortcutIconRemotePath-Examples-End -->

<!-- EnableShellShortcutIconRemotePath-End -->

<!-- EnableSmartScreen-Begin -->
## EnableSmartScreen

<!-- EnableSmartScreen-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableSmartScreen-Applicability-End -->

<!-- EnableSmartScreen-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/EnableSmartScreen
```
<!-- EnableSmartScreen-OmaUri-End -->

<!-- EnableSmartScreen-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy allows you to turn Windows Defender SmartScreen on or off. SmartScreen helps protect PCs by warning users before running potentially malicious programs downloaded from the Internet. This warning is presented as an interstitial dialog shown before running an app that has been downloaded from the Internet and is unrecognized or known to be malicious. No dialog is shown for apps that don't appear to be suspicious.

Some information is sent to Microsoft about files and programs run on PCs with this feature enabled.

- If you enable this policy, SmartScreen will be turned on for all users. Its behavior can be controlled by the following options:

- Warn and prevent bypass
- Warn.

- If you enable this policy with the "Warn and prevent bypass" option, SmartScreen's dialogs won't present the user with the option to disregard the warning and run the app. SmartScreen will continue to show the warning on subsequent attempts to run the app.

- If you enable this policy with the "Warn" option, SmartScreen's dialogs will warn the user that the app appears suspicious, but will permit the user to disregard the warning and run the app anyway. SmartScreen won't warn the user again for that app if the user tells SmartScreen to run the app.

- If you disable this policy, SmartScreen will be turned off for all users. Users won't be warned if they try to run suspicious apps from the Internet.

- If you don't configure this policy, SmartScreen will be enabled by default, but users may change their settings.
<!-- EnableSmartScreen-Description-End -->

<!-- EnableSmartScreen-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
For more information, see [Microsoft Defender SmartScreen](/windows/security/operating-system-security/virus-and-threat-protection/microsoft-defender-smartscreen).
<!-- EnableSmartScreen-Editable-End -->

<!-- EnableSmartScreen-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableSmartScreen-DFProperties-End -->

<!-- EnableSmartScreen-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableSmartScreen |
| Friendly Name | Configure Windows Defender SmartScreen |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableSmartScreen |
| ADMX File Name | WindowsExplorer.admx |
<!-- EnableSmartScreen-AdmxBacked-End -->

<!-- EnableSmartScreen-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableSmartScreen-Examples-End -->

<!-- EnableSmartScreen-End -->

<!-- EnforceShellExtensionSecurity-Begin -->
## EnforceShellExtensionSecurity

<!-- EnforceShellExtensionSecurity-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnforceShellExtensionSecurity-Applicability-End -->

<!-- EnforceShellExtensionSecurity-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/EnforceShellExtensionSecurity
```
<!-- EnforceShellExtensionSecurity-OmaUri-End -->

<!-- EnforceShellExtensionSecurity-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting is designed to ensure that shell extensions can operate on a per-user basis. If you enable this setting, Windows is directed to only run those shell extensions that have either been approved by an administrator or that won't impact other users of the machine.

A shell extension only runs if there is an entry in at least one of the following locations in registry.

For shell extensions that have been approved by the administrator and are available to all users of the computer, there must be an entry at HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved.

For shell extensions to run on a per-user basis, there must be an entry at HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Shell Extensions\Approved.
<!-- EnforceShellExtensionSecurity-Description-End -->

<!-- EnforceShellExtensionSecurity-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnforceShellExtensionSecurity-Editable-End -->

<!-- EnforceShellExtensionSecurity-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnforceShellExtensionSecurity-DFProperties-End -->

<!-- EnforceShellExtensionSecurity-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnforceShellExtensionSecurity |
| Friendly Name | Allow only per user or approved shell extensions |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | EnforceShellExtensionSecurity |
| ADMX File Name | WindowsExplorer.admx |
<!-- EnforceShellExtensionSecurity-AdmxBacked-End -->

<!-- EnforceShellExtensionSecurity-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnforceShellExtensionSecurity-Examples-End -->

<!-- EnforceShellExtensionSecurity-End -->

<!-- ExplorerRibbonStartsMinimized-Begin -->
## ExplorerRibbonStartsMinimized

<!-- ExplorerRibbonStartsMinimized-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ExplorerRibbonStartsMinimized-Applicability-End -->

<!-- ExplorerRibbonStartsMinimized-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/ExplorerRibbonStartsMinimized
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/ExplorerRibbonStartsMinimized
```
<!-- ExplorerRibbonStartsMinimized-OmaUri-End -->

<!-- ExplorerRibbonStartsMinimized-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether the ribbon appears minimized or in full when new File Explorer windows are opened.

- If you enable this policy setting, you can set how the ribbon appears the first time users open File Explorer and whenever they open new windows.

- If you disable or don't configure this policy setting, users can choose how the ribbon appears when they open new windows.
<!-- ExplorerRibbonStartsMinimized-Description-End -->

<!-- ExplorerRibbonStartsMinimized-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ExplorerRibbonStartsMinimized-Editable-End -->

<!-- ExplorerRibbonStartsMinimized-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ExplorerRibbonStartsMinimized-DFProperties-End -->

<!-- ExplorerRibbonStartsMinimized-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ExplorerRibbonStartsMinimized |
| Friendly Name | Start File Explorer with ribbon minimized |
| Location | Computer and User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | ExplorerRibbonStartsMinimized |
| ADMX File Name | WindowsExplorer.admx |
<!-- ExplorerRibbonStartsMinimized-AdmxBacked-End -->

<!-- ExplorerRibbonStartsMinimized-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ExplorerRibbonStartsMinimized-Examples-End -->

<!-- ExplorerRibbonStartsMinimized-End -->

<!-- HideContentViewModeSnippets-Begin -->
## HideContentViewModeSnippets

<!-- HideContentViewModeSnippets-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideContentViewModeSnippets-Applicability-End -->

<!-- HideContentViewModeSnippets-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/HideContentViewModeSnippets
```
<!-- HideContentViewModeSnippets-OmaUri-End -->

<!-- HideContentViewModeSnippets-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off the display of snippets in Content view mode.

- If you enable this policy setting, File Explorer won't display snippets in Content view mode.

- If you disable or don't configure this policy setting, File Explorer shows snippets in Content view mode by default.
<!-- HideContentViewModeSnippets-Description-End -->

<!-- HideContentViewModeSnippets-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideContentViewModeSnippets-Editable-End -->

<!-- HideContentViewModeSnippets-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideContentViewModeSnippets-DFProperties-End -->

<!-- HideContentViewModeSnippets-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideContentViewModeSnippets |
| Friendly Name | Turn off the display of snippets in Content view mode |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | HideContentViewModeSnippets |
| ADMX File Name | WindowsExplorer.admx |
<!-- HideContentViewModeSnippets-AdmxBacked-End -->

<!-- HideContentViewModeSnippets-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideContentViewModeSnippets-Examples-End -->

<!-- HideContentViewModeSnippets-End -->

<!-- IZ_Policy_OpenSearchPreview_Internet-Begin -->
## IZ_Policy_OpenSearchPreview_Internet

<!-- IZ_Policy_OpenSearchPreview_Internet-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_Internet-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_Internet-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Internet
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Internet
```
<!-- IZ_Policy_OpenSearchPreview_Internet-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_Internet-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_Internet-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_Internet-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_Internet-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_Internet-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_Internet-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_Internet-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_Internet |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_Internet-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_Internet-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_Internet-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_Internet-End -->

<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-Begin -->
## IZ_Policy_OpenSearchPreview_InternetLockdown

<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_InternetLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_InternetLockdown
```
<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_InternetLockdown |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_InternetLockdown-End -->

<!-- IZ_Policy_OpenSearchPreview_Intranet-Begin -->
## IZ_Policy_OpenSearchPreview_Intranet

<!-- IZ_Policy_OpenSearchPreview_Intranet-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_Intranet-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_Intranet-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Intranet
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Intranet
```
<!-- IZ_Policy_OpenSearchPreview_Intranet-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_Intranet-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_Intranet-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_Intranet-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_Intranet-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_Intranet-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_Intranet-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_Intranet-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_Intranet |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_Intranet-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_Intranet-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_Intranet-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_Intranet-End -->

<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-Begin -->
## IZ_Policy_OpenSearchPreview_IntranetLockdown

<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_IntranetLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_IntranetLockdown
```
<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_IntranetLockdown |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_IntranetLockdown-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachine-Begin -->
## IZ_Policy_OpenSearchPreview_LocalMachine

<!-- IZ_Policy_OpenSearchPreview_LocalMachine-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_LocalMachine-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachine-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_LocalMachine
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_LocalMachine
```
<!-- IZ_Policy_OpenSearchPreview_LocalMachine-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachine-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_LocalMachine-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachine-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_LocalMachine-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachine-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_LocalMachine-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachine-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_LocalMachine |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_LocalMachine-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachine-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_LocalMachine-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachine-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-Begin -->
## IZ_Policy_OpenSearchPreview_LocalMachineLockdown

<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_LocalMachineLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_LocalMachineLockdown
```
<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_LocalMachineLockdown |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_LocalMachineLockdown-End -->

<!-- IZ_Policy_OpenSearchPreview_Restricted-Begin -->
## IZ_Policy_OpenSearchPreview_Restricted

<!-- IZ_Policy_OpenSearchPreview_Restricted-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_Restricted-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_Restricted-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Restricted
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Restricted
```
<!-- IZ_Policy_OpenSearchPreview_Restricted-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_Restricted-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can't preview items or get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_Restricted-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_Restricted-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_Restricted-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_Restricted-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_Restricted-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_Restricted-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_Restricted |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_Restricted-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_Restricted-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_Restricted-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_Restricted-End -->

<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-Begin -->
## IZ_Policy_OpenSearchPreview_RestrictedLockdown

<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_RestrictedLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_RestrictedLockdown
```
<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can't preview items or get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_RestrictedLockdown |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_RestrictedLockdown-End -->

<!-- IZ_Policy_OpenSearchPreview_Trusted-Begin -->
## IZ_Policy_OpenSearchPreview_Trusted

<!-- IZ_Policy_OpenSearchPreview_Trusted-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_Trusted-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_Trusted-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Trusted
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_Trusted
```
<!-- IZ_Policy_OpenSearchPreview_Trusted-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_Trusted-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_Trusted-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_Trusted-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_Trusted-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_Trusted-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_Trusted-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_Trusted-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_Trusted |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_Trusted-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_Trusted-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_Trusted-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_Trusted-End -->

<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-Begin -->
## IZ_Policy_OpenSearchPreview_TrustedLockdown

<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_TrustedLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchPreview_TrustedLockdown
```
<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether a user may preview an item from this zone or display custom thumbnails in the preview pane in File Explorer. While this policy setting usually applies to items returned by OpenSearch queries using Search Connectors (which allow rich searching of remote sources from within the File Explorer), it might affect other items as well that are marked from this zone. For example, some application-specific items such as MAPI (Messaging Application Programming Interface) items that are returned as search results in File Explorer will be affected. MAPI items reside in the Internet zone, so disabling this policy for the Internet zone will prevent the previewing of these items in File Explorer. For the case of custom thumbnails, it's the zone of the thumbnail that's checked, not the zone of item. Typically these are the same but a source is able to define a specific location of a thumbnail that's different than the location of the item.

- If you enable this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you disable this policy setting, users will be prevented from previewing items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

- If you don't configure this policy setting, users can preview items and get custom thumbnails from OpenSearch query results in this zone using File Explorer.

Changes to this setting may not be applied until the user logs off from Windows.
<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchPreview_TrustedLockdown |
| Friendly Name | Allow previewing and custom thumbnails of OpenSearch query results in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| Registry Value Name | 180F |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchPreview_TrustedLockdown-End -->

<!-- IZ_Policy_OpenSearchQuery_Internet-Begin -->
## IZ_Policy_OpenSearchQuery_Internet

<!-- IZ_Policy_OpenSearchQuery_Internet-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_Internet-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_Internet-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Internet
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Internet
```
<!-- IZ_Policy_OpenSearchQuery_Internet-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_Internet-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_Internet-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_Internet-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_Internet-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_Internet-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_Internet-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_Internet-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_Internet |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_Internet-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_Internet-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_Internet-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_Internet-End -->

<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-Begin -->
## IZ_Policy_OpenSearchQuery_InternetLockdown

<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_InternetLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_InternetLockdown
```
<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_InternetLockdown |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Internet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\3 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_InternetLockdown-End -->

<!-- IZ_Policy_OpenSearchQuery_Intranet-Begin -->
## IZ_Policy_OpenSearchQuery_Intranet

<!-- IZ_Policy_OpenSearchQuery_Intranet-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_Intranet-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_Intranet-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Intranet
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Intranet
```
<!-- IZ_Policy_OpenSearchQuery_Intranet-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_Intranet-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_Intranet-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_Intranet-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_Intranet-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_Intranet-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_Intranet-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_Intranet-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_Intranet |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\1 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_Intranet-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_Intranet-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_Intranet-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_Intranet-End -->

<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-Begin -->
## IZ_Policy_OpenSearchQuery_IntranetLockdown

<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_IntranetLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_IntranetLockdown
```
<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_IntranetLockdown |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Intranet Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\1 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_IntranetLockdown-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachine-Begin -->
## IZ_Policy_OpenSearchQuery_LocalMachine

<!-- IZ_Policy_OpenSearchQuery_LocalMachine-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_LocalMachine-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachine-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_LocalMachine
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_LocalMachine
```
<!-- IZ_Policy_OpenSearchQuery_LocalMachine-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachine-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_LocalMachine-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachine-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_LocalMachine-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachine-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_LocalMachine-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachine-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_LocalMachine |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\0 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_LocalMachine-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachine-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_LocalMachine-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachine-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-Begin -->
## IZ_Policy_OpenSearchQuery_LocalMachineLockdown

<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_LocalMachineLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_LocalMachineLockdown
```
<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_LocalMachineLockdown |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Local Machine Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\0 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_LocalMachineLockdown-End -->

<!-- IZ_Policy_OpenSearchQuery_Restricted-Begin -->
## IZ_Policy_OpenSearchQuery_Restricted

<!-- IZ_Policy_OpenSearchQuery_Restricted-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_Restricted-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_Restricted-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Restricted
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Restricted
```
<!-- IZ_Policy_OpenSearchQuery_Restricted-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_Restricted-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can't perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_Restricted-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_Restricted-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_Restricted-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_Restricted-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_Restricted-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_Restricted-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_Restricted |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\4 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_Restricted-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_Restricted-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_Restricted-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_Restricted-End -->

<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-Begin -->
## IZ_Policy_OpenSearchQuery_RestrictedLockdown

<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_RestrictedLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_RestrictedLockdown
```
<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can't perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_RestrictedLockdown |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Restricted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\4 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_RestrictedLockdown-End -->

<!-- IZ_Policy_OpenSearchQuery_Trusted-Begin -->
## IZ_Policy_OpenSearchQuery_Trusted

<!-- IZ_Policy_OpenSearchQuery_Trusted-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_Trusted-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_Trusted-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Trusted
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_Trusted
```
<!-- IZ_Policy_OpenSearchQuery_Trusted-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_Trusted-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_Trusted-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_Trusted-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_Trusted-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_Trusted-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_Trusted-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_Trusted-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_Trusted |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\2 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_Trusted-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_Trusted-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_Trusted-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_Trusted-End -->

<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-Begin -->
## IZ_Policy_OpenSearchQuery_TrustedLockdown

<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-Applicability-End -->

<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_TrustedLockdown
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/IZ_Policy_OpenSearchQuery_TrustedLockdown
```
<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-OmaUri-End -->

<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage whether OpenSearch queries in this zone can be performed using Search Connectors in File Explorer. Search Connectors allow rich searching of remote sources from within File Explorer. Search results will be returned in File Explorer and can be acted upon like local files.

- If you enable this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.

- If you disable this policy setting, users are prevented from performing OpenSearch queries in this zone using Search Connectors.

- If you don't configure this policy setting, users can perform OpenSearch queries in this zone using Search Connectors.
<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-Description-End -->

<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-Editable-End -->

<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-DFProperties-End -->

<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | IZ_Policy_OpenSearchQuery_TrustedLockdown |
| Friendly Name | Allow OpenSearch queries in File Explorer |
| Location | Computer and User Configuration |
| Path | IZ_SecurityPage > Locked-Down Trusted Sites Zone |
| Registry Key Name | Software\Policies\Microsoft\Windows\CurrentVersion\Internet Settings\Lockdown_Zones\2 |
| Registry Value Name | 180E |
| ADMX File Name | WindowsExplorer.admx |
<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-AdmxBacked-End -->

<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-Examples-End -->

<!-- IZ_Policy_OpenSearchQuery_TrustedLockdown-End -->

<!-- LinkResolveIgnoreLinkInfo-Begin -->
## LinkResolveIgnoreLinkInfo

<!-- LinkResolveIgnoreLinkInfo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LinkResolveIgnoreLinkInfo-Applicability-End -->

<!-- LinkResolveIgnoreLinkInfo-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/LinkResolveIgnoreLinkInfo
```
<!-- LinkResolveIgnoreLinkInfo-OmaUri-End -->

<!-- LinkResolveIgnoreLinkInfo-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows traces shortcuts back to their sources when it can't find the target on the user's system.

Shortcut files typically include an absolute path to the original target file as well as the relative path to the current target file. When the system can't find the file in the current target path, then, by default, it searches for the target in the original path. If the shortcut has been copied to a different computer, the original path might lead to a network computer, including external resources, such as an Internet server.

- If you enable this policy setting, Windows only searches the current target path. It doesn't search for the original path even when it can't find the target file in the current target path.

- If you disable or don't configure this policy setting, Windows searches for the original path when it can't find the target file in the current target path.
<!-- LinkResolveIgnoreLinkInfo-Description-End -->

<!-- LinkResolveIgnoreLinkInfo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LinkResolveIgnoreLinkInfo-Editable-End -->

<!-- LinkResolveIgnoreLinkInfo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LinkResolveIgnoreLinkInfo-DFProperties-End -->

<!-- LinkResolveIgnoreLinkInfo-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LinkResolveIgnoreLinkInfo |
| Friendly Name | Do not track Shell shortcuts during roaming |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | LinkResolveIgnoreLinkInfo |
| ADMX File Name | WindowsExplorer.admx |
<!-- LinkResolveIgnoreLinkInfo-AdmxBacked-End -->

<!-- LinkResolveIgnoreLinkInfo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LinkResolveIgnoreLinkInfo-Examples-End -->

<!-- LinkResolveIgnoreLinkInfo-End -->

<!-- MaxRecentDocs-Begin -->
## MaxRecentDocs

<!-- MaxRecentDocs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- MaxRecentDocs-Applicability-End -->

<!-- MaxRecentDocs-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/MaxRecentDocs
```
<!-- MaxRecentDocs-OmaUri-End -->

<!-- MaxRecentDocs-Description-Begin -->
<!-- Description-Source-ADMX -->
"This policy setting allows you to set the maximum number of shortcuts the system can display in the Recent Items menu on the Start menu.

The Recent Items menu contains shortcuts to the nonprogram files the user has most recently opened.

- If you enable this policy setting, the system displays the number of shortcuts specified by the policy setting.

- If you disable or don't configure this policy setting, by default, the system displays shortcuts to the 10 most recently opened documents".
<!-- MaxRecentDocs-Description-End -->

<!-- MaxRecentDocs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MaxRecentDocs-Editable-End -->

<!-- MaxRecentDocs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MaxRecentDocs-DFProperties-End -->

<!-- MaxRecentDocs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MaxRecentDocs |
| Friendly Name | Maximum number of recent documents |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| ADMX File Name | WindowsExplorer.admx |
<!-- MaxRecentDocs-AdmxBacked-End -->

<!-- MaxRecentDocs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MaxRecentDocs-Examples-End -->

<!-- MaxRecentDocs-End -->

<!-- NoBackButton-Begin -->
## NoBackButton

<!-- NoBackButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoBackButton-Applicability-End -->

<!-- NoBackButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoBackButton
```
<!-- NoBackButton-OmaUri-End -->

<!-- NoBackButton-Description-Begin -->
<!-- Description-Source-ADMX -->
Hide the Back button in the Open dialog box.

This policy setting lets you remove new features added in Microsoft Windows 2000 Professional, so the Open dialog box appears as it did in Windows NT 4.0 and earlier. This policy setting affects only programs that use the standard Open dialog box provided to developers of Windows programs.

- If you enable this policy setting, the Back button is removed from the standard Open dialog box.

- If you disable or don't configure this policy setting, the Back button is displayed for any standard Open dialog box.

To see an example of the standard Open dialog box, start Notepad and, on the File menu, click Open.

> [!NOTE]
> In Windows Vista, this policy setting applies only to applications that are using the Windows XP common dialog box style. This policy setting doesn't apply to the new Windows Vista common dialog box style. Also, third-party applications with Windows 2000 or later certification to are required to adhere to this policy setting.
<!-- NoBackButton-Description-End -->

<!-- NoBackButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoBackButton-Editable-End -->

<!-- NoBackButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoBackButton-DFProperties-End -->

<!-- NoBackButton-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoBackButton |
| Friendly Name | Hide the common dialog back button |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Common Open File Dialog |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Comdlg32 |
| Registry Value Name | NoBackButton |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoBackButton-AdmxBacked-End -->

<!-- NoBackButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoBackButton-Examples-End -->

<!-- NoBackButton-End -->

<!-- NoCacheThumbNailPictures-Begin -->
## NoCacheThumbNailPictures

<!-- NoCacheThumbNailPictures-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoCacheThumbNailPictures-Applicability-End -->

<!-- NoCacheThumbNailPictures-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoCacheThumbNailPictures
```
<!-- NoCacheThumbNailPictures-OmaUri-End -->

<!-- NoCacheThumbNailPictures-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off caching of thumbnail pictures.

- If you enable this policy setting, thumbnail views aren't cached.

- If you disable or don't configure this policy setting, thumbnail views are cached.

> [!NOTE]
> For shared corporate workstations or computers where security is a top concern, you should enable this policy setting to turn off the thumbnail view cache, because the thumbnail cache can be read by everyone.
<!-- NoCacheThumbNailPictures-Description-End -->

<!-- NoCacheThumbNailPictures-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoCacheThumbNailPictures-Editable-End -->

<!-- NoCacheThumbNailPictures-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoCacheThumbNailPictures-DFProperties-End -->

<!-- NoCacheThumbNailPictures-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoCacheThumbNailPictures |
| Friendly Name | Turn off caching of thumbnail pictures |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoThumbnailCache |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoCacheThumbNailPictures-AdmxBacked-End -->

<!-- NoCacheThumbNailPictures-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoCacheThumbNailPictures-Examples-End -->

<!-- NoCacheThumbNailPictures-End -->

<!-- NoCDBurning-Begin -->
## NoCDBurning

<!-- NoCDBurning-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoCDBurning-Applicability-End -->

<!-- NoCDBurning-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoCDBurning
```
<!-- NoCDBurning-OmaUri-End -->

<!-- NoCDBurning-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove CD Burning features. File Explorer allows you to create and modify re-writable CDs if you have a CD writer connected to your PC.

- If you enable this policy setting, all features in the File Explorer that allow you to use your CD writer are removed.

- If you disable or don't configure this policy setting, users are able to use the File Explorer CD burning features.

> [!NOTE]
> This policy setting doesn't prevent users from using third-party applications to create or modify CDs using a CD writer.
<!-- NoCDBurning-Description-End -->

<!-- NoCDBurning-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoCDBurning-Editable-End -->

<!-- NoCDBurning-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoCDBurning-DFProperties-End -->

<!-- NoCDBurning-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoCDBurning |
| Friendly Name | Remove CD Burning features |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoCDBurning |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoCDBurning-AdmxBacked-End -->

<!-- NoCDBurning-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoCDBurning-Examples-End -->

<!-- NoCDBurning-End -->

<!-- NoChangeAnimation-Begin -->
## NoChangeAnimation

<!-- NoChangeAnimation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoChangeAnimation-Applicability-End -->

<!-- NoChangeAnimation-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoChangeAnimation
```
<!-- NoChangeAnimation-OmaUri-End -->

<!-- NoChangeAnimation-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent users from enabling or disabling minor animations in the operating system for the movement of windows, menus, and lists.

- If you enable this policy setting, the "Use transition effects for menus and tooltips" option in Display in Control Panel is disabled, and can't be toggled by users.

Effects, such as animation, are designed to enhance the user's experience but might be confusing or distracting to some users.

- If you disable or don't configure this policy setting, users are allowed to turn on or off these minor system animations using the "Use transition effects for menus and tooltips" option in Display in Control Panel.
<!-- NoChangeAnimation-Description-End -->

<!-- NoChangeAnimation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoChangeAnimation-Editable-End -->

<!-- NoChangeAnimation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoChangeAnimation-DFProperties-End -->

<!-- NoChangeAnimation-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoChangeAnimation |
| Friendly Name | Remove UI to change menu animation setting |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoChangeAnimation |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoChangeAnimation-AdmxBacked-End -->

<!-- NoChangeAnimation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoChangeAnimation-Examples-End -->

<!-- NoChangeAnimation-End -->

<!-- NoChangeKeyboardNavigationIndicators-Begin -->
## NoChangeKeyboardNavigationIndicators

<!-- NoChangeKeyboardNavigationIndicators-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoChangeKeyboardNavigationIndicators-Applicability-End -->

<!-- NoChangeKeyboardNavigationIndicators-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoChangeKeyboardNavigationIndicators
```
<!-- NoChangeKeyboardNavigationIndicators-OmaUri-End -->

<!-- NoChangeKeyboardNavigationIndicators-Description-Begin -->
<!-- Description-Source-ADMX -->
Disables the "Hide keyboard navigation indicators until I use the ALT key" option in Display in Control Panel.

When this Display Properties option is selected, the underlining that indicates a keyboard shortcut character (hot key) doesn't appear on menus until you press ALT.

Effects, such as transitory underlines, are designed to enhance the user's experience but might be confusing or distracting to some users.
<!-- NoChangeKeyboardNavigationIndicators-Description-End -->

<!-- NoChangeKeyboardNavigationIndicators-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoChangeKeyboardNavigationIndicators-Editable-End -->

<!-- NoChangeKeyboardNavigationIndicators-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoChangeKeyboardNavigationIndicators-DFProperties-End -->

<!-- NoChangeKeyboardNavigationIndicators-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoChangeKeyboardNavigationIndicators |
| Friendly Name | Remove UI to change keyboard navigation indicator setting |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoChangeKeyboardNavigationIndicators |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoChangeKeyboardNavigationIndicators-AdmxBacked-End -->

<!-- NoChangeKeyboardNavigationIndicators-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoChangeKeyboardNavigationIndicators-Examples-End -->

<!-- NoChangeKeyboardNavigationIndicators-End -->

<!-- NoDFSTab-Begin -->
## NoDFSTab

<!-- NoDFSTab-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoDFSTab-Applicability-End -->

<!-- NoDFSTab-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoDFSTab
```
<!-- NoDFSTab-OmaUri-End -->

<!-- NoDFSTab-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the DFS tab from File Explorer.

- If you enable this policy setting, the DFS (Distributed File System) tab is removed from File Explorer and from other programs that use the File Explorer browser, such as My Computer. As a result, users can't use this tab to view or change the properties of the DFS shares available from their computer.

This policy setting doesn't prevent users from using other methods to configure DFS.

- If you disable or don't configure this policy setting, the DFS tab is available.
<!-- NoDFSTab-Description-End -->

<!-- NoDFSTab-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoDFSTab-Editable-End -->

<!-- NoDFSTab-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoDFSTab-DFProperties-End -->

<!-- NoDFSTab-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoDFSTab |
| Friendly Name | Remove DFS tab |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoDFSTab |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoDFSTab-AdmxBacked-End -->

<!-- NoDFSTab-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoDFSTab-Examples-End -->

<!-- NoDFSTab-End -->

<!-- NoDrives-Begin -->
## NoDrives

<!-- NoDrives-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoDrives-Applicability-End -->

<!-- NoDrives-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoDrives
```
<!-- NoDrives-OmaUri-End -->

<!-- NoDrives-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to hide these specified drives in My Computer.

This policy setting allows you to remove the icons representing selected hard drives from My Computer and File Explorer. Also, the drive letters representing the selected drives don't appear in the standard Open dialog box.

- If you enable this policy setting, select a drive or combination of drives in the drop-down list.

> [!NOTE]
> This policy setting removes the drive icons. Users can still gain access to drive contents by using other methods, such as by typing the path to a directory on the drive in the Map Network Drive dialog box, in the Run dialog box, or in a command window.

Also, this policy setting doesn't prevent users from using programs to access these drives or their contents. And, it doesn't prevent users from using the Disk Management snap-in to view and change drive characteristics.

- If you disable or don't configure this policy setting, all drives are displayed, or select the "Do not restrict drives" option in the drop-down list.

Also, see the "Prevent access to drives from My Computer" policy setting.
<!-- NoDrives-Description-End -->

<!-- NoDrives-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoDrives-Editable-End -->

<!-- NoDrives-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoDrives-DFProperties-End -->

<!-- NoDrives-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoDrives |
| Friendly Name | Hide these specified drives in My Computer |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoDrives-AdmxBacked-End -->

<!-- NoDrives-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoDrives-Examples-End -->

<!-- NoDrives-End -->

<!-- NoEntireNetwork-Begin -->
## NoEntireNetwork

<!-- NoEntireNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoEntireNetwork-Applicability-End -->

<!-- NoEntireNetwork-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoEntireNetwork
```
<!-- NoEntireNetwork-OmaUri-End -->

<!-- NoEntireNetwork-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes all computers outside of the user's workgroup or local domain from lists of network resources in File Explorer and Network Locations.

If you enable this setting, the system removes the Entire Network option and the icons representing networked computers from Network Locations and from the browser associated with the Map Network Drive option.

This setting doesn't prevent users from viewing or connecting to computers in their workgroup or domain. It also doesn't prevent users from connecting to remote computers by other commonly used methods, such as by typing the share name in the Run dialog box or the Map Network Drive dialog box.

To remove computers in the user's workgroup or domain from lists of network resources, use the "No Computers Near Me in Network Locations" setting.

> [!NOTE]
> It's a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
<!-- NoEntireNetwork-Description-End -->

<!-- NoEntireNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoEntireNetwork-Editable-End -->

<!-- NoEntireNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoEntireNetwork-DFProperties-End -->

<!-- NoEntireNetwork-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoEntireNetwork |
| Friendly Name | No Entire Network in Network Locations |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Network |
| Registry Value Name | NoEntireNetwork |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoEntireNetwork-AdmxBacked-End -->

<!-- NoEntireNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoEntireNetwork-Examples-End -->

<!-- NoEntireNetwork-End -->

<!-- NoFileMenu-Begin -->
## NoFileMenu

<!-- NoFileMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoFileMenu-Applicability-End -->

<!-- NoFileMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoFileMenu
```
<!-- NoFileMenu-OmaUri-End -->

<!-- NoFileMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the File menu from My Computer and File Explorer.

This setting doesn't prevent users from using other methods to perform tasks available on the File menu.
<!-- NoFileMenu-Description-End -->

<!-- NoFileMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoFileMenu-Editable-End -->

<!-- NoFileMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoFileMenu-DFProperties-End -->

<!-- NoFileMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoFileMenu |
| Friendly Name | Remove File menu from File Explorer |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoFileMenu |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoFileMenu-AdmxBacked-End -->

<!-- NoFileMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoFileMenu-Examples-End -->

<!-- NoFileMenu-End -->

<!-- NoFileMRU-Begin -->
## NoFileMRU

<!-- NoFileMRU-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoFileMRU-Applicability-End -->

<!-- NoFileMRU-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoFileMRU
```
<!-- NoFileMRU-OmaUri-End -->

<!-- NoFileMRU-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the list of most recently used files from the Open dialog box.

- If you disable this setting or don't configure it, the "File name" field includes a drop-down list of recently used files.

- If you enable this setting, the "File name" field is a simple text box. Users must browse directories to find a file or type a file name in the text box.

This setting, and others in this folder, lets you remove new features added in Windows 2000 Professional, so that the Open dialog box looks like it did in Windows NT 4.0 and earlier. These policies only affect programs that use the standard Open dialog box provided to developers of Windows programs.

To see an example of the standard Open dialog box, start Wordpad and, on the File menu, click Open.

> [!NOTE]
> In Windows Vista, this policy setting applies only to applications that are using the Windows XP common dialog box style. This policy setting doesn't apply to the new Windows Vista common dialog box style. It's a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
<!-- NoFileMRU-Description-End -->

<!-- NoFileMRU-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoFileMRU-Editable-End -->

<!-- NoFileMRU-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoFileMRU-DFProperties-End -->

<!-- NoFileMRU-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoFileMRU |
| Friendly Name | Hide the dropdown list of recent files |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Common Open File Dialog |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Comdlg32 |
| Registry Value Name | NoFileMru |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoFileMRU-AdmxBacked-End -->

<!-- NoFileMRU-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoFileMRU-Examples-End -->

<!-- NoFileMRU-End -->

<!-- NoFolderOptions-Begin -->
## NoFolderOptions

<!-- NoFolderOptions-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoFolderOptions-Applicability-End -->

<!-- NoFolderOptions-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoFolderOptions
```
<!-- NoFolderOptions-OmaUri-End -->

<!-- NoFolderOptions-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent users from accessing Folder Options through the View tab on the ribbon in File Explorer.

Folder Options allows users to change the way files and folders open, what appears in the navigation pane, and other advanced view settings.

- If you enable this policy setting, users will receive an error message if they tap or click the Options button or choose the Change folder and search options command, and they won't be able to open Folder Options.

- If you disable or don't configure this policy setting, users can open Folder Options from the View tab on the ribbon.
<!-- NoFolderOptions-Description-End -->

<!-- NoFolderOptions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoFolderOptions-Editable-End -->

<!-- NoFolderOptions-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoFolderOptions-DFProperties-End -->

<!-- NoFolderOptions-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoFolderOptions |
| Friendly Name | Do not allow Folder Options to be opened from the Options button on the View tab of the ribbon |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoFolderOptions |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoFolderOptions-AdmxBacked-End -->

<!-- NoFolderOptions-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoFolderOptions-Examples-End -->

<!-- NoFolderOptions-End -->

<!-- NoHardwareTab-Begin -->
## NoHardwareTab

<!-- NoHardwareTab-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoHardwareTab-Applicability-End -->

<!-- NoHardwareTab-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoHardwareTab
```
<!-- NoHardwareTab-OmaUri-End -->

<!-- NoHardwareTab-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Hardware tab.

This setting removes the Hardware tab from Mouse, Keyboard, and Sounds and Audio Devices in Control Panel. It also removes the Hardware tab from the Properties dialog box for all local drives, including hard drives, floppy disk drives, and CD-ROM drives. As a result, users can't use the Hardware tab to view or change the device list or device properties, or use the Troubleshoot button to resolve problems with the device.
<!-- NoHardwareTab-Description-End -->

<!-- NoHardwareTab-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoHardwareTab-Editable-End -->

<!-- NoHardwareTab-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoHardwareTab-DFProperties-End -->

<!-- NoHardwareTab-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoHardwareTab |
| Friendly Name | Remove Hardware tab |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoHardwareTab |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoHardwareTab-AdmxBacked-End -->

<!-- NoHardwareTab-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoHardwareTab-Examples-End -->

<!-- NoHardwareTab-End -->

<!-- NoManageMyComputerVerb-Begin -->
## NoManageMyComputerVerb

<!-- NoManageMyComputerVerb-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoManageMyComputerVerb-Applicability-End -->

<!-- NoManageMyComputerVerb-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoManageMyComputerVerb
```
<!-- NoManageMyComputerVerb-OmaUri-End -->

<!-- NoManageMyComputerVerb-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Manage item from the File Explorer context menu. This context menu appears when you right-click File Explorer or My Computer.

The Manage item opens Computer Management (Compmgmt.msc), a console tool that includes many of the primary Windows 2000 administrative tools, such as Event Viewer, Device Manager, and Disk Management. You must be an administrator to use many of the features of these tools.

This setting doesn't remove the Computer Management item from the Start menu (Start, Programs, Administrative Tools, Computer Management), nor does it prevent users from using other methods to start Computer Management.

> [!TIP]
> To hide all context menus, use the "Remove File Explorer's default context menu" setting.
<!-- NoManageMyComputerVerb-Description-End -->

<!-- NoManageMyComputerVerb-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoManageMyComputerVerb-Editable-End -->

<!-- NoManageMyComputerVerb-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoManageMyComputerVerb-DFProperties-End -->

<!-- NoManageMyComputerVerb-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoManageMyComputerVerb |
| Friendly Name | Hides the Manage item on the File Explorer context menu |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoManageMyComputerVerb |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoManageMyComputerVerb-AdmxBacked-End -->

<!-- NoManageMyComputerVerb-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoManageMyComputerVerb-Examples-End -->

<!-- NoManageMyComputerVerb-End -->

<!-- NoMyComputerSharedDocuments-Begin -->
## NoMyComputerSharedDocuments

<!-- NoMyComputerSharedDocuments-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoMyComputerSharedDocuments-Applicability-End -->

<!-- NoMyComputerSharedDocuments-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoMyComputerSharedDocuments
```
<!-- NoMyComputerSharedDocuments-OmaUri-End -->

<!-- NoMyComputerSharedDocuments-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Shared Documents folder from My Computer.

When a Windows client is in a workgroup, a Shared Documents icon appears in the File Explorer Web view under "Other Places" and also under "Files Stored on This Computer" in My Computer. Using this policy setting, you can choose not to have these items displayed.

- If you enable this policy setting, the Shared Documents folder isn't displayed in the Web view or in My Computer.

- If you disable or don't configure this policy setting, the Shared Documents folder is displayed in Web view and also in My Computer when the client is part of a workgroup.

> [!NOTE]
> The ability to remove the Shared Documents folder via Group Policy is only available on Windows XP Professional.
<!-- NoMyComputerSharedDocuments-Description-End -->

<!-- NoMyComputerSharedDocuments-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoMyComputerSharedDocuments-Editable-End -->

<!-- NoMyComputerSharedDocuments-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoMyComputerSharedDocuments-DFProperties-End -->

<!-- NoMyComputerSharedDocuments-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoMyComputerSharedDocuments |
| Friendly Name | Remove Shared Documents from My Computer |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSharedDocuments |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoMyComputerSharedDocuments-AdmxBacked-End -->

<!-- NoMyComputerSharedDocuments-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoMyComputerSharedDocuments-Examples-End -->

<!-- NoMyComputerSharedDocuments-End -->

<!-- NoNetConnectDisconnect-Begin -->
## NoNetConnectDisconnect

<!-- NoNetConnectDisconnect-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoNetConnectDisconnect-Applicability-End -->

<!-- NoNetConnectDisconnect-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoNetConnectDisconnect
```
<!-- NoNetConnectDisconnect-OmaUri-End -->

<!-- NoNetConnectDisconnect-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from using File Explorer or Network Locations to map or disconnect network drives.

If you enable this setting, the system removes the Map Network Drive and Disconnect Network Drive commands from the toolbar and Tools menus in File Explorer and Network Locations and from menus that appear when you right-click the File Explorer or Network Locations icons.

This setting doesn't prevent users from connecting to another computer by typing the name of a shared folder in the Run dialog box.

> [!NOTE]
> This setting was documented incorrectly on the Explain tab in Group Policy for Windows 2000. The Explain tab states incorrectly that this setting prevents users from connecting and disconnecting drives.

> [!NOTE]
> It's a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
<!-- NoNetConnectDisconnect-Description-End -->

<!-- NoNetConnectDisconnect-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoNetConnectDisconnect-Editable-End -->

<!-- NoNetConnectDisconnect-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoNetConnectDisconnect-DFProperties-End -->

<!-- NoNetConnectDisconnect-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoNetConnectDisconnect |
| Friendly Name | Remove "Map Network Drive" and "Disconnect Network Drive" |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoNetConnectDisconnect |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoNetConnectDisconnect-AdmxBacked-End -->

<!-- NoNetConnectDisconnect-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoNetConnectDisconnect-Examples-End -->

<!-- NoNetConnectDisconnect-End -->

<!-- NoNewAppAlert-Begin -->
## NoNewAppAlert

<!-- NoNewAppAlert-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoNewAppAlert-Applicability-End -->

<!-- NoNewAppAlert-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoNewAppAlert
```
<!-- NoNewAppAlert-OmaUri-End -->

<!-- NoNewAppAlert-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy removes the end-user notification for new application associations. These associations are based on file types (e.g. *.txt) or protocols (e.g. http:)

If this group policy is enabled, no notifications will be shown. If the group policy isn't configured or disabled, notifications will be shown to the end user if a new application has been installed that can handle the file type or protocol association that was invoked.
<!-- NoNewAppAlert-Description-End -->

<!-- NoNewAppAlert-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoNewAppAlert-Editable-End -->

<!-- NoNewAppAlert-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoNewAppAlert-DFProperties-End -->

<!-- NoNewAppAlert-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoNewAppAlert |
| Friendly Name | Do not show the 'new application installed' notification |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoNewAppAlert |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoNewAppAlert-AdmxBacked-End -->

<!-- NoNewAppAlert-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoNewAppAlert-Examples-End -->

<!-- NoNewAppAlert-End -->

<!-- NoPlacesBar-Begin -->
## NoPlacesBar

<!-- NoPlacesBar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoPlacesBar-Applicability-End -->

<!-- NoPlacesBar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoPlacesBar
```
<!-- NoPlacesBar-OmaUri-End -->

<!-- NoPlacesBar-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the shortcut bar from the Open dialog box.

This setting, and others in this folder, lets you remove new features added in Windows 2000 Professional, so that the Open dialog box looks like it did in Windows NT 4.0 and earlier. These policies only affect programs that use the standard Open dialog box provided to developers of Windows programs.

To see an example of the standard Open dialog box, start Wordpad and, on the File menu, click Open.

> [!NOTE]
> In Windows Vista, this policy setting applies only to applications that are using the Windows XP common dialog box style. This policy setting doesn't apply to the new Windows Vista common dialog box style. It's a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
<!-- NoPlacesBar-Description-End -->

<!-- NoPlacesBar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoPlacesBar-Editable-End -->

<!-- NoPlacesBar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoPlacesBar-DFProperties-End -->

<!-- NoPlacesBar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoPlacesBar |
| Friendly Name | Hide the common dialog places bar |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Common Open File Dialog |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Comdlg32 |
| Registry Value Name | NoPlacesBar |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoPlacesBar-AdmxBacked-End -->

<!-- NoPlacesBar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoPlacesBar-Examples-End -->

<!-- NoPlacesBar-End -->

<!-- NoRecycleFiles-Begin -->
## NoRecycleFiles

<!-- NoRecycleFiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoRecycleFiles-Applicability-End -->

<!-- NoRecycleFiles-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoRecycleFiles
```
<!-- NoRecycleFiles-OmaUri-End -->

<!-- NoRecycleFiles-Description-Begin -->
<!-- Description-Source-ADMX -->
When a file or folder is deleted in File Explorer, a copy of the file or folder is placed in the Recycle Bin. Using this setting, you can change this behavior.

- If you enable this setting, files and folders that are deleted using File Explorer won't be placed in the Recycle Bin and will therefore be permanently deleted.

- If you disable or don't configure this setting, files and folders deleted using File Explorer will be placed in the Recycle Bin.
<!-- NoRecycleFiles-Description-End -->

<!-- NoRecycleFiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoRecycleFiles-Editable-End -->

<!-- NoRecycleFiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoRecycleFiles-DFProperties-End -->

<!-- NoRecycleFiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoRecycleFiles |
| Friendly Name | Do not move deleted files to the Recycle Bin |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoRecycleFiles |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoRecycleFiles-AdmxBacked-End -->

<!-- NoRecycleFiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoRecycleFiles-Examples-End -->

<!-- NoRecycleFiles-End -->

<!-- NoRunAsInstallPrompt-Begin -->
## NoRunAsInstallPrompt

<!-- NoRunAsInstallPrompt-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoRunAsInstallPrompt-Applicability-End -->

<!-- NoRunAsInstallPrompt-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoRunAsInstallPrompt
```
<!-- NoRunAsInstallPrompt-OmaUri-End -->

<!-- NoRunAsInstallPrompt-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from submitting alternate logon credentials to install a program.

This setting suppresses the "Install Program As Other User" dialog box for local and network installations. This dialog box, which prompts the current user for the user name and password of an administrator, appears when users who aren't administrators try to install programs locally on their computers. This setting allows administrators who have logged-on as regular users to install programs without logging off and logging on again using their administrator credentials.

Many programs can be installed only by an administrator.

- If you enable this setting and a user doesn't have sufficient permissions to install a program, the installation continues with the current user's logon credentials. As a result, the installation might fail, or it might complete but not include all features. Or, it might appear to complete successfully, but the installed program might not operate correctly.

- If you disable this setting or don't configure it, the "Install Program As Other User" dialog box appears whenever users install programs locally on the computer.

By default, users aren't prompted for alternate logon credentials when installing programs from a network share. If enabled, this setting overrides the "Request credentials for network installations" setting.
<!-- NoRunAsInstallPrompt-Description-End -->

<!-- NoRunAsInstallPrompt-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoRunAsInstallPrompt-Editable-End -->

<!-- NoRunAsInstallPrompt-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoRunAsInstallPrompt-DFProperties-End -->

<!-- NoRunAsInstallPrompt-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoRunAsInstallPrompt |
| Friendly Name | Do not request alternate credentials |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoRunasInstallPrompt |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoRunAsInstallPrompt-AdmxBacked-End -->

<!-- NoRunAsInstallPrompt-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoRunAsInstallPrompt-Examples-End -->

<!-- NoRunAsInstallPrompt-End -->

<!-- NoSearchInternetTryHarderButton-Begin -->
## NoSearchInternetTryHarderButton

<!-- NoSearchInternetTryHarderButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSearchInternetTryHarderButton-Applicability-End -->

<!-- NoSearchInternetTryHarderButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoSearchInternetTryHarderButton
```
<!-- NoSearchInternetTryHarderButton-OmaUri-End -->

<!-- NoSearchInternetTryHarderButton-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy, the "Internet" "Search again" link won't be shown when the user performs a search in the Explorer window.

- If you disable this policy, there will be an "Internet" "Search again" link when the user performs a search in the Explorer window. This button launches a search in the default browser with the search terms.

- If you don't configure this policy (default), there will be an "Internet" link when the user performs a search in the Explorer window.
<!-- NoSearchInternetTryHarderButton-Description-End -->

<!-- NoSearchInternetTryHarderButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSearchInternetTryHarderButton-Editable-End -->

<!-- NoSearchInternetTryHarderButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSearchInternetTryHarderButton-DFProperties-End -->

<!-- NoSearchInternetTryHarderButton-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSearchInternetTryHarderButton |
| Friendly Name | Remove the Search the Internet "Search again" link |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoSearchInternetTryHarderButton |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoSearchInternetTryHarderButton-AdmxBacked-End -->

<!-- NoSearchInternetTryHarderButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSearchInternetTryHarderButton-Examples-End -->

<!-- NoSearchInternetTryHarderButton-End -->

<!-- NoSecurityTab-Begin -->
## NoSecurityTab

<!-- NoSecurityTab-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoSecurityTab-Applicability-End -->

<!-- NoSecurityTab-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoSecurityTab
```
<!-- NoSecurityTab-OmaUri-End -->

<!-- NoSecurityTab-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes the Security tab from File Explorer.

- If you enable this setting, users opening the Properties dialog box for all file system objects, including folders, files, shortcuts, and drives, won't be able to access the Security tab. As a result, users will be able to neither change the security settings nor view a list of all users that have access to the resource in question.

- If you disable or don't configure this setting, users will be able to access the security tab.
<!-- NoSecurityTab-Description-End -->

<!-- NoSecurityTab-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoSecurityTab-Editable-End -->

<!-- NoSecurityTab-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoSecurityTab-DFProperties-End -->

<!-- NoSecurityTab-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoSecurityTab |
| Friendly Name | Remove Security tab |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoSecurityTab |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoSecurityTab-AdmxBacked-End -->

<!-- NoSecurityTab-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoSecurityTab-Examples-End -->

<!-- NoSecurityTab-End -->

<!-- NoShellSearchButton-Begin -->
## NoShellSearchButton

<!-- NoShellSearchButton-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoShellSearchButton-Applicability-End -->

<!-- NoShellSearchButton-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoShellSearchButton
```
<!-- NoShellSearchButton-OmaUri-End -->

<!-- NoShellSearchButton-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the Search button from the File Explorer toolbar.

- If you enable this policy setting, the Search button is removed from the Standard Buttons toolbar that appears in File Explorer and other programs that use the File Explorer window, such as My Computer and Network Locations.

Enabling this policy setting doesn't remove the Search button or affect any search features of Internet browser windows, such as the Internet Explorer window.

- If you disable or don't configure this policy setting, the Search button is available from the File Explorer toolbar.

This policy setting doesn't affect the Search items on the File Explorer context menu or on the Start menu. To remove Search from the Start menu, use the "Remove Search menu from Start menu" policy setting (in User Configuration\Administrative Templates\Start Menu and Taskbar). To hide all context menus, use the "Remove File Explorer's default context menu" policy setting.
<!-- NoShellSearchButton-Description-End -->

<!-- NoShellSearchButton-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoShellSearchButton-Editable-End -->

<!-- NoShellSearchButton-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoShellSearchButton-DFProperties-End -->

<!-- NoShellSearchButton-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoShellSearchButton |
| Friendly Name | Remove Search button from File Explorer |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoShellSearchButton |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoShellSearchButton-AdmxBacked-End -->

<!-- NoShellSearchButton-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoShellSearchButton-Examples-End -->

<!-- NoShellSearchButton-End -->

<!-- NoStrCmpLogical-Begin -->
## NoStrCmpLogical

<!-- NoStrCmpLogical-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoStrCmpLogical-Applicability-End -->

<!-- NoStrCmpLogical-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoStrCmpLogical
```

```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoStrCmpLogical
```
<!-- NoStrCmpLogical-OmaUri-End -->

<!-- NoStrCmpLogical-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to have file names sorted literally (as in Windows 2000 and earlier) rather than in numerical order.

- If you enable this policy setting, File Explorer will sort file names by each digit in a file name (for example, 111 < 22 < 3).

- If you disable or don't configure this policy setting, File Explorer will sort file names by increasing number value (for example, 3 < 22 < 111).
<!-- NoStrCmpLogical-Description-End -->

<!-- NoStrCmpLogical-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoStrCmpLogical-Editable-End -->

<!-- NoStrCmpLogical-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoStrCmpLogical-DFProperties-End -->

<!-- NoStrCmpLogical-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoStrCmpLogical |
| Friendly Name | Turn off numerical sorting in File Explorer |
| Location | Computer and User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoStrCmpLogical |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoStrCmpLogical-AdmxBacked-End -->

<!-- NoStrCmpLogical-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoStrCmpLogical-Examples-End -->

<!-- NoStrCmpLogical-End -->

<!-- NoViewContextMenu-Begin -->
## NoViewContextMenu

<!-- NoViewContextMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoViewContextMenu-Applicability-End -->

<!-- NoViewContextMenu-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoViewContextMenu
```
<!-- NoViewContextMenu-OmaUri-End -->

<!-- NoViewContextMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
Removes shortcut menus from the desktop and File Explorer. Shortcut menus appear when you right-click an item.

If you enable this setting, menus don't appear when you right-click the desktop or when you right-click the items in File Explorer. This setting doesn't prevent users from using other methods to issue commands available on the shortcut menus.
<!-- NoViewContextMenu-Description-End -->

<!-- NoViewContextMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoViewContextMenu-Editable-End -->

<!-- NoViewContextMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoViewContextMenu-DFProperties-End -->

<!-- NoViewContextMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoViewContextMenu |
| Friendly Name | Remove File Explorer's default context menu |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoViewContextMenu |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoViewContextMenu-AdmxBacked-End -->

<!-- NoViewContextMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoViewContextMenu-Examples-End -->

<!-- NoViewContextMenu-End -->

<!-- NoViewOnDrive-Begin -->
## NoViewOnDrive

<!-- NoViewOnDrive-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoViewOnDrive-Applicability-End -->

<!-- NoViewOnDrive-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoViewOnDrive
```
<!-- NoViewOnDrive-OmaUri-End -->

<!-- NoViewOnDrive-Description-Begin -->
<!-- Description-Source-ADMX -->
Prevents users from using My Computer to gain access to the content of selected drives.

If you enable this setting, users can browse the directory structure of the selected drives in My Computer or File Explorer, but they can't open folders and access the contents. Also, they can't use the Run dialog box or the Map Network Drive dialog box to view the directories on these drives.

To use this setting, select a drive or combination of drives from the drop-down list. To allow access to all drive directories, disable this setting or select the "Do not restrict drives" option from the drop-down list.

> [!NOTE]
> The icons representing the specified drives still appear in My Computer, but if users double-click the icons, a message appears explaining that a setting prevents the action.

Also, this setting doesn't prevent users from using programs to access local and network drives. And, it doesn't prevent them from using the Disk Management snap-in to view and change drive characteristics.

Also, see the "Hide these specified drives in My Computer" setting.
<!-- NoViewOnDrive-Description-End -->

<!-- NoViewOnDrive-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoViewOnDrive-Editable-End -->

<!-- NoViewOnDrive-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoViewOnDrive-DFProperties-End -->

<!-- NoViewOnDrive-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoViewOnDrive |
| Friendly Name | Prevent access to drives from My Computer |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoViewOnDrive-AdmxBacked-End -->

<!-- NoViewOnDrive-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoViewOnDrive-Examples-End -->

<!-- NoViewOnDrive-End -->

<!-- NoWindowsHotKeys-Begin -->
## NoWindowsHotKeys

<!-- NoWindowsHotKeys-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoWindowsHotKeys-Applicability-End -->

<!-- NoWindowsHotKeys-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoWindowsHotKeys
```
<!-- NoWindowsHotKeys-OmaUri-End -->

<!-- NoWindowsHotKeys-Description-Begin -->
<!-- Description-Source-ADMX -->
Turn off Windows Key hotkeys.

Keyboards with a Windows key provide users with shortcuts to common shell features. For example, pressing the keyboard sequence Windows+R opens the Run dialog box; pressing Windows+E starts File Explorer. By using this setting, you can disable these Windows Key hotkeys.

- If you enable this setting, the Windows Key hotkeys are unavailable.

- If you disable or don't configure this setting, the Windows Key hotkeys are available.
<!-- NoWindowsHotKeys-Description-End -->

<!-- NoWindowsHotKeys-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoWindowsHotKeys-Editable-End -->

<!-- NoWindowsHotKeys-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoWindowsHotKeys-DFProperties-End -->

<!-- NoWindowsHotKeys-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoWindowsHotKeys |
| Friendly Name | Turn off Windows Key hotkeys |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoWinKeys |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoWindowsHotKeys-AdmxBacked-End -->

<!-- NoWindowsHotKeys-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoWindowsHotKeys-Examples-End -->

<!-- NoWindowsHotKeys-End -->

<!-- NoWorkgroupContents-Begin -->
## NoWorkgroupContents

<!-- NoWorkgroupContents-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoWorkgroupContents-Applicability-End -->

<!-- NoWorkgroupContents-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/NoWorkgroupContents
```
<!-- NoWorkgroupContents-OmaUri-End -->

<!-- NoWorkgroupContents-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove computers in the user's workgroup and domain from lists of network resources in File Explorer and Network Locations.

- If you enable this policy setting, the system removes the "Computers Near Me" option and the icons representing nearby computers from Network Locations. This policy setting also removes these icons from the Map Network Drive browser.

- If you disable or don't configure this policy setting, computers in the user's workgroup and domain appear in lists of network resources in File Explorer and Network Locations.

This policy setting doesn't prevent users from connecting to computers in their workgroup or domain by other commonly used methods, such as typing the share name in the Run dialog box or the Map Network Drive dialog box.

To remove network computers from lists of network resources, use the "No Entire Network in Network Locations" policy setting.
<!-- NoWorkgroupContents-Description-End -->

<!-- NoWorkgroupContents-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoWorkgroupContents-Editable-End -->

<!-- NoWorkgroupContents-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoWorkgroupContents-DFProperties-End -->

<!-- NoWorkgroupContents-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoWorkgroupContents |
| Friendly Name | No Computers Near Me in Network Locations |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoComputersNearMe |
| ADMX File Name | WindowsExplorer.admx |
<!-- NoWorkgroupContents-AdmxBacked-End -->

<!-- NoWorkgroupContents-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoWorkgroupContents-Examples-End -->

<!-- NoWorkgroupContents-End -->

<!-- PlacesBar-Begin -->
## PlacesBar

<!-- PlacesBar-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PlacesBar-Applicability-End -->

<!-- PlacesBar-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/PlacesBar
```
<!-- PlacesBar-OmaUri-End -->

<!-- PlacesBar-Description-Begin -->
<!-- Description-Source-ADMX -->
Configures the list of items displayed in the Places Bar in the Windows File/Open dialog.

- If you enable this setting you can specify from 1 to 5 items to be displayed in the Places Bar.

The valid items you may display in the Places Bar are:

1) Shortcuts to a local folders -- (ex. C:\Windows)

2) Shortcuts to remote folders -- (\\server\share)

3) FTP folders.

4) web folders.

5) Common Shell folders.

The list of Common Shell Folders that may be specified:

Desktop, Recent Places, Documents, Pictures, Music, Recently Changed, Attachments and Saved Searches.

- If you disable or don't configure this setting the default list of items will be displayed in the Places Bar.

> [!NOTE]
> In Windows Vista, this policy setting applies only to applications that are using the Windows XP common dialog box style. This policy setting doesn't apply to the new Windows Vista common dialog box style.
<!-- PlacesBar-Description-End -->

<!-- PlacesBar-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PlacesBar-Editable-End -->

<!-- PlacesBar-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PlacesBar-DFProperties-End -->

<!-- PlacesBar-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PlacesBar |
| Friendly Name | Items displayed in Places Bar |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Common Open File Dialog |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\comdlg32\Placesbar |
| ADMX File Name | WindowsExplorer.admx |
<!-- PlacesBar-AdmxBacked-End -->

<!-- PlacesBar-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PlacesBar-Examples-End -->

<!-- PlacesBar-End -->

<!-- PromptRunasInstallNetPath-Begin -->
## PromptRunasInstallNetPath

<!-- PromptRunasInstallNetPath-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PromptRunasInstallNetPath-Applicability-End -->

<!-- PromptRunasInstallNetPath-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/PromptRunasInstallNetPath
```
<!-- PromptRunasInstallNetPath-OmaUri-End -->

<!-- PromptRunasInstallNetPath-Description-Begin -->
<!-- Description-Source-ADMX -->
Prompts users for alternate logon credentials during network-based installations.

This setting displays the "Install Program As Other User" dialog box even when a program is being installed from files on a network computer across a local area network connection.

If you disable this setting or don't configure it, this dialog box appears only when users are installing programs from local media.

The "Install Program as Other User" dialog box prompts the current user for the user name and password of an administrator. This setting allows administrators who have logged-on as regular users to install programs without logging off and logging on again using their administrator credentials.

If the dialog box doesn't appear, the installation proceeds with the current user's permissions. If these permissions aren't sufficient, the installation might fail, or it might complete but not include all features. Or, it might appear to complete successfully, but the installed program might not operate correctly.

> [!NOTE]
> If it's enabled, the "Do not request alternate credentials" setting takes precedence over this setting. When that setting is enabled, users aren't prompted for alternate logon credentials on any installation.
<!-- PromptRunasInstallNetPath-Description-End -->

<!-- PromptRunasInstallNetPath-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PromptRunasInstallNetPath-Editable-End -->

<!-- PromptRunasInstallNetPath-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PromptRunasInstallNetPath-DFProperties-End -->

<!-- PromptRunasInstallNetPath-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PromptRunasInstallNetPath |
| Friendly Name | Request credentials for network installations |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | PromptRunasInstallNetPath |
| ADMX File Name | WindowsExplorer.admx |
<!-- PromptRunasInstallNetPath-AdmxBacked-End -->

<!-- PromptRunasInstallNetPath-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PromptRunasInstallNetPath-Examples-End -->

<!-- PromptRunasInstallNetPath-End -->

<!-- RecycleBinSize-Begin -->
## RecycleBinSize

<!-- RecycleBinSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RecycleBinSize-Applicability-End -->

<!-- RecycleBinSize-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/RecycleBinSize
```
<!-- RecycleBinSize-OmaUri-End -->

<!-- RecycleBinSize-Description-Begin -->
<!-- Description-Source-ADMX -->
Limits the percentage of a volume's disk space that can be used to store deleted files.

- If you enable this setting, the user has a maximum amount of disk space that may be used for the Recycle Bin on their workstation.

- If you disable or don't configure this setting, users can change the total amount of disk space used by the Recycle Bin.

> [!NOTE]
> This setting is applied to all volumes.
<!-- RecycleBinSize-Description-End -->

<!-- RecycleBinSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RecycleBinSize-Editable-End -->

<!-- RecycleBinSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RecycleBinSize-DFProperties-End -->

<!-- RecycleBinSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RecycleBinSize |
| Friendly Name | Maximum allowed Recycle Bin size |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| ADMX File Name | WindowsExplorer.admx |
<!-- RecycleBinSize-AdmxBacked-End -->

<!-- RecycleBinSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RecycleBinSize-Examples-End -->

<!-- RecycleBinSize-End -->

<!-- ShellProtocolProtectedModeTitle_1-Begin -->
## ShellProtocolProtectedModeTitle_1

<!-- ShellProtocolProtectedModeTitle_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellProtocolProtectedModeTitle_1-Applicability-End -->

<!-- ShellProtocolProtectedModeTitle_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/ShellProtocolProtectedModeTitle_1
```
<!-- ShellProtocolProtectedModeTitle_1-OmaUri-End -->

<!-- ShellProtocolProtectedModeTitle_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the amount of functionality that the shell protocol can have. When using the full functionality of this protocol, applications can open folders and launch files. The protected mode reduces the functionality of this protocol allowing applications to only open a limited set of folders. Applications aren't able to open files with this protocol when it's in the protected mode. It's recommended to leave this protocol in the protected mode to increase the security of Windows.

- If you enable this policy setting the protocol is fully enabled, allowing the opening of folders and files.

- If you disable this policy setting the protocol is in the protected mode, allowing applications to only open a limited set of folders.

- If you don't configure this policy setting the protocol is in the protected mode, allowing applications to only open a limited set of folders.
<!-- ShellProtocolProtectedModeTitle_1-Description-End -->

<!-- ShellProtocolProtectedModeTitle_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellProtocolProtectedModeTitle_1-Editable-End -->

<!-- ShellProtocolProtectedModeTitle_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellProtocolProtectedModeTitle_1-DFProperties-End -->

<!-- ShellProtocolProtectedModeTitle_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellProtocolProtectedModeTitle_1 |
| Friendly Name | Turn off shell protocol protected mode |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | PreXPSP2ShellProtocolBehavior |
| ADMX File Name | WindowsExplorer.admx |
<!-- ShellProtocolProtectedModeTitle_1-AdmxBacked-End -->

<!-- ShellProtocolProtectedModeTitle_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellProtocolProtectedModeTitle_1-Examples-End -->

<!-- ShellProtocolProtectedModeTitle_1-End -->

<!-- ShellProtocolProtectedModeTitle_2-Begin -->
## ShellProtocolProtectedModeTitle_2

<!-- ShellProtocolProtectedModeTitle_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShellProtocolProtectedModeTitle_2-Applicability-End -->

<!-- ShellProtocolProtectedModeTitle_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/ShellProtocolProtectedModeTitle_2
```
<!-- ShellProtocolProtectedModeTitle_2-OmaUri-End -->

<!-- ShellProtocolProtectedModeTitle_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the amount of functionality that the shell protocol can have. When using the full functionality of this protocol, applications can open folders and launch files. The protected mode reduces the functionality of this protocol allowing applications to only open a limited set of folders. Applications aren't able to open files with this protocol when it's in the protected mode. It's recommended to leave this protocol in the protected mode to increase the security of Windows.

- If you enable this policy setting the protocol is fully enabled, allowing the opening of folders and files.

- If you disable this policy setting the protocol is in the protected mode, allowing applications to only open a limited set of folders.

- If you don't configure this policy setting the protocol is in the protected mode, allowing applications to only open a limited set of folders.
<!-- ShellProtocolProtectedModeTitle_2-Description-End -->

<!-- ShellProtocolProtectedModeTitle_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShellProtocolProtectedModeTitle_2-Editable-End -->

<!-- ShellProtocolProtectedModeTitle_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShellProtocolProtectedModeTitle_2-DFProperties-End -->

<!-- ShellProtocolProtectedModeTitle_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShellProtocolProtectedModeTitle_2 |
| Friendly Name | Turn off shell protocol protected mode |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | PreXPSP2ShellProtocolBehavior |
| ADMX File Name | WindowsExplorer.admx |
<!-- ShellProtocolProtectedModeTitle_2-AdmxBacked-End -->

<!-- ShellProtocolProtectedModeTitle_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShellProtocolProtectedModeTitle_2-Examples-End -->

<!-- ShellProtocolProtectedModeTitle_2-End -->

<!-- ShowHibernateOption-Begin -->
## ShowHibernateOption

<!-- ShowHibernateOption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShowHibernateOption-Applicability-End -->

<!-- ShowHibernateOption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/ShowHibernateOption
```
<!-- ShowHibernateOption-OmaUri-End -->

<!-- ShowHibernateOption-Description-Begin -->
<!-- Description-Source-ADMX -->
Shows or hides hibernate from the power options menu.

- If you enable this policy setting, the hibernate option will be shown in the Power Options menu (as long as it's supported by the machine's hardware).

- If you disable this policy setting, the hibernate option will never be shown in the Power Options menu.

- If you don't configure this policy setting, users will be able to choose whether they want hibernate to show through the Power Options Control Panel.
<!-- ShowHibernateOption-Description-End -->

<!-- ShowHibernateOption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowHibernateOption-Editable-End -->

<!-- ShowHibernateOption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowHibernateOption-DFProperties-End -->

<!-- ShowHibernateOption-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowHibernateOption |
| Friendly Name | Show hibernate in the power options menu |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | ShowHibernateOption |
| ADMX File Name | WindowsExplorer.admx |
<!-- ShowHibernateOption-AdmxBacked-End -->

<!-- ShowHibernateOption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowHibernateOption-Examples-End -->

<!-- ShowHibernateOption-End -->

<!-- ShowSleepOption-Begin -->
## ShowSleepOption

<!-- ShowSleepOption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShowSleepOption-Applicability-End -->

<!-- ShowSleepOption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/ShowSleepOption
```
<!-- ShowSleepOption-OmaUri-End -->

<!-- ShowSleepOption-Description-Begin -->
<!-- Description-Source-ADMX -->
Shows or hides sleep from the power options menu.

- If you enable this policy setting, the sleep option will be shown in the Power Options menu (as long as it's supported by the machine's hardware).

- If you disable this policy setting, the sleep option will never be shown in the Power Options menu.

- If you don't configure this policy setting, users will be able to choose whether they want sleep to show through the Power Options Control Panel.
<!-- ShowSleepOption-Description-End -->

<!-- ShowSleepOption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowSleepOption-Editable-End -->

<!-- ShowSleepOption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowSleepOption-DFProperties-End -->

<!-- ShowSleepOption-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowSleepOption |
| Friendly Name | Show sleep in the power options menu |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | ShowSleepOption |
| ADMX File Name | WindowsExplorer.admx |
<!-- ShowSleepOption-AdmxBacked-End -->

<!-- ShowSleepOption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowSleepOption-Examples-End -->

<!-- ShowSleepOption-End -->

<!-- TryHarderPinnedLibrary-Begin -->
## TryHarderPinnedLibrary

<!-- TryHarderPinnedLibrary-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TryHarderPinnedLibrary-Applicability-End -->

<!-- TryHarderPinnedLibrary-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/TryHarderPinnedLibrary
```
<!-- TryHarderPinnedLibrary-OmaUri-End -->

<!-- TryHarderPinnedLibrary-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows up to five Libraries or Search Connectors to be pinned to the "Search again" links and the Start menu links. The "Search again" links at the bottom of the Search Results view allow the user to reconduct a search but in a different location. To add a Library or Search Connector link, specify the path of the . Library-ms or .searchConnector-ms file in the "Location" text box (for example, "C:\sampleLibrary. Library-ms" for the Documents library, or "C:\sampleSearchConnector.searchConnector-ms" for a Search Connector). The pinned link will only work if this path is valid and the location contains the specified . Library-ms or .searchConnector-ms file.

You can add up to five additional links to the "Search again" links at the bottom of results returned in File Explorer after a search is executed. These links will be shared between Internet search sites and Search Connectors/Libraries. Search Connector/Library links take precedence over Internet search links.

The first several links will also be pinned to the Start menu. A total of four links can be included on the Start menu. The "See more results" link will be pinned first by default, unless it's disabled via Group Policy. The "Search the Internet" link is pinned second, if it's pinned via Group Policy (though this link is disabled by default). If a custom Internet search link is pinned using the "Custom Internet search provider" Group Policy, this link will be pinned third on the Start menu. The remaining link(s) will be shared between pinned Search Connectors/Libraries and pinned Internet/intranet search links. Search Connector/Library links take precedence over Internet/intranet search links.

- If you enable this policy setting, the specified Libraries or Search Connectors will appear in the "Search again" links and the Start menu links.

- If you disable or don't configure this policy setting, no Libraries or Search Connectors will appear in the "Search again" links or the Start menu links.
<!-- TryHarderPinnedLibrary-Description-End -->

<!-- TryHarderPinnedLibrary-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TryHarderPinnedLibrary-Editable-End -->

<!-- TryHarderPinnedLibrary-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TryHarderPinnedLibrary-DFProperties-End -->

<!-- TryHarderPinnedLibrary-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TryHarderPinnedLibrary |
| Friendly Name | Pin Libraries or Search Connectors to the "Search again" links and the Start menu |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | TryHarderPinnedLibrary |
| ADMX File Name | WindowsExplorer.admx |
<!-- TryHarderPinnedLibrary-AdmxBacked-End -->

<!-- TryHarderPinnedLibrary-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TryHarderPinnedLibrary-Examples-End -->

<!-- TryHarderPinnedLibrary-End -->

<!-- TryHarderPinnedOpenSearch-Begin -->
## TryHarderPinnedOpenSearch

<!-- TryHarderPinnedOpenSearch-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TryHarderPinnedOpenSearch-Applicability-End -->

<!-- TryHarderPinnedOpenSearch-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_WindowsExplorer/TryHarderPinnedOpenSearch
```
<!-- TryHarderPinnedOpenSearch-OmaUri-End -->

<!-- TryHarderPinnedOpenSearch-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to add Internet or intranet sites to the "Search again" links located at the bottom of search results in File Explorer and the Start menu links. The "Search again" links at the bottom of the Search Results view allow the user to reconduct a search but in a different location. The Internet search site will be searched with the text in the search box. To add an Internet search site, specify the URL of the search site in OpenSearch format with {searchTerms} for the query string (for example, `https://www.example.com/results.aspx?q={searchTerms}`).

You can add up to five additional links to the "Search again" links at the bottom of results returned in File Explorer after a search is executed. These links will be shared between Internet search sites and Search Connectors/Libraries. Search Connector/Library links take precedence over Internet search links.

The first several links will also be pinned to the Start menu. A total of four links can be pinned on the Start menu. The "See more results" link will be pinned first by default, unless it's disabled via Group Policy. The "Search the Internet" link is pinned second, if it's pinned via Group Policy (though this link is disabled by default). If a custom Internet search link is pinned using the "Custom Internet search provider" Group Policy, this link will be pinned third on the Start menu. The remaining link(s) will be shared between pinned Internet/intranet links and pinned Search Connectors/Libraries. Search Connector/Library links take precedence over Internet/intranet search links.

- If you enable this policy setting, the specified Internet sites will appear in the "Search again" links and the Start menu links.

- If you disable or don't configure this policy setting, no custom Internet search sites will be added to the "Search again" links or the Start menu links.
<!-- TryHarderPinnedOpenSearch-Description-End -->

<!-- TryHarderPinnedOpenSearch-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TryHarderPinnedOpenSearch-Editable-End -->

<!-- TryHarderPinnedOpenSearch-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TryHarderPinnedOpenSearch-DFProperties-End -->

<!-- TryHarderPinnedOpenSearch-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TryHarderPinnedOpenSearch |
| Friendly Name | Pin Internet search sites to the "Search again" links and the Start menu |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | TryHarderPinnedOpenSearch |
| ADMX File Name | WindowsExplorer.admx |
<!-- TryHarderPinnedOpenSearch-AdmxBacked-End -->

<!-- TryHarderPinnedOpenSearch-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TryHarderPinnedOpenSearch-Examples-End -->

<!-- TryHarderPinnedOpenSearch-End -->

<!-- ADMX_WindowsExplorer-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_WindowsExplorer-CspMoreInfo-End -->

<!-- ADMX_WindowsExplorer-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
