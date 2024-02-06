---
title: Speech Policy CSP
description: Learn more about the Speech Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Speech-Begin -->
# Policy CSP - Speech

<!-- Speech-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Speech-Editable-End -->

<!-- AllowSpeechModelUpdate-Begin -->
## AllowSpeechModelUpdate

<!-- AllowSpeechModelUpdate-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowSpeechModelUpdate-Applicability-End -->

<!-- AllowSpeechModelUpdate-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Speech/AllowSpeechModelUpdate
```
<!-- AllowSpeechModelUpdate-OmaUri-End -->

<!-- AllowSpeechModelUpdate-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether the device will receive updates to the speech recognition and speech synthesis models.

A speech model contains data used by the speech engine to convert audio to text (or vice-versa). The models are periodically updated to improve accuracy and performance. Models are non-executable data files.

If enabled (default), the device will periodically check for updated speech models and then download them from a Microsoft service using the Background Internet Transfer Service (BITS).
<!-- AllowSpeechModelUpdate-Description-End -->

<!-- AllowSpeechModelUpdate-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowSpeechModelUpdate-Editable-End -->

<!-- AllowSpeechModelUpdate-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowSpeechModelUpdate-DFProperties-End -->

<!-- AllowSpeechModelUpdate-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Not allowed. |
| 1 (Default) | Allowed. |
<!-- AllowSpeechModelUpdate-AllowedValues-End -->

<!-- AllowSpeechModelUpdate-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowSpeechModelUpdate |
| Friendly Name | Allow Automatic Update of Speech Data |
| Location | Computer Configuration |
| Path | Windows Components > Speech |
| Registry Key Name | Software\Policies\Microsoft\Speech |
| Registry Value Name | AllowSpeechModelUpdate |
| ADMX File Name | Speech.admx |
<!-- AllowSpeechModelUpdate-GpMapping-End -->

<!-- AllowSpeechModelUpdate-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowSpeechModelUpdate-Examples-End -->

<!-- AllowSpeechModelUpdate-End -->

<!-- Speech-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Speech-CspMoreInfo-End -->

<!-- Speech-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
