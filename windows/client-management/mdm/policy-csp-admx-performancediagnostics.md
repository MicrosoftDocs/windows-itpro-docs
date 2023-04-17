---
title: ADMX_PerformanceDiagnostics Policy CSP
description: Learn more about the ADMX_PerformanceDiagnostics Area in Policy CSP.
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

<!-- ADMX_PerformanceDiagnostics-Begin -->
# Policy CSP - ADMX_PerformanceDiagnostics

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_PerformanceDiagnostics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_PerformanceDiagnostics-Editable-End -->

<!-- WdiScenarioExecutionPolicy_1-Begin -->
## WdiScenarioExecutionPolicy_1

<!-- WdiScenarioExecutionPolicy_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiScenarioExecutionPolicy_1-Applicability-End -->

<!-- WdiScenarioExecutionPolicy_1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_1
```
<!-- WdiScenarioExecutionPolicy_1-OmaUri-End -->

<!-- WdiScenarioExecutionPolicy_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines the execution level for Windows Boot Performance Diagnostics.

- If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows Boot Performance problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting and resolution, the DPS will detect Windows Boot Performance problems and indicate to the user that assisted resolution is available.

- If you disable this policy setting, Windows will not be able to detect, troubleshoot or resolve any Windows Boot Performance problems that are handled by the DPS.

- If you do not configure this policy setting, the DPS will enable Windows Boot Performance for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.

No system restart or service restart is required for this policy to take effect: changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios will not be executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
<!-- WdiScenarioExecutionPolicy_1-Description-End -->

<!-- WdiScenarioExecutionPolicy_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy_1-Editable-End -->

<!-- WdiScenarioExecutionPolicy_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WdiScenarioExecutionPolicy_1-DFProperties-End -->

<!-- WdiScenarioExecutionPolicy_1-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WdiScenarioExecutionPolicy_1 |
| Friendly Name | Configure Scenario Execution Level |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Windows Boot Performance Diagnostics |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{67144949-5132-4859-8036-a737b43825d8} |
| Registry Value Name | ScenarioExecutionEnabled |
| ADMX File Name | PerformanceDiagnostics.admx |
<!-- WdiScenarioExecutionPolicy_1-AdmxBacked-End -->

<!-- WdiScenarioExecutionPolicy_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy_1-Examples-End -->

<!-- WdiScenarioExecutionPolicy_1-End -->

<!-- WdiScenarioExecutionPolicy_2-Begin -->
## WdiScenarioExecutionPolicy_2

<!-- WdiScenarioExecutionPolicy_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiScenarioExecutionPolicy_2-Applicability-End -->

<!-- WdiScenarioExecutionPolicy_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_2
```
<!-- WdiScenarioExecutionPolicy_2-OmaUri-End -->

<!-- WdiScenarioExecutionPolicy_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines the execution level for Windows System Responsiveness Diagnostics.

- If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows System Responsiveness problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting and resolution, the DPS will detect Windows System Responsiveness problems and indicate to the user that assisted resolution is available.

- If you disable this policy setting, Windows will not be able to detect, troubleshoot or resolve any Windows System Responsiveness problems that are handled by the DPS.

- If you do not configure this policy setting, the DPS will enable Windows System Responsiveness for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.

No system restart or service restart is required for this policy to take effect: changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios will not be executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
<!-- WdiScenarioExecutionPolicy_2-Description-End -->

<!-- WdiScenarioExecutionPolicy_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy_2-Editable-End -->

<!-- WdiScenarioExecutionPolicy_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WdiScenarioExecutionPolicy_2-DFProperties-End -->

<!-- WdiScenarioExecutionPolicy_2-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WdiScenarioExecutionPolicy_2 |
| Friendly Name | Configure Scenario Execution Level |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Windows System Responsiveness Performance Diagnostics |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{a7a5847a-7511-4e4e-90b1-45ad2a002f51} |
| Registry Value Name | ScenarioExecutionEnabled |
| ADMX File Name | PerformanceDiagnostics.admx |
<!-- WdiScenarioExecutionPolicy_2-AdmxBacked-End -->

<!-- WdiScenarioExecutionPolicy_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy_2-Examples-End -->

<!-- WdiScenarioExecutionPolicy_2-End -->

<!-- WdiScenarioExecutionPolicy_3-Begin -->
## WdiScenarioExecutionPolicy_3

<!-- WdiScenarioExecutionPolicy_3-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiScenarioExecutionPolicy_3-Applicability-End -->

<!-- WdiScenarioExecutionPolicy_3-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_3
```
<!-- WdiScenarioExecutionPolicy_3-OmaUri-End -->

<!-- WdiScenarioExecutionPolicy_3-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines the execution level for Windows Shutdown Performance Diagnostics.

- If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows Shutdown Performance problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting and resolution, the DPS will detect Windows Shutdown Performance problems and indicate to the user that assisted resolution is available.

- If you disable this policy setting, Windows will not be able to detect, troubleshoot or resolve any Windows Shutdown Performance problems that are handled by the DPS.

- If you do not configure this policy setting, the DPS will enable Windows Shutdown Performance for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.

No system restart or service restart is required for this policy to take effect: changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios will not be executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
<!-- WdiScenarioExecutionPolicy_3-Description-End -->

<!-- WdiScenarioExecutionPolicy_3-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy_3-Editable-End -->

<!-- WdiScenarioExecutionPolicy_3-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WdiScenarioExecutionPolicy_3-DFProperties-End -->

<!-- WdiScenarioExecutionPolicy_3-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WdiScenarioExecutionPolicy_3 |
| Friendly Name | Configure Scenario Execution Level |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Windows Shutdown Performance Diagnostics |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{2698178D-FDAD-40AE-9D3C-1371703ADC5B} |
| Registry Value Name | ScenarioExecutionEnabled |
| ADMX File Name | PerformanceDiagnostics.admx |
<!-- WdiScenarioExecutionPolicy_3-AdmxBacked-End -->

<!-- WdiScenarioExecutionPolicy_3-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy_3-Examples-End -->

<!-- WdiScenarioExecutionPolicy_3-End -->

<!-- WdiScenarioExecutionPolicy_4-Begin -->
## WdiScenarioExecutionPolicy_4

<!-- WdiScenarioExecutionPolicy_4-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiScenarioExecutionPolicy_4-Applicability-End -->

<!-- WdiScenarioExecutionPolicy_4-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_PerformanceDiagnostics/WdiScenarioExecutionPolicy_4
```
<!-- WdiScenarioExecutionPolicy_4-OmaUri-End -->

<!-- WdiScenarioExecutionPolicy_4-Description-Begin -->
<!-- Description-Source-ADMX -->
Determines the execution level for Windows Standby/Resume Performance Diagnostics.

- If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows Standby/Resume Performance problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting and resolution, the DPS will detect Windows Standby/Resume Performance problems and indicate to the user that assisted resolution is available.

- If you disable this policy setting, Windows will not be able to detect, troubleshoot or resolve any Windows Standby/Resume Performance problems that are handled by the DPS.

- If you do not configure this policy setting, the DPS will enable Windows Standby/Resume Performance for resolution by default.

This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.

No system restart or service restart is required for this policy to take effect: changes take effect immediately.

This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios will not be executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
<!-- WdiScenarioExecutionPolicy_4-Description-End -->

<!-- WdiScenarioExecutionPolicy_4-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy_4-Editable-End -->

<!-- WdiScenarioExecutionPolicy_4-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WdiScenarioExecutionPolicy_4-DFProperties-End -->

<!-- WdiScenarioExecutionPolicy_4-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WdiScenarioExecutionPolicy_4 |
| Friendly Name | Configure Scenario Execution Level |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Windows Standby/Resume Performance Diagnostics |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{ffc42108-4920-4acf-a4fc-8abdcc68ada4} |
| Registry Value Name | ScenarioExecutionEnabled |
| ADMX File Name | PerformanceDiagnostics.admx |
<!-- WdiScenarioExecutionPolicy_4-AdmxBacked-End -->

<!-- WdiScenarioExecutionPolicy_4-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy_4-Examples-End -->

<!-- WdiScenarioExecutionPolicy_4-End -->

<!-- ADMX_PerformanceDiagnostics-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_PerformanceDiagnostics-CspMoreInfo-End -->

<!-- ADMX_PerformanceDiagnostics-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
