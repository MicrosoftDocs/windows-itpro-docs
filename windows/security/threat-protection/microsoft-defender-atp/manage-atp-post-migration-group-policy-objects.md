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

We recommend using [Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) to manage your organization's threat protection features for devices (also referred to as endpoints). However, you can also use Group Policy Objects in Azure Active Directory Domain Services.

## Configuring Microsoft Defender ATP with Group Policy Objects

The following table lists various tasks you can perform to configure Microsoft Defender ATP with Group Policy Objects.

|Task  |Resources to learn more  |
|---------|---------|
|**Manage settings for user and computer objects** <br/><br/>*Customize built-in Group Policy Objects, or create custom Group Policy Objects and organizational units to suit your organizational needs.*     |[Administer Group Policy in an Azure Active Directory Domain Services managed domain](https://docs.microsoft.com/azure/active-directory-domain-services/manage-group-policy)   |
|**Configure Microsoft Defender Antivirus** <br/><br/>*Configure antivirus features & capabilities, including policy settings, exclusions, remediation, and scheduled scans on your organization's devices (also referred to as endpoints).*   |[Use Group Policy settings to configure and manage Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/use-group-policy-microsoft-defender-antivirus)       |
|**Manage your organization's attack surface reduction rules** <br/><br/>*Customize your attack surface reduction rules by excluding files & folders, or by adding custom text to notification alerts that appear on a users' devices.* |[Customize attack surface reduction rules with Group Policy Objects](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/customize-attack-surface-reduction#use-group-policy-to-exclude-files-and-folders) |
|**  |[Customize exploit protection settings](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/customize-exploit-protection) <br/><br/>[Import, export, and deploy exploit protection configurations](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/import-export-exploit-protection-emet-xml)<br/><br/>[Use Group Policy to distribute the configuration](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/import-export-exploit-protection-emet-xml#use-group-policy-to-distribute-the-configuration)  |

## Next steps

- [Get an overview of threat and vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt)

- [Visit the Microsoft Defender Security Center security operations dashboard](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/security-operations-dashboard)

- [Manage Microsoft Defender ATP with Intune](manage-atp-post-migration-intune.md)
