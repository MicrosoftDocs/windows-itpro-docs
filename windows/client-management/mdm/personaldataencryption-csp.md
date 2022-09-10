---
title: PersonalDataEncryption CSP
description: Learn how the PersonalDataEncryption configuration service provider (CSP) is used by the enterprise to protect data confidentiality of PCs and devices.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 02/04/2022
ms.reviewer: 
manager: dansimp
ms.collection: highpri
---
# PersonalDataEncryption CSP

The PersonalDataEncryption configuration service provider (CSP) is used by the enterprise to protect data confidentiality of PCs and devices. This CSP is supported in Windows 11.

The following shows the PersonalDataEncryption configuration service provider in tree format:

```./User/Vendor/MSFT/PDE
-- EnablePersonalDataEncryption
-- Status
-------- PersonalDataEncryptionStatus

```
**EnablePersonalDataEncryption**: 
- 0 is default (disabled)
- 1 (enabled) will make Personal Data Encryption (PDE) public API available to applications for the user: [UserDataProtectionManager Class (Windows.Security.DataProtection) - Windows UWP applications | Microsoft Docs](https://docs.microsoft.com/uwp/api/windows.security.dataprotection.userdataprotectionmanager?view=winrt-22621). 

The public API allows the applications running as the user to encrypt data as soon as this policy is enabled. However, prerequisites must be met for the PDE to be enabled.

**Status/PersonalDataEncryptionStatus**: Reports the current status of Personal Data Encryption (PDE) for the user. If prerequisites of PDE aren't met, then the report will be 0. If all prerequisites are met for PDE, PDE won't be enabled, and the will be report 1.


|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
|Enterprise|No|Yes|
|Education|No|Yes|