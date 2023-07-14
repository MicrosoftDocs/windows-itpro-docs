---
title: DataUsage Policy CSP
description: Learn more about the DataUsage Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- DataUsage-Begin -->
# Policy CSP - DataUsage

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- DataUsage-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DataUsage-Editable-End -->

<!-- SetCost3G-Begin -->
## SetCost3G

<!-- SetCost3G-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SetCost3G-Applicability-End -->

<!-- SetCost3G-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DataUsage/SetCost3G
```
<!-- SetCost3G-OmaUri-End -->

<!-- SetCost3G-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the cost of 3G connections on the local machine.

- If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all 3G connections on the local machine:

- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints.

- Fixed: Use of this connection isn't restricted by usage charges and capacity constraints up to a certain data limit.

- Variable: This connection is costed on a per byte basis.

- If this policy setting is disabled or isn't configured, the cost of 3G connections is Fixed by default.
<!-- SetCost3G-Description-End -->

<!-- SetCost3G-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> This policy is deprecated.
<!-- SetCost3G-Editable-End -->

<!-- SetCost3G-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetCost3G-DFProperties-End -->

<!-- SetCost3G-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetCost3G |
| Friendly Name | Set 3G Cost |
| Location | Computer Configuration |
| Path | Network > WWAN Service > WWAN Media Cost |
| Registry Key Name | Software\Policies\Microsoft\Windows\WwanSvc\NetCost |
| ADMX File Name | wwansvc.admx |
<!-- SetCost3G-AdmxBacked-End -->

<!-- SetCost3G-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetCost3G-Examples-End -->

<!-- SetCost3G-End -->

<!-- SetCost4G-Begin -->
## SetCost4G

<!-- SetCost4G-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- SetCost4G-Applicability-End -->

<!-- SetCost4G-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DataUsage/SetCost4G
```
<!-- SetCost4G-OmaUri-End -->

<!-- SetCost4G-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting configures the cost of 4G connections on the local machine.

- If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all 4G connections on the local machine:

- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints.

- Fixed: Use of this connection isn't restricted by usage charges and capacity constraints up to a certain data limit.

- Variable: This connection is costed on a per byte basis.

- If this policy setting is disabled or isn't configured, the cost of 4G connections is Fixed by default.
<!-- SetCost4G-Description-End -->

<!-- SetCost4G-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SetCost4G-Editable-End -->

<!-- SetCost4G-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SetCost4G-DFProperties-End -->

<!-- SetCost4G-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SetCost4G |
| Friendly Name | Set 4G Cost |
| Location | Computer Configuration |
| Path | Network > WWAN Service > WWAN Media Cost |
| Registry Key Name | Software\Policies\Microsoft\Windows\WwanSvc\NetCost |
| ADMX File Name | wwansvc.admx |
<!-- SetCost4G-AdmxBacked-End -->

<!-- SetCost4G-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SetCost4G-Examples-End -->

<!-- SetCost4G-End -->

<!-- DataUsage-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DataUsage-CspMoreInfo-End -->

<!-- DataUsage-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
