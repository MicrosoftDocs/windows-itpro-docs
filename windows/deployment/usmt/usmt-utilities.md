---
title: UsmtUtils Syntax (Windows 10)
description: Learn about the syntax for the utilities available in User State Migration Tool (USMT) 10.0 through the command-line interface.
ms.assetid: cdab7f2d-dd68-4016-b9ed-41ffa743b65c
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# UsmtUtils Syntax

This topic describes the syntax for the utilities available in User State Migration Tool (USMT) 10.0 through the command-line interface. These utilities:

-   Improve your ability to determine cryptographic options for your migration.

-   Assist in removing hard-link stores that cannot otherwise be deleted due to a sharing lock.

-   Verify whether the catalog file or any of the other files in the compressed migration store have become corrupted.

-   Extract files from the compressed migration store when you migrate files and settings to the destination computer.

## In This Topic

[Usmtutils.exe](#bkmk-usmtutils-exe)

[Verify Options](#bkmk-verifyoptions)

[Extract Options](#bkmk-extractoptions)

## <a href="" id="bkmk-usmtutils-exe"></a>Usmtutils.exe

The following table lists command-line options for USMTutils.exe. The sections that follow provide further command-line options for the **/verify** and the **/extract** options.

The syntax for UsmtUtils.exe is:

usmtutils \[/ec | /rd *&lt;storeDir&gt;* | /verify *&lt;filepath&gt;* \[options\] | /extract *&lt;filepath&gt;* *&lt;destinationPath&gt;* \[options\]\]

|Command-line Option|Description|
|--- |--- |
|**/ec**|Returns a list of supported cryptographic algorithms (AlgIDs) on the current system. You can use this on a destination computer to determine which algorithm to use with the **/encrypt** command before you run the ScanState tool on the source computer.|
|**/rd** *&lt;storeDir&gt;* |Removes the directory path specified by the *&lt;storeDir&gt;* argument on the computer. You can use this command to delete hard-link migration stores that cannot otherwise be deleted at a command prompt due to a sharing lock. If the migration store spans multiple volumes on a given drive, it will be deleted from all of these volumes. <br/><br/>For example:<br/>`usmtutils /rd D:\MyHardLinkStore`|
|**/y**|Overrides the accept deletions prompt when used with the **/rd** option. When you use the **/y** option with the **/rd** option, you will not be prompted to accept the deletions before USMT deletes the directories.|
|**/verify**|Returns information on whether the compressed migration store is intact or whether it contains corrupted files or a corrupted catalog. <br/><br/>See [Verify Options](#bkmk-verifyoptions) for syntax and options to use with **/verify**.|
|**/extract**|Recovers files from a compressed USMT migration store. <br/><br/>See [Extract Options](#bkmk-extractoptions) for syntax and options to use with **/extract**.|

## <a href="" id="bkmk-verifyoptions"></a>Verify Options

Use the **/verify** option when you want to determine whether a compressed migration store is intact or whether it contains corrupted files or a corrupted catalog. For more information on how to use the **/verify** option, see [Verify the Condition of a Compressed Migration Store](verify-the-condition-of-a-compressed-migration-store.md).

The syntax for **/verify** is:

usmtutils /verify\[:*&lt;reportType&gt;*\] *&lt;filePath&gt;* \[/l:*&lt;logfile&gt;*\] \[/v:*VerbosityLevel*\] \[/decrypt \[:*&lt;AlgID&gt;*\] {/key:*&lt;keystring&gt;* | /keyfile:*&lt;filename&gt;*}\]

| Command-line Option | Description |
|-----|--------|
| *&lt;reportType&gt;* | Specifies whether to report on all files, corrupted files only, or the status of the catalog. <ul><li>**Summary**. Returns both the number of files that are intact and the number of files that are corrupted in the migration store. If no algorithm is specified, the summary report is displayed as a default.</li><li>**all**. Returns a tab-delimited list of all of the files in the compressed migration store and the status for each file. Each line contains the file name followed by a tab spacing, and either “CORRUPTED” or “OK” depending on the status of the file. The last entry reports the corruption status of the &quot;CATALOG&quot; of the store. A catalog file contains metadata for all files in a migration store. The LoadState tool requires a valid catalog file in order to open the migration store. Returns &quot;OK&quot; if the catalog file is intact and LoadState can open the migration store and &quot;CORRUPTED&quot; if the migration store is corrupted.</li><li>**failureonly**. Returns a tab-delimited list of only the files that are corrupted in the compressed migration store.</li><li>**Catalog**. Returns only the status of the catalog file.</li></ul> |
| **/l:** <br/>*&lt;logfilePath&gt;* | Specifies the location and name of the log file. |
| **/v:** *&lt;VerbosityLevel&gt;* | **(Verbosity)**<br/><br/>Enables verbose output in the UsmtUtils log file. The default value is 0.<br/><br/>You can set the *VerbosityLevel* to one of the following levels:<br/><ul><li>**0** - Only the default errors and warnings are enabled.</li><li>**1** - Enables verbose output.</li><li>**4** - Enables error and status output.</li><li>**5** - Enables verbose and status output.</li><li>**8** - Enables error output to a debugger.</li><li>**9** - Enables verbose output to a debugger.</li><li>**12** - Enables error and status output to a debugger.</li><li>**13** - Enables verbose, status, and debugger output.</li></ul> |
| **/decrypt** *&lt;AlgID&gt;* **/**:*&lt;KeyString&gt;*<br/>or<br/>**/decrypt** *&lt;AlgID&gt;* **/**:*&lt;“Key String”&gt;*<br/>or<br/>**/decrypt:** *&lt;AlgID&gt;* **/keyfile**:*&lt;FileName&gt;* | Specifies that the **/encrypt** option was used to create the migration store with the ScanState tool. To decrypt the migration store, specify a **/key** or **/keyfile** option as follows:<br/><ul><li>*&lt;AlgID&gt;* specifies the cryptographic algorithm that was used to create the migration store on the ScanState command line. If no algorithm is specified, ScanState and UsmtUtils use the 3DES algorithm as a default.<br/>*&lt;AlgID&gt;* valid values include: AES_128, AES_192, AES_256, 3DES, or 3DES_112.</li><li>**/key:** *&lt;KeyString&gt;* specifies the encryption key. If there is a space in *&lt;KeyString&gt;*, you must surround the argument with quotation marks.</li><li>**/keyfile**: *&lt;FileName&gt;* specifies the location and name of a text (.txt) file that contains the encryption key.</li></ul><br/>For more information about supported encryption algorithms, see [Migration Store Encryption](usmt-migration-store-encryption.md) |

Some examples of **/verify** commands:

-   `usmtutils /verify D:\MyMigrationStore\store.mig`

-   `usmtutils /verify:catalog D:\MyMigrationStore\store.mig`

-   `usmtutils /verify:all D:\MyMigrationStore\store.mig /decrypt /l:D:\UsmtUtilsLog.txt`

-   `usmtutils /verify:failureonly D:\MyMigrationStore\store.mig /decrypt:AES_192 /keyfile:D:\encryptionKey.txt`

## <a href="" id="bkmk-extractoptions"></a>Extract Options


Use the **/extract** option to recover files from a compressed USMT migration store if it will not restore normally with loadstate. For more information on how to use the **/extract** option, see [Extract Files from a Compressed USMT Migration Store](usmt-extract-files-from-a-compressed-migration-store.md).

The syntax for **/extract** is:

/extract *&lt;filePath&gt;* *&lt;destinationPath&gt;* \[/i:*&lt;includePattern&gt;*\] \[/e: *&lt;excludePattern&gt;*\] \[/l: *&lt;logfile&gt;*\] \[/v: *VerbosityLevel&gt;*\] \[/decrypt\[:*&lt;AlgID&gt;*\] {key: *&lt;keystring&gt;* | /keyfile: *&lt;filename&gt;*}\] \[/o\]

| Command-line Option | Description |
|-------|-----|
| *&lt;filePath&gt;* | Path to the USMT migration store. <br/><br/>For example:<br/>`D:\MyMigrationStore\USMT\store.mig` |
| *&lt;destinationPath&gt;* | Path to the folder where the tool puts the individual files. |
| **/i**:*&lt;includePattern&gt;* | Specifies a pattern for files to include in the extraction. You can specify more than one pattern. Separate patterns with a comma or a semicolon. You can use **/i**: *&lt;includePattern&gt;* and **/e**: *&lt;excludePattern&gt;* options in the same command. When both include and exclude patterns are used on the command line, include patterns take precedence over exclude patterns. |
| **/e**:*&lt;excludePattern&gt;* | Specifies a pattern for files to omit from the extraction. You can specify more than one pattern. Separate patterns with a comma or a semicolon. You can use **/i**: *&lt;includePattern&gt;* and **/e**: *&lt;excludePattern&gt;* options in the same command. When both include and exclude patterns are used on the command line, include patterns take precedence over exclude patterns. |
| **/l**:*&lt;logfilePath&gt;* | Specifies the location and name of the log file. |
| **/v:***&lt;VerbosityLevel&gt;* | **(Verbosity)**<br/><br/>Enables verbose output in the UsmtUtils log file. The default value is 0.<br/><br/>You can set the *VerbosityLevel* to one of the following levels:<br/><ul><li>**0** - Only the default errors and warnings are enabled.</li><li>**1** - Enables verbose output.</li><li>**4** - Enables error and status output.</li><li>**5** - Enables verbose and status output.</li><li>**8** - Enables error output to a debugger.</li><li>**9** - Enables verbose output to a debugger.</li><li>**12** - Enables error and status output to a debugger.</li><li>**13** - Enables verbose, status, and debugger output.</li></ul> |
| **/decrypt***&lt;AlgID&gt;***/key**:*&lt;KeyString&gt;*<br/>or<br/>**/decrypt***&lt;AlgID&gt;***/**:*&lt;“Key String”&gt;*<br/>or<br/>**/decrypt:***&lt;AlgID&gt;***/keyfile**:*&lt;FileName&gt;* | Specifies that the **/encrypt** option was used to create the migration store with the ScanState tool. To decrypt the migration store, you must also specify a **/key** or **/keyfile** option as follows:<br/><ul><li>*&lt;AlgID&gt;* specifies the cryptographic algorithm that was used to create the migration store on the ScanState command line. If no algorithm is specified, ScanState and UsmtUtils use the 3DES algorithm as a default.<br/>*&lt;AlgID&gt;* valid values include: AES_128, AES_192, AES_256, 3DES, or 3DES_112.</li><li>**/key**: *&lt;KeyString&gt;* specifies the encryption key. If there is a space in *&lt;KeyString&gt;*, you must surround the argument with quotation marks.</li><li>**/keyfile**:*&lt;FileName&gt;* specifies a text (.txt) file that contains the encryption key</li></ul><br/>For more information about supported encryption algorithms, see [Migration Store Encryption](usmt-migration-store-encryption.md). |
| **/o** | Overwrites existing output files. |

Some examples of **/extract** commands:

-   `usmtutils /extract D:\MyMigrationStore\USMT\store.mig C:\ExtractedStore`

-   `usmtutils /extract D:\MyMigrationStore\USMT\store.mig /i:"*.txt, *.pdf" C:\ExtractedStore /decrypt /keyfile:D:\encryptionKey.txt`

-   `usmtutils /extract D:\MyMigrationStore\USMT\store.mig /e:*.exe C:\ExtractedStore /decrypt:AES_128 /key:password /l:C:\usmtlog.txt`

-   `usmtutils /extract D:\MyMigrationStore\USMT\store.mig /i:myProject.* /e:*.exe C:\ExtractedStore /o`

## Related topics

[User State Migration Tool (USMT) Command-line Syntax](usmt-command-line-syntax.md)

[Return Codes](usmt-return-codes.md)
