---
title: ADMX_MsiFileRecovery Policy CSP
description: Learn more about the ADMX_MsiFileRecovery Area in Policy CSP.
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

<!-- ADMX_MsiFileRecovery-Begin -->
# Policy CSP - ADMX_MsiFileRecovery

> [!TIP]
> This CSP contains ADMX-backed policies which require a special SyncML format to enable or disable. You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- ADMX_MsiFileRecovery-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_MsiFileRecovery-Editable-End -->

<!-- WdiScenarioExecutionPolicy-Begin -->
## WdiScenarioExecutionPolicy

<!-- WdiScenarioExecutionPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 2004 [10.0.19041.1202] and later <br> :heavy_check_mark: Windows 10, version 2009 [10.0.19042.1202] and later <br> :heavy_check_mark: Windows 10, version 21H1 [10.0.19043.1202] and later <br> :heavy_check_mark: Windows 11, version 21H2 [10.0.22000] and later |
<!-- WdiScenarioExecutionPolicy-Applicability-End -->

<!-- WdiScenarioExecutionPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_MsiFileRecovery/WdiScenarioExecutionPolicy
```
<!-- WdiScenarioExecutionPolicy-OmaUri-End -->

<!-- WdiScenarioExecutionPolicy-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure the recovery behavior for corrupted MSI files to one of three states:

Prompt for Resolution: Detection, troubleshooting, and recovery of corrupted MSI applications will be turned on. Windows will prompt the user with a dialog box when application reinstallation is required. This is the default recovery behavior on Windows client.

Silent: Detection, troubleshooting, and notification of MSI application to reinstall will occur with no UI. Windows will log an event when corruption is determined and will suggest the application that should be re-installed. This behavior is recommended for headless operation and is the default recovery behavior on Windows server.

Troubleshooting Only: Detection and verification of file corruption will be performed without UI. Recovery is not attempted.

- If you enable this policy setting, the recovery behavior for corrupted files is set to either the Prompt For Resolution (default on Windows client), Silent (default on Windows server), or Troubleshooting Only.

- If you disable this policy setting, the troubleshooting and recovery behavior for corrupted files will be disabled. No troubleshooting or resolution will be attempted.

- If you do not configure this policy setting, the recovery behavior for corrupted files will be set to the default recovery behavior.

No system or service restarts are required for changes to this policy setting to take immediate effect after a Group Policy refresh.

> [!NOTE]
> This policy setting will take effect only when the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, system file recovery will not be attempted. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
<!-- WdiScenarioExecutionPolicy-Description-End -->

<!-- WdiScenarioExecutionPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
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
| Friendly Name | Configure MSI Corrupted File Recovery behavior |
| Location | Computer Configuration |
| Path | System > Troubleshooting and Diagnostics > MSI Corrupted File Recovery |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WDI\{54077489-683b-4762-86c8-02cf87a33423} |
| Registry Value Name | ScenarioExecutionEnabled |
| ADMX File Name | Msi-FileRecovery.admx |
<!-- WdiScenarioExecutionPolicy-AdmxBacked-End -->

<!-- WdiScenarioExecutionPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- WdiScenarioExecutionPolicy-Examples-End -->

<!-- WdiScenarioExecutionPolicy-End -->

<!-- ADMX_MsiFileRecovery-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_MsiFileRecovery-CspMoreInfo-End -->

<!-- ADMX_MsiFileRecovery-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
