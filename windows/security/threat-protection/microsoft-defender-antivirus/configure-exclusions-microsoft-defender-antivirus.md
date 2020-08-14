---
title: Set up exclusions for Microsoft Defender AV scans
description: You can exclude files (including files modified by specified processes) and folders from being scanned by Microsoft Defender AV. Validate your exclusions with PowerShell.
keywords: 
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 03/12/2020
ms.reviewer: 
manager: dansimp
---

# Configure and validate exclusions for Microsoft Defender Antivirus scans

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can exclude certain files, folders, processes, and process-opened files from Microsoft Defender Antivirus scans. Such exclusions apply to [scheduled scans](scheduled-catch-up-scans-microsoft-defender-antivirus.md), [on-demand scans](run-scan-microsoft-defender-antivirus.md), and [always-on real-time protection and monitoring](configure-real-time-protection-microsoft-defender-antivirus.md). Exclusions for process-opened files only apply to real-time protection.

## Configure and validate exclusions

To configure and validate exclusions, see the following:

- [Configure and validate exclusions based on file name, extension, and folder location](configure-extension-file-exclusions-microsoft-defender-antivirus.md). This enables you to exclude files from Microsoft Defender Antivirus scans based on their file extension, file name, or location.

- [Configure and validate exclusions for files opened by processes](configure-process-opened-file-exclusions-microsoft-defender-antivirus.md). This enables you to exclude files from scans that have been opened by a specific process.

## Recommendations for defining exclusions

Defining exclusions lowers the protection offered by Microsoft Defender Antivirus. You should always evaluate the risks that are associated with implementing exclusions, and you should only exclude files that you are confident are not malicious.

The following is a list of recommendations that you should keep in mind when defining exclusions:  

- Exclusions are technically a protection gap—always consider additional mitigations when defining exclusions. Additional mitigations could be as simple as making sure the excluded location has the appropriate access-control lists (ACLs), audit policy, is processed by an up-to-date software, etc.
- Review the exclusions periodically. Re-check and re-enforce the mitigations as part of the review process.
- Ideally, avoid defining proactive exclusions. For instance, don't exclude something just because you think it might be a problem in the future. Use exclusions only for specific issues—mostly around performance, or sometimes around application compatibility that exclusions could mitigate.
- Audit the exclusion list changes. The security admin should preserve enough context around why a certain exclusion was added. You should be able to provide answer with specific reasoning as to why a certain path was excluded.

## Related articles

- [Microsoft Defender Antivirus exclusions on Windows Server 2016](configure-server-exclusions-microsoft-defender-antivirus.md)
- [Common mistakes to avoid when defining exclusions](common-exclusion-mistakes-microsoft-defender-antivirus.md)