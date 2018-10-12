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

Windows Defender ATP seamlessly integrates with Microsoft information protection solutions to better protect data and prevent loss.

Windows Defender ATP leverages data labels set in Office 365 Security and Compliance to discover and identify sensitive or confidential files and applies the corresponding Windows Information Protection to enforce endpoint protection. 

For more information, see [How Windows Information Protection protects files with a sensitivity label](https://docs.microsoft.com/windows/security/information-protection/windows-information-protection/how-wip-works-with-labels).

## Data discovery 
Windows Defender ATP automatically discovers files with Azure Information Protection (AIP) labels on Windows devices. 

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
