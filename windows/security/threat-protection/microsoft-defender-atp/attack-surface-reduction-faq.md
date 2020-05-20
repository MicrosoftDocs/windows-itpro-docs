---
title: Attack surface reduction frequently asked questions (FAQ)
description: Find answers to frequently asked questions about Microsoft Defender ATP's attack surface reduction rules.
keywords: Attack surface reduction rules, asr, hips, host intrusion prevention system, protection rules, anti-exploit, antiexploit, exploit, infection prevention, Microsoft Defender Advanced Threat Protection, Microsoft Defender ATP
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
author: martyav
ms.author: v-maave
ms.reviewer: 
manager: dansimp
ms.custom: asr
---

# Attack surface reduction frequently asked questions (FAQ)

**Applies to:**

* [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

## Is attack surface reduction (ASR) part of Windows?

ASR was originally a feature of the suite of exploit guard features introduced as a major update to Microsoft Defender Antivirus, in Windows 10 version 1709. Microsoft Defender Antivirus is the native antimalware component of Windows. However, the full ASR feature-set is only available with a Windows enterprise license. Also note that ASR rule exclusions are managed separately from Microsoft Defender Antivirus exclusions.

## Do I need to have an enterprise license to run ASR rules?

The full set of ASR rules and features is only supported if you have an enterprise license for Windows 10. A limited number of rules may work without an enterprise license. If you have Microsoft 365 Business, set Microsoft Defender Antivirus as your primary security solution, and enable the rules through PowerShell. However, ASR usage without an enterprise license is not officially supported and the full capabilities of ASR will not be available.

To learn more about Windows licensing, see [Windows 10 Licensing](https://www.microsoft.com/licensing/product-licensing/windows10?activetab=windows10-pivot:primaryr5) and get the [Volume Licensing guide for Windows 10](https://download.microsoft.com/download/2/D/1/2D14FE17-66C2-4D4C-AF73-E122930B60F6/Windows-10-Volume-Licensing-Guide.pdf).

## Is ASR supported if I have an E3 license?

Yes. ASR is supported for Windows Enterprise E3 and above. 

## Which features are supported with an E5 license?

All of the rules supported with E3 are also supported with E5.

E5 also added greater integration with Microsoft Defender ATP. With E5, you can [use Microsoft Defender ATP to monitor and review analytics](https://docs.microsoft.com/microsoft-365/security/mtp/monitor-devices?view=o365-worldwide#monitor-and-manage-asr-rule-deployment-and-detections) on alerts in real-time, fine-tune rule exclusions, configure ASR rules, and view lists of event reports.

## What are the currently supported ASR rules?

ASR currently supports all of the rules below:

* [Block executable content from email client and webmail](attack-surface-reduction.md#block-executable-content-from-email-client-and-webmail)
* [Block all Office applications from creating child processes](attack-surface-reduction.md#block-all-office-applications-from-creating-child-processes)
* [Block Office applications from creating executable content](attack-surface-reduction.md#block-office-applications-from-creating-executable-content)
* [Block Office applications from injecting code into other processes](attack-surface-reduction.md#block-office-applications-from-injecting-code-into-other-processes)
* [Block JavaScript or VBScript from launching downloaded executable content](attack-surface-reduction.md##block-javascript-or-vbscript-from-launching-downloaded-executable-content)
* [Block execution of potentially obfuscated scripts](attack-surface-reduction.md#block-execution-of-potentially-obfuscated-scripts)
* [Block Win32 API calls from Office macro](attack-surface-reduction.md#block-win32-api-calls-from-office-macros)
* [Use advanced protection against ransomware](attack-surface-reduction.md#use-advanced-protection-against-ransomware)
* [Block credential stealing from the Windows local security authority subsystem](attack-surface-reduction.md#block-credential-stealing-from-the-windows-local-security-authority-subsystem) (lsass.exe)
* [Block process creations originating from PSExec and WMI commands](attack-surface-reduction.md#block-process-creations-originating-from-psexec-and-wmi-commands)
* [Block untrusted and unsigned processes that run from USB](attack-surface-reduction.md#block-untrusted-and-unsigned-processes-that-run-from-usb)
* [Block executable files from running unless they meet a prevalence, age, or trusted list criteria](attack-surface-reduction.md#block-executable-files-from-running-unless-they-meet-a-prevalence-age-or-trusted-list-criterion)
* [Block Office communication applications from creating child processes](attack-surface-reduction.md#block-office-communication-application-from-creating-child-processes)
* [Block Adobe Reader from creating child processes](attack-surface-reduction.md#block-adobe-reader-from-creating-child-processes)
* [Block persistence through WMI event subscription](attack-surface-reduction.md#block-persistence-through-wmi-event-subscription)

## What are some good recommendations for getting started with ASR?

Test how ASR rules will impact your organization before enabling them by running ASR rules in audit mode for a brief period of time. While you are running the rules in audit mode, you can identify any line-of-business applications that might get blocked erroneously, and exclude them from ASR.

Larger organizations should consider rolling out ASR rules in "rings," by auditing and enabling rules in increasingly broader subsets of devices. You can arrange your organization's devices into rings by using Intune or a Group Policy management tool.

## How long should I test an ASR rule in audit mode before enabling it?

Keep the rule in audit mode for about 30 days to get a good baseline for how the rule will operate once it goes live throughout your organization. During the audit period, you can identify any line-of-business applications that might get blocked by the rule, and configure the rule to exclude them.

## I'm making the switch from a third-party security solution to Microsoft Defender ATP. Is there an "easy" way to export rules from another security solution to ASR?

In most cases, it's easier and better to start with the baseline recommendations suggested by [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/) (Microsoft Defender ATP) than to attempt to import rules from another security solution. Then, use tools such as audit mode, monitoring, and analytics to configure your new solution to suit your unique needs. 

The default configuration for most ASR rules, combined with Microsoft Defender ATP's real-time protection, will protect against a large number of exploits and vulnerabilities.

From within Microsoft Defender ATP, you can update your defenses with custom indicators, to allow and block certain software behaviors. ASR also allows for some customization of rules, in the form of file and folder exclusions. As a general rule, it is best to audit a rule for a period of time, and configure exclusions for any line-of-business applications that might get blocked.

## Does ASR support file or folder exclusions that include system variables and wildcards in the path?

Yes. See [Excluding files and folders from ASR rules](enable-attack-surface-reduction.md#exclude-files-and-folders-from-asr-rules) for more details on excluding files or folders from ASR rules, and [Configure and validate exclusions based on file extension and folder location](../windows-defender-antivirus/configure-extension-file-exclusions-windows-defender-antivirus.md#use-wildcards-in-the-file-name-and-folder-path-or-extension-exclusion-lists) for more on using system variables and wildcards in excluded file paths.

## Do ASR rules cover all applications by default?

It depends on the rule. Most ASR rules cover the behavior of Microsoft Office products and services, such as Word, Excel, PowerPoint, and OneNote, or Outlook. Certain ASR rules, such as *Block execution of potentially obfuscated scripts*, are more general in scope.

## Does ASR support third-party security solutions?

ASR uses Microsoft Defender Antivirus to block applications. It is not possible to configure ASR to use another security solution for blocking at this time.

## I have an E5 license and enabled some ASR rules in conjunction with Microsoft Defender ATP. Is it possible for an ASR event to not show up at all in Microsoft Defender ATP's event timeline?

Whenever a notification is triggered locally by an ASR rule, a report on the event is also sent to the Microsoft Defender ATP portal. If you're having trouble finding the event, you can filter the events timeline using the search box. You can also view ASR events by visiting **Go to attack surface management**, from the **Configuration management** icon in the Security Center taskbar. The attack surface management page includes a tab for report detections, which includes a full list of ASR rule events reported to Microsoft Defender ATP.

## I applied a rule using GPO. Now when I try to check the indexing options for the rule in Microsoft Outlook, I get a message stating, 'Access denied'.

Try opening the indexing options directly from Windows 10.

1. Select the **Search** icon on the Windows taskbar.

1. Enter **Indexing options** into the search box.

## Are the criteria used by the rule, "Block executable files from running unless they meet a prevalence, age, or trusted list criterion," configurable by an admin?

No. The criteria used by this rule are maintained by Microsoft cloud protection, to keep the trusted list constantly up to date with data gathered from around the world. Local admins do not have write access to alter this data. If you are looking to configure this rule to tailor it for your enterprise, you can add certain applications to the exclusions list to prevent the rule from being triggered.

## I enabled the ASR rule, *Block executable files from running unless they meet a prevalence, age, or trusted list criterion*. After some time, I updated a piece of software, and the rule is now blocking it, even though it didn't before. Did something go wrong?

This rule relies upon each application having a known reputation, as measured by prevalence, age, or inclusion on a list of trusted apps. The rule's decision to block or allow an application is ultimately determined by Microsoft cloud protection's assessment of these criteria.

Usually, cloud protection can determine that a new version of an application is similar enough to previous versions that it does not need to be reassessed at length. However, it might take some time for the app to build reputation after switching versions, particularly after a major update. In the meantime, you can add the application to the exclusions list, to prevent this rule from blocking important applications. If you are frequently updating and working with new versions of applications, you may opt instead to run this rule in audit mode.

## I recently enabled the ASR rule, *Block credential stealing from the Windows local security authority subsystem (lsass.exe)*, and I am getting a large number of notifications. What is going on?

A notification generated by this rule does not necessarily indicate malicious activity; however, this rule is still useful for blocking malicious activity, since malware often targets lsass.exe to gain illicit access to accounts. The lsass.exe process stores user credentials in memory after a user has logged in. Windows uses these credentials to validate users and apply local security policies.

Because many legitimate processes throughout a typical day will be calling on lsass.exe for credentials, this rule can be especially noisy. If a known legitimate application causes this rule to generate an excessive number of notifications, you can add it to the exclusion list. Most other ASR rules will generate a relatively smaller number of notifications, in comparison to this one, since calling on lsass.exe is typical of many applications' normal functioning.

## Is it a good idea to enable the rule, *Block credential stealing from the Windows local security authority subsystem (lsass.exe)*, alongside LSA protection?

Enabling this rule will not provide additional protection if you have [LSA protection](https://docs.microsoft.com/windows-server/security/credentials-protection-and-management/configuring-additional-lsa-protection#BKMK_HowToConfigure) enabled as well. Both the rule and LSA protection work in much the same way, so having both running at the same time would be redundant. However, sometimes you may not be able to enable LSA protection. In those cases, you can enable this rule to provide equivalent protection against malware that target lsass.exe.

## Related topics

* [Attack surface reduction overview](attack-surface-reduction.md)
* [Evaluate attack surface reduction rules](evaluate-attack-surface-reduction.md)
* [Customize attack surface reduction rules](customize-attack-surface-reduction.md)
* [Enable attack surface reduction rules](enable-attack-surface-reduction.md)
* [Compatibility of Microsoft Defender with other antivirus/antimalware](../windows-defender-antivirus/windows-defender-antivirus-compatibility.md)
