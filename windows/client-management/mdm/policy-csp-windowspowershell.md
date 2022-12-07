---
title: WindowsPowerShell Policy CSP
description: Learn more about the WindowsPowerShell Area in Policy CSP
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/07/2022
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsPowerShell-Begin -->
# Policy CSP - WindowsPowerShell

> [!TIP]
> Some of these are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!-- WindowsPowerShell-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsPowerShell-Editable-End -->

<!-- TurnOnPowerShellScriptBlockLogging-Begin -->
## TurnOnPowerShellScriptBlockLogging

<!-- TurnOnPowerShellScriptBlockLogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :heavy_check_mark: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1803 [10.0.17134] and later |
<!-- TurnOnPowerShellScriptBlockLogging-Applicability-End -->

<!-- TurnOnPowerShellScriptBlockLogging-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/WindowsPowerShell/TurnOnPowerShellScriptBlockLogging
```

```Device
./Device/Vendor/MSFT/Policy/Config/WindowsPowerShell/TurnOnPowerShellScriptBlockLogging
```
<!-- TurnOnPowerShellScriptBlockLogging-OmaUri-End -->

<!-- TurnOnPowerShellScriptBlockLogging-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables logging of all PowerShell script input to the Microsoft-Windows-PowerShell/Operational event log. If you enable this policy setting,
Windows PowerShell will log the processing of commands, script blocks, functions, and scripts - whether invoked interactively, or through automation.

If you disable this policy setting, logging of PowerShell script input is disabled.

If you enable the Script Block Invocation Logging, PowerShell additionally logs events when invocation of a command, script block, function, or script
starts or stops. Enabling Invocation Logging generates a high volume of event logs.

Note: This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.
<!-- TurnOnPowerShellScriptBlockLogging-Description-End -->

<!-- TurnOnPowerShellScriptBlockLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOnPowerShellScriptBlockLogging-Editable-End -->

<!-- TurnOnPowerShellScriptBlockLogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | chr (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOnPowerShellScriptBlockLogging-DFProperties-End -->

<!-- TurnOnPowerShellScriptBlockLogging-AdmxBacked-Begin -->
**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | EnableScriptBlockLogging |
| Friendly Name | Turn on PowerShell Script Block Logging |
| Location | Computer and User Configuration |
| Path | Windows Components > Windows PowerShell |
| Registry Key Name | Software\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging |
| Registry Value Name | EnableScriptBlockLogging |
| ADMX File Name | PowerShellExecutionPolicy.admx |
<!-- TurnOnPowerShellScriptBlockLogging-AdmxBacked-End -->

<!-- TurnOnPowerShellScriptBlockLogging-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOnPowerShellScriptBlockLogging-Examples-End -->

<!-- TurnOnPowerShellScriptBlockLogging-End -->

<!-- WindowsPowerShell-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsPowerShell-CspMoreInfo-End -->

<!-- WindowsPowerShell-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
