---
title: Run and customize scheduled and on-demand scans
description: Customize and initiate Windows Defender Antivirus scans on endpoints across your network.
keywords: scan, schedule, customize, exclusions, exclude files, remediation, scan results, quarantine, remove threat, quick scan, full scan, Windows Defender Antivirus
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

# Customize, initiate, and review the results of Windows Defender Antivirus scans and remediation

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can use Group Policy, PowerShell, and Windows Management Instrumentation (WMI) to configure Windows Defender Antivirus scans.

## In this section

Topic | Description
---|---
[Configure and validate file, folder, and process-opened file exclusions in Windows Defender Antivirus scans](configure-exclusions-windows-defender-antivirus.md) | You can exclude files (including files modified by specified processes) and folders from on-demand scans, scheduled scans, and always-on real-time protection monitoring and scanning
[Configure Windows Defender Antivirus scanning options](configure-advanced-scan-types-windows-defender-antivirus.md) | You can configure Windows Defender Antivirus to include certain types of email storage files, back-up or reparse points, and archived files (such as .zip files) in scans. You can also enable network file scanning
[Configure remediation for scans](configure-remediation-windows-defender-antivirus.md) | Configure what Windows Defender Antivirus should do when it detects a threat, and how long quarantined files should be retained in the quarantine folder
[Configure scheduled scans](scheduled-catch-up-scans-windows-defender-antivirus.md) | Set up recurring (scheduled) scans, including when they should run and whether they run as full or quick scans
[Configure and run scans](run-scan-windows-defender-antivirus.md) | Run and configure on-demand scans using PowerShell, Windows Management Instrumentation, or individually on endpoints with the Windows Security app
[Review scan results](review-scan-results-windows-defender-antivirus.md) | Review the results of scans using  System Center Configuration Manager, Microsoft Intune, or the Windows Security app
