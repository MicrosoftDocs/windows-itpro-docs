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

When it comes to managing your organization's threat protection features in Microsoft Defender ATP, we recommend using [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview), which includes [Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) and [Configuration Manager](https://docs.microsoft.com/mem/configmgr/protect/deploy-use/endpoint-protection). To learn more, see the following articles:
- [Manage Microsoft Defender ATP with Intune](manage-atp-post-migration-intune.md)
- [Manage Microsoft Defender ATP with Configuration Manager](manage-atp-post-migration-configuration-manager.md)

You can, however, use other tools/methods to perform some tasks. Examples include managing Microsoft Defender Antivirus settings and customizing attack surface reduction rules. These other tools/methods include [PowerShell](#configure-microsoft-defender-atp-with-powershell),  [Windows Management Instrumentation](#configure-microsoft-defender-atp-with-windows-management-instrumentation-wmi) (WMI), and [The Microsoft Malware Protection Command Line Utility](#configure-microsoft-defender-atp-with-microsoft-malware-protection-command-line-utility-mpcmdrunexe) (MPCmdRun.exe).

> [!NOTE]
> Threat protection features that you configure by using PowerShell, WMI, or MCPmdRun.exe can be overwritten by configuration settings that are deployed with Intune or Configuration Manager.

## Configure Microsoft Defender ATP with PowerShell

You can use PowerShell to manage Microsoft Defender Antivirus, exploit protection, and your attack surface reduction rules.

|Task  |Resources to learn more  |
|---------|---------|
|**Manage Microsoft Defender Antivirus**     |[Use PowerShell cmdlets to configure and manage Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-powershell-cmdlets-microsoft-defender-antivirus)         |
|**Configure exploit protection**     | [Customize exploit protection: PowerShell reference](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/customize-exploit-protection#powershell-reference)        |
|**Configure attack surface reduction rules** <br/><br/>*You can use PowerShell to exclude files and folders from attack surface reduction rules.* |[Customize attack surface reduction rules: Use PowerShell to exclude files & folders](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/customize-attack-surface-reduction#use-powershell-to-exclude-files-and-folders) |


## Configure Microsoft Defender ATP with Windows Management Instrumentation (WMI)


|Task  |Resources to learn more  |
|---------|---------|
|task 1     |  link       |
|task 2     |  link       |


## Configure Microsoft Defender ATP with Microsoft Malware Protection Command Line Utility (MPCmdRun.exe)


|Task  |Resources to learn more  |
|---------|---------|
|**Manage Microsoft Defender Antivirus**     |[Configure and manage Microsoft Defender Antivirus with the Microsoft Malware Protection Command Line Utility (mpcmdrun.exe) command-line tool](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/command-line-arguments-microsoft-defender-antivirus)        |
|Row2     | link        |


## Next steps

- [Get an overview of threat and vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)

- [Visit the Microsoft Defender Security Center security operations dashboard](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/security-operations-dashboard)

- [Manage Microsoft Defender ATP with Intune](manage-atp-post-migration-intune.md)
