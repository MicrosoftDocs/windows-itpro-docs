---
title: WindowsAutopilot Policy CSP
description: Learn more about the WindowsAutopilot Area in Policy CSP.
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

<!-- WindowsAutopilot-Begin -->
# Policy CSP - WindowsAutopilot

<!-- WindowsAutopilot-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- WindowsAutopilot-Editable-End -->

<!-- EnableAgilityPostEnrollment-Begin -->
## EnableAgilityPostEnrollment

<!-- EnableAgilityPostEnrollment-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- EnableAgilityPostEnrollment-Applicability-End -->

<!-- EnableAgilityPostEnrollment-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/WindowsAutopilot/EnableAgilityPostEnrollment
```
<!-- EnableAgilityPostEnrollment-OmaUri-End -->

<!-- EnableAgilityPostEnrollment-Description-Begin -->
<!-- Description-Source-DDF -->
Specifies whether to check for Windows Autopilot updates after enrollment. Most restricted value is 0.
<!-- EnableAgilityPostEnrollment-Description-End -->

<!-- EnableAgilityPostEnrollment-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableAgilityPostEnrollment-Editable-End -->

<!-- EnableAgilityPostEnrollment-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- EnableAgilityPostEnrollment-DFProperties-End -->

<!-- EnableAgilityPostEnrollment-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 (Default) | Not enabled. |
| 1 | Enabled. |
<!-- EnableAgilityPostEnrollment-AllowedValues-End -->

<!-- EnableAgilityPostEnrollment-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableAgilityPostEnrollment-Examples-End -->

<!-- EnableAgilityPostEnrollment-End -->

<!-- WindowsAutopilot-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- WindowsAutopilot-CspMoreInfo-End -->

<!-- WindowsAutopilot-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
