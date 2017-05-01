---
title: Set up exclusions for Windows Defender AV scans
description: You can exclude files (including files modified by specified processes) and folders from being scanned by Windows Defender AV. Validate your exclusions with PowerShell.
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

# Configure and validate file, folder, and process-opened file exclusions in Windows Defender AV scans


**Applies to:**

- Windows 10

**Audience**

- Enterprise security administrators


**Manageability available with**

- Group Policy
- PowerShell
- Windows Management Instrumentation (WMI)
- System Center Configuration Manager
- Microsoft Intune
- Windows Defender Security Center

You can exclude certain files, folders, processes, and process-opened files from being scanned by Windows Defender Antivirus. 

The exclusions apply to [scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md), [on-demand scans](run-scan-windows-defender-antivirus.md), and [always-on real-time protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md). Exclusions for process-opened files only apply to real-time protection.

Exclusions can be useful to avoid incorrect detections on files or software that are unique or customized to your organization.

>[!WARNING]
>Defining exclusions lowers the protection offered by Windows Defender AV. You should always evaluate the risks that are associated with implementing exclusions, and you should only exclude files that you are confident are not malicious.

## In this section

Topic | Description 
---|---
[Configure and validate exclusions based on file name, extension, and folder location](configure-extension-file-exclusions-windows-defender-antivirus.md) | Exclude files from Windows Defender AV scans based on their file extension, file name, or location
[Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-windows-defender-antivirus.md) | You can exclude files from scans that have been opened by a specific process
[Configure exclusions in Windows Defender AV on Windows Server](configure-server-exclusions-windows-defender-antivirus.md) | Windows Server 2016 includes automatic exclusions, based on the defined Server Role. You can also add custom exclusions

