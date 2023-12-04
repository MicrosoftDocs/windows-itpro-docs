---
title: WindowsPowerShell Policy CSP
description: Learn more about the WindowsPowerShell Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsPowerShell-Begin -->
# Policy CSP - WindowsPowerShell

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- WindowsPowerShell-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsPowerShell-Editable-End -->

<!-- TurnOnPowerShellScriptBlockLogging-Begin -->
## TurnOnPowerShellScriptBlockLogging

<!-- TurnOnPowerShellScriptBlockLogging-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
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
This policy setting enables logging of all PowerShell script input to the Microsoft-Windows-PowerShell/Operational event log.

- If you enable this policy setting, Windows PowerShell will log the processing of commands, script blocks, functions, and scripts - whether invoked interactively, or through automation.

- If you disable this policy setting, logging of PowerShell script input is disabled.

If you enable the Script Block Invocation Logging, PowerShell additionally logs events when invocation of a command, script block, function, or script starts or stops. Enabling Invocation Logging generates a high volume of event logs.

> [!NOTE]
> This policy setting exists under both Computer Configuration and User Configuration in the Group Policy Editor. The Computer Configuration policy setting takes precedence over the User Configuration policy setting.
<!-- TurnOnPowerShellScriptBlockLogging-Description-End -->

<!-- TurnOnPowerShellScriptBlockLogging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOnPowerShellScriptBlockLogging-Editable-End -->

<!-- TurnOnPowerShellScriptBlockLogging-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TurnOnPowerShellScriptBlockLogging-DFProperties-End -->

<!-- TurnOnPowerShellScriptBlockLogging-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

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
