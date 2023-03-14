---
title: Offline Migration Reference (Windows 10)
description: Offline migration enables the ScanState tool to run inside a different Windows OS than the Windows OS from which ScanState is gathering files and settings.
manager: aaroncz
ms.author: frankroj
ms.prod: windows-client
author: frankroj
ms.date: 11/01/2022
ms.topic: article
ms.technology: itpro-deploy
---

# Offline Migration Reference

Offline migration enables the ScanState tool to run inside a different Windows operating system than the Windows operating system from which ScanState is gathering files and settings. There are two primary offline scenarios:

- **Windows PE.** The ScanState tool can be run from within Windows PE, gathering files and settings from the offline Windows operating system on that machine.

- **Windows.old.** The ScanState tool can now gather files and settings from the Windows.old directory that is created during Windows installation on a partition that contains a previous installation of Windows. For example, the ScanState tool can run in Windows 10, gathering files from a previous Windows 7or Windows 8 installation contained in the Windows.old directory.

When you use User State Migration Tool (USMT) 10.0 to gather and restore user state, offline migration reduces the cost of deployment by:

- **Reducing complexity.** In computer-refresh scenarios, migrations from the Windows.old directory reduce complexity by eliminating the need for the ScanState tool to be run before the operating system is deployed. Also, migrations from the Windows.old directory enable ScanState and LoadState to be run successively.

- **Improving performance.** When USMT runs in an offline Windows Preinstallation Environment (WinPE) environment, it has better access to the hardware resources. Running USMT in WinPE may increase performance on older machines with limited hardware resources and numerous installed software applications.

- **New recovery scenario.** In scenarios where a machine no longer restarts properly, it might be possible to gather user state with the ScanState tool from within WinPE.

## What will migrate offline?

The following user data and settings migrate offline, similar to an online migration:

- Data and registry keys specified in MigXML

- User accounts

- Application settings

- Limited set of operating-system settings

- EFS files

- Internet Explorer Favorites

For exceptions to what you can migrate offline, see [What Does USMT Migrate?](usmt-what-does-usmt-migrate.md)

## What offline environments are supported?

The following table defines the supported combination of online and offline operating systems in USMT.

|Running Operating System|Offline Operating System|
|--- |--- |
|WinPE 5.0 or greater, with the MSXML library|Windows 7, Windows 8, Windows 10|
|Windows 7, Windows 8, Windows 10|Windows.old directory|

> [!NOTE]
> It is possible to run the ScanState tool while the drive remains encrypted by suspending Windows BitLocker Drive Encryption before booting into WinPE. For more information, see [this Microsoft site](/previous-versions/windows/it-pro/windows-7/ee424315(v=ws.10)).

## User-group membership and profile control

User-group membership isn't preserved during offline migrations. You must configure a **&lt;ProfileControl&gt;** section in the `Config.xml` file to specify the groups that the migrated users should be made members of. The following example places all migrated users into the Users group:

```xml
<Configuration>
<ProfileControl>
    <localGroups>
      <mappings>
         <changeGroup from="*" to="Users" appliesTo="MigratedUsers">
            <include>
            <pattern>*</pattern>
            </include>
         </changeGroup>
      </mappings>
   </localGroups>
  </ProfileControl>
</Configuration>
```

For information about the format of a `Config.xml` file, see [Config.xml File](usmt-configxml-file.md).

## Command-line options

An offline migration can either be enabled by using a configuration file on the command line, or by using one of the following command line options:

|Component|Option|Description|
|--- |--- |--- |
|*ScanState.exe*|**/offline:***&lt;path to Offline.xml&gt;*|This command-line option enables the offline-migration mode and requires a path to an Offline.xml configuration file.|
|*ScanState.exe*|**/offlineWinDir:***&lt;Windows directory&gt;*|This command-line option enables the offline-migration mode and starts the migration from the location specified. It's only for use in WinPE offline scenarios where the migration is occurring from a Windows directory.|
|*ScanState.exe*|**/OfflineWinOld:***&lt;Windows.old directory&gt;*|This command-line option enables the offline migration mode and starts the migration from the location specified. It's only intended to be used in Windows.old migration scenarios, where the migration is occurring from a Windows.old directory.|

You can use only one of the `/offline`, `/offlineWinDir`, or `/OfflineWinOld` command-line options at a time. USMT doesn't support using more than one together.

## Environment variables

The following system environment variables are necessary in the scenarios outlined below.

|Variable|Value|Scenario|
|--- |--- |--- |
|*USMT_WORKING_DIR*|Full path to a working directory|Required when USMT binaries are located on read-only media, which doesn't support the creation of log files or temporary storage. To set the system environment variable, at a command prompt type the following command: <br/><pre class="syntax"><code>Set USMT_WORKING_DIR=[path to working directory]</code></pre>|
*|MIG_OFFLINE_PLATFORM_ARCH*|32 or 64|While operating offline, this environment variable defines the architecture of the offline system, if the system doesn't match the WinPE and `ScanState.exe` architecture. This environment variable enables the 32-bit ScanState application to gather data from a computer with 64-bit architecture, or the 64-bit ScanState application to gather data from a computer with 32-bit architecture. Specifying the architecture is required when auto-detection of the offline architecture doesn't function properly. For example, to set this system environment variable for a 32-bit architecture, at a command prompt type the following command: <br/><pre class="syntax"><code>Set MIG_OFFLINE_PLATFORM_ARCH=32</code></pre>|

## Offline.xml elements

Use an `Offline.xml` file when running the ScanState tool on a computer that has multiple Windows directories. The `Offline.xml` file specifies which directories to scan for windows files. An `Offline.xml` file can be used with the `/offline` option as an alternative to specifying a single Windows directory path with the `/offlineDir` option.

### &lt;offline&gt;

This element contains other elements that define how an offline migration is to be performed.

Syntax: `<offline>` `</offline>`

### &lt;winDir&gt;

This element is a required child of **&lt;offline&gt;** and contains information about how the offline volume can be selected. The migration will be performed from the first element of **&lt;winDir&gt;** that contains a valid Windows system volume.

Syntax: `<winDir>` `</winDir>`

### &lt;path&gt;

This element is a required child of **&lt;winDir&gt;** and contains a file path pointing to a valid Windows directory. Relative paths are interpreted from the ScanState tool's working directory.

Syntax: `<path> C:\Windows </path>`

-or-

Syntax, when used with the **&lt;mappings&gt;** element: `<path> C:\, D:\ </path>`

### &lt;mappings&gt;

This element is an optional child of **&lt;offline&gt;**. When specified, the **&lt;mappings&gt;** element will override the automatically detected WinPE drive mappings. Each child **&lt;path&gt;** element will provide a mapping from one system volume to another. Additionally, mappings between folders can be provided, since an entire volume can be mounted to a specific folder.

Syntax: `<mappings>` `</mappings>`

### &lt;failOnMultipleWinDir&gt;

This element is an optional child of **&lt;offline&gt;**. The **&lt;failOnMultipleWinDir&gt;** element allows the user to specify that the migration should fail when USMT detects that there are multiple instances of Windows installed on the source machine. When the **&lt;failOnMultipleWinDir&gt;** element isn't present, the default behavior is that the migration doesn't fail.

Syntax: `<failOnMultipleWinDir>1</failOnMultipleWinDir>`

-or-

Syntax: `<failOnMultipleWinDir>0</failOnMultipleWinDir>`

### Offline .xml Example

The following XML example illustrates some of the elements discussed earlier in this article.

```xml
<offline>
     <winDir>
          <path>C:\Windows</path> 
          <path>D:\Windows</path> 
          <path>E:\</path> 
     </winDir>
     <failOnMultipleWinDir>1</failOnMultipleWinDir>
</offline>
```

## Related articles

[Plan your migration](usmt-plan-your-migration.md)
