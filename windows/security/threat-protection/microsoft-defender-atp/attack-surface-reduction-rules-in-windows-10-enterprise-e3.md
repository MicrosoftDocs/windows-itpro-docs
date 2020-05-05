---
title: Use attack surface reduction rules in Windows 10 Enterprise E3
description: ASR rules can help prevent exploits from using apps and scripts to infect machines with malware
keywords: Attack surface reduction, hips, host intrusion prevention system, protection rules, anti-exploit, antiexploit, exploit, infection prevention
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.reviewer: 
manager: dansimp
ms.custom: asr
---

# Use attack surface reduction rules in Windows 10 Enterprise E3

**Applies to:**

- Windows 10 Enterprise E5
- Windows 10 Enterprise E3

Attack surface reduction rules help prevent actions and apps that are typically used by exploit-seeking malware to infect machines. This feature area includes the rules, monitoring, reporting, and analytics necessary for deployment that are included in [Microsoft Defender Advanced Threat Protection](../microsoft-defender-atp/microsoft-defender-advanced-threat-protection.md), and require the Windows 10 Enterprise E5 license. 

A limited subset of basic attack surface reduction rules can technically be used with Windows 10 Enterprise E3. They can be used without the benefits of reporting, monitoring, and analytics, which provide the ease of deployment and management capabilities necessary for enterprises. 

Attack surface reduction rules are supported on Windows Server 2019 as well as Windows 10 clients.

|Rule |Windows E3 |Windows E5 |
|--|--|--|
[Block executable content from email client and webmail](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-executable-content-from-email-client-and-webmail) |Yes |Yes |
|[Block all Office applications from creating child processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-all-office-applications-from-creating-child-processes) |Yes |Yes |
|[Block Office applications from creating executable content](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-office-applications-from-creating-executable-content) |Yes |Yes |
|[Block Office applications from injecting code into other processes](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-office-applications-from-injecting-code-into-other-processes) |Yes |Yes |
|[Block JavaScript or VBScript from launching downloaded executable content](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-javascript-or-vbscript-from-launching-downloaded-executable-content) |Yes |Yes |
|[Block execution of potentially obfuscated scripts](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-execution-of-potentially-obfuscated-scripts) |Yes |Yes |
|[Block Win32 API calls from Office macros](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-win32-api-calls-from-office-macros) |Yes |Yes |
|[Block executable files from running unless they meet a prevalence, age, or trusted list criterion](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-executable-files-from-running-unless-they-meet-a-prevalence-age-or-trusted-list-criterion) | | |
|[Use advanced protection against ransomware](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#use-advanced-protection-against-ransomware) | | |
|[Block credential stealing from the Windows local security authority subsystem (lsass.exe)](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-credential-stealing-from-the-windows-local-security-authority-subsystem) | | |
|[Block untrusted and unsigned processes that run from USB](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-untrusted-and-unsigned-processes-that-run-from-usb) | | |
|Block process creations originating from PSExec and WMI commands | | |
| Block untrusted and unsigned processes that run from USB | | |

For more information about these rules, see [Reduce attack surfaces with attack surface reduction rules](attack-surface-reduction.md).

 ## Related topics

Topic | Description 
---|---
[Evaluate attack surface reduction rules](evaluate-attack-surface-reduction.md) | Use a tool to see a number of scenarios that demonstrate how attack surface reduction rules work, and what events would typically be created.
[Enable attack surface reduction rules](enable-attack-surface-reduction.md) | Use Group Policy, PowerShell, or MDM CSPs to enable and manage attack surface reduction rules in your network.
[Customize attack surface reduction rules](customize-attack-surface-reduction.md) | Exclude specified files and folders from being evaluated by attack surface reduction rules and customize the notification that appears on a user's machine when a rule blocks an app or file. 
