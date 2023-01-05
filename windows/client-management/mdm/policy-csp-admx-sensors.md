---
title: ADMX_Sensors Policy CSP
description: Learn more about the ADMX_Sensors Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/05/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_Sensors-Begin -->
# Policy CSP - ADMX_Sensors

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_Sensors-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_Sensors-Editable-End -->

<!-- DisableLocationScripting_2-Begin -->
## DisableLocationScripting_2

<!-- DisableLocationScripting_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLocationScripting_2-Applicability-End -->

<!-- DisableLocationScripting_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Sensors/DisableLocationScripting_2
```
<!-- DisableLocationScripting_2-OmaUri-End -->

<!-- DisableLocationScripting_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off scripting for the location feature.

If you enable this policy setting, scripts for the location feature will not run.

If you disable or do not configure this policy setting, all location scripts will run.
<!-- DisableLocationScripting_2-Description-End -->

<!-- DisableLocationScripting_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLocationScripting_2-Editable-End -->

<!-- DisableLocationScripting_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLocationScripting_2-DFProperties-End -->

<!-- DisableLocationScripting_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLocationScripting |
| Friendly Name | Turn off location scripting |
| Location | Computer Configuration |
| Path | Windows Components > Location and Sensors |
| Registry Key Name | Software\Policies\Microsoft\Windows\LocationAndSensors |
| Registry Value Name | DisableLocationScripting |
| ADMX File Name | Sensors.admx |
<!-- DisableLocationScripting_2-AdmxBacked-End -->

<!-- DisableLocationScripting_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLocationScripting_2-Examples-End -->

<!-- DisableLocationScripting_2-End -->

<!-- DisableSensors_2-Begin -->
## DisableSensors_2

<!-- DisableSensors_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableSensors_2-Applicability-End -->

<!-- DisableSensors_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_Sensors/DisableSensors_2
```
<!-- DisableSensors_2-OmaUri-End -->

<!-- DisableSensors_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the sensor feature for this computer.

If you enable this policy setting, the sensor feature is turned off, and all programs on this computer cannot use the sensor feature.

If you disable or do not configure this policy setting, all programs on this computer can use the sensor feature.
<!-- DisableSensors_2-Description-End -->

<!-- DisableSensors_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSensors_2-Editable-End -->

<!-- DisableSensors_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSensors_2-DFProperties-End -->

<!-- DisableSensors_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSensors |
| Friendly Name | Turn off sensors |
| Location | Computer Configuration |
| Path | Windows Components > Location and Sensors |
| Registry Key Name | Software\Policies\Microsoft\Windows\LocationAndSensors |
| Registry Value Name | DisableSensors |
| ADMX File Name | Sensors.admx |
<!-- DisableSensors_2-AdmxBacked-End -->

<!-- DisableSensors_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSensors_2-Examples-End -->

<!-- DisableSensors_2-End -->

<!-- DisableLocation_1-Begin -->
## DisableLocation_1

<!-- DisableLocation_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLocation_1-Applicability-End -->

<!-- DisableLocation_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Sensors/DisableLocation_1
```
<!-- DisableLocation_1-OmaUri-End -->

<!-- DisableLocation_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the location feature for this computer.

If you enable this policy setting, the location feature is turned off, and all programs on this computer are prevented from using location information from the location feature.

If you disable or do not configure this policy setting, all programs on this computer will not be prevented from using location information from the location feature.
<!-- DisableLocation_1-Description-End -->

<!-- DisableLocation_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLocation_1-Editable-End -->

<!-- DisableLocation_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLocation_1-DFProperties-End -->

<!-- DisableLocation_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLocation |
| Friendly Name | Turn off location |
| Location | User Configuration |
| Path | Windows Components > Location and Sensors |
| Registry Key Name | Software\Policies\Microsoft\Windows\LocationAndSensors |
| Registry Value Name | DisableLocation |
| ADMX File Name | Sensors.admx |
<!-- DisableLocation_1-AdmxBacked-End -->

<!-- DisableLocation_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLocation_1-Examples-End -->

<!-- DisableLocation_1-End -->

<!-- DisableLocationScripting_1-Begin -->
## DisableLocationScripting_1

<!-- DisableLocationScripting_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableLocationScripting_1-Applicability-End -->

<!-- DisableLocationScripting_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Sensors/DisableLocationScripting_1
```
<!-- DisableLocationScripting_1-OmaUri-End -->

<!-- DisableLocationScripting_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off scripting for the location feature.

If you enable this policy setting, scripts for the location feature will not run.

If you disable or do not configure this policy setting, all location scripts will run.
<!-- DisableLocationScripting_1-Description-End -->

<!-- DisableLocationScripting_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableLocationScripting_1-Editable-End -->

<!-- DisableLocationScripting_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableLocationScripting_1-DFProperties-End -->

<!-- DisableLocationScripting_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableLocationScripting |
| Friendly Name | Turn off location scripting |
| Location | User Configuration |
| Path | Windows Components > Location and Sensors |
| Registry Key Name | Software\Policies\Microsoft\Windows\LocationAndSensors |
| Registry Value Name | DisableLocationScripting |
| ADMX File Name | Sensors.admx |
<!-- DisableLocationScripting_1-AdmxBacked-End -->

<!-- DisableLocationScripting_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableLocationScripting_1-Examples-End -->

<!-- DisableLocationScripting_1-End -->

<!-- DisableSensors_1-Begin -->
## DisableSensors_1

<!-- DisableSensors_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :x: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- DisableSensors_1-Applicability-End -->

<!-- DisableSensors_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_Sensors/DisableSensors_1
```
<!-- DisableSensors_1-OmaUri-End -->

<!-- DisableSensors_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting turns off the sensor feature for this computer.

If you enable this policy setting, the sensor feature is turned off, and all programs on this computer cannot use the sensor feature.

If you disable or do not configure this policy setting, all programs on this computer can use the sensor feature.
<!-- DisableSensors_1-Description-End -->

<!-- DisableSensors_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DisableSensors_1-Editable-End -->

<!-- DisableSensors_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DisableSensors_1-DFProperties-End -->

<!-- DisableSensors_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DisableSensors |
| Friendly Name | Turn off sensors |
| Location | User Configuration |
| Path | Windows Components > Location and Sensors |
| Registry Key Name | Software\Policies\Microsoft\Windows\LocationAndSensors |
| Registry Value Name | DisableSensors |
| ADMX File Name | Sensors.admx |
<!-- DisableSensors_1-AdmxBacked-End -->

<!-- DisableSensors_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DisableSensors_1-Examples-End -->

<!-- DisableSensors_1-End -->

<!-- ADMX_Sensors-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_Sensors-CspMoreInfo-End -->

<!-- ADMX_Sensors-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
