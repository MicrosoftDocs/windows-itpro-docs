---
title: Messaging Policy CSP
description: Learn more about the Messaging Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- Messaging-Begin -->
# Policy CSP - Messaging

<!-- Messaging-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Messaging-Editable-End -->

<!-- AllowMessageSync-Begin -->
## AllowMessageSync

<!-- AllowMessageSync-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowMessageSync-Applicability-End -->

<!-- AllowMessageSync-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Messaging/AllowMessageSync
```
<!-- AllowMessageSync-OmaUri-End -->

<!-- AllowMessageSync-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows backup and restore of cellular text messages to Microsoft's cloud services.
<!-- AllowMessageSync-Description-End -->

<!-- AllowMessageSync-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

Disable this feature to avoid information being stored on servers outside of your organization's control.
<!-- AllowMessageSync-Editable-End -->

<!-- AllowMessageSync-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowMessageSync-DFProperties-End -->

<!-- AllowMessageSync-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Message sync isn't allowed and can't be changed by the user. |
| 1 (Default) | Message sync is allowed. The user can change this setting. |
<!-- AllowMessageSync-AllowedValues-End -->

<!-- AllowMessageSync-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | AllowMessageSync |
| Friendly Name | Allow Message Service Cloud Sync |
| Location | Computer Configuration |
| Path | Windows Components > Messaging |
| Registry Key Name | Software\Policies\Microsoft\Windows\Messaging |
| Registry Value Name | AllowMessageSync |
| ADMX File Name | messaging.admx |
<!-- AllowMessageSync-GpMapping-End -->

<!-- AllowMessageSync-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMessageSync-Examples-End -->

<!-- AllowMessageSync-End -->

<!-- AllowMMS-Begin -->
## AllowMMS

<!-- AllowMMS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowMMS-Applicability-End -->

<!-- AllowMMS-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Messaging/AllowMMS
```
<!-- AllowMMS-OmaUri-End -->

<!-- AllowMMS-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to enable or disable the sending and receiving cellular MMS messages.
<!-- AllowMMS-Description-End -->

<!-- AllowMMS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowMMS-Editable-End -->

<!-- AllowMMS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowMMS-DFProperties-End -->

<!-- AllowMMS-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Allow. |
| 0 | Block. |
<!-- AllowMMS-AllowedValues-End -->

<!-- AllowMMS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowMMS-Examples-End -->

<!-- AllowMMS-End -->

<!-- AllowRCS-Begin -->
## AllowRCS

<!-- AllowRCS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ❌ Pro <br> ❌ Enterprise <br> ❌ Education <br> ❌ Windows SE <br> ❌ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- AllowRCS-Applicability-End -->

<!-- AllowRCS-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Messaging/AllowRCS
```
<!-- AllowRCS-OmaUri-End -->

<!-- AllowRCS-Description-Begin -->
<!-- Description-Source-DDF -->
This policy setting allows you to enable or disable the sending and receiving of cellular RCS (Rich Communication Services) messages.
<!-- AllowRCS-Description-End -->

<!-- AllowRCS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowRCS-Editable-End -->

<!-- AllowRCS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- AllowRCS-DFProperties-End -->

<!-- AllowRCS-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 (Default) | Allow. |
| 0 | Block. |
<!-- AllowRCS-AllowedValues-End -->

<!-- AllowRCS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowRCS-Examples-End -->

<!-- AllowRCS-End -->

<!-- Messaging-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Messaging-CspMoreInfo-End -->

<!-- Messaging-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
