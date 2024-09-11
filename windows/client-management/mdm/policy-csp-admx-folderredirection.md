---
title: ADMX_FolderRedirection Policy CSP
description: Learn more about the ADMX_FolderRedirection Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_FolderRedirection-Begin -->
# Policy CSP - ADMX_FolderRedirection

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_FolderRedirection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_FolderRedirection-Editable-End -->

<!-- DisableFRAdminPin-Begin -->
## DisableFRAdminPin

<!-- DisableFRAdminPin-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableFRAdminPin-Applicability-End -->

<!-- DisableFRAdminPin-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FolderRedirection/DisableFRAdminPin
```
<!-- DisableFRAdminPin-OmaUri-End -->

<!-- DisableFRAdminPin-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether all redirected shell folders, such as Contacts, Documents, Desktop, Favorites, Music, Pictures, Videos, Start Menu, and AppData\Roaming, are available offline by default.

- If you enable this policy setting, users must manually select the files they wish to make available offline.

- If you disable or don't configure this policy setting, redirected shell folders are automatically made available offline. All subfolders within the redirected folders are also made available offline.

> [!NOTE]
> This policy setting doesn't prevent files from being automatically cached if the network share is configured for "Automatic Caching", nor does it affect the availability of the "Always available offline" menu option in the user interface.

> [!NOTE]
> Don't enable this policy setting if users will need access to their redirected files if the network or server holding the redirected files becomes unavailable.

> [!NOTE]
> If one or more valid folder GUIDs are specified in the policy setting "Do not automatically make specific redirected folders available offline", that setting will override the configured value of "Do not automatically make all redirected folders available offline".
<!-- DisableFRAdminPin-Description-End -->

<!-- DisableFRAdminPin-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableFRAdminPin-Editable-End -->

<!-- DisableFRAdminPin-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableFRAdminPin-DFProperties-End -->

<!-- DisableFRAdminPin-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableFRAdminPin |
| Friendly Name | Do not automatically make all redirected folders available offline |
| Location | User Configuration |
| Path | System > Folder Redirection |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache |
| Registry Value Name | DisableFRAdminPin |
| ADMX File Name | FolderRedirection.admx |
<!-- DisableFRAdminPin-AdmxBacked-End -->

<!-- DisableFRAdminPin-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableFRAdminPin-Examples-End -->

<!-- DisableFRAdminPin-End -->

<!-- DisableFRAdminPinByFolder-Begin -->
## DisableFRAdminPinByFolder

<!-- DisableFRAdminPinByFolder-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableFRAdminPinByFolder-Applicability-End -->

<!-- DisableFRAdminPinByFolder-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FolderRedirection/DisableFRAdminPinByFolder
```
<!-- DisableFRAdminPinByFolder-OmaUri-End -->

<!-- DisableFRAdminPinByFolder-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control whether individual redirected shell folders are available offline by default.

For the folders affected by this setting, users must manually select the files they wish to make available offline.

If you disable or don't configure this policy setting, all redirected shell folders are automatically made available offline. All subfolders within the redirected folders are also made available offline.

> [!NOTE]
> This policy setting doesn't prevent files from being automatically cached if the network share is configured for "Automatic Caching", nor does it affect the availability of the "Always available offline" menu option in the user interface.

> [!NOTE]
> The configuration of this policy for any folder will override the configured value of "Do not automatically make all redirected folders available offline".
<!-- DisableFRAdminPinByFolder-Description-End -->

<!-- DisableFRAdminPinByFolder-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableFRAdminPinByFolder-Editable-End -->

<!-- DisableFRAdminPinByFolder-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableFRAdminPinByFolder-DFProperties-End -->

<!-- DisableFRAdminPinByFolder-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableFRAdminPinByFolder |
| Friendly Name | Do not automatically make specific redirected folders available offline |
| Location | User Configuration |
| Path | System > Folder Redirection |
| Registry Key Name | Software\Policies\Microsoft\Windows\NetCache\DisableFRAdminPinByFolder |
| ADMX File Name | FolderRedirection.admx |
<!-- DisableFRAdminPinByFolder-AdmxBacked-End -->

<!-- DisableFRAdminPinByFolder-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableFRAdminPinByFolder-Examples-End -->

<!-- DisableFRAdminPinByFolder-End -->

<!-- FolderRedirectionEnableCacheRename-Begin -->
## FolderRedirectionEnableCacheRename

<!-- FolderRedirectionEnableCacheRename-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FolderRedirectionEnableCacheRename-Applicability-End -->

<!-- FolderRedirectionEnableCacheRename-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FolderRedirection/FolderRedirectionEnableCacheRename
```
<!-- FolderRedirectionEnableCacheRename-OmaUri-End -->

<!-- FolderRedirectionEnableCacheRename-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether the contents of redirected folders is copied from the old location to the new location or simply renamed in the Offline Files cache when a folder is redirected to a new location.

- If you enable this policy setting, when the path to a redirected folder is changed from one network location to another and Folder Redirection is configured to move the content to the new location, instead of copying the content to the new location, the cached content is renamed in the local cache and not copied to the new location. To use this policy setting, you must move or restore the server content to the new network location using a method that preserves the state of the files, including their timestamps, before updating the Folder Redirection location.

- If you disable or don't configure this policy setting, when the path to a redirected folder is changed and Folder Redirection is configured to move the content to the new location, Windows copies the contents of the local cache to the new network location, then deleted the content from the old network location.
<!-- FolderRedirectionEnableCacheRename-Description-End -->

<!-- FolderRedirectionEnableCacheRename-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FolderRedirectionEnableCacheRename-Editable-End -->

<!-- FolderRedirectionEnableCacheRename-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FolderRedirectionEnableCacheRename-DFProperties-End -->

<!-- FolderRedirectionEnableCacheRename-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FolderRedirectionEnableCacheRename |
| Friendly Name | Enable optimized move of contents in Offline Files cache on Folder Redirection server path change |
| Location | User Configuration |
| Path | System > Folder Redirection |
| Registry Key Name | Software\Policies\Microsoft\Windows\System\Fdeploy |
| Registry Value Name | FolderRedirectionEnableCacheRename |
| ADMX File Name | FolderRedirection.admx |
<!-- FolderRedirectionEnableCacheRename-AdmxBacked-End -->

<!-- FolderRedirectionEnableCacheRename-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FolderRedirectionEnableCacheRename-Examples-End -->

<!-- FolderRedirectionEnableCacheRename-End -->

<!-- LocalizeXPRelativePaths_1-Begin -->
## LocalizeXPRelativePaths_1

<!-- LocalizeXPRelativePaths_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LocalizeXPRelativePaths_1-Applicability-End -->

<!-- LocalizeXPRelativePaths_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FolderRedirection/LocalizeXPRelativePaths_1
```
<!-- LocalizeXPRelativePaths_1-OmaUri-End -->

<!-- LocalizeXPRelativePaths_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the administrator to define whether Folder Redirection should use localized names for the All Programs, Startup, My Music, My Pictures, and My Videos subfolders when redirecting the parent Start Menu and legacy My Documents folder respectively.

- If you enable this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use localized folder names for these subfolders when redirecting the Start Menu or legacy My Documents folder.

- If you disable or not configure this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use the standard English names for these subfolders when redirecting the Start Menu or legacy My Documents folder.

> [!NOTE]
> This policy is valid only on Windows Vista, Windows 7, Windows 8, and Windows Server 2012 when it processes a legacy redirection policy already deployed for these folders in your existing localized environment.
<!-- LocalizeXPRelativePaths_1-Description-End -->

<!-- LocalizeXPRelativePaths_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalizeXPRelativePaths_1-Editable-End -->

<!-- LocalizeXPRelativePaths_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalizeXPRelativePaths_1-DFProperties-End -->

<!-- LocalizeXPRelativePaths_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LocalizeXPRelativePaths_1 |
| Friendly Name | Use localized subfolder names when redirecting Start Menu and My Documents |
| Location | User Configuration |
| Path | System > Folder Redirection |
| Registry Key Name | Software\Policies\Microsoft\Windows\System\Fdeploy |
| Registry Value Name | LocalizeXPRelativePaths |
| ADMX File Name | FolderRedirection.admx |
<!-- LocalizeXPRelativePaths_1-AdmxBacked-End -->

<!-- LocalizeXPRelativePaths_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalizeXPRelativePaths_1-Examples-End -->

<!-- LocalizeXPRelativePaths_1-End -->

<!-- LocalizeXPRelativePaths_2-Begin -->
## LocalizeXPRelativePaths_2

<!-- LocalizeXPRelativePaths_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LocalizeXPRelativePaths_2-Applicability-End -->

<!-- LocalizeXPRelativePaths_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FolderRedirection/LocalizeXPRelativePaths_2
```
<!-- LocalizeXPRelativePaths_2-OmaUri-End -->

<!-- LocalizeXPRelativePaths_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the administrator to define whether Folder Redirection should use localized names for the All Programs, Startup, My Music, My Pictures, and My Videos subfolders when redirecting the parent Start Menu and legacy My Documents folder respectively.

- If you enable this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use localized folder names for these subfolders when redirecting the Start Menu or legacy My Documents folder.

- If you disable or not configure this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use the standard English names for these subfolders when redirecting the Start Menu or legacy My Documents folder.

> [!NOTE]
> This policy is valid only on Windows Vista, Windows 7, Windows 8, and Windows Server 2012 when it processes a legacy redirection policy already deployed for these folders in your existing localized environment.
<!-- LocalizeXPRelativePaths_2-Description-End -->

<!-- LocalizeXPRelativePaths_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalizeXPRelativePaths_2-Editable-End -->

<!-- LocalizeXPRelativePaths_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalizeXPRelativePaths_2-DFProperties-End -->

<!-- LocalizeXPRelativePaths_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LocalizeXPRelativePaths_2 |
| Friendly Name | Use localized subfolder names when redirecting Start Menu and My Documents |
| Location | Computer Configuration |
| Path | System > Folder Redirection |
| Registry Key Name | Software\Policies\Microsoft\Windows\System\Fdeploy |
| Registry Value Name | LocalizeXPRelativePaths |
| ADMX File Name | FolderRedirection.admx |
<!-- LocalizeXPRelativePaths_2-AdmxBacked-End -->

<!-- LocalizeXPRelativePaths_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalizeXPRelativePaths_2-Examples-End -->

<!-- LocalizeXPRelativePaths_2-End -->

<!-- PrimaryComputer_FR_1-Begin -->
## PrimaryComputer_FR_1

<!-- PrimaryComputer_FR_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PrimaryComputer_FR_1-Applicability-End -->

<!-- PrimaryComputer_FR_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FolderRedirection/PrimaryComputer_FR_1
```
<!-- PrimaryComputer_FR_1-OmaUri-End -->

<!-- PrimaryComputer_FR_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether folders are redirected on a user's primary computers only. This policy setting is useful to improve logon performance and to increase security for user data on computers where the user might not want to download private data, such as on a meeting room computer or on a computer in a remote office.

To designate a user's primary computers, an administrator must use management software or a script to add primary computer attributes to the user's account in Active Directory Domain Services (AD DS). This policy setting also requires the Windows Server 2012 version of the Active Directory schema to function.

- If you enable this policy setting and the user has redirected folders, such as the Documents and Pictures folders, the folders are redirected on the user's primary computer only.

- If you disable or don't configure this policy setting and the user has redirected folders, the folders are redirected on every computer that the user logs on to.

> [!NOTE]
> If you enable this policy setting in Computer Configuration and User Configuration, the Computer Configuration policy setting takes precedence.
<!-- PrimaryComputer_FR_1-Description-End -->

<!-- PrimaryComputer_FR_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PrimaryComputer_FR_1-Editable-End -->

<!-- PrimaryComputer_FR_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PrimaryComputer_FR_1-DFProperties-End -->

<!-- PrimaryComputer_FR_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PrimaryComputer_FR_1 |
| Friendly Name | Redirect folders on primary computers only |
| Location | User Configuration |
| Path | System > Folder Redirection |
| Registry Key Name | Software\Policies\Microsoft\Windows\System\Fdeploy |
| Registry Value Name | PrimaryComputerEnabledFR |
| ADMX File Name | FolderRedirection.admx |
<!-- PrimaryComputer_FR_1-AdmxBacked-End -->

<!-- PrimaryComputer_FR_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PrimaryComputer_FR_1-Examples-End -->

<!-- PrimaryComputer_FR_1-End -->

<!-- PrimaryComputer_FR_2-Begin -->
## PrimaryComputer_FR_2

<!-- PrimaryComputer_FR_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PrimaryComputer_FR_2-Applicability-End -->

<!-- PrimaryComputer_FR_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FolderRedirection/PrimaryComputer_FR_2
```
<!-- PrimaryComputer_FR_2-OmaUri-End -->

<!-- PrimaryComputer_FR_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether folders are redirected on a user's primary computers only. This policy setting is useful to improve logon performance and to increase security for user data on computers where the user might not want to download private data, such as on a meeting room computer or on a computer in a remote office.

To designate a user's primary computers, an administrator must use management software or a script to add primary computer attributes to the user's account in Active Directory Domain Services (AD DS). This policy setting also requires the Windows Server 2012 version of the Active Directory schema to function.

- If you enable this policy setting and the user has redirected folders, such as the Documents and Pictures folders, the folders are redirected on the user's primary computer only.

- If you disable or don't configure this policy setting and the user has redirected folders, the folders are redirected on every computer that the user logs on to.

> [!NOTE]
> If you enable this policy setting in Computer Configuration and User Configuration, the Computer Configuration policy setting takes precedence.
<!-- PrimaryComputer_FR_2-Description-End -->

<!-- PrimaryComputer_FR_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PrimaryComputer_FR_2-Editable-End -->

<!-- PrimaryComputer_FR_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PrimaryComputer_FR_2-DFProperties-End -->

<!-- PrimaryComputer_FR_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PrimaryComputer_FR_2 |
| Friendly Name | Redirect folders on primary computers only |
| Location | Computer Configuration |
| Path | System > Folder Redirection |
| Registry Key Name | Software\Policies\Microsoft\Windows\System\Fdeploy |
| Registry Value Name | PrimaryComputerEnabledFR |
| ADMX File Name | FolderRedirection.admx |
<!-- PrimaryComputer_FR_2-AdmxBacked-End -->

<!-- PrimaryComputer_FR_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PrimaryComputer_FR_2-Examples-End -->

<!-- PrimaryComputer_FR_2-End -->

<!-- ADMX_FolderRedirection-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_FolderRedirection-CspMoreInfo-End -->

<!-- ADMX_FolderRedirection-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
