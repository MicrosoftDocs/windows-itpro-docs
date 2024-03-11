---
title: TaskManager Policy CSP
description: Learn more about the TaskManager Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- TaskManager-Begin -->
# Policy CSP - TaskManager

<!-- TaskManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TaskManager-Editable-End -->

<!-- AllowEndTask-Begin -->
## AllowEndTask

<!-- AllowEndTask-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1809 [10.0.17763] and later |
<!-- AllowEndTask-Applicability-End -->

<!-- AllowEndTask-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TaskManager/AllowEndTask
```
<!-- AllowEndTask-OmaUri-End -->

<!-- AllowEndTask-Description-Begin -->
<!-- Description-Source-DDF -->
This setting determines whether non-administrators can use Task Manager to end tasks - enabled (1) or disabled (0). Default: enabled.
<!-- AllowEndTask-Description-End -->

<!-- AllowEndTask-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowEndTask-Editable-End -->

<!-- AllowEndTask-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowEndTask-DFProperties-End -->

<!-- AllowEndTask-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. EndTask functionality is blocked in TaskManager. |
| 1 (Default) | Enabled. Users can perform EndTask in TaskManager. |
<!-- AllowEndTask-AllowedValues-End -->

<!-- AllowEndTask-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowEndTask-Examples-End -->

<!-- AllowEndTask-End -->

<!-- TaskManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- TaskManager-CspMoreInfo-End -->

<!-- TaskManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
