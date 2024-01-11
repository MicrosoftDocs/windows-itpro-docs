---
title: Resolve Windows upgrade errors - Windows IT Pro
manager: aaroncz
ms.author: frankroj
description: Resolve Windows upgrade errors for ITPros. Technical information for IT professionals to help diagnose Windows setup errors.
author: frankroj
ms.localizationpriority: medium
ms.topic: article
ms.service: windows-client
ms.subservice: itpro-deploy
ms.date: 01/10/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Resolve Windows upgrade errors: Technical information for IT Pros

>[!IMPORTANT]
>
>This article contains technical instructions for IT administrators. If you are not an IT administrator, try some of the [quick fixes](/troubleshoot/windows-client/deployment/windows-10-upgrade-quick-fixes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json) described in this article then contact [Microsoft Support](https://support.microsoft.com/contactus/) starting with the Virtual Agent. To talk to a person about your issue, click **Get started** to interact with the Virtual Agent, then enter "Talk to a person" two times. The Virtual Agent can also help you to resolve many Windows upgrade issues. Also see: [Get help with Windows 10 upgrade and installation errors](https://support.microsoft.com/help/10587/windows-10-get-help-with-upgrade-installation-errors) and [Submit Windows 10 upgrade errors using Feedback Hub](submit-errors.md).

This article contains a brief introduction to the Windows installation processes, and provides resolution procedures that IT administrators can use to resolve issues with a Windows upgrade.

The article has been divided into subtopics of different technical levels. Basic level provides common procedures that can resolve several types of upgrade errors. Advanced level requires some experience with detailed troubleshooting methods.

The following four levels are assigned:

- Level 100: Basic
- Level 200: Moderate
- Level 300: Moderate advanced
- Level 400: Advanced

## In this guide

See the following topics in this article:

- [Quick fixes](/troubleshoot/windows-client/deployment/windows-10-upgrade-quick-fixes?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json): \Level 100\ Steps you can take to eliminate many Windows upgrade errors.<br>
- [SetupDiag](setupdiag.md): \Level 300\ SetupDiag is a new tool to help you isolate the root cause of an upgrade failure.
- [Troubleshooting upgrade errors](/troubleshoot/windows-client/deployment/windows-10-upgrade-issues-troubleshooting?toc=/windows/deployment/toc.json&bc=/windows/deployment/breadcrumb/toc.json): \Level 300\ General advice and techniques for troubleshooting Windows 10 upgrade errors, and an explanation of phases used during the upgrade process.<br>
- [Windows Error Reporting](windows-error-reporting.md): \Level 300\ How to use Event Viewer to review details about a Windows 10 upgrade.
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
- [Submit Windows 10 upgrade errors](submit-errors.md): \Level 100\ Submit upgrade errors to Microsoft for analysis.

## Related articles

- [Windows 10 FAQ for IT professionals](../planning/windows-10-enterprise-faq-itpro.yml).
- [Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752.aspx).
- [Windows 10 Specifications](https://www.microsoft.com/windows/Windows-10-specifications).
- [Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/en-US/home?category=Windows10ITPro).
- [Fix Windows Update errors by using the DISM or System Update Readiness tool](/troubleshoot/windows-server/deployment/fix-windows-update-errors).
