---
title: Use attack surface reduction rules in Windows 10 Enterprise E3
description: Attack surface reduction rules can help prevent exploits from using apps and scripts to infect machines with malware
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

Attack surface reduction rules help prevent actions and apps that are typically used by exploit-seeking malware to infect machines. Attack surface reduction includes the rules, monitoring, reporting, and analytics necessary for deployment, and this is included in [Microsoft Defender Advanced Threat Protection](../microsoft-defender-atp/microsoft-defender-advanced-threat-protection.md). These capabilities require the Windows 10 Enterprise E5 license. However, a limited subset of basic attack surface reduction rules can be used with Windows 10 Enterprise E3 (without the benefits of reporting, monitoring, and analytics). The table below lists attack surface reduction rules available in Windows E3 and Windows E5.

|Rule |Windows E3 |Windows E5 |
|--|--|--|
[Block executable content from email client and webmail](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-executable-content-from-email-client-and-webmail) |Yes |Yes |
|[Block all Office applications from creating child processes](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-all-office-applications-from-creating-child-processes) |Yes |Yes |
|[Block Office applications from creating executable content](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-office-applications-from-creating-executable-content) |Yes |Yes |
|[Block Office applications from injecting code into other processes](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-office-applications-from-injecting-code-into-other-processes) |Yes |Yes |
|[Block JavaScript or VBScript from launching downloaded executable content](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-javascript-or-vbscript-from-launching-downloaded-executable-content) |Yes |Yes |
|[Block execution of potentially obfuscated scripts](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-execution-of-potentially-obfuscated-scripts) |Yes |Yes |
|[Block Win32 API calls from Office macros](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-win32-api-calls-from-office-macros) |Yes |Yes |
|[Block executable files from running unless they meet a prevalence, age, or trusted list criterion](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-executable-files-from-running-unless-they-meet-a-prevalence-age-or-trusted-list-criterion) | |Yes |
|[Use advanced protection against ransomware](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#use-advanced-protection-against-ransomware) |Yes |Yes |
|[Block credential stealing from the Windows local security authority subsystem (lsass.exe)](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-credential-stealing-from-the-windows-local-security-authority-subsystem) |Yes |Yes |
|[Block process creations originating from PSExec and WMI commands](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-process-creations-originating-from-psexec-and-wmi-commands) |Yes |Yes |
|[Block untrusted and unsigned processes that run from USB](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-untrusted-and-unsigned-processes-that-run-from-usb) |Yes |Yes |
|[Block Office communication applications from creating child processes](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-office-communication-application-from-creating-child-processes) | |Yes |
|[Block Adobe Reader from creating child processes](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-adobe-reader-from-creating-child-processes) | |Yes |
|[Block persistence through WMI event subscription](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/attack-surface-reduction#block-persistence-through-wmi-event-subscription) | |Yes |

Attack surface reduction rules are supported on Windows Server 2019 as well as Windows 10 clients.

 ## Related articles
- [Attack surface reduction rules](attack-surface-reduction.md)
- [Evaluate attack surface reduction rules](evaluate-attack-surface-reduction.md)
- [Enable attack surface reduction rules](enable-attack-surface-reduction.md)
- [Customize attack surface reduction rules](customize-attack-surface-reduction.md)
