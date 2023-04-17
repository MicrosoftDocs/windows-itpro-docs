---
title: EventLogService Policy CSP
description: Learn more about the EventLogService Area in Policy CSP.
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

<!-- EventLogService-Begin -->
# Policy CSP - EventLogService

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- EventLogService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EventLogService-Editable-End -->

<!-- ControlEventLogBehavior-Begin -->
## ControlEventLogBehavior

<!-- ControlEventLogBehavior-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- ControlEventLogBehavior-Applicability-End -->

<!-- ControlEventLogBehavior-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/EventLogService/ControlEventLogBehavior
```
<!-- ControlEventLogBehavior-OmaUri-End -->

<!-- ControlEventLogBehavior-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls Event Log behavior when the log file reaches its maximum size.

- If you enable this policy setting and a log file reaches its maximum size, new events are not written to the log and are lost.

- If you disable or do not configure this policy setting and a log file reaches its maximum size, new events overwrite old events.

> [!NOTE]
> Old events may or may not be retained according to the "Backup log automatically when full" policy setting.
<!-- ControlEventLogBehavior-Description-End -->

<!-- ControlEventLogBehavior-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ControlEventLogBehavior-Editable-End -->

<!-- ControlEventLogBehavior-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ControlEventLogBehavior-DFProperties-End -->

<!-- ControlEventLogBehavior-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_Log_Retention_1 |
| Friendly Name | Control Event Log behavior when the log file reaches its maximum size |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Application |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Application |
| Registry Value Name | Retention |
| ADMX File Name | EventLog.admx |
<!-- ControlEventLogBehavior-AdmxBacked-End -->

<!-- ControlEventLogBehavior-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ControlEventLogBehavior-Examples-End -->

<!-- ControlEventLogBehavior-End -->

<!-- SpecifyMaximumFileSizeApplicationLog-Begin -->
## SpecifyMaximumFileSizeApplicationLog

<!-- SpecifyMaximumFileSizeApplicationLog-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- SpecifyMaximumFileSizeApplicationLog-Applicability-End -->

<!-- SpecifyMaximumFileSizeApplicationLog-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/EventLogService/SpecifyMaximumFileSizeApplicationLog
```
<!-- SpecifyMaximumFileSizeApplicationLog-OmaUri-End -->

<!-- SpecifyMaximumFileSizeApplicationLog-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the maximum size of the log file in kilobytes.

- If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes), in kilobyte increments.

- If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog, and it defaults to 1 megabyte.
<!-- SpecifyMaximumFileSizeApplicationLog-Description-End -->

<!-- SpecifyMaximumFileSizeApplicationLog-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyMaximumFileSizeApplicationLog-Editable-End -->

<!-- SpecifyMaximumFileSizeApplicationLog-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyMaximumFileSizeApplicationLog-DFProperties-End -->

<!-- SpecifyMaximumFileSizeApplicationLog-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_LogMaxSize_1 |
| Friendly Name | Specify the maximum log file size (KB) |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Application |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Application |
| ADMX File Name | EventLog.admx |
<!-- SpecifyMaximumFileSizeApplicationLog-AdmxBacked-End -->

<!-- SpecifyMaximumFileSizeApplicationLog-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyMaximumFileSizeApplicationLog-Examples-End -->

<!-- SpecifyMaximumFileSizeApplicationLog-End -->

<!-- SpecifyMaximumFileSizeSecurityLog-Begin -->
## SpecifyMaximumFileSizeSecurityLog

<!-- SpecifyMaximumFileSizeSecurityLog-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- SpecifyMaximumFileSizeSecurityLog-Applicability-End -->

<!-- SpecifyMaximumFileSizeSecurityLog-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/EventLogService/SpecifyMaximumFileSizeSecurityLog
```
<!-- SpecifyMaximumFileSizeSecurityLog-OmaUri-End -->

<!-- SpecifyMaximumFileSizeSecurityLog-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the maximum size of the log file in kilobytes.

- If you enable this policy setting, you can configure the maximum log file size to be between 20 megabytes (20480 kilobytes) and 2 terabytes (2147483647 kilobytes), in kilobyte increments.

- If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog, and it defaults to 20 megabytes.
<!-- SpecifyMaximumFileSizeSecurityLog-Description-End -->

<!-- SpecifyMaximumFileSizeSecurityLog-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyMaximumFileSizeSecurityLog-Editable-End -->

<!-- SpecifyMaximumFileSizeSecurityLog-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyMaximumFileSizeSecurityLog-DFProperties-End -->

<!-- SpecifyMaximumFileSizeSecurityLog-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_LogMaxSize_2 |
| Friendly Name | Specify the maximum log file size (KB) |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > Security |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\Security |
| ADMX File Name | EventLog.admx |
<!-- SpecifyMaximumFileSizeSecurityLog-AdmxBacked-End -->

<!-- SpecifyMaximumFileSizeSecurityLog-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyMaximumFileSizeSecurityLog-Examples-End -->

<!-- SpecifyMaximumFileSizeSecurityLog-End -->

<!-- SpecifyMaximumFileSizeSystemLog-Begin -->
## SpecifyMaximumFileSizeSystemLog

<!-- SpecifyMaximumFileSizeSystemLog-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1703 [10.0.15063] and later |
<!-- SpecifyMaximumFileSizeSystemLog-Applicability-End -->

<!-- SpecifyMaximumFileSizeSystemLog-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/EventLogService/SpecifyMaximumFileSizeSystemLog
```
<!-- SpecifyMaximumFileSizeSystemLog-OmaUri-End -->

<!-- SpecifyMaximumFileSizeSystemLog-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the maximum size of the log file in kilobytes.

- If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes), in kilobyte increments.

- If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog, and it defaults to 1 megabyte.
<!-- SpecifyMaximumFileSizeSystemLog-Description-End -->

<!-- SpecifyMaximumFileSizeSystemLog-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpecifyMaximumFileSizeSystemLog-Editable-End -->

<!-- SpecifyMaximumFileSizeSystemLog-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SpecifyMaximumFileSizeSystemLog-DFProperties-End -->

<!-- SpecifyMaximumFileSizeSystemLog-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | Channel_LogMaxSize_4 |
| Friendly Name | Specify the maximum log file size (KB) |
| Location | Computer Configuration |
| Path | Windows Components > Event Log Service > System |
| Registry Key Name | Software\Policies\Microsoft\Windows\EventLog\System |
| ADMX File Name | EventLog.admx |
<!-- SpecifyMaximumFileSizeSystemLog-AdmxBacked-End -->

<!-- SpecifyMaximumFileSizeSystemLog-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SpecifyMaximumFileSizeSystemLog-Examples-End -->

<!-- SpecifyMaximumFileSizeSystemLog-End -->

<!-- EventLogService-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- EventLogService-CspMoreInfo-End -->

<!-- EventLogService-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
