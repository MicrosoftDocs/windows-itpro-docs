---
title: Extract Files from a Compressed USMT Migration Store
description: In this article, learn how to extract files from a compressed User State Migration Tool (USMT) migration store.
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

# Extract files from a compressed USMT migration store

When files and settings are migrated during a typical PC-refresh migration, a compressed migration store file is usually created on the intermediate store. This migration store is a single image file that contains all files being migrated as well as a catalog file. To protect the compressed file, it can be encrypted by using different encryption algorithms. When the file is migrated back to the source computer after the operating system is installed, the **UsmtUtils** command can be run with the `/extract` option to recover the files from the compressed migration store. The **UsmtUtils** command with the `/extract` option can also be used any time data needs to be recovered from a migration store.

Options used with the `/extract` option can specify:

- The cryptographic algorithm that was used to create the migration store.

- The encryption key or the text file that contains the encryption key.

- Include and exclude patterns for selective data extraction.

In addition, the file patterns that need to be extracted can be specified by using the `/i` option to include file patterns or the `/e` option to exclude file patterns. When both the `/i` option and the `/e` option are used in the same command, include patterns take precedence over exclude patterns. The `/i` and the `/e` options are different from the include and exclude rules used in the **ScanState** and **LoadState** tools.

## To run the UsmtUtils tool with the /extract option

To extract files from the compressed migration store onto the destination computer, use the following UsmtUtils syntax:

```cmd
UsmtUtils.exe /extract <filePath> <destinationPath> [/i:<includePattern>] [/e:<excludePattern>] [/l:<logfile>] [/decrypt[:<AlgID>] {/key:<keystring> | /keyfile:<filename>}] [/o]
```

Where the placeholders have the following values:

- **\<USMTpath\>** is the location where the USMT files and tools are saved.

- **\<filePath\>** is the location of the migration store.

- **\<destination path\>** is the location of the file where the **/extract** option should put the extracted migration store contents.

- **\<includePattern\>** specifies the pattern for the files to include in the extraction.

- **\<excludePattern\>** specifies the pattern for the files to omit from the extraction.

- **\<AlgID\>** is the cryptographic algorithm that was used to create the migration store on the `ScanState.exe` command line.

- **\<logfile\>** is the location and name of the log file.

- **\<keystring\>** is the encryption key that was used to encrypt the migration store.

- **\<filename\>** is the location and name of the text file that contains the encryption key.

### To extract all files from a compressed migration store

To extract everything from a compressed migration store to a file on the `C:\` drive, enter:

```cmd
UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig C:\ExtractedStore
```

### To extract specific file types from an encrypted compressed migration store

To extract specific files, such as `.txt` and `.pdf` files, from an encrypted compressed migration store, enter:

```cmd
UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig /i:"*.txt,*.pdf" C:\ExtractedStore /decrypt /keyfile:D:\encryptionKey.txt
```

In this example, the file is encrypted and the encryption key is located in a text file called encryptionKey.

### To extract all but one, or more, file types from an encrypted compressed migration store

To extract all files except for one file type, such as `.exe` files, from an encrypted compressed migration store, enter:

```cmd
UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig /e:*.exe C:\ExtractedStore /decrypt:AES_128 /key:password /l:C:\usmtutilslog.txt
```

### To extract file types using the include pattern and the exclude pattern

When files are extracted from a compressed migration store, both the include and the exclude patterns can be used at the same time. Files of one type can be excluded while files of another type can be included. For example:

```cmd
UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig /i:myProject.* /e:*.exe C:\ExtractedStore /o
```

In this example, if there's a **myProject.exe** file, the file is also extracted because the include pattern option takes precedence over the exclude pattern option.

## Related articles

- [UsmtUtils syntax](usmt-utilities.md).
- [Return codes](/troubleshoot/windows-client/deployment/usmt-return-codes).
- [Verify the condition of a compressed migration store](verify-the-condition-of-a-compressed-migration-store.md).
