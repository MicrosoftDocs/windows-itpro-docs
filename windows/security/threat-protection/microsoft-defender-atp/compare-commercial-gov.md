---
title: Compare commercial and government Microsoft Defender ATP
description:
keywords: 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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
ms.topic: conceptual
---

# Compare commercial and government Microsoft Defender ATP

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Microsoft Defender ATP for government uses the same underlying technologies as commercial Microsoft Defender ATP. The government SKU/version is based on the same prevention, detection, investigation, and remediation as the commercial version. However, there are some key differences in the availability of capabilities for the government version. 


## Endpoint versions
The following OS versions are supported:

- Windows 10, version 1903 
- Windows 10, version 1809 (OS Build 17763.404 with [KB4490481](https://support.microsoft.com/en-us/help/4490481))
- Windows 10, version 1803 (OS Build 17134.799 with [KB4499183](https://support.microsoft.com/help/4499183))
- Windows 10, version 1709 (OS Build 16299.1182 with [KB4499147](https://support.microsoft.com/help/4499147)) 
- Windows Server, 2019 

>[!NOTE]
>If patches are not implemented after the machine onboarding, some Microsoft Defender ATP telemetry might be sent to the Microsoft Defender ATP Commercial Cloud.

The following OS versions are not supported:
- Windows Server 2008 R2 SP1
- Windows Server 2012 R2
- Windows Server 2016
- Windows Server, version 1803
- Windows 7 SP1 Enterprise
- Windows 7 SP1 Pro
- Windows 8 Pro
- Windows 8.1 Enterprise


## Threat & Vulnerability Management
Not available.


## Automated investigation and remediation
The following capabilities are not available:
- Response to Office 365 alerts 
- Live response 



## Management and APIs
The following capabilities are not available:

- Threat protection report
- Machine health and compliance report
- Integration with third-party products


## Microsoft Threat Protection 
Integrations with the following products are not available:
- Azure Security Center
- Azure Advanced Threat Protection
- Azure Information Protection
- Office 365 Advanced Threat Protection
- Microsoft Cloud App Security
- Skype
- Intune

## Microsoft Threat Experts
Not available.

## Required connectivity settings
You'll need to ensure that traffic from the following are allowed:

Service location | DNS record
:---|:---
Common URLs for all locations (Global location) | ```crl.microsoft.com```<br>```ctldl.windowsupdate.com```<br>```notify.windows.com```
Microsoft Defender ATP GCC high specific | ```us4-v20.events.data.microsoft.com``` <br>```winatp-gw-usgt.microsoft.com```<br>```winatp-gw-usgv.microsoft.com```<br>```*.blob.core.usgovcloudapi.net```



