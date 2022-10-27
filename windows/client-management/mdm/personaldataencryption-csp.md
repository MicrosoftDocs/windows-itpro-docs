---
title: PersonalDataEncryption CSP
description: Learn how the PersonalDataEncryption configuration service provider (CSP) is used by the enterprise to protect data confidentiality of PCs and devices.
ms.author: v-nsatapathy
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: nimishasatapathy
ms.localizationpriority: medium
ms.date: 09/12/2022
ms.reviewer: 
manager: dansimp
---

# PersonalDataEncryption CSP

The PersonalDataEncryption configuration service provider (CSP) is used by the enterprise to protect data confidentiality of PCs and devices. This CSP was added in Windows 11, version 22H2.

The following shows the PersonalDataEncryption configuration service provider in tree format:

```
./User/Vendor/MSFT/PDE
-- EnablePersonalDataEncryption
-- Status
-------- PersonalDataEncryptionStatus

```

**EnablePersonalDataEncryption**: 
- 0 is default (disabled)
- 1 (enabled) will make Personal Data Encryption (PDE) public API available to applications for the user: [UserDataProtectionManager Class](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). 

The public API allows the applications running as the user to encrypt data as soon as this policy is enabled. However, prerequisites must be met for PDE to be enabled.

**Status/PersonalDataEncryptionStatus**: Reports the current status of Personal Data Encryption (PDE) for the user. If prerequisites of PDE aren't met, then the status will be 0. If all prerequisites are met for PDE, then PDE will be enabled and status will be 1.

> [!Note]
> The policy is only applicable on Enterprise and Education SKUs.

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|No|Yes|
|Education|No|Yes|
