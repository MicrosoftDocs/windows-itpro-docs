---
title: Resolve Windows upgrade errors - Windows IT Pro
manager: aaroncz
ms.author: frankroj
description: Resolve Windows upgrade errors for ITPros. Technical information for IT professionals to help diagnose Windows setup errors.
author: frankroj
ms.localizationpriority: medium
ms.topic: conceptual
ms.service: windows-client
ms.subservice: itpro-deploy
ms.date: 01/18/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Resolve Windows upgrade errors: Technical information for IT Pros

> [!IMPORTANT]
>
> This article contains technical instructions for IT administrators. The article isn't intended for non-IT administrators such as home or consumer users.

This article contains a brief introduction to the Windows installation processes, and provides resolution procedures that IT administrators can use to resolve issues with a Windows upgrade.

The article is divided into subtopics of different technical levels. Basic level provides common procedures that can resolve several types of upgrade errors. Advanced level requires some experience with detailed troubleshooting methods.

The following four levels are assigned:

- Level 100: Basic
- Level 200: Moderate
- Level 300: Moderate advanced
- Level 400: Advanced

## In this guide

See the following articles in this section:

- [Quick fixes](/troubleshoot/windows-client/deployment/windows-10-upgrade-quick-fixes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json): \Level 100\ Steps to take to eliminate many Windows upgrade errors.
- [SetupDiag](setupdiag.md): \Level 300\ SetupDiag is a new tool to help isolate the root cause of an upgrade failure.
- [Troubleshooting upgrade errors](/troubleshoot/windows-client/deployment/windows-10-upgrade-issues-troubleshooting?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json): \Level 300\ General advice and techniques for troubleshooting Windows upgrade errors, and an explanation of phases used during the upgrade process.
- [Windows Error Reporting](windows-error-reporting.md): \Level 300\ How to use Event Viewer to review details about a Windows upgrade.
- [Upgrade error codes](/troubleshoot/windows-client/deployment/windows-10-upgrade-error-codes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json): \Level 400\ The components of an error code are explained.
  - [Result codes](/troubleshoot/windows-client/deployment/windows-10-upgrade-error-codes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#result-codes): Information about result codes.
  - [Extend codes](/troubleshoot/windows-client/deployment/windows-10-upgrade-error-codes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#extend-codes): Information about extend codes.
- [Log files](log-files.md): \Level 400\ A list and description of log files useful for troubleshooting.
  - [Log entry structure](log-files.md#log-entry-structure): The format of a log entry is described.
  - [Analyze log files](log-files.md#analyze-log-files): General procedures for log file analysis, and an example.
- [Resolution procedures](/troubleshoot/windows-client/deployment/windows-10-upgrade-resolution-procedures?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json): \Level 200\ Causes and mitigation procedures associated with specific error codes.
  - [0xC1900101](/troubleshoot/windows-client/deployment/windows-10-upgrade-resolution-procedures?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#0xc1900101): Information about the 0xC1900101 result code.
  - [0x800xxxxx](/troubleshoot/windows-client/deployment/windows-10-upgrade-resolution-procedures?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#0x800xxxxx): Information about result codes that start with 0x800.
  - [Other result codes](/troubleshoot/windows-client/deployment/windows-10-upgrade-resolution-procedures?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#other-result-codes): Additional causes and mitigation procedures are provided for some result codes.
  - [Other error codes](/troubleshoot/windows-client/deployment/windows-10-upgrade-resolution-procedures?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json#other-error-codes): Additional causes and mitigation procedures are provided for some error codes.
- [Submit Windows upgrade errors](submit-errors.md): \Level 100\ Submit upgrade errors to Microsoft for analysis.

## Related articles

- [Fix Windows Update errors by using the DISM or System Update Readiness tool](/troubleshoot/windows-server/deployment/fix-windows-update-errors).
