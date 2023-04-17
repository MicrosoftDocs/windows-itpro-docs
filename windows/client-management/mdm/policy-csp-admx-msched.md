---
title: ADMX_msched Policy CSP
description: Learn more about the ADMX_msched Area in Policy CSP.
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

<!-- ADMX_msched-Begin -->
# Policy CSP - ADMX_msched

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_msched-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_msched-Editable-End -->

<!-- ActivationBoundaryPolicy-Begin -->
## ActivationBoundaryPolicy

<!-- ActivationBoundaryPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- ActivationBoundaryPolicy-Applicability-End -->

<!-- ActivationBoundaryPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_msched/ActivationBoundaryPolicy
```
<!-- ActivationBoundaryPolicy-OmaUri-End -->

<!-- ActivationBoundaryPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Automatic Maintenance activation boundary.

The maintenance activation boundary is the daily schduled time at which Automatic Maintenance starts

- If you enable this policy setting, this will override the default daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel.

- If you disable or do not configure this policy setting, the daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel will apply.
<!-- ActivationBoundaryPolicy-Description-End -->

<!-- ActivationBoundaryPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ActivationBoundaryPolicy-Editable-End -->

<!-- ActivationBoundaryPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ActivationBoundaryPolicy-DFProperties-End -->

<!-- ActivationBoundaryPolicy-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ActivationBoundaryPolicy |
| Friendly Name | Automatic Maintenance Activation Boundary |
| Location | Computer Configuration |
| Path | Windows Components > Maintenance Scheduler |
| Registry Key Name | Software\Policies\Microsoft\Windows\Task Scheduler\Maintenance |
| ADMX File Name | msched.admx |
<!-- ActivationBoundaryPolicy-AdmxBacked-End -->

<!-- ActivationBoundaryPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ActivationBoundaryPolicy-Examples-End -->

<!-- ActivationBoundaryPolicy-End -->

<!-- RandomDelayPolicy-Begin -->
## RandomDelayPolicy

<!-- RandomDelayPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- RandomDelayPolicy-Applicability-End -->

<!-- RandomDelayPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_msched/RandomDelayPolicy
```
<!-- RandomDelayPolicy-OmaUri-End -->

<!-- RandomDelayPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure Automatic Maintenance activation random delay.

The maintenance random delay is the amount of time up to which Automatic Maintenance will delay starting from its Activation Boundary.

- If you enable this policy setting, Automatic Maintenance will delay starting from its Activation Boundary, by upto this time.

- If you do not configure this policy setting, 4 hour random delay will be applied to Automatic Maintenance.

- If you disable this policy setting, no random delay will be applied to Automatic Maintenance.
<!-- RandomDelayPolicy-Description-End -->

<!-- RandomDelayPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RandomDelayPolicy-Editable-End -->

<!-- RandomDelayPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- RandomDelayPolicy-DFProperties-End -->

<!-- RandomDelayPolicy-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | RandomDelayPolicy |
| Friendly Name | Automatic Maintenance Random Delay |
| Location | Computer Configuration |
| Path | Windows Components > Maintenance Scheduler |
| Registry Key Name | Software\Policies\Microsoft\Windows\Task Scheduler\Maintenance |
| Registry Value Name | Randomized |
| ADMX File Name | msched.admx |
<!-- RandomDelayPolicy-AdmxBacked-End -->

<!-- RandomDelayPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RandomDelayPolicy-Examples-End -->

<!-- RandomDelayPolicy-End -->

<!-- ADMX_msched-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_msched-CspMoreInfo-End -->

<!-- ADMX_msched-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
