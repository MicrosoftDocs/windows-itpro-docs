---
title: ADMX_MobilePCMobilityCenter Policy CSP
description: Learn more about the ADMX_MobilePCMobilityCenter Area in Policy CSP.
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

<!-- ADMX_MobilePCMobilityCenter-Begin -->
# Policy CSP - ADMX_MobilePCMobilityCenter

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_MobilePCMobilityCenter-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MobilePCMobilityCenter-Editable-End -->

<!-- MobilityCenterEnable_1-Begin -->
## MobilityCenterEnable_1

<!-- MobilityCenterEnable_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- MobilityCenterEnable_1-Applicability-End -->

<!-- MobilityCenterEnable_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_MobilePCMobilityCenter/MobilityCenterEnable_1
```
<!-- MobilityCenterEnable_1-OmaUri-End -->

<!-- MobilityCenterEnable_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off Windows Mobility Center.

- If you enable this policy setting, the user is unable to invoke Windows Mobility Center. The Windows Mobility Center UI is removed from all shell entry points and the .exe file does not launch it.

- If you disable this policy setting, the user is able to invoke Windows Mobility Center and the .exe file launches it.

- If you do not configure this policy setting, Windows Mobility Center is on by default.
<!-- MobilityCenterEnable_1-Description-End -->

<!-- MobilityCenterEnable_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MobilityCenterEnable_1-Editable-End -->

<!-- MobilityCenterEnable_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MobilityCenterEnable_1-DFProperties-End -->

<!-- MobilityCenterEnable_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MobilityCenterEnable_1 |
| Friendly Name | Turn off Windows Mobility Center |
| Location | User Configuration |
| Path | Windows Components > Windows Mobility Center |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\MobilityCenter |
| Registry Value Name | NoMobilityCenter |
| ADMX File Name | MobilePCMobilityCenter.admx |
<!-- MobilityCenterEnable_1-AdmxBacked-End -->

<!-- MobilityCenterEnable_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MobilityCenterEnable_1-Examples-End -->

<!-- MobilityCenterEnable_1-End -->

<!-- MobilityCenterEnable_2-Begin -->
## MobilityCenterEnable_2

<!-- MobilityCenterEnable_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- MobilityCenterEnable_2-Applicability-End -->

<!-- MobilityCenterEnable_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MobilePCMobilityCenter/MobilityCenterEnable_2
```
<!-- MobilityCenterEnable_2-OmaUri-End -->

<!-- MobilityCenterEnable_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off Windows Mobility Center.

- If you enable this policy setting, the user is unable to invoke Windows Mobility Center. The Windows Mobility Center UI is removed from all shell entry points and the .exe file does not launch it.

- If you disable this policy setting, the user is able to invoke Windows Mobility Center and the .exe file launches it.

- If you do not configure this policy setting, Windows Mobility Center is on by default.
<!-- MobilityCenterEnable_2-Description-End -->

<!-- MobilityCenterEnable_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- MobilityCenterEnable_2-Editable-End -->

<!-- MobilityCenterEnable_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- MobilityCenterEnable_2-DFProperties-End -->

<!-- MobilityCenterEnable_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | MobilityCenterEnable_2 |
| Friendly Name | Turn off Windows Mobility Center |
| Location | Computer Configuration |
| Path | Windows Components > Windows Mobility Center |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\MobilityCenter |
| Registry Value Name | NoMobilityCenter |
| ADMX File Name | MobilePCMobilityCenter.admx |
<!-- MobilityCenterEnable_2-AdmxBacked-End -->

<!-- MobilityCenterEnable_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- MobilityCenterEnable_2-Examples-End -->

<!-- MobilityCenterEnable_2-End -->

<!-- ADMX_MobilePCMobilityCenter-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_MobilePCMobilityCenter-CspMoreInfo-End -->

<!-- ADMX_MobilePCMobilityCenter-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
