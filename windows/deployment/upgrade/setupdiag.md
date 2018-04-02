---
title: SetupDiag
description: How to use the SetupDiag tool to diagnose Windows Setup errors
keywords: deploy, troubleshoot, windows, 10, upgrade, update, setup, diagnose
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.date: 03/30/2018
ms.localizationpriority: high
---

# SetupDiag

**Applies to**
-   Windows 10

[SetupDiag.exe](https://go.microsoft.com/fwlink/?linkid=870142) is a standalone diagnostic tool that can be used to obtain details about why a Windows 10 upgrade was unsuccessful. 

SetupDiag works by examining Windows Setup log files. It attempts to parse these log files to determine the root cause of a failure to update or upgrade the computer to Windows 10. SetupDiag can be run on the computer that failed to update, or you can export logs from the computer to another location and run SetupDiag in offline mode.

See the [Release notes](#release-notes) section at the bottom of this topic for information about updates to this tool. 

## Requirements

1. The destination OS must be Windows 10.
2. [.NET Framework 4.6](https://www.microsoft.com/download/details.aspx?id=48137) must be installed. If you are not sure what version of .NET is currently installed, see [How to: Determine Which .NET Framework Versions Are Installed](https://docs.microsoft.com/dotnet/framework/migration-guide/how-to-determine-which-versions-are-installed). You can also use the following command-line query to display the installed v4 versions:

    ```
    reg query "HKLM\SOFTWARE\Microsoft\Net Framework Setup\NDP\v4" /s
    ```

## Parameters

| Parameter | Description |
| --- | --- |
| /? | <ul><li>Displays interactive help</ul> |
| /Output:\<path to results file\> | <ul><li>This optional parameter enables you to specify the output file for results. This is where you will find what SetupDiag was able to determine.  Only text format output is supported.  UNC paths will work, provided the context under which SetupDiag runs has access to the UNC path.  If the path has a space in it, you must enclose the entire path in double quotes (see the example section below). <li>Default: If not specified, SetupDiag will create the file **SetupDiagResults.log** in the same  directory where SetupDiag.exe is run.</ul> |
| /Mode:\<Offline \| Online\>  |  <ul><li>This optional parameter allows you to specify the mode in which SetupDiag will operate: Offline or Online.<li>Offline: tells SetupDiag to run against a set of log files already captured from a failed system.  In this mode you can run anywhere you have access to the log files.  This mode does not require SetupDiag to be run on the computer that failed to update. When you specify offline mode, you must also specify the /LogsPath: parameter.<li>Online: tells SetupDiag that it is being run on the computer that failed to update. SetupDiag will attempt find log files and resources in standard Windows locations, such as the **%SystemDrive%\$Windows.~bt** directory for setup log files.<li>Log file search paths are configurable in the SetupDiag.exe.config file, under the SearchPath key.  Search paths are comma separated.  Note: A large number of search paths will extend the time required for SetupDiag to return results.<li>Default: If not specified, SetupDiag will run in Online mode.</ul> |
| /LogsPath:\<Path to logs\> | <ul><li>This optional parameter is required only when **/Mode:Offline** is specified.  This tells SetupDiag.exe where to find the log files. These log files can be in a flat folder format, or containing multiple subdirectories.  SetupDiag will recursively search all child directories. This parameter should be omitted when the **/Mode:Online** is specified.</ul> |
| /ZipLogs:\<True \| False\> | <ul><li>This optional parameter tells SetupDiag.exe to create a zip file continuing its results and all the log files it parsed.  The zip file is created in the same directory where SetupDiag.exe is run.<li>Default: If not specified, a value of 'true' is used.</ul> |
| /Verbose | <ul><li>This optional parameter will output much more data to the log file produced by SetupDiag.exe.  By default SetupDiag will only produce a log file entry for serious errors.  Using **/Verbose** will cause SetupDiag to always produce a log file with debugging details, which can be useful when reporting a problem with SetupDiag.</ul> |

### Examples:

In the following example, SetupDiag is run with default parameters (online mode, results file is SetupDiagResults.log in the same folder where SetupDiag is run).

```
SetupDiag.exe
```

In the following example, SetupDiag is specified to run in Online mode (this is the default).  It will know where to look for logs on the current (failing) system, so there is no need to gather logs ahead of time. A custom location for results is specified.

```
SetupDiag.exe /Output:C:\SetupDiag\Results.log /Mode:Online
```

The following example uses the /Output parameter to save results to a path name that contains a space:

```
SetupDiag /Output:"C:\Tools\SetupDiag\SetupDiag Results\Results.log"
```

The following example specifies that SetupDiag is to run in offline mode, and to process the log files found in **D:\Temp\Logs\LogSet1**.

```
SetupDiag.exe /Output:C:\SetupDiag\Results.log /Mode:Offline /LogsPath:D:\Temp\Logs\LogSet1
```

## Log files

[Windows Setup Log Files and Event Logs](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-log-files-and-event-logs) has information about where logs are created during Windows Setup. For offline processing, you should run SetupDiag against the contents of the entire folder. For example, depending on when the upgrade failed, copy one of the following folders to your offline location:

\\$Windows.~bt\sources\panther
<br>\\$Windows.~bt\Sources\Rollback
<br>\Windows\Panther
<br>\Windows\Panther\NewOS

If you copy the parent folder and all sub-folders, SetupDiag will automatically search for log files in all subdirectories.

## Setup bug check analysis

When Microsoft Windows encounters a condition that compromises safe system operation, the system halts. This condition is called a bug check. It is also commonly referred to as a system crash, a kernel error, a Stop error, or BSOD. Typically a hardware device, hardware driver, or related software causes this error.

If crash dumps [are enabled](https://docs.microsoft.com/windows-hardware/drivers/debugger/enabling-a-kernel-mode-dump-file) on the system, a crash dump file is created. If the bug check occurs during an upgrade, Windows Setup will extract a minidump (setupmem.dmp) file. SetupDiag can also debug these setup related minidumps.

To debug a setup related bug check, you must:
- Specify the **/Mode:Offline** and **/LogsPath** parameters. You cannot debug memory dumps in online mode. 
- Gather the setup memory dump file (setupmem.dmp) from the failing system. 
    - Setupmem.dmp will be created in either **%SystemDrive%\$Windows.~bt\Sources\Rollback**, or in **%WinDir%\Panther\NewOS\Rollback** depending on when the bug check occurs.
- Install the [Windows Debugging Tools](https://docs.microsoft.com/windows-hardware/drivers/debugger/debugger-download-tools) on the computer that runs SetupDiag.

In the following example, the **setupmem.dmp** file is copied to the **D:\Dump** directory and the Windows Debugging Tools are installed prior to running SetupDiag:

```
SetupDiag.exe /Output:C:\SetupDiag\Dumpdebug.log /Mode:Offline /LogsPath:D:\Dump
```

## Known issues

1. Some rules can take a long time to process if the log files involved as large.
2. SetupDiag only outputs data in a text format. If another format is desired, please provide this [feedback](#feedback).
3. If the failing computer is opted into the Insider program and getting regular pre-release updates, or an update is already pending on the computer when SetupDiag is run, it can encounter problems trying to open these log files. This will likely cause a failure to determine a root cause.  In this case, try gathering the log files and running SetupDiag in offline mode.


## Sample output

The following is an example where SetupDiag is run in offline mode. In this example, it is found that disk space is not sufficient to complete Windows Setup:

```
C:\setupdiag>SetupDiag /Output:C:\setupdiag\results.log /Mode:Offline /LogsPath:C:\setupdiag\logfiles


SetupDiag v1.00
Copyright (c) Microsoft Corporation. All rights reserved.


Searching for setup logs, this can take a minute or more depending on the number and size of the logs...please wait.
        Found 1 setupact.logs.
        Processing setupact.log 1 of 1
Gathering information from setup logs.

SetupDiag: processing rule: CompatScanOnly.
...No match.


SetupDiag: processing rule: BitLockerHardblock.
...No match.


SetupDiag: processing rule: VHDHardblock.
...No match.


SetupDiag: processing rule: PortableWorkspaceHardblock.
...No match.


SetupDiag: processing rule: AuditModeHardblock.
...No match.


SetupDiag: processing rule: SafeModeHardblock.
...No match.


SetupDiag: processing rule: InsufficientSystemPartitionDiskSpaceHardblock.
...No match.


SetupDiag: processing rule: HardblockApplication.
...No match.


SetupDiag: processing rule: HardblockDeviceOrDriver.
...No match.


SetupDiag: processing rule: HardblockMismatchedLanguage.
..No match.


SetupDiag: processing rule: HardblockFlightSigning.
..No match.


SetupDiag: processing rule: DiskSpaceBlockInDownLevel.
...

Matching Profile found: DiskSpaceBlockInDownLevel - 6080AFAC-892E-4903-94EA-7A17E69E549E
Warning: Found Disk Space Hard Block.
Warning: You must free up at least 6603 MB of space on the System Drive, and try again.

SetupDiag found 1 matching issue.
SetupDiag results were logged to: c:\setupdiag\results.log
Logs ZipFile created at: c:\setupdiag\Logs.zip

```

## Rules

When searching log files, SetupDiag uses a set of rules to match known issues. These rules are contained in the rules.xml file which is extracted when SetupDiag is run. The rules.xml file might be updated as new versions of SetupDiag are made available. See [Release notes](#release-notes) for more information.

Each rule name and its associated unique rule identifier are listed with a description of the known upgrade-blocking issue. In the rule descriptions, the term "down-level" refers to the first phase of the upgrade process, which runs under the starting OS.

1. CompatScanOnly - FFDAFD37-DB75-498A-A893-472D49A1311D
    - This rule indicates that setup.exe was called with a specific command line parameter that indicated setup was to do a compat scan only, not an upgrade.
2. BitLockerHardblock - C30152E2-938E-44B8-915B-D1181BA635AE
    - This is a block when the target OS does not support BitLocker, yet the host OS has BitLocker enabled.
3. VHDHardblock - D9ED1B82-4ED8-4DFD-8EC0-BE69048978CC
    - This block happens when the host OS is booted to a VHD image.  Upgrade is not supported when the host OS is booted from a VHD image.
4. PortableWorkspaceHardblock - 5B0D3AB4-212A-4CE4-BDB9-37CA404BB280
    - This indicates that the host OS is booted from a Windows To-Go device (USB key).  Upgrade is not supported in the Windows To-Go environment.
5. AuditModeHardblock - A03BD71B-487B-4ACA-83A0-735B0F3F1A90
    - This block indicates that the host OS is currently booted into Audit Mode, a special mode for modifying the Windows state.  Upgrade is not supported from this state.
6. SafeModeHardblock - 404D9523-B7A8-4203-90AF-5FBB05B6579B
    - This block indicates that the host OS is booted to Safe Mode, where upgrade is not supported.
7. InsufficientSystemPartitionDiskSpaceHardblock - 3789FBF8-E177-437D-B1E3-D38B4C4269D1
    - This block is encountered when setup determines the system partition (where the boot loader files are stored) does not have enough space to be serviced with the newer boot files required during the upgrade process.
8. HardblockApplication - D6FBF046-5927-4FCD-B998-FE21CA7F6AC9
    - This rule indicates the host OS had one or more hard blocked applications that need to be uninstalled prior to continuing.  This typically is only a problem when /Quiet is specified on the command line.
9. HardblockDeviceOrDriver - ED3AEFA1-F3E2-4F33-8A21-184ADF215B1B
    - This indicates a device driver that is loaded on the host OS is not compatible with the newer OS version and needs to be removed prior to the upgrade.
10. HardblockMismatchedLanguage - 60BA8449-CF23-4D92-A108-D6FCEFB95B45
    - This rule indicates the host OS and the target OS language editions do not match.
11. HardblockFlightSigning - 598F2802-3E7F-4697-BD18-7A6371C8B2F8
    - This rule indicates the target OS is a pre-release, Windows Insider build, and the target machine has Secure Boot enabled.  This will block the pre-release signed build from booting if installed on the machine.
12. DiskSpaceBlockInDownLevel - 6080AFAC-892E-4903-94EA-7A17E69E549E
    - This failure indicates the system ran out of disk space during the down-level operations of upgrade.
13. DiskSpaceFailure - 981DCBA5-B8D0-4BA7-A8AB-4030F7A10191
    - This failure indicates the system drive ran out of available disk space at some point after the first reboot into the upgrade.
14. DeviceInstallHang - 37BB1C3A-4D79-40E8-A556-FDA126D40BC6
    - This failure rule indicates the system hung or bug checked during the device installation phase of upgrade. 
15. DebugSetupMemoryDump - C7C63D8A-C5F6-4255-8031-74597773C3C6
    - This offline only rule indicates a bug check occurred during setup.  If the debugger tools are available on the system, SetupDiag will debug the memory dump and provide details.
16. DebugSetupCrash - CEEBA202-6F04-4BC3-84B8-7B99AED924B1
    - This offline only rule indicates that setup itself encountered a failure that resulted in a process memory dump.  If the debugger tools are installed on the system, SetupDiag will debug the memory dump and give further details.
17. DebugMemoryDump - 505ED489-329A-43F5-B467-FCAAF6A1264C
    - This offline only rule is for any memory.dmp file that resulted during the setup/upgrade operation.  If the debugger tools are installed on the system, SetupDiag will debug the memory dump and give further details.
18. FindDebugInfoFromRollbackLog - 9600EB68-1120-4A87-9FE9-3A4A70ACFC37
    - This rule will determine and give details when a bug check occurs during the setup/upgrade process that resulted in a memory dump, but without the requirement of the debugger package being on the executing machine.
19. AdvancedInstallerFailed - 77D36C96-32BE-42A2-BB9C-AAFFE64FCADC
    - Finds fatal advanced installer operations that cause setup failures.
20. FindSuccessfulUpgrade - 8A0824C8-A56D-4C55-95A0-22751AB62F3E
    - Determines if the given setup was a success or not based off the logs.
21. FindSetupHostReportedFailure - 6253C04F-2E4E-4F7A-B88E-95A69702F7EC
    - Gives information about failures surfaced early in the upgrade process by setuphost.exe
22. FindDownlevelFailure - 716334B7-F46A-4BAA-94F2-3E31BC9EFA55
    - Gives failure information surfaced by SetupPlatform, later in the down-level phase.
23. FindAbruptDownlevelFailure - 55882B1A-DA3E-408A-9076-23B22A0472BD
    - Gives last operation failure information when the system fails in the down-level, but the log just ends abruptly.
24. FindSetupPlatformDownlevelFailure - 307A0133-F06B-4B75-AEA8-116C3B53C2D1
    - Gives last operation and phase failure information when Setup indicates a down-level failure.
25. FindSetupPlatformDownlevelFailedOperation - 087610ED-329A-4DE9-A54C-38A3A07B5B8B
    - Gives last phase and error information when Setup indicates a down-level failure.
26. FindRollbackFailure - 3A43C9B5-05B3-4F7C-A955-88F991BB5A48
    - Gives last operation, failure phase and error information when a rollback occurs.


## Release notes

03/30/2018 - SetupDiag v1.00 released with 26 rules, as a standalone tool available from the Download Center.

## Related topics

[Resolve Windows 10 upgrade errors: Technical information for IT Pros](https://docs.microsoft.com/en-us/windows/deployment/upgrade/resolve-windows-10-upgrade-errors)