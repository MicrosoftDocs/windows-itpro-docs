---
title: SpeakForMe Policy CSP
description: Learn more about the SpeakForMe Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- SpeakForMe-Begin -->
# Policy CSP - SpeakForMe

<!-- SpeakForMe-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SpeakForMe-Editable-End -->

<!-- EnableSpeakForMe-Begin -->
## EnableSpeakForMe

<!-- EnableSpeakForMe-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- EnableSpeakForMe-Applicability-End -->

<!-- EnableSpeakForMe-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/SpeakForMe/EnableSpeakForMe
```
<!-- EnableSpeakForMe-OmaUri-End -->

<!-- EnableSpeakForMe-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting controls whether to allow the creation of personal voices with SpeakForMe Accessibility Windows Application.

- If you enable this policy setting, then user can create their personal voice models.

- If you disable this policy setting, then user can't create their personal voice models with SpeakForMe.

- If you don't configure this policy setting (default), then users can launch the training flow and create their personal voice model through SpeakForMe.
<!-- EnableSpeakForMe-Description-End -->

<!-- EnableSpeakForMe-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableSpeakForMe-Editable-End -->

<!-- EnableSpeakForMe-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- EnableSpeakForMe-DFProperties-End -->

<!-- EnableSpeakForMe-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- EnableSpeakForMe-AllowedValues-End -->

<!-- EnableSpeakForMe-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableSpeakForMe-Examples-End -->

<!-- EnableSpeakForMe-End -->

<!-- SpeakForMe-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- SpeakForMe-CspMoreInfo-End -->

<!-- SpeakForMe-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
