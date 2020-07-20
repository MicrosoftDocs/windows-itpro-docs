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

# Manage Microsoft Defender Advanced Threat Protection post migration

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

After you have moved from your previous endpoint protection and antivirus solution to Microsoft Defender ATP, your next step is to manage your features and capabilities. We recommend using Intune to manage your organization's devices and security settings. However, you can use other tools/methods, such as Configuration Manager or Group Policy Objects.

The following table lists several ways to manage your Microsoft Defender ATP features and capabilities:


|Tool/Method  |Description  |
|---------|---------|
|[Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune)     |Microsoft Intune, a component of [Microsoft Endpoint Manager](https://docs.microsoft.com/mem/endpoint-manager-overview), is a cloud-based service that focuses on mobile device management (MDM) and mobile application management (MAM). You control how your organization’s devices are used, including mobile phones, tablets, and laptops. You can also configure specific policies to control applications. <br/><br/>See [Manage Microsoft Defender ATP using Intune](manage-atp-post-migration-intune.md).         |
|[Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/mem/configmgr/core/understand/introduction)     |Configuration Manager, formerly known as System Center Configuration Manager, is a component of Microsoft Endpoint Manager.         |
|[Group Policy Objects in Azure Active Directory Domain Services](manage-atp-post-migration-group-policy-objects.md) |Azure Active Directory Domain Services includes built-in Group Policy Objects for users and devices. You can customize the built-in Group Policy Objects as needed for your environment, as well as create custom Group Policy Objects and organizational units (OUs). To learn more, see [Administer Group Policy in an Azure Active Directory Domain Services managed domain](https://docs.microsoft.com/azure/active-directory-domain-services/manage-group-policy). |
|[PowerShell, WMI, and MPCmdRun.exe](manage-atp-post-migration-other-tools.md) | |


## Additional resources

|Subject | Resources |
|---|---|
|General resources |- Microsoft Defender Antivirus documentation ([http://aka.ms/wdavtechnet](http://aka.ms/wdavtechnet)) <br/><br/>- Microsoft Security Intelligence ([http://www.microsoft.com/mmpc](http://www.microsoft.com/mmpc)) <br/><br/>- Microsoft Security blog ([https://aka.ms/mmpcblog](https://aka.ms/mmpcblog)) |
|Endpoint Protection (Configuration Manager) |[Endpoint Protection documentation](https://docs.microsoft.com/mem/configmgr/protect/deploy-use/endpoint-protection)  |
|Test and deploy Microsoft Defender Antivirus  |-   |