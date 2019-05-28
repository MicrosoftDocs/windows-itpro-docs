---
title: Resolve Windows 10 upgrade errors - Windows IT Pro
description: Resolve Windows 10 upgrade errors for ITPros. Technical information for IT professionals to help diagnose Windows setup errors.
keywords: deploy, error, troubleshoot, windows, 10, upgrade, code, rollback, ITPro
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.localizationpriority: medium
ms.topic: article
---

# Resolve Windows 10 upgrade errors : Technical information for IT Pros

**Applies to**
-   Windows 10

>[!IMPORTANT]
>This article contains technical instructions for IT administrators. If you are not an IT administrator, try some of the [quick fixes](quick-fixes.md) described in this article then contact [Microsoft Support](https://support.microsoft.com/contactus/) starting with the Virtual Agent. To talk to a person about your issue, click **Get started** to interact with the Virtual Agent, then enter "Talk to a person" two times. The Virtual Agent can also help you to resolve many Windows upgrade issues. Also see: [Get help with Windows 10 upgrade and installation errors](https://support.microsoft.com/help/10587/windows-10-get-help-with-upgrade-installation-errors) and [Submit Windows 10 upgrade errors using Feedback Hub](submit-errors.md).

This article contains a brief introduction to Windows 10 installation processes, and provides resolution procedures that IT administrators can use to resolve issues with Windows 10 upgrade. 

The article was originally one page, but has been divided into sub-topics of different technical levels. Basic level provides common procedures that can resolve several types of upgrade errors. Advanced level requires some experience with detailed troubleshooting methods.

The following four levels are assigned:

Level 100: Basic <br>
Level 200: Moderate <br>
Level 300: Moderate advanced <br>
Level 400: Advanced <br>

## In this guide

See the following topics in this article:

- [Quick fixes](quick-fixes.md): \Level 100\ Steps you can take to eliminate many Windows upgrade errors.<br>
- [SetupDiag](setupdiag.md): \Level 300\ SetupDiag is a new tool to help you isolate the root cause of an upgrade failure.
- [Troubleshooting upgrade errors](troubleshoot-upgrade-errors.md): \Level 300\ General advice and techniques for troubleshooting Windows 10 upgrade errors, and an explanation of phases used during the upgrade process.<br>
- [Windows Error Reporting](windows-error-reporting.md): \Level 300\ How to use Event Viewer to review details about a Windows 10 upgrade.
- [Upgrade error codes](upgrade-error-codes.md): \Level 400\ The components of an error code are explained.
    - [Result codes](upgrade-error-codes.md#result-codes): Information about result codes.
    - [Extend codes](upgrade-error-codes.md#extend-codes): Information about extend codes.
- [Log files](log-files.md): \Level 400\ A list and description of log files useful for troubleshooting.
    - [Log entry structure](log-files.md#log-entry-structure): The format of a log entry is described.
    - [Analyze log files](log-files.md#analyze-log-files): General procedures for log file analysis, and an example.
- [Resolution procedures](resolution-procedures.md): \Level 200\ Causes and mitigation procedures associated with specific error codes.
    - [0xC1900101](resolution-procedures.md#0xc1900101): Information about the 0xC1900101 result code.
    - [0x800xxxxx](resolution-procedures.md#0x800xxxxx): Information about result codes that start with 0x800.
    - [Other result codes](resolution-procedures.md#other-result-codes): Additional causes and mitigation procedures are provided for some result codes.
    - [Other error codes](resolution-procedures.md#other-error-codes): Additional causes and mitigation procedures are provided for some error codes.
- [Submit Windows 10 upgrade errors](submit-errors.md): \Level 100\ Submit upgrade errors to Microsoft for analysis.

## Related topics

[Windows 10 FAQ for IT professionals](https://technet.microsoft.com/windows/dn798755.aspx)
<br>[Windows 10 Enterprise system requirements](https://technet.microsoft.com/windows/dn798752.aspx)
<br>[Windows 10 Specifications](https://www.microsoft.com/en-us/windows/Windows-10-specifications)
<br>[Windows 10 IT pro forums](https://social.technet.microsoft.com/Forums/en-US/home?category=Windows10ITPro)
<br>[Fix Windows Update errors by using the DISM or System Update Readiness tool](https://support.microsoft.com/kb/947821)
<br>