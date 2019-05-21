---
title: Configure information protection in Windows 
description: Learn how to expand the coverage of WIP to protect files based on their label, regardless of their origin.
keywords: information, protection, data, loss, prevention, wip, policy, scc, compliance, labels, dlp
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 12/05/2018
---

# Configure information protection in Windows 

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Learn how you can use Microsoft Defender ATP to expand the coverage of Microsoft Information Protection (WIP) to protect files based on their label, regardless of their origin.

>[!TIP]
> Read our blog post about how [Microsoft Defender ATP integrates with Microsoft Information Protection to discover, protect, and monitor sensitive data on Windows devices](https://cloudblogs.microsoft.com/microsoftsecure/2019/01/17/windows-defender-atp-integrates-with-microsoft-information-protection-to-discover-protect-and-monitor-sensitive-data-on-windows-devices/).

## Prerequisites
- Endpoints need to be on Windows 10, version 1809 or later
- You'll need the appropriate license to leverage the Microsoft Defender ATP and Azure Information Protection integration
- Your tenant needs to be onboarded to Azure Information Protection analytics, for more information see, [Configure a Log Analytics workspace for the reports](https://docs.microsoft.com/azure/information-protection/reports-aip#configure-a-log-analytics-workspace-for-the-reports)


## Configuration steps
1. Define a WIP policy and assign it to the relevant devices. For more information, see [Protect your enterprise data using Windows Information Protection (WIP)](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/protect-enterprise-data-using-wip). If WIP is already configured on the relevant devices, skip this step. 
2. Define which labels need to get WIP protection in Office 365 Security and Compliance. 
    
    1. Go to: **Classifications > Labels**.
    2. Create a new label or edit an existing one. 
    3. In the configuration wizard, go to 'Data loss prevention' tab and enable WIP.

    ![Image of Office 365 Security and Compliance sensitivity label](images/office-scc-label.png)

    4. Repeat for every label that you want to get WIP applied to in Windows. 

After completing these steps Microsoft Defender ATP will automatically identify labeled documents stored on the device and enable WIP on them.

>[!NOTE]
>- The Microsoft Defender ATP configuration is pulled every 15 minutes. Allow up to 30 minutes for the new policy to take effect and ensure that the endpoint is online. Otherwise, it will not receive the policy.
>- Data forwarded to Azure Information Protection is stored in the same location as your other Azure Information Protection data.

## Related topic
- [Information protection in Windows overview](information-protection-in-windows-overview.md)