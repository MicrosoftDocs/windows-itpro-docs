---
title: Storage Policy CSP
description: Learn more about the Storage Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Storage-Begin -->
# Policy CSP - Storage

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- Storage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Storage-Editable-End -->

<!-- AllowDiskHealthModelUpdates-Begin -->
## AllowDiskHealthModelUpdates

<!-- AllowDiskHealthModelUpdates-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- AllowDiskHealthModelUpdates-Applicability-End -->

<!-- AllowDiskHealthModelUpdates-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/AllowDiskHealthModelUpdates
```
<!-- AllowDiskHealthModelUpdates-OmaUri-End -->

<!-- AllowDiskHealthModelUpdates-Description-Begin -->
<!-- Description-Source-ADMX -->
Allows downloading new updates to ML Model parameters for predicting storage disk failure.

Enabled:

Updates would be downloaded for the Disk Failure Prediction Failure Model.

Disabled:

Updates wouldn't be downloaded for the Disk Failure Prediction Failure Model.

Not configured:

Same as Enabled.
<!-- AllowDiskHealthModelUpdates-Description-End -->

<!-- AllowDiskHealthModelUpdates-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowDiskHealthModelUpdates-Editable-End -->

<!-- AllowDiskHealthModelUpdates-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowDiskHealthModelUpdates-DFProperties-End -->

<!-- AllowDiskHealthModelUpdates-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Don't allow. |
| 1 (Default) | Allow. |
<!-- AllowDiskHealthModelUpdates-AllowedValues-End -->

<!-- AllowDiskHealthModelUpdates-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SH_AllowDiskHealthModelUpdates |
| Friendly Name | Allow downloading updates to the Disk Failure Prediction Model |
| Location | Computer Configuration |
| Path | System > Storage Health |
| Registry Key Name | Software\Policies\Microsoft\Windows\StorageHealth |
| Registry Value Name | AllowDiskHealthModelUpdates |
| ADMX File Name | StorageHealth.admx |
<!-- AllowDiskHealthModelUpdates-GpMapping-End -->

<!-- AllowDiskHealthModelUpdates-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDiskHealthModelUpdates-Examples-End -->

<!-- AllowDiskHealthModelUpdates-End -->

<!-- AllowStorageSenseGlobal-Begin -->
## AllowStorageSenseGlobal

<!-- AllowStorageSenseGlobal-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- AllowStorageSenseGlobal-Applicability-End -->

<!-- AllowStorageSenseGlobal-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/AllowStorageSenseGlobal
```
<!-- AllowStorageSenseGlobal-OmaUri-End -->

<!-- AllowStorageSenseGlobal-Description-Begin -->
<!-- Description-Source-ADMX -->
Storage Sense can automatically clean some of the user's files to free up disk space. By default, Storage Sense is automatically turned on when the machine runs into low disk space and is set to run whenever the machine runs into storage pressure. This cadence can be changed in Storage settings or set with the "Configure Storage Sense cadence" group policy.

Enabled:

Storage Sense is turned on for the machine, with the default cadence as 'during low free disk space'. Users can't disable Storage Sense, but they can adjust the cadence (unless you also configure the "Configure Storage Sense cadence" group policy).

Disabled:

Storage Sense is turned off the machine. Users can't enable Storage Sense.

Not Configured:

By default, Storage Sense is turned off until the user runs into low disk space or the user enables it manually. Users can configure this setting in Storage settings.
<!-- AllowStorageSenseGlobal-Description-End -->

<!-- AllowStorageSenseGlobal-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowStorageSenseGlobal-Editable-End -->

<!-- AllowStorageSenseGlobal-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowStorageSenseGlobal-DFProperties-End -->

<!-- AllowStorageSenseGlobal-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Allow. |
| 0 (Default) | Block. |
<!-- AllowStorageSenseGlobal-AllowedValues-End -->

<!-- AllowStorageSenseGlobal-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SS_AllowStorageSenseGlobal |
| Friendly Name | Allow Storage Sense |
| Location | Computer Configuration |
| Path | System > Storage Sense |
| Registry Key Name | Software\Policies\Microsoft\Windows\StorageSense |
| Registry Value Name | AllowStorageSenseGlobal |
| ADMX File Name | StorageSense.admx |
<!-- AllowStorageSenseGlobal-GpMapping-End -->

<!-- AllowStorageSenseGlobal-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowStorageSenseGlobal-Examples-End -->

<!-- AllowStorageSenseGlobal-End -->

<!-- AllowStorageSenseTemporaryFilesCleanup-Begin -->
## AllowStorageSenseTemporaryFilesCleanup

<!-- AllowStorageSenseTemporaryFilesCleanup-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- AllowStorageSenseTemporaryFilesCleanup-Applicability-End -->

<!-- AllowStorageSenseTemporaryFilesCleanup-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/AllowStorageSenseTemporaryFilesCleanup
```
<!-- AllowStorageSenseTemporaryFilesCleanup-OmaUri-End -->

<!-- AllowStorageSenseTemporaryFilesCleanup-Description-Begin -->
<!-- Description-Source-ADMX -->
When Storage Sense runs, it can delete the user's temporary files that aren't in use.

If the group policy "Allow Storage Sense" is disabled, then this policy doesn't have any effect.

Enabled:

Storage Sense will delete the user's temporary files that aren't in use. Users can't disable this setting in Storage settings.

Disabled:

Storage Sense won't delete the user's temporary files. Users can't enable this setting in Storage settings.

Not Configured:

By default, Storage Sense will delete the user's temporary files. Users can configure this setting in Storage settings.
<!-- AllowStorageSenseTemporaryFilesCleanup-Description-End -->

<!-- AllowStorageSenseTemporaryFilesCleanup-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowStorageSenseTemporaryFilesCleanup-Editable-End -->

<!-- AllowStorageSenseTemporaryFilesCleanup-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowStorageSenseTemporaryFilesCleanup-DFProperties-End -->

<!-- AllowStorageSenseTemporaryFilesCleanup-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Allow. |
| 0 | Block. |
<!-- AllowStorageSenseTemporaryFilesCleanup-AllowedValues-End -->

<!-- AllowStorageSenseTemporaryFilesCleanup-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SS_AllowStorageSenseTemporaryFilesCleanup |
| Friendly Name | Allow Storage Sense Temporary Files cleanup |
| Location | Computer Configuration |
| Path | System > Storage Sense |
| Registry Key Name | Software\Policies\Microsoft\Windows\StorageSense |
| Registry Value Name | AllowStorageSenseTemporaryFilesCleanup |
| ADMX File Name | StorageSense.admx |
<!-- AllowStorageSenseTemporaryFilesCleanup-GpMapping-End -->

<!-- AllowStorageSenseTemporaryFilesCleanup-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowStorageSenseTemporaryFilesCleanup-Examples-End -->

<!-- AllowStorageSenseTemporaryFilesCleanup-End -->

<!-- ConfigStorageSenseCloudContentDehydrationThreshold-Begin -->
## ConfigStorageSenseCloudContentDehydrationThreshold

<!-- ConfigStorageSenseCloudContentDehydrationThreshold-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigStorageSenseCloudContentDehydrationThreshold-Applicability-End -->

<!-- ConfigStorageSenseCloudContentDehydrationThreshold-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/ConfigStorageSenseCloudContentDehydrationThreshold
```
<!-- ConfigStorageSenseCloudContentDehydrationThreshold-OmaUri-End -->

<!-- ConfigStorageSenseCloudContentDehydrationThreshold-Description-Begin -->
<!-- Description-Source-ADMX -->
When Storage Sense runs, it can dehydrate cloud-backed content that hasn't been opened in a certain amount of days.

If the group policy "Allow Storage Sense" is disabled, then this policy doesn't have any effect.

Enabled:

You must provide the minimum number of days a cloud-backed file can remain unopened before Storage Sense dehydrates it from the sync root. Supported values are: 0 - 365.

If you set this value to zero, Storage Sense won't dehydrate any cloud-backed content. The default value is 0, or never dehydrating cloud-backed content.

Disabled or Not Configured:

By default, Storage Sense won't dehydrate any cloud-backed content. Users can configure this setting in Storage settings.
<!-- ConfigStorageSenseCloudContentDehydrationThreshold-Description-End -->

<!-- ConfigStorageSenseCloudContentDehydrationThreshold-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigStorageSenseCloudContentDehydrationThreshold-Editable-End -->

<!-- ConfigStorageSenseCloudContentDehydrationThreshold-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-365]` |
| Default Value  | 0 |
<!-- ConfigStorageSenseCloudContentDehydrationThreshold-DFProperties-End -->

<!-- ConfigStorageSenseCloudContentDehydrationThreshold-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SS_ConfigStorageSenseCloudContentDehydrationThreshold |
| Friendly Name | Configure Storage Sense Cloud Content dehydration threshold |
| Location | Computer Configuration |
| Path | System > Storage Sense |
| Registry Key Name | Software\Policies\Microsoft\Windows\StorageSense |
| ADMX File Name | StorageSense.admx |
<!-- ConfigStorageSenseCloudContentDehydrationThreshold-GpMapping-End -->

<!-- ConfigStorageSenseCloudContentDehydrationThreshold-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigStorageSenseCloudContentDehydrationThreshold-Examples-End -->

<!-- ConfigStorageSenseCloudContentDehydrationThreshold-End -->

<!-- ConfigStorageSenseDownloadsCleanupThreshold-Begin -->
## ConfigStorageSenseDownloadsCleanupThreshold

<!-- ConfigStorageSenseDownloadsCleanupThreshold-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigStorageSenseDownloadsCleanupThreshold-Applicability-End -->

<!-- ConfigStorageSenseDownloadsCleanupThreshold-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/ConfigStorageSenseDownloadsCleanupThreshold
```
<!-- ConfigStorageSenseDownloadsCleanupThreshold-OmaUri-End -->

<!-- ConfigStorageSenseDownloadsCleanupThreshold-Description-Begin -->
<!-- Description-Source-ADMX -->
When Storage Sense runs, it can delete files in the user's Downloads folder if they haven't been opened for more than a certain number of days.

If the group policy "Allow Storage Sense" is disabled, then this policy doesn't have any effect.

Enabled:

You must provide the minimum number of days a file can remain unopened before Storage Sense deletes it from Downloads folder. Supported values are: 0 - 365.

If you set this value to zero, Storage Sense won't delete files in the user's Downloads folder. The default is 0, or never deleting files in the Downloads folder.

Disabled or Not Configured:

By default, Storage Sense won't delete files in the user's Downloads folder. Users can configure this setting in Storage settings.
<!-- ConfigStorageSenseDownloadsCleanupThreshold-Description-End -->

<!-- ConfigStorageSenseDownloadsCleanupThreshold-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigStorageSenseDownloadsCleanupThreshold-Editable-End -->

<!-- ConfigStorageSenseDownloadsCleanupThreshold-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-365]` |
| Default Value  | 0 |
<!-- ConfigStorageSenseDownloadsCleanupThreshold-DFProperties-End -->

<!-- ConfigStorageSenseDownloadsCleanupThreshold-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SS_ConfigStorageSenseDownloadsCleanupThreshold |
| Friendly Name | Configure Storage Storage Downloads cleanup threshold |
| Location | Computer Configuration |
| Path | System > Storage Sense |
| Registry Key Name | Software\Policies\Microsoft\Windows\StorageSense |
| ADMX File Name | StorageSense.admx |
<!-- ConfigStorageSenseDownloadsCleanupThreshold-GpMapping-End -->

<!-- ConfigStorageSenseDownloadsCleanupThreshold-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigStorageSenseDownloadsCleanupThreshold-Examples-End -->

<!-- ConfigStorageSenseDownloadsCleanupThreshold-End -->

<!-- ConfigStorageSenseGlobalCadence-Begin -->
## ConfigStorageSenseGlobalCadence

<!-- ConfigStorageSenseGlobalCadence-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigStorageSenseGlobalCadence-Applicability-End -->

<!-- ConfigStorageSenseGlobalCadence-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/ConfigStorageSenseGlobalCadence
```
<!-- ConfigStorageSenseGlobalCadence-OmaUri-End -->

<!-- ConfigStorageSenseGlobalCadence-Description-Begin -->
<!-- Description-Source-ADMX -->
Storage Sense can automatically clean some of the user's files to free up disk space.

If the group policy "Allow Storage Sense" is disabled, then this policy doesn't have any effect.

Enabled:

You must provide the desired Storage Sense cadence. Supported options are: daily, weekly, monthly, and during low free disk space. The default is 0 (during low free disk space).

Disabled or Not Configured:

By default, the Storage Sense cadence is set to "during low free disk space". Users can configure this setting in Storage settings.
<!-- ConfigStorageSenseGlobalCadence-Description-End -->

<!-- ConfigStorageSenseGlobalCadence-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

Use the following integer values for the supported options:

- `0`: During low free disk space (default)
- `1`: Daily
- `7`: Weekly
- `30`: Monthly
<!-- ConfigStorageSenseGlobalCadence-Editable-End -->

<!-- ConfigStorageSenseGlobalCadence-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 0 |
<!-- ConfigStorageSenseGlobalCadence-DFProperties-End -->

<!-- ConfigStorageSenseGlobalCadence-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SS_ConfigStorageSenseGlobalCadence |
| Friendly Name | Configure Storage Sense cadence |
| Location | Computer Configuration |
| Path | System > Storage Sense |
| Registry Key Name | Software\Policies\Microsoft\Windows\StorageSense |
| ADMX File Name | StorageSense.admx |
<!-- ConfigStorageSenseGlobalCadence-GpMapping-End -->

<!-- ConfigStorageSenseGlobalCadence-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigStorageSenseGlobalCadence-Examples-End -->

<!-- ConfigStorageSenseGlobalCadence-End -->

<!-- ConfigStorageSenseRecycleBinCleanupThreshold-Begin -->
## ConfigStorageSenseRecycleBinCleanupThreshold

<!-- ConfigStorageSenseRecycleBinCleanupThreshold-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigStorageSenseRecycleBinCleanupThreshold-Applicability-End -->

<!-- ConfigStorageSenseRecycleBinCleanupThreshold-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/ConfigStorageSenseRecycleBinCleanupThreshold
```
<!-- ConfigStorageSenseRecycleBinCleanupThreshold-OmaUri-End -->

<!-- ConfigStorageSenseRecycleBinCleanupThreshold-Description-Begin -->
<!-- Description-Source-ADMX -->
When Storage Sense runs, it can delete files in the user's Recycle Bin if they've been there for over a certain amount of days.

If the group policy "Allow Storage Sense" is disabled, then this policy doesn't have any effect.

Enabled:

You must provide the minimum age threshold (in days) of a file in the Recycle Bin before Storage Sense will delete it. Supported values are: 0 - 365.

If you set this value to zero, Storage Sense won't delete files in the user's Recycle Bin. The default is 30 days.

Disabled or Not Configured:

By default, Storage Sense will delete files in the user's Recycle Bin that have been there for over 30 days. Users can configure this setting in Storage settings.
<!-- ConfigStorageSenseRecycleBinCleanupThreshold-Description-End -->

<!-- ConfigStorageSenseRecycleBinCleanupThreshold-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigStorageSenseRecycleBinCleanupThreshold-Editable-End -->

<!-- ConfigStorageSenseRecycleBinCleanupThreshold-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-365]` |
| Default Value  | 30 |
<!-- ConfigStorageSenseRecycleBinCleanupThreshold-DFProperties-End -->

<!-- ConfigStorageSenseRecycleBinCleanupThreshold-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | SS_ConfigStorageSenseRecycleBinCleanupThreshold |
| Friendly Name | Configure Storage Sense Recycle Bin cleanup threshold |
| Location | Computer Configuration |
| Path | System > Storage Sense |
| Registry Key Name | Software\Policies\Microsoft\Windows\StorageSense |
| ADMX File Name | StorageSense.admx |
<!-- ConfigStorageSenseRecycleBinCleanupThreshold-GpMapping-End -->

<!-- ConfigStorageSenseRecycleBinCleanupThreshold-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigStorageSenseRecycleBinCleanupThreshold-Examples-End -->

<!-- ConfigStorageSenseRecycleBinCleanupThreshold-End -->

<!-- EnhancedStorageDevices-Begin -->
## EnhancedStorageDevices

<!-- EnhancedStorageDevices-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- EnhancedStorageDevices-Applicability-End -->

<!-- EnhancedStorageDevices-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/EnhancedStorageDevices
```
<!-- EnhancedStorageDevices-OmaUri-End -->

<!-- EnhancedStorageDevices-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures whether or not Windows will activate an Enhanced Storage device.

- If you enable this policy setting, Windows won't activate unactivated Enhanced Storage devices.

- If you disable or don't configure this policy setting, Windows will activate unactivated Enhanced Storage devices.
<!-- EnhancedStorageDevices-Description-End -->

<!-- EnhancedStorageDevices-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnhancedStorageDevices-Editable-End -->

<!-- EnhancedStorageDevices-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnhancedStorageDevices-DFProperties-End -->

<!-- EnhancedStorageDevices-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TCGSecurityActivationDisabled |
| Friendly Name | Do not allow Windows to activate Enhanced Storage devices |
| Location | Computer Configuration |
| Path | System > Enhanced Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\EnhancedStorageDevices |
| Registry Value Name | TCGSecurityActivationDisabled |
| ADMX File Name | EnhancedStorage.admx |
<!-- EnhancedStorageDevices-AdmxBacked-End -->

<!-- EnhancedStorageDevices-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnhancedStorageDevices-Examples-End -->

<!-- EnhancedStorageDevices-End -->

<!-- RemovableDiskDenyWriteAccess-Begin -->
## RemovableDiskDenyWriteAccess

<!-- RemovableDiskDenyWriteAccess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- RemovableDiskDenyWriteAccess-Applicability-End -->

<!-- RemovableDiskDenyWriteAccess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/RemovableDiskDenyWriteAccess
```
<!-- RemovableDiskDenyWriteAccess-OmaUri-End -->

<!-- RemovableDiskDenyWriteAccess-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to removable disks.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

> [!NOTE]
> To require that users write data to BitLocker-protected storage, enable the policy setting "Deny write access to drives not protected by BitLocker," which is located in "Computer Configuration\Administrative Templates\Windows Components\BitLocker Drive Encryption\Removable Data Drives".
<!-- RemovableDiskDenyWriteAccess-Description-End -->

<!-- RemovableDiskDenyWriteAccess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemovableDiskDenyWriteAccess-Editable-End -->

<!-- RemovableDiskDenyWriteAccess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- RemovableDiskDenyWriteAccess-DFProperties-End -->

<!-- RemovableDiskDenyWriteAccess-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Disabled. |
| 1 | Enabled. |
<!-- RemovableDiskDenyWriteAccess-AllowedValues-End -->

<!-- RemovableDiskDenyWriteAccess-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | RemovableDisks_DenyWrite_Access_2 |
| Friendly Name | Removable Disks: Deny write access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630d-b6bf-11d0-94f2-00a0c91efb8b} |
| ADMX File Name | RemovableStorage.admx |
<!-- RemovableDiskDenyWriteAccess-GpMapping-End -->

<!-- RemovableDiskDenyWriteAccess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemovableDiskDenyWriteAccess-Examples-End -->

<!-- RemovableDiskDenyWriteAccess-End -->

<!-- WPDDevicesDenyReadAccessPerDevice-Begin -->
## WPDDevicesDenyReadAccessPerDevice

<!-- WPDDevicesDenyReadAccessPerDevice-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WPDDevicesDenyReadAccessPerDevice-Applicability-End -->

<!-- WPDDevicesDenyReadAccessPerDevice-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/WPDDevicesDenyReadAccessPerDevice
```
<!-- WPDDevicesDenyReadAccessPerDevice-OmaUri-End -->

<!-- WPDDevicesDenyReadAccessPerDevice-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- WPDDevicesDenyReadAccessPerDevice-Description-End -->

<!-- WPDDevicesDenyReadAccessPerDevice-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy does enforcement over the following protocols that are used by most portable devices, for example, mobile/IOS/Android:

- Picture Transfer Protocol (PTP) over USB, IP, and Bluetooth.
- Media Transfer Protocol (MTP) over USB, IP, and Bluetooth.
- Mass Storage Class (MSC) over USB.
<!-- version note from old article, which doesn't align with version applicability above
To enable this policy, the minimum OS requirement is Windows 10, version 1809 and [KB5003217 (OS Build 17763.1971)](https://support.microsoft.com/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46). -->

>[!NOTE]
> WPD policy isn't a reliable policy for removable storage. You can't use WPD policy to entirely block removable storage. For example, if a user inserts a USB drive to a device with a WPD policy, the policy may block PTP or MTP, but the user can still browse the drive in Windows Explorer.
<!-- WPDDevicesDenyReadAccessPerDevice-Editable-End -->

<!-- WPDDevicesDenyReadAccessPerDevice-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WPDDevicesDenyReadAccessPerDevice-DFProperties-End -->

<!-- WPDDevicesDenyReadAccessPerDevice-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WPDDevices_DenyRead_Access_2 |
| Friendly Name | WPD Devices: Deny read access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{6AC27878-A6FA-4155-BA85-F98F491D4F33} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- WPDDevicesDenyReadAccessPerDevice-AdmxBacked-End -->

<!-- WPDDevicesDenyReadAccessPerDevice-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WPDDevicesDenyReadAccessPerDevice-Examples-End -->

<!-- WPDDevicesDenyReadAccessPerDevice-End -->

<!-- WPDDevicesDenyReadAccessPerUser-Begin -->
## WPDDevicesDenyReadAccessPerUser

<!-- WPDDevicesDenyReadAccessPerUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WPDDevicesDenyReadAccessPerUser-Applicability-End -->

<!-- WPDDevicesDenyReadAccessPerUser-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Storage/WPDDevicesDenyReadAccessPerUser
```
<!-- WPDDevicesDenyReadAccessPerUser-OmaUri-End -->

<!-- WPDDevicesDenyReadAccessPerUser-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- WPDDevicesDenyReadAccessPerUser-Description-End -->

<!-- WPDDevicesDenyReadAccessPerUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy does enforcement over the following protocols that are used by most portable devices, for example, mobile/IOS/Android:

- Picture Transfer Protocol (PTP) over USB, IP, and Bluetooth.
- Media Transfer Protocol (MTP) over USB, IP, and Bluetooth.
- Mass Storage Class (MSC) over USB.
<!-- version note from old article, which doesn't align with version applicability above
To enable this policy, the minimum OS requirement is Windows 10, version 1809 and [KB5003217 (OS Build 17763.1971)](https://support.microsoft.com/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46). -->

>[!NOTE]
> WPD policy isn't a reliable policy for removable storage. You can't use WPD policy to entirely block removable storage. For example, if a user inserts a USB drive to a device with a WPD policy, the policy may block PTP or MTP, but the user can still browse the drive in Windows Explorer.
<!-- WPDDevicesDenyReadAccessPerUser-Editable-End -->

<!-- WPDDevicesDenyReadAccessPerUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WPDDevicesDenyReadAccessPerUser-DFProperties-End -->

<!-- WPDDevicesDenyReadAccessPerUser-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WPDDevices_DenyRead_Access_1 |
| Friendly Name | WPD Devices: Deny read access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{6AC27878-A6FA-4155-BA85-F98F491D4F33} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- WPDDevicesDenyReadAccessPerUser-AdmxBacked-End -->

<!-- WPDDevicesDenyReadAccessPerUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WPDDevicesDenyReadAccessPerUser-Examples-End -->

<!-- WPDDevicesDenyReadAccessPerUser-End -->

<!-- WPDDevicesDenyWriteAccessPerDevice-Begin -->
## WPDDevicesDenyWriteAccessPerDevice

<!-- WPDDevicesDenyWriteAccessPerDevice-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WPDDevicesDenyWriteAccessPerDevice-Applicability-End -->

<!-- WPDDevicesDenyWriteAccessPerDevice-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Storage/WPDDevicesDenyWriteAccessPerDevice
```
<!-- WPDDevicesDenyWriteAccessPerDevice-OmaUri-End -->

<!-- WPDDevicesDenyWriteAccessPerDevice-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- WPDDevicesDenyWriteAccessPerDevice-Description-End -->

<!-- WPDDevicesDenyWriteAccessPerDevice-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy does enforcement over the following protocols that are used by most portable devices, for example, mobile/IOS/Android:

- Picture Transfer Protocol (PTP) over USB, IP, and Bluetooth.
- Media Transfer Protocol (MTP) over USB, IP, and Bluetooth.
- Mass Storage Class (MSC) over USB.
<!-- version note from old article, which doesn't align with version applicability above
To enable this policy, the minimum OS requirement is Windows 10, version 1809 and [KB5003217 (OS Build 17763.1971)](https://support.microsoft.com/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46). -->

>[!NOTE]
> WPD policy isn't a reliable policy for removable storage. You can't use WPD policy to entirely block removable storage. For example, if a user inserts a USB drive to a device with a WPD policy, the policy may block PTP or MTP, but the user can still browse the drive in Windows Explorer.
<!-- WPDDevicesDenyWriteAccessPerDevice-Editable-End -->

<!-- WPDDevicesDenyWriteAccessPerDevice-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WPDDevicesDenyWriteAccessPerDevice-DFProperties-End -->

<!-- WPDDevicesDenyWriteAccessPerDevice-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WPDDevices_DenyWrite_Access_2 |
| Friendly Name | WPD Devices: Deny write access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{6AC27878-A6FA-4155-BA85-F98F491D4F33} |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- WPDDevicesDenyWriteAccessPerDevice-AdmxBacked-End -->

<!-- WPDDevicesDenyWriteAccessPerDevice-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WPDDevicesDenyWriteAccessPerDevice-Examples-End -->

<!-- WPDDevicesDenyWriteAccessPerDevice-End -->

<!-- WPDDevicesDenyWriteAccessPerUser-Begin -->
## WPDDevicesDenyWriteAccessPerUser

<!-- WPDDevicesDenyWriteAccessPerUser-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WPDDevicesDenyWriteAccessPerUser-Applicability-End -->

<!-- WPDDevicesDenyWriteAccessPerUser-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/Storage/WPDDevicesDenyWriteAccessPerUser
```
<!-- WPDDevicesDenyWriteAccessPerUser-OmaUri-End -->

<!-- WPDDevicesDenyWriteAccessPerUser-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- WPDDevicesDenyWriteAccessPerUser-Description-End -->

<!-- WPDDevicesDenyWriteAccessPerUser-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

This policy does enforcement over the following protocols that are used by most portable devices, for example, mobile/IOS/Android:

- Picture Transfer Protocol (PTP) over USB, IP, and Bluetooth.
- Media Transfer Protocol (MTP) over USB, IP, and Bluetooth.
- Mass Storage Class (MSC) over USB.
<!-- version note from old article, which doesn't align with version applicability above
To enable this policy, the minimum OS requirement is Windows 10, version 1809 and [KB5003217 (OS Build 17763.1971)](https://support.microsoft.com/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46). -->

>[!NOTE]
> WPD policy isn't a reliable policy for removable storage. You can't use WPD policy to entirely block removable storage. For example, if a user inserts a USB drive to a device with a WPD policy, the policy may block PTP or MTP, but the user can still browse the drive in Windows Explorer.
<!-- WPDDevicesDenyWriteAccessPerUser-Editable-End -->

<!-- WPDDevicesDenyWriteAccessPerUser-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WPDDevicesDenyWriteAccessPerUser-DFProperties-End -->

<!-- WPDDevicesDenyWriteAccessPerUser-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WPDDevices_DenyWrite_Access_1 |
| Friendly Name | WPD Devices: Deny write access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{6AC27878-A6FA-4155-BA85-F98F491D4F33} |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- WPDDevicesDenyWriteAccessPerUser-AdmxBacked-End -->

<!-- WPDDevicesDenyWriteAccessPerUser-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WPDDevicesDenyWriteAccessPerUser-Examples-End -->

<!-- WPDDevicesDenyWriteAccessPerUser-End -->

<!-- Storage-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Storage-CspMoreInfo-End -->

<!-- Storage-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
