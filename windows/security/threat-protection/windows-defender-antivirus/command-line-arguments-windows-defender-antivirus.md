---
title: Use the command line to manage Windows Defender Antivirus
description: Run Windows Defender Antivirus scans and configure next gen protection with a dedicated command-line utility.
keywords: run windows defender scan, run antivirus scan from command line, run windows defender scan from command line, mpcmdrun, defender
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 12/10/2018
---

# Configure and manage Windows Defender Antivirus with the mpcmdrun.exe command-line tool

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can perform various Windows Defender Antivirus functions with the dedicated command-line tool mpcmdrun.exe.

This utility can be useful when you want to automate Windows Defender Antivirus use.

You can find the utility in _%ProgramFiles%\Windows Defender\MpCmdRun.exe_. You must run it from a command prompt.

> [!NOTE]
> You may need to open an administrator-level version of the command prompt. Right-click the item in the Start menu, click **Run as administrator** and click **Yes** at the permissions prompt.

The utility has the following commands:

```DOS
MpCmdRun.exe [command] [-options]
```

Command | Description 
:---|:---
\-? **or** -h | Displays all available options​ for this tool​
\-Scan [-ScanType #] [-File <path> [-DisableRemediation] [-BootSectorScan]]​ [-Timeout <days>]​ [-Cancel]​ | Scans for malicious software​
\-Trace [-Grouping #] [-Level #] | Starts diagnostic tracing​
\-GetFiles | Collects support information​
\-GetFilesDiagTrack | Same as Getfiles but outputs to​ temporary DiagTrack folder​
\-RemoveDefinitions [-All] | Restores the installed​ Security intelligence  to a previous backup copy or to​ the original default set
\-RemoveDefinitions [-DynamicSignatures] | Removes only the dynamically​ downloaded Security intelligence ​
\-RemoveDefinitions [-Engine] | Restores the previous installed engine
\-SignatureUpdate [-UNC \| -MMPC] | Checks for new Security intelligence updates​
\-Restore  [-ListAll \| [[-Name <name>] [-All] \| [-FilePath <filePath>]] [-Path <path>]] | Restores or list​s quarantined item(s)​
\-AddDynamicSignature [-Path] | Loads dynamic Security intelligence ​
\-ListAllDynamicSignatures | Lists the loaded dynamic Security intelligence ​
\-RemoveDynamicSignature [-SignatureSetID] | Removes dynamic Security intelligence ​
\-CheckExclusion -path <path> | Checks whether a path is excluded


## Related topics

- [Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
