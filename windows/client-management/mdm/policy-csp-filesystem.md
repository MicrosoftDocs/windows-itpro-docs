---
title: FileSystem Policy CSP
description: Learn more about the FileSystem Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/30/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- FileSystem-Begin -->
# Policy CSP - FileSystem

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

[!INCLUDE [Windows Insider tip](includes/mdm-insider-csp-note.md)]

<!-- FileSystem-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FileSystem-Editable-End -->

<!-- DevDriveAttachPolicy-Begin -->
## DevDriveAttachPolicy

<!-- DevDriveAttachPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- DevDriveAttachPolicy-Applicability-End -->

<!-- DevDriveAttachPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/FileSystem/DevDriveAttachPolicy
```
<!-- DevDriveAttachPolicy-OmaUri-End -->

<!-- DevDriveAttachPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
Dev drive is a drive optimized for performance considering developer scenarios and by default no file system filters are attached to it. Filters listed in this setting will be allowed to attach even on a dev drive.

A reboot is required for this setting to take effect.
<!-- DevDriveAttachPolicy-Description-End -->

<!-- DevDriveAttachPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DevDriveAttachPolicy-Editable-End -->

<!-- DevDriveAttachPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DevDriveAttachPolicy-DFProperties-End -->

<!-- DevDriveAttachPolicy-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DevDriveAttachPolicy |
| Friendly Name | Dev drive filter attach policy |
| Location | Computer Configuration |
| Path | System > Filesystem |
| Registry Key Name | System\CurrentControlSet\Policies |
| ADMX File Name | filtermanager.admx |
<!-- DevDriveAttachPolicy-AdmxBacked-End -->

<!-- DevDriveAttachPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DevDriveAttachPolicy-Examples-End -->

<!-- DevDriveAttachPolicy-End -->

<!-- EnableDevDrive-Begin -->
## EnableDevDrive

<!-- EnableDevDrive-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows Insider Preview |
<!-- EnableDevDrive-Applicability-End -->

<!-- EnableDevDrive-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/FileSystem/EnableDevDrive
```
<!-- EnableDevDrive-OmaUri-End -->

<!-- EnableDevDrive-Description-Begin -->
<!-- Description-Source-ADMX -->
Dev drive or developer volume is a volume optimized for performance of developer scenarios. A developer volume allows an administrator to choose file system filters that are attached on the volume.

Disabling this setting will disallow creation of new developer volumes, existing developer volumes will mount as regular volumes.

If this setting isn't configured the default policy is to enable developer volumes while allowing antivirus filter to attach on a deveveloper volume. Further, if not configured, a local administrator can choose to not have antivirus filter attached to a developer volume.

A reboot is required for this setting to take effect.
<!-- EnableDevDrive-Description-End -->

<!-- EnableDevDrive-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableDevDrive-Editable-End -->

<!-- EnableDevDrive-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- EnableDevDrive-DFProperties-End -->

<!-- EnableDevDrive-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableDevDrive |
| Friendly Name | Enable dev drive |
| Location | Computer Configuration |
| Path | System > Filesystem |
| Registry Key Name | System\CurrentControlSet\Policies |
| Registry Value Name | FsEnableDevDrive |
| ADMX File Name | refs.admx |
<!-- EnableDevDrive-AdmxBacked-End -->

<!-- EnableDevDrive-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableDevDrive-Examples-End -->

<!-- EnableDevDrive-End -->

<!-- FileSystem-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- FileSystem-CspMoreInfo-End -->

<!-- FileSystem-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
