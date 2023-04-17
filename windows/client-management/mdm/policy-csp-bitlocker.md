---
title: Bitlocker Policy CSP
description: Learn more about the Bitlocker Area in Policy CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 01/09/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Bitlocker-Begin -->
# Policy CSP - Bitlocker

<!-- Bitlocker-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
> [!NOTE]
> To manage encryption of PCs and devices, use [BitLocker CSP](./bitlocker-csp.md).
<!-- Bitlocker-Editable-End -->

<!-- EncryptionMethod-Begin -->
## EncryptionMethod

<!-- EncryptionMethod-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| :heavy_check_mark: Device <br> :x: User | :x: Home <br> :heavy_check_mark: Pro <br> :heavy_check_mark: Enterprise <br> :heavy_check_mark: Education <br> :heavy_check_mark: Windows SE | :heavy_check_mark: Windows 10, version 1607 [10.0.14393] and later |
<!-- EncryptionMethod-Applicability-End -->

<!-- EncryptionMethod-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/Bitlocker/EncryptionMethod
```
<!-- EncryptionMethod-OmaUri-End -->

<!-- EncryptionMethod-Description-Begin -->
<!-- Description-Source-DDF -->
This policy specifies the BitLocker Drive Encryption method and cipher strength.
<!-- EncryptionMethod-Description-End -->

<!-- EncryptionMethod-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The following list shows the supported values:

- 3 - AES-CBC 128-bit
- 4 - AES-CBC 256-bit
- 6 - XTS-AES 128-bit
- 7 - XTS-AES 256-bit
<!-- EncryptionMethod-Editable-End -->

<!-- EncryptionMethod-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | int |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | Range: `[0-4294967295]` |
| Default Value  | 6 |
<!-- EncryptionMethod-DFProperties-End -->

<!-- EncryptionMethod-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EncryptionMethod-Examples-End -->

<!-- EncryptionMethod-End -->

<!-- Bitlocker-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- Bitlocker-CspMoreInfo-End -->

<!-- Bitlocker-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
