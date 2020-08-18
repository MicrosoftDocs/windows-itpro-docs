---
title: Use the command line to manage Microsoft Defender Antivirus
description: Run Microsoft Defender Antivirus scans and configure next-generation protection with a dedicated command-line utility.
keywords: run windows defender scan, run antivirus scan from command line, run windows defender scan from command line, mpcmdrun, defender
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.reviewer: ksarens 
manager: dansimp
ms.date: 08/17/2020
---

# Configure and manage Microsoft Defender Antivirus with the mpcmdrun.exe command-line tool

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can perform various Microsoft Defender Antivirus functions with the dedicated command-line tool *mpcmdrun.exe*. This utility is useful when you want to automate Microsoft Defender Antivirus use. You can find the utility in `%ProgramFiles%\Windows Defender\MpCmdRun.exe`. You must run it from a command prompt.

> [!NOTE]
> You might need to open an administrator-level version of the command prompt. Right-click the item in the Start menu, click **Run as administrator** and click **Yes** at the permissions prompt.
>
> If you're running an updated Microsoft Defender Platform version, please run `MpCmdRun` from the following location: `C:\ProgramData\Microsoft\Windows Defender\Platform\<version>`.

The utility has the following commands:

```console
MpCmdRun.exe [command] [-options]
```
Here's an example:

```console
MpCmdRun.exe -Scan -ScanType 2
``` 

| Command  | Description   |
|:----|:----|
| `-?` **or** `-h`   | Displays all available options for this tool |
| `-Scan [-ScanType [0\|1\|2\|3]] [-File <path> [-DisableRemediation] [-BootSectorScan] [-CpuThrottling]] [-Timeout <days>] [-Cancel]` | Scans for malicious software. Values for **ScanType** are: **0** Default, according to your configuration, **-1** Quick scan, **-2** Full scan, **-3** File and directory custom scan.  CpuThrottling will honor the configured CPU throttling from policy |
| `-Trace [-Grouping #] [-Level #]` | Starts diagnostic tracing |
| `-GetFiles [-SupportLogLocation <path>]` | Collects support information. See '[collecting diagnostic data](collect-diagnostic-data.md)'  |
| `-GetFilesDiagTrack`  | Same as `-GetFiles`, but outputs to temporary DiagTrack folder |
| `-RemoveDefinitions [-All]` | Restores the installed Security intelligence to a previous backup copy or to the original default set |
| `-RemoveDefinitions [-DynamicSignatures]` | Removes only the dynamically downloaded Security intelligence |
| `-RemoveDefinitions [-Engine]` | Restores the previous installed engine |
| `-SignatureUpdate [-UNC \| -MMPC]` | Checks for new Security intelligence updates |
| `-Restore  [-ListAll \| [[-Name <name>] [-All] \| [-FilePath <filePath>]] [-Path <path>]]` | Restores or lists quarantined item(s) |
| `-AddDynamicSignature [-Path]` | Loads dynamic Security intelligence |
| `-ListAllDynamicSignatures` | Lists the loaded dynamic Security intelligence |
| `-RemoveDynamicSignature [-SignatureSetID]` | Removes dynamic Security intelligence |
| `-CheckExclusion -path <path>` | Checks whether a path is excluded |
| `-ValidateMapsConnection` | Verifies that your network can communicate with the Microsoft Defender Antivirus cloud service. This command will only work on Windows 10, version 1703 or higher.|


### Common errors in running commands via mpcmdrun.exe 

|Error message | Possible reason
|:----|:----|
| `ValidateMapsConnection failed (800106BA) or 0x800106BA` | The Microsoft Defender Antivirus service is disabled. Enable the service and try again. <br> 	**Note:**  In Windows 10 1909 or older, and Windows Server 2019 or older, the service used to be called "Windows Defender Antivirus" service.|
| `0x80070667` | You're running the `-ValidateMapsConnection` command from a computer that is Windows 10 version 1607 or older, or Windows Server 2016 or older. Run the command from a machine that is Windows 10 version 1703 or newer, or Windows Server 2019 or newer.|
| `'MpCmdRun' is not recognized as an internal or external command, operable program or batch file.` | The tool needs to be run from either: `%ProgramFiles%\Windows Defender` or `C:\ProgramData\Microsoft\Windows Defender\Platform\4.18.2008.4-0` (where `2008.4-0` might differ since platform updates are monthly except for December)|
| `ValidateMapsConnection failed to establish a connection to MAPS (hr=80070005 httpcode=450)` | Not enough privileges. Use the command prompt (cmd.exe) as an administrator.|
| `ValidateMapsConnection failed to establish a connection to MAPS (hr=80070006 httpcode=451)` | The firewall is blocking the connection or conducting an SSL inspection. |
| `ValidateMapsConnection failed to establish a connection to MAPS (hr=80004005 httpcode=450)` | Possible network-related issues, like name resolution problems|
| `ValidateMapsConnection failed to establish a connection to MAPS (hr=0x80508015` | The firewall is blocking the connection or conducting an SSL inspection. |
| `ValidateMapsConnection failed to establish a connection to MAPS (hr=800722F0D` | The firewall is blocking the connection or conducting an SSL inspection. |
| `ValidateMapsConnection failed to establish a connection to MAPS (hr=80072EE7 httpcode=451)` | The firewall is blocking the connection or conducting an SSL inspection. |

## Related topics

- [Reference topics for management and configuration tools](configuration-management-reference-microsoft-defender-antivirus.md)
- [Microsoft Defender Antivirus in Windows 10](microsoft-defender-antivirus-in-windows-10.md)
