---
title: ADMX_PreviousVersions Policy CSP
description: Learn more about the ADMX_PreviousVersions Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_PreviousVersions-Begin -->
# Policy CSP - ADMX_PreviousVersions

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_PreviousVersions-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_PreviousVersions-Editable-End -->

<!-- DisableBackupRestore_1-Begin -->
## DisableBackupRestore_1

<!-- DisableBackupRestore_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableBackupRestore_1-Applicability-End -->

<!-- DisableBackupRestore_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableBackupRestore_1
```
<!-- DisableBackupRestore_1-OmaUri-End -->

<!-- DisableBackupRestore_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a local file, in which the previous version is stored on a backup.

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a backup.

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a backup. If the Restore button is clicked, Windows attempts to restore the file from the backup media.

- If you don't configure this policy setting, it's disabled by default. The Restore button is active when the previous version is of a local file and stored on the backup.
<!-- DisableBackupRestore_1-Description-End -->

<!-- DisableBackupRestore_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableBackupRestore_1-Editable-End -->

<!-- DisableBackupRestore_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableBackupRestore_1-DFProperties-End -->

<!-- DisableBackupRestore_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableBackupRestore_1 |
| Friendly Name | Prevent restoring previous versions from backups |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableBackupRestore |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableBackupRestore_1-AdmxBacked-End -->

<!-- DisableBackupRestore_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableBackupRestore_1-Examples-End -->

<!-- DisableBackupRestore_1-End -->

<!-- DisableBackupRestore_2-Begin -->
## DisableBackupRestore_2

<!-- DisableBackupRestore_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableBackupRestore_2-Applicability-End -->

<!-- DisableBackupRestore_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableBackupRestore_2
```
<!-- DisableBackupRestore_2-OmaUri-End -->

<!-- DisableBackupRestore_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a local file, in which the previous version is stored on a backup.

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a backup.

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a backup. If the Restore button is clicked, Windows attempts to restore the file from the backup media.

- If you don't configure this policy setting, it's disabled by default. The Restore button is active when the previous version is of a local file and stored on the backup.
<!-- DisableBackupRestore_2-Description-End -->

<!-- DisableBackupRestore_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableBackupRestore_2-Editable-End -->

<!-- DisableBackupRestore_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableBackupRestore_2-DFProperties-End -->

<!-- DisableBackupRestore_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableBackupRestore_2 |
| Friendly Name | Prevent restoring previous versions from backups |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableBackupRestore |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableBackupRestore_2-AdmxBacked-End -->

<!-- DisableBackupRestore_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableBackupRestore_2-Examples-End -->

<!-- DisableBackupRestore_2-End -->

<!-- DisableLocalPage_1-Begin -->
## DisableLocalPage_1

<!-- DisableLocalPage_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLocalPage_1-Applicability-End -->

<!-- DisableLocalPage_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableLocalPage_1
```
<!-- DisableLocalPage_1-OmaUri-End -->

<!-- DisableLocalPage_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you hide the list of previous versions of files that are on local disks. The previous versions could come from the on-disk restore points or from backup media.

- If you enable this policy setting, users can't list or restore previous versions of files on local disks.

- If you disable this policy setting, users can't list and restore previous versions of files on local disks.

- If you don't configure this policy setting, it defaults to disabled.
<!-- DisableLocalPage_1-Description-End -->

<!-- DisableLocalPage_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLocalPage_1-Editable-End -->

<!-- DisableLocalPage_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLocalPage_1-DFProperties-End -->

<!-- DisableLocalPage_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLocalPage_1 |
| Friendly Name | Hide previous versions list for local files |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableLocalPage |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableLocalPage_1-AdmxBacked-End -->

<!-- DisableLocalPage_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLocalPage_1-Examples-End -->

<!-- DisableLocalPage_1-End -->

<!-- DisableLocalPage_2-Begin -->
## DisableLocalPage_2

<!-- DisableLocalPage_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLocalPage_2-Applicability-End -->

<!-- DisableLocalPage_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableLocalPage_2
```
<!-- DisableLocalPage_2-OmaUri-End -->

<!-- DisableLocalPage_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you hide the list of previous versions of files that are on local disks. The previous versions could come from the on-disk restore points or from backup media.

- If you enable this policy setting, users can't list or restore previous versions of files on local disks.

- If you disable this policy setting, users can't list and restore previous versions of files on local disks.

- If you don't configure this policy setting, it defaults to disabled.
<!-- DisableLocalPage_2-Description-End -->

<!-- DisableLocalPage_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLocalPage_2-Editable-End -->

<!-- DisableLocalPage_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLocalPage_2-DFProperties-End -->

<!-- DisableLocalPage_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLocalPage_2 |
| Friendly Name | Hide previous versions list for local files |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableLocalPage |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableLocalPage_2-AdmxBacked-End -->

<!-- DisableLocalPage_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLocalPage_2-Examples-End -->

<!-- DisableLocalPage_2-End -->

<!-- DisableLocalRestore_1-Begin -->
## DisableLocalRestore_1

<!-- DisableLocalRestore_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLocalRestore_1-Applicability-End -->

<!-- DisableLocalRestore_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableLocalRestore_1
```
<!-- DisableLocalRestore_1-OmaUri-End -->

<!-- DisableLocalRestore_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a local file.

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a local file.

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a local file. If the user clicks the Restore button, Windows attempts to restore the file from the local disk.

- If you don't configure this policy setting, it's disabled by default. The Restore button is active when the previous version is of a local file.
<!-- DisableLocalRestore_1-Description-End -->

<!-- DisableLocalRestore_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLocalRestore_1-Editable-End -->

<!-- DisableLocalRestore_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLocalRestore_1-DFProperties-End -->

<!-- DisableLocalRestore_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLocalRestore_1 |
| Friendly Name | Prevent restoring local previous versions |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableLocalRestore |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableLocalRestore_1-AdmxBacked-End -->

<!-- DisableLocalRestore_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLocalRestore_1-Examples-End -->

<!-- DisableLocalRestore_1-End -->

<!-- DisableLocalRestore_2-Begin -->
## DisableLocalRestore_2

<!-- DisableLocalRestore_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLocalRestore_2-Applicability-End -->

<!-- DisableLocalRestore_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableLocalRestore_2
```
<!-- DisableLocalRestore_2-OmaUri-End -->

<!-- DisableLocalRestore_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a local file.

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a local file.

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a local file. If the user clicks the Restore button, Windows attempts to restore the file from the local disk.

- If you don't configure this policy setting, it's disabled by default. The Restore button is active when the previous version is of a local file.
<!-- DisableLocalRestore_2-Description-End -->

<!-- DisableLocalRestore_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLocalRestore_2-Editable-End -->

<!-- DisableLocalRestore_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLocalRestore_2-DFProperties-End -->

<!-- DisableLocalRestore_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLocalRestore_2 |
| Friendly Name | Prevent restoring local previous versions |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableLocalRestore |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableLocalRestore_2-AdmxBacked-End -->

<!-- DisableLocalRestore_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLocalRestore_2-Examples-End -->

<!-- DisableLocalRestore_2-End -->

<!-- DisableRemotePage_1-Begin -->
## DisableRemotePage_1

<!-- DisableRemotePage_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRemotePage_1-Applicability-End -->

<!-- DisableRemotePage_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableRemotePage_1
```
<!-- DisableRemotePage_1-OmaUri-End -->

<!-- DisableRemotePage_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you hide the list of previous versions of files that are on file shares. The previous versions come from the on-disk restore points on the file share.

- If you enable this policy setting, users can't list or restore previous versions of files on file shares.

- If you disable this policy setting, users can list and restore previous versions of files on file shares.

- If you don't configure this policy setting, it's disabled by default.
<!-- DisableRemotePage_1-Description-End -->

<!-- DisableRemotePage_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableRemotePage_1-Editable-End -->

<!-- DisableRemotePage_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRemotePage_1-DFProperties-End -->

<!-- DisableRemotePage_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRemotePage_1 |
| Friendly Name | Hide previous versions list for remote files |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableRemotePage |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableRemotePage_1-AdmxBacked-End -->

<!-- DisableRemotePage_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRemotePage_1-Examples-End -->

<!-- DisableRemotePage_1-End -->

<!-- DisableRemotePage_2-Begin -->
## DisableRemotePage_2

<!-- DisableRemotePage_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRemotePage_2-Applicability-End -->

<!-- DisableRemotePage_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableRemotePage_2
```
<!-- DisableRemotePage_2-OmaUri-End -->

<!-- DisableRemotePage_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you hide the list of previous versions of files that are on file shares. The previous versions come from the on-disk restore points on the file share.

- If you enable this policy setting, users can't list or restore previous versions of files on file shares.

- If you disable this policy setting, users can list and restore previous versions of files on file shares.

- If you don't configure this policy setting, it's disabled by default.
<!-- DisableRemotePage_2-Description-End -->

<!-- DisableRemotePage_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableRemotePage_2-Editable-End -->

<!-- DisableRemotePage_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRemotePage_2-DFProperties-End -->

<!-- DisableRemotePage_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRemotePage_2 |
| Friendly Name | Hide previous versions list for remote files |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableRemotePage |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableRemotePage_2-AdmxBacked-End -->

<!-- DisableRemotePage_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRemotePage_2-Examples-End -->

<!-- DisableRemotePage_2-End -->

<!-- DisableRemoteRestore_1-Begin -->
## DisableRemoteRestore_1

<!-- DisableRemoteRestore_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRemoteRestore_1-Applicability-End -->

<!-- DisableRemoteRestore_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableRemoteRestore_1
```
<!-- DisableRemoteRestore_1-OmaUri-End -->

<!-- DisableRemoteRestore_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a file on a file share.

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a file on a file share.

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a file on a file share. If the user clicks the Restore button, Windows attempts to restore the file from the file share.

- If you don't configure this policy setting, it's disabled by default. The Restore button is active when the previous version is of a file on a file share.
<!-- DisableRemoteRestore_1-Description-End -->

<!-- DisableRemoteRestore_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableRemoteRestore_1-Editable-End -->

<!-- DisableRemoteRestore_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRemoteRestore_1-DFProperties-End -->

<!-- DisableRemoteRestore_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRemoteRestore_1 |
| Friendly Name | Prevent restoring remote previous versions |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableRemoteRestore |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableRemoteRestore_1-AdmxBacked-End -->

<!-- DisableRemoteRestore_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRemoteRestore_1-Examples-End -->

<!-- DisableRemoteRestore_1-End -->

<!-- DisableRemoteRestore_2-Begin -->
## DisableRemoteRestore_2

<!-- DisableRemoteRestore_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableRemoteRestore_2-Applicability-End -->

<!-- DisableRemoteRestore_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/DisableRemoteRestore_2
```
<!-- DisableRemoteRestore_2-OmaUri-End -->

<!-- DisableRemoteRestore_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a file on a file share.

- If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a file on a file share.

- If you disable this policy setting, the Restore button remains active for a previous version corresponding to a file on a file share. If the user clicks the Restore button, Windows attempts to restore the file from the file share.

- If you don't configure this policy setting, it's disabled by default. The Restore button is active when the previous version is of a file on a file share.
<!-- DisableRemoteRestore_2-Description-End -->

<!-- DisableRemoteRestore_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableRemoteRestore_2-Editable-End -->

<!-- DisableRemoteRestore_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableRemoteRestore_2-DFProperties-End -->

<!-- DisableRemoteRestore_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableRemoteRestore_2 |
| Friendly Name | Prevent restoring remote previous versions |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | DisableRemoteRestore |
| ADMX File Name | PreviousVersions.admx |
<!-- DisableRemoteRestore_2-AdmxBacked-End -->

<!-- DisableRemoteRestore_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableRemoteRestore_2-Examples-End -->

<!-- DisableRemoteRestore_2-End -->

<!-- HideBackupEntries_1-Begin -->
## HideBackupEntries_1

<!-- HideBackupEntries_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideBackupEntries_1-Applicability-End -->

<!-- HideBackupEntries_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/HideBackupEntries_1
```
<!-- HideBackupEntries_1-OmaUri-End -->

<!-- HideBackupEntries_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you hide entries in the list of previous versions of a file in which the previous version is located on backup media. Previous versions can come from the on-disk restore points or the backup media.

- If you enable this policy setting, users can't see any previous versions corresponding to backup copies, and can see only previous versions corresponding to on-disk restore points.

- If you disable this policy setting, users can see previous versions corresponding to backup copies as well as previous versions corresponding to on-disk restore points.

- If you don't configure this policy setting, it's disabled by default.
<!-- HideBackupEntries_1-Description-End -->

<!-- HideBackupEntries_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideBackupEntries_1-Editable-End -->

<!-- HideBackupEntries_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideBackupEntries_1-DFProperties-End -->

<!-- HideBackupEntries_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideBackupEntries_1 |
| Friendly Name | Hide previous versions of files on backup location |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | HideBackupEntries |
| ADMX File Name | PreviousVersions.admx |
<!-- HideBackupEntries_1-AdmxBacked-End -->

<!-- HideBackupEntries_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideBackupEntries_1-Examples-End -->

<!-- HideBackupEntries_1-End -->

<!-- HideBackupEntries_2-Begin -->
## HideBackupEntries_2

<!-- HideBackupEntries_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- HideBackupEntries_2-Applicability-End -->

<!-- HideBackupEntries_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PreviousVersions/HideBackupEntries_2
```
<!-- HideBackupEntries_2-OmaUri-End -->

<!-- HideBackupEntries_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you hide entries in the list of previous versions of a file in which the previous version is located on backup media. Previous versions can come from the on-disk restore points or the backup media.

- If you enable this policy setting, users can't see any previous versions corresponding to backup copies, and can see only previous versions corresponding to on-disk restore points.

- If you disable this policy setting, users can see previous versions corresponding to backup copies as well as previous versions corresponding to on-disk restore points.

- If you don't configure this policy setting, it's disabled by default.
<!-- HideBackupEntries_2-Description-End -->

<!-- HideBackupEntries_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- HideBackupEntries_2-Editable-End -->

<!-- HideBackupEntries_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- HideBackupEntries_2-DFProperties-End -->

<!-- HideBackupEntries_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | HideBackupEntries_2 |
| Friendly Name | Hide previous versions of files on backup location |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer > Previous Versions |
| Registry Key Name | Software\Policies\Microsoft\PreviousVersions |
| Registry Value Name | HideBackupEntries |
| ADMX File Name | PreviousVersions.admx |
<!-- HideBackupEntries_2-AdmxBacked-End -->

<!-- HideBackupEntries_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- HideBackupEntries_2-Examples-End -->

<!-- HideBackupEntries_2-End -->

<!-- ADMX_PreviousVersions-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_PreviousVersions-CspMoreInfo-End -->

<!-- ADMX_PreviousVersions-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
