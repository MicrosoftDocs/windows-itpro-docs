---
title: ADMX_FramePanes Policy CSP
description: Learn more about the ADMX_FramePanes Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/03/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_FramePanes-Begin -->
# Policy CSP - ADMX_FramePanes

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_FramePanes-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_FramePanes-Editable-End -->

<!-- NoPreviewPane-Begin -->
## NoPreviewPane

<!-- NoPreviewPane-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoPreviewPane-Applicability-End -->

<!-- NoPreviewPane-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FramePanes/NoPreviewPane
```
<!-- NoPreviewPane-OmaUri-End -->

<!-- NoPreviewPane-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting shows or hides the Details Pane in File Explorer.

If you enable this policy setting and configure it to hide the pane, the Details Pane in File Explorer is hidden and cannot be turned on by the user.

If you enable this policy setting and configure it to show the pane, the Details Pane is always visible and cannot be hidden by the user.

**Note**:  This has a side effect of not being able to toggle to the Preview Pane since the two cannot be displayed at the same time.

If you disable, or do not configure this policy setting, the Details Pane is hidden by default and can be displayed by the user. This is the default policy setting.
<!-- NoPreviewPane-Description-End -->

<!-- NoPreviewPane-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoPreviewPane-Editable-End -->

<!-- NoPreviewPane-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoPreviewPane-DFProperties-End -->

<!-- NoPreviewPane-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoPreviewPane |
| Friendly Name | Turn on or off details pane |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Explorer Frame Pane |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| ADMX File Name | FramePanes.admx |
<!-- NoPreviewPane-AdmxBacked-End -->

<!-- NoPreviewPane-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoPreviewPane-Examples-End -->

<!-- NoPreviewPane-End -->

<!-- NoReadingPane-Begin -->
## NoReadingPane

<!-- NoReadingPane-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- NoReadingPane-Applicability-End -->

<!-- NoReadingPane-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_FramePanes/NoReadingPane
```
<!-- NoReadingPane-OmaUri-End -->

<!-- NoReadingPane-Description-Begin -->
<!-- Description-Source-ADMX -->
Hides the Preview Pane in File Explorer.

If you enable this policy setting, the Preview Pane in File Explorer is hidden and cannot be turned on by the user.

If you disable, or do not configure this setting, the Preview Pane is hidden by default and can be displayed by the user.
<!-- NoReadingPane-Description-End -->

<!-- NoReadingPane-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- NoReadingPane-Editable-End -->

<!-- NoReadingPane-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- NoReadingPane-DFProperties-End -->

<!-- NoReadingPane-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | NoReadingPane |
| Friendly Name | Turn off Preview Pane |
| Location | User Configuration |
| Path | WindowsComponents > File Explorer > Explorer Frame Pane |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoReadingPane |
| ADMX File Name | FramePanes.admx |
<!-- NoReadingPane-AdmxBacked-End -->

<!-- NoReadingPane-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- NoReadingPane-Examples-End -->

<!-- NoReadingPane-End -->

<!-- ADMX_FramePanes-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_FramePanes-CspMoreInfo-End -->

<!-- ADMX_FramePanes-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
