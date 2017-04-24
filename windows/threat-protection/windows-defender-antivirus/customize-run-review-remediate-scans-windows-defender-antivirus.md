---
title: Run and customize scheduled and on-demand scans
description: Customize and initiate scans using Windows Defender AV on endpoints across your network.
keywords: scan, schedule, customize, exclusions, exclude files, remediation, scan results, quarantine, remove threat, quick scan, full scan
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Customize, initiate, and review the results of Windows Defender AV scans and remediation

**Applies to:**

- Windows 10

**Audience**

- Enterprise security administrators


You can use Group Policy, PowerShell, and Windows Management Instrumentation (WMI) to configure scans run by Windows Defender Antivirus.



## In this section

Topic | Description 
---|---
[Configure and validate file, folder, and process-opened file exclusions in Windows Defender AV scans](configure-exclusions-windows-defender-antivirus.md) | You can exclude files (including files modified by specified processes) and folders from on-demand scans, scheduled scans, and always-on real-time protection monitoring and scanning
[Configure scanning options in Windows Defender AV](configure-advanced-scan-types-windows-defender-antivirus.md) | You can configure Windows Defender AV to include certain types of email storage files, back-up or reparse points, and archived files (such as .zip files) in scans. You can also enable network file scanning
[Configure remediation for scans](configure-remediation-windows-defender-antivirus.md) | Configure what Windows Defender AV should do when it detects a threat, and how long quarantined files should be retained in the quarantine folder
[Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md) | Set up recurring (scheduled) scans, including when they should run and whether they run as full or quick scans
[Configure and run scans](run-scan-windows-defender-antivirus.md) | Run and configure on-demand scans using PowerShell, Windows Management Instrumentation, or individually on endpoints with the Windows Defender Security Center app 
[Review scan results](review-scan-results-windows-defender-antivirus.md) | Review the results of scans using  System Center Configuration Manager, Microsoft Intune, or the Windows Defender Security Center app

