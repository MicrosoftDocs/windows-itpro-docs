---
title: ADMX_AttachmentManager Policy CSP
description: Learn more about the ADMX_AttachmentManager Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/20/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_AttachmentManager-Begin -->
# Policy CSP - ADMX_AttachmentManager

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_AttachmentManager-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_AttachmentManager-Editable-End -->

<!-- AM_EstimateFileHandlerRisk-Begin -->
## AM_EstimateFileHandlerRisk

<!-- AM_EstimateFileHandlerRisk-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AM_EstimateFileHandlerRisk-Applicability-End -->

<!-- AM_EstimateFileHandlerRisk-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AttachmentManager/AM_EstimateFileHandlerRisk
```
<!-- AM_EstimateFileHandlerRisk-OmaUri-End -->

<!-- AM_EstimateFileHandlerRisk-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the logic that Windows uses to determine the risk for file attachments.

Preferring the file handler instructs Windows to use the file handler data over the file type data. For example, trust notepad.exe, but don't trust .txt files.

Preferring the file type instructs Windows to use the file type data over the file handler data. For example, trust .txt files, regardless of the file handler.

Using both the file handler and type data is the most restrictive option. Windows chooses the more restrictive recommendation which will cause users to see more trust prompts than choosing the other options.

If you enable this policy setting, you can choose the order in which Windows processes risk assessment data.

If you disable this policy setting, Windows uses its default trust logic, which prefers the file handler over the file type.

If you do not configure this policy setting, Windows uses its default trust logic, which prefers the file handler over the file type.
<!-- AM_EstimateFileHandlerRisk-Description-End -->

<!-- AM_EstimateFileHandlerRisk-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AM_EstimateFileHandlerRisk-Editable-End -->

<!-- AM_EstimateFileHandlerRisk-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AM_EstimateFileHandlerRisk-DFProperties-End -->

<!-- AM_EstimateFileHandlerRisk-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AM_EstimateFileHandlerRisk |
| Friendly Name | Trust logic for file attachments |
| Location | User Configuration |
| Path | Windows Components > Attachment Manager |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Attachments |
| ADMX File Name | AttachmentManager.admx |
<!-- AM_EstimateFileHandlerRisk-AdmxBacked-End -->

<!-- AM_EstimateFileHandlerRisk-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AM_EstimateFileHandlerRisk-Examples-End -->

<!-- AM_EstimateFileHandlerRisk-End -->

<!-- AM_SetFileRiskLevel-Begin -->
## AM_SetFileRiskLevel

<!-- AM_SetFileRiskLevel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AM_SetFileRiskLevel-Applicability-End -->

<!-- AM_SetFileRiskLevel-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AttachmentManager/AM_SetFileRiskLevel
```
<!-- AM_SetFileRiskLevel-OmaUri-End -->

<!-- AM_SetFileRiskLevel-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to manage the default risk level for file types. To fully customize the risk level for file attachments, you may also need to configure the trust logic for file attachments.

High Risk: If the attachment is in the list of high-risk file types and is from the restricted zone, Windows blocks the user from accessing the file. If the file is from the Internet zone, Windows prompts the user before accessing the file.

Moderate Risk: If the attachment is in the list of moderate-risk file types and is from the restricted or Internet zone, Windows prompts the user before accessing the file.

Low Risk: If the attachment is in the list of low-risk file types, Windows will not prompt the user before accessing the file, regardless of the file's zone information.

If you enable this policy setting, you can specify the default risk level for file types.

If you disable this policy setting, Windows sets the default risk level to moderate.

If you do not configure this policy setting, Windows sets the default risk level to moderate.
<!-- AM_SetFileRiskLevel-Description-End -->

<!-- AM_SetFileRiskLevel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AM_SetFileRiskLevel-Editable-End -->

<!-- AM_SetFileRiskLevel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AM_SetFileRiskLevel-DFProperties-End -->

<!-- AM_SetFileRiskLevel-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AM_SetFileRiskLevel |
| Friendly Name | Default risk level for file attachments |
| Location | User Configuration |
| Path | Windows Components > Attachment Manager |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Associations |
| ADMX File Name | AttachmentManager.admx |
<!-- AM_SetFileRiskLevel-AdmxBacked-End -->

<!-- AM_SetFileRiskLevel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AM_SetFileRiskLevel-Examples-End -->

<!-- AM_SetFileRiskLevel-End -->

<!-- AM_SetHighRiskInclusion-Begin -->
## AM_SetHighRiskInclusion

<!-- AM_SetHighRiskInclusion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AM_SetHighRiskInclusion-Applicability-End -->

<!-- AM_SetHighRiskInclusion-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AttachmentManager/AM_SetHighRiskInclusion
```
<!-- AM_SetHighRiskInclusion-OmaUri-End -->

<!-- AM_SetHighRiskInclusion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the list of high-risk file types. If the file attachment is in the list of high-risk file types and is from the restricted zone, Windows blocks the user from accessing the file. If the file is from the Internet zone, Windows prompts the user before accessing the file. This inclusion list takes precedence over the medium-risk and low-risk inclusion lists (where an extension is listed in more than one inclusion list).

If you enable this policy setting, you can create a custom list of high-risk file types.

If you disable this policy setting, Windows uses its built-in list of file types that pose a high risk.

If you do not configure this policy setting, Windows uses its built-in list of high-risk file types.
<!-- AM_SetHighRiskInclusion-Description-End -->

<!-- AM_SetHighRiskInclusion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AM_SetHighRiskInclusion-Editable-End -->

<!-- AM_SetHighRiskInclusion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AM_SetHighRiskInclusion-DFProperties-End -->

<!-- AM_SetHighRiskInclusion-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AM_SetHighRiskInclusion |
| Friendly Name | Inclusion list for high risk file types |
| Location | User Configuration |
| Path | Windows Components > Attachment Manager |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Associations |
| ADMX File Name | AttachmentManager.admx |
<!-- AM_SetHighRiskInclusion-AdmxBacked-End -->

<!-- AM_SetHighRiskInclusion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AM_SetHighRiskInclusion-Examples-End -->

<!-- AM_SetHighRiskInclusion-End -->

<!-- AM_SetLowRiskInclusion-Begin -->
## AM_SetLowRiskInclusion

<!-- AM_SetLowRiskInclusion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AM_SetLowRiskInclusion-Applicability-End -->

<!-- AM_SetLowRiskInclusion-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AttachmentManager/AM_SetLowRiskInclusion
```
<!-- AM_SetLowRiskInclusion-OmaUri-End -->

<!-- AM_SetLowRiskInclusion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the list of low-risk file types. If the attachment is in the list of low-risk file types, Windows will not prompt the user before accessing the file, regardless of the file's zone information. This inclusion list overrides the list of high-risk file types built into Windows and has a lower precedence than the high-risk or medium-risk inclusion lists (where an extension is listed in more than one inclusion list).

If you enable this policy setting, you can specify file types that pose a low risk.

If you disable this policy setting, Windows uses its default trust logic.

If you do not configure this policy setting, Windows uses its default trust logic.
<!-- AM_SetLowRiskInclusion-Description-End -->

<!-- AM_SetLowRiskInclusion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AM_SetLowRiskInclusion-Editable-End -->

<!-- AM_SetLowRiskInclusion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AM_SetLowRiskInclusion-DFProperties-End -->

<!-- AM_SetLowRiskInclusion-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AM_SetLowRiskInclusion |
| Friendly Name | Inclusion list for low file types |
| Location | User Configuration |
| Path | Windows Components > Attachment Manager |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Associations |
| ADMX File Name | AttachmentManager.admx |
<!-- AM_SetLowRiskInclusion-AdmxBacked-End -->

<!-- AM_SetLowRiskInclusion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AM_SetLowRiskInclusion-Examples-End -->

<!-- AM_SetLowRiskInclusion-End -->

<!-- AM_SetModRiskInclusion-Begin -->
## AM_SetModRiskInclusion

<!-- AM_SetModRiskInclusion-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- AM_SetModRiskInclusion-Applicability-End -->

<!-- AM_SetModRiskInclusion-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_AttachmentManager/AM_SetModRiskInclusion
```
<!-- AM_SetModRiskInclusion-OmaUri-End -->

<!-- AM_SetModRiskInclusion-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the list of moderate-risk file types. If the attachment is in the list of moderate-risk file types and is from the restricted or Internet zone, Windows prompts the user before accessing the file. This inclusion list overrides the list of potentially high-risk file types built into Windows and it takes precedence over the low-risk inclusion list but has a lower precedence than the high-risk inclusion list (where an extension is listed in more than one inclusion list).

If you enable this policy setting, you can specify file types which pose a moderate risk.

If you disable this policy setting, Windows uses its default trust logic.

If you do not configure this policy setting, Windows uses its default trust logic.
<!-- AM_SetModRiskInclusion-Description-End -->

<!-- AM_SetModRiskInclusion-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AM_SetModRiskInclusion-Editable-End -->

<!-- AM_SetModRiskInclusion-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- AM_SetModRiskInclusion-DFProperties-End -->

<!-- AM_SetModRiskInclusion-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | AM_SetModRiskInclusion |
| Friendly Name | Inclusion list for moderate risk file types |
| Location | User Configuration |
| Path | Windows Components > Attachment Manager |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Associations |
| ADMX File Name | AttachmentManager.admx |
<!-- AM_SetModRiskInclusion-AdmxBacked-End -->

<!-- AM_SetModRiskInclusion-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AM_SetModRiskInclusion-Examples-End -->

<!-- AM_SetModRiskInclusion-End -->

<!-- ADMX_AttachmentManager-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_AttachmentManager-CspMoreInfo-End -->

<!-- ADMX_AttachmentManager-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
