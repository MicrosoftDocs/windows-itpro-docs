---
title: ScanState Syntax
description: The ScanState command is used with the User State Migration Tool (USMT) to scan the source computer, collect the files and settings, and create a store.
ms.reviewer: kevinmi,warrenw
manager: aaroncz
ms.author: frankroj
ms.service: windows-client
author: frankroj
ms.date: 04/30/2024
ms.topic: conceptual
ms.subservice: itpro-deploy
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# ScanState syntax

The `ScanState.exe` command is used with the User State Migration Tool (USMT) to scan the source computer, collect the files and settings, and create a store. This article discusses the `ScanState.exe` command syntax and the options available with it.

## Before beginning

Before running the `ScanState.exe` command, note the  items:

- To ensure that all operating system settings migrate, in run the `ScanState.exe` commands in administrator mode from an account with administrative credentials.

- If the migration store is encrypted, an encryption key or a path to a file containing the encryption key is required. Be sure to make note of the key or the key file location, because this information isn't kept anywhere in the migration store. This information is needed when the `LoadState.exe` command is run to decrypt the migration store, or if the recovery utility needs to be used. An incorrect or missing key or key file results in an error message.

- For information about software requirements for running the `ScanState.exe` command, see [USMT requirements](usmt-requirements.md).

- Unless otherwise noted, use each option only once when running a tool on the command line.

- Domain accounts can be gathered without the source computer having domain controller access. This functionality is available without any extra configuration.

- The [Incompatible command-line options](#incompatible-command-line-options) table lists which options can be used together and which command-line options are incompatible.

- The directory location where the migration store is saved is excluded from the scan. For example, if the migration store is saved to the root of the D drive, the D drive and all of its subdirectories is excluded from the scan.

## Syntax

This section explains the syntax and usage of the command-line options available when using the `ScanState.exe` command. The options can be specified in any order. If the option contains a parameter, either a colon or a space separator can be used.

The `ScanState.exe` command's syntax is:

> ScanState.exe \[*StorePath*\] \[/apps\] \[/ppkg:*FileName*\] \[/i:\[*Path*\\\]*FileName*\] \[/o\] \[/v:*VerbosityLevel*\] \[/nocompress\] \[/localonly\] \[/encrypt /key:*KeyString*|/keyfile:\[Path\\\]*FileName*\] \[/l:\[*Path*\\\]*FileName*\] \[/progress:\[*Path*\\\]*FileName*\] \[/r:*TimesToRetry*\] \[/w:*SecondsBeforeRetry*\] \[/c\] \[/p\] \[/all\] \[/ui:\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/ue:\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/uel:*NumberOfDays*|*YYYY/MM/DD*|0\] \[/efs:abort|skip|decryptcopy|copyraw\] \[/genconfig:\[*Path*\\\]*FileName*\[/config:\[*Path*\\\]*FileName*\] \[/?|help\]

For example, to create a `Config.xml` file in the current directory, use:

```cmd
ScanState.exe /i:MigApp.xml /i:MigDocs.xml /genconfig:Config.xml /v:13
```

To create an encrypted store using the `Config.xml` file and the default migration **.xml** files, use:

`ScanState.exe \\server\share\migration\mystore /i:MigApp.xml /i:MigDocs.xml /o /config:Config.xml /v:13 /encrypt /key:"mykey"`

## Storage options

| Command-Line Option | Description |
|-----|-----|
| *StorePath* | Indicates a folder where files and settings are saved. *StorePath* can't be `C:\`. The *StorePath* option must be specified in the `ScanState.exe` command, except when using the `/genconfig` option. More than one *StorePath* location can't be specified. |
| **/apps** | Scans the image for apps and includes them and their associated registry settings. |
| **/ppkg** [*\<FileName\>*] | Exports to a specific file location. |
| **/o** | Required to overwrite any existing data in the migration store or `Config.xml` file. If not specified, the `ScanState.exe` command fails if the migration store already contains data. This option can't be used more than once on a command line. |
| **/vsc** | This option enables the volume shadow-copy service to migrate files that are locked or in use. This command-line option eliminates most file-locking errors that are typically encountered by the **\<ErrorControl\>** section.<br><br>This option is only used with the **ScanState** executable file and can't be combined with the `/hardlink` option. |
| **/hardlink** | Enables the creation of a hard-link migration store at the specified location. The `/nocompress` option must be specified with the `/hardlink` option. |
| **/encrypt** [{**/key:** *\<KeyString\>* &#124; **/keyfile**:*\<file\>*]} | Encrypts the store with the specified key. Encryption is disabled by default. With this option, the encryption key needs to be specified in one of the following ways: <ul><li>`/key`: *KeyString* specifies the encryption key. If there's a space in *KeyString*, *KeyString* needs to be surrounded with quotation marks (`"`).</li><li>`/keyfile`: *FilePathAndName* specifies a text (`.txt`) file that contains the encryption key.</li></ul><br>*KeyString* is recommended to be at least eight characters long, but it can't exceed 256 characters. The `/key` and `/keyfile` options can't be used on the same command line. The `/encrypt` and `/nocompress` options can't be used on the same command line. <div class="alert">**Important**<br>Use caution when using the `/key` or `keyfile` options. For example, anyone who has access to scripts that run the `ScanState.exe` command with these options also have access to the encryption key.</div><br>The following example shows the `ScanState.exe` command and the `/key` option:<br>`ScanState.exe /i:MigDocs.xml /i:MigApp.xml \server\share\migration\mystore /encrypt /key:mykey` |
| **/encrypt**:*\<EncryptionStrength\>* | The `/encrypt` option accepts a command-line parameter to define the encryption strength to be used for encryption of the migration store. For more information about supported encryption algorithms, see [Migration Store Encryption](usmt-migration-store-encryption.md). |
| **/nocompress** | Disables compression of data and saves the files to a hidden folder named "File" at *StorePath*\USMT. Compression is enabled by default. Combining the `/nocompress` option with the `/hardlink` option generates a hard-link migration store. The uncompressed store can be used to view what USMT stored, troubleshoot a problem, or run an antivirus utility against the files. This option should only be used in testing environments. Microsoft recommends using a compressed store during production migrations, unless combining the `/nocompress` option with the `/hardlink` option.<br><br>The `/nocompress` and `/encrypt` options can't be used together in one statement on the command line. However, if an uncompressed store is migrated, the `LoadState.exe` command migrates each file directly from the store to the correct location on the destination computer without a temporary location.<br><br>For example:<br>`ScanState.exe /i:MigDocs.xml /i:MigApp.xml \server\share\migration\mystore /nocompress` |

## Run the ScanState command on an offline Windows system

The `ScanState.exe` command can be run in Windows Preinstallation Environment (WinPE). In addition, USMT supports migrations from previous installations of Windows contained in **Windows.old** directories. The offline directory can be a Windows directory when the `ScanState.exe` command is run in WinPE or a **Windows.old** directory when the `ScanState.exe` command is run in Windows.

There are several benefits to running the `ScanState.exe` command on an offline Windows image, including:

- **Improved performance.**

  Because WinPE is a thin operating system, there are fewer running services. In this environment, the `ScanState.exe` command has more access to the local hardware resources, enabling **ScanState** to perform migration operations more quickly.

- **Simplified end to end deployment process.**

  Migrating data from **Windows.old** simplifies the end-to-end deployment process by enabling the migration process to occur after the new operating system is installed.

- **Improved success of migration.**

  The migration success rate is increased because:

  - Files aren't locked for editing while offline.
  - WinPE provides administrator access to files in the offline Windows file system, eliminating the need for administrator-level access to the online system.

- **Ability to recover an from a computer that doesn't boot.**

  It might be possible to recover and migrate data from a computer that doesn't boot.

## Offline migration options

|Command-Line Option|Definition|
|--- |--- |
|**/offline:** *"path to an Offline.xml file"*|This option is used to define a path to an offline **.xml** file that might specify other offline migration options. For example, an offline Windows directory or any domain or folder redirection required in the migration.|
|**/offlinewindir:** *"path to a Windows directory"*|This option specifies the offline Windows directory that the `ScanState.exe` command gathers user state from. The offline directory can be **Windows.old** when the `ScanState.exe` command is run in Windows or a Windows directory when the `ScanState.exe` command is run in WinPE.|
|**/offlinewinold:** *"Windows.old directory"*|This command-line option enables the offline migration mode and starts the migration from the location specified. This option is only intended to be used in **Windows.old** migration scenarios, where the migration is occurring from a **Windows.old** directory.|

## Migration rule options

USMT provides the following options to specify what files to migrate.

| Command-Line Option | Description |
|-----|-----|
| **/i:**[*Path*]*FileName* | **(include)**<br><br>Specifies an **.xml** file that contains rules that define what user, application, or system state to migrate. This option can be specified multiple times to include all of the **.xml** files (`MigApp.xml`, `MigDocs.xml`, and any custom **.xml** files that are created). *Path* can be either a relative or full path. If the *Path* variable isn't specified, then *FileName* must be located in the current directory. For more information about which files to specify, see the "XML Files" section of the [Frequently asked questions](usmt-faq.yml) article. |
| **/genconfig:**[*Path*]*FileName* | (Generate **Config.xml**)<br><br>Generates the optional `Config.xml` file, but doesn't create a migration store. To ensure that this file contains everything that needs to be migrated, create this file on a source computer that contains all of the:<ul><li>components</li><li>applications</li><li>settings</li><li></ul>present on the destination computers. In addition, the other migration **.xml** files should be specified, using the **/i** option, when this option is specified.<br><br>After this file is created, it can be used with the `ScanState.exe` command using the **/config** option.<br><br>The only options that can be specified with this option are the `/i`, `/v`, and `/l` options. *StorePath* can't be specified, because the `/genconfig` option doesn't create a store. *Path* can be either a relative or full path. If the *Path* variable isn't specified, then *FileName* is created in the current directory.<br><br>Examples: <ul><li>The following example creates a `Config.xml` file in the current directory:<br>`ScanState.exe /i:MigApp.xml /i:MigDocs.xml /genconfig:Config.xml /v:13`</li></ul> |
| **/config:**[*Path*]*FileName* | Specifies the `Config.xml` file that the `ScanState.exe` command should use to create the store. This option can't be used more than once on the command line. *Path* can be either a relative or full path. If the *Path* variable isn't specified, then *FileName* must be located in the current directory.<br><br>The following example creates a store using the `Config.xml` file, `MigDocs.xml`, and `MigApp.xml` files:<br>`ScanState.exe \server\share\migration\mystore /config:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:ScanState.log`<br><br>The following example migrates the files and settings to the destination computer using the `Config.xml`, `MigDocs.xml`, and `MigApp.xml` files:<br>`LoadState.exe  \server\share\migration\mystore /config:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:13 /l:LoadState.log` |
| **/auto:** *path to script files* | This option enables specifying the location of the default **.xml** files. If no path is specified, USMT references the directory where the USMT binaries are located. The `/auto` option has the same effect as using the following options: `/i: MigDocs.xml /i:MigApp.xml /v:5`. |
| **/genmigxml:** *path to a file* | This option specifies that the `ScanState.exe` command should use the document finder to create and export an **.xml** file that defines how to migrate all of the files on the computer on which the `ScanState.exe` command is running. |
| **/localonly** | Migrates only files that are stored on the local computer, regardless of the rules in the **.xml** files that are specified on the command line. This option should be used to exclude the data from removable drives on the source computer and when there are network drives mapped on the source computer. Examples of removable drives include USB flash drives (UFDs) and some external hard drives. If the `/localonly` option isn't specified, then the `ScanState.exe` command copies files from these removable or network drives into the store.<br><br>`/localonly` excludes anything that isn't considered a fixed drive by the OS. In some cases, large external hard drives are considered fixed drives. These drives can be explicitly excluded from migration by using a custom **.xml** file. For more information about how to exclude all files on a specific drive, see [Exclude files and settings](usmt-exclude-files-and-settings.md).<br><br>The `/localonly` command-line option includes or excludes data in the migration as identified in the following storage locations:<ul><li>**Removable drives such as a USB flash drive** - Excluded</li><li>**Network drives** - Excluded</li><li>**Fixed drives** - Included</li></ul>|

## Monitoring options

USMT provides several options that can be used to analyze problems that occur during migration.

> [!NOTE]
>
> The **ScanState** log is created by default, but the name and location of the log can be specified with the **/l** option.

| Command-Line Option | Description |
|-----|-----|
| **/listfiles**:\<FileName\> | The `/listfiles` command-line option can be used with the `ScanState.exe` command to generate a text file that lists all of the files included in the migration. |
| **/l:**[*Path*]*FileName* | Specifies the location and name of the **ScanState** log.<br><br>The log files can't be stored in *StorePath*. *Path* can be either a relative or full path. If the *Path* variable isn't specified, then the log is created in the current directory. The `/v` option can be used to adjust the amount of output.<br><br>If the `ScanState.exe` command is run from a shared network resource, the `/l` option must be specified, or USMT fails with the following error:<br><br>***USMT was unable to create the log file(s)***<br><br>To fix this issue, make sure to specify the `/l` option when running `ScanState.exe` from a shared network resource. |
| **/v:***\<VerbosityLevel\>* | **(Verbosity)**<br><br>Enables verbose output in the **ScanState** log file. The default value is 0.<br><br>The *VerbosityLevel* can be set to one of the following levels: <ul><li>**0** - Only the default errors and warnings are enabled.</li><li>**1** - Enables verbose output.</li><li>**4** - Enables error and status output.</li><li>**5** - Enables verbose and status output.</li><li>**8** - Enables error output to a debugger.</li><li>**9** - Enables verbose output to a debugger.</li><li>**12** - Enables error and status output to a debugger.</li><li>**13** - Enables verbose, status, and debugger output.</li></ul><br>For example:<br>`ScanState.exe \server\share\migration\mystore /v:13 /i:MigDocs.xml /i:MigApp.xml`|
| **/progress**:[*Path*]*FileName* | Creates the optional progress log. The log files can't be stored in *StorePath*. *Path* can be either a relative or full path. If the *Path* variable isn't specified, then *FileName* is created in the current directory.<br><br>For example:<br>`ScanState.exe /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore /progress:Progress.log /l:scanlog.log` |
| **/c** | When this option is specified, the `ScanState.exe` command continues to run, even if non-fatal errors occur. Any files or settings that cause an error are logged in the progress log. For example, if there's a large file that doesn't fit in the store, the `ScanState.exe` command logs an error and continue with the migration. In addition, if a file is open or in use by an application, USMT might not be able to migrate the file and logs an error. Without the `/c` option, the `ScanState.exe` command exits on the first error.<br><br>The \<**ErrorControl**\> section in the `Config.xml` file can be used to specify which file or registry read/write errors can be safely ignored and which might cause the migration to fail. This advantage in the `Config.xml` file enables the `/c` command-line option to safely skip all input/output (I/O) errors in the environment. In addition, the /`genconfig` option now generates a sample \<**ErrorControl**\> section that is enabled by specifying error messages and desired behaviors in the `Config.xml` file. |
| **/r:***\<TimesToRetry\>* | **(Retry)**<br><br>Specifies the number of times to retry when an error occurs while saving the user state to a server. The default is three times. This option is useful in environments where network connectivity isn't reliable.<br><br>When the user state is stored, the `/r` option can't recover data that is lost due to a network-hardware failure, such as a faulty or disconnected network cable, or when a virtual private network (VPN) connection fails. The retry option is intended for large, busy networks where connectivity is satisfactory, but communication latency is a problem. |
| **/w:***\<SecondsBeforeRetry\>* | **(Wait)**<br><br>Specifies the time to wait, in seconds, before retrying a network file operation. The default is 1 second. |
| **/p:***\<pathToFile\>* | When the `ScanState.exe` command runs, it creates an **.xml** file in the path specified. This **.xml** file includes improved space estimations for the migration store. The following example shows how to create this **.xml** file:<br>`ScanState.exe C:\MigrationLocation [additional parameters]`<br>`/p:"C:\MigrationStoreSize.xml"`<br><br>For more information, see [Estimate Migration Store Size](usmt-estimate-migration-store-size.md).<br><br>To preserve the functionality of existing applications or scripts that require the previous behavior of USMT, the `/p` option can be used, without specifying *"pathtoafile"*, in USMT. If only the `/p` option is specified, the storage space estimations are created in the same manner as with USMT 3.x releases. |
| **/?** or **/help** | Displays Help at the command line. |

## User options

By default, all users are migrated. The only way to specify which users to include and exclude is by using the following options. Users can't be excluded in the migration **.xml** files or using the `Config.xml` file. For more information, see [Identify users](usmt-identify-users.md) and [Migrate user accounts](usmt-migrate-user-accounts.md).

| Command-Line Option | Description |
|-----|-----|
| **/all** | Migrates all of the users on the computer.<br><br>USMT migrates all user accounts on the computer, unless an account is specifically excluded with either the `/ue` or `/uel` options. For this reason, this option doesn't need to be specified on the command line. However, if the `/all` option is specified, the `/ui`, `/ue` or `/uel` options can't also be specified. |
| **/ui**:*\<DomainName\>*&#92;*\<UserName\>*<br>or<br>**/ui**:*\<ComputerName\>*&#92;*\<LocalUserName\>* | **(User include)**<br><br>Migrates the specified users. By default, all users are included in the migration. Therefore, this option is helpful only when used with the `/ue` or `/uel` options. Multiple `/ui` options can be specified, but the `/ui` option can't be used with the `/all` option. *DomainName* and *UserName* can contain the asterisk (`*`) wildcard character. When a user name that contains spaces is specified, it needs to be surrounded with quotation marks (`"`). <div class="alert">**Note**<br>If a user is specified for inclusion with the `/ui` option and also specified to be excluded with either the `/ue` or `/uel` options, the user is included in the migration.</div><br>For example:<br><ul><li>To include only **User2** from the Fabrikam domain, enter:<br><br>`/ue:*\* /ui:fabrikam\user2`<br><br></li><li>To migrate all users from the Fabrikam domain, and only the user accounts from other domains that are active or otherwise modified in the last 30 days, enter:<br><br>`/uel:30 /ui:fabrikam\*`<br><br>In this example, a user account from the Contoso domain that was last modified two months ago isn't migrated.</li></ul><br>For more examples, see the descriptions of the `/ue` and `/ui` options in this table. |
| **/uel**:*\<NumberOfDays\>*<br>or<br>**/uel**:*\<YYYY/MM/DD\>*<br>or<br>**/uel:0** | **(User exclude based on last logon)**<br><br>Migrates the users that logged on to the source computer within the specified time period, based on the **Last Modified** date of the Ntuser.dat file on the source computer. The `/uel` option acts as an include rule. For example, the `/uel:30` option migrates users who logged on, or whose account was modified, within the last 30 days from the date when the `ScanState.exe` command is run.<br><br>The number of days or the date can be specified. This option can't be used with the `/all` option. USMT retrieves the last sign-in information from the local computer, so the computer doesn't need to be connected to the network when running this option. In addition, if a domain user signs in to another computer, USMT doesn't consider that sign-in instance. <div class="alert">**Note**<br>The `/uel` option isn't valid in offline migrations.</div><ul><li>`/uel:0` migrates any users who are currently logged on.</li><li>`/uel:90` migrates users who logged on, or whose accounts were otherwise modified, within the last 90 days.</li><li>`/uel:1` migrates users whose account were modified within the last 24 hours.</li><li>`/uel:2020/2/15` migrates users who logged on or been modified February 15, 2020 or afterwards.</li></ul><br>For example:<br>`ScanState.exe /i:MigApp.xml /i:MigDocs.xml \\server\share\migration\mystore /uel:0` |
| **/ue**:*\<DomainName\>*&#92;*\<UserName\>*<br>-or-<br><br>**/ue**:*\<ComputerName\>*&#92;*\<LocalUserName\>* | **(User exclude)**<br><br>Excludes the specified users from the migration. Multiple `/ue` options can be specified. This option can't be used with the `/all` option. *\<DomainName\>* and *\<UserName\>* can contain the asterisk (`*`) wildcard character. When a user name that contains spaces is specified, it needs to be surrounded with quotation marks (`"`).<br><br>For example:<br>`ScanState.exe /i:MigDocs.xml /i:MigApp.xml \\server\share\migration\mystore /ue:contoso\user1` |

## How to use /ui and /ue

The following examples apply to both the `/ui` and `/ue` options. The `/ue` option can be replaced with the `/ui` option to include, rather than exclude, the specified users.

|Behavior|Command|
|--- |--- |
|Exclude the user named User One in the Fabrikam domain.|`/ue:"fabrikam\user one"`|
|Exclude the user named User1 in the Fabrikam domain.|`/ue:fabrikam\user1`|
|Exclude the local user named User1.|`/ue:%computername%\user1`|
|Exclude all domain users.|`/ue:Domain\*`|
|Exclude all local users.|`/ue:%computername%\*`|
|Exclude users in all domains named User1, User2, and so on.|`/ue:*\user*`|

## Using the options together

The `/uel`, `/ue` and `/ui` options can be used together to migrate only the users that need to be migrated.

The `/ui` option has precedence over the `/ue` and `/uel` options. If a user is specified for inclusion with the `/ui` option and also specified to be excluded with either the `/ue` or `/uel` options, the user is included in the migration. For example, if `/ui:contoso\* /ue:contoso\user1` is specified, then **User1** is migrated, because the `/ui` option takes precedence over the `/ue` option.

The `/uel` option takes precedence over the `/ue` option. If a user logged on within the specified time period set by the `/uel` option, that user's profile is migrated even if they're excluded by using the `/ue` option. For example, if `/ue:fixed\user1 /uel:14` is specified, then User1 is migrated if they logged on to the computer within the last 14 days.

|Behavior|Command|
|--- |--- |
|Include only User2 from the Fabrikam domain and exclude all other users.|`/ue:*\* /ui:fabrikam\user2`|
|Include only the local user named User1 and exclude all other users.|`/ue:*\* /ui:user1`|
|Include only the domain users from Contoso, except Contoso\User1.|This behavior can't be completed using a single command. Instead, to migrate this set of users, specify the following commands: <ul><li>On the `ScanState.exe` command line, enter:<br> `/ue:*\* /ui:contoso\*`<br></li><li>On the `LoadState.exe` command line, enter:<br>`/ue:contoso\user1`</li></ul>|
|Include only local (non-domain) users.|`/ue:*\* /ui:%computername%\*`|

## Encrypted file options

The following options can be used to migrate encrypted files. In all cases, by default, USMT fails if an encrypted file is found unless the `/efs` option is specified. To migrate encrypted files, the default behavior must be changed.

For more information, see [Migrate EFS Files and Certificates](usmt-migrate-efs-files-and-certificates.md).

> [!NOTE]
>
> EFS certificates are migrated automatically during the migration. Therefore, the `/efs:copyraw` option should be specified with the `ScanState.exe` command to migrate the encrypted files.

> [!CAUTION]
>
> Take caution when migrating encrypted files. If an encrypted file is migrated without also migrating the certificate, end users won't be able to access the file after the migration.

| Command-Line Option | Explanation |
|----|----|
| **/efs:hardlink** | Creates a hard link to the EFS file instead of copying it. Use only with the `/hardlink` and the `/nocompress` options. |
| **/efs:abort** | Causes the `ScanState.exe` command to fail with an error code, if an Encrypting File System (EFS) file is found on the source computer. Enabled by default. |
| **/efs:skip** | Causes the `ScanState.exe` command to ignore EFS files. |
| **/efs:decryptcopy** | Causes the `ScanState.exe` command to decrypt the file, if possible, before saving it to the migration store, and to fail if the file can't be decrypted. If the `ScanState.exe` command succeeds, the file is unencrypted in the migration store, and once the `LoadState.exe` command is run, the file is copied to the destination computer. |
| **/efs:copyraw** | Causes the `ScanState.exe` command to copy the files in the encrypted format. The files are inaccessible on the destination computer until the EFS certificates are migrated. EFS certificates are automatically migrated; however, by default USMT fails if an encrypted file is found, unless the `/efs` option is specified. Therefore the `/efs:copyraw` option should be specified with the `ScanState.exe` command to migrate the encrypted file. When the `LoadState.exe` command is run, the encrypted file and the EFS certificate are automatically migrated.<br><br>For example:<br>`ScanState.exe /i:MigDocs.xml /i:MigApp.xml \server\share\migration\mystore /efs:copyraw` <div class="alert">**Important**<br>All files must be encrypted if the parent folder is encrypted. If the encryption attribute on a file inside an encrypted folder is removed, the file is encrypted during the migration using the credentials of the account used to run the **LoadState** tool. For more information, see [Migrate EFS files and certificates](usmt-migrate-efs-files-and-certificates.md).</div>|

## Incompatible command-line options

The following table indicates which command-line options aren't compatible with the `ScanState.exe` command. If the table entry for a particular combination has a ✅, the options are compatible and they can be used together. The ❌ symbol means that the options aren't compatible. For example, the `/nocompress` option can't be used with the `/encrypt` option.

|Command-Line Option|/keyfile|/nocompress|/genconfig|/all|
|--- |--- |--- |--- |--- |
|**/i**| ✅ | ✅ | ✅ | ✅ |
|**/o**| ✅ | ✅ | ✅ | ✅ |
|**/v**| ✅ | ✅ | ✅ | ✅ |
|**/nocompress**| ✅ | ✅ | ✅ |N/A|
|**/localonly**| ✅ | ✅ | ❌ | ✅ |
|**/key**| ❌ | ✅ | ❌ | ✅ |
|**/encrypt**|Required*| ❌ | ❌ | ✅ |
|**/keyfile**|N/A| ✅ | ❌ | ✅ |
|**/l**| ✅ | ✅ | ✅ | ✅ |
|**/listfiles**| ✅ | ✅ | ❌ | ✅ |
|**/progress**| ✅ | ✅ | ❌ | ✅ |
|**/r**| ✅ | ✅ | ❌ | ✅ |
|**/w**| ✅ | ✅ | ❌ | ✅ |
|**/c**| ✅ | ✅ | ❌ | ✅ |
|**/p**| ✅ | ✅ | ❌ |N/A|
|**/all**| ✅ | ✅ | ❌ | ✅ |
|**/ui**| ✅ | ✅ | ❌ | ❌ |
|**/ue**| ✅ | ✅ | ❌ | ❌ |
|**/uel**| ✅ | ✅ | ❌ | ❌ |
|**/efs**:*\<option\>*| ✅ | ✅ | ❌ | ✅ |
|**/genconfig**| ✅ | ✅ |N/A| ✅ |
|**/config**| ✅ | ✅ | ❌ | ✅ |
|*\<StorePath\>*| ✅ | ✅ | ❌ | ✅ |

> [!NOTE]
>
> Either the `/key` or `/keyfile` option must be specified with the `/encrypt` option.

## Related articles

- [XML Elements Library](usmt-xml-elements-library.md).
