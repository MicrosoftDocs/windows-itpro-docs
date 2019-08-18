---
title: Verify the Condition of a Compressed Migration Store (Windows 10)
description: Verify the Condition of a Compressed Migration Store
ms.assetid: 4a3fda96-5f7d-494a-955f-6b865ec9fcae
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Verify the Condition of a Compressed Migration Store


When you migrate files and settings during a typical PC-refresh migration, the user state is usually stored in a compressed folder on the intermediate store. This compressed folder, also called the compressed migration store, is a single image file that contains:

-   All of the files being migrated.

-   The user’s settings.

-   A catalog file that contains metadata for all files in the migration store.

When you run the **LoadState** command to load the data from these files to the destination computer, LoadState requires a valid catalog file in order to open the migration store. You can run the **UsmtUtils** command with the **/verify** option to determine whether the compressed migration store is intact, or whether it contains corrupted files or a corrupted catalog. You should run the **/verify** option on the migration store before you overwrite the original user-state files and settings.

When you use the **/verify** option, you can specify what type of information to report in the UsmtUtils log file. These report types are:

-   **Catalog**: Displays the status of only the catalog file.

-   **All**: Displays the status of all files, including the catalog file.

-   **Failure only**: Displays only the files that are corrupted.

## In This Topic


The following sections demonstrate how to run the **UsmtUtils** command with the **/verify** option, and how to specify the information to display in the UsmtUtils log file.

-   [The UsmtUtils syntax for the /verify option](#bkmk-verifysyntax)

-   [To verify that the migration store is intact](#bkmk-verifyintactstore)

-   [To verify the status of only the catalog file](#bkmk-verifycatalog)

-   [To verify the status of all files](#bkmk-verifyallfiles)

-   [To verify the status of the files and return only the corrupted files](#bkmk-returncorrupted)

### <a href="" id="bkmk-verifysyntax"></a>The UsmtUtils Syntax for the /verify Option

To verify the condition of a compressed migration store, use the following UsmtUtils syntax:

cd /d&lt;USMTpath&gt;usmtutils /verify\[:&lt;reportType&gt;\] &lt;filePath&gt; \[/l:&lt;logfile&gt;\] \[/decrypt \[:&lt;AlgID&gt;\] {/key:&lt;keystring&gt; | /keyfile:&lt;filename&gt;}\]

Where the placeholders have the following values:

-   *&lt;USMTpath&gt;* is the location where you have saved the USMT files and tools.

-   *&lt;reportType&gt;* specifies whether to report on all files, corrupted files only, or the status of the catalog.

-   *&lt;filePath&gt;* is the location of the compressed migration store.

-   *&lt;logfile&gt;* is the location and name of the log file.

-   *&lt;AlgID&gt;* is the cryptographic algorithm that was used to create the migration store on the **ScanState** command line.

-   *&lt;keystring&gt;* is the encryption key that was used to encrypt the migration store.

-   *&lt;filename&gt;* is the location and name of the text file that contains the encryption key.

### <a href="" id="bkmk-verifyintactstore"></a>To Verify that the Migration Store is Intact

To verify whether the migration store is intact or whether it contains corrupted files or a corrupted catalog, type:

``` syntax
usmtutils /verify D:\MyMigrationStore\store.mig
```

Because no report type is specified, UsmtUtils displays the default summary report.

### <a href="" id="bkmk-verifycatalog"></a>To Verify the Status of Only the Catalog File

To verify whether the catalog file is corrupted or intact, type:

``` syntax
usmtutils /verify:catalog D:\MyMigrationStore\store.mig
```

### <a href="" id="bkmk-verifyallfiles"></a>To Verify the Status of all Files

To verify whether there are any corrupted files in the compressed migration store, and to specify the name and location of the log file, type:

`usmtutils /verify:all D:\MyMigrationStore\store.mig /decrypt /l:D:\UsmtUtilsLog.txt`

In addition to verifying the status of all files, this example decrypts the files. Because no encryption algorithm is specified, UsmtUtils uses the default 3DES cryptographic algorithm.

### <a href="" id="bkmk-returncorrupted"></a>To Verify the Status of the Files and Return Only the Corrupted Files

In this example, the log file will only list the files that became corrupted during the ScanState process. This list will include the catalog file if it is also corrupted.

``` syntax
usmtutils /verify:failureonly D:\MyMigrationStore\USMT\store.mig /decrypt:AES_192 /keyfile:D:\encryptionKey.txt
```

This example also decrypts the files by specifying the cryptographic algorithm and the location of the file that contains the encryption key.

### Next Steps

If the **/verify** option indicates that there are corrupted files in the migration store, you can use the **/extract** option in the UsmtUtils tool to recover data from some corrupted stores. For more information, see [Extract Files from a Compressed USMT Migration Store](usmt-extract-files-from-a-compressed-migration-store.md).

## Related topics


[UsmtUtils Syntax](usmt-utilities.md)

[Return Codes](usmt-return-codes.md)

 

 





