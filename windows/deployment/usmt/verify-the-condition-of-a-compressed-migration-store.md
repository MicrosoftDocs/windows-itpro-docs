---
title: Verify the Condition of a Compressed Migration Store
description: Use these tips and tricks to verify the condition of a compressed migration store when using User State Migration Tool (USMT).
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

# Verify the condition of a compressed migration store

When files and settings are migrated during a typical PC-refresh migration, the user state is normally stored in a compressed folder on the intermediate store. This compressed folder, also called the compressed migration store, is a single image file that contains:

- All of the files being migrated.

- The user's settings.

- A catalog file that contains metadata for all files in the migration store.

When the `LoadState.exe` command is run to load the data from these files to the destination computer, **LoadState** requires a valid catalog file in order to open the migration store. The `UsmtUtils.exe` command can be run with the `/verify` option to determine whether the compressed migration store is intact, or whether it contains corrupted files or a corrupted catalog. The `/verify` option should be run on the migration store before overwriting the original user-state files and settings.

When the `/verify` option is used, what type of information to report in the **UsmtUtils** log file can be specified. These report types are:

- **Catalog**: Displays the status of only the catalog file.

- **All**: Displays the status of all files, including the catalog file.

- **Failure only**: Displays only the files that are corrupted.

The following sections demonstrate how to run the `UsmtUtils.exe` command with the `/verify` option, and how to specify the information to display in the **UsmtUtils** log file.

## The UsmtUtils syntax for the /verify option

To verify the condition of a compressed migration store, use the following UsmtUtils syntax:

> UsmtUtils.exe /verify\[:\<*reportType*\>\] \<*filePath*\> \[/l:\<*logfile*\>\] \[/decrypt \[:\<*AlgID*\>\] {/key:\<*keystring*\> | /keyfile:\<*filename*\>}\]

Where the placeholders have the following values:

- *\<USMTpath\>* is the location where the USMT files and tools are saved.

- *\<reportType\>* specifies whether to report on all files, corrupted files only, or the status of the catalog.

- *\<filePath\>* is the location of the compressed migration store.

- *\<logfile\>* is the location and name of the log file.

- *\<AlgID\>* is the cryptographic algorithm that was used to create the migration store on the `ScanState.exe` command line.

- *\<keystring\>* is the encryption key that was used to encrypt the migration store.

- *\<filename\>* is the location and name of the text file that contains the encryption key.

## To verify that the migration store is intact

To verify whether the migration store is intact or whether it contains corrupted files or a corrupted catalog, enter:

```cmd
UsmtUtils.exe /verify D:\MyMigrationStore\store.mig
```

Because no report type is specified, **UsmtUtils** displays the default summary report.

## To verify the status of only the catalog file

To verify whether the catalog file is corrupted or intact, enter:

```cmd
UsmtUtils.exe /verify:catalog D:\MyMigrationStore\store.mig
```

## To verify the status of all files

To verify whether there are any corrupted files in the compressed migration store, and to specify the name and location of the log file, enter:

```cmd
UsmtUtils.exe /verify:all D:\MyMigrationStore\store.mig /decrypt /l:D:\UsmtUtilsLog.txt`
```

In addition to verifying the status of all files, this example decrypts the files. Because no encryption algorithm is specified, **UsmtUtils** uses the default 3DES cryptographic algorithm.

## To verify the status of the files and return only the corrupted files

In this example, the log file only lists the files that became corrupted during the **ScanState** process. This list includes the catalog file if the catalog file is also corrupted.

```cmd
UsmtUtils.exe /verify:failureonly D:\MyMigrationStore\USMT\store.mig /decrypt:AES_192 /keyfile:D:\encryptionKey.txt
```

This example also decrypts the files by specifying the cryptographic algorithm and the location of the file that contains the encryption key.

## Next steps

If the `/verify` option indicates that there are corrupted files in the migration store, the `/extract` option in the **UsmtUtils** tool can be used to recover data from some corrupted stores. For more information, see [Extract files from a compressed USMT migration store](usmt-extract-files-from-a-compressed-migration-store.md).

## Related articles

- [UsmtUtils syntax](usmt-utilities.md).
- [Return codes](/troubleshoot/windows-client/deployment/usmt-return-codes).
