---
title: UsmtUtils Syntax (Windows 10)
description: UsmtUtils Syntax
ms.assetid: cdab7f2d-dd68-4016-b9ed-41ffa743b65c
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

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/ec</strong></p></td>
<td align="left"><p>Returns a list of supported cryptographic algorithms (AlgIDs) on the current system. You can use this on a destination computer to determine which algorithm to use with the <strong>/encrypt</strong> command before you run the ScanState tool on the source computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/rd</strong><em>&lt;storeDir&gt;</em></p></td>
<td align="left"><p>Removes the directory path specified by the <em>&lt;storeDir&gt;</em> argument on the computer. You can use this command to delete hard-link migration stores that cannot otherwise be deleted at a command prompt due to a sharing lock. If the migration store spans multiple volumes on a given drive, it will be deleted from all of these volumes.</p>
<p>For example:</p>
<p><code>usmtutils /rd D:\MyHardLinkStore</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/y</strong></p></td>
<td align="left"><p>Overrides the accept deletions prompt when used with the <strong>/rd</strong> option. When you use the <strong>/y</strong> option with the <strong>/rd</strong> option, you will not be prompted to accept the deletions before USMT deletes the directories.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/verify</strong></p></td>
<td align="left"><p>Returns information on whether the compressed migration store is intact or whether it contains corrupted files or a corrupted catalog.</p>
<p>See <a href="#bkmk-verifyoptions" data-raw-source="[Verify Options](#bkmk-verifyoptions)">Verify Options</a> for syntax and options to use with <strong>/verify</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/extract</strong></p></td>
<td align="left"><p>Recovers files from a compressed USMT migration store.</p>
<p>See <a href="#bkmk-extractoptions" data-raw-source="[Extract Options](#bkmk-extractoptions)">Extract Options</a> for syntax and options to use with <strong>/extract</strong>.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-verifyoptions"></a>Verify Options


Use the **/verify** option when you want to determine whether a compressed migration store is intact or whether it contains corrupted files or a corrupted catalog. For more information on how to use the **/verify** option, see [Verify the Condition of a Compressed Migration Store](verify-the-condition-of-a-compressed-migration-store.md).

The syntax for **/verify** is:

usmtutils /verify\[:*&lt;reportType&gt;*\] *&lt;filePath&gt;* \[/l:*&lt;logfile&gt;*\] \[/v:*VerbosityLevel*\] \[/decrypt \[:*&lt;AlgID&gt;*\] {/key:*&lt;keystring&gt;* | /keyfile:*&lt;filename&gt;*}\]

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>&lt;reportType&gt;</em></p></td>
<td align="left"><p>Specifies whether to report on all files, corrupted files only, or the status of the catalog.</p>
<ul>
<li><p><strong>Summary</strong>. Returns both the number of files that are intact and the number of files that are corrupted in the migration store. If no algorithm is specified, the summary report is displayed as a default.</p></li>
<li><p><strong>all</strong>. Returns a tab-delimited list of all of the files in the compressed migration store and the status for each file. Each line contains the file name followed by a tab spacing, and either “CORRUPTED” or “OK” depending on the status of the file. The last entry reports the corruption status of the &quot;CATALOG&quot; of the store. A catalog file contains metadata for all files in a migration store. The LoadState tool requires a valid catalog file in order to open the migration store. Returns &quot;OK&quot; if the catalog file is intact and LoadState can open the migration store and &quot;CORRUPTED&quot; if the migration store is corrupted.</p></li>
<li><p><strong>failureonly</strong>. Returns a tab-delimited list of only the files that are corrupted in the compressed migration store.</p></li>
<li><p><strong>Catalog</strong>. Returns only the status of the catalog file.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><strong>/l:</strong>
<p><em>&lt;logfilePath&gt;</em></p></td>
<td align="left"><p>Specifies the location and name of the log file.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/v:</strong><em>&lt;VerbosityLevel&gt;</em></p></td>
<td align="left"><p><strong>(Verbosity)</strong></p>
<p>Enables verbose output in the UsmtUtils log file. The default value is 0.</p>
<p>You can set the <em>VerbosityLevel</em> to one of the following levels:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Level</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Only the default errors and warnings are enabled.</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>Enables verbose output.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4</p></td>
<td align="left"><p>Enables error and status output.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5</p></td>
<td align="left"><p>Enables verbose and status output.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8</p></td>
<td align="left"><p>Enables error output to a debugger.</p></td>
</tr>
<tr class="even">
<td align="left"><p>9</p></td>
<td align="left"><p>Enables verbose output to a debugger.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>12</p></td>
<td align="left"><p>Enables error and status output to a debugger.</p></td>
</tr>
<tr class="even">
<td align="left"><p>13</p></td>
<td align="left"><p>Enables verbose, status, and debugger output.</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/decrypt</strong><em>&lt;AlgID&gt;</em><strong>/</strong>:<em>&lt;KeyString&gt;</em></p>
<p>or</p>
<p><strong>/decrypt</strong><em>&lt;AlgID&gt;</em><strong>/</strong>:<em>&lt;“Key String”&gt;</em></p>
<p>or</p>
<p><strong>/decrypt:</strong><em>&lt;AlgID&gt;</em><strong>/keyfile</strong>:<em>&lt;FileName&gt;</em></p></td>
<td align="left"><p>Specifies that the <strong>/encrypt</strong> option was used to create the migration store with the ScanState tool. To decrypt the migration store, specify a <strong>/key</strong> or <strong>/keyfile</strong> option as follows:</p>
<ul>
<li><p><em>&lt;AlgID&gt;</em> specifies the cryptographic algorithm that was used to create the migration store on the ScanState command line. If no algorithm is specified, ScanState and UsmtUtils use the 3DES algorithm as a default.</p>
<p><em>&lt;AlgID&gt;</em> valid values include: AES_128, AES_192, AES_256, 3DES, or 3DES_112.</p></li>
<li><p><strong>/key:</strong><em>&lt;KeyString&gt;</em> specifies the encryption key. If there is a space in <em>&lt;KeyString&gt;</em>, you must surround the argument with quotation marks.</p></li>
<li><p><strong>/keyfile</strong>: <em>&lt;FileName&gt;</em> specifies the location and name of a text (.txt) file that contains the encryption key.</p></li>
</ul>
<p>For more information about supported encryption algorithms, see <a href="usmt-migration-store-encryption.md" data-raw-source="[Migration Store Encryption](usmt-migration-store-encryption.md)">Migration Store Encryption</a></p></td>
</tr>
</tbody>
</table>

 

Some examples of **/verify** commands:

-   `usmtutils /verify D:\MyMigrationStore\store.mig`

-   `usmtutils /verify:catalog D:\MyMigrationStore\store.mig`

-   `usmtutils /verify:all D:\MyMigrationStore\store.mig /decrypt /l:D:\UsmtUtilsLog.txt`

-   `usmtutils /verify:failureonly D:\MyMigrationStore\store.mig /decrypt:AES_192 /keyfile:D:\encryptionKey.txt`

## <a href="" id="bkmk-extractoptions"></a>Extract Options


Use the **/extract** option to recover files from a compressed USMT migration store if it will not restore normally with loadstate. For more information on how to use the **/extract** option, see [Extract Files from a Compressed USMT Migration Store](usmt-extract-files-from-a-compressed-migration-store.md).

The syntax for **/extract** is:

/extract *&lt;filePath&gt;* *&lt;destinationPath&gt;* \[/i:*&lt;includePattern&gt;*\] \[/e: *&lt;excludePattern&gt;*\] \[/l: *&lt;logfile&gt;*\] \[/v: *VerbosityLevel&gt;*\] \[/decrypt\[:*&lt;AlgID&gt;*\] {key: *&lt;keystring&gt;* | /keyfile: *&lt;filename&gt;*}\] \[/o\]

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>&lt;filePath&gt;</em></p></td>
<td align="left"><p>Path to the USMT migration store.</p>
<p>For example:</p>
<p><code>D:\MyMigrationStore\USMT\store.mig</code></p></td>
</tr>
<tr class="even">
<td align="left"><p><em>&lt;destinationPath&gt;</em></p></td>
<td align="left"><p>Path to the folder where the tool puts the individual files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/i</strong>:<em>&lt;includePattern&gt;</em></p></td>
<td align="left"><p>Specifies a pattern for files to include in the extraction. You can specify more than one pattern. Separate patterns with a comma or a semicolon. You can use <strong>/i</strong>: <em>&lt;includePattern&gt;</em> and <strong>/e</strong>: <em>&lt;excludePattern&gt;</em> options in the same command. When both include and exclude patterns are used on the command line, include patterns take precedence over exclude patterns.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/e</strong>:<em>&lt;excludePattern&gt;</em></p></td>
<td align="left"><p>Specifies a pattern for files to omit from the extraction. You can specify more than one pattern. Separate patterns with a comma or a semicolon. You can use <strong>/i</strong>: <em>&lt;includePattern&gt;</em> and <strong>/e</strong>: <em>&lt;excludePattern&gt;</em> options in the same command. When both include and exclude patterns are used on the command line, include patterns take precedence over exclude patterns.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/l</strong>:<em>&lt;logfilePath&gt;</em></p></td>
<td align="left"><p>Specifies the location and name of the log file.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/v:</strong><em>&lt;VerbosityLevel&gt;</em></p></td>
<td align="left"><p><strong>(Verbosity)</strong></p>
<p>Enables verbose output in the UsmtUtils log file. The default value is 0.</p>
<p>You can set the <em>VerbosityLevel</em> to one of the following levels:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Level</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>Only the default errors and warnings are enabled.</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>Enables verbose output.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4</p></td>
<td align="left"><p>Enables error and status output.</p></td>
</tr>
<tr class="even">
<td align="left"><p>5</p></td>
<td align="left"><p>Enables verbose and status output.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>8</p></td>
<td align="left"><p>Enables error output to a debugger.</p></td>
</tr>
<tr class="even">
<td align="left"><p>9</p></td>
<td align="left"><p>Enables verbose output to a debugger.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>12</p></td>
<td align="left"><p>Enables error and status output to a debugger.</p></td>
</tr>
<tr class="even">
<td align="left"><p>13</p></td>
<td align="left"><p>Enables verbose, status, and debugger output.</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/decrypt</strong><em>&lt;AlgID&gt;</em><strong>/key</strong>:<em>&lt;KeyString&gt;</em></p>
<p>or</p>
<p><strong>/decrypt</strong><em>&lt;AlgID&gt;</em><strong>/</strong>:<em>&lt;“Key String”&gt;</em></p>
<p>or</p>
<p><strong>/decrypt:</strong><em>&lt;AlgID&gt;</em><strong>/keyfile</strong>:<em>&lt;FileName&gt;</em></p></td>
<td align="left"><p>Specifies that the <strong>/encrypt</strong> option was used to create the migration store with the ScanState tool. To decrypt the migration store, you must also specify a <strong>/key</strong> or <strong>/keyfile</strong> option as follows:</p>
<ul>
<li><p><em>&lt;AlgID&gt;</em> specifies the cryptographic algorithm that was used to create the migration store on the ScanState command line. If no algorithm is specified, ScanState and UsmtUtils use the 3DES algorithm as a default.</p>
<p><em>&lt;AlgID&gt;</em> valid values include: AES_128, AES_192, AES_256, 3DES, or 3DES_112.</p></li>
<li><p><strong>/key</strong>: <em>&lt;KeyString&gt;</em> specifies the encryption key. If there is a space in <em>&lt;KeyString&gt;</em>, you must surround the argument with quotation marks.</p></li>
<li><p><strong>/keyfile</strong>:<em>&lt;FileName&gt;</em> specifies a text (.txt) file that contains the encryption key</p></li>
</ul>
<p>For more information about supported encryption algorithms, see <a href="usmt-migration-store-encryption.md" data-raw-source="[Migration Store Encryption](usmt-migration-store-encryption.md)">Migration Store Encryption</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/o</strong></p></td>
<td align="left"><p>Overwrites existing output files.</p></td>
</tr>
</tbody>
</table>

 

Some examples of **/extract** commands:

-   `usmtutils /extract D:\MyMigrationStore\USMT\store.mig C:\ExtractedStore`

-   `usmtutils /extract D:\MyMigrationStore\USMT\store.mig /i:"*.txt, *.pdf" C:\ExtractedStore /decrypt /keyfile:D:\encryptionKey.txt`

-   `usmtutils /extract D:\MyMigrationStore\USMT\store.mig /e:*.exe C:\ExtractedStore /decrypt:AES_128 /key:password /l:C:\usmtlog.txt`

-   `usmtutils /extract D:\MyMigrationStore\USMT\store.mig /i:myProject.* /e:*.exe C:\ExtractedStore /o`

## Related topics


[User State Migration Tool (USMT) Command-line Syntax](usmt-command-line-syntax.md)

[Return Codes](usmt-return-codes.md)

 

 





