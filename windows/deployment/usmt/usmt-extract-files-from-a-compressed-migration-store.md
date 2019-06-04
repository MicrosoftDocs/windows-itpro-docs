---
title: Extract Files from a Compressed USMT Migration Store (Windows 10)
description: Extract Files from a Compressed USMT Migration Store
ms.assetid: ad9fbd6e-f89e-4444-8538-9b11566b1f33
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Extract Files from a Compressed USMT Migration Store


When you migrate files and settings during a typical PC-refresh migration, you usually create a compressed migration store file on the intermediate store. This migration store is a single image file that contains all files being migrated as well as a catalog file. To protect the compressed file, you can encrypt it by using different encryption algorithms. When you migrate the file back to the source computer after the operating system is installed, you can run the **Usmtutils** command with the **/extract** option to recover the files from the compressed migration store. You can also use the **Usmtutils** command with the **/extract** option any time you need to recover data from a migration store.

Options used with the **/extract** option can specify:

-   The cryptographic algorithm that was used to create the migration store.

-   The encryption key or the text file that contains the encryption key.

-   Include and exclude patterns for selective data extraction.

In addition, you can specify the file patterns that you want to extract by using the **/i** option to include file patterns or the **/e** option to exclude file patterns. When both the **/i** option and the **/e** option are used in the same command, include patterns take precedence over exclude patterns. Note that this is different from the include and exclude rules used in the ScanState and LoadState tools.

## In this topic


-   [To run the USMTutils tool with the /extract option](#bkmk-extractsyntax)

-   [To extract all files from a compressed migration store](#bkmk-extractallfiles)

-   [To extract specific file types from an encrypted compressed migration store](#bkmk-extractspecificfiles)

-   [To extract all but one, or more, file types from an encrypted compressed migration store](#bkmk-excludefilepattern)

-   [To extract file types using the include pattern and the exclude pattern](#bkmk-includeexcludefiles)

### <a href="" id="bkmk-extractsyntax"></a>To run the USMTutils tool with the /extract option

To extract files from the compressed migration store onto the destination computer, use the following USMTutils syntax:

Cd /d &lt;USMTpath&gt; usmtutils /extract &lt;filePath&gt; &lt;destinationPath&gt; \[/i:&lt;includePattern&gt;\] \[/e:&lt;excludePattern&gt;\] \[/l:&lt;logfile&gt;\] \[/decrypt\[:&lt;AlgID&gt;\] {/key:&lt;keystring&gt; | /keyfile:&lt;filename&gt;}\] \[/o\]

Where the placeholders have the following values:

-   *&lt;USMTpath&gt;* is the location where you have saved the USMT files and tools.

-   *&lt;filePath&gt;* is the location of the migration store.

-   *&lt;destination path&gt;* is the location of the file where you want the **/extract** option to put the extracted migration store contents.

-   *&lt;includePattern&gt;* specifies the pattern for the files to include in the extraction.

-   *&lt;excludePattern&gt;* specifies the pattern for the files to omit from the extraction.

-   *&lt;AlgID&gt;* is the cryptographic algorithm that was used to create the migration store on the **ScanState** command line.

-   *&lt;logfile&gt;* is the location and name of the log file.

-   *&lt;keystring&gt;* is the encryption key that was used to encrypt the migration store.

-   *&lt;filename&gt;* is the location and name of the text file that contains the encryption key.

### <a href="" id="bkmk-extractallfiles"></a>To extract all files from a compressed migration store

To extract everything from a compressed migration store to a file on the C:\\ drive, type:

``` syntax
usmtutils /extract D:\MyMigrationStore\USMT\store.mig C:\ExtractedStore
```

### <a href="" id="bkmk-extractspecificfiles"></a>To extract specific file types from an encrypted compressed migration store

To extract specific files, such as .txt and .pdf files, from an encrypted compressed migration store, type:

``` syntax
usmtutils /extract D:\MyMigrationStore\USMT\store.mig /i:"*.txt,*.pdf" C:\ExtractedStore /decrypt /keyfile:D:\encryptionKey.txt
```

In this example, the file is encrypted and the encryption key is located in a text file called encryptionKey.

### <a href="" id="bkmk-excludefilepattern"></a>To extract all but one, or more, file types from an encrypted compressed migration store

To extract all files except for one file type, such as .exe files, from an encrypted compressed migration store, type:

``` syntax
usmtutils /extract D:\MyMigrationStore\USMT\store.mig /e:*.exe C:\ExtractedStore /decrypt:AES_128 /key:password /l:C:\usmtutilslog.txt
```

### <a href="" id="bkmk-includeexcludefiles"></a>To extract file types using the include pattern and the exclude pattern

To extract files from a compressed migration store, and to exclude files of one type (such as .exe files) while including only specific files, use both the include pattern and the exclude pattern, as in this example:

``` syntax
usmtutils /extract D:\MyMigrationStore\USMT\store.mig /i:myProject.* /e:*.exe C:\ExtractedStore /o
```

In this example, if there is a myProject.exe file, it will also be extracted because the include pattern option takes precedence over the exclude pattern option.

## Related topics


[UsmtUtils Syntax](usmt-utilities.md)

[Return Codes](usmt-return-codes.md)

[Verify the Condition of a Compressed Migration Store](verify-the-condition-of-a-compressed-migration-store.md)

 

 





