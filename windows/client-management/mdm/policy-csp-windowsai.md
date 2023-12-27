---
title: WindowsAI Policy CSP
description: Learn more about the WindowsAI Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 12/14/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- WindowsAI-Begin -->
# Policy CSP - WindowsAI

<!-- WindowsAI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsAI-Editable-End -->

<!-- TurnOffWindowsCopilot-Begin -->
## TurnOffWindowsCopilot

<!-- TurnOffWindowsCopilot-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 22H2 [10.0.19045.3758] and later <br> ✅ Windows 11, version 22H2 [10.0.22621.2361] and later <br> ✅ Windows 11, version 23H2 [10.0.22631] and later |
<!-- TurnOffWindowsCopilot-Applicability-End -->

<!-- TurnOffWindowsCopilot-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/WindowsAI/TurnOffWindowsCopilot
```
<!-- TurnOffWindowsCopilot-OmaUri-End -->

<!-- TurnOffWindowsCopilot-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to turn off Windows Copilot.

- If you enable this policy setting, users won't be able to use Copilot. The Copilot icon won't appear on the taskbar either.

- If you disable or don't configure this policy setting, users will be able to use Copilot when it's available to them.
<!-- TurnOffWindowsCopilot-Description-End -->

<!-- TurnOffWindowsCopilot-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TurnOffWindowsCopilot-Editable-End -->

<!-- TurnOffWindowsCopilot-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- TurnOffWindowsCopilot-DFProperties-End -->

<!-- TurnOffWindowsCopilot-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Enable Copilot. |
| 1 | Disable Copilot. |
<!-- TurnOffWindowsCopilot-AllowedValues-End -->

<!-- TurnOffWindowsCopilot-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | TurnOffWindowsCopilot |
| Friendly Name | Turn off Windows Copilot |
| Location | User Configuration |
| Path | Windows Components > Windows Copilot |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\WindowsCopilot |
| Registry Value Name | TurnOffWindowsCopilot |
| ADMX File Name | WindowsCopilot.admx |
<!-- TurnOffWindowsCopilot-GpMapping-End -->

<!-- TurnOffWindowsCopilot-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TurnOffWindowsCopilot-Examples-End -->

<!-- TurnOffWindowsCopilot-End -->

<!-- WindowsAI-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsAI-CspMoreInfo-End -->

<!-- WindowsAI-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
