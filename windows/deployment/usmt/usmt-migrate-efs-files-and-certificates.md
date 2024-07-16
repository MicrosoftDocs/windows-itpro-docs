---
title: Migrate EFS Files and Certificates
description: Learn how to migrate Encrypting File System (EFS) certificates. Also, learn where to find information about how to identify file types, files, and folders.
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

# Migrate EFS files and certificates

This article describes how to migrate Encrypting File System (EFS) certificates. For more information about the `/efs` option, see [Encrypted file options](usmt-scanstate-syntax.md#encrypted-file-options) in [ScanState syntax](usmt-scanstate-syntax.md).

## To migrate EFS files and certificates

Encrypting File System (EFS) certificates are migrated automatically. However, by default, the User State Migration Tool (USMT) fails if an encrypted file is found unless the `/efs` option is specified. Therefore when a device has EFS encrypted files, the `/efs` option must be specified with any one of the following parameters:

- `abort`
- `skip`
- `decryptcopy`
- `copyraw`
- `hardlink`

when running the `ScanState.exe` command to migrate the encrypted files. Then, when the `LoadState.exe` command is run on the destination computer, the encrypted file and the EFS certificate are automatically migrated.

> [!NOTE]
>
> The `/efs` options aren't used with the `LoadState.exe` command.

Before using the **ScanState** tool for a migration that includes encrypted files and EFS certificates, all files in an encrypted folder must also be encrypted. Otherwise, remove the encryption attribute from folders that contain unencrypted files. If the encryption attribute is removed from a file but not from the parent folder, the file is encrypted during the migration using the credentials of the account used to run the **LoadState** tool.

The [Cipher.exe](/windows-server/administration/windows-commands/cipher) tool can be run at a Windows command prompt to review and change encryption settings on files and folders. For example, to remove encryption from a folder, at a command prompt enter:

```cmd
cipher.exe /D /S:<PATH>
```

where *\<Path\>* is the full path of the topmost parent directory where the encryption attribute is set.

## Related articles

- [What does USMT migrate?](usmt-what-does-usmt-migrate.md).
- [Identify file types, files, and folders](usmt-identify-file-types-files-and-folders.md).
