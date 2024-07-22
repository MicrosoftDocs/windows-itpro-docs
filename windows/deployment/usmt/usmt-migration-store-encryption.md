---
title: Migration Store Encryption
description: Learn how the User State Migration Tool (USMT) enables support for stronger encryption algorithms, called Advanced Encryption Standard (AES).
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 01/09/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Migration store encryption

This article discusses User State Migration Tool (USMT) options for migration store encryption to protect the integrity of user data during a migration.

## USMT encryption options

USMT enables support for stronger encryption algorithms, called Advanced Encryption Standard (AES), in several bit-level options. AES is a National Institute of Standards and Technology (NIST) specification for the encryption of electronic data.

The chosen encryption algorithm must be specified for both the `ScanState.exe` and the `LoadState.exe` commands, so that these commands can create or read the store during encryption and decryption. The new encryption algorithms can be specified on the `ScanState.exe` and the `LoadState.exe` command lines by using the `/encrypt`:*encryption_strength* and the `/decrypt`:*encryption_strength* command-line options. All of the encryption application programming interfaces (APIs) used by USMT are available in currently supported versions of Windows. However, export restrictions might limit the set of algorithms that are available to computers in certain locales. The `UsmtUtils.exe` file can be used to determine which encryption algorithms are available to the computers' locales before the migration begins.

The following table describes the command-line encryption options in USMT.

|Component|Option|Description|
|--- |--- |--- |
|*ScanState*|**/encrypt**<*AES, AES_128, AES_192, AES_256, 3DES, 3DES_112*>|This option and argument specify that the migration store is encrypted and which algorithm to use. When the algorithm argument isn't provided, the **ScanState** tool employs the **3DES** algorithm.|
|*LoadState*|**/decrypt**<*AES, AES_128, AES_192, AES_256, 3DES, 3DES_112*>|This option and argument specify that the store must be decrypted and which algorithm to use. When the algorithm argument isn't provided, the **LoadState** tool employs the **3DES** algorithm.|

> [!IMPORTANT]
>
> Some encryption algorithms might not be available on some systems. Which algorithms are available can be verified by running the `UsmtUtils.exe` command with the `/ec` option. For more information, see [UsmtUtils syntax](usmt-utilities.md).

## Related articles

- [Plan the migration](usmt-plan-your-migration.md).
