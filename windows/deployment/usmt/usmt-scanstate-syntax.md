---
title: ScanState Syntax (Windows 10)
description: ScanState Syntax
ms.assetid: 004c755f-33db-49e4-8a3b-37beec1480ea
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

# ScanState Syntax


The ScanState command is used with the User State Migration Tool (USMT) 10.0 to scan the source computer, collect the files and settings, and create a store.

## In This Topic


[Before You Begin](#bkmk-beforeyoubegin)

[Syntax](#bkmk-syntax)

[Storage Options](#bkmk-storageoptions)

[Migration Rule Options](#bkmk-migrationruleoptions)

[Monitoring Options](#bkmk-monitoringoptions)

[User Options](#bkmk-useroptions)

[Encrypted File Options](#bkmk-efs)

[Incompatible Command-Line Options](#bkmk-iclo)

## <a href="" id="bkmk-beforeyoubegin"></a>Before You Begin


Before you run the **ScanState** command, note the following:

-   To ensure that all operating system settings migrate, in most cases you must run the **ScanState** commands in administrator mode from an account with administrative credentials.

-   If you encrypt the migration store, you will be required to enter an encryption key or a path to a file containing the encryption key. Be sure to make note of the key or the key file location, because this information is not kept anywhere in the migration store. You will need this information when you run the LoadState command to decrypt the migration store, or if you need to run the recovery utility. An incorrect or missing key or key file results in an error message.

-   For information about software requirements for running the **ScanState** command, see [USMT Requirements](usmt-requirements.md).

-   Unless otherwise noted, you can use each option only once when running a tool on the command line.

-   You can gather domain accounts without the source computer having domain controller access. This functionality is available without any additional configuration.

-   The [Incompatible Command-Line Options](#bkmk-iclo) table lists which options you can use together and which command-line options are incompatible.

-   The directory location where you save the migration store will be excluded from the scan. For example, if you save the migration store to the root of the D drive, the D drive and all of its subdirectories will be excluded from the scan.

## <a href="" id="bkmk-syntax"></a>Syntax


This section explains the syntax and usage of the **ScanState** command-line options. The options can be specified in any order. If the option contains a parameter, you can use either a colon or a space separator.

The **ScanState** command's syntax is:

scanstate \[*StorePath*\] \[/apps\] \[/ppkg:*FileName*\] \[/i:\[*Path*\\\]*FileName*\] \[/o\] \[/v:*VerbosityLevel*\] \[/nocompress\] \[/localonly\] \[/encrypt /key:*KeyString*|/keyfile:\[Path\\\]*FileName*\] \[/l:\[*Path*\\\]*FileName*\] \[/progress:\[*Path*\\\]*FileName*\] \[/r:*TimesToRetry*\] \[/w:*SecondsBeforeRetry*\] \[/c\] \[/p\] \[/all\] \[/ui:\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/ue:\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/uel:*NumberOfDays*|*YYYY/MM/DD*|0\] \[/efs:abort|skip|decryptcopy|copyraw\] \[/genconfig:\[*Path*\\\]*FileName*\[/config:\[*Path*\\\]*FileName*\] \[/?|help\]

For example:

To create a Config.xml file in the current directory, use:

`scanstate /i:migapp.xml /i:migdocs.xml /genconfig:config.xml /v:13`

To create an encrypted store using the Config.xml file and the default migration .xml files, use:

`scanstate \\server\share\migration\mystore /i:migapp.xml /i:migdocs.xml /o /config:config.xml /v:13 /encrypt /key:"mykey"`

## <a href="" id="bkmk-storageoptions"></a>Storage Options


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><em>StorePath</em></p></td>
<td align="left"><p>Indicates a folder where files and settings will be saved. Note that <em>StorePath</em> cannot be <strong>C:&#92;</strong>. You must specify the <em>StorePath</em> option in the <strong>ScanState</strong> command, except when using the <strong>/genconfig</strong> option. You cannot specify more than one <em>StorePath</em> location.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/apps</strong></p></td>
<td align="left"><p>Scans the image for apps and includes them and their associated registry settings.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/ppkg</strong> [<em>&lt;FileName&gt;</em>]</p></td>
<td align="left"><p>Exports to a specific file location.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/o</strong></p></td>
<td align="left"><p>Required to overwrite any existing data in the migration store or Config.xml file. If not specified, the <strong>ScanState</strong> command will fail if the migration store already contains data. You cannot use this option more than once on a command line.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/vsc</strong></p></td>
<td align="left"><p>This option enables the volume shadow-copy service to migrate files that are locked or in use. This command-line option eliminates most file-locking errors that are typically encountered by the <strong>&lt;ErrorControl&gt;</strong> section.</p>
<p>This option can be used only with the ScanState executable file and cannot be combined with the <strong>/hardlink</strong> option.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/hardlink</strong></p></td>
<td align="left"><p>Enables the creation of a hard-link migration store at the specified location. The <strong>/nocompress</strong> option must be specified with the <strong>/hardlink</strong> option.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/encrypt</strong> [{<strong>/key:</strong><em>&lt;KeyString&gt;</em> | <strong>/keyfile</strong>:<em>&lt;file&gt;</em>]}</p></td>
<td align="left"><p>Encrypts the store with the specified key. Encryption is disabled by default. With this option, you will need to specify the encryption key in one of the following ways:</p>
<ul>
<li><p><strong>/key:</strong><em>KeyString</em> specifies the encryption key. If there is a space in <em>KeyString</em>, you will need to surround <em>KeyString</em> with quotation marks.</p></li>
<li><p><strong>/keyfile:</strong><em>FilePathAndName</em> specifies a text (.txt) file that contains the encryption key.</p></li>
</ul>
<p>We recommend that <em>KeyString</em> be at least eight characters long, but it cannot exceed 256 characters. The <strong>/key</strong> and <strong>/keyfile</strong> options cannot be used on the same command line. The <strong>/encrypt</strong> and <strong>/nocompress</strong> options cannot be used on the same command line.</p>
<div class="alert">
<strong>Important</strong>  
<p>You should use caution with this option, because anyone who has access to the <strong>ScanState</strong> command-line script will also have access to the encryption key.</p>
</div>
<div>
 
</div>
<p>The following example shows the ScanState command and the <strong>/key</strong> option:</p>
<p><code>scanstate /i:migdocs.xml /i:migapp.xml \\server\share\migration\mystore /encrypt /key:mykey</code></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/encrypt</strong>:<em>&lt;EncryptionStrength&gt;</em></p></td>
<td align="left"><p>The <strong>/encrypt</strong> option accepts a command-line parameter to define the encryption strength to be used for encryption of the migration store. For more information about supported encryption algorithms, see [Migration Store Encryption](usmt-migration-store-encryption.md).</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/nocompress</strong></p></td>
<td align="left"><p>Disables compression of data and saves the files to a hidden folder named &quot;File&quot; at <em>StorePath</em>\USMT. Compression is enabled by default. Combining the <strong>/nocompress</strong> option with the <strong>/hardlink</strong> option generates a hard-link migration store. You can use the uncompressed store to view what USMT stored, troubleshoot a problem, or run an antivirus utility against the files. You should use this option only in testing environments, because we recommend that you use a compressed store during your actual migration, unless you are combining the <strong>/nocompress</strong> option with the <strong>/hardlink</strong> option.</p>
<p>The <strong>/nocompress</strong> and <strong>/encrypt</strong> options cannot be used together in one statement on the command line. However, if you do choose to migrate an uncompressed store, the <strong>LoadState</strong> command will migrate each file directly from the store to the correct location on the destination computer without a temporary location.</p>
<p>For example:</p>
<p><code>scanstate /i:migdocs.xml /i:migapp.xml \\server\share\migration\mystore /nocompress</code></p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="run-the-scanstate-command-on-an-offline-windows-system-"></a>Run the ScanState Command on an Offline Windows System


You can run the **ScanState** command in Windows Preinstallation Environment (WinPE). In addition, USMT supports migrations from previous installations of Windows contained in Windows.old directories. The offline directory can be a Windows directory when you run the **ScanState** command in WinPE or a Windows.old directory when you run the **ScanState** command in Windows.

There are several benefits to running the **ScanState** command on an offline Windows image, including:

-   **Improved Performance.**

    Because WinPE is a thin operating system, there are fewer running services. In this environment, the **ScanState** command has more access to the local hardware resources, enabling **ScanState** to perform migration operations more quickly.

-   **Simplified end to end deployment process.**

    Migrating data from Windows.old simplifies the end-to-end deployment process by enabling the migration process to occur after the new operating system is installed.

-   **Improved success of migration.**

    The migration success rate is increased because files will not be locked for editing while offline, and because WinPE provides administrator access to files in the offline Windows file system, eliminating the need for administrator-level access to the online system.

-   **Ability to recover an unbootable computer.**

    It might be possible to recover and migrate data from an unbootable computer.

## Offline Migration Options


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/offline:</strong><em>&quot;path to an offline.xml file&quot;</em></p></td>
<td align="left"><p>This option is used to define a path to an offline .xml file that might specify other offline migration options, for example, an offline Windows directory or any domain or folder redirection required in your migration.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/offlinewindir:</strong><em>&quot;path to a Windows directory&quot;</em></p></td>
<td align="left"><p>This option specifies the offline Windows directory that the <strong>ScanState</strong> command gathers user state from. The offline directory can be Windows.old when you run the <strong>ScanState</strong> command in Windows or a Windows directory when you run the <strong>ScanState</strong> command in WinPE.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/offlinewinold:</strong><em>&quot;Windows.old directory&quot;</em></p></td>
<td align="left"><p>This command-line option enables the offline migration mode and starts the migration from the location specified. It is only intended to be used in Windows.old migration scenarios, where the migration is occurring from a Windows.old directory.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-migrationruleoptions"></a>Migration Rule Options


USMT provides the following options to specify what files you want to migrate.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/i:</strong>[<em>Path</em>\]<em>FileName</em></p></td>
<td align="left"><p><strong>(include)</strong></p>
<p>Specifies an .xml file that contains rules that define what user, application or system state to migrate. You can specify this option multiple times to include all of your .xml files (MigApp.xml, MigDocs.xml, and any custom .xml files that you create). <em>Path</em> can be either a relative or full path. If you do not specify the <em>Path</em> variable, then <em>FileName</em> must be located in the current directory. For more information about which files to specify, see the &quot;XML Files&quot; section of the [Frequently Asked Questions](usmt-faq.md) topic.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/genconfig:</strong>[<em>Path</em>\]<em>FileName</em></p></td>
<td align="left"><p>(Generate <strong>Config.xml</strong>)</p>
<p>Generates the optional Config.xml file, but does not create a migration store. To ensure that this file contains every component, application and setting that can be migrated, you should create this file on a source computer that contains all the components, applications and settings that will be present on the destination computers. In addition, you should specify the other migration .xml files, using the <strong>/i</strong> option, when you specify this option.</p>
<p>After you create this file, you will need to make use of it with the <strong>ScanState</strong> command using the <strong>/config</strong> option.</p>
<p>The only options that you can specify with this option are the <strong>/i</strong>, <strong>/v</strong>, and <strong>/l</strong> options. You cannot specify <em>StorePath</em>, because the <strong>/genconfig</strong> option does not create a store. <em>Path</em> can be either a relative or full path. If you do not specify the <em>Path</em> variable, then <em>FileName</em> will be created in the current directory.</p>
<p>Examples:</p>
<ul>
<li><p>The following example creates a Config.xml file in the current directory:</p>
<p><code>scanstate /i:migapp.xml /i:migdocs.xml /genconfig:config.xml /v:13</code></p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/config:</strong>[<em>Path\</em>]<em>FileName</em></p></td>
<td align="left"><p>Specifies the Config.xml file that the <strong>ScanState</strong> command should use to create the store. You cannot use this option more than once on the command line. <em>Path</em> can be either a relative or full path. If you do not specify the <em>Path</em> variable, then <em>FileName</em> must be located in the current directory.</p>
<p>The following example creates a store using the Config.xml file, MigDocs.xml, and MigApp.xml files:</p>
<p><code>scanstate \\server\share\migration\mystore /config:config.xml /i:migdocs.xml /i:migapp.xml /v:13 /l:scan.log</code></p>
<p>The following example migrates the files and settings to the destination computer using the <strong>Config.xml</strong>, <strong>MigDocs.xml</strong>, and <strong>MigApp.xml</strong> files:</p>
<p><code>loadstate \\server\share\migration\mystore /config:config.xml /i:migdocs.xml /i:migapp.xml /v:13 /l:load.log</code></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/auto:</strong><em>path to script files</em></p></td>
<td align="left"><p>This option enables you to specify the location of the default .xml files and then begin the migration. If no path is specified, USMT will reference the directory where the USMT binaries are located. The <strong>/auto</strong> option has the same effect as using the following options: <strong>/i:MigDocs.xml</strong> <strong>/i:MigApp.xml /v:5</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/genmigxml:</strong><em>path to a file</em></p></td>
<td align="left"><p>This option specifies that the <strong>ScanState</strong> command should use the document finder to create and export an .xml file that defines how to migrate all of the files on the computer on which the <strong>ScanState</strong> command is running.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/targetwindows8</strong></p></td>
<td align="left"><p>Optimizes Scanstate.exe when using USMT 10.0 to migrate a user state to Windows 8 or Windows 8.1 instead of Windows 10. You should use this command line option in the following scenarios:</p>
<ul>
<li><p><strong>To create a Config.xml file by using the /genconfig option.</strong> Using the <strong>/targetwindows8</strong> option optimizes the Config.xml file so that it only contains components that relate to Windows 8 or Windows 8.1.</p></li>
<li><p><strong>To create a migration store.</strong> Using the <strong>/targetwindows8</strong> option ensures that the ScanState tool gathers the correct set of operating system settings. Without the <strong>/targetwindows8</strong> command-line option, some settings can be lost during the migration.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/targetwindows7</strong></p></td>
<td align="left"><p>Optimizes Scanstate.exe when using USMT 10.0 to migrate a user state to Windows 7 instead of Windows 10. You should use this command line option in the following scenarios:</p>
<ul>
<li><p><strong>To create a Config.xml file by using the /genconfig option.</strong> Using the <strong>/targetwindows7</strong> option optimizes the Config.xml file so that it only contains components that relate to Windows 7.</p></li>
<li><p><strong>To create a migration store.</strong> Using the <strong>/targetwindows7</strong> option ensures that the ScanState tool gathers the correct set of operating system settings. Without the <strong>/targetwindows7</strong> command-line option, some settings can be lost during the migration.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/localonly</strong></p></td>
<td align="left"><p>Migrates only files that are stored on the local computer, regardless of the rules in the .xml files that you specify on the command line. You should use this option when you want to exclude the data from removable drives on the source computer, such as USB flash drives (UFDs), some external hard drives, and so on, and when there are network drives mapped on the source computer. If the <strong>/localonly</strong> option is not specified, then the <strong>ScanState</strong> command will copy files from these removable or network drives into the store.</p>
<p>Anything that is not considered a fixed drive by the OS will be excluded by <strong>/localonly</strong>. In some cases large external hard drives are considered fixed drives. These drives can be explicitly excluded from migration by using a custom.xml file. For more information about how to exclude all files on a specific drive, see [Exclude Files and Settings](usmt-exclude-files-and-settings.md).</p>
<p>The <strong>/localonly</strong> command-line option includes or excludes data in the migration as identified in the following table:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Drive type</th>
<th align="left">Behavior with <strong>/localonly</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Removable drives such as a USB flash drive</p></td>
<td align="left"><p>Excluded</p></td>
</tr>
<tr class="even">
<td align="left"><p>Network drives</p></td>
<td align="left"><p>Excluded</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Fixed drives</p></td>
<td align="left"><p>Included</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-monitoringoptions"></a>Monitoring Options


USMT provides several options that you can use to analyze problems that occur during migration.

**Note**  
The ScanState log is created by default, but you can specify the name and location of the log with the **/l** option.

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/listfiles</strong>:&lt;FileName&gt;</p></td>
<td align="left"><p>You can use the <strong>/listfiles</strong> command-line option with the <strong>ScanState</strong> command to generate a text file that lists all of the files included in the migration.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/l:</strong>[<em>Path</em>\]<em>FileName</em></p></td>
<td align="left"><p>Specifies the location and name of the ScanState log.</p>
<p>You cannot store any of the log files in <em>StorePath</em>. <em>Path</em> can be either a relative or full path. If you do not specify the <em>Path</em> variable, then the log will be created in the current directory. You can use the <strong>/v</strong> option to adjust the amount of output.</p>
<p>If you run the <strong>ScanState</strong> or <strong>LoadState</strong> commands from a shared network resource, you must specify this option or USMT will fail with the following error: &quot;USMT was unable to create the log file(s)&quot;. To fix this issue, use the /<strong>l:scan.log</strong> command.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/v:</strong><em>&lt;VerbosityLevel&gt;</em></p></td>
<td align="left"><p><strong>(Verbosity)</strong></p>
<p>Enables verbose output in the ScanState log file. The default value is 0.</p>
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
<p> </p>
<p>For example:</p>
<p><code>scanstate \\server\share\migration\mystore /v:13 /i:migdocs.xml /i:migapp.xml</code></p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>progress</strong>:[<em>Path\</em>]<em>FileName</em></p></td>
<td align="left"><p>Creates the optional progress log. You cannot store any of the log files in <em>StorePath</em>. <em>Path</em> can be either a relative or full path. If you do not specify the <em>Path</em> variable, then <em>FileName</em> will be created in the current directory.</p>
<p>For example:</p>
<p><code>scanstate /i:migapp.xml /i:migdocs.xml \\server\share\migration\mystore /progress:prog.log /l:scanlog.log</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/c</strong></p></td>
<td align="left"><p>When this option is specified, the <strong>ScanState</strong> command will continue to run, even if non-fatal errors occur. Any files or settings that cause an error are logged in the progress log. For example, if there is a large file that will not fit in the store, the <strong>ScanState</strong> command will log an error and continue with the migration. In addition, if a file is open or in use by an application, USMT may not be able to migrate the file and will log an error. Without the <strong>/c</strong> option, the <strong>ScanState</strong> command will exit on the first error.</p>
<p>You can use the new &lt;<strong>ErrorControl</strong>&gt; section in the Config.xml file to specify which file or registry read/write errors can be safely ignored and which might cause the migration to fail. This enables the /<strong>c</strong> command-line option to safely skip all input/output (I/O) errors in your environment. In addition, the /<strong>genconfig</strong> option now generates a sample &lt;<strong>ErrorControl</strong>&gt; section that is enabled by specifying error messages and desired behaviors in the Config.xml file.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/r:</strong><em>&lt;TimesToRetry&gt;</em></p></td>
<td align="left"><p><strong>(Retry)</strong></p>
<p>Specifies the number of times to retry when an error occurs while saving the user state to a server. The default is three times. This option is useful in environments where network connectivity is not reliable.</p>
<p>While storing the user state, the <strong>/r</strong> option will not be able to recover data that is lost due to a network-hardware failure, such as a faulty or disconnected network cable, or when a virtual private network (VPN) connection fails. The retry option is intended for large, busy networks where connectivity is satisfactory, but communication latency is a problem.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/w:</strong><em>&lt;SecondsBeforeRetry&gt;</em></p></td>
<td align="left"><p><strong>(Wait)</strong></p>
<p>Specifies the time to wait, in seconds, before retrying a network file operation. The default is 1 second.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/p:</strong><em>&lt;pathToFile&gt;</em></p></td>
<td align="left"><p>When the <strong>ScanState</strong> command runs, it will create an .xml file in the path specified. This .xml file includes improved space estimations for the migration store. The following example shows how to create this .xml file:</p>
<p><code>Scanstate.exe C:\MigrationLocation [additional parameters]</code></p>
<p><code>/p:&quot;C:\MigrationStoreSize.xml&quot;</code></p>
<p>For more information, see [Estimate Migration Store Size](usmt-estimate-migration-store-size.md).</p>
<p>To preserve the functionality of existing applications or scripts that require the previous behavior of USMT, you can use the <strong>/p</strong> option, without specifying <em>&quot;pathtoafile&quot;</em>, in USMT. If you specify only the <strong>/p</strong> option, the storage space estimations are created in the same manner as with USMT3.x releases.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>?</strong> or /<strong>help</strong></p></td>
<td align="left"><p>Displays Help at the command line.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-useroptions"></a>User Options


By default, all users are migrated. The only way to specify which users to include and exclude is by using the following options. You cannot exclude users in the migration .xml files or using the Config.xml file. For more information, see [Identify Users](usmt-identify-users.md) and [Migrate User Accounts](usmt-migrate-user-accounts.md).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>/<strong>all</strong></p></td>
<td align="left"><p>Migrates all of the users on the computer.</p>
<p>USMT migrates all user accounts on the computer, unless you specifically exclude an account with either the /<strong>ue</strong> or /<strong>uel</strong> options. For this reason, you do not need to specify this option on the command line. However, if you choose to specify the /<strong>all</strong> option, you cannot also use the /<strong>ui</strong>, /<strong>ue</strong> or /<strong>uel</strong> options.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>ui</strong>:<em>&lt;DomainName&gt;</em>&#92;<em>&lt;UserName&gt;</em></p>
<p>or</p>
<p>/<strong>ui</strong>:<em>&lt;ComputerName&gt;</em>&#92;<em>&lt;LocalUserName&gt;</em></p></td>
<td align="left"><p><strong>(User include)</strong></p>
<p>Migrates the specified users. By default, all users are included in the migration. Therefore, this option is helpful only when used with the /<strong>ue</strong> or /<strong>uel</strong> options. You can specify multiple /<strong>ui</strong> options, but you cannot use the /<strong>ui</strong> option with the /<strong>all</strong> option. <em>DomainName</em> and <em>UserName</em> can contain the asterisk (*) wildcard character. When you specify a user name that contains spaces, you will need to surround it with quotation marks.</p>
<div class="alert">
<strong>Note</strong>  
<p>If a user is specified for inclusion with the /<strong>ui</strong> option, and also is specified to be excluded with either the /<strong>ue</strong> or /<strong>uel</strong> options, the user will be included in the migration.</p>
</div>
<div>
 
</div>
<p>For example:</p>
<ul>
<p>To include only User2 from the Fabrikam domain, type:</p>
<p><code>/ue:&#42;&#92;&#42; /ui:fabrikam\user2</code></p>
<p>To migrate all users from the Fabrikam domain, and only the user accounts from other domains that have been active or otherwise modified in the last 30 days, type:</p>
<p><code>/uel:30 /ui:fabrikam&#92;&#42;</code></p>
<p>In this example, a user account from the Contoso domain that was last modified 2 months ago will not be migrated.</p></li>
</ul>
<p>For more examples, see the descriptions of the /<strong>ue</strong> and /<strong>ui</strong> options in this table.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>uel</strong>:<em>&lt;NumberOfDays&gt;</em></p>
<p>or</p>
<p>/<strong>uel</strong>:<em>&lt;YYYY/MM/DD&gt;</em></p>
<p>or</p>
<p><strong>/uel:0</strong></p></td>
<td align="left"><p><strong>(User exclude based on last logon)</strong></p>
<p>Migrates the users that logged onto the source computer within the specified time period, based on the <strong>Last Modified</strong> date of the Ntuser.dat file on the source computer. The /<strong>uel</strong> option acts as an include rule. For example, the <strong>/uel:30</strong> option migrates users who logged on, or whose account was modified, within the last 30 days from the date when the ScanState command is run.</p>
<p>You can specify a number of days or you can specify a date. You cannot use this option with the /<strong>all</strong> option. USMT retrieves the last logon information from the local computer, so the computer does not need to be connected to the network when you run this option. In addition, if a domain user has logged onto another computer, that logon instance is not considered by USMT.</p>
<div class="alert">
<strong>Note</strong>  
<p>The /<strong>uel</strong> option is not valid in offline migrations.</p>
</div>
<div>
 
</div>
<ul>
<li><p><strong>/uel:0</strong> migrates any users who are currently logged on.</p></li>
<li><p><strong>/uel:90</strong> migrates users who have logged on, or whose accounts have been otherwise modified, within the last 90 days.</p></li>
<li><p><strong>/uel:1</strong> migrates users whose account has been modified within the last 24 hours.</p></li>
<li><p><strong>/uel:2002/1/15</strong> migrates users who have logged on or been modified January 15, 2002 or afterwards.</p></li>
</ul>
<p>For example:</p>
<p><code>scanstate /i:migapp.xml /i:migdocs.xml &#92;&#92;server\share\migration\mystore /uel:0</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>ue</strong>:<em>&lt;DomainName&gt;</em>&#92;<em>&lt;UserName&gt;</em></p>
<p>-or-</p>
<p></p>
<p>/<strong>ue</strong>:<em>&lt;ComputerName&gt;</em>&#92;<em>&lt;LocalUserName&gt;</em></p></td>
<td align="left"><p><strong>(User exclude)</strong></p>
<p>Excludes the specified users from the migration. You can specify multiple /<strong>ue</strong> options. You cannot use this option with the /<strong>all</strong> option. <em>&lt;DomainName&gt;</em> and <em>&lt;UserName&gt;</em> can contain the asterisk (*) wildcard character. When you specify a user name that contains spaces, you need to surround it with quotation marks.</p>
<p>For example:</p>
<p><code>scanstate /i:migdocs.xml /i:migapp.xml &#92;&#92;server\share\migration\mystore /ue:contoso\user1</code></p></td>
</tr>
</tbody>
</table>

 

## How to Use /ui and /ue


The following examples apply to both the /**ui** and /**ue** options. You can replace the /**ue** option with the /**ui** option to include, rather than exclude, the specified users.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Behavior</th>
<th align="left">Command</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Exclude the user named User One in the Fabrikam domain.</p></td>
<td align="left"><p><code>/ue:&quot;fabrikam\user one&quot;</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Exclude the user named User1 in the Fabrikam domain.</p></td>
<td align="left"><p><code>/ue:fabrikam\user1</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Exclude the local user named User1.</p></td>
<td align="left"><p><code>/ue:%computername%\user1</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Exclude all domain users.</p></td>
<td align="left"><p><code>/ue:Domain&#92;&#42;</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Exclude all local users.</p></td>
<td align="left"><p><code>/ue:%computername%&#92;&#42;</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Exclude users in all domains named User1, User2, and so on.</p></td>
<td align="left"><p><code>/ue:&#42;&#92;user&#42;</code></p></td>
</tr>
</tbody>
</table>

 

## Using the Options Together


You can use the /**uel**, /**ue** and /**ui** options together to migrate only the users that you want migrated.

The /**ui** option has precedence over the /**ue** and /**uel** options. If a user is specified to be included using the /**ui** option, and also specified to be excluded using either the /**ue** or /**uel** options, the user will be included in the migration. For example, if you specify `/ui:contoso\* /ue:contoso\user1`, then User1 will be migrated, because the /**ui** option takes precedence over the /**ue** option.

The /**uel** option takes precedence over the /**ue** option. If a user has logged on within the specified time period set by the /**uel** option, that user’s profile will be migrated even if they are excluded by using the /**ue** option. For example, if you specify `/ue:fixed\user1 /uel:14`, the User1 will be migrated if they have logged on to the computer within the last 14 days.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Behavior</th>
<th align="left">Command</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Include only User2 from the Fabrikam domain and exclude all other users.</p></td>
<td align="left"><p><code>/ue:&#42;&#92;&#42; /ui:fabrikam\user2</code></p></td>
</tr>
<tr class="even">
<td align="left"><p>Include only the local user named User1 and exclude all other users.</p></td>
<td align="left"><p><code>/ue:&#42;&#92;&#42; /ui:user1</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Include only the domain users from Contoso, except Contoso\User1.</p></td>
<td align="left"><p>This behavior cannot be completed using a single command. Instead, to migrate this set of users, you will need to specify the following:</p>
<ul>
<li><p>On the <strong>ScanState</strong> command line, type: <code>/ue:&#42;&#92;&#42; /ui:contoso&#92;&#42;</code></p></li>
<li><p>On the <strong>LoadState</strong> command line, type: <code>/ue:contoso\user1</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Include only local (non-domain) users.</p></td>
<td align="left"><p><code>/ue:&#42;&#92;&#42; /ui:%computername%&#92;&#42;</code></p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-efs"></a>Encrypted File Options


You can use the following options to migrate encrypted files. In all cases, by default, USMT fails if an encrypted file is found unless you specify an /**efs** option. To migrate encrypted files, you must change the default behavior.

For more information, see [Migrate EFS Files and Certificates](usmt-migrate-efs-files-and-certificates.md).

**Note**  
EFS certificates will be migrated automatically when migrating to Windows 7, Windows 8 or Windows 10. Therefore, you should specify the /**efs:copyraw** option with the **ScanState** command to migrate the encrypted files

 

**Caution**  
Take caution when migrating encrypted files. If you migrate an encrypted file without also migrating the certificate, end users will not be able to access the file after the migration.

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">Explanation</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/efs:hardlink</strong></p></td>
<td align="left"><p>Creates a hard link to the EFS file instead of copying it. Use only with the <strong>/hardlink</strong> and the <strong>/nocompress</strong> options.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/efs:abort</strong></p></td>
<td align="left"><p>Causes the <strong>ScanState</strong> command to fail with an error code, if an Encrypting File System (EFS) file is found on the source computer. Enabled by default.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/efs:skip</strong></p></td>
<td align="left"><p>Causes the <strong>ScanState</strong> command to ignore EFS files.</p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>efs:decryptcopy</strong></p></td>
<td align="left"><p>Causes the <strong>ScanState</strong> command to decrypt the file, if possible, before saving it to the migration store, and to fail if the file cannot be decrypted. If the <strong>ScanState</strong> command succeeds, the file will be unencrypted in the migration store, and once you run the <strong>LoadState</strong> command, the file will be copied to the destination computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/efs:copyraw</strong></p></td>
<td align="left"><p>Causes the <strong>ScanState</strong> command to copy the files in the encrypted format. The files will be inaccessible on the destination computer until the EFS certificates are migrated. EFS certificates will be automatically migrated; however, by default USMT fails if an encrypted file is found, unless you specify an <strong>/efs</strong> option. Therefore you should specify the <strong>/efs:copyraw</strong> option with the <strong>ScanState</strong> command to migrate the encrypted file. Then, when you run the <strong>LoadState</strong> command, the encrypted file and the EFS certificate will be automatically migrated.</p>
<p>For example:</p>
<p><code>ScanState /i:migdocs.xml /i:migapp.xml \\server\share\migration\mystore /efs:copyraw</code></p>
<div class="alert">
<strong>Important</strong>  
<p>All files must be encrypted if the parent folder is encrypted. If the encryption attribute on a file inside an encrypted folder has been removed, the file will be encrypted during the migration using the credentials of the account used to run the LoadState tool. For more information, see [Migrate EFS Files and Certificates](usmt-migrate-efs-files-and-certificates.md).</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-iclo"></a>Incompatible Command-Line Options


The following table indicates which command-line options are not compatible with the **ScanState** command. If the table entry for a particular combination is blank, the options are compatible and you can use them together. The X symbol means that the options are not compatible. For example, you cannot use the **/nocompress** option with the **/encrypt** option.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-Line Option</th>
<th align="left">/keyfile</th>
<th align="left">/nocompress</th>
<th align="left">/genconfig</th>
<th align="left">/all</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/i</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/o</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/v</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>nocompress</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>N/A</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>localonly</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>key</strong></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>encrypt</strong></p></td>
<td align="left"><p>Required*</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>keyfile</strong></p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>l</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>progress</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>r</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>w</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>c</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>p</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>N/A</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>all</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>ui</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>ue</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>uel</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>efs</strong>:<em>&lt;option&gt;</em></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>/<strong>genconfig</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>N/A</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>/<strong>config</strong></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p><em>&lt;StorePath&gt;</em></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 

**Note**  
You must specify either the /**key** or /**keyfile** option with the /**encrypt** option.

 

## Related topics


[XML Elements Library](usmt-xml-elements-library.md)

 

 





