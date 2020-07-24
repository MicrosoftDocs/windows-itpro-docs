---
title: Manage Microsoft Defender ATP using PowerShell, WMI, and MPCmdRun.exe
description: Learn how to manage Microsoft Defender ATP with PowerShell, WMI, and MPCmdRun.exe
keywords: post-migration, manage, operations, maintenance, utilization, PowerShell, WMI, MPCmdRun.exe, windows defender advanced threat protection, atp, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Manage Microsoft Defender Advanced Threat Protection with PowerShell, WMI, and MPCmdRun.exe

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

We recommend using [Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) to manage your organization's threat protection features for devices (also referred to as endpoints). Both [Configuration Manager](https://docs.microsoft.com/mem/configmgr/protect/deploy-use/endpoint-protection) and Microsoft Intune are part of [Microsoft Endpoint Manager](https://docs.microsoft.com/mem), along with Desktop Analytics, and other features & capabilities. 
- [Learn more about Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview)
- [See how you can co-manage Microsoft Defender ATP on Windows 10 devices with Configuration Manager and Intune](manage-atp-post-migration-intune.md) 

You can, however, use other tools/methods, such as [PowerShell](#configure-microsoft-defender-atp-with-powershell),  [Windows Management Instrumentation](#configure-microsoft-defender-atp-with-windows-management-instrumentation-wmi) (WMI), and the [Microsoft Malware Protection Command Line Utility](#configure-microsoft-defender-atp-with-microsoft-malware-protection-command-line-utility-mpcmdrunexe) (MPCmdRun.exe), to perform some tasks. For example, you can manage some Microsoft Defender Antivirus settings using these tools. And, in some cases, you can customize your attack surface reduction rules and exploit protection settings. 

> [!IMPORTANT]
> Threat protection features that you configure by using PowerShell, WMI, or MCPmdRun.exe can be overwritten by configuration settings that are deployed with Intune or Configuration Manager.

## Configure Microsoft Defender ATP with PowerShell

You can use PowerShell to manage Microsoft Defender Antivirus, exploit protection, and your attack surface reduction rules.

|Task  |Resources to learn more  |
|---------|---------|
|**Manage Microsoft Defender Antivirus** <br/><br/>*View status of antimalware protection, configure preferences for antivirus scans & updates, and make other changes to your antivirus protection.*    |[Use PowerShell cmdlets to configure and manage Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-powershell-cmdlets-microsoft-defender-antivirus)  <br/><br/>[Use PowerShell cmdlets to enable cloud-delivered protection](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus#use-powershell-cmdlets-to-enable-cloud-delivered-protection)       |
|**Configure exploit protection** to mitigate threats on your organization's devices<br/><br/> *We recommend using exploit protection in [audit mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/evaluate-exploit-protection#powershell) at first. That way, you can see how exploit protection affects apps your organization is using.*     | [Customize exploit protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/customize-exploit-protection)<br/><br/>[PowerShell cmdlets for exploit protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/customize-exploit-protection#powershell-reference)        |
|**Configure attack surface reduction rules** with PowerShell <br/><br/>*You can use PowerShell to exclude files and folders from attack surface reduction rules.* |[Customize attack surface reduction rules: Use PowerShell to exclude files & folders](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/customize-attack-surface-reduction#use-powershell-to-exclude-files-and-folders) |


## Configure Microsoft Defender ATP with Windows Management Instrumentation (WMI)

WMI is a scripting interface that allows you to retrieve, modify, and update settings. To learn more, see [Using WMI](https://docs.microsoft.com/windows/win32/wmisdk/using-wmi). 

|Task  |Resources to learn more  |
|---------|---------|
|**Enable cloud-delivered protection** on a device    |[Use Windows Management Instruction (WMI) to enable cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus#use-windows-management-instruction-wmi-to-enable-cloud-delivered-protection)       |
|**Retrieve, modify, and update settings** for Microsoft Defender Antivirus     | [Use WMI to configure and manage Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-wmi-microsoft-defender-antivirus)<br/><br/>[Review the list of available WMI classes and example scripts](https://docs.microsoft.com/previous-versions/windows/desktop/defender/windows-defender-wmiv2-apis-portal)    |


## Configure Microsoft Defender ATP with Microsoft Malware Protection Command Line Utility (MPCmdRun.exe)

On an individual device, you can run a scan, start diagnostic tracing, check for security intellligence updates, and more using the mpcmdrun.exe command line tool. You can find the utility in `%ProgramFiles%\Windows Defender\MpCmdRun.exe`. You must run it from a command prompt.

|Task  |Resources to learn more  |
|---------|---------|
|**Manage Microsoft Defender Antivirus**  |[Configure and manage Microsoft Defender Antivirus with mpcmdrun.exe](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/command-line-arguments-microsoft-defender-antivirus)        |


## Next steps

- [Get an overview of threat and vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)

- [Visit the Microsoft Defender Security Center security operations dashboard](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/security-operations-dashboard)

- [Manage Microsoft Defender ATP with Intune](manage-atp-post-migration-intune.md)
