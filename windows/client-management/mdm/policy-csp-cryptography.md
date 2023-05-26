---
title: Cryptography Policy CSP
description: Learn more about the Cryptography Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 05/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Cryptography-Begin -->
# Policy CSP - Cryptography

<!-- Cryptography-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Cryptography-Editable-End -->

<!-- AllowFipsAlgorithmPolicy-Begin -->
## AllowFipsAlgorithmPolicy

<!-- AllowFipsAlgorithmPolicy-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- AllowFipsAlgorithmPolicy-Applicability-End -->

<!-- AllowFipsAlgorithmPolicy-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/AllowFipsAlgorithmPolicy
```
<!-- AllowFipsAlgorithmPolicy-OmaUri-End -->

<!-- AllowFipsAlgorithmPolicy-Description-Begin -->
<!-- Description-Source-DDF -->
Allows or disallows the Federal Information Processing Standard (FIPS) policy.
<!-- AllowFipsAlgorithmPolicy-Description-End -->

<!-- AllowFipsAlgorithmPolicy-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowFipsAlgorithmPolicy-Editable-End -->

<!-- AllowFipsAlgorithmPolicy-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 0 |
<!-- AllowFipsAlgorithmPolicy-DFProperties-End -->

<!-- AllowFipsAlgorithmPolicy-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 1 | Allow. |
| 0 (Default) | Block. |
<!-- AllowFipsAlgorithmPolicy-AllowedValues-End -->

<!-- AllowFipsAlgorithmPolicy-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing |
| Path | Windows Settings > Security Settings > Local Policies > Security Options |
<!-- AllowFipsAlgorithmPolicy-GpMapping-End -->

<!-- AllowFipsAlgorithmPolicy-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowFipsAlgorithmPolicy-Examples-End -->

<!-- AllowFipsAlgorithmPolicy-End -->

<!-- TLSCipherSuites-Begin -->
## TLSCipherSuites

<!-- TLSCipherSuites-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE | ✅ Windows 10, version 1607 [10.0.14393] and later |
<!-- TLSCipherSuites-Applicability-End -->

<!-- TLSCipherSuites-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Cryptography/TLSCipherSuites
```
<!-- TLSCipherSuites-OmaUri-End -->

<!-- TLSCipherSuites-Description-Begin -->
<!-- Description-Source-DDF -->
Lists the Cryptographic Cipher Algorithms allowed for SSL connections. Format is a semicolon delimited list. Last write win.
<!-- TLSCipherSuites-Description-End -->

<!-- TLSCipherSuites-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TLSCipherSuites-Editable-End -->

<!-- TLSCipherSuites-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `;`) |
<!-- TLSCipherSuites-DFProperties-End -->

<!-- TLSCipherSuites-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TLSCipherSuites-Examples-End -->

<!-- TLSCipherSuites-End -->

<!-- Cryptography-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Cryptography-CspMoreInfo-End -->

<!-- Cryptography-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
