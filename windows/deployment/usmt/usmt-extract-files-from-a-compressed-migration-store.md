---
title: Extract Files from a Compressed USMT Migration Store (Windows 10)
description: In this article, learn how to extract files from a compressed User State Migration Tool (USMT) migration store.
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Extract files from a compressed USMT migration store

When you migrate files and settings during a typical PC-refresh migration, you usually create a compressed migration store file on the intermediate store. This migration store is a single image file that contains all files being migrated as well as a catalog file. To protect the compressed file, you can encrypt it by using different encryption algorithms. When you migrate the file back to the source computer after the operating system is installed, you can run the **UsmtUtils** command with the `/extract` option to recover the files from the compressed migration store. You can also use the **UsmtUtils** command with the `/extract` option any time you need to recover data from a migration store.

Options used with the `/extract` option can specify:

- The cryptographic algorithm that was used to create the migration store.

- The encryption key or the text file that contains the encryption key.

- Include and exclude patterns for selective data extraction.

In addition, you can specify the file patterns that you want to extract by using the `/i` option to include file patterns or the `/e` option to exclude file patterns. When both the `/i` option and the `/e` option are used in the same command, include patterns take precedence over exclude patterns. Note that this is different from the include and exclude rules used in the **ScanState** and **LoadState** tools.

### To run the UsmtUtils tool with the /extract option

To extract files from the compressed migration store onto the destination computer, use the following UsmtUtils syntax:

``` syntax
UsmtUtils.exe /extract <filePath> <destinationPath> [/i:<includePattern>] [/e:<excludePattern>] [/l:<logfile>] [/decrypt[:<AlgID>] {/key:<keystring> | /keyfile:<filename>}] [/o]
```

Where the placeholders have the following values:

- **&lt;USMTpath&gt;** is the location where you have saved the USMT files and tools.

- **&lt;filePath&gt;** is the location of the migration store.

- **&lt;destination path&gt;** is the location of the file where you want the **/extract** option to put the extracted migration store contents.

- **&lt;includePattern&gt;** specifies the pattern for the files to include in the extraction.

- **&lt;excludePattern&gt;** specifies the pattern for the files to omit from the extraction.

- **&lt;AlgID&gt;** is the cryptographic algorithm that was used to create the migration store on the `ScanState.exe` command line.

- **&lt;logfile&gt;** is the location and name of the log file.

- **&lt;keystring&gt;** is the encryption key that was used to encrypt the migration store.

- **&lt;filename&gt;** is the location and name of the text file that contains the encryption key.

### To extract all files from a compressed migration store

To extract everything from a compressed migration store to a file on the `C:\` drive, enter:

``` syntax
UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig C:\ExtractedStore
```

### To extract specific file types from an encrypted compressed migration store

To extract specific files, such as `.txt` and `.pdf` files, from an encrypted compressed migration store, enter:

``` syntax
UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig /i:"*.txt,*.pdf" C:\ExtractedStore /decrypt /keyfile:D:\encryptionKey.txt
```

In this example, the file is encrypted and the encryption key is located in a text file called encryptionKey.

### To extract all but one, or more, file types from an encrypted compressed migration store

To extract all files except for one file type, such as `.exe` files, from an encrypted compressed migration store, enter:

``` syntax
UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig /e:*.exe C:\ExtractedStore /decrypt:AES_128 /key:password /l:C:\usmtutilslog.txt
```

### To extract file types using the include pattern and the exclude pattern

To extract files from a compressed migration store, and to exclude files of one type (such as .exe files) while including only specific files, use both the include pattern and the exclude pattern, as in this example:

``` syntax
UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig /i:myProject.* /e:*.exe C:\ExtractedStore /o
```

In this example, if there is a myProject.exe file, it will also be extracted because the include pattern option takes precedence over the exclude pattern option.

## Related articles

[UsmtUtils syntax](usmt-utilities.md)

[Return codes](usmt-return-codes.md)

[Verify the condition of a compressed migration store](verify-the-condition-of-a-compressed-migration-store.md)
