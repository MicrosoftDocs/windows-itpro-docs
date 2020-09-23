---
title: Use attack surface reduction rules to prevent malware infection
description: Attack surface reduction rules can help prevent exploits from using apps and scripts to infect devices with malware.
keywords: Attack surface reduction rules, asr, hips, host intrusion prevention system, protection rules, anti-exploit, antiexploit, exploit, infection prevention, Microsoft Defender Advanced Threat Protection, Microsoft Defender ATP
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: denisebmsft
ms.author: deniseb
ms.reviewer: 
manager: dansimp
ms.custom: asr
---

# Reduce attack surfaces with attack surface reduction rules

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

* [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Your attack surface is the total number of places where an attacker could compromise your organization's devices or networks. Reducing your attack surface means offering attackers fewer ways to perform attacks.

Attack surface reduction rules target software behaviors that are often abused by attackers, such as:

- Launching executable files and scripts that attempt to download or run files
- Running obfuscated or otherwise suspicious scripts
- Performing behaviors that apps don't usually initiate during normal day-to-day work

Such behaviors are sometimes seen in legitimate applications; however, they are considered risky because they are commonly abused by malware. Attack surface reduction rules can constrain these kinds of risky behaviors and help keep your organization safe.

Use [audit mode](audit-windows-defender.md) to evaluate how attack surface reduction rules would impact your organization if they were enabled. It's best to run all rules in audit mode first so you can understand their impact on your line-of-business applications. Many line-of-business applications are written with limited security concerns, and they may perform tasks in ways that seem similar to malware. By monitoring audit data and [adding exclusions](enable-attack-surface-reduction.md#exclude-files-and-folders-from-asr-rules) for necessary applications, you can deploy attack surface reduction rules without impacting productivity.

Whenever a rule is triggered, a notification will be displayed on the device. You can [customize the notification](customize-attack-surface-reduction.md#customize-the-notification) with your company details and contact information. The notification also displays within the Microsoft Defender Security Center and the Microsoft 365 security center.

For more information about configuring attack surface reduction rules, see [Enable attack surface reduction rules](enable-attack-surface-reduction.md).

## Attack surface reduction features across Windows versions

You can set attack surface reduction rules for devices running any of the following editions and versions of Windows:
- Windows 10 Pro, [version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) or later
- Windows 10 Enterprise, [version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) or later
- Windows Server, [version 1803 (Semi-Annual Channel)](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1803) or later
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)

To use the entire feature-set of attack surface reduction rules, you need a [Windows 10 Enterprise license](https://www.microsoft.com/licensing/product-licensing/windows10). With a [Windows E5 license](https://docs.microsoft.com/windows/deployment/deploy-enterprise-licenses), you get advanced management capabilities including monitoring, analytics, and workflows available in [Microsoft Defender Advanced Threat Protection](microsoft-defender-advanced-threat-protection.md), as well as reporting and configuration capabilities in the [Microsoft 365 security center](https://docs.microsoft.com/microsoft-365/security/mtp/overview-security-center). These advanced capabilities aren't available with an E3 license, but you can still use Event Viewer to review attack surface reduction rule events.

## Review attack surface reduction events in the Microsoft Defender Security Center

Microsoft Defender ATP provides detailed reporting for events and blocks, as part of its alert investigation scenarios.

You can query Microsoft Defender ATP data by using [advanced hunting](advanced-hunting-query-language.md). If you're running [audit mode](audit-windows-defender.md), you can use advanced hunting to understand how attack surface reduction rules could affect your environment.

Here is an example query:

```kusto
DeviceEvents
| where ActionType startswith 'Asr'
```

## Review attack surface reduction events in Windows Event Viewer

You can review the Windows event log to view events generated by attack surface reduction rules:

1. Download the [Evaluation Package](https://aka.ms/mp7z2w) and extract the file *cfa-events.xml* to an easily accessible location on the device.

2. Enter the words, *Event Viewer*, into the Start menu to open the Windows Event Viewer.

3. Under **Actions**, select **Import custom view...**.

4. Select the file *cfa-events.xml* from where it was extracted. Alternatively, [copy the XML directly](event-views.md).

5. Select **OK**.

This will create a custom view that filters events to only show the following, all of which are related to controlled folder access:

|Event ID | Description |
|---|---|
|5007 | Event when settings are changed |
|1121 | Event when rule fires in Block-mode |
|1122 | Event when rule fires in Audit-mode |

The "engine version" listed for attack surface reduction events in the event log, is generated by Microsoft Defender ATP, not by the operating system. Microsoft Defender ATP is integrated with Windows 10, so this feature works on all devices with Windows 10 installed.

## Attack surface reduction rules

The following sections describe each of the 15 attack surface reduction rules. This table shows their corresponding GUIDs, which you use if you're configuring the rules with Group Policy or PowerShell. If you use Microsoft Endpoint Configuration Manager or Microsoft Intune, you do not need the GUIDs:

| Rule name | GUID | File & folder exclusions | Minimum OS supported |
|-----|----|---|---|
|[Block executable content from email client and webmail](#block-executable-content-from-email-client-and-webmail) | `BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block all Office applications from creating child processes](#block-all-office-applications-from-creating-child-processes) | `D4F940AB-401B-4EFC-AADC-AD5F3C50688A` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block Office applications from creating executable content](#block-office-applications-from-creating-executable-content) | `3B576869-A4EC-4529-8536-B80A7769E899` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block Office applications from injecting code into other processes](#block-office-applications-from-injecting-code-into-other-processes) | `75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block JavaScript or VBScript from launching downloaded executable content](#block-javascript-or-vbscript-from-launching-downloaded-executable-content) | `D3E037E1-3EB8-44C8-A917-57927947596D` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block execution of potentially obfuscated scripts](#block-execution-of-potentially-obfuscated-scripts) | `5BEB7EFE-FD9A-4556-801D-275E5FFC04CC` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block Win32 API calls from Office macros](#block-win32-api-calls-from-office-macros) | `92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block executable files from running unless they meet a prevalence, age, or trusted list criterion](#block-executable-files-from-running-unless-they-meet-a-prevalence-age-or-trusted-list-criterion) | `01443614-cd74-433a-b99e-2ecdc07bfc25` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Use advanced protection against ransomware](#use-advanced-protection-against-ransomware) | `c1db55ab-c21a-4637-bb3f-a12568109d35` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block credential stealing from the Windows local security authority subsystem (lsass.exe)](#block-credential-stealing-from-the-windows-local-security-authority-subsystem) | `9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block process creations originating from PSExec and WMI commands](#block-process-creations-originating-from-psexec-and-wmi-commands) | `d1e49aac-8f56-4280-b9ba-993a6d77406c` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block untrusted and unsigned processes that run from USB](#block-untrusted-and-unsigned-processes-that-run-from-usb) | `b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block Office communication application from creating child processes](#block-office-communication-application-from-creating-child-processes) | `26190899-1602-49e8-8b27-eb1d0a1ce869` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block Adobe Reader from creating child processes](#block-adobe-reader-from-creating-child-processes) | `7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c` | Supported | [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709) (RS3, build 16299) or greater |
|[Block persistence through WMI event subscription](#block-persistence-through-wmi-event-subscription) | `e6db77e5-3df2-4cf1-b95a-636979351e5b` | Not supported | [Windows 10, version 1903](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1903) (build 18362) or greater |

### Block executable content from email client and webmail

This rule blocks the following file types from launching from email opened within the Microsoft Outlook application, or Outlook.com and other popular webmail providers:

- Executable files (such as .exe, .dll, or .scr)
- Script files (such as a PowerShell .ps, Visual Basic .vbs, or JavaScript .js file)

This rule was introduced in: 
- [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Microsoft Endpoint Configuration Manager CB 1710](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: Execution of executable content (exe, dll, ps, js, vbs, etc.) dropped from email (webmail/mail client) (no exceptions)

Microsoft Endpoint Configuration Manager name: Block executable content from email client and webmail

GUID: `BE9BA2D9-53EA-4CDC-84E5-9B1EEEE46550`

### Block all Office applications from creating child processes

This rule blocks Office apps from creating child processes. This includes Word, Excel, PowerPoint, OneNote, and Access.

Creating malicious child processes is a common malware strategy. Malware that abuse Office as a vector often run VBA macros and exploit code to download and attempt to run additional payloads. However, some legitimate line-of-business applications might also generate child processes for benign purposes, such as spawning a command prompt or using PowerShell to configure registry settings.

This rule was introduced in: 
- [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: Office apps launching child processes

Configuration Manager name: Block Office application from creating child processes

GUID: `D4F940AB-401B-4EFC-AADC-AD5F3C50688A`

### Block Office applications from creating executable content

This rule prevents Office apps, including Word, Excel, and PowerPoint, from creating potentially malicious executable content, by blocking malicious code from being written to disk.

 Malware that abuses Office as a vector may attempt to break out of Office and save malicious components to disk. These malicious components would survive a computer reboot and persist on the system. Therefore, this rule defends against a common persistence technique.

This rule was introduced in: 
- [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [System Center Configuration Manager](https://docs.microsoft.com/configmgr/core/servers/manage/updates) (SCCM) CB 1710 (SCCM is now Microsoft Endpoint Configuration Manager)

Intune name: Office apps/macros creating executable content

SCCM name: Block Office applications from creating executable content

GUID: `3B576869-A4EC-4529-8536-B80A7769E899`

### Block Office applications from injecting code into other processes

This rule blocks code injection attempts from Office apps into other processes.

Attackers might attempt to use Office apps to migrate malicious code into other processes through code injection, so the code can masquerade as a clean process.

There are no known legitimate business purposes for using code injection.

This rule applies to Word, Excel, and PowerPoint.

This rule was introduced in: 
- [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: Office apps injecting code into other processes (no exceptions)

Configuration Manager name: Block Office applications from injecting code into other processes

GUID: `75668C1F-73B5-4CF0-BB93-3ECF5CB7CC84`

### Block JavaScript or VBScript from launching downloaded executable content

This rule prevents scripts from launching potentially malicious downloaded content. Malware written in JavaScript or VBScript often acts as a downloader to fetch and launch other malware from the Internet.

Although not common, line-of-business applications sometimes use scripts to download and launch installers.

This rule was introduced in:  
- [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: js/vbs executing payload downloaded from Internet (no exceptions)

Configuration Manager name: Block JavaScript or VBScript from launching downloaded executable content

GUID: `D3E037E1-3EB8-44C8-A917-57927947596D`

### Block execution of potentially obfuscated scripts

This rule detects suspicious properties within an obfuscated script.

Script obfuscation is a common technique that both malware authors and legitimate applications use to hide intellectual property or decrease script loading times. Malware authors also use obfuscation to make malicious code harder to read, which prevents close scrutiny by humans and security software.

This rule was introduced in:
- [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: Obfuscated js/vbs/ps/macro code

Configuration Manager name: Block execution of potentially obfuscated scripts.

GUID: `5BEB7EFE-FD9A-4556-801D-275E5FFC04CC`

### Block Win32 API calls from Office macros

This rule prevents VBA macros from calling Win32 APIs.

Office VBA provides the ability to make Win32 API calls. Malware can abuse this capability, such as [calling Win32 APIs to launch malicious shellcode](https://www.microsoft.com/security/blog/2018/09/12/office-vba-amsi-parting-the-veil-on-malicious-macros/) without writing anything directly to disk. Most organizations don't rely on the ability to call Win32 APIs in their day-to-day functioning, even if they use macros in other ways.

This rule was introduced in:
- [Windows 10, version 1709](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1709)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1710](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: Win32 imports from Office macro code

Configuration Manager name: Block Win32 API calls from Office macros

GUID: `92E97FA1-2EDF-4476-BDD6-9DD0B4DDDC7B`

### Block executable files from running unless they meet a prevalence, age, or trusted list criterion

This rule blocks the following file types from launching unless they meet prevalence or age criteria, or they're in a trusted list or an exclusion list:

- Executable files (such as .exe, .dll, or .scr)

Launching untrusted or unknown executable files can be risky, as it may not be initially clear if the files are malicious.

> [!IMPORTANT]
> You must [enable cloud-delivered protection](../microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus.md) to use this rule. <br/><br/> The rule **Block executable files from running unless they meet a prevalence, age, or trusted list criterion** with GUID 01443614-cd74-433a-b99e-2ecdc07bfc25 is owned by Microsoft and is not specified by admins. It uses cloud-delivered protection to update its trusted list regularly.
>
>You can specify individual files or folders (using folder paths or fully qualified resource names) but you can't specify which rules or exclusions apply to.

This rule was introduced in: 
- [Windows 10, version 1803](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1802](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: Executables that don't meet a prevalence, age, or trusted list criteria.

Configuration Manager name: Block executable files from running unless they meet a prevalence, age, or trusted list criteria

GUID: `01443614-cd74-433a-b99e-2ecdc07bfc25`

### Use advanced protection against ransomware

This rule provides an extra layer of protection against ransomware. It scans executable files entering the system to determine whether they're trustworthy. If the files closely resemble ransomware, this rule blocks them from running, unless they're in a trusted list or an exclusion list.

> [!NOTE]
> You must [enable cloud-delivered protection](../microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus.md) to use this rule.

This rule was introduced in: 
- [Windows 10, version 1803](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1802](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: Advanced ransomware protection

Configuration Manager name: Use advanced protection against ransomware

GUID: `c1db55ab-c21a-4637-bb3f-a12568109d35`

### Block credential stealing from the Windows local security authority subsystem

This rule helps prevent credential stealing, by locking down Local Security Authority Subsystem Service (LSASS).

LSASS authenticates users who log in to a Windows computer. Microsoft Defender Credential Guard in Windows 10 normally prevents attempts to extract credentials from LSASS. However, some organizations can't enable Credential Guard on all of their computers because of compatibility issues with custom smartcard drivers or other programs that load into the Local Security Authority (LSA). In these cases, attackers can use hack tools like Mimikatz to scrape cleartext passwords and NTLM hashes from LSASS.

> [!NOTE]
> In some apps, the code enumerates all running processes and attempts to open them with exhaustive permissions. This rule denies the app's process open action and logs the details to the security event log. This rule can generate a lot of noise. If you have an app that simply enumerates LSASS, but has no real impact in functionality, there is NO need to add it to the exclusion list. By itself, this event log entry doesn't necessarily indicate a malicious threat.

This rule was introduced in:
- [Windows 10, version 1803](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1802](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: Flag credential stealing from the Windows local security authority subsystem

Configuration Manager name: Block credential stealing from the Windows local security authority subsystem

GUID: `9e6c4e1f-7d60-472f-ba1a-a39ef669e4b2`

### Block process creations originating from PSExec and WMI commands

This rule blocks processes created through [PsExec](https://docs.microsoft.com/sysinternals/downloads/psexec) and [WMI](https://docs.microsoft.com/windows/win32/wmisdk/about-wmi) from running. Both PsExec and WMI can remotely execute code, so there is a risk of malware abusing this functionality for command and control purposes, or to spread an infection throughout an organization's network.

> [!WARNING]
> Only use this rule if you're managing your devices with [Intune](https://docs.microsoft.com/intune) or another MDM solution. This rule is incompatible with management through [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/configmgr) because this rule blocks WMI commands the Configuration Manager client uses to function correctly.

This rule was introduced in: 
- [Windows 10, version 1803](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)

Intune name: Process creation from PSExec and WMI commands

Configuration Manager name: Not applicable

GUID: `d1e49aac-8f56-4280-b9ba-993a6d77406c`

### Block untrusted and unsigned processes that run from USB

With this rule, admins can prevent unsigned or untrusted executable files from running from USB removable drives, including SD cards. Blocked file types include:

* Executable files (such as .exe, .dll, or .scr)
* Script files (such as a PowerShell .ps, Visual Basic .vbs, or JavaScript .js file)

This rule was introduced in: 
- [Windows 10, version 1803](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1803)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)
- [Configuration Manager CB 1802](https://docs.microsoft.com/configmgr/core/servers/manage/updates)

Intune name: Untrusted and unsigned processes that run from USB

Configuration Manager name: Block untrusted and unsigned processes that run from USB

GUID: `b2b3f03d-6a65-4f7b-a9c7-1c7ef74a9ba4`

### Block Office communication application from creating child processes

This rule prevents Outlook from creating child processes, while still allowing legitimate Outlook functions.

This protects against social engineering attacks and prevents exploit code from abusing vulnerabilities in Outlook. It also protects against [Outlook rules and forms exploits](https://blogs.technet.microsoft.com/office365security/defending-against-rules-and-forms-injection/) that attackers can use when a user's credentials are compromised.

> [!NOTE]
> This rule applies to Outlook and Outlook.com only.

This rule was introduced in: 
- [Windows 10, version 1809](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1809)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)

Intune name: Process creation from Office communication products (beta)

Configuration Manager name: Not yet available

GUID: `26190899-1602-49e8-8b27-eb1d0a1ce869`

### Block Adobe Reader from creating child processes

This rule prevents attacks by blocking Adobe Reader from creating additional processes.

Through social engineering or exploits, malware can download and launch additional payloads and break out of Adobe Reader. By blocking child processes from being generated by Adobe Reader, malware attempting to use it as a vector are prevented from spreading.

This rule was introduced in: 
- [Windows 10, version 1809](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1809)
- [Windows Server, version 1809](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server-1809)
- [Windows Server 2019](https://docs.microsoft.com/windows-server/get-started-19/whats-new-19)

Intune name: Process creation from Adobe Reader (beta)

Configuration Manager name: Not yet available

GUID: `7674ba52-37eb-4a4f-a9a1-f0f9a1619a2c`

### Block persistence through WMI event subscription

This rule prevents malware from abusing WMI to attain persistence on a device.

> [!IMPORTANT]
> File and folder exclusions don't apply to this attack surface reduction rule.

Fileless threats employ various tactics to stay hidden, to avoid being seen in the file system, and to gain periodic execution control. Some threats can abuse the WMI repository and event model to stay hidden.

This rule was introduced in: 
- [Windows 10, version 1903](https://docs.microsoft.com/windows/whats-new/whats-new-windows-10-version-1903)
- [Windows Server 1903](https://docs.microsoft.com/windows-server/get-started-19/whats-new-in-windows-server-1903-1909)

Intune name: Not yet available

Configuration Manager name: Not yet available

GUID: `e6db77e5-3df2-4cf1-b95a-636979351e5b`

## Related topics

- [Attack surface reduction FAQ](attack-surface-reduction-faq.md)

- [Enable attack surface reduction rules](enable-attack-surface-reduction.md)

- [Evaluate attack surface reduction rules](evaluate-attack-surface-reduction.md)

- [Compatibility of Microsoft Defender with other antivirus/antimalware](../microsoft-defender-antivirus/microsoft-defender-antivirus-compatibility.md)
