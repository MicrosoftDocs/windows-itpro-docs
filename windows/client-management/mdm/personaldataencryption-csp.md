---
title: PDE CSP
description: Learn more about the PDE CSP.
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

<!-- PDE-Begin -->
# PDE CSP

<!-- PDE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The Personal Data Encryption (PDE) configuration service provider (CSP) is used by the enterprise to protect data confidentiality of PCs and devices. This CSP was added in Windows 11, version 22H2.
<!-- PDE-Editable-End -->

<!-- PDE-Tree-Begin -->
The following list shows the PDE configuration service provider nodes:

- ./User/Vendor/MSFT/PDE
  - [EnablePersonalDataEncryption](#enablepersonaldataencryption)
  - [Status](#status)
    - [PersonalDataEncryptionStatus](#statuspersonaldataencryptionstatus)
<!-- PDE-Tree-End -->

<!-- User-EnablePersonalDataEncryption-Begin -->
## EnablePersonalDataEncryption

<!-- User-EnablePersonalDataEncryption-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-EnablePersonalDataEncryption-Applicability-End -->

<!-- User-EnablePersonalDataEncryption-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/EnablePersonalDataEncryption
```
<!-- User-EnablePersonalDataEncryption-OmaUri-End -->

<!-- User-EnablePersonalDataEncryption-Description-Begin -->
<!-- Description-Source-DDF -->
Allows the Admin to enable Personal Data Encryption. Set to '1' to set this policy.
<!-- User-EnablePersonalDataEncryption-Description-End -->

<!-- User-EnablePersonalDataEncryption-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The [UserDataProtectionManager Class](/uwp/api/windows.security.dataprotection.userdataprotectionmanager) public API allows the applications running as the user to encrypt data as soon as this policy is enabled. However, prerequisites must be met for PDE to be enabled.
<!-- User-EnablePersonalDataEncryption-Editable-End -->

<!-- User-EnablePersonalDataEncryption-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
<!-- User-EnablePersonalDataEncryption-DFProperties-End -->

<!-- User-EnablePersonalDataEncryption-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disable Personal Data Encryption. |
| 1 | Enable Personal Data Encryption. |
<!-- User-EnablePersonalDataEncryption-AllowedValues-End -->

<!-- User-EnablePersonalDataEncryption-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-EnablePersonalDataEncryption-Examples-End -->

<!-- User-EnablePersonalDataEncryption-End -->

<!-- User-Status-Begin -->
## Status

<!-- User-Status-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-Status-Applicability-End -->

<!-- User-Status-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/Status
```
<!-- User-Status-OmaUri-End -->

<!-- User-Status-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- User-Status-Description-End -->

<!-- User-Status-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
Reports the current status of Personal Data Encryption (PDE) for the user.

- If prerequisites of PDE aren't met, then the status will be 0.
- If all prerequisites are met for PDE, then PDE will be enabled and status will be 1.
<!-- User-Status-Editable-End -->

<!-- User-Status-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `node` |
| Access Type | Get |
<!-- User-Status-DFProperties-End -->

<!-- User-Status-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Status-Examples-End -->

<!-- User-Status-End -->

<!-- User-Status-PersonalDataEncryptionStatus-Begin -->
### Status/PersonalDataEncryptionStatus

<!-- User-Status-PersonalDataEncryptionStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ❌ Pro <br> ✅ Enterprise <br> ✅ Education <br> ❌ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 22H2 [10.0.22621] and later |
<!-- User-Status-PersonalDataEncryptionStatus-Applicability-End -->

<!-- User-Status-PersonalDataEncryptionStatus-OmaUri-Begin -->
```User
./User/Vendor/MSFT/PDE/Status/PersonalDataEncryptionStatus
```
<!-- User-Status-PersonalDataEncryptionStatus-OmaUri-End -->

<!-- User-Status-PersonalDataEncryptionStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This node reports the current state of Personal Data Encryption for a user. '0' means disabled. '1' means enabled.
<!-- User-Status-PersonalDataEncryptionStatus-Description-End -->

<!-- User-Status-PersonalDataEncryptionStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- User-Status-PersonalDataEncryptionStatus-Editable-End -->

<!-- User-Status-PersonalDataEncryptionStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- User-Status-PersonalDataEncryptionStatus-DFProperties-End -->

<!-- User-Status-PersonalDataEncryptionStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- User-Status-PersonalDataEncryptionStatus-Examples-End -->

<!-- User-Status-PersonalDataEncryptionStatus-End -->

<!-- PDE-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- PDE-CspMoreInfo-End -->

<!-- PDE-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
