---
title: Run a scan from the command line in Windows Defender in Windows 10 (Windows 10)
description: IT professionals can run a scan using the command line in Windows Defender in Windows 10.
keywords: scan, command line, mpcmdrun, defender
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: manage
ms.sitesec: library
author: mjcaparas
---

# Run a Windows Defender scan from the command line

**Applies to:**

- Windows 10

IT professionals can use a command-line utility to run a Windows Defender scan. 

The utility is available in _%Program Files%\Windows Defender\MpCmdRun.exe_

This utility can be handy when you want to automate the use of Windows Defender. 

**To run a full system scan from the command line**

1. Click **Start**, type **cmd**, and press **Enter**.
2. Navigate to _%ProgramFiles%\Windows Defender_ and enter the following command, and press **Enter**:

```
C:\Program Files\Windows Defender\mpcmdrun.exe -scan -scantype 2
```
The full scan will start. When the scan completes, you'll see a message indicating that the scan is finished. 


The utility also provides other commands that you can run:

```
MpCmdRun.exe [command] [-options]
```

Command | Description 
:---|:---
\- ? / -h | Displays all available options for the tool
\-Scan [-ScanType #] [-File <path> [-DisableRemediation] [-BootSectorScan]][-Timeout <days>] | Scans for malicious softare
\-Trace  [-Grouping #] [-Level #]| Starts diagnostic tracing
\-GetFiles | Collects support information
\-RemoveDefinitions [-All] | Restores the installed signature definitions to a previous backup copy or to the original default set of signatures
\-AddDynamicSignature [-Path] | Loads a dyanmic signature
\-ListAllDynamicSignature [-Path] | Lists the loaded dynamic signatures
\-RemoveDynamicSignature [-SignatureSetID] | Removes a dynamic signature
\-EnableIntegrityServices | Enables integrity services
\-SubmitSamples | Submit all sample requests 