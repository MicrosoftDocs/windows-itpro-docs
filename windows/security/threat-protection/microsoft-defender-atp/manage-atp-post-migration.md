---
title: Manage Microsoft Defender ATP post migration
description: Now that you've made the switch to Microsoft Defender ATP, your next step is to manage your threat protection features
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
ms.topic: article
---

# Manage Microsoft Defender Advanced Threat Protection, post migration

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

After you have moved from your previous endpoint protection and antivirus solution to Microsoft Defender ATP, your next step is to manage your features and capabilities. We recommend using [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview), which includes Intune and Configuration Manager, to manage your organization's devices and security settings. However, you can use other tools/methods, such as Group Policy Objects. 

The following table lists various tools/methods you can use, with links to learn more. 
<br/><br/>

|Tool/Method  |Description  |
|---------|---------|
|**[Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune)**     |Microsoft Intune, a component of [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview), focuses on mobile device management (MDM) and mobile application management (MAM). With Intune, you control how your organization’s devices are used, including mobile phones, tablets, and laptops. You can also configure specific policies to control applications. <br/><br/>See [Manage Microsoft Defender ATP using Intune](manage-atp-post-migration-intune.md).         |
|**[Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/understand/introduction)**     |Configuration Manager, formerly known as System Center Configuration Manager, is a component of [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview). Configuration Manager is a complex and powerful tool to manage your users, devices, and software. <br/><br/>See [Manage Microsoft Defender ATP with Configuration Manager](manage-atp-post-migration-configuration-manager.md).        |
|**[Group Policy Objects in Azure Active Directory Domain Services](https://docs.microsoft.com/azure/active-directory-domain-services/manage-group-policy)** |[Azure Active Directory Domain Services](https://docs.microsoft.com/azure/active-directory-domain-services/overview) includes built-in Group Policy Objects for users and devices. You can customize the built-in Group Policy Objects as needed for your environment, as well as create custom Group Policy Objects and organizational units (OUs). <br/><br/>See [Manage Microsoft Defender ATP with Group Policy Objects](manage-atp-post-migration-group-policy-objects.md). |
|**[PowerShell, WMI, and MPCmdRun.exe](manage-atp-post-migration-other-tools.md)** |You can use PowerShell to manage Microsoft Defender Antivirus, exploit protection, and your attack surface reduction rules. See [Configuring Microsoft Defender ATP with PowerShell](manage-atp-post-migration-other-tools.md#configure-microsoft-defender-atp-with-powershell).<br/><br/>You can use Windows Management Instrumentation (WMI) to manage Microsoft Defender Antivirus and exclusions. See [Configuring Microsoft Defender ATP with WMI](manage-atp-post-migration-other-tools.md#configure-microsoft-defender-atp-with-windows-management-instrumentation-wmi).<br/><br/>You can use the Microsoft Malware Protection Command Line Utility (MPCmdRun.exe) to manage Microsoft Defender Antivirus and exclusions, as well as validate connections between your network and the cloud. See [Configuring Microsoft Defender ATP with MPCmdRun.exe](manage-atp-post-migration-other-tools.md#configure-microsoft-defender-atp-with-microsoft-malware-protection-command-line-utility-mpcmdrunexe). |

