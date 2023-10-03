---
title: ScanState Syntax (Windows 10)
description: The ScanState command is used with the User State Migration Tool (USMT) 10.0 to scan the source computer, collect the files and settings, and create a store.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# ScanState syntax

The `ScanState.exe` command is used with the User State Migration Tool (USMT) 10.0 to scan the source computer, collect the files and settings, and create a store. This article discusses the `ScanState.exe` command syntax and the options available with it.

## Before you begin

Before you run the `ScanState.exe` command, note the  items:

- To ensure that all operating system settings migrate, in most cases you must run the `ScanState.exe` commands in administrator mode from an account with administrative credentials.

- If you encrypt the migration store, you'll be required to enter an encryption key or a path to a file containing the encryption key. Be sure to make note of the key or the key file location, because this information isn't kept anywhere in the migration store. You'll need this information when you run the `LoadState.exe` command to decrypt the migration store, or if you need to run the recovery utility. An incorrect or missing key or key file results in an error message.

- For information about software requirements for running the `ScanState.exe` command, see [USMT requirements](usmt-requirements.md).

- Unless otherwise noted, you can use each option only once when running a tool on the command line.

- You can gather domain accounts without the source computer having domain controller access. This functionality is available without any extra configuration.

- The [Incompatible command-line options](#incompatible-command-line-options) table lists which options you can use together and which command-line options are incompatible.

- The directory location where you save the migration store will be excluded from the scan. For example, if you save the migration store to the root of the D drive, the D drive and all of its subdirectories will be excluded from the scan.

## Syntax

This section explains the syntax and usage of the command-line options available when you use the `ScanState.exe` command. The options can be specified in any order. If the option contains a parameter, you can use either a colon or a space separator.

The `ScanState.exe` command's syntax is:

> ScanState.exe \[*StorePath*\] \[/apps\] \[/ppkg:*FileName*\] \[/i:\[*Path*\\\]*FileName*\] \[/o\] \[/v:*VerbosityLevel*\] \[/nocompress\] \[/localonly\] \[/encrypt /key:*KeyString*|/keyfile:\[Path\\\]*FileName*\] \[/l:\[*Path*\\\]*FileName*\] \[/progress:\[*Path*\\\]*FileName*\] \[/r:*TimesToRetry*\] \[/w:*SecondsBeforeRetry*\] \[/c\] \[/p\] \[/all\] \[/ui:\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/ue:\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/uel:*NumberOfDays*|*YYYY/MM/DD*|0\] \[/efs:abort|skip|decryptcopy|copyraw\] \[/genconfig:\[*Path*\\\]*FileName*\[/config:\[*Path*\\\]*FileName*\] \[/?|help\]

For example, to create a `Config.xml` file in the current directory, use:

```cmd
ScanState.exe /i:MigApp.xml /i:MigDocs.xml /genconfig:Config.xml /v:13
```

To create an encrypted store using the `Config.xml` file and the default migration .xml files, use:

`ScanState.exe \\server\share\migration\mystore /i:MigApp.xml /i:MigDocs.xml /o /config:Config.xml /v:13 /encrypt /key:"mykey"`

## Storage options

| Command-Line Option | Description |
|-----|-----|
| *StorePath* | Indicates a folder where files and settings will be saved. *StorePath* can't be `C:\`. You must specify the *StorePath* option in the `ScanState.exe` command, except when using the `/genconfig` option. You can't specify more than one *StorePath* location. |
| **/apps** | Scans the image for apps and includes them and their associated registry settings. |
| **/ppkg** [*&lt;FileName&gt;*] | Exports to a specific file location. |
| **/o** | Required to overwrite any existing data in the migration store or `Config.xml` file. If not specified, the `ScanState.exe` command will fail if the migration store already contains data. You can't use this option more than once on a command line. |
| **/vsc** | This option enables the volume shadow-copy service to migrate files that are locked or in use. This command-line option eliminates most file-locking errors that are typically encountered by the **&lt;ErrorControl&gt;** section. <br/><br/>This option is only used with the **ScanState** executable file and can't be combined with the `/hardlink` option. |
| **/hardlink** | Enables the creation of a hard-link migration store at the specified location. The `/nocompress` option must be specified with the `/hardlink` option. |
| **/encrypt** [{**/key:** *&lt;KeyString&gt;* &#124; **/keyfile**:*&lt;file&gt;*]} | Encrypts the store with the specified key. Encryption is disabled by default. With this option, you'll need to specify the encryption key-in one of the following ways: <ul><li>`/key`: *KeyString* specifies the encryption key. If there's a space in *KeyString*, you'll need to surround *KeyString* with quotation marks (`"`).</li><li>`/keyfile`: *FilePathAndName* specifies a text (`.txt`) file that contains the encryption key.</li></ul> <br/>*KeyString* is recommended to be at least eight characters long, but it can't exceed 256 characters. The `/key` and `/keyfile` options can't be used on the same command line. The `/encrypt` and `/nocompress` options can't be used on the same command line. <div class="alert">**Important**<br/>Use caution when using the `/key` or `keyfile` options. For example, anyone who has access to scripts that run the `ScanState.exe` command with these options will also have access to the encryption key.</div> <br/>The following example shows the `ScanState.exe` command and the `/key` option: <br/>`ScanState.exe /i:MigDocs.xml /i:MigApp.xml \server\share\migration\mystore /encrypt /key:mykey` |
| **/encrypt**:*&lt;EncryptionStrength&gt;* | The `/encrypt` option accepts a command-line parameter to define the encryption strength to be used for encryption of the migration store. For more information about supported encryption algorithms, see [Migration Store Encryption](usmt-migration-store-encryption.md). |
| **/nocompress** | Disables compression of data and saves the files to a hidden folder named &quot;File&quot; at *StorePath*\USMT. Compression is enabled by default. Combining the `/nocompress` option with the `/hardlink` option generates a hard-link migration store. You can use the uncompressed store to view what USMT stored, troubleshoot a problem, or run an antivirus utility against the files. You should use this option only in testing environments, because we recommend that you use a compressed store during your actual migration, unless you're combining the `/nocompress` option with the `/hardlink` option. <br/><br/>The `/nocompress` and `/encrypt` options can't be used together in one statement on the command line. However, if you do choose to migrate an uncompressed store, the `LoadState.exe` command will migrate each file directly from the store to the correct location on the destination computer without a temporary location. <br/><br/>For example:<br/>`ScanState.exe /i:MigDocs.xml /i:MigApp.xml \server\share\migration\mystore /nocompress` |

## Run the ScanState command on an offline Windows system

You can run the `ScanState.exe` command in Windows Preinstallation Environment (WinPE). In addition, USMT supports migrations from previous installations of Windows contained in Windows.old directories. The offline directory can be a Windows directory when you run the `ScanState.exe` command in WinPE or a Windows.old directory when you run the `ScanState.exe` command in Windows.

There are several benefits to running the `ScanState.exe` command on an offline Windows image, including:

- **Improved performance.**

    Because WinPE is a thin operating system, there are fewer running services. In this environment, the `ScanState.exe` command has more access to the local hardware resources, enabling **ScanState** to perform migration operations more quickly.

- **Simplified end to end deployment process.**

    Migrating data from Windows.old simplifies the end-to-end deployment process by enabling the migration process to occur after the new operating system is installed.

- **Improved success of migration.**

    The migration success rate is increased because files won't be locked for editing while offline, and because WinPE provides administrator access to files in the offline Windows file system, eliminating the need for administrator-level access to the online system.

- **Ability to recover an unbootable computer.**

    It might be possible to recover and migrate data from an unbootable computer.

## Offline migration options

|Command-Line Option|Definition|
|--- |--- |
|**/offline:** *"path to an Offline.xml file"*|This option is used to define a path to an offline .xml file that might specify other offline migration options, for example, an offline Windows directory or any domain or folder redirection required in your migration.|
|**/offlinewindir:** *"path to a Windows directory"*|This option specifies the offline Windows directory that the `ScanState.exe` command gathers user state from. The offline directory can be Windows.old when you run the `ScanState.exe` command in Windows or a Windows directory when you run the `ScanState.exe` command in WinPE.|
|**/offlinewinold:** *"Windows.old directory"*|This command-line option enables the offline migration mode and starts the migration from the location specified. It's only intended to be used in Windows.old migration scenarios, where the migration is occurring from a Windows.old directory.|

## Migration rule options

USMT provides the following options to specify what files you want to migrate.

| Command-Line Option | Description |
|-----|-----|
| **/i:**[*Path*]*FileName* | **(include)** <br/><br/>Specifies an .xml file that contains rules that define what user, application, or system state to migrate. You can specify this option multiple times to include all of your .xml files (`MigApp.xml`, `MigDocs.xml`, and any custom .xml files that you create). *Path* can be either a relative or full path. If you don't specify the *Path* variable, then *FileName* must be located in the current directory. For more information about which files to specify, see the &quot;XML Files&quot; section of the [Frequently asked questions](usmt-faq.yml) article. |
| **/genconfig:**[*Path*]*FileName* | (Generate **Config.xml**) <br/><br/>Generates the optional `Config.xml` file, but doesn't create a migration store. To ensure that this file contains every component, application and setting that can be migrated, you should create this file on a source computer that contains all the components, applications, and settings that will be present on the destination computers. In addition, you should specify the other migration .xml files, using the **/i** option, when you specify this option.<br/><br/>After you create this file, you'll need to make use of it with the `ScanState.exe` command using the **/config** option.<br/><br/>The only options that you can specify with this option are the `/i`, `/v`, and `/l` options. You can't specify *StorePath*, because the `/genconfig` option doesn't create a store. *Path* can be either a relative or full path. If you don't specify the *Path* variable, then *FileName* will be created in the current directory.<br/><br/>Examples: <ul><li>The following example creates a `Config.xml` file in the current directory:<br/>`ScanState.exe /i:MigApp.xml /i:MigDocs.xml /genconfig:Config.xml /v:13`</li></ul> |
| **/config:**[*Path*]*FileName* | Specifies the `Config.xml` file that the `ScanState.exe` command should use to create the store. You can't use this option more than once on the command line. *Path* can be either a relative or full path. If you don't specify the *Path* variable, then *FileName* must be located in the current directory.<br/><br/>The following example creates a store using the `Config.xml` file, `MigDocs.xml`, and `MigApp.xml` files:<br/>`ScanState.exe \server\share\migration\mystore /config:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:ScanState.log`<br/><br/>The following example migrates the files and settings to the destination computer using the `Config.xml`, `MigDocs.xml`, and `MigApp.xml` files:<br/>`LoadState.exe  \server\share\migration\mystore /config:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:LoadState.log` |
| **/auto:** *path to script files* | This option enables you to specify the location of the default .xml files and then begin the migration. If no path is specified, USMT will reference the directory where the USMT binaries are located. The `/auto` option has the same effect as using the following options: `/i: MigDocs.xml /i:MigApp.xml /v:5`. |
| **/genmigxml:** *path to a file* | This option specifies that the `ScanState.exe` command should use the document finder to create and export an .xml file that defines how to migrate all of the files on the computer on which the `ScanState.exe` command is running. |
| **/targetwindows8** | Optimizes `ScanState.exe` when using USMT 10.0 to migrate a user state to Windows 8 or Windows 8.1 instead of Windows 10. You should use this command-line option in the following scenarios: <ul><li>**To create a `Config.xml` file by using the `/genconfig` option.** Using the `/targetwindows8` option optimizes the `Config.xml` file so that it only contains components that relate to Windows 8 or Windows 8.1.</li><li>**To create a migration store.** Using the `/targetwindows8` option ensures that the **ScanState** tool gathers the correct set of operating system settings. Without the `/targetwindows8` command-line option, some settings can be lost during the migration.</li></ul> |
| **/targetwindows7** | Optimizes `ScanState.exe` when using USMT 10.0 to migrate a user state to Windows 7 instead of Windows 10. You should use this command-line option in the following scenarios: <ul><li>**To create a `Config.xml` file by using the `/genconfig` option.** Using the **/targetwindows7** option optimizes the `Config.xml` file so that it only contains components that relate to Windows 7.</li><li>**To create a migration store.** Using the `/targetwindows7` option ensures that the **ScanState** tool gathers the correct set of operating system settings. Without the `/targetwindows7` command-line option, some settings can be lost during the migration.</li></ul> |
| **/localonly** | Migrates only files that are stored on the local computer, regardless of the rules in the .xml files that you specify on the command line. You should use this option when you want to exclude the data from removable drives on the source computer, such as USB flash drives (UFDs), some external hard drives, and so on, and when there are network drives mapped on the source computer. If the `/localonly` option isn't specified, then the `ScanState.exe` command will copy files from these removable or network drives into the store.<br/><br/>Anything that isn't considered a fixed drive by the OS will be excluded by `/localonly`. In some cases, large external hard drives are considered fixed drives. These drives can be explicitly excluded from migration by using a custom .xml file. For more information about how to exclude all files on a specific drive, see [Exclude files and settings](usmt-exclude-files-and-settings.md).<br/><br/>The `/localonly` command-line option includes or excludes data in the migration as identified in the following storage locations:<ul><li>**Removable drives such as a USB flash drive** - Excluded</li><li>**Network drives** - Excluded</li><li>**Fixed drives** - Included</li></ul>|

## Monitoring options

USMT provides several options that you can use to analyze problems that occur during migration.

> [!NOTE]
> The **ScanState** log is created by default, but you can specify the name and location of the log with the **/l** option.

| Command-Line Option | Description |
|-----|-----|
| **/listfiles**:&lt;FileName&gt; | You can use the `/listfiles` command-line option with the `ScanState.exe` command to generate a text file that lists all of the files included in the migration. |
| **/l:**[*Path*]*FileName* | Specifies the location and name of the **ScanState** log. <br/><br/>You can't store any of the log files in *StorePath*. *Path* can be either a relative or full path. If you don't specify the *Path* variable, then the log will be created in the current directory. You can use the `/v` option to adjust the amount of output. <br/><br/>If you run the `ScanState.exe` command from a shared network resource, you must specify the `/l` option, or USMT will fail with the following error:<br><br>***USMT was unable to create the log file(s)***<br><br>To fix this issue, make sure to specify the `/l` option when running `ScanState.exe` from a shared network resource. |
| **/v:***&lt;VerbosityLevel&gt;* | **(Verbosity)**<br/><br/>Enables verbose output in the **ScanState** log file. The default value is 0. <br/><br/>You can set the *VerbosityLevel* to one of the following levels: <ul><li>**0** - Only the default errors and warnings are enabled.</li><li>**1** - Enables verbose output.</li><li>**4** - Enables error and status output.</li><li>**5** - Enables verbose and status output.</li><li>**8** - Enables error output to a debugger.</li><li>**9** - Enables verbose output to a debugger.</li><li>**12** - Enables error and status output to a debugger.</li><li>**13** - Enables verbose, status, and debugger output.</li></ul> <br/>For example: <br/>`ScanState.exe \server\share\migration\mystore /v:13 /i:MigDocs.xml /i:MigApp.xml`|
| **/progress**:[*Path*]*FileName* | Creates the optional progress log. You can't store any of the log files in *StorePath*. *Path* can be either a relative or full path. If you don't specify the *Path* variable, then *FileName* will be created in the current directory.<br/><br/>For example: <br/>`ScanState.exe /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore /progress:Progress.log /l:scanlog.log` |
| **/c** | When this option is specified, the `ScanState.exe` command will continue to run, even if non-fatal errors occur. Any files or settings that cause an error are logged in the progress log. For example, if there's a large file that won't fit in the store, the `ScanState.exe` command will log an error and continue with the migration. In addition, if a file is open or in use by an application, USMT may not be able to migrate the file and will log an error. Without the `/c` option, the `ScanState.exe` command will exit on the first error.<br/><br/>You can use the new &lt;**ErrorControl**&gt; section in the `Config.xml` file to specify which file or registry read/write errors can be safely ignored and which might cause the migration to fail. This advantage in the `Config.xml` file enables the `/c` command-line option to safely skip all input/output (I/O) errors in your environment. In addition, the /`genconfig` option now generates a sample &lt;**ErrorControl**&gt; section that is enabled by specifying error messages and desired behaviors in the `Config.xml` file. |
| **/r:***&lt;TimesToRetry&gt;* | **(Retry)**<br/><br/>Specifies the number of times to retry when an error occurs while saving the user state to a server. The default is three times. This option is useful in environments where network connectivity isn't reliable.<br/><br/>While storing the user state, the `/r` option won't be able to recover data that is lost due to a network-hardware failure, such as a faulty or disconnected network cable, or when a virtual private network (VPN) connection fails. The retry option is intended for large, busy networks where connectivity is satisfactory, but communication latency is a problem. |
| **/w:***&lt;SecondsBeforeRetry&gt;* | **(Wait)**<br/><br/>Specifies the time to wait, in seconds, before retrying a network file operation. The default is 1 second. |
| **/p:***&lt;pathToFile&gt;* | When the `ScanState.exe` command runs, it will create an .xml file in the path specified. This .xml file includes improved space estimations for the migration store. The following example shows how to create this .xml file:<br/>`ScanState.exe C:\MigrationLocation [additional parameters]`<br/>`/p:"C:\MigrationStoreSize.xml"`<br/><br/>For more information, see [Estimate Migration Store Size](usmt-estimate-migration-store-size.md).<br/><br/>To preserve the functionality of existing applications or scripts that require the previous behavior of USMT, you can use the `/p` option, without specifying *&quot;pathtoafile&quot;*, in USMT. If you specify only the `/p` option, the storage space estimations are created in the same manner as with USMT3.x releases. |
| **/?** or **/help** | Displays Help at the command line. |

## User options

By default, all users are migrated. The only way to specify which users to include and exclude is by using the following options. You can't exclude users in the migration .xml files or using the `Config.xml` file. For more information, see [Identify users](usmt-identify-users.md) and [Migrate user accounts](usmt-migrate-user-accounts.md).

| Command-Line Option | Description |
|-----|-----|
| **/all** | Migrates all of the users on the computer. <br/><br/>USMT migrates all user accounts on the computer, unless you specifically exclude an account with either the `/ue` or `/uel` options. For this reason, you don't need to specify this option on the command line. However, if you choose to specify the `/all` option, you can't also use the `/ui`, `/ue` or `/uel` options. |
| **/ui**:*&lt;DomainName&gt;*&#92;*&lt;UserName&gt;*<br/>or<br/>**/ui**:*&lt;ComputerName&gt;*&#92;*&lt;LocalUserName&gt;* | **(User include)** <br/><br/>Migrates the specified users. By default, all users are included in the migration. Therefore, this option is helpful only when used with the `/ue` or `/uel` options. You can specify multiple `/ui` options, but you can't use the `/ui` option with the `/all` option. *DomainName* and *UserName* can contain the asterisk (`*`) wildcard character. When you specify a user name that contains spaces, you'll need to surround it with quotation marks (`"`). <div class="alert">**Note**<br/>If a user is specified for inclusion with the `/ui` option and also specified to be excluded with either the `/ue` or `/uel` options, the user will be included in the migration.</div><br/>For example:<br/><ul><li>To include only **User2** from the Fabrikam domain, enter:<br/><br/>`/ue:*\* /ui:fabrikam\user2`<br/><br/></li><li>To migrate all users from the Fabrikam domain, and only the user accounts from other domains that have been active or otherwise modified in the last 30 days, enter:<br/><br/>`/uel:30 /ui:fabrikam\*`<br/><br/>In this example, a user account from the Contoso domain that was last modified two months ago won't be migrated.</li></ul><br/>For more examples, see the descriptions of the `/ue` and `/ui` options in this table. |
| **/uel**:*&lt;NumberOfDays&gt;*<br/>or<br/>**/uel**:*&lt;YYYY/MM/DD&gt;*<br/>or<br/>**/uel:0** | **(User exclude based on last logon)**<br/><br/>Migrates the users that logged on to the source computer within the specified time period, based on the **Last Modified** date of the Ntuser.dat file on the source computer. The `/uel` option acts as an include rule. For example, the `/uel:30` option migrates users who logged on, or whose account was modified, within the last 30 days from the date when the `ScanState.exe` command is run.<br/><br/>You can specify the number of days or you can specify a date. You can't use this option with the `/all` option. USMT retrieves the last sign-in information from the local computer, so the computer doesn't need to be connected to the network when you run this option. In addition, if a domain user has signed in to another computer, that sign-in instance isn't considered by USMT. <div class="alert">**Note**<br/>The `/uel` option isn't valid in offline migrations.</div><ul><li>`/uel:0` migrates any users who are currently logged on.</li><li>`/uel:90` migrates users who have logged on, or whose accounts have been otherwise modified, within the last 90 days.</li><li>`/uel:1` migrates users whose account has been modified within the last 24 hours.</li><li>`/uel:2020/2/15` migrates users who have logged on or been modified February 15, 2020 or afterwards.</li></ul> <br/>For example: <br/>`ScanState.exe /i:MigApp.xml /i:MigDocs.xml \\server\share\migration\mystore /uel:0` |
| **/ue**:*&lt;DomainName&gt;*&#92;*&lt;UserName&gt;*<br/>-or-<br/><br/>**/ue**:*&lt;ComputerName&gt;*&#92;*&lt;LocalUserName&gt;* | **(User exclude)**<br/><br/>Excludes the specified users from the migration. You can specify multiple `/ue` options. You can't use this option with the `/all` option. *&lt;DomainName&gt;* and *&lt;UserName&gt;* can contain the asterisk (`*`) wildcard character. When you specify a user name that contains spaces, you need to surround it with quotation marks (`"`).<br/><br/>For example:<br/>`ScanState.exe /i:MigDocs.xml /i:MigApp.xml \\server\share\migration\mystore /ue:contoso\user1` |

## How to use /ui and /ue

The following examples apply to both the `/ui` and `/ue` options. You can replace the `/ue` option with the `/ui` option to include, rather than exclude, the specified users.

|Behavior|Command|
|--- |--- |
|Exclude the user named User One in the Fabrikam domain.|`/ue:"fabrikam\user one"`|
|Exclude the user named User1 in the Fabrikam domain.|`/ue:fabrikam\user1`|
|Exclude the local user named User1.|`/ue:%computername%\user1`|
|Exclude all domain users.|`/ue:Domain\*`|
|Exclude all local users.|`/ue:%computername%\*`|
|Exclude users in all domains named User1, User2, and so on.|`/ue:*\user*`|

## Using the options together

You can use the `/uel`, `/ue` and `/ui` options together to migrate only the users that you want migrated.

The `/ui` option has precedence over the `/ue` and `/uel` options. If a user is specified for inclusion with the `/ui` option and also specified to be excluded with either the `/ue` or `/uel` options, the user will be included in the migration. For example, if you specify `/ui:contoso\* /ue:contoso\user1`, then **User1** will be migrated, because the `/ui` option takes precedence over the `/ue` option.

The `/uel` option takes precedence over the `/ue` option. If a user has logged on within the specified time period set by the `/uel` option, that user's profile will be migrated even if they're excluded by using the `/ue` option. For example, if you specify `/ue:fixed\user1 /uel:14`, the User1 will be migrated if they've logged on to the computer within the last 14 days.

|Behavior|Command|
|--- |--- |
|Include only User2 from the Fabrikam domain and exclude all other users.|`/ue:*\* /ui:fabrikam\user2`|
|Include only the local user named User1 and exclude all other users.|`/ue:*\* /ui:user1`|
|Include only the domain users from Contoso, except Contoso\User1.|This behavior can't be completed using a single command. Instead, to migrate this set of users, you'll need to specify the following commands: <ul><li>On the `ScanState.exe` command line, enter:<br/> `/ue:*\* /ui:contoso\*`<br/></li><li>On the `LoadState.exe` command line, enter:<br/>`/ue:contoso\user1`</li></ul>|
|Include only local (non-domain) users.|`/ue:*\* /ui:%computername%\*`|

## Encrypted file options

You can use the following options to migrate encrypted files. In all cases, by default, USMT fails if an encrypted file is found unless you specify an `/efs` option. To migrate encrypted files, you must change the default behavior.

For more information, see [Migrate EFS Files and Certificates](usmt-migrate-efs-files-and-certificates.md).

> [!NOTE]
> EFS certificates will be migrated automatically when migrating to Windows 7, Windows 8 or Windows 10. Therefore, you should specify the `/efs:copyraw` option with the `ScanState.exe` command to migrate the encrypted files

> [!CAUTION]
> Take caution when migrating encrypted files. If you migrate an encrypted file without also migrating the certificate, end users will not be able to access the file after the migration.

| Command-Line Option | Explanation |
|----|----|
| **/efs:hardlink** | Creates a hard link to the EFS file instead of copying it. Use only with the `/hardlink` and the `/nocompress` options. |
| **/efs:abort** | Causes the `ScanState.exe` command to fail with an error code, if an Encrypting File System (EFS) file is found on the source computer. Enabled by default. |
| **/efs:skip** | Causes the `ScanState.exe` command to ignore EFS files. |
| **/efs:decryptcopy** | Causes the `ScanState.exe` command to decrypt the file, if possible, before saving it to the migration store, and to fail if the file can't be decrypted. If the `ScanState.exe` command succeeds, the file will be unencrypted in the migration store, and once you run the `LoadState.exe` command, the file will be copied to the destination computer. |
| **/efs:copyraw** | Causes the `ScanState.exe` command to copy the files in the encrypted format. The files will be inaccessible on the destination computer until the EFS certificates are migrated. EFS certificates will be automatically migrated; however, by default USMT fails if an encrypted file is found, unless you specify an `/efs` option. Therefore you should specify the `/efs:copyraw` option with the `ScanState.exe` command to migrate the encrypted file. Then, when you run the `LoadState.exe` command, the encrypted file and the EFS certificate will be automatically migrated.<br/><br/>For example: <br/>`ScanState.exe /i:MigDocs.xml /i:MigApp.xml \server\share\migration\mystore /efs:copyraw` <div class="alert">**Important** <br/>All files must be encrypted if the parent folder is encrypted. If the encryption attribute on a file inside an encrypted folder has been removed, the file will be encrypted during the migration using the credentials of the account used to run the **LoadState** tool. For more information, see [Migrate EFS files and certificates](usmt-migrate-efs-files-and-certificates.md).</div>|

## Incompatible command-line options

The following table indicates which command-line options aren't compatible with the `ScanState.exe` command. If the table entry for a particular combination is blank, the options are compatible and you can use them together. The X symbol means that the options aren't compatible. For example, you can't use the `/nocompress` option with the `/encrypt` option.

|Command-Line Option|/keyfile|/nocompress|/genconfig|/all|
|--- |--- |--- |--- |--- |
|**/i**|||||
|**/o**|||||
|**/v**|||||
|**/nocompress**||||N/A|
|**/localonly**|||X||
|**/key**|X||X||
|**/encrypt**|Required*|X|X||
|**/keyfile**|N/A||X||
|**/l**|||||
|**/listfiles**|||X||
|**/progress**|||X||
|**/r**|||X||
|**/w**|||X||
|**/c**|||X||
|**/p**|||X|N/A|
|**/all**|||X||
|**/ui**|||X|X|
|**/ue**|||X|X|
|**/uel**|||X|X|
|**/efs**:*&lt;option&gt;*|||X||
|**/genconfig**|||N/A||
|**/config**|||X||
|*&lt;StorePath&gt;*|||X||

> [!NOTE]
> You must specify either the `/key` or `/keyfile` option with the `/encrypt` option.

## Related articles

[XML Elements Library](usmt-xml-elements-library.md)
