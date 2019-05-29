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

- Windows 10, version 1809 (OS Build 17763.404 with [KB4490481](https://support.microsoft.com/en-us/help/4490481))
- Windows 10, version 1803 (OS Build 17134.799 with [KB4499183](https://support.microsoft.com/help/4499183))
- Windows 10, version 1709 (OS Build 16299.1182 with [KB4499147](https://support.microsoft.com/help/4499147)) 

>[!NOTE]
>If the patches are not implemented, telemetry is sent to the default public geolocation. If public IPs are blocked then the data will not be sent back to Microsoft Defender ATP. Detection and hunting experience will not be available. If public IPs are allowed, then data will reach non-compliant data centers and will then be forwarded to appropriate data centers.

The following OS versions are not supported:
- Windows Server
- Windows 7, 8, 8.1


## Threat & Vulnerability Management
Not supported


## Automated investigation and remediation
Response to Office 365 alerts are not supported


## Live response
NOTE: ADDED, BUT NEED TO CHECK IF SUPPORTED.

## Microsoft Threat Experts
Not supported


## Management and APIs
NOTE: NOT SURE WHAT IS SUPPORTED AND NOT. Keeping here for now.

## Product integrations

Integrations with the following products are not supported:
- Azure Security Center
- Azure Advanced Threat Protection
- Azure Information Protection
- Office 365 Advanced Threat Protection
- Microsoft Cloud App Security
- Skype
- Intune





