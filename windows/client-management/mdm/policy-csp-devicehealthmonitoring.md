---
title: DeviceHealthMonitoring Policy CSP
description: Learn more about the DeviceHealthMonitoring Area in Policy CSP.
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

<!-- DeviceHealthMonitoring-Begin -->
# Policy CSP - DeviceHealthMonitoring

<!-- DeviceHealthMonitoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DeviceHealthMonitoring-Editable-End -->

<!-- AllowDeviceHealthMonitoring-Begin -->
## AllowDeviceHealthMonitoring

<!-- AllowDeviceHealthMonitoring-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- AllowDeviceHealthMonitoring-Applicability-End -->

<!-- AllowDeviceHealthMonitoring-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceHealthMonitoring/AllowDeviceHealthMonitoring
```
<!-- AllowDeviceHealthMonitoring-OmaUri-End -->

<!-- AllowDeviceHealthMonitoring-Description-Begin -->
<!-- Description-Source-DDF -->
Enable/disable 4. Nines device health monitoring on devices.
<!-- AllowDeviceHealthMonitoring-Description-End -->

<!-- AllowDeviceHealthMonitoring-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
DeviceHealthMonitoring is an opt-in health monitoring connection between the device and Microsoft. You should enable this policy only if your organization is using a Microsoft device monitoring service that requires it.
<!-- AllowDeviceHealthMonitoring-Editable-End -->

<!-- AllowDeviceHealthMonitoring-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowDeviceHealthMonitoring-DFProperties-End -->

<!-- AllowDeviceHealthMonitoring-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | The DeviceHealthMonitoring connection is enabled. |
| 0 (Default) | The DeviceHealthMonitoring connection is disabled. |
<!-- AllowDeviceHealthMonitoring-AllowedValues-End -->

<!-- AllowDeviceHealthMonitoring-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowDeviceHealthMonitoring-Examples-End -->

<!-- AllowDeviceHealthMonitoring-End -->

<!-- ConfigDeviceHealthMonitoringScope-Begin -->
## ConfigDeviceHealthMonitoringScope

<!-- ConfigDeviceHealthMonitoringScope-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigDeviceHealthMonitoringScope-Applicability-End -->

<!-- ConfigDeviceHealthMonitoringScope-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceHealthMonitoring/ConfigDeviceHealthMonitoringScope
```
<!-- ConfigDeviceHealthMonitoringScope-OmaUri-End -->

<!-- ConfigDeviceHealthMonitoringScope-Description-Begin -->
<!-- Description-Source-DDF -->
If the device isn't opted-in to the DeviceHealthMonitoring service via the AllowDeviceHealthMonitoring then this policy has no meaning. For devices which are opted in, the value of this policy modifies which types of events are monitored.
<!-- ConfigDeviceHealthMonitoringScope-Description-End -->

<!-- ConfigDeviceHealthMonitoringScope-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy is applicable only if the [AllowDeviceHealthMonitoring](#allowdevicehealthmonitoring) policy has been set to 1 (Enabled) on the device. This policy modifies which health events are sent to Microsoft on the DeviceHealthMonitoring connection. IT Pros don't need to set this policy. Instead, Microsoft Intune is expected to dynamically manage this value in coordination with the Microsoft device health monitoring service.
<!-- ConfigDeviceHealthMonitoringScope-Editable-End -->

<!-- ConfigDeviceHealthMonitoringScope-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dependency [DeviceHealthMonitoring_ConfigDeviceHealthMonitoringScope_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceHealthMonitoring/AllowDeviceHealthMonitoring` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- ConfigDeviceHealthMonitoringScope-DFProperties-End -->

<!-- ConfigDeviceHealthMonitoringScope-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigDeviceHealthMonitoringScope-Examples-End -->

<!-- ConfigDeviceHealthMonitoringScope-End -->

<!-- ConfigDeviceHealthMonitoringServiceInstance-Begin -->
## ConfigDeviceHealthMonitoringServiceInstance

<!-- ConfigDeviceHealthMonitoringServiceInstance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ConfigDeviceHealthMonitoringServiceInstance-Applicability-End -->

<!-- ConfigDeviceHealthMonitoringServiceInstance-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceHealthMonitoring/ConfigDeviceHealthMonitoringServiceInstance
```
<!-- ConfigDeviceHealthMonitoringServiceInstance-OmaUri-End -->

<!-- ConfigDeviceHealthMonitoringServiceInstance-Description-Begin -->
<!-- Description-Source-DDF -->
If the device isn't opted-in to the DeviceHealthMonitoring service via the AllowDeviceHealthMonitoring then this policy has no meaning. For devices which are opted in, the value of this policy modifies which service instance to which events are to be uploaded.
<!-- ConfigDeviceHealthMonitoringServiceInstance-Description-End -->

<!-- ConfigDeviceHealthMonitoringServiceInstance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ConfigDeviceHealthMonitoringServiceInstance-Editable-End -->

<!-- ConfigDeviceHealthMonitoringServiceInstance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dependency [DeviceHealthMonitoring_ConfigDeviceHealthMonitoringServiceInstance_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceHealthMonitoring/AllowDeviceHealthMonitoring` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- ConfigDeviceHealthMonitoringServiceInstance-DFProperties-End -->

<!-- ConfigDeviceHealthMonitoringServiceInstance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigDeviceHealthMonitoringServiceInstance-Examples-End -->

<!-- ConfigDeviceHealthMonitoringServiceInstance-End -->

<!-- ConfigDeviceHealthMonitoringUploadDestination-Begin -->
## ConfigDeviceHealthMonitoringUploadDestination

<!-- ConfigDeviceHealthMonitoringUploadDestination-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1903 [10.0.18362] and later |
<!-- ConfigDeviceHealthMonitoringUploadDestination-Applicability-End -->

<!-- ConfigDeviceHealthMonitoringUploadDestination-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/DeviceHealthMonitoring/ConfigDeviceHealthMonitoringUploadDestination
```
<!-- ConfigDeviceHealthMonitoringUploadDestination-OmaUri-End -->

<!-- ConfigDeviceHealthMonitoringUploadDestination-Description-Begin -->
<!-- Description-Source-DDF -->
If the device isn't opted-in to the DeviceHealthMonitoring service via the AllowDeviceHealthMonitoring then this policy has no meaning. For devices which are opted in, the value of this policy modifies which destinations are in-scope for monitored events to be uploaded.
<!-- ConfigDeviceHealthMonitoringUploadDestination-Description-End -->

<!-- ConfigDeviceHealthMonitoringUploadDestination-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
This policy is applicable only if the [AllowDeviceHealthMonitoring](#allowdevicehealthmonitoring) policy has been set to 1 (Enabled) on the device.

The value of this policy constrains the DeviceHealthMonitoring connection to certain destinations in order to support regional and sovereign cloud scenarios.
In most cases, an IT Pro doesn't need to define this policy. Instead, it's expected that this value is dynamically managed by Microsoft Intune to align with the region or cloud to which the device's tenant is already linked.

Configure this policy manually only when explicitly instructed to do so by a Microsoft device monitoring service.
<!-- ConfigDeviceHealthMonitoringUploadDestination-Editable-End -->

<!-- ConfigDeviceHealthMonitoringUploadDestination-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Dependency [DeviceHealthMonitoring_ConfigDeviceHealthMonitoringUploadDestination_DependencyGroup] | Dependency Type: `DependsOn` <br> Dependency URI: `Device/Vendor/MSFT/Policy/Config/DeviceHealthMonitoring/AllowDeviceHealthMonitoring` <br> Dependency Allowed Value: `[1]` <br> Dependency Allowed Value Type: `Range` <br>  |
<!-- ConfigDeviceHealthMonitoringUploadDestination-DFProperties-End -->

<!-- ConfigDeviceHealthMonitoringUploadDestination-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ConfigDeviceHealthMonitoringUploadDestination-Examples-End -->

<!-- ConfigDeviceHealthMonitoringUploadDestination-End -->

<!-- DeviceHealthMonitoring-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- DeviceHealthMonitoring-CspMoreInfo-End -->

<!-- DeviceHealthMonitoring-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
