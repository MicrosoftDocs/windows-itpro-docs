---
title: Run and customize on-demand scans in Windows Defender AV
description: Run and configure on-demand scans using PowerShell, Windows Management Instrumentation, or individually on endpoints with the Windows Defender Security Center app
keywords: 
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---





# Configure and run Windows Defender AV scans

**Applies to:**

- Windows 10

IT professionals can use a command-line utility to run a Windows Defender scan. 

The utility is available in _%Program Files%\Windows Defender\MpCmdRun.exe_.

This utility can be handy when you want to automate the use of Windows Defender. 

**To run a quick scan from the command line**

1. Click **Start**, type **cmd**, and press **Enter**.
2. Navigate to _%ProgramFiles%\Windows Defender_ and enter the following command, and press **Enter**:

```
C:\Program Files\Windows Defender\mpcmdrun.exe -scan -scantype 1
```
The quick scan will start. When the scan completes, you'll see a message indicating that the scan is finished. 


The utility also provides other commands that you can run:

```
MpCmdRun.exe [command] [-options]
```

Command | Description 
:---|:---
\- ? / -h | Displays all available options for the tool
\-Scan [-ScanType #] [-File <path> [-DisableRemediation] [-BootSectorScan]][-Timeout <days>] | Scans for malicious software
\-Trace  [-Grouping #] [-Level #]| Starts diagnostic tracing
\-GetFiles | Collects support information
\-RemoveDefinitions [-All] | Restores the installed signature definitions to a previous backup copy or to the original default set of signatures
\-AddDynamicSignature [-Path] | Loads a dynamic signature
\-ListAllDynamicSignature [-Path] | Lists the loaded dynamic signatures
\-RemoveDynamicSignature [-SignatureSetID] | Removes a dynamic signature
<br>
The command-line utility provides detailed information on the other commands supported by the tool. 
