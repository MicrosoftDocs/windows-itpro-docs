---
title: Migrate EFS Files and Certificates
description: Learn how to migrate Encrypting File System (EFS) certificates. Also, learn where to find information about how to identify file types, files, and folders.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 12/22/2023
ms.topic: article
ms.technology: itpro-deploy
---

# Migrate EFS files and certificates

This article describes how to migrate Encrypting File System (EFS) certificates. For more information about the `/efs` option, see [Encrypted file options](usmt-scanstate-syntax.md#encrypted-file-options) in [ScanState syntax](usmt-scanstate-syntax.md).

## To migrate EFS files and certificates

Encrypting File System (EFS) certificates are migrated automatically. However, by default, the User State Migration Tool (USMT) fails if an encrypted file is found unless you specify an `/efs` option. Therefore when a device has EFS encrypted files, you must specify the `/efs` option with any one of the following parameters:

- `abort`
- `skip`
- `decryptcopy`
- `copyraw`
- `hardlink`

when running the `ScanState.exe` command to migrate the encrypted files. Then, when you run the `LoadState.exe` command on the destination computer, the encrypted file and the EFS certificate are automatically migrated.

> [!NOTE]
>
> The `/efs` options aren't used with the `LoadState.exe` command.

Before using the **ScanState** tool for a migration that includes encrypted files and EFS certificates, you must ensure that all files in an encrypted folder are encrypted as well or remove the encryption attribute from folders that contain unencrypted files. If the encryption attribute is removed from a file but not from the parent folder, the file is encrypted during the migration using the credentials of the account used to run the **LoadState** tool.

You can run the [Cipher.exe](/windows-server/administration/windows-commands/cipher) tool at a Windows command prompt to review and change encryption settings on files and folders. For example, to remove encryption from a folder, at a command prompt enter:

```cmd
cipher.exe /D /S:<PATH>
```

where *&lt;Path&gt;* is the full path of the topmost parent directory where the encryption attribute is set.

## Related articles

- [What does USMT migrate?](usmt-what-does-usmt-migrate.md).
- [Identify file types, files, and folders](usmt-identify-file-types-files-and-folders.md).
