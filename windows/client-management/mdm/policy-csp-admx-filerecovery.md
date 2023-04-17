---
title: ADMX_FileRecovery Policy CSP
description: Learn more about the ADMX_FileRecovery Area in Policy CSP.
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

<!-- ADMX_FileRecovery-Begin -->
# Policy CSP - ADMX_FileRecovery

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_FileRecovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileRecovery-Editable-End -->

<!-- WdiScenarioExecutionPolicy-Begin -->
## WdiScenarioExecutionPolicy

<!-- WdiScenarioExecutionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiScenarioExecutionPolicy-Applicability-End -->

<!-- WdiScenarioExecutionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_FileRecovery/WdiScenarioExecutionPolicy
```
<!-- WdiScenarioExecutionPolicy-OmaUri-End -->

<!-- WdiScenarioExecutionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the recovery behavior for corrupted files to one of three states:

Regular: Detection, troubleshooting, and recovery of corrupted files will automatically start with a minimal UI display. Windows will attempt to present you with a dialog box when a system restart is required. This is the default recovery behavior for corrupted files.

Silent: Detection, troubleshooting, and recovery of corrupted files will automatically start with no UI. Windows will log an administrator event when a system restart is required. This behavior is recommended for headless operation.

Troubleshooting Only: Detection and troubleshooting of corrupted files will automatically start with no UI. Recovery is not attempted automatically. Windows will log an administrator event with instructions if manual recovery is possible.

- If you enable this setting, the recovery behavior for corrupted files will be set to either the regular (default), silent, or troubleshooting only state.

- If you disable this setting, the recovery behavior for corrupted files will be disabled. No troubleshooting or resolution will be attempted.

- If you do not configure this setting, the recovery behavior for corrupted files will be set to the regular recovery behavior.

No system or service restarts are required for changes to this policy to take immediate effect after a Group Policy refresh.

> [!NOTE]
> This policy setting will take effect only when the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, system file recovery will not be attempted. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
<!-- WdiScenarioExecutionPolicy-Description-End -->

<!-- WdiScenarioExecutionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
**Note** This policy setting applies to all sites in Trusted zones.
<!-- WdiScenarioExecutionPolicy-Editable-End -->

<!-- WdiScenarioExecutionPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- WdiScenarioExecutionPolicy-DFProperties-End -->

<!-- WdiScenarioExecutionPolicy-AdmxBacked-Begin -->
> [!TIP]
> This is an ADMX-backed policy and requires SyncML format for configuration. For an example of SyncML format, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | WdiScenarioExecutionPolicy |
| Friendly Name | Configure Corrupted File Recovery behavior |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > Corrupted File Recovery |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{8519d925-541e-4a2b-8b1e-8059d16082f2} |
| Registry Value Name | ScenarioExecutionEnabled |
| ADMX File Name | FileRecovery.admx |
<!-- WdiScenarioExecutionPolicy-AdmxBacked-End -->

<!-- WdiScenarioExecutionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy-Examples-End -->

<!-- WdiScenarioExecutionPolicy-End -->

<!-- ADMX_FileRecovery-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_FileRecovery-CspMoreInfo-End -->

<!-- ADMX_FileRecovery-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
