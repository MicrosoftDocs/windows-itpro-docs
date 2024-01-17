---
title: SetupDiag
description: SetupDiag works by examining Windows Setup log files. This article shows how to use the SetupDiag tool to diagnose Windows Setup errors.
ms.reviewer: shendrix
ms.prod: windows-client
ms.technology: itpro-deploy
author: frankroj
manager: aaroncz
ms.author: frankroj
ms.localizationpriority: medium
ms.topic: troubleshooting
ms.collection:
  - highpri
  - tier2
ms.date: 01/17/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# SetupDiag

> [!NOTE]
>
> This article is a 300 level article (moderate advanced). See [Resolve Windows upgrade errors](resolve-windows-upgrade-errors.md) for a full list of articles in this section.

> [!div class="nextstepaction"]
> [Download SetupDiag](https://go.microsoft.com/fwlink/?linkid=870142)

## About SetupDiag

> [!IMPORTANT]
>
> When SetupDiag is run manually, Microsoft recommends running the latest version of SetupDiag. The latest version is available via the following [download link](https://go.microsoft.com/fwlink/?linkid=870142). Running the latest version ensures the latest functionality and fixes known issues.

SetupDiag is a diagnostic tool that can be used to obtain details about why a Windows upgrade was unsuccessful.

SetupDiag works by examining Windows Setup log files. It attempts to parse these log files to determine the root cause of a failure to update or upgrade the computer to Windows. SetupDiag can be run on the computer that failed to update. The logs can also be exported from the computer to another location and then running SetupDiag in offline mode.

SetupDiag is included with [Windows Setup](/windows-hardware/manufacture/desktop/deployment-troubleshooting-and-log-files#windows-setup-scenario) in all currently supported versions of Windows.

During the upgrade process, Windows Setup extracts all its sources files, including **SetupDiag.exe**, to the **%SystemDrive%\$Windows.~bt\Sources** directory. If there's an issue with the upgrade, SetupDiag automatically runs to determine the cause of the failure.

When run by Windows Setup, the following [parameters](#parameters) are used:

- /ZipLogs:False
- /Format:xml
- /Output:%windir%\logs\SetupDiag\SetupDiagResults.xml
- /RegPath:HKEY_LOCAL_MACHINE\SYSTEM\Setup\SetupDiag\Results

The resulting SetupDiag analysis can be found at `%WinDir%\Logs\SetupDiag\SetupDiagResults.xml` and in the registry under `HKLM\SYSTEM\Setup\SetupDiag\Results`.

> [!NOTE]
>
> When Windows Setup runs SetupDiag automatically, the registry path isn't the same as the default registry path when SetupDiag is run manually. When SetupDiag is run manually, and the `/RegPath` parameter isn't specified, data is stored in the registry at `HKLM\SYSTEM\Setup\MoSetup\Volatile\SetupDiag`.

> [!IMPORTANT]
>
> When SetupDiag indicates that there were multiple failures, the last failure in the log file is typically the fatal error, not the first one.

If the upgrade process proceeds normally, the **Sources** directory including **SetupDiag.exe** is moved under **%SystemDrive%\Windows.Old** for cleanup. If the **Windows.old** directory is deleted later, **SetupDiag.exe** is also removed.

## Requirements

1. The destination version of Windows must be a currently supported version of Windows. The originally installed version of Windows can be a version of Windows that's out of support as long as:

    - The destination version of Windows is a currently supported version of Windows.
    - Upgrade to the destination version of Windows is supported from the original installed version of Windows.

1. [.NET Framework 4.7.2](https://go.microsoft.com/fwlink/?linkid=863265) or newer must be installed. To determine which version of .NET is preinstalled with a specific version of Windows, see [.NET Framework system requirements: Supported client operating systems](/dotnet/framework/get-started/system-requirements#supported-client-operating-systems). To determine which version of .NET is currently installed, see [How to: Determine Which .NET Framework Versions Are Installed](/dotnet/framework/migration-guide/how-to-determine-which-versions-are-installed).

   The following command-line query can be used to display the currently installed version of .NET:

    ```cmd
    reg.exe query "HKLM\SOFTWARE\Microsoft\Net Framework Setup\NDP\v4" /s
    ```

    As long as at least the required version of .NET is installed, no additional action is required, including if a newer version is installed.

## Using SetupDiag

To quickly use SetupDiag on the current computer:

1. Verify that the system meets the [requirements](#requirements).

1. [Download SetupDiag](https://go.microsoft.com/fwlink/?linkid=870142).

1. If the web browser asks what to do with the file, choose **Save**. By default, the file is saved to the **Downloads** folder. If desired, the file can also be saved to a different location by using **Save As**.

1. When SetupDiag finishes downloading, open the folder where the file was downloaded. By default, this folder is the **Downloads** folder, which is displayed in File Explorer under **Quick access** in the left navigation pane.

1. Double-click the **SetupDiag** file to run it. Select **Yes** if asked to approve running the program.

 Double-clicking the file to run it automatically closes the command window when SetupDiag completes its analysis. To instead keep the window open to review the messages SetupDiag generates, run the program by typing **SetupDiag** at the command prompt instead of double-clicking it. When running from a command prompt, make sure to change directories to where SetupDiag is located.

1. A command window opens while SetupDiag diagnoses the computer. Wait for this process to finish.

1. When SetupDiag finishes, two files are created in the same folder where SetupDiag was run from. One is a configuration file, the other is a log file.

1. Use Notepad to open the log file **SetupDiagResults.log**.

1. Review the information that is displayed. If a rule was matched, this information can say why the computer failed to upgrade, and potentially how to fix the problem. See the section [Text log sample](#text-log-sample).

For instructions on how to run the tool in offline mode and with more advanced options, see the sections [Parameters](#parameters) and [Examples](#examples).

## Parameters

| Parameter | Description |
| --- | --- |
| /? | Displays interactive help |
| /Output:\[Full path and file name for output log file\] | This optional parameter specifies the name and location for the results log file. The output file contains the analysis from SetupDiag.  Only text format output is supported.  UNC paths work provided the context under which SetupDiag runs has access to the UNC path.  If the path has a space in it, the entire path must be enclosed in double quotes (**"**). See the [Examples](#examples) sections for an example. <br><br> Default: If not specified, SetupDiag creates the file **SetupDiagResults.log** in the same  directory where **SetupDiag.exe** is run. |
| /LogsPath:\[Full path to logs\] | This optional parameter specifies the location of logs to parse and where to find the log files for an offline analysis. These log files can be in a flat folder format, or containing multiple subdirectories.  SetupDiag recursively searches all child directories. Defaults to checking the current system for logs. |
| /ZipLogs:\[True \| False\] | This optional parameter Tells **SetupDiag.exe** to create a zip file containing the results and all the log files that were parsed. The zip file is created in the same directory where **SetupDiag.exe** is run. <br><br> Default: If not specified, a value of 'true' is used. |
| /Format:\[xml \| json\] | This optional parameter specifies the output format for log files to be XML or JSON.  If this parameter isn't specified, text format is used by default. |
| /Scenario:\[Recovery \| Debug\] | This optional parameter can do one of the following two items based on the argument used: <ul><li>Recovery instructs **SetupDiag.exe** to look for and process reset and recovery logs and ignore setup/upgrade logs.</li><li>Debug instructs **SetupDiag.exe** to debug memory dumps if the requisite debug binaries are installed.</li></ul> |
| /Verbose | This optional parameter creates a diagnostic log in the current directory, with debugging information, additional data, and details about SetupDiag. By default, SetupDiag only produces a log file entry for major errors.  Using **/Verbose** causes SetupDiag to always produce another log file with debugging details. These details can be useful when reporting a problem with SetupDiag. |
| /NoTel | This optional parameter tells **SetupDiag.exe** not to send diagnostic telemetry to Microsoft. |
| /RegPath | This optional parameter Instructs **SetupDiag.exe** to add failure information to the registry under the given path. Registry paths should start with **HKEY_LOCAL_MACHINE** or **HKEY_CURRENT_USER** and be accessible at the elevation level SetupDiag is executed under. If this parameter isn't specified, the default path is **HKLM\SYSTEM\Setup\MoSetup\Volatile\SetupDiag**. |
| /AddReg | This optional parameter Instructs **SetupDiag.exe** to add failure information to the registry on the executing system in offline mode. SetupDiag by default adds failure information to the registry in Online mode only. Registry data goes to **HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup\Volatile\SetupDiag** unless otherwise specified. |

> [!NOTE]
>
> The **/Mode** parameter is deprecated in SetupDiag.
>
> In previous versions, this command was used with the LogsPath parameter to specify that SetupDiag should run in an offline manner to analyze a set of log files that were captured from a different computer. In current versions of SetupDiag, when /LogsPath is specified then SetupDiag automatically runs in offline mode, therefore the /Mode parameter isn't needed.

### Examples

- In the following example, SetupDiag is run with default parameters in online mode. The results file is **SetupDiagResults.log** in the same folder where SetupDiag is run.

  ```cmd
  SetupDiag.exe
  ```

- In the following example, SetupDiag is run in online mode (this mode is the default).  It knows where to look for logs on the current (failing) system, so there's no need to gather logs ahead of time. A custom location for results is specified.

  ```cmd
  SetupDiag.exe /Output:C:\SetupDiag\Results.log
  ```

- The following example uses the **/Output** parameter to save results to a path name that contains a space:

  ```cmd
  SetupDiag /Output:"C:\Tools\SetupDiag\SetupDiag Results\Results.log"
  ```

- The following example specifies that SetupDiag is to run in offline mode, and to process the log files found in **D:\Temp\Logs\LogSet1**.

  ```cmd
  SetupDiag.exe /Output:C:\SetupDiag\Results.log /LogsPath:D:\Temp\Logs\LogSet1
  ```

- The following example sets recovery scenario in offline mode. In the example, SetupDiag searches for reset/recovery logs in the specified LogsPath location and output the results to the directory specified by the **/Output** parameter.

  ```cmd
  SetupDiag.exe /Output:C:\SetupDiag\RecoveryResults.log /LogsPath:D:\Temp\Cabs\PBR_Log /Scenario:Recovery
  ```

- The following example sets recovery scenario in online mode. In the example, SetupDiag searches for reset/recovery logs on the current system and output results in XML format.

  ```cmd
  SetupDiag.exe /Scenario:Recovery /Format:xml
  ```

- The following example is an example of Offline Mode. SetupDiag is instructed to parse setup/upgrade log files in the LogsPath directory and output the results to `C:\SetupDiag\Results.txt`.

  ```cmd
  SetupDiag.exe /Output:C:\SetupDiag\Results.txt /LogsPath:D:\Temp\Logs\Logs1 /RegPath:HKEY_CURRENT_USER\SYSTEM\SetupDiag
  ```

- The following example is an example of Online Mode. SetupDiag is instructed to look for setup/upgrade logs on the current system and output its results in XML format to `C:\SetupDiag\Results.xml`.

  ```cmd
  SetupDiag.exe /Output:C:\SetupDiag\Results.xml /Format:xml
  ```

- The following example is an example of Online Mode where no parameters are needed or used. SetupDiag is instructed to look for setup/upgrade logs on the current system and output the results to the same directory where SetupDiag is located.

  ```cmd
  SetupDiag.exe
  ```

- The following example is an example of Reset/Recovery Offline Mode. SetupDiag is instructed to look for reset/recovery logs in the specified LogsPath location. It then outputs the results to the directory specified by the **/Output** parameter.

  ```cmd
  SetupDiag.exe /Output:C:\SetupDiag\RecoveryResults.log /LogsPath:D:\Temp\Cabs\PBR_Log /Scenario:Recovery
  ```

- The following example is an example of Reset/Recovery Online Mode. SetupDiag is instructed to look for reset/recovery logs on the current system and output its results in XML format.

  ```cmd
  SetupDiag.exe /Scenario:Recovery /Format:xml
  ```

## Log files

[Windows Setup Log Files and Event Logs](/windows-hardware/manufacture/desktop/windows-setup-log-files-and-event-logs) has information about where logs are created during Windows Setup. For offline processing, SetupDiag should be run against the contents of the entire folder. For example, depending on when the upgrade failed, copy one of the following folders to the offline location:

- `\$Windows.~bt\sources\panther`
- `\$Windows.~bt\Sources\Rollback`
- `\Windows\Panther`
- `\Windows\Panther\NewOS`

If the parent folder and all subfolders are copied, SetupDiag automatically searches for log files in all subdirectories.

## Setup bug check analysis

When Microsoft Windows encounters a condition that compromises safe system operation, the system halts. This condition is called a bug check. This condition is also commonly referred to as a system crash, a kernel error, a Stop error, or BSOD. Typically a hardware device, hardware driver, or related software causes this error.

If crash dumps [are enabled](/windows-hardware/drivers/debugger/enabling-a-kernel-mode-dump-file) on the system, a crash dump file is created. If the bug check occurs during an upgrade, Windows Setup extracts a minidump (`setupmem.dmp`) file. SetupDiag can also debug these setup-related minidumps.

To debug a setup-related bug check:

- Specify the **/LogsPath** parameter. Memory dumps can't be debugged in online mode.

- Gather the setup memory dump file (`setupmem.dmp) from the failing system.

  `Setupmem.dmp` is created in either **%SystemDrive%\$Windows.~bt\Sources\Rollback**, or in **%WinDir%\Panther\NewOS\Rollback** depending on when the bug check occurs.

- Install the [Windows Debugging Tools](/windows-hardware/drivers/debugger/debugger-download-tools) on the computer that runs SetupDiag.

In the following example, the `setupmem.dmp` file is copied to the `D:\Dump` directory and the Windows Debugging Tools are installed prior to running SetupDiag:

```cmd
SetupDiag.exe /Output:C:\SetupDiag\Dumpdebug.log /LogsPath:D:\Dump
```

## Known issues

- Some rules can take a long time to process if the log files involved are large.

## Sample output

The following command is an example where SetupDiag is run in offline mode.

```cmd
D:\SetupDiag>SetupDiag.exe /output:c:\setupdiag\result.xml /logspath:D:\Tests\Logs\f55be736-beed-4b9b-aedf-c133536c946e /format:xml

SetupDiag v1.7.0.0
Copyright (c) Microsoft Corporation. All rights reserved.

Searching for setup logs...
Found d:\tests\Logs\f55be736-beed-4b9b-aedf-c133536c946e\setupact_6.log with update date 6/12/2023 2:44:20 PM to be the correct setup log.
Found d:\tests\Logs\f55be736-beed-4b9b-aedf-c133536c946e\setupact_1.log with update date 6/12/2023 2:45:19 PM to be the correct rollback log.

Gathering baseline information from setup logs...

SetupDiag: processing rule: CompatScanOnly.
...No match.

...

SetupDiag: processing rule: DISMImageSessionFailure.
..
Error: SetupDiag reports DISM provider failure.
Last Phase: Safe OS
Last Operation: Apply Optional Component status
Message = Failed to get the IDismImage instance from the image session
Function: CDISMManager::CloseImageSession
Error: 0x800706ba
Recommend you re-download the update source files, reboot and try the update again.

SetupDiag found 1 matching issue.

SetupDiag results were logged to: c:\setupdiag\results.xml
Logs ZipFile created at: c:\setupdiag\Logs_14.zip
```

## Rules

When SetupDiag searches log files, it uses a set of rules to match known issues. These rules are contained in an xml file. The xml file might be updated with new and updated rules as new versions of SetupDiag are made available.

Each rule name and its associated unique rule identifier are listed with a description of the known upgrade-blocking issue. In the rule descriptions, the term **down-level** refers to the first phase of the upgrade process, which runs under the original OS.

| Rule Name | GUID | Description |
| --- | --- |
| CompatScanOnly | FFDAFD37-DB75-498A-A893-472D49A1311D | This rule indicates that `setup.exe` was called with a specific command line parameter that indicated setup was to do a compatibility scan only, not an upgrade. |
| PlugInComplianceBlock | D912150B-1302-4860-91B5-527907D08960 | Detects all compatibility blocks from Server compliance plug-ins. This rule is for server upgrades only. It outputs the compliance block and remediation required. |
| BitLockerHardblock | C30152E2-938E-44B8-915B-D1181BA635AE | This block is an upgrade block when the target OS doesn't support BitLocker, yet the host OS has BitLocker enabled. |
| VHDHardblock | D9ED1B82-4ED8-4DFD-8EC0-BE69048978CC | This block happens when the host OS is booted to a VHD image.  Upgrade isn't supported when the host OS is booted from a VHD image. |
| PortableWorkspaceHardblock | 5B0D3AB4-212A-4CE4-BDB9-37CA404BB280 | This block indicates that the host OS is booted from a Windows To-Go device (USB key).  Upgrade isn't supported in the Windows To-Go environment. |
| AuditModeHardblock | A03BD71B-487B-4ACA-83A0-735B0F3F1A90 | This block indicates that the host OS is currently booted into Audit Mode, a special mode for modifying the Windows state.  Upgrade isn't supported from this state. |
| SafeModeHardblock | 404D9523-B7A8-4203-90AF-5FBB05B6579B | This block indicates that the host OS is booted to Safe Mode, where upgrade isn't supported. |
| InsufficientSystemPartitionDiskSpaceHardblock | 3789FBF8-E177-437D-B1E3-D38B4C4269D1 | This block is encountered when setup determines the system partition doesn't have enough space to be serviced with the newer boot files required during the upgrade process. The system partition is where the boot loader files are stored |
| CompatBlockedApplicationAutoUninstall | BEBA5BC6-6150-413E-8ACE-5E1EC8D34DD5 | This rule indicates there's an application that needs to be uninstalled before setup can continue. |
| CompatBlockedApplicationDismissable | EA52620B-E6A0-4BBC-882E-0686605736D9 | When setup is run in **/quiet** mode, there are dismissible application messages that turn into blocks unless the command line also specifies **/compat ignorewarning**.  This rule indicates setup was executed in **/quiet** mode but there's an application dismissible block message that prevented setup from continuing. |
| **CompatBlockedFODDismissable** | 7B693C42-793E-4E9E-A10B-ED0F33D45E2A | When setup is run in **/quiet** mode, there are dismissible Feature On Demand messages that turn into blocks unless the command line also specifies **/compat ignorewarning**.  This rule indicates setup was executed in **/quiet** mode but there's a Feature On Demand dismissible block message that prevented setup from continuing, usually that the target OS image is missing a Feature On Demand that is installed in the current OS. Removal of the Feature On Demand in the current OS should also resolve the issue.
| CompatBlockedApplicationManualUninstall | 9E912E5F-25A5-4FC0-BEC1-CA0EA5432FF4 | This rule indicates that an application without an Add/Remove Programs entry, is present on the system and blocking setup from continuing.  This block typically requires manual removal of the files associated with this application to continue. |
| **GenericCompatBlock** | 511B9D95-C945-4F9B-BD63-98F1465E1CF6 | The rule indicates that system doesn't meet a hardware requirement for running Windows. For example, the device is missing a requirement for TPM 2.0. This issue can occur even when an attempt is made to bypass the hardware requirements. |
| **GatedCompatBlock** | 34A9F145-3842-4A68-987F-4622EE0FC162 | This rule indicates that the upgrade failed due to a temporary block. A temporary block is put in place when an issue is found with a specific piece of software or hardware driver and the issue has a fix pending. The block is lifted once the fix is widely available. |
| HardblockDeviceOrDriver | ED3AEFA1-F3E2-4F33-8A21-184ADF215B1B | This error indicates a device driver that is loaded on the host OS isn't compatible with the newer OS version. The device driver needs to be removed prior to the upgrade. |
| HardblockMismatchedLanguage | 60BA8449-CF23-4D92-A108-D6FCEFB95B45 | This rule indicates the host OS and the target OS language editions don't match. |
| HardblockFlightSigning | 598F2802-3E7F-4697-BD18-7A6371C8B2F8 | This rule indicates the target OS is a pre-release, Windows Insider build, and the target machine has Secure Boot enabled.  This rule blocks the pre-release signed build from booting if installed on the machine. |
| DiskSpaceBlockInDownLevel | 6080AFAC-892E-4903-94EA-7A17E69E549E | This failure indicates the system ran out of disk space during the down-level operations of upgrade. |
| DiskSpaceFailure | 981DCBA5-B8D0-4BA7-A8AB-4030F7A10191 | This failure indicates the system drive ran out of available disk space at some point after the first reboot into the upgrade. |
| PreReleaseWimMountDriverFound | 31EC76CC-27EC-4ADC-9869-66AABEDB56F0 | Captures failures due to having an unrecognized `wimmount.sys` driver registered on the system. |
| DebugSetupMemoryDump | C7C63D8A-C5F6-4255-8031-74597773C3C6 | This offline only rule indicates a bug check occurred during setup.  If the debugger tools are available on the system, SetupDiag debugs the memory dump and provide details. |
| DebugSetupCrash | CEEBA202-6F04-4BC3-84B8-7B99AED924B1 | This offline only rule indicates that setup itself encountered a failure that resulted in a process memory dump.  If the debugger tools are installed on the system, SetupDiag debugs the memory dump and give further details. |
| DebugMemoryDump | 505ED489-329A-43F5-B467-FCAAF6A1264C | This offline only rule is for any memory.dmp file that resulted during the setup/upgrade operation.  If the debugger tools are installed on the system, SetupDiag debugs the memory dump and give further details. |
| DeviceInstallHang | 37BB1C3A-4D79-40E8-A556-FDA126D40BC6 | This failure rule indicates the system hung or bug checked during the device installation phase of upgrade. |
| **DriverPackageMissingFileFailure** | 37BB1C3A-4D79-40E8-A556-FDA126D40BC6 | This rule indicates that a driver package had a missing file during device install. Updating the driver package might help resolve the issue. |
| **UnsignedDriverBootFailure** | CD270AA4-C044-4A22-886A-F34EF2E79469 | This rule indicates that an unsigned driver caused a boot failure. |
| BootFailureDetected | 4FB446C2-D4EC-40B4-97E2-67EB19D1CFB7 | This rule indicates a boot failure occurred during a specific phase of the update.  The rule indicates the failure code and phase for diagnostic purposes. |
| WinSetupBootFilterFailure | C073BFC8-5810-4E19-B53B-4280B79E096C | Detects failures in the kernel mode file operations. |
| FindDebugInfoFromRollbackLog | 9600EB68-1120-4A87-9FE9-3A4A70ACFC37 | This rule determines and gives details when a bug check occurs during the setup/upgrade process that resulted in a memory dump. However, a debugger package isn't required on the executing machine. |
| AdvancedInstallerFailed | 77D36C96-32BE-42A2-BB9C-AAFFE64FCADC | Finds fatal advanced installer operations that cause setup failures. Indicates critical failure in the AdvancedInstaller while running an installer package, includes the .exe being called, the phase, mode, component and error codes. |
| **AdvancedInstallerPluginInstallFailed** | 2F784A0E-CEB1-47C5-8072-F1294C7CB4AE | This rule indicates some component that was being installed via an advanced installer (FeatureOnDemand, Language Packs, .NET packages, etc.) failed to install. The rule calls out what was being installed. If the failed component is a FeatureOnDemand, remove the Windows Feature, reboot, and try the upgrade again. If the failed component is a Language Pack, remove the additional language pack, reboot, and try the upgrade again. |
| AdvancedInstallerGenericFailure | 4019550D-4CAA-45B0-A222-349C48E86F71 | A rule to match AdvancedInstaller read/write failures in a generic sense.  Triggers on advanced installer failures in a generic sense. It outputs the application called, phase, mode, component and error code. |
| FindMigApplyUnitFailure | A4232E11-4043-4A37-9BF4-5901C46FD781 | Detects a migration unit failure that caused the update to fail.  This rule outputs the name of the migration plug-in and the error code it produced for diagnostic purposes. |
| FindMigGatherUnitFailure | D04C064B-CD77-4E64-96D6-D26F30B4EE29 | Detects a migration gather unit failure that caused the update to fail.  This rule outputs the name of the gather unit/plug-in and the error code it produced for diagnostic purposes. |
| FindMigGatherApplyFailure | A9964E6C-A2A8-45FF-B6B5-25E0BD71428E | Shows errors when the migration Engine fails out on a gather or apply operation.  Indicates the Migration Object (file or registry path), the Migration |
| OptionalComponentFailedToGetOCsFromPackage | D012E2A2-99D8-4A8C-BBB2-088B92083D78 | This rule matches a specific Optional Component failure when attempting to enumerate components in a package.  Indicates the optional component (OC) migration operation failed to enumerate optional components from an OC Package. It outputs the package name and error code. This rule replaces the OptionalComponentInstallFailure rule present. |
| OptionalComponentOpenPackageFailed | 22952520-EC89-4FBD-94E0-B67DF88347F6 | Matches a specific Optional Component failure when attempting to open an OC package.  It outputs the package name and error code. Indicates the optional component migration operation failed to open an optional component Package.  Outputs the package name and error code. |
| OptionalComponentInitCBSSessionFailed | 63340812-9252-45F3-A0F2-B2A4CA5E9317 |  Matches a specific failure where the advanced installer service or components aren't operating or started on the system.  Indicates corruption in the servicing stack on the down-level system.  Outputs the error code encountered while trying to initialize the servicing component on the existing OS. |
| CriticalSafeOSDUFailure | 73566DF2-CA26-4073-B34C-C9BC70DBF043 | This rule indicates a failure occurred while updating the SafeOS image with a critical dynamic update.  It indicates the phase and error code that occurred while attempting to update the SafeOS image for diagnostic purposes. |
| UserProfileCreationFailureDuringOnlineApply | 678117CE-F6A9-40C5-BC9F-A22575C78B14 | Indicates there was a critical failure while creating or modifying a User Profile during the online apply phase of the update.  It indicates the operation and error code associated with the failure for diagnostic purposes. |
| UserProfileCreationFailureDuringFinalize | C6677BA6-2E53-4A88-B528-336D15ED1A64 | Matches a specific User Profile creation error during the finalize phase of setup.  It outputs the failure code. |
| UserProfileSuffixMismatch | B4BBCCCE-F99D-43EB-9090-078213397FD8 | Detects when a file or other object causes the migration or creation of a user profile to fail during the update. |
| **DuplicateUserProfileFailure** | BD7B3109-80F1-4421-8F0A-B34CD25F4B51 | This rule indicates a fatal error while migrating user profiles, usually with multiple SIDs associated with a single user profile. This error usually occurs when software creates local user accounts that aren't ever used or signed in with. The rule indicates the SID and UserName of the account that is causing the failure. To attempt to resolve the issue, first back up all the user's files for the affected user account. After the user's files are backed up, delete the account in a supported manner. Make sure that the account isn't one that is needed or is currently used to sign into the device. After deleting the account, reboot, and try the upgrade again. |
| WimMountFailure | BE6DF2F1-19A6-48C6-AEF8-D3B0CE3D4549 | This rule indicates the update failed to mount a WIM file.  It shows the name of the WIM file and the error message and error code associated with the failure for diagnostic purposes. |
| WimMountDriverIssue | 565B60DD-5403-4797-AE3E-BC5CB972FBAE | Detects failures in `WimMount.sys` registration on the system. |
| WimApplyExtractFailure | 746879E9-C9C5-488C-8D4B-0C811FF3A9A8 | Matches a WIM apply failure during WIM extraction phases of setup.  It outputs the extension, path and error code. |
| UpdateAgentExpanderFailure | 66E496B3-7D19-47FA-B19B-4040B9FD17E2 | Matches DPX expander failures in the down-level phase of update from Windows Update.  It outputs the package name, function, expression and error code. |
| FindFatalPluginFailure | E48E3F1C-26F6-4AFB-859B-BF637DA49636 | Matches any plug-in failure that setupplatform decides is fatal to setup.  It outputs the plugin name, operation and error code. |
| MigrationAbortedDueToPluginFailure | D07A24F6-5B25-474E-B516-A730085940C9 | Indicates a critical failure in a migration plugin that causes setup to abort the migration.  Provides the setup operation, plug-in name, plug-in action and error code. |
| DISMAddPackageFailed | 6196FF5B-E69E-4117-9EC6-9C1EAB20A3B9 | Indicates a critical failure during a DISM add package operation.  Specifies the Package Name, DISM error and add package error code. |
| DISMImageSessionFailure | 61B7886B-10CD-4C98-A299-B987CB24A11C | Captures failure information when DISM fails to start an image session successfully. |
| DISMproviderFailure | D76EF86F-B3F8-433F-9EBF-B4411F8141F4 | Triggers when a DISM provider (plug-in) fails in a critical operation.  Outputs the file (plug-in name), function called + error code, and error message from the provider. |
| SysPrepLaunchModuleFailure | 7905655C-F295-45F7-8873-81D6F9149BFD | Indicates a sysPrep plug-in failed in a critical operation.  Indicates the plug-in name, operation name and error code. |
| UserProvidedDriverInjectionFailure | 2247C48A-7EE3-4037-AFAB-95B92DE1D980 | A driver provided to setup (via command line input) failed in some way.  Outputs the driver install function and error code. |
| **DriverMigrationFailure** | 9378D9E2-256E-448C-B02F-137F611F5CE3 | This rule indicates a fatal failure when migrating drivers. |
| **UnknownDriverMigrationFailure** | D7541B80-5071-42CE-AD14-FBE8C0C4F7FD | This rule indicates a bad driver package resides on the system. The driver package causes the upgrade to fail when the driver package is attempted to migrate to the new OS. The rule usually indicates the driver package name that caused the issue. The remediation is to remove the bad driver package, reboot, and try the upgrade again.  If an update to this driver is available from the OEM, updating the driver package is recommended. |
| | |
| FindSuccessfulUpgrade | 8A0824C8-A56D-4C55-95A0-22751AB62F3E | Determines if the given setup was a success or not based off the logs. |
| FindSetupHostReportedFailure | 6253C04F-2E4E-4F7A-B88E-95A69702F7EC | Gives information about failures surfaced early in the upgrade process by `setuphost.exe` |
| FindDownlevelFailure | 716334B7-F46A-4BAA-94F2-3E31BC9EFA55 | Gives failure information surfaced by SetupPlatform, later in the down-level phase. |
| FindAbruptDownlevelFailure | 55882B1A-DA3E-408A-9076-23B22A0472BD | Gives last operation failure information when the system fails in the down-level, but the log just ends abruptly. |
| FindEarlyDownlevelError | A4CE4FC9-5E10-4BB1-8ECE-3B29EB9D7C52 | Detects failures in down-level phase before setup platform is invoked. |
| FindSPFatalError | A4028172-1B09-48F8-AD3B-86CDD7D55852 | Captures failure information when setup platform encounters a fatal error. |
| FindSetupPlatformFailedOperationInfo | 307A0133-F06B-4B75-AEA8-116C3B53C2D1 | Gives last phase and error information when SetupPlatform indicates a critical failure.  This rule indicates the operation and error associated with the failure for diagnostic purposes. |
| FindRollbackFailure | 3A43C9B5-05B3-4F7C-A955-88F991BB5A48 | Gives last operation, failure phase and error information when a rollback occurs. |

## Sample logs

### Text log sample

```txt
Matching Profile found: OptionalComponentOpenPackageFailed - 22952520-EC89-4FBD-94E0-B67DF88347F6
System Information:
    Machine Name = Offline
    Manufacturer = MSI
    Model = MS-7998
    HostOSArchitecture = x64
    FirmwareType = PCAT
    BiosReleaseDate = 20160727000000.000000+000
    BiosVendor = BIOS Date: 07/27/16 10:01:46 Ver: V1.70
    BiosVersion = 1.70
    HostOSVersion = 10.0.15063
    HostOSBuildString = 15063.0.amd64fre.rs2_release.170317-1834
    TargetOSBuildString = 10.0.16299.15 (rs3_release.170928-1534)
    HostOSLanguageId = 2057
    HostOSEdition = Core
    RegisteredAV = Windows Defender,
    FilterDrivers = WdFilter,wcifs,WIMMount,luafv,Wof,FileInfo,
    UpgradeStartTime = 3/21/2023 9:47:16 PM
    UpgradeEndTime = 3/21/2023 10:02:40 PM
    UpgradeElapsedTime = 00:15:24
    ReportId = dd4db176-4e3f-4451-aef6-22cf46de8bde

Error: SetupDiag reports Optional Component installation failed to open OC Package. Package Name: Foundation, Error: 0x8007001F
Recommend you check the "Windows Modules Installer" service (Trusted Installer) is started on the system and set to automatic start, reboot and try the update again.  Optionally, you can check the status of optional components on the system (search for Windows Features), uninstall any unneeded optional components, reboot and try the update again.
Error: SetupDiag reports down-level failure, Operation: Finalize, Error: 0x8007001F - 0x50015
Refer to https://learn.microsoft.com/windows/deployment/upgrade/upgrade-error-codes for error information.
```

### XML log sample

```xml
<?xml version="1.0" encoding="utf-16"?>
<SetupDiag xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="https://learn.microsoft.com/windows/deployment/upgrade/setupdiag">
  <Version>1.7.0.0</Version>
  <ProfileName>FindSPFatalError</ProfileName>
  <ProfileGuid>A4028172-1B09-48F8-AD3B-86CDD7D55852</ProfileGuid>
  <SystemInfo>
    <MachineName>Offline</MachineName>
    <Manufacturer>Gigabyte Technology Co., Ltd.</Manufacturer>
    <Model>X470 AORUS ULTRA GAMING</Model>
    <HostOSArchitecture>1033</HostOSArchitecture>
    <FirmwareType>UEFI</FirmwareType>
    <BiosReleaseDate>20180808000000.000000+000</BiosReleaseDate>
    <BiosVendor>F3</BiosVendor>
    <BiosVersion />
    <HostOSVersion>10.0.18908</HostOSVersion>
    <HostOSBuildString>18908.1000.amd64fre.rs_prerelease.190524-1658</HostOSBuildString>
    <TargetOSBuildString>10.0.18912.1001 (rs_prerelease.190601-1739)</TargetOSBuildString>
    <HostOSLanguageId />
    <HostOSEdition>Professional</HostOSEdition>
    <RegisteredAV>Windows Defender</RegisteredAV>
    <FilterDrivers />
    <UpgradeStartTime>2023-06-06T21:19:10</UpgradeStartTime>
    <UpgradeElapsedTime />
    <UpgradeEndTime>2023-06-06T22:21:49</UpgradeEndTime>
    <RollbackStartTime>0001-01-01T00:00:00</RollbackStartTime>
    <RollbackEndTime>0001-01-01T00:00:00</RollbackEndTime>
    <RollbackElapsedTime />
    <FinalizeStartTime>0001-01-01T00:00:00</FinalizeStartTime>
    <PostOOBESuccessTime>0001-01-01T00:00:00</PostOOBESuccessTime>
    <TotalOfflineTime />
    <CommercialId>Offline</CommercialId>
    <CV>MgUweCZk90KdwUiZ</CV>
    <SetupReportId>F21F8FB6-00FD-4349-84FB-2AC75F389E73</SetupReportId>
    <ReportId>F21F8FB6-00FD-4349-84FB-2AC75F389E73</ReportId>
  </SystemInfo>
  <LogErrorLine>2023-06-06 21:47:11, Error                 SP     Error converting install time 5/2/2023 to structure[gle=0x00000057]</LogErrorLine>
  <FailureData>
Error: SetupDiag reports Fatal Error.
Last Setup Phase = Downlevel
Last Setup Operation: Gather data, scope: EVERYTHING
Error: 0x00000057</FailureData>
  <FailureData>LogEntry: 2023-06-06 21:47:11, Error                 SP     Error converting install time 5/2/2023 to structure[gle=0x00000057]</FailureData>
  <FailureData>LogEntry: 2023-06-06 21:47:11, Error                 SP     Error converting install time 5/2/2023 to structure[gle=0x00000057]</FailureData>
  <FailureData>
Refer to "https://learn.microsoft.com/windows/desktop/Debug/system-error-codes" for error information.</FailureData>
  <FailureDetails>Err = 0x00000057, LastOperation = Gather data, scope: EVERYTHING, LastPhase = Downlevel</FailureDetails>
</SetupDiag>
```

### JSON log sample

```json
{
    "Version":"1.6.0.0",
    "ProfileName":"FindSPFatalError",
    "ProfileGuid":"A4028172-1B09-48F8-AD3B-86CDD7D55852",
    "SystemInfo":{
        "BiosReleaseDate":"20180808000000.000000+000",
        "BiosVendor":"F3",
        "BiosVersion":"F3",
        "CV":"MgUweCZk90KdwUiZ",
        "CommercialId":"Offline",
        "FilterDrivers":"",
        "FinalizeStartTime":"\/Date(-62135568000000-0800)\/",
        "FirmwareType":"UEFI",
        "HostOSArchitecture":"x64",
        "HostOSBuildString":"18908.1000.amd64fre.rs_prerelease.190524-1658",
        "HostOSEdition":"Professional",
        "HostOSLanguageId":"",
        "HostOSVersion":"",
        "MachineName":"Offline",
        "Manufacturer":"Gigabyte Technology Co., Ltd.",
        "Model":"X470 AORUS ULTRA GAMING",
        "PostOOBESuccessTime":"\/Date(-62135568000000-0800)\/",
        "RegisteredAV":"Windows Defender",
        "ReportId":"F21F8FB6-00FD-4349-84FB-2AC75F389E73",
        "RollbackElapsedTime":"PT0S",
        "RollbackEndTime":"\/Date(-62135568000000-0800)\/",
        "RollbackStartTime":"\/Date(-62135568000000-0800)\/",
        "SetupReportId":"F21F8FB6-00FD-4349-84FB-2AC75F389E73",
        "TargetOSArchitecture":null,
        "TargetOSBuildString":"10.0.18912.1001 (rs_prerelease.190601-1739)",
        "TotalOfflineTime":"PT0S",
        "UpgradeElapsedTime":"PT1H2M39S",
        "UpgradeEndTime":"\/Date(1559884909000-0700)\/",
        "UpgradeStartTime":"\/Date(1559881150000-0700)\/"
    },
    "LogErrorLine":"2023-06-06 21:47:11, Error                 SP     Error converting install time 5\/2\/2023 to structure[
        gle=0x00000057
    ]",
    "FailureData":[
        "\u000aError: SetupDiag reports Fatal Error.\u000aLast Setup Phase = Downlevel\u000aLast Setup Operation: Gather data, scope: EVERYTHING\u000aError: 0x00000057",
        "LogEntry: 2023-06-06 21:47:11, Error                 SP     Error converting install time 5\/2\/2023 to structure[
            gle=0x00000057
        ]",
        "LogEntry: 2023-06-06 21:47:11, Error                 SP     Error converting install time 5\/2\/2023 to structure[
            gle=0x00000057
        ]",
        "\u000aRefer to \"https:\/\/learn.microsoft.com\/windows\/desktop\/Debug\/system-error-codes\" for error information."
    ],
    "FailureDetails":"Err = 0x00000057, LastOperation = Gather data, scope: EVERYTHING, LastPhase = Downlevel",
    "DeviceDriverInfo":null,
    "Remediation":[
        
    ],
    "SetupPhaseInfo":null,
    "SetupOperationInfo":null
}
```

## Sample registry key

![Example of Addreg.](./../images/addreg.png)

## Related articles

- [Resolve Windows upgrade errors: Technical information for IT Pros](./resolve-windows-upgrade-errors.md).
