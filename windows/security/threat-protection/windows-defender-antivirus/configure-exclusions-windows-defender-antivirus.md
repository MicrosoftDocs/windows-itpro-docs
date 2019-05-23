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
ms.localizationpriority: medium
author: justinha
ms.author: v-anbic
ms.date: 09/03/2018
---

# Configure and validate exclusions for Windows Defender Antivirus scans

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can exclude certain files, folders, processes, and process-opened files from Windows Defender Antivirus scans.

The exclusions apply to [scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md), [on-demand scans](run-scan-windows-defender-antivirus.md), and [always-on real-time protection and monitoring](configure-real-time-protection-windows-defender-antivirus.md). Exclusions for process-opened files only apply to real-time protection.

Exclusions can be useful to avoid incorrect detections on files or software that are unique or customized to your organization.

Windows Server 2016 also features automatic exclusions that are defined by the server roles you enable. See the [Windows Defender Antivirus exclusions on Windows Server 2016](configure-server-exclusions-windows-defender-antivirus.md) topic for more information and a list of the automatic exclusions.

>[!WARNING]
>Defining exclusions lowers the protection offered by Windows Defender Antivirus. You should always evaluate the risks that are associated with implementing exclusions, and you should only exclude files that you are confident are not malicious.

## In this section

Topic | Description 
---|---
[Configure and validate exclusions based on file name, extension, and folder location](configure-extension-file-exclusions-windows-defender-antivirus.md) | Exclude files from Windows Defender Antivirus scans based on their file extension, file name, or location
[Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-windows-defender-antivirus.md) | Exclude files from scans that have been opened by a specific process
[Configure Windows Defender Antivirus exclusions on Windows Server](configure-server-exclusions-windows-defender-antivirus.md) | Windows Server 2016 includes automatic exclusions, based on the defined server role. You can also add custom exclusions.
