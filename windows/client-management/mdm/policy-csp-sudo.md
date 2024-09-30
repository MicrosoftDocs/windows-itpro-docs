---
title: Sudo Policy CSP
description: Learn more about the Sudo Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Sudo-Begin -->
# Policy CSP - Sudo

<!-- Sudo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Sudo-Editable-End -->

<!-- EnableSudo-Begin -->
## EnableSudo

<!-- EnableSudo-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- EnableSudo-Applicability-End -->

<!-- EnableSudo-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Sudo/EnableSudo
```
<!-- EnableSudo-OmaUri-End -->

<!-- EnableSudo-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls use of the sudo.exe command line tool.

- If you enable this policy setting, then you may set a maximum allowed mode to run sudo in. This restricts the ways in which users may interact with command-line applications run with sudo. You may pick one of the following modes to allow sudo to run in:

"Disabled": sudo is entirely disabled on this machine. When the user tries to run sudo, sudo will print an error message and exit.

"Force new window": When sudo launches a command line application, it will launch that app in a new console window.

"Disable input": When sudo launches a command line application, it will launch the app in the current console window, but the user won't be able to type input to the command line app. The user may also choose to run sudo in "Force new window" mode.

"Normal": When sudo launches a command line application, it will launch the app in the current console window. The user may also choose to run sudo in "Force new window" or "Disable input" mode.

- If you disable this policy or don't configure it, the user will be able to run sudo.exe normally (after enabling the setting in the Settings app).
<!-- EnableSudo-Description-End -->

<!-- EnableSudo-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableSudo-Editable-End -->

<!-- EnableSudo-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 3 |
<!-- EnableSudo-DFProperties-End -->

<!-- EnableSudo-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Sudo is disabled. |
| 1 | Sudo is allowed in 'force new window' mode. |
| 2 | Sudo is allowed in 'disable input' mode. |
| 3 (Default) | Sudo is allowed in 'inline' mode. |
<!-- EnableSudo-AllowedValues-End -->

<!-- EnableSudo-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableSudo |
| Friendly Name | Configure the behavior of the sudo command |
| Location | Computer Configuration |
| Path | System |
| Registry Key Name | Software\Policies\Microsoft\Windows\Sudo |
| ADMX File Name | Sudo.admx |
<!-- EnableSudo-GpMapping-End -->

<!-- EnableSudo-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableSudo-Examples-End -->

<!-- EnableSudo-End -->

<!-- Sudo-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Sudo-CspMoreInfo-End -->

<!-- Sudo-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
