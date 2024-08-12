---
title: Offline Migration Reference
description: Offline migration enables the ScanState tool to run inside a different Windows OS than the Windows OS from which ScanState is gathering files and settings.
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

# Offline Migration Reference

Offline migration enables the **ScanState** tool to run inside a different Windows operating system than the Windows operating system from which **ScanState** is gathering files and settings. There are two primary offline scenarios:

- **Windows PE.** The **ScanState** tool can be run from within Windows PE, gathering files and settings from the offline Windows operating system on that machine.

- **Windows.old.** The **ScanState** tool can gather files and settings from the **Windows.old** directory. The **Windows.old** directory is created during Windows installation on a partition that contains a previous installation of Windows. For example, the **ScanState** tool can run in Windows, gathering files from a previous Windows installation contained in the **Windows.old** directory.

When using the User State Migration Tool (USMT) to gather and restore user state, offline migration reduces the cost of deployment by:

- **Reducing complexity.** In computer-refresh scenarios, migrations from the **Windows.old** directory reduce complexity by eliminating the need for the **ScanState** tool to be run before the operating system is deployed. Also, migrations from the **Windows.old** directory enable **ScanState** and **LoadState** to be run successively.

- **Improving performance.** When USMT runs in an offline Windows Preinstallation Environment (WinPE) environment, it has better access to the hardware resources. Running USMT in WinPE can increase performance on older machines with limited hardware resources and numerous installed software applications.

- **New recovery scenario.** In scenarios where a machine no longer restarts properly, it might be possible to gather user state with the **ScanState** tool from within WinPE.

## What migrates offline?

The following user data and settings migrate offline, similar to an online migration:

- Data and registry keys specified in MigXML.

- User accounts.

- Application settings.

- Limited set of operating-system settings.

- EFS files.

- Favorites.

For exceptions to what can be migrated offline, see [What Does USMT Migrate?](usmt-what-does-usmt-migrate.md)

## What offline environments are supported?

All currently supported 

The following table defines the supported combination of online and offline operating systems in USMT.

|Running Operating System|Offline Operating System|
|---|---|
|Currently supported version of WinPE, with the MSXML library|Windows 7, Windows 8, Windows 10, Windows 11|
|Windows 10, Windows 11|**Windows.old** directory|

> [!NOTE]
>
> It is possible to run the **ScanState** tool while the drive remains encrypted by suspending Windows BitLocker Drive Encryption before booting into WinPE. For more information, see [BitLocker operations guide: Suspend and resume](/windows/security/operating-system-security/data-protection/bitlocker/operations-guide#suspend-and-resume). If using a Microsoft Configuration Manager task sequence, see [Task sequence steps: Disable BitLocker](/mem/configmgr/osd/understand/task-sequence-steps#BKMK_DisableBitLocker).

## User-group membership and profile control

User-group membership isn't preserved during offline migrations. A **\<ProfileControl\>** section must be configured in the `Config.xml` file to specify the groups that the migrated users should be made members of. The following example places all migrated users into the Users group:

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
|*ScanState.exe*|**/offline:***\<path to Offline.xml\>*|This command-line option enables the offline-migration mode and requires a path to an Offline.xml configuration file.|
|*ScanState.exe*|**/offlineWinDir:***\<Windows directory\>*|This command-line option enables the offline-migration mode and starts the migration from the location specified. It's only for use in WinPE offline scenarios where the migration is occurring from a Windows directory.|
|*ScanState.exe*|**/OfflineWinOld:***\<Windows.old directory\>*|This command-line option enables the offline migration mode and starts the migration from the location specified. Only use in **Windows.old** migration scenarios, where the migration is occurring from a **Windows.old** directory.|

Only one of the `/offline`, `/offlineWinDir`, or `/OfflineWinOld` command-line options can be used at a time. USMT doesn't support using more than one together.

## Environment variables

System environment variables are necessary in the scenarios outlined in the following table:

|Variable|Value|Scenario|
|--- |--- |--- |
|**USMT_WORKING_DIR**|Full path to a working directory|Required when USMT binaries are located on read-only media, which doesn't support the creation of log files or temporary storage. To set the system environment variable, at a command prompt type the following command:<br><br> `Set USMT_WORKING_DIR=<path to working directory>`|
|**MIG_OFFLINE_PLATFORM_ARCH**|32 or 64|While operating offline, this environment variable defines the architecture of the offline system, if the system doesn't match the WinPE and `ScanState.exe` architecture. This environment variable enables the 32-bit **ScanState** application to gather data from a computer with 64-bit architecture, or the 64-bit **ScanState** application to gather data from a computer with 32-bit architecture. Specifying the architecture is required when auto-detection of the offline architecture doesn't function properly. For example, to set this system environment variable for a 32-bit architecture, at a command prompt type the following command:<br><br> `Set MIG_OFFLINE_PLATFORM_ARCH=32`|

## Offline.xml elements

Use an `Offline.xml` file when running the **ScanState** tool on a computer that has multiple Windows directories. The `Offline.xml` file specifies which directories to scan for windows files. An `Offline.xml` file can be used with the `/offline` option as an alternative to specifying a single Windows directory path with the `/offlineDir` option.

### \<offline\>

This element contains other elements that define how an offline migration is to be performed.

Syntax:

```xml
<offline> </offline>
```

### \<winDir\>

This element is a required child of **\<offline\>** and contains information about how the offline volume can be selected. The migration is performed from the first element of **\<winDir\>** that contains a valid Windows system volume.

Syntax:

```xml
<winDir> </winDir>
```

### \<path\>

This element is a required child of **\<winDir\>** and contains a file path pointing to a valid Windows directory. Relative paths are interpreted from the **ScanState** tool's working directory.

Syntax:

```xml
<path> C:\Windows </path>
```

or when used with the **\<mappings\>** element:

Syntax:

```xml
<path> C:\, D:\ </path>
```

### \<mappings\>

This element is an optional child of **\<offline\>**. When specified, the **\<mappings\>** element overrides the automatically detected WinPE drive mappings. Each child **\<path\>** element provides a mapping from one system volume to another. Additionally, mappings between folders can be provided, since an entire volume can be mounted to a specific folder.

Syntax:

```xml
<mappings> </mappings>
```

### \<failOnMultipleWinDir\>

This element is an optional child of **\<offline\>**. The **\<failOnMultipleWinDir\>** element allows the user to specify that the migration should fail when USMT detects that there are multiple instances of Windows installed on the source machine. When the **\<failOnMultipleWinDir\>** element isn't present, the default behavior is that the migration doesn't fail.

Syntax:

```xml
<failOnMultipleWinDir>1</failOnMultipleWinDir>
```

or

Syntax:

```xml
<failOnMultipleWinDir>0</failOnMultipleWinDir>
```

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

- [Plan the migration](usmt-plan-your-migration.md).
