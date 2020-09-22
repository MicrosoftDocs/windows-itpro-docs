---
title: Manage Microsoft Defender for Endpoint post migration
description: Now that you've made the switch to Microsoft Defender for Endpoint, your next step is to manage your threat protection features
keywords: post-migration, manage, operations, maintenance, utilization, windows defender advanced threat protection, atp, edr
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
ms.topic: conceptual
ms.date: 09/22/2020
ms.reviewer: chventou
---

# Manage Microsoft Defender for Endpoint, post migration

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2069559)

After you have moved from your previous endpoint protection and antivirus solution to Microsoft Defender for Endpoint, your next step is to manage your features and capabilities. We recommend using [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview), which includes [Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) and [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/understand/introduction), to manage your organization's devices and security settings. However, you can use other tools/methods, such as [Group Policy Objects in Azure Active Directory Domain Services](https://docs.microsoft.com/azure/active-directory-domain-services/manage-group-policy). 

The following table lists various tools/methods you can use, with links to learn more. 
<br/><br/>

|Tool/Method  |Description  |
|---------|---------|
|**[Threat and vulnerability management dashboard insights](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/tvm-dashboard-insights)** in the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) |The threat & vulnerability management dashboard provides actionable information that your security operations team can use to reduce exposure and improve your organization's security posture. <br/><br/>See [Threat & vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) and [Overview of the Microsoft Defender Security Center](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/use).  |
|**[Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune)**  (recommended)    |Microsoft Intune (Intune), a component of [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview), focuses on mobile device management (MDM) and mobile application management (MAM). With Intune, you control how your organization’s devices are used, including mobile phones, tablets, and laptops. You can also configure specific policies to control applications. <br/><br/>See [Manage Microsoft Defender for Endpoint using Intune](manage-atp-post-migration-intune.md).         |
|**[Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/understand/introduction)**     |Microsoft Endpoint Configuration Manager (Configuration Manager), formerly known as System Center Configuration Manager, is a component of [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview). Configuration Manager is a powerful tool to manage your users, devices, and software.<br/><br/>See [Manage Microsoft Defender for Endpoint with Configuration Manager](manage-atp-post-migration-configuration-manager.md).        |
|**[Group Policy Objects in Azure Active Directory Domain Services](https://docs.microsoft.com/azure/active-directory-domain-services/manage-group-policy)** |[Azure Active Directory Domain Services](https://docs.microsoft.com/azure/active-directory-domain-services/overview) includes built-in Group Policy Objects for users and devices. You can customize the built-in Group Policy Objects as needed for your environment, as well as create custom Group Policy Objects and organizational units (OUs). <br/><br/>See [Manage Microsoft Defender for Endpoint with Group Policy Objects](manage-atp-post-migration-group-policy-objects.md). |
|**[PowerShell, WMI, and MPCmdRun.exe](manage-atp-post-migration-other-tools.md)** |*We recommend using Microsoft Endpoint Manager (which includes Intune and Configuration Manager) to manage threat protection features on your organization's devices. However, you can configure some settings, such as Microsoft Defender Antivirus settings on individual devices (endpoints) with PowerShell, WMI, or the MPCmdRun.exe tool.*<br/><br/>You can use PowerShell to manage Microsoft Defender Antivirus, exploit protection, and your attack surface reduction rules. See [Configure Microsoft Defender for Endpoint with PowerShell](manage-atp-post-migration-other-tools.md#configure-microsoft-defender-atp-with-powershell).<br/><br/>You can use Windows Management Instrumentation (WMI) to manage Microsoft Defender Antivirus and exclusions. See [Configure Microsoft Defender for Endpoint with WMI](manage-atp-post-migration-other-tools.md#configure-microsoft-defender-atp-with-windows-management-instrumentation-wmi).<br/><br/>You can use the Microsoft Malware Protection Command-Line Utility (MPCmdRun.exe) to manage Microsoft Defender Antivirus and exclusions, as well as validate connections between your network and the cloud. See [Configure Microsoft Defender for Endpoint with MPCmdRun.exe](manage-atp-post-migration-other-tools.md#configure-microsoft-defender-atp-with-microsoft-malware-protection-command-line-utility-mpcmdrunexe). |

