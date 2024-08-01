---
title: UsmtUtils Syntax
description: Learn about the syntax for the utilities available in User State Migration Tool (USMT) through the command-line interface.
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

# UsmtUtils Syntax

This article describes the syntax for the utilities available in User State Migration Tool (USMT) through the command-line interface. These utilities:

- Improve the ability to determine cryptographic options for the migration.

- Help removing hard-link stores that can't otherwise be deleted due to a sharing lock.

- Verify whether the catalog file or any of the other files in the compressed migration store are corrupted.

- Extract files from the compressed migration store created when files and settings are migrated to the destination computer.

## UsmtUtils.exe

The following table lists command-line options for `UsmtUtils.exe`. The sections that follow provide further command-line options for the `/verify` and the `/extract` options.

The syntax for `UsmtUtils.exe` is:

> UsmtUtils.exe \[/ec | /rd *\<storeDir\>* | /verify *\<filepath\>* \[options\] | /extract *\<filepath\>* *\<destinationPath\>* \[options\]\]

|Command-line Option|Description|
|--- |--- |
|**/ec**|Returns a list of supported cryptographic algorithms (AlgIDs) on the current system. This option can be used on a destination computer to determine which algorithm to use with the `/encrypt` command before running the **ScanState** tool on the source computer.|
|**/rd** *\<storeDir\>* |Removes the directory path specified by the *\<storeDir\>* argument on the computer. This command can be used to delete hard-link migration stores that can't otherwise be deleted at a command prompt due to a sharing lock. If the migration store spans multiple volumes on a given drive, the migration store is deleted from all of these volumes.<br><br>For example:<br>`UsmtUtils.exe /rd D:\MyHardLinkStore`|
|**/y**|Overrides the prompt to accept deletions when used with the `/rd` option. When the `/y` option is used with the `/rd` option, a prompt isn't displayed to accept the deletions before USMT deletes the directories.|
|**/verify**|Returns information on whether the compressed migration store is intact or whether it contains corrupted files or a corrupted catalog.<br><br>See [Verify options](#verify-options) for syntax and options to use with `/verify`.|
|**/extract**|Recovers files from a compressed USMT migration store.<br><br>See [Extract options](#extract-options) for syntax and options to use with `/extract`.|

## Verify options

Use the `/verify` option to determine whether a compressed migration store is intact or whether it contains corrupted files or a corrupted catalog. For more information on how to use the `/verify` option, see [Verify the condition of a compressed migration store](verify-the-condition-of-a-compressed-migration-store.md).

The syntax for `/verify` is:

> UsmtUtils.exe /verify\[:*\<reportType\>*\] *\<filePath\>* \[/l:*\<logfile\>*\] \[/v:*VerbosityLevel*\] \[/decrypt \[:*\<AlgID\>*\] {/key:*\<keystring\>* | /keyfile:*\<filename\>*}\]

| Command-line Option | Description |
|-----|--------|
| *\<reportType\>* | Specifies whether to report on all files, corrupted files only, or the status of the catalog. <ul><li>**Summary**. Returns both the number of files that are intact and the number of files that are corrupted in the migration store. If no algorithm is specified, the summary report is displayed as a default.</li><li>**all**. Returns a tab-delimited list of all of the files in the compressed migration store and the status for each file. Each line contains the file name followed by a tab spacing, and either **CORRUPTED** or **OK** depending on the status of the file. The last entry reports the corruption status of the **CATALOG** of the store. A catalog file contains metadata for all files in a migration store. The **LoadState** tool requires a valid catalog file in order to open the migration store. Returns "OK" if the catalog file is intact and **LoadState** can open the migration store and "CORRUPTED" if the migration store is corrupted.</li><li>**failureonly**. Returns a tab-delimited list of only the files that are corrupted in the compressed migration store.</li><li>**Catalog**. Returns only the status of the catalog file.</li></ul> |
| **/l:**<br>*\<logfilePath\>* | Specifies the location and name of the log file. |
| **/v:** *\<VerbosityLevel\>* | **(Verbosity)**<br><br>Enables verbose output in the **UsmtUtils** log file. The default value is 0.<br><br>The *VerbosityLevel* can be set to one of the following levels:<br><ul><li>**0** - Only the default errors and warnings are enabled.</li><li>**1** - Enables verbose output.</li><li>**4** - Enables error and status output.</li><li>**5** - Enables verbose and status output.</li><li>**8** - Enables error output to a debugger.</li><li>**9** - Enables verbose output to a debugger.</li><li>**12** - Enables error and status output to a debugger.</li><li>**13** - Enables verbose, status, and debugger output.</li></ul> |
| **/decrypt** *\<AlgID\>* **/**:*\<KeyString\>*<br>or<br>**/decrypt** *\<AlgID\>* **/**:*\<"Key String"\>*<br>or<br>**/decrypt:** *\<AlgID\>* **/keyfile**:*\<FileName\>* | Specifies that the `/encrypt` option was used to create the migration store with the **ScanState** tool. To decrypt the migration store, specify a `/key` or `/keyfile` option as follows:<br><ul><li>*\<AlgID\>* specifies the cryptographic algorithm that was used to create the migration store on the `ScanState.exe` command line. If no algorithm is specified, **ScanState** and **UsmtUtils** use the 3DES algorithm as a default.<br>*\<AlgID\>* valid values include: `AES_128`, `AES_192`, `AES_256`, `3DES`, or `3DES_112`.</li><li> `/key:` *\<KeyString\>* specifies the encryption key. If there's a space in *\<KeyString\>*, the argument must be surrounded with quotation marks.</li><li> `/keyfile`: *\<FileName\>* specifies the location and name of a text (.txt) file that contains the encryption key.</li></ul><br>For more information about supported encryption algorithms, see [Migration Store Encryption](usmt-migration-store-encryption.md). |

Some examples of `/verify` commands:

- `UsmtUtils.exe /verify D:\MyMigrationStore\store.mig`

- `UsmtUtils.exe /verify:catalog D:\MyMigrationStore\store.mig`

- `UsmtUtils.exe /verify:all D:\MyMigrationStore\store.mig /decrypt /l:D:\UsmtUtilsLog.txt`

- `UsmtUtils.exe /verify:failureonly D:\MyMigrationStore\store.mig /decrypt:AES_192 /keyfile:D:\encryptionKey.txt`

## Extract options

Use the `/extract` option to recover files from a compressed USMT migration store if it doesn't restore normally with **LoadState**. For more information on how to use the `/extract` option, see [Extract files from a compressed USMT migration store](usmt-extract-files-from-a-compressed-migration-store.md).

The syntax for `/extract` is:

> /extract *\<filePath\>* *\<destinationPath\>* \[/i:*\<includePattern\>*\] \[/e: *\<excludePattern\>*\] \[/l: *\<logfile\>*\] \[/v: *VerbosityLevel\>*\] \[/decrypt\[:*\<AlgID\>*\] {key: *\<keystring\>* | /keyfile: *\<filename\>*}\] \[/o\]

| Command-line Option | Description |
|-------|-----|
| *\<filePath\>* | Path to the USMT migration store.<br><br>For example:<br>`D:\MyMigrationStore\USMT\store.mig` |
| *\<destinationPath\>* | Path to the folder where the tool puts the individual files. |
| **/i**:*\<includePattern\>* | Specifies a pattern for files to include in the extraction. More than one pattern can be specified. Separate patterns with a comma or a semicolon. The `/i`: *\<includePattern\>* and `/e`: *\<excludePattern\>* options can be used in the same command. When both include and exclude patterns are used on the command line, include patterns take precedence over exclude patterns. |
| **/e**:*\<excludePattern\>* | Specifies a pattern for files to omit from the extraction. More than one pattern can be specified. Separate patterns with a comma or a semicolon. The `/i`: *\<includePattern\>* and `/e`: *\<excludePattern\>* options can be used in the same command. When both include and exclude patterns are used on the command line, include patterns take precedence over exclude patterns. |
| **/l**:*\<logfilePath\>* | Specifies the location and name of the log file. |
| **/v:***\<VerbosityLevel\>* | **(Verbosity)**<br><br>Enables verbose output in the **UsmtUtils** log file. The default value is 0.<br><br>The *VerbosityLevel* can be set to one of the following levels:<br><ul><li>**0** - Only the default errors and warnings are enabled.</li><li>**1** - Enables verbose output.</li><li>**4** - Enables error and status output.</li><li>**5** - Enables verbose and status output.</li><li>**8** - Enables error output to a debugger.</li><li>**9** - Enables verbose output to a debugger.</li><li>**12** - Enables error and status output to a debugger.</li><li>**13** - Enables verbose, status, and debugger output.</li></ul> |
| **/decrypt***\<AlgID\>***/key**:*\<KeyString\>*<br>or<br>**/decrypt***\<AlgID\>***/**:*\<"Key String"\>*<br>or<br>**/decrypt:***\<AlgID\>***/keyfile**:*\<FileName\>* | Specifies that the `/encrypt` option was used to create the migration store with the **ScanState** tool. To decrypt the migration store, the `/key` or `/keyfile` option must also be specified as follows:<br><ul><li>*\<AlgID\>* specifies the cryptographic algorithm that was used to create the migration store on the `ScanState.exe` command line. If no algorithm is specified, **ScanState** and **UsmtUtils** use the 3DES algorithm as a default.<br>*\<AlgID\>* valid values include: `AES_128`, `AES_192`, `AES_256`, `3DES`, or `3DES_112`.</li><li>`/key`: *\<KeyString\>* specifies the encryption key. If there's a space in *\<KeyString\>*, the argument must be surrounded with quotation marks.</li><li>`/keyfile`:*\<FileName\>* specifies a text (.txt) file that contains the encryption key</li></ul><br>For more information about supported encryption algorithms, see [Migration store encryption](usmt-migration-store-encryption.md). |
| **/o** | Overwrites existing output files. |

Some examples of `/extract` commands:

- `UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig C:\ExtractedStore`

- `UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig /i:"*.txt, *.pdf" C:\ExtractedStore /decrypt /keyfile:D:\encryptionKey.txt`

- `UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig /e:*.exe C:\ExtractedStore /decrypt:AES_128 /key:password /l:C:\usmtlog.txt`

- `UsmtUtils.exe /extract D:\MyMigrationStore\USMT\store.mig /i:myProject.* /e:*.exe C:\ExtractedStore /o`

## Related articles

- [User State Migration Tool (USMT) command-line syntax](usmt-command-line-syntax.md).
- [Return codes](/troubleshoot/windows-client/deployment/usmt-return-codes).
