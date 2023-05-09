---
title: ADMX_AdmPwd Policy CSP
description: Learn more about the ADMX_AdmPwd Area in Policy CSP.
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

<!-- ADMX_AdmPwd-Begin -->
# Policy CSP - ADMX_AdmPwd

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_AdmPwd-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_AdmPwd-Editable-End -->

<!-- POL_AdmPwd-Begin -->
## POL_AdmPwd

<!-- POL_AdmPwd-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- POL_AdmPwd-Applicability-End -->

<!-- POL_AdmPwd-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AdmPwd/POL_AdmPwd
```
<!-- POL_AdmPwd-OmaUri-End -->

<!-- POL_AdmPwd-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- POL_AdmPwd-Description-End -->

<!-- POL_AdmPwd-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy setting enables management of password for local administrator account.
If you enable this setting, local administrator password is managed.
If you disable or not configure this setting, local administrator password is NOT managed.
<!-- POL_AdmPwd-Editable-End -->

<!-- POL_AdmPwd-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- POL_AdmPwd-DFProperties-End -->

<!-- POL_AdmPwd-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | POL_AdmPwd |
| ADMX File Name | AdmPwd.admx |
<!-- POL_AdmPwd-AdmxBacked-End -->

<!-- POL_AdmPwd-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- POL_AdmPwd-Examples-End -->

<!-- POL_AdmPwd-End -->

<!-- POL_AdmPwd_AdminName-Begin -->
## POL_AdmPwd_AdminName

<!-- POL_AdmPwd_AdminName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- POL_AdmPwd_AdminName-Applicability-End -->

<!-- POL_AdmPwd_AdminName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AdmPwd/POL_AdmPwd_AdminName
```
<!-- POL_AdmPwd_AdminName-OmaUri-End -->

<!-- POL_AdmPwd_AdminName-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- POL_AdmPwd_AdminName-Description-End -->

<!-- POL_AdmPwd_AdminName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
When you enable this setting, planned password expiration longer than password age dictated by "Password Settings" policy is NOT allowed. When such expiration is detected, password is changed immediately and password expiration is set according to policy.

When you disable or don't configure this setting, password expiration time may be longer than required by "Password Settings" policy.
<!-- POL_AdmPwd_AdminName-Editable-End -->

<!-- POL_AdmPwd_AdminName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- POL_AdmPwd_AdminName-DFProperties-End -->

<!-- POL_AdmPwd_AdminName-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | POL_AdmPwd_AdminName |
| ADMX File Name | AdmPwd.admx |
<!-- POL_AdmPwd_AdminName-AdmxBacked-End -->

<!-- POL_AdmPwd_AdminName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- POL_AdmPwd_AdminName-Examples-End -->

<!-- POL_AdmPwd_AdminName-End -->

<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-Begin -->
## POL_AdmPwd_DontAllowPwdExpirationBehindPolicy

<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-Applicability-End -->

<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AdmPwd/POL_AdmPwd_DontAllowPwdExpirationBehindPolicy
```
<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-OmaUri-End -->

<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-Description-End -->

<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
When you enable this setting, planned password expiration longer than password age dictated by "Password Settings" policy is NOT allowed. When such expiration is detected, password is changed immediately and password expiration is set according to policy.

When you disable or don't configure this setting, password expiration time may be longer than required by "Password Settings" policy.
<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-Editable-End -->

<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-DFProperties-End -->

<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | POL_AdmPwd_DontAllowPwdExpirationBehindPolicy |
| ADMX File Name | AdmPwd.admx |
<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-AdmxBacked-End -->

<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-Examples-End -->

<!-- POL_AdmPwd_DontAllowPwdExpirationBehindPolicy-End -->

<!-- POL_AdmPwd_Enabled-Begin -->
## POL_AdmPwd_Enabled

<!-- POL_AdmPwd_Enabled-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- POL_AdmPwd_Enabled-Applicability-End -->

<!-- POL_AdmPwd_Enabled-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_AdmPwd/POL_AdmPwd_Enabled
```
<!-- POL_AdmPwd_Enabled-OmaUri-End -->

<!-- POL_AdmPwd_Enabled-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- POL_AdmPwd_Enabled-Description-End -->

<!-- POL_AdmPwd_Enabled-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy enables the management of password for local administrator account

If you enable this setting, local administrator password is managed.

If you disable or not configure this setting, local administrator password is NOT managed.
<!-- POL_AdmPwd_Enabled-Editable-End -->

<!-- POL_AdmPwd_Enabled-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- POL_AdmPwd_Enabled-DFProperties-End -->

<!-- POL_AdmPwd_Enabled-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | POL_AdmPwd_Enabled |
| ADMX File Name | AdmPwd.admx |
<!-- POL_AdmPwd_Enabled-AdmxBacked-End -->

<!-- POL_AdmPwd_Enabled-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- POL_AdmPwd_Enabled-Examples-End -->

<!-- POL_AdmPwd_Enabled-End -->

<!-- ADMX_AdmPwd-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_AdmPwd-CspMoreInfo-End -->

<!-- ADMX_AdmPwd-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
