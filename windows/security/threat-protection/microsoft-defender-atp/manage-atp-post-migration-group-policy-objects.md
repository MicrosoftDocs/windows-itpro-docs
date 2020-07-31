---
title: Manage Microsoft Defender ATP using Group Policy Objects
description: Learn how to manage Microsoft Defender ATP with PowerShell
keywords: post-migration, manage, operations, maintenance, utilization, PowerShell, windows defender advanced threat protection, atp, edr
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

# Manage Microsoft Defender Advanced Threat Protection with Group Policy Objects

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

> [!NOTE]
> We recommend using [Microsoft Endpoint Manager](https://docs.microsoft.com/mem) to manage your organization's threat protection features for devices (also referred to as endpoints). Endpoint Manager includes [Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) and [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/understand/introduction). **[Learn more about Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview)**. 

You can use Group Policy Objects in Azure Active Directory Domain Services to manage some settings in Microsoft Defender ATP.

## Configure Microsoft Defender ATP with Group Policy Objects

The following table lists various tasks you can perform to configure Microsoft Defender ATP with Group Policy Objects.

|Task  |Resources to learn more  |
|---------|---------|
|**Manage settings for user and computer objects** <br/><br/>*Customize built-in Group Policy Objects, or create custom Group Policy Objects and organizational units to suit your organizational needs.*     |[Administer Group Policy in an Azure Active Directory Domain Services managed domain](https://docs.microsoft.com/azure/active-directory-domain-services/manage-group-policy)   |
|**Configure Microsoft Defender Antivirus** <br/><br/>*Configure antivirus features & capabilities, including policy settings, exclusions, remediation, and scheduled scans on your organization's devices (also referred to as endpoints).*   |[Use Group Policy settings to configure and manage Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-group-policy-microsoft-defender-antivirus) <br/><br/>[Use Group Policy to enable cloud-delivered protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/enable-cloud-protection-microsoft-defender-antivirus#use-group-policy-to-enable-cloud-delivered-protection)      |
|**Manage your organization's attack surface reduction rules** <br/><br/>*Customize your attack surface reduction rules by excluding files & folders, or by adding custom text to notification alerts that appear on a users' devices.* |[Customize attack surface reduction rules with Group Policy Objects](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/customize-attack-surface-reduction#use-group-policy-to-exclude-files-and-folders) |
|**Manage exploit protection settings**<br/><br/>*You can customize your exploit protection settings, import a configuration file, and then use Group Policy to deploy that configuration file.*  |[Customize exploit protection settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/customize-exploit-protection) <br/><br/>[Import, export, and deploy exploit protection configurations](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/import-export-exploit-protection-emet-xml)<br/><br/>[Use Group Policy to distribute the configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/import-export-exploit-protection-emet-xml#use-group-policy-to-distribute-the-configuration)  |
|**Enable Network Protection** to help prevent employees from using apps that malicious content on the Internet <br/><br/>*We recommend using [audit mode](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/evaluate-network-protection) at first for network protection in a test environment to see which apps would be blocked before rolling out.* |[Turn on network protection using Group Policy](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/enable-network-protection#group-policy)  |
|**Configure controlled folder access** to protect against ransomware <br/><br/>*[Controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/controlled-folders) is also referred to as antiransomware protection.*  |[Enable controlled folder access using Group Policy](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/enable-controlled-folders#group-policy) |
|**Configure Microsoft Defender SmartScreen** to protect against malicious sites and files on the internet.  |[Microsoft Defender SmartScreen Group Policy and mobile device management (MDM) settings: Group Policy](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-available-settings#group-policy-settings)  |

## Configure your Microsoft Defender Security Center

If you haven't already done so, **configure your Microsoft Defender Security Center** ([https://securitycenter.windows.com](https://securitycenter.windows.com)) to view alerts, configure threat protection features, and view detailed information about your organization's overall security posture. 

You can also configure whether and what features end users can see in the Microsoft Defender Security Center.

- [Overview of the Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use)

- [Endpoint protection: Microsoft Defender Security Center](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#microsoft-defender-security-center)

## Next steps

- [Get an overview of threat and vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)

- [Visit the Microsoft Defender Security Center security operations dashboard](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/security-operations-dashboard)

- [Manage Microsoft Defender ATP with Intune](manage-atp-post-migration-intune.md)
