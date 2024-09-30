---
title: FileExplorer Policy CSP
description: Learn more about the FileExplorer Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- FileExplorer-Begin -->
# Policy CSP - FileExplorer

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- FileExplorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FileExplorer-Editable-End -->

<!-- AllowOptionToShowNetwork-Begin -->
## AllowOptionToShowNetwork

<!-- AllowOptionToShowNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowOptionToShowNetwork-Applicability-End -->

<!-- AllowOptionToShowNetwork-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/FileExplorer/AllowOptionToShowNetwork
```

```Device
./Device/Vendor/MSFT/Policy/Config/FileExplorer/AllowOptionToShowNetwork
```
<!-- AllowOptionToShowNetwork-OmaUri-End -->

<!-- AllowOptionToShowNetwork-Description-Begin -->
<!-- Description-Source-DDF -->
When the Network folder is restricted, give the user the option to enumerate and navigate into it.
<!-- AllowOptionToShowNetwork-Description-End -->

<!-- AllowOptionToShowNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowOptionToShowNetwork-Editable-End -->

<!-- AllowOptionToShowNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowOptionToShowNetwork-DFProperties-End -->

<!-- AllowOptionToShowNetwork-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not Allowed. |
| 1 | Allowed. |
<!-- AllowOptionToShowNetwork-AllowedValues-End -->

<!-- AllowOptionToShowNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowOptionToShowNetwork-Examples-End -->

<!-- AllowOptionToShowNetwork-End -->

<!-- AllowOptionToShowThisPC-Begin -->
## AllowOptionToShowThisPC

<!-- AllowOptionToShowThisPC-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AllowOptionToShowThisPC-Applicability-End -->

<!-- AllowOptionToShowThisPC-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/FileExplorer/AllowOptionToShowThisPC
```

```Device
./Device/Vendor/MSFT/Policy/Config/FileExplorer/AllowOptionToShowThisPC
```
<!-- AllowOptionToShowThisPC-OmaUri-End -->

<!-- AllowOptionToShowThisPC-Description-Begin -->
<!-- Description-Source-DDF -->
When This PC location is restricted, give the user the option to enumerate and navigate into it.
<!-- AllowOptionToShowThisPC-Description-End -->

<!-- AllowOptionToShowThisPC-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowOptionToShowThisPC-Editable-End -->

<!-- AllowOptionToShowThisPC-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowOptionToShowThisPC-DFProperties-End -->

<!-- AllowOptionToShowThisPC-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not Allowed. |
| 1 | Allowed. |
<!-- AllowOptionToShowThisPC-AllowedValues-End -->

<!-- AllowOptionToShowThisPC-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowOptionToShowThisPC-Examples-End -->

<!-- AllowOptionToShowThisPC-End -->

<!-- DisableGraphRecentItems-Begin -->
## DisableGraphRecentItems

<!-- DisableGraphRecentItems-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- DisableGraphRecentItems-Applicability-End -->

<!-- DisableGraphRecentItems-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/FileExplorer/DisableGraphRecentItems
```
<!-- DisableGraphRecentItems-OmaUri-End -->

<!-- DisableGraphRecentItems-Description-Begin -->
<!-- Description-Source-ADMX -->
Turning off this setting will prevent File Explorer from requesting cloud file metadata and displaying it in the homepage and other views in File Explorer. Any insights and files available based on account activity will be stopped in views such as Recent, Recommended, Favorites, Details pane, etc.
<!-- DisableGraphRecentItems-Description-End -->

<!-- DisableGraphRecentItems-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableGraphRecentItems-Editable-End -->

<!-- DisableGraphRecentItems-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- DisableGraphRecentItems-DFProperties-End -->

<!-- DisableGraphRecentItems-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | File Explorer will request cloud file metadata and display it in the homepage and other views. |
| 1 | File Explorer won't request cloud file metadata or display it in the homepage or other views. |
<!-- DisableGraphRecentItems-AllowedValues-End -->

<!-- DisableGraphRecentItems-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DisableGraphRecentItems |
| Friendly Name | Turn off account-based insights, recent, favorite, and recommended files in File Explorer |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | DisableGraphRecentItems |
| ADMX File Name | Explorer.admx |
<!-- DisableGraphRecentItems-GpMapping-End -->

<!-- DisableGraphRecentItems-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableGraphRecentItems-Examples-End -->

<!-- DisableGraphRecentItems-End -->

<!-- SetAllowedFolderLocations-Begin -->
## SetAllowedFolderLocations

<!-- SetAllowedFolderLocations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetAllowedFolderLocations-Applicability-End -->

<!-- SetAllowedFolderLocations-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/FileExplorer/SetAllowedFolderLocations
```

```Device
./Device/Vendor/MSFT/Policy/Config/FileExplorer/SetAllowedFolderLocations
```
<!-- SetAllowedFolderLocations-OmaUri-End -->

<!-- SetAllowedFolderLocations-Description-Begin -->
<!-- Description-Source-DDF -->
A value that can represent one or more folder locations in File Explorer. If not specified, the default is access to all folder locations.
<!-- SetAllowedFolderLocations-Description-End -->

<!-- SetAllowedFolderLocations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetAllowedFolderLocations-Editable-End -->

<!-- SetAllowedFolderLocations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SetAllowedFolderLocations-DFProperties-End -->

<!-- SetAllowedFolderLocations-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Access to all folder locations. |
| 13 | Documents, Pictures, Downloads. |
| 15 | Desktop, Documents, Pictures, Downloads. |
| 31 | Desktop, Documents, Pictures, Downloads, Network. |
| 47 | This PC, Desktop, Documents, Pictures, Downloads. |
| 63 | This PC, Desktop, Documents, Pictures, Downloads, Network. |
<!-- SetAllowedFolderLocations-AllowedValues-End -->

<!-- SetAllowedFolderLocations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetAllowedFolderLocations-Examples-End -->

<!-- SetAllowedFolderLocations-End -->

<!-- SetAllowedStorageLocations-Begin -->
## SetAllowedStorageLocations

<!-- SetAllowedStorageLocations-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SetAllowedStorageLocations-Applicability-End -->

<!-- SetAllowedStorageLocations-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/FileExplorer/SetAllowedStorageLocations
```

```Device
./Device/Vendor/MSFT/Policy/Config/FileExplorer/SetAllowedStorageLocations
```
<!-- SetAllowedStorageLocations-OmaUri-End -->

<!-- SetAllowedStorageLocations-Description-Begin -->
<!-- Description-Source-DDF -->
A value that can represent one or more storage locations in File Explorer. If not specified, the default is access to all storage locations.
<!-- SetAllowedStorageLocations-Description-End -->

<!-- SetAllowedStorageLocations-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetAllowedStorageLocations-Editable-End -->

<!-- SetAllowedStorageLocations-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- SetAllowedStorageLocations-DFProperties-End -->

<!-- SetAllowedStorageLocations-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Access to all storage locations. |
| 1 | Removable Drives. |
| 2 | Sync roots. |
| 3 | Removable Drives, Sync roots. |
| 4 | Local Drives. |
| 5 | Removable Drives, Local Drives. |
| 6 | Sync Roots, Local Drives. |
| 7 | Removable Drives, Sync Roots, Local Drives. |
<!-- SetAllowedStorageLocations-AllowedValues-End -->

<!-- SetAllowedStorageLocations-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetAllowedStorageLocations-Examples-End -->

<!-- SetAllowedStorageLocations-End -->

<!-- TurnOffDataExecutionPreventionForExplorer-Begin -->
## TurnOffDataExecutionPreventionForExplorer

<!-- TurnOffDataExecutionPreventionForExplorer-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TurnOffDataExecutionPreventionForExplorer-Applicability-End -->

<!-- TurnOffDataExecutionPreventionForExplorer-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/FileExplorer/TurnOffDataExecutionPreventionForExplorer
```
<!-- TurnOffDataExecutionPreventionForExplorer-OmaUri-End -->

<!-- TurnOffDataExecutionPreventionForExplorer-Description-Begin -->
<!-- Description-Source-ADMX -->
Disabling data execution prevention can allow certain legacy plug-in applications to function without terminating Explorer.
<!-- TurnOffDataExecutionPreventionForExplorer-Description-End -->

<!-- TurnOffDataExecutionPreventionForExplorer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffDataExecutionPreventionForExplorer-Editable-End -->

<!-- TurnOffDataExecutionPreventionForExplorer-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffDataExecutionPreventionForExplorer-DFProperties-End -->

<!-- TurnOffDataExecutionPreventionForExplorer-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoDataExecutionPrevention |
| Friendly Name | Turn off Data Execution Prevention for Explorer |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoDataExecutionPrevention |
| ADMX File Name | Explorer.admx |
<!-- TurnOffDataExecutionPreventionForExplorer-AdmxBacked-End -->

<!-- TurnOffDataExecutionPreventionForExplorer-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffDataExecutionPreventionForExplorer-Examples-End -->

<!-- TurnOffDataExecutionPreventionForExplorer-End -->

<!-- TurnOffHeapTerminationOnCorruption-Begin -->
## TurnOffHeapTerminationOnCorruption

<!-- TurnOffHeapTerminationOnCorruption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TurnOffHeapTerminationOnCorruption-Applicability-End -->

<!-- TurnOffHeapTerminationOnCorruption-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/FileExplorer/TurnOffHeapTerminationOnCorruption
```
<!-- TurnOffHeapTerminationOnCorruption-OmaUri-End -->

<!-- TurnOffHeapTerminationOnCorruption-Description-Begin -->
<!-- Description-Source-ADMX -->
Disabling heap termination on corruption can allow certain legacy plug-in applications to function without terminating Explorer immediately, although Explorer may still terminate unexpectedly later.
<!-- TurnOffHeapTerminationOnCorruption-Description-End -->

<!-- TurnOffHeapTerminationOnCorruption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffHeapTerminationOnCorruption-Editable-End -->

<!-- TurnOffHeapTerminationOnCorruption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOffHeapTerminationOnCorruption-DFProperties-End -->

<!-- TurnOffHeapTerminationOnCorruption-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoHeapTerminationOnCorruption |
| Friendly Name | Turn off heap termination on corruption |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\Explorer |
| Registry Value Name | NoHeapTerminationOnCorruption |
| ADMX File Name | Explorer.admx |
<!-- TurnOffHeapTerminationOnCorruption-AdmxBacked-End -->

<!-- TurnOffHeapTerminationOnCorruption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffHeapTerminationOnCorruption-Examples-End -->

<!-- TurnOffHeapTerminationOnCorruption-End -->

<!-- FileExplorer-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- FileExplorer-CspMoreInfo-End -->

<!-- FileExplorer-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
