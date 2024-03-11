---
title: WindowsInkWorkspace Policy CSP
description: Learn more about the WindowsInkWorkspace Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsInkWorkspace-Begin -->
# Policy CSP - WindowsInkWorkspace

<!-- WindowsInkWorkspace-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsInkWorkspace-Editable-End -->

<!-- AllowSuggestedAppsInWindowsInkWorkspace-Begin -->
## AllowSuggestedAppsInWindowsInkWorkspace

<!-- AllowSuggestedAppsInWindowsInkWorkspace-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowSuggestedAppsInWindowsInkWorkspace-Applicability-End -->

<!-- AllowSuggestedAppsInWindowsInkWorkspace-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace
```
<!-- AllowSuggestedAppsInWindowsInkWorkspace-OmaUri-End -->

<!-- AllowSuggestedAppsInWindowsInkWorkspace-Description-Begin -->
<!-- Description-Source-ADMX -->
Allow suggested apps in Windows Ink Workspace.
<!-- AllowSuggestedAppsInWindowsInkWorkspace-Description-End -->

<!-- AllowSuggestedAppsInWindowsInkWorkspace-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSuggestedAppsInWindowsInkWorkspace-Editable-End -->

<!-- AllowSuggestedAppsInWindowsInkWorkspace-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSuggestedAppsInWindowsInkWorkspace-DFProperties-End -->

<!-- AllowSuggestedAppsInWindowsInkWorkspace-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowSuggestedAppsInWindowsInkWorkspace-AllowedValues-End -->

<!-- AllowSuggestedAppsInWindowsInkWorkspace-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSuggestedAppsInWindowsInkWorkspace |
| Friendly Name | Allow suggested apps in Windows Ink Workspace |
| Location | Computer Configuration |
| Path | Windows Components > Windows Ink Workspace |
| Registry Key Name | Software\Policies\Microsoft\WindowsInkWorkspace |
| Registry Value Name | AllowSuggestedAppsInWindowsInkWorkspace |
| ADMX File Name | WindowsInkWorkspace.admx |
<!-- AllowSuggestedAppsInWindowsInkWorkspace-GpMapping-End -->

<!-- AllowSuggestedAppsInWindowsInkWorkspace-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSuggestedAppsInWindowsInkWorkspace-Examples-End -->

<!-- AllowSuggestedAppsInWindowsInkWorkspace-End -->

<!-- AllowWindowsInkWorkspace-Begin -->
## AllowWindowsInkWorkspace

<!-- AllowWindowsInkWorkspace-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowWindowsInkWorkspace-Applicability-End -->

<!-- AllowWindowsInkWorkspace-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsInkWorkspace/AllowWindowsInkWorkspace
```
<!-- AllowWindowsInkWorkspace-OmaUri-End -->

<!-- AllowWindowsInkWorkspace-Description-Begin -->
<!-- Description-Source-ADMX -->
Allow Windows Ink Workspace.
<!-- AllowWindowsInkWorkspace-Description-End -->

<!-- AllowWindowsInkWorkspace-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowWindowsInkWorkspace-Editable-End -->

<!-- AllowWindowsInkWorkspace-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 2 |
<!-- AllowWindowsInkWorkspace-DFProperties-End -->

<!-- AllowWindowsInkWorkspace-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Access to ink workspace is disabled. The feature is turned off. |
| 1 | Ink workspace is enabled (feature is turned on), but the user can't access it above the lock screen. |
| 2 (Default) | Ink workspace is enabled (feature is turned on), and the user is allowed to use it above the lock screen. |
<!-- AllowWindowsInkWorkspace-AllowedValues-End -->

<!-- AllowWindowsInkWorkspace-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowWindowsInkWorkspace |
| Friendly Name | Allow Windows Ink Workspace |
| Element Name | Choose one of the following actions. |
| Location | Computer Configuration |
| Path | Windows Components > Windows Ink Workspace |
| Registry Key Name | Software\Policies\Microsoft\WindowsInkWorkspace |
| ADMX File Name | WindowsInkWorkspace.admx |
<!-- AllowWindowsInkWorkspace-GpMapping-End -->

<!-- AllowWindowsInkWorkspace-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowWindowsInkWorkspace-Examples-End -->

<!-- AllowWindowsInkWorkspace-End -->

<!-- WindowsInkWorkspace-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsInkWorkspace-CspMoreInfo-End -->

<!-- WindowsInkWorkspace-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
