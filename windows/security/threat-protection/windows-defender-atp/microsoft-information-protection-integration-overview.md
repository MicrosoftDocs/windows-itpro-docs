---
title: Microsoft information protection integration with Windows Defender ATP
description: Windows Defender ATP integrates with Windows information protection to identify and protect sensitive information
keywords: information, protection, dlp, wip, data, loss, prevention, protect
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 10/11/2018
---

# Microsoft information protection integration overview
**Applies to:**
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

Information protection is an integral part of Microsoft 365 Enterprise suite, providing intelligent protection to keep sensitive data secure while enabling productivity in the workplace.


Windows Defender ATP seamlessly integrates with Microsoft information protection to provide a complete and comprehensive data loss prevention (DLP) solution for Windows devices. This solution is delivered and managed as part of the unified Microsoft 365 information protection suite. 


Windows Defender ATP applies two methods to discover and protect data:
- **Data discovery** - Identify sensitive data on Windows devices and its risk
- **Data protection** - Windows Information Protection (WIP) as outcome of Microsoft Information Protection label



[Question for Omri: is the second bullet point correct? the slides say Identify sensitive data on Windows devices at risk. I phrased it as "its risk" because it seems like it first identifies the sensitive data THEN it identifies the risk - based on the demo you showed me on the dashboard. Pls feel free to correct me if my understanding was wrong. Thanks! :) ]


## Data discovery 
Windows Defender ATP automatically discovers files with Azure Information Protection (AIP) labels on Windows devices. 

>[!NOTE]
> You'll need the appropriate license to leverage the Windows Defender ATP and Azure Information Protection integration.

When a labeled file is created or modified on a Windows device, Windows Defender ATP automatically reports a signal to AIP where you can view: 

### Data Discovery dashboard 
This dashboard presents a summarized discovery information of data discovered by both Windows Defender ATP and AIP scanner. Data from Windows Defender ATP is marked with Location Type – Endpoint. 

Notice the Device Risk column on the right, this device risk is derived directly from Windows Defender ATP, indicating the risk level of the security device where the file was discovered, based on the active security threats detected by Windows Defender ATP.

Clicking the device risk level will redirect you to the device page in Windows Defender ATP, where you can get a comprehensive view of the device security status and its active alerts. 

### Log Analytics 
Data Discovery based on Windows Defender ATP is also available in AIP Log Analytics, where you can perform complicated queries over the raw data. 

Open AIP Log Analytics in Azure Portal and open a query builder (standard or classic). 

To view Windows Defender ATP data, perform a query that contains: 


```
InformationProtectionLogs_CL 
| where Workload_s == "Windows Defender" 
```

**Prerequisites: **
- Tenant is enrolled to AIP. 
- Enable AIP integration in WDATP: 
- To benefit from the above, you need to enable AIP integration in Windows Defender ATP:
    - Go to Settings in Windows Defender ATP portal, click on Advanced Settings under General.


## Data protection 
Windows Defender ATP automatically enables Windows Information Protection (WIP) for labeled files. When a labeled file is created or modified on a Windows device, Windows Defender ATP automatically detects it and enables WIP on that file if its label corresponds with Office Security and Compliance (SCC) policy. 

This functionality expands the coverage of WIP to protect files based on their label, regardless of their origin (which is how WIP decides which files need to be protected). 

For more information, see [Configure Microsoft information protection integration](microsoft-information-protection-config.md).


## Related topics
- [How Windows Information Protection protects files with a sensitivity label](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/how-wip-works-with-labels)