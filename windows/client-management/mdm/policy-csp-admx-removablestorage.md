---
title: ADMX_RemovableStorage Policy CSP
description: Learn more about the ADMX_RemovableStorage Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_RemovableStorage-Begin -->
# Policy CSP - ADMX_RemovableStorage

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_RemovableStorage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_RemovableStorage-Editable-End -->

<!-- AccessRights_RebootTime_1-Begin -->
## AccessRights_RebootTime_1

<!-- AccessRights_RebootTime_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AccessRights_RebootTime_1-Applicability-End -->

<!-- AccessRights_RebootTime_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/AccessRights_RebootTime_1
```
<!-- AccessRights_RebootTime_1-OmaUri-End -->

<!-- AccessRights_RebootTime_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the amount of time (in seconds) that the operating system waits to reboot in order to enforce a change in access rights to removable storage devices.

- If you enable this policy setting, you can set the number of seconds you want the system to wait until a reboot.

- If you disable or don't configure this setting, the operating system doesn't force a reboot.

> [!NOTE]
> If no reboot is forced, the access right doesn't take effect until the operating system is restarted.
<!-- AccessRights_RebootTime_1-Description-End -->

<!-- AccessRights_RebootTime_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AccessRights_RebootTime_1-Editable-End -->

<!-- AccessRights_RebootTime_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AccessRights_RebootTime_1-DFProperties-End -->

<!-- AccessRights_RebootTime_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AccessRights_RebootTime_1 |
| Friendly Name | Set time (in seconds) to force reboot |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices |
| Registry Value Name | RebootTimeinSeconds_state |
| ADMX File Name | RemovableStorage.admx |
<!-- AccessRights_RebootTime_1-AdmxBacked-End -->

<!-- AccessRights_RebootTime_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AccessRights_RebootTime_1-Examples-End -->

<!-- AccessRights_RebootTime_1-End -->

<!-- AccessRights_RebootTime_2-Begin -->
## AccessRights_RebootTime_2

<!-- AccessRights_RebootTime_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- AccessRights_RebootTime_2-Applicability-End -->

<!-- AccessRights_RebootTime_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/AccessRights_RebootTime_2
```
<!-- AccessRights_RebootTime_2-OmaUri-End -->

<!-- AccessRights_RebootTime_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the amount of time (in seconds) that the operating system waits to reboot in order to enforce a change in access rights to removable storage devices.

- If you enable this policy setting, you can set the number of seconds you want the system to wait until a reboot.

- If you disable or don't configure this setting, the operating system doesn't force a reboot.

> [!NOTE]
> If no reboot is forced, the access right doesn't take effect until the operating system is restarted.
<!-- AccessRights_RebootTime_2-Description-End -->

<!-- AccessRights_RebootTime_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AccessRights_RebootTime_2-Editable-End -->

<!-- AccessRights_RebootTime_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AccessRights_RebootTime_2-DFProperties-End -->

<!-- AccessRights_RebootTime_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AccessRights_RebootTime_2 |
| Friendly Name | Set time (in seconds) to force reboot |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices |
| Registry Value Name | RebootTimeinSeconds_state |
| ADMX File Name | RemovableStorage.admx |
<!-- AccessRights_RebootTime_2-AdmxBacked-End -->

<!-- AccessRights_RebootTime_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AccessRights_RebootTime_2-Examples-End -->

<!-- AccessRights_RebootTime_2-End -->

<!-- CDandDVD_DenyExecute_Access_2-Begin -->
## CDandDVD_DenyExecute_Access_2

<!-- CDandDVD_DenyExecute_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CDandDVD_DenyExecute_Access_2-Applicability-End -->

<!-- CDandDVD_DenyExecute_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/CDandDVD_DenyExecute_Access_2
```
<!-- CDandDVD_DenyExecute_Access_2-OmaUri-End -->

<!-- CDandDVD_DenyExecute_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies execute access to the CD and DVD removable storage class.

- If you enable this policy setting, execute access is denied to this removable storage class.

- If you disable or don't configure this policy setting, execute access is allowed to this removable storage class.
<!-- CDandDVD_DenyExecute_Access_2-Description-End -->

<!-- CDandDVD_DenyExecute_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CDandDVD_DenyExecute_Access_2-Editable-End -->

<!-- CDandDVD_DenyExecute_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CDandDVD_DenyExecute_Access_2-DFProperties-End -->

<!-- CDandDVD_DenyExecute_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CDandDVD_DenyExecute_Access_2 |
| Friendly Name | CD and DVD: Deny execute access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56308-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Execute |
| ADMX File Name | RemovableStorage.admx |
<!-- CDandDVD_DenyExecute_Access_2-AdmxBacked-End -->

<!-- CDandDVD_DenyExecute_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CDandDVD_DenyExecute_Access_2-Examples-End -->

<!-- CDandDVD_DenyExecute_Access_2-End -->

<!-- CDandDVD_DenyRead_Access_1-Begin -->
## CDandDVD_DenyRead_Access_1

<!-- CDandDVD_DenyRead_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CDandDVD_DenyRead_Access_1-Applicability-End -->

<!-- CDandDVD_DenyRead_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/CDandDVD_DenyRead_Access_1
```
<!-- CDandDVD_DenyRead_Access_1-OmaUri-End -->

<!-- CDandDVD_DenyRead_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to the CD and DVD removable storage class.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- CDandDVD_DenyRead_Access_1-Description-End -->

<!-- CDandDVD_DenyRead_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CDandDVD_DenyRead_Access_1-Editable-End -->

<!-- CDandDVD_DenyRead_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CDandDVD_DenyRead_Access_1-DFProperties-End -->

<!-- CDandDVD_DenyRead_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CDandDVD_DenyRead_Access_1 |
| Friendly Name | CD and DVD: Deny read access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56308-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- CDandDVD_DenyRead_Access_1-AdmxBacked-End -->

<!-- CDandDVD_DenyRead_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CDandDVD_DenyRead_Access_1-Examples-End -->

<!-- CDandDVD_DenyRead_Access_1-End -->

<!-- CDandDVD_DenyRead_Access_2-Begin -->
## CDandDVD_DenyRead_Access_2

<!-- CDandDVD_DenyRead_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CDandDVD_DenyRead_Access_2-Applicability-End -->

<!-- CDandDVD_DenyRead_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/CDandDVD_DenyRead_Access_2
```
<!-- CDandDVD_DenyRead_Access_2-OmaUri-End -->

<!-- CDandDVD_DenyRead_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to the CD and DVD removable storage class.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- CDandDVD_DenyRead_Access_2-Description-End -->

<!-- CDandDVD_DenyRead_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CDandDVD_DenyRead_Access_2-Editable-End -->

<!-- CDandDVD_DenyRead_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CDandDVD_DenyRead_Access_2-DFProperties-End -->

<!-- CDandDVD_DenyRead_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CDandDVD_DenyRead_Access_2 |
| Friendly Name | CD and DVD: Deny read access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56308-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- CDandDVD_DenyRead_Access_2-AdmxBacked-End -->

<!-- CDandDVD_DenyRead_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CDandDVD_DenyRead_Access_2-Examples-End -->

<!-- CDandDVD_DenyRead_Access_2-End -->

<!-- CDandDVD_DenyWrite_Access_1-Begin -->
## CDandDVD_DenyWrite_Access_1

<!-- CDandDVD_DenyWrite_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CDandDVD_DenyWrite_Access_1-Applicability-End -->

<!-- CDandDVD_DenyWrite_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/CDandDVD_DenyWrite_Access_1
```
<!-- CDandDVD_DenyWrite_Access_1-OmaUri-End -->

<!-- CDandDVD_DenyWrite_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to the CD and DVD removable storage class.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- CDandDVD_DenyWrite_Access_1-Description-End -->

<!-- CDandDVD_DenyWrite_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CDandDVD_DenyWrite_Access_1-Editable-End -->

<!-- CDandDVD_DenyWrite_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CDandDVD_DenyWrite_Access_1-DFProperties-End -->

<!-- CDandDVD_DenyWrite_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CDandDVD_DenyWrite_Access_1 |
| Friendly Name | CD and DVD: Deny write access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56308-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- CDandDVD_DenyWrite_Access_1-AdmxBacked-End -->

<!-- CDandDVD_DenyWrite_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CDandDVD_DenyWrite_Access_1-Examples-End -->

<!-- CDandDVD_DenyWrite_Access_1-End -->

<!-- CDandDVD_DenyWrite_Access_2-Begin -->
## CDandDVD_DenyWrite_Access_2

<!-- CDandDVD_DenyWrite_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CDandDVD_DenyWrite_Access_2-Applicability-End -->

<!-- CDandDVD_DenyWrite_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/CDandDVD_DenyWrite_Access_2
```
<!-- CDandDVD_DenyWrite_Access_2-OmaUri-End -->

<!-- CDandDVD_DenyWrite_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to the CD and DVD removable storage class.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- CDandDVD_DenyWrite_Access_2-Description-End -->

<!-- CDandDVD_DenyWrite_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CDandDVD_DenyWrite_Access_2-Editable-End -->

<!-- CDandDVD_DenyWrite_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CDandDVD_DenyWrite_Access_2-DFProperties-End -->

<!-- CDandDVD_DenyWrite_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CDandDVD_DenyWrite_Access_2 |
| Friendly Name | CD and DVD: Deny write access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56308-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- CDandDVD_DenyWrite_Access_2-AdmxBacked-End -->

<!-- CDandDVD_DenyWrite_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CDandDVD_DenyWrite_Access_2-Examples-End -->

<!-- CDandDVD_DenyWrite_Access_2-End -->

<!-- CustomClasses_DenyRead_Access_1-Begin -->
## CustomClasses_DenyRead_Access_1

<!-- CustomClasses_DenyRead_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomClasses_DenyRead_Access_1-Applicability-End -->

<!-- CustomClasses_DenyRead_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/CustomClasses_DenyRead_Access_1
```
<!-- CustomClasses_DenyRead_Access_1-OmaUri-End -->

<!-- CustomClasses_DenyRead_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to custom removable storage classes.

- If you enable this policy setting, read access is denied to these removable storage classes.

- If you disable or don't configure this policy setting, read access is allowed to these removable storage classes.
<!-- CustomClasses_DenyRead_Access_1-Description-End -->

<!-- CustomClasses_DenyRead_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomClasses_DenyRead_Access_1-Editable-End -->

<!-- CustomClasses_DenyRead_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomClasses_DenyRead_Access_1-DFProperties-End -->

<!-- CustomClasses_DenyRead_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomClasses_DenyRead_Access_1 |
| Friendly Name | Custom Classes: Deny read access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\Custom\Deny_Read |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- CustomClasses_DenyRead_Access_1-AdmxBacked-End -->

<!-- CustomClasses_DenyRead_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomClasses_DenyRead_Access_1-Examples-End -->

<!-- CustomClasses_DenyRead_Access_1-End -->

<!-- CustomClasses_DenyRead_Access_2-Begin -->
## CustomClasses_DenyRead_Access_2

<!-- CustomClasses_DenyRead_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomClasses_DenyRead_Access_2-Applicability-End -->

<!-- CustomClasses_DenyRead_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/CustomClasses_DenyRead_Access_2
```
<!-- CustomClasses_DenyRead_Access_2-OmaUri-End -->

<!-- CustomClasses_DenyRead_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to custom removable storage classes.

- If you enable this policy setting, read access is denied to these removable storage classes.

- If you disable or don't configure this policy setting, read access is allowed to these removable storage classes.
<!-- CustomClasses_DenyRead_Access_2-Description-End -->

<!-- CustomClasses_DenyRead_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomClasses_DenyRead_Access_2-Editable-End -->

<!-- CustomClasses_DenyRead_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomClasses_DenyRead_Access_2-DFProperties-End -->

<!-- CustomClasses_DenyRead_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomClasses_DenyRead_Access_2 |
| Friendly Name | Custom Classes: Deny read access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\Custom\Deny_Read |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- CustomClasses_DenyRead_Access_2-AdmxBacked-End -->

<!-- CustomClasses_DenyRead_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomClasses_DenyRead_Access_2-Examples-End -->

<!-- CustomClasses_DenyRead_Access_2-End -->

<!-- CustomClasses_DenyWrite_Access_1-Begin -->
## CustomClasses_DenyWrite_Access_1

<!-- CustomClasses_DenyWrite_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomClasses_DenyWrite_Access_1-Applicability-End -->

<!-- CustomClasses_DenyWrite_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/CustomClasses_DenyWrite_Access_1
```
<!-- CustomClasses_DenyWrite_Access_1-OmaUri-End -->

<!-- CustomClasses_DenyWrite_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to custom removable storage classes.

- If you enable this policy setting, write access is denied to these removable storage classes.

- If you disable or don't configure this policy setting, write access is allowed to these removable storage classes.
<!-- CustomClasses_DenyWrite_Access_1-Description-End -->

<!-- CustomClasses_DenyWrite_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomClasses_DenyWrite_Access_1-Editable-End -->

<!-- CustomClasses_DenyWrite_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomClasses_DenyWrite_Access_1-DFProperties-End -->

<!-- CustomClasses_DenyWrite_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomClasses_DenyWrite_Access_1 |
| Friendly Name | Custom Classes: Deny write access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\Custom\Deny_Write |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- CustomClasses_DenyWrite_Access_1-AdmxBacked-End -->

<!-- CustomClasses_DenyWrite_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomClasses_DenyWrite_Access_1-Examples-End -->

<!-- CustomClasses_DenyWrite_Access_1-End -->

<!-- CustomClasses_DenyWrite_Access_2-Begin -->
## CustomClasses_DenyWrite_Access_2

<!-- CustomClasses_DenyWrite_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomClasses_DenyWrite_Access_2-Applicability-End -->

<!-- CustomClasses_DenyWrite_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/CustomClasses_DenyWrite_Access_2
```
<!-- CustomClasses_DenyWrite_Access_2-OmaUri-End -->

<!-- CustomClasses_DenyWrite_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to custom removable storage classes.

- If you enable this policy setting, write access is denied to these removable storage classes.

- If you disable or don't configure this policy setting, write access is allowed to these removable storage classes.
<!-- CustomClasses_DenyWrite_Access_2-Description-End -->

<!-- CustomClasses_DenyWrite_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomClasses_DenyWrite_Access_2-Editable-End -->

<!-- CustomClasses_DenyWrite_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomClasses_DenyWrite_Access_2-DFProperties-End -->

<!-- CustomClasses_DenyWrite_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomClasses_DenyWrite_Access_2 |
| Friendly Name | Custom Classes: Deny write access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\Custom\Deny_Write |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- CustomClasses_DenyWrite_Access_2-AdmxBacked-End -->

<!-- CustomClasses_DenyWrite_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomClasses_DenyWrite_Access_2-Examples-End -->

<!-- CustomClasses_DenyWrite_Access_2-End -->

<!-- FloppyDrives_DenyExecute_Access_2-Begin -->
## FloppyDrives_DenyExecute_Access_2

<!-- FloppyDrives_DenyExecute_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FloppyDrives_DenyExecute_Access_2-Applicability-End -->

<!-- FloppyDrives_DenyExecute_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/FloppyDrives_DenyExecute_Access_2
```
<!-- FloppyDrives_DenyExecute_Access_2-OmaUri-End -->

<!-- FloppyDrives_DenyExecute_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies execute access to the Floppy Drives removable storage class, including USB Floppy Drives.

- If you enable this policy setting, execute access is denied to this removable storage class.

- If you disable or don't configure this policy setting, execute access is allowed to this removable storage class.
<!-- FloppyDrives_DenyExecute_Access_2-Description-End -->

<!-- FloppyDrives_DenyExecute_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FloppyDrives_DenyExecute_Access_2-Editable-End -->

<!-- FloppyDrives_DenyExecute_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FloppyDrives_DenyExecute_Access_2-DFProperties-End -->

<!-- FloppyDrives_DenyExecute_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FloppyDrives_DenyExecute_Access_2 |
| Friendly Name | Floppy Drives: Deny execute access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56311-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Execute |
| ADMX File Name | RemovableStorage.admx |
<!-- FloppyDrives_DenyExecute_Access_2-AdmxBacked-End -->

<!-- FloppyDrives_DenyExecute_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FloppyDrives_DenyExecute_Access_2-Examples-End -->

<!-- FloppyDrives_DenyExecute_Access_2-End -->

<!-- FloppyDrives_DenyRead_Access_1-Begin -->
## FloppyDrives_DenyRead_Access_1

<!-- FloppyDrives_DenyRead_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FloppyDrives_DenyRead_Access_1-Applicability-End -->

<!-- FloppyDrives_DenyRead_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/FloppyDrives_DenyRead_Access_1
```
<!-- FloppyDrives_DenyRead_Access_1-OmaUri-End -->

<!-- FloppyDrives_DenyRead_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to the Floppy Drives removable storage class, including USB Floppy Drives.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- FloppyDrives_DenyRead_Access_1-Description-End -->

<!-- FloppyDrives_DenyRead_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FloppyDrives_DenyRead_Access_1-Editable-End -->

<!-- FloppyDrives_DenyRead_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FloppyDrives_DenyRead_Access_1-DFProperties-End -->

<!-- FloppyDrives_DenyRead_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FloppyDrives_DenyRead_Access_1 |
| Friendly Name | Floppy Drives: Deny read access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56311-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- FloppyDrives_DenyRead_Access_1-AdmxBacked-End -->

<!-- FloppyDrives_DenyRead_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FloppyDrives_DenyRead_Access_1-Examples-End -->

<!-- FloppyDrives_DenyRead_Access_1-End -->

<!-- FloppyDrives_DenyRead_Access_2-Begin -->
## FloppyDrives_DenyRead_Access_2

<!-- FloppyDrives_DenyRead_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FloppyDrives_DenyRead_Access_2-Applicability-End -->

<!-- FloppyDrives_DenyRead_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/FloppyDrives_DenyRead_Access_2
```
<!-- FloppyDrives_DenyRead_Access_2-OmaUri-End -->

<!-- FloppyDrives_DenyRead_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to the Floppy Drives removable storage class, including USB Floppy Drives.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- FloppyDrives_DenyRead_Access_2-Description-End -->

<!-- FloppyDrives_DenyRead_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FloppyDrives_DenyRead_Access_2-Editable-End -->

<!-- FloppyDrives_DenyRead_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FloppyDrives_DenyRead_Access_2-DFProperties-End -->

<!-- FloppyDrives_DenyRead_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FloppyDrives_DenyRead_Access_2 |
| Friendly Name | Floppy Drives: Deny read access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56311-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- FloppyDrives_DenyRead_Access_2-AdmxBacked-End -->

<!-- FloppyDrives_DenyRead_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FloppyDrives_DenyRead_Access_2-Examples-End -->

<!-- FloppyDrives_DenyRead_Access_2-End -->

<!-- FloppyDrives_DenyWrite_Access_1-Begin -->
## FloppyDrives_DenyWrite_Access_1

<!-- FloppyDrives_DenyWrite_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FloppyDrives_DenyWrite_Access_1-Applicability-End -->

<!-- FloppyDrives_DenyWrite_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/FloppyDrives_DenyWrite_Access_1
```
<!-- FloppyDrives_DenyWrite_Access_1-OmaUri-End -->

<!-- FloppyDrives_DenyWrite_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to the Floppy Drives removable storage class, including USB Floppy Drives.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- FloppyDrives_DenyWrite_Access_1-Description-End -->

<!-- FloppyDrives_DenyWrite_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FloppyDrives_DenyWrite_Access_1-Editable-End -->

<!-- FloppyDrives_DenyWrite_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FloppyDrives_DenyWrite_Access_1-DFProperties-End -->

<!-- FloppyDrives_DenyWrite_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FloppyDrives_DenyWrite_Access_1 |
| Friendly Name | Floppy Drives: Deny write access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56311-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- FloppyDrives_DenyWrite_Access_1-AdmxBacked-End -->

<!-- FloppyDrives_DenyWrite_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FloppyDrives_DenyWrite_Access_1-Examples-End -->

<!-- FloppyDrives_DenyWrite_Access_1-End -->

<!-- FloppyDrives_DenyWrite_Access_2-Begin -->
## FloppyDrives_DenyWrite_Access_2

<!-- FloppyDrives_DenyWrite_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FloppyDrives_DenyWrite_Access_2-Applicability-End -->

<!-- FloppyDrives_DenyWrite_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/FloppyDrives_DenyWrite_Access_2
```
<!-- FloppyDrives_DenyWrite_Access_2-OmaUri-End -->

<!-- FloppyDrives_DenyWrite_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to the Floppy Drives removable storage class, including USB Floppy Drives.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- FloppyDrives_DenyWrite_Access_2-Description-End -->

<!-- FloppyDrives_DenyWrite_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FloppyDrives_DenyWrite_Access_2-Editable-End -->

<!-- FloppyDrives_DenyWrite_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FloppyDrives_DenyWrite_Access_2-DFProperties-End -->

<!-- FloppyDrives_DenyWrite_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FloppyDrives_DenyWrite_Access_2 |
| Friendly Name | Floppy Drives: Deny write access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f56311-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- FloppyDrives_DenyWrite_Access_2-AdmxBacked-End -->

<!-- FloppyDrives_DenyWrite_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FloppyDrives_DenyWrite_Access_2-Examples-End -->

<!-- FloppyDrives_DenyWrite_Access_2-End -->

<!-- Removable_Remote_Allow_Access-Begin -->
## Removable_Remote_Allow_Access

<!-- Removable_Remote_Allow_Access-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- Removable_Remote_Allow_Access-Applicability-End -->

<!-- Removable_Remote_Allow_Access-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/Removable_Remote_Allow_Access
```
<!-- Removable_Remote_Allow_Access-OmaUri-End -->

<!-- Removable_Remote_Allow_Access-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting grants normal users direct access to removable storage devices in remote sessions.

- If you enable this policy setting, remote users can open direct handles to removable storage devices in remote sessions.

- If you disable or don't configure this policy setting, remote users can't open direct handles to removable storage devices in remote sessions.
<!-- Removable_Remote_Allow_Access-Description-End -->

<!-- Removable_Remote_Allow_Access-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Removable_Remote_Allow_Access-Editable-End -->

<!-- Removable_Remote_Allow_Access-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Removable_Remote_Allow_Access-DFProperties-End -->

<!-- Removable_Remote_Allow_Access-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Removable_Remote_Allow_Access |
| Friendly Name | All Removable Storage: Allow direct access in remote sessions |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices |
| Registry Value Name | AllowRemoteDASD |
| ADMX File Name | RemovableStorage.admx |
<!-- Removable_Remote_Allow_Access-AdmxBacked-End -->

<!-- Removable_Remote_Allow_Access-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Removable_Remote_Allow_Access-Examples-End -->

<!-- Removable_Remote_Allow_Access-End -->

<!-- RemovableDisks_DenyExecute_Access_2-Begin -->
## RemovableDisks_DenyExecute_Access_2

<!-- RemovableDisks_DenyExecute_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemovableDisks_DenyExecute_Access_2-Applicability-End -->

<!-- RemovableDisks_DenyExecute_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/RemovableDisks_DenyExecute_Access_2
```
<!-- RemovableDisks_DenyExecute_Access_2-OmaUri-End -->

<!-- RemovableDisks_DenyExecute_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies execute access to removable disks.

- If you enable this policy setting, execute access is denied to this removable storage class.

- If you disable or don't configure this policy setting, execute access is allowed to this removable storage class.
<!-- RemovableDisks_DenyExecute_Access_2-Description-End -->

<!-- RemovableDisks_DenyExecute_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemovableDisks_DenyExecute_Access_2-Editable-End -->

<!-- RemovableDisks_DenyExecute_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemovableDisks_DenyExecute_Access_2-DFProperties-End -->

<!-- RemovableDisks_DenyExecute_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemovableDisks_DenyExecute_Access_2 |
| Friendly Name | Removable Disks: Deny execute access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630d-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Execute |
| ADMX File Name | RemovableStorage.admx |
<!-- RemovableDisks_DenyExecute_Access_2-AdmxBacked-End -->

<!-- RemovableDisks_DenyExecute_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemovableDisks_DenyExecute_Access_2-Examples-End -->

<!-- RemovableDisks_DenyExecute_Access_2-End -->

<!-- RemovableDisks_DenyRead_Access_1-Begin -->
## RemovableDisks_DenyRead_Access_1

<!-- RemovableDisks_DenyRead_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemovableDisks_DenyRead_Access_1-Applicability-End -->

<!-- RemovableDisks_DenyRead_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/RemovableDisks_DenyRead_Access_1
```
<!-- RemovableDisks_DenyRead_Access_1-OmaUri-End -->

<!-- RemovableDisks_DenyRead_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to removable disks.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- RemovableDisks_DenyRead_Access_1-Description-End -->

<!-- RemovableDisks_DenyRead_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemovableDisks_DenyRead_Access_1-Editable-End -->

<!-- RemovableDisks_DenyRead_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemovableDisks_DenyRead_Access_1-DFProperties-End -->

<!-- RemovableDisks_DenyRead_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemovableDisks_DenyRead_Access_1 |
| Friendly Name | Removable Disks: Deny read access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630d-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- RemovableDisks_DenyRead_Access_1-AdmxBacked-End -->

<!-- RemovableDisks_DenyRead_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemovableDisks_DenyRead_Access_1-Examples-End -->

<!-- RemovableDisks_DenyRead_Access_1-End -->

<!-- RemovableDisks_DenyRead_Access_2-Begin -->
## RemovableDisks_DenyRead_Access_2

<!-- RemovableDisks_DenyRead_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemovableDisks_DenyRead_Access_2-Applicability-End -->

<!-- RemovableDisks_DenyRead_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/RemovableDisks_DenyRead_Access_2
```
<!-- RemovableDisks_DenyRead_Access_2-OmaUri-End -->

<!-- RemovableDisks_DenyRead_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to removable disks.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- RemovableDisks_DenyRead_Access_2-Description-End -->

<!-- RemovableDisks_DenyRead_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemovableDisks_DenyRead_Access_2-Editable-End -->

<!-- RemovableDisks_DenyRead_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemovableDisks_DenyRead_Access_2-DFProperties-End -->

<!-- RemovableDisks_DenyRead_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemovableDisks_DenyRead_Access_2 |
| Friendly Name | Removable Disks: Deny read access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630d-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- RemovableDisks_DenyRead_Access_2-AdmxBacked-End -->

<!-- RemovableDisks_DenyRead_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemovableDisks_DenyRead_Access_2-Examples-End -->

<!-- RemovableDisks_DenyRead_Access_2-End -->

<!-- RemovableDisks_DenyWrite_Access_1-Begin -->
## RemovableDisks_DenyWrite_Access_1

<!-- RemovableDisks_DenyWrite_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemovableDisks_DenyWrite_Access_1-Applicability-End -->

<!-- RemovableDisks_DenyWrite_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/RemovableDisks_DenyWrite_Access_1
```
<!-- RemovableDisks_DenyWrite_Access_1-OmaUri-End -->

<!-- RemovableDisks_DenyWrite_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to removable disks.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

> [!NOTE]
> To require that users write data to BitLocker-protected storage, enable the policy setting "Deny write access to drives not protected by BitLocker," which is located in "Computer Configuration\Administrative Templates\Windows Components\BitLocker Drive Encryption\Removable Data Drives".
<!-- RemovableDisks_DenyWrite_Access_1-Description-End -->

<!-- RemovableDisks_DenyWrite_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemovableDisks_DenyWrite_Access_1-Editable-End -->

<!-- RemovableDisks_DenyWrite_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemovableDisks_DenyWrite_Access_1-DFProperties-End -->

<!-- RemovableDisks_DenyWrite_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemovableDisks_DenyWrite_Access_1 |
| Friendly Name | Removable Disks: Deny write access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630d-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- RemovableDisks_DenyWrite_Access_1-AdmxBacked-End -->

<!-- RemovableDisks_DenyWrite_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemovableDisks_DenyWrite_Access_1-Examples-End -->

<!-- RemovableDisks_DenyWrite_Access_1-End -->

<!-- RemovableStorageClasses_DenyAll_Access_1-Begin -->
## RemovableStorageClasses_DenyAll_Access_1

<!-- RemovableStorageClasses_DenyAll_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemovableStorageClasses_DenyAll_Access_1-Applicability-End -->

<!-- RemovableStorageClasses_DenyAll_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/RemovableStorageClasses_DenyAll_Access_1
```
<!-- RemovableStorageClasses_DenyAll_Access_1-OmaUri-End -->

<!-- RemovableStorageClasses_DenyAll_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Configure access to all removable storage classes.

This policy setting takes precedence over any individual removable storage policy settings. To manage individual classes, use the policy settings available for each class.

- If you enable this policy setting, no access is allowed to any removable storage class.

- If you disable or don't configure this policy setting, write and read accesses are allowed to all removable storage classes.
<!-- RemovableStorageClasses_DenyAll_Access_1-Description-End -->

<!-- RemovableStorageClasses_DenyAll_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemovableStorageClasses_DenyAll_Access_1-Editable-End -->

<!-- RemovableStorageClasses_DenyAll_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemovableStorageClasses_DenyAll_Access_1-DFProperties-End -->

<!-- RemovableStorageClasses_DenyAll_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemovableStorageClasses_DenyAll_Access_1 |
| Friendly Name | All Removable Storage classes: Deny all access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices |
| Registry Value Name | Deny_All |
| ADMX File Name | RemovableStorage.admx |
<!-- RemovableStorageClasses_DenyAll_Access_1-AdmxBacked-End -->

<!-- RemovableStorageClasses_DenyAll_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemovableStorageClasses_DenyAll_Access_1-Examples-End -->

<!-- RemovableStorageClasses_DenyAll_Access_1-End -->

<!-- RemovableStorageClasses_DenyAll_Access_2-Begin -->
## RemovableStorageClasses_DenyAll_Access_2

<!-- RemovableStorageClasses_DenyAll_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- RemovableStorageClasses_DenyAll_Access_2-Applicability-End -->

<!-- RemovableStorageClasses_DenyAll_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/RemovableStorageClasses_DenyAll_Access_2
```
<!-- RemovableStorageClasses_DenyAll_Access_2-OmaUri-End -->

<!-- RemovableStorageClasses_DenyAll_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Configure access to all removable storage classes.

This policy setting takes precedence over any individual removable storage policy settings. To manage individual classes, use the policy settings available for each class.

- If you enable this policy setting, no access is allowed to any removable storage class.

- If you disable or don't configure this policy setting, write and read accesses are allowed to all removable storage classes.
<!-- RemovableStorageClasses_DenyAll_Access_2-Description-End -->

<!-- RemovableStorageClasses_DenyAll_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemovableStorageClasses_DenyAll_Access_2-Editable-End -->

<!-- RemovableStorageClasses_DenyAll_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RemovableStorageClasses_DenyAll_Access_2-DFProperties-End -->

<!-- RemovableStorageClasses_DenyAll_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RemovableStorageClasses_DenyAll_Access_2 |
| Friendly Name | All Removable Storage classes: Deny all access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices |
| Registry Value Name | Deny_All |
| ADMX File Name | RemovableStorage.admx |
<!-- RemovableStorageClasses_DenyAll_Access_2-AdmxBacked-End -->

<!-- RemovableStorageClasses_DenyAll_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemovableStorageClasses_DenyAll_Access_2-Examples-End -->

<!-- RemovableStorageClasses_DenyAll_Access_2-End -->

<!-- TapeDrives_DenyExecute_Access_2-Begin -->
## TapeDrives_DenyExecute_Access_2

<!-- TapeDrives_DenyExecute_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TapeDrives_DenyExecute_Access_2-Applicability-End -->

<!-- TapeDrives_DenyExecute_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/TapeDrives_DenyExecute_Access_2
```
<!-- TapeDrives_DenyExecute_Access_2-OmaUri-End -->

<!-- TapeDrives_DenyExecute_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies execute access to the Tape Drive removable storage class.

- If you enable this policy setting, execute access is denied to this removable storage class.

- If you disable or don't configure this policy setting, execute access is allowed to this removable storage class.
<!-- TapeDrives_DenyExecute_Access_2-Description-End -->

<!-- TapeDrives_DenyExecute_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TapeDrives_DenyExecute_Access_2-Editable-End -->

<!-- TapeDrives_DenyExecute_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TapeDrives_DenyExecute_Access_2-DFProperties-End -->

<!-- TapeDrives_DenyExecute_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TapeDrives_DenyExecute_Access_2 |
| Friendly Name | Tape Drives: Deny execute access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630b-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Execute |
| ADMX File Name | RemovableStorage.admx |
<!-- TapeDrives_DenyExecute_Access_2-AdmxBacked-End -->

<!-- TapeDrives_DenyExecute_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TapeDrives_DenyExecute_Access_2-Examples-End -->

<!-- TapeDrives_DenyExecute_Access_2-End -->

<!-- TapeDrives_DenyRead_Access_1-Begin -->
## TapeDrives_DenyRead_Access_1

<!-- TapeDrives_DenyRead_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TapeDrives_DenyRead_Access_1-Applicability-End -->

<!-- TapeDrives_DenyRead_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/TapeDrives_DenyRead_Access_1
```
<!-- TapeDrives_DenyRead_Access_1-OmaUri-End -->

<!-- TapeDrives_DenyRead_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to the Tape Drive removable storage class.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- TapeDrives_DenyRead_Access_1-Description-End -->

<!-- TapeDrives_DenyRead_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TapeDrives_DenyRead_Access_1-Editable-End -->

<!-- TapeDrives_DenyRead_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TapeDrives_DenyRead_Access_1-DFProperties-End -->

<!-- TapeDrives_DenyRead_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TapeDrives_DenyRead_Access_1 |
| Friendly Name | Tape Drives: Deny read access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630b-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- TapeDrives_DenyRead_Access_1-AdmxBacked-End -->

<!-- TapeDrives_DenyRead_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TapeDrives_DenyRead_Access_1-Examples-End -->

<!-- TapeDrives_DenyRead_Access_1-End -->

<!-- TapeDrives_DenyRead_Access_2-Begin -->
## TapeDrives_DenyRead_Access_2

<!-- TapeDrives_DenyRead_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TapeDrives_DenyRead_Access_2-Applicability-End -->

<!-- TapeDrives_DenyRead_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/TapeDrives_DenyRead_Access_2
```
<!-- TapeDrives_DenyRead_Access_2-OmaUri-End -->

<!-- TapeDrives_DenyRead_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to the Tape Drive removable storage class.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- TapeDrives_DenyRead_Access_2-Description-End -->

<!-- TapeDrives_DenyRead_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TapeDrives_DenyRead_Access_2-Editable-End -->

<!-- TapeDrives_DenyRead_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TapeDrives_DenyRead_Access_2-DFProperties-End -->

<!-- TapeDrives_DenyRead_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TapeDrives_DenyRead_Access_2 |
| Friendly Name | Tape Drives: Deny read access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630b-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Read |
| ADMX File Name | RemovableStorage.admx |
<!-- TapeDrives_DenyRead_Access_2-AdmxBacked-End -->

<!-- TapeDrives_DenyRead_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TapeDrives_DenyRead_Access_2-Examples-End -->

<!-- TapeDrives_DenyRead_Access_2-End -->

<!-- TapeDrives_DenyWrite_Access_1-Begin -->
## TapeDrives_DenyWrite_Access_1

<!-- TapeDrives_DenyWrite_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TapeDrives_DenyWrite_Access_1-Applicability-End -->

<!-- TapeDrives_DenyWrite_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/TapeDrives_DenyWrite_Access_1
```
<!-- TapeDrives_DenyWrite_Access_1-OmaUri-End -->

<!-- TapeDrives_DenyWrite_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to the Tape Drive removable storage class.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- TapeDrives_DenyWrite_Access_1-Description-End -->

<!-- TapeDrives_DenyWrite_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TapeDrives_DenyWrite_Access_1-Editable-End -->

<!-- TapeDrives_DenyWrite_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TapeDrives_DenyWrite_Access_1-DFProperties-End -->

<!-- TapeDrives_DenyWrite_Access_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TapeDrives_DenyWrite_Access_1 |
| Friendly Name | Tape Drives: Deny write access |
| Location | User Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630b-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- TapeDrives_DenyWrite_Access_1-AdmxBacked-End -->

<!-- TapeDrives_DenyWrite_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TapeDrives_DenyWrite_Access_1-Examples-End -->

<!-- TapeDrives_DenyWrite_Access_1-End -->

<!-- TapeDrives_DenyWrite_Access_2-Begin -->
## TapeDrives_DenyWrite_Access_2

<!-- TapeDrives_DenyWrite_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TapeDrives_DenyWrite_Access_2-Applicability-End -->

<!-- TapeDrives_DenyWrite_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/TapeDrives_DenyWrite_Access_2
```
<!-- TapeDrives_DenyWrite_Access_2-OmaUri-End -->

<!-- TapeDrives_DenyWrite_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to the Tape Drive removable storage class.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- TapeDrives_DenyWrite_Access_2-Description-End -->

<!-- TapeDrives_DenyWrite_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TapeDrives_DenyWrite_Access_2-Editable-End -->

<!-- TapeDrives_DenyWrite_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TapeDrives_DenyWrite_Access_2-DFProperties-End -->

<!-- TapeDrives_DenyWrite_Access_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TapeDrives_DenyWrite_Access_2 |
| Friendly Name | Tape Drives: Deny write access |
| Location | Computer Configuration |
| Path | System > Removable Storage Access |
| Registry Key Name | Software\Policies\Microsoft\Windows\RemovableStorageDevices\{53f5630b-b6bf-11d0-94f2-00a0c91efb8b} |
| Registry Value Name | Deny_Write |
| ADMX File Name | RemovableStorage.admx |
<!-- TapeDrives_DenyWrite_Access_2-AdmxBacked-End -->

<!-- TapeDrives_DenyWrite_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TapeDrives_DenyWrite_Access_2-Examples-End -->

<!-- TapeDrives_DenyWrite_Access_2-End -->

<!-- WPDDevices_DenyRead_Access_1-Begin -->
## WPDDevices_DenyRead_Access_1

<!-- WPDDevices_DenyRead_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WPDDevices_DenyRead_Access_1-Applicability-End -->

<!-- WPDDevices_DenyRead_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/WPDDevices_DenyRead_Access_1
```
<!-- WPDDevices_DenyRead_Access_1-OmaUri-End -->

<!-- WPDDevices_DenyRead_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- WPDDevices_DenyRead_Access_1-Description-End -->

<!-- WPDDevices_DenyRead_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WPDDevices_DenyRead_Access_1-Editable-End -->

<!-- WPDDevices_DenyRead_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WPDDevices_DenyRead_Access_1-DFProperties-End -->

<!-- WPDDevices_DenyRead_Access_1-AdmxBacked-Begin -->
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
<!-- WPDDevices_DenyRead_Access_1-AdmxBacked-End -->

<!-- WPDDevices_DenyRead_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WPDDevices_DenyRead_Access_1-Examples-End -->

<!-- WPDDevices_DenyRead_Access_1-End -->

<!-- WPDDevices_DenyRead_Access_2-Begin -->
## WPDDevices_DenyRead_Access_2

<!-- WPDDevices_DenyRead_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WPDDevices_DenyRead_Access_2-Applicability-End -->

<!-- WPDDevices_DenyRead_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/WPDDevices_DenyRead_Access_2
```
<!-- WPDDevices_DenyRead_Access_2-OmaUri-End -->

<!-- WPDDevices_DenyRead_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies read access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

- If you enable this policy setting, read access is denied to this removable storage class.

- If you disable or don't configure this policy setting, read access is allowed to this removable storage class.
<!-- WPDDevices_DenyRead_Access_2-Description-End -->

<!-- WPDDevices_DenyRead_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WPDDevices_DenyRead_Access_2-Editable-End -->

<!-- WPDDevices_DenyRead_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WPDDevices_DenyRead_Access_2-DFProperties-End -->

<!-- WPDDevices_DenyRead_Access_2-AdmxBacked-Begin -->
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
<!-- WPDDevices_DenyRead_Access_2-AdmxBacked-End -->

<!-- WPDDevices_DenyRead_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WPDDevices_DenyRead_Access_2-Examples-End -->

<!-- WPDDevices_DenyRead_Access_2-End -->

<!-- WPDDevices_DenyWrite_Access_1-Begin -->
## WPDDevices_DenyWrite_Access_1

<!-- WPDDevices_DenyWrite_Access_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WPDDevices_DenyWrite_Access_1-Applicability-End -->

<!-- WPDDevices_DenyWrite_Access_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/WPDDevices_DenyWrite_Access_1
```
<!-- WPDDevices_DenyWrite_Access_1-OmaUri-End -->

<!-- WPDDevices_DenyWrite_Access_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- WPDDevices_DenyWrite_Access_1-Description-End -->

<!-- WPDDevices_DenyWrite_Access_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WPDDevices_DenyWrite_Access_1-Editable-End -->

<!-- WPDDevices_DenyWrite_Access_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WPDDevices_DenyWrite_Access_1-DFProperties-End -->

<!-- WPDDevices_DenyWrite_Access_1-AdmxBacked-Begin -->
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
<!-- WPDDevices_DenyWrite_Access_1-AdmxBacked-End -->

<!-- WPDDevices_DenyWrite_Access_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WPDDevices_DenyWrite_Access_1-Examples-End -->

<!-- WPDDevices_DenyWrite_Access_1-End -->

<!-- WPDDevices_DenyWrite_Access_2-Begin -->
## WPDDevices_DenyWrite_Access_2

<!-- WPDDevices_DenyWrite_Access_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- WPDDevices_DenyWrite_Access_2-Applicability-End -->

<!-- WPDDevices_DenyWrite_Access_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_RemovableStorage/WPDDevices_DenyWrite_Access_2
```
<!-- WPDDevices_DenyWrite_Access_2-OmaUri-End -->

<!-- WPDDevices_DenyWrite_Access_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting denies write access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.

- If you enable this policy setting, write access is denied to this removable storage class.

- If you disable or don't configure this policy setting, write access is allowed to this removable storage class.
<!-- WPDDevices_DenyWrite_Access_2-Description-End -->

<!-- WPDDevices_DenyWrite_Access_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WPDDevices_DenyWrite_Access_2-Editable-End -->

<!-- WPDDevices_DenyWrite_Access_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WPDDevices_DenyWrite_Access_2-DFProperties-End -->

<!-- WPDDevices_DenyWrite_Access_2-AdmxBacked-Begin -->
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
<!-- WPDDevices_DenyWrite_Access_2-AdmxBacked-End -->

<!-- WPDDevices_DenyWrite_Access_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WPDDevices_DenyWrite_Access_2-Examples-End -->

<!-- WPDDevices_DenyWrite_Access_2-End -->

<!-- ADMX_RemovableStorage-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_RemovableStorage-CspMoreInfo-End -->

<!-- ADMX_RemovableStorage-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
