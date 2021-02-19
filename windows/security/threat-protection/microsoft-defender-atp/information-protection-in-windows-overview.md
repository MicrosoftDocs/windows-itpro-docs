---
title: Information protection in Windows overview
ms.reviewer: 
description: Learn about how information protection works in Windows to identify and protect sensitive information
keywords: information, protection, dlp, data, loss, prevention, protect
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.technology: mde
---

# Information protection in Windows overview

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


[!include[Prerelease information](../../includes/prerelease.md)]

Information protection is an integral part of Microsoft 365 Enterprise suite, providing intelligent protection to keep sensitive data secure while enabling productivity in the workplace.


>[!TIP]
> Read our blog post about how [Microsoft Defender ATP integrates with Microsoft Information Protection to discover, protect, and monitor sensitive data on Windows devices](https://cloudblogs.microsoft.com/microsoftsecure/2019/01/17/windows-defender-atp-integrates-with-microsoft-information-protection-to-discover-protect-and-monitor-sensitive-data-on-windows-devices/).

Defender for Endpoint applies the following methods to discover, classify, and protect data:

- **Data discovery** - Identify sensitive data on Windows devices at risk
- **Data classification** - Automatically classify data based on common Microsoft Information Protection (MIP) policies managed in Office 365 Security & Compliance Center. Auto-classification allows you to protect sensitive data even if the end user hasn’t manually classified it.


## Data discovery and data classification

Defender for Endpoint automatically discovers files with sensitivity labels and files that contain sensitive information types.

Sensitivity labels classify and help protect sensitive content.

Sensitive information types in the Office 365 data loss prevention (DLP) implementation fall under two categories:

- Default
- Custom

Default sensitive information types include information such as bank account numbers, social security numbers, or national IDs. For more information, see [What the sensitive information type look for](https://docs.microsoft.com/office365/securitycompliance/what-the-sensitive-information-types-look-for).

Custom types are ones that you define and is designed to protect a different type of sensitive information (for example, employee IDs or project numbers). For more information see, [Create a custom sensitive information type](https://docs.microsoft.com/office365/securitycompliance/create-a-custom-sensitive-information-type).

When a file is created or edited on a  Windows device, Defender for Endpoint scans the content to evaluate if it contains sensitive information.

Turn on the Azure Information Protection integration so that when a file that contains sensitive information is discovered by Defender for Endpoint though labels or information types, it is automatically forwarded to Azure Information Protection from the device.

![Image of settings page with Azure Information Protection](images/atp-settings-aip.png)

The reported signals can be viewed on the Azure Information Protection – Data discovery dashboard.

## Azure Information Protection - Data discovery dashboard

This dashboard presents a summarized discovery information of data discovered by both Defender for Endpoint and Azure Information Protection. Data from Defender for Endpoint is marked with Location Type - Endpoint.

![Image of Azure Information Protection - Data discovery](images/azure-data-discovery.png)

Notice the Device Risk column on the right, this device risk is derived directly from Defender for Endpoint, indicating the risk level of the security device where the file was discovered, based on the active security threats detected by Defender for Endpoint.

Click on a device to view a list of files observed on this device, with their sensitivity labels and information types.

>[!NOTE]
>Please allow approximately 15-20 minutes for the Azure Information Protection Dashboard Discovery to reflect discovered files.

## Log Analytics

Data discovery based on Defender for Endpoint is also available in [Azure Log Analytics](https://docs.microsoft.com/azure/log-analytics/log-analytics-overview), where you can perform complex queries over the raw data.

For more information on Azure Information Protection analytics, see [Central reporting for Azure Information Protection](https://docs.microsoft.com/azure/information-protection/reports-aip).

Open Azure Log Analytics in Azure portal and open a query builder (standard or classic).

To view Defender for Endpoint data, perform a query that contains:

```
InformationProtectionLogs_CL
| where Workload_s == "Windows Defender"
```

**Prerequisites:**

- Customers must have a subscription for Azure Information Protection.
- Enable Azure Information Protection integration in Microsoft Defender Security Center:
    - Go to **Settings** in Microsoft Defender Security Center, click on **Advanced Settings** under **General**.



