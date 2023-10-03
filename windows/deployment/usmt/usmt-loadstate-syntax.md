---
title: LoadState Syntax (Windows 10)
description: Learn about the syntax and usage of the command-line options available when you use the LoadState command.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# LoadState syntax

The `LoadState.exe` command is used with the User State Migration Tool (USMT) 10.0 to restore a store previously captured by the `ScanState.exe` command onto a destination computer. This article discusses the `LoadState.exe` command syntax and the options available with it.

## Before you begin

Before you run the `LoadState.exe` command, note the following items:

- To ensure that all operating system settings migrate, we recommend that you run the `LoadState.exe` commands in administrator mode from an account with administrative credentials.

- For information about software requirements for running the `LoadState.exe` command, see [USMT requirements](usmt-requirements.md).

- You should sign out after you run the `LoadState.exe` command. Some settings, such as example, fonts, wallpaper, and screensaver settings, won't take effect until the next time the user logs in.

- Unless otherwise specified, you can use each option only once when running a tool on the command line.

- **LoadState** doesn't require domain controller access to apply domain profiles. This functionality is available without any additional configuration. It isn't necessary for the source computer to have had domain controller access when the user profile was gathered using **ScanState**. However, domain profiles are inaccessible until the destination computer is joined to the domain.

- The [Incompatible command-line options](#incompatible-command-line-options) table lists which options you can use together and which command-line options are incompatible.

## Syntax

This section explains the syntax and usage of the command-line options available when you use the `LoadState.exe` command. The options can be specified in any order. If the option contains a parameter, you can specify either a colon or space separator.

The `LoadState.exe` command's syntax is:

<!--
`LoadState.exe  StorePath [/i:[Path\]FileName] [/v:VerbosityLevel] [/nocompress] [/decrypt /key:KeyString|/keyfile:[Path\]FileName] [/l:[Path\]FileName] [/progress:[Path\]FileName] [/r:TimesToRetry] [/w:SecondsToWait] [/c] [/all] [/ui:[DomainName|ComputerName\]UserName] [/ue:[[DomainName|ComputerName\]UserName] [/uel:NumberOfDays|YYYY/MM/DD|0] [/md:OldDomain:NewDomain] [/mu:OldDomain\OldUserName:[NewDomain\]NewUserName] [/lac:[Password]] [/lae] [/config:[Path\]FileName] [/?|help]`
-->

> LoadState.exe  *StorePath* \[/i:\[*Path*\\\]*FileName*\] \[/v:*VerbosityLevel*\] \[/nocompress\] \[/decrypt /key:*KeyString*|/keyfile:\[Path\\\]*FileName*\] \[/l:\[*Path*\\\]*FileName*\] \[/progress:\[*Path*\\\]*FileName*\] \[/r:*TimesToRetry*\] \[/w:*SecondsToWait*\] \[/c\] \[/all\] \[/ui:\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/ue:\[\[*DomainName*|*ComputerName*\\\]*UserName*\] \[/uel:*NumberOfDays*|*YYYY/MM/DD*|0\] \[/md:*OldDomain*:*NewDomain*\] \[/mu:*OldDomain*\\*OldUserName*:\[*NewDomain*\\\]*NewUserName*\] \[/lac:\[*Password*\]\] \[/lae\] \[/config:\[*Path*\\\]*FileName*\] \[/?|help\]

For example, to decrypt the store and migrate the files and settings to a computer, type the following command:

`LoadState.exe  \\server\share\migration\mystore /i:MigApp.xml /i:MigDocs.xml /v:13 /decrypt /key:"mykey"`

## Storage options

USMT provides the following options that you can use to specify how and where the migrated data is stored.

| Command-Line Option | Description |
|--- |--- |
| **StorePath** | Indicates the folder where the files and settings data are stored. You must specify *StorePath* when using the `LoadState.exe` command. You can't specify more than one *StorePath*. |
| **/decrypt /key**:*KeyString* <br/>or <br/>**/decrypt /key**:"*Key String*" <br/>or <br/>**/decrypt /keyfile**:[*Path*]*FileName* | Decrypts the store with the specified key. With this option, you'll need to specify the encryption key in one of the following ways:<ul><li>`/key`:*KeyString* specifies the encryption key. If there's a space in *KeyString*, you must surround the argument with quotation marks (`"`).</li><li>`/keyfile`:*FilePathAndName* specifies a text (`.txt`) file that contains the encryption key</li></ul> <br/>*KeyString* can't exceed 256 characters. <br/>The `/key` and `/keyfile` options can't be used on the same command line. <br/>The `/decrypt` and `/nocompress` options can't be used on the same command line. <br/><div class="alert">**Important** <br/> Use caution when using the `/key` or `keyfile` options. For example, anyone who has access to scripts that run the `LoadState.exe` command with these options will also have access to the encryption key.</div> <br/>For example: <br/>`LoadState.exe  /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore /decrypt /key:mykey` |
| **/decrypt**:*"encryption strength"* | The `/decrypt` option accepts a command-line parameter to define the encryption strength specified for the migration store encryption. For more information about supported encryption algorithms, see [Migration Store Encryption](usmt-migration-store-encryption.md). |
| **/hardlink** | Enables user-state data to be restored from a hard-link migration store. The `/nocompress` parameter must be specified with `/hardlink` option. |
| **/nocompress** | Specifies that the store isn't compressed. You should only use this option in testing environments. We recommend that you use a compressed store during your actual migration. This option can't be used with the `/decrypt` option. <br/>For example: <br/>`LoadState.exe  /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore /nocompress` |

## Migration rule options

USMT provides the following options to specify what files you want to migrate.

| Command-Line Option | Description |
|--- |--- |
| **/i**:[*Path*]*FileName* | **(include)** <br/>Specifies an .xml file that contains rules that define what state to migrate. You can specify this option multiple times to include all of your .xml files (`MigApp.xml`, `MigSys.xml`, `MigDocs.xml` and any custom .xml files that you create). *Path* can be either a relative or full path. If you don't specify the *Path* variable, then *FileName* must be located in the current directory. <br/><br/>For more information about which files to specify, see the &quot;XML files&quot; section of the [Frequently Asked Questions](usmt-faq.yml) article. |
| **/config**:[*Path*]*FileName* | Specifies the `Config.xml` file that the `LoadState.exe` command should use. You can't specify this option more than once on the command line. *Path* can be either a relative or full path. If you don't specify the *Path* variable, then the *FileName* must be located in the current directory. <br/><br/>This example migrates the files and settings based on the rules in the `Config.xml`, `MigDocs.xml`, and `MigApp.xml` files: <br/><br/>`LoadState.exe  \server\share\migration\mystore /config:Config.xml /i:MigDocs.xml /i:MigApp.xml /v:5 /l:LoadState.log` |
| **/auto**:*"path to script files"* | This option enables you to specify the location of the default .xml files and then launch your migration. If no path is specified, USMT will use the directory where the USMT binaries are located. The `/auto` option has the same effect as using the following options: `/i:MigDocs.xml` `/i:MigApp.xml /v:5`. |

## Monitoring options

USMT provides several command-line options that you can use to analyze problems that occur during migration.

| Command-Line Option | Description |
|--- |--- |
| **/l**:[*Path*]*FileName* | Specifies the location and name of the **LoadState** log. You can't store any of the log files in *StorePath*. *Path* can be either a relative or full path. If you don't specify the *Path* variable, then the log will be created in the current directory. You can specify the `/v` option to adjust the verbosity of the log. <br/><br/>If you run the `LoadState.exe` command from a shared network resource, you must specify the `l` option, or USMT will fail with the error:<br/><br/>***USMT was unable to create the log file(s)***<br/><br/> To fix this issue, make sure to specify the `/l` option when running `LoadState.exe` from a shared network resource. |
| **/v**:*`<VerbosityLevel>`* | **(Verbosity)** <br/><br/>Enables verbose output in the **LoadState** log file. The default value is 0. <br/>You can set the *VerbosityLevel* to one of the following levels:<ul><li>**0** - Only the default errors and warnings are enabled.</li><li>**1** - Enables verbose output.</li><li>**4** - Enables error and status output.</li><li>**5** - Enables verbose and status output.</li><li>**8** - Enables error output to a debugger.</li><li>**9** - Enables verbose output to a debugger.</li><li>**12** - Enables error and status output to a debugger.</li><li>**13** - Enables verbose, status, and debugger output.</li></ul><br/>For example: <br/>`LoadState.exe  \server\share\migration\mystore /v:5 /i:MigDocs.xml /i:MigApp.xml` |
| **/progress**:[*Path*]*FileName* | Creates the optional progress log. You can't store any of the log files in *StorePath*. *Path* can be either a relative or full path. If you don't specify the *Path* variable, then *FileName* will be created in the current directory. <br/><br/>For example: <br/>`LoadState.exe  /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore /progress:Progress.log /l:loadlog.log` |
| **/c** | When this option is specified, the `LoadState.exe` command will continue to run, even if non-fatal errors occur. Any files or settings that cause an error are logged in the progress log. For example, if there's a large file that won't fit on the computer, the `LoadState.exe` command will log an error and continue with the migration. Without the `/c` option, the `LoadState.exe` command will exit on the first error. You can use the new &lt;**ErrorControl**&gt; section in the `Config.xml` file to specify which file or registry read/write errors can be safely ignored and which might cause the migration to fail. This error control enables the `/c` command-line option to safely skip all input/output (I/O) errors in your environment. In addition, the `/genconfig` option now generates a sample &lt;**ErrorControl**&gt; section that is enabled by specifying error messages and desired behaviors in the `Config.xml` file. |
| **/r**:*`<TimesToRetry>`* | **(Retry)** <br/><br/>Specifies the number of times to retry when an error occurs while migrating the user state from a server. The default is three times. This option is useful in environments where network connectivity isn't reliable. <br/><br/>While restoring the user state, the `/r` option won't recover data that is lost due to a network-hardware failure, such as a faulty or disconnected network cable, or when a virtual private network (VPN) connection fails. The retry option is intended for large, busy networks where connectivity is satisfactory, but communication latency is a problem. |
| **/w**:*`<SecondsBeforeRetry>`* | **(Wait)** <br/><br/>Specifies the time to wait, in seconds, before retrying a network file operation. The default is 1 second. |
| **/?** or **/help** | Displays Help on the command line. |

## User options

By default, all users are migrated. The only way to specify which users to include and exclude is by using the following options. You can't exclude users in the migration .xml files or by using the `Config.xml` file. For more information, see [Identify Users](usmt-identify-users.md).

| Command-Line Option | Description |
|--- |--- |
| **/all** | Migrates all of the users on the computer. <br/><br/>USMT migrates all user accounts on the computer, unless you specifically exclude an account with the `/ue` or `/uel` options. For this reason, you don't need to specify this option on the command line. However, if you choose to use the `/all` option, you can't also use the `/ui`, `/ue` or `/uel` options. |
| **/ui**:*DomainName UserName* <br/>or <br/>**/ui**:*"DomainName User Name"* <br/>or <br/>**/ui**:*ComputerName LocalUserName* | **(User include)** <br/><br/>Migrates the specified user. By default, all users are included in the migration. Therefore, this option is helpful only when used with the `/ue` option. You can specify multiple `/ui` options, but you can't use the `/ui` option with the `/all` option. *DomainName* and *UserName* can contain the asterisk (`*`) wildcard character. When you specify a user name that contains spaces, you'll need to surround it with quotations marks (`"`). <br/><br/>For example, to include only **User2** from the Corporate domain, enter: <br/><br/>`/ue:* /ui:corporate\user2`<br/><br/><div class="alert">**Note** <br/>If a user is specified for inclusion with the `/ui` option and also specified to be excluded with either the `/ue` or `/uel` options, the user will be included in the migration.</div> <br/> For more examples, see the descriptions of the `/uel`, `/ue`, and `/ui` options in this table. |
| **/uel**:*`<NumberOfDays>`* <br/>or <br/>**/uel**:*`<YYYY/MM/DD>`* <br/>or <br/>**/uel**:0 | **(User exclude based on last logon)** <br/><br/>Migrates only the users that logged onto the source computer within the specified time period, based on the **Last Modified** date of the Ntuser.dat file on the source computer. The `/uel` option acts as an include rule. For example, the `/uel:30` option migrates users who logged on, or whose user account was modified, within the last 30 days from the date when the `ScanState.exe` command is run. You can specify the number of days or you can specify a date. You can't use this option with the `/all` option. USMT retrieves the last sign-in information from the local computer, so the computer doesn't need to be connected to the network when you run this option. In addition, if a domain user has signed into another computer, that sign-in instance isn't considered by USMT. <div class="alert">**Note** <br/>The `/uel` option isn't valid in offline migrations.</div> <br/>Examples:<ul><li>`/uel:0` migrates accounts that were logged on to the source computer when the `ScanState.exe` command was run.</li><li>`/uel:90` migrates users who have logged on, or whose accounts have been otherwise modified, within the last 90 days.</li><li>`/uel:1` migrates users whose accounts have been modified within the last 24 hours.</li><li>`/uel:2020/2/15` migrates users who have logged on or whose accounts have been modified since February 15, 2020.</li></ul> <br/>For example: <br/>`LoadState.exe /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore /uel:0` |
| **/ue**:*DomainName\UserName* <br/>or <br/>**/ue** *"DomainName\User Name"* <br/>or <br/>**/ue**:*ComputerName\LocalUserName* | **(User exclude)** <br/><br/>Excludes the specified users from the migration. You can specify multiple `/ue` options but you can't use the `/ue` option with the `/all` option. *DomainName* and *UserName* can contain the asterisk (`*`) wildcard character. When you specify a user name that contains spaces, you'll need to surround it with quotation marks (`"`). <br/><br/>For example: <br/>`LoadState.exe /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore /ue:contoso\user1` <br/>For more examples, see the descriptions of the `/uel`, `/ue`, and `/ui` options in this table. |
| **/md**:*OldDomain*:*NewDomain* <br/>or <br/>**/md**:*LocalComputerName:NewDomain* | **(Move domain)** <br/><br/>Specifies a new domain for the user. Use this option to change the domain for users on a computer or to migrate a local user to a domain account. *OldDomain* may contain the asterisk () wildcard character. <br/><br/>You can specify this option more than once. You may want to specify multiple `/md` options if you're consolidating users across multiple domains to a single domain. For example, you could specify the following to consolidate the users from the Corporate and FarNorth domains into the Fabrikam domain: `/md:corporate:fabrikam` and `/md:farnorth:fabrikam`. <br/><br/>If there are conflicts between two `/md` commands, the first rule that you specify is applied. For example, if you specify the `/md:corporate:fabrikam` and `/md:corporate:farnorth` commands, then Corporate users would be mapped to the Fabrikam domain. <div class="alert"> **Note** <br/>If you specify an *OldDomain* that didn't exist on the source computer, the `LoadState.exe` command will appear to complete successfully, without an error or warning. However, in this case, users won't be moved to *NewDomain* but will remain in their original domain. For example, if you misspell **contoso** and you instead specify **/md:contso:fabrikam**, the users will remain in **contoso** on the destination computer.</div> <br/> For example: <br/>`LoadState.exe  /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore` <br/>` /progress:Progress.log /l:LoadState.log /md:contoso:fabrikam` |
| **/mu**:*OldDomain OldUserName*:[*NewDomain*]*NewUserName* <br/>or <br/>**/mu**:*OldLocalUserName*:*NewDomain NewUserName* | **(Move user)** <br/><br/>Specifies a new user name for the specified user. If the store contains more than one user, you can specify multiple `/mu` options. You can't use wildcard characters with this option. <br/><br/>For example: <br/>`LoadState.exe  /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore` <br/>`/progress:Progress.log /l:LoadState.log /mu:contoso\user1:fabrikam\user1` |
| **/lac**:[*Password*] | **(Local account create)** <br/><br/>Specifies that if a user account is a local (non-domain) account, and it doesn't exist on the destination computer, USMT will create the account on the destination computer but it will be disabled. To enable the account, you must also use the `/lae` option. <br/><br/>If the `/lac` option isn't specified, any local user accounts that don't already exist on the destination computer won't be migrated. <br/><br/>*Password* is the password for the newly created account. An empty password is used by default. <div class="alert"> **Caution** <br/>Use the *Password* variable with caution because it's provided in plain text and can be obtained by anyone with access to the computer that is running the `LoadState.exe` command. <br/>Also, if the computer has multiple users, all migrated users will have the same password.</div> <br/>For example: <br/>`LoadState.exe  /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore` <br/><br/>For instructions, see [Migrate user accounts](usmt-migrate-user-accounts.md). |
| `/lae` | **(Local account enable)** <br/><br/>Enables the account that was created with the `/lac` option. You must specify the `/lac` option with this option. <br/><br/>For example: <br/>`LoadState.exe  /i:MigApp.xml /i:MigDocs.xml \server\share\migration\mystore` <br/>`/progress:Progress.log /l:LoadState.log /lac:password /lae` <br/><br/>For instructions, see [Migrate user accounts](usmt-migrate-user-accounts.md). |

### Examples for the /ui and /ue options

The following examples apply to both the **/ui** and **/ue** options. You can replace the **/ue** option with the **/ui** option to include, rather than exclude, the specified users.

| Behavior | Command |
|--- |--- |
| Exclude the user named User One in the Corporate domain. | `/ue:"corporate\user one"` |
| Exclude the user named User1 in the Corporate domain. | `/ue:corporate\user1` |
| Exclude the local user named User1. | `/ue:%computername%\user1` |
| Exclude all domain users. | `/ue:Domain` |
| Exclude all local users. | `/ue:%computername%` |
| Exclude users in all domains named User1, User2, and so on. | `/ue:\user` |

### Using the options together

You can use the `/uel`, `/ue` and `/ui` options together to migrate only the users that you want migrated.

**The /ui option has precedence over the /ue and /uel options.** If a user is included using the `/ui` option and also excluded using either the `/ue` or `/uel` options, the user will be included in the migration. For example, if you specify `/ui:contoso\* /ue:contoso\user1`, then User1 will be migrated, because the `/ui` option takes precedence over the `/ue` option.

**The /uel option takes precedence over the /ue option.** If a user has logged on within the specified time period set by the `/uel` option, that user's profile will be migrated even if they're excluded by using the `/ue` option. For example, if you specify `/ue:contoso\user1 /uel:14`, the User1 will be migrated if they've logged on to the computer within the last 14 days.

| Behavior | Command |
|--- |--- |
| Include only User2 from the Fabrikam domain and exclude all other users. | `/ue:* /ui:fabrikam\user2` |
| Include only the local user named User1 and exclude all other users. | `/ue:* /ui:user1` |
| Include only the domain users from Contoso, except Contoso\User1. | This behavior can't be completed using a single command. Instead, to migrate this set of users, you'll need to specify the following options:<ul><li>Using the **ScanState** command-line tool, enter: <br>`/ue:* /ui:contoso`</li><li>Using the **LoadState** command-line tool, enter: <br>`/ue:contoso\user1`</li></ul> |
| Include only local (non-domain) users. | `/ue: /ui:%computername%*` |

## Incompatible command-line options

The following table indicates which command-line options aren't compatible with the `LoadState.exe` command. If the table entry for a particular combination is blank, the options are compatible, and you can use them together. The X symbol means that the options aren't compatible. For example, you can't use the `/nocompress` option with the `/encrypt` option.

| Command-Line Option | /keyfile | /nocompress | /genconfig | /all |
|--- |--- |--- |--- |--- |
| **/i** |  |  |  |  |
| **/v** |  |  |  |  |
| **/nocompress** |  | N/A | X |  |
| **/key** | X |  | X |  |
| **/decrypt** | Required* | X | X |  |
| **/keyfile** | N/A |  | X |  |
| **/l** |  |  |  |  |
| **/progress** |  |  | X |  |
| **/r** |  |  | X |  |
| **/w** |  |  | X |  |
| **/c** |  |  | X |  |
| **/p** |  |  | X | N/A |
| **/all** |  |  | X |  |
| **/ui** |  |  | X | X |
| **/ue** |  |  | X | X |
| **/uel** |  |  | X | X |
| **/genconfig** |  |  | N/A |  |
| **/config** |  |  | X |  |
| *StorePath* |  |  |  |  |
| **/md** |  |  |  |  |
| **/mu** |  |  |  |  |
| **/lae** |  |  |  |  |
| **/lac** |  |  |  |  |

> [!NOTE]
> You must specify either the `/key` or `/keyfile` option with the `/encrypt` option.

## Related articles

[XML elements library](usmt-xml-elements-library.md)
