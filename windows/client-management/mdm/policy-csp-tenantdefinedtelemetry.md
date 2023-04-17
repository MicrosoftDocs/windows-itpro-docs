---
title: TenantDefinedTelemetry Policy CSP
description: Learn more about the TenantDefinedTelemetry Area in Policy CSP.
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

<!-- TenantDefinedTelemetry-Begin -->
# Policy CSP - TenantDefinedTelemetry

<!-- TenantDefinedTelemetry-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TenantDefinedTelemetry-Editable-End -->

<!-- CustomTelemetryId-Begin -->
## CustomTelemetryId

<!-- CustomTelemetryId-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :x: Pro <br> :x: Enterprise <br> :x: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 11, version 22H2 [10.0.22621] and later |
<!-- CustomTelemetryId-Applicability-End -->

<!-- CustomTelemetryId-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/TenantDefinedTelemetry/CustomTelemetryId
```
<!-- CustomTelemetryId-OmaUri-End -->

<!-- CustomTelemetryId-Description-Begin -->
<!-- Description-Source-DDF -->
This policy is used to let mission control what type of Edition we are currently in.
<!-- CustomTelemetryId-Description-End -->

<!-- CustomTelemetryId-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomTelemetryId-Editable-End -->

<!-- CustomTelemetryId-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- CustomTelemetryId-DFProperties-End -->

<!-- CustomTelemetryId-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Base. |
| 1 | Education. |
| 2 | Commercial. |
<!-- CustomTelemetryId-AllowedValues-End -->

<!-- CustomTelemetryId-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomTelemetryId-Examples-End -->

<!-- CustomTelemetryId-End -->

<!-- TenantDefinedTelemetry-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- TenantDefinedTelemetry-CspMoreInfo-End -->

<!-- TenantDefinedTelemetry-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
