---
title: ADMX_PenTraining Policy CSP
description: Learn more about the ADMX_PenTraining Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_PenTraining-Begin -->
# Policy CSP - ADMX_PenTraining

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_PenTraining-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_PenTraining-Editable-End -->

<!-- PenTrainingOff_1-Begin -->
## PenTrainingOff_1

<!-- PenTrainingOff_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PenTrainingOff_1-Applicability-End -->

<!-- PenTrainingOff_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_PenTraining/PenTrainingOff_1
```
<!-- PenTrainingOff_1-OmaUri-End -->

<!-- PenTrainingOff_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Turns off Tablet PC Pen Training.

- If you enable this policy setting, users cannot open Tablet PC Pen Training.

- If you disable or do not configure this policy setting, users can open Tablet PC Pen Training.
<!-- PenTrainingOff_1-Description-End -->

<!-- PenTrainingOff_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PenTrainingOff_1-Editable-End -->

<!-- PenTrainingOff_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PenTrainingOff_1-DFProperties-End -->

<!-- PenTrainingOff_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PenTrainingOff_1 |
| Friendly Name | Turn off Tablet PC Pen Training |
| Location | User Configuration |
| Path | WindowsComponents > Tablet PC > Tablet PC Pen Training |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PenTraining |
| Registry Value Name | DisablePenTraining |
| ADMX File Name | PenTraining.admx |
<!-- PenTrainingOff_1-AdmxBacked-End -->

<!-- PenTrainingOff_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PenTrainingOff_1-Examples-End -->

<!-- PenTrainingOff_1-End -->

<!-- PenTrainingOff_2-Begin -->
## PenTrainingOff_2

<!-- PenTrainingOff_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- PenTrainingOff_2-Applicability-End -->

<!-- PenTrainingOff_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PenTraining/PenTrainingOff_2
```
<!-- PenTrainingOff_2-OmaUri-End -->

<!-- PenTrainingOff_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Turns off Tablet PC Pen Training.

- If you enable this policy setting, users cannot open Tablet PC Pen Training.

- If you disable or do not configure this policy setting, users can open Tablet PC Pen Training.
<!-- PenTrainingOff_2-Description-End -->

<!-- PenTrainingOff_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PenTrainingOff_2-Editable-End -->

<!-- PenTrainingOff_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PenTrainingOff_2-DFProperties-End -->

<!-- PenTrainingOff_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PenTrainingOff_2 |
| Friendly Name | Turn off Tablet PC Pen Training |
| Location | Computer Configuration |
| Path | WindowsComponents > Tablet PC > Tablet PC Pen Training |
| Registry Key Name | SOFTWARE\Policies\Microsoft\PenTraining |
| Registry Value Name | DisablePenTraining |
| ADMX File Name | PenTraining.admx |
<!-- PenTrainingOff_2-AdmxBacked-End -->

<!-- PenTrainingOff_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PenTrainingOff_2-Examples-End -->

<!-- PenTrainingOff_2-End -->

<!-- ADMX_PenTraining-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_PenTraining-CspMoreInfo-End -->

<!-- ADMX_PenTraining-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
