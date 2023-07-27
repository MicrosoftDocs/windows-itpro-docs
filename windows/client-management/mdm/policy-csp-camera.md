---
title: Camera Policy CSP
description: Learn more about the Camera Area in Policy CSP.
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

<!-- Camera-Begin -->
# Policy CSP - Camera

<!-- Camera-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Camera-Editable-End -->

<!-- AllowCamera-Begin -->
## AllowCamera

<!-- AllowCamera-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1507 [10.0.10240] and later |
<!-- AllowCamera-Applicability-End -->

<!-- AllowCamera-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Camera/AllowCamera
```
<!-- AllowCamera-OmaUri-End -->

<!-- AllowCamera-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allow the use of Camera devices on the machine.

- If you enable or don't configure this policy setting, Camera devices will be enabled.

- If you disable this property setting, Camera devices will be disabled.
<!-- AllowCamera-Description-End -->

<!-- AllowCamera-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowCamera-Editable-End -->

<!-- AllowCamera-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowCamera-DFProperties-End -->

<!-- AllowCamera-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowCamera-AllowedValues-End -->

<!-- AllowCamera-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | L_AllowCamera |
| Friendly Name | Allow Use of Camera |
| Location | Computer Configuration |
| Path | Windows Components > Camera |
| Registry Key Name | software\Policies\Microsoft\Camera |
| Registry Value Name | AllowCamera |
| ADMX File Name | Camera.admx |
<!-- AllowCamera-GpMapping-End -->

<!-- AllowCamera-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowCamera-Examples-End -->

<!-- AllowCamera-End -->

<!-- Camera-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Camera-CspMoreInfo-End -->

<!-- Camera-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
