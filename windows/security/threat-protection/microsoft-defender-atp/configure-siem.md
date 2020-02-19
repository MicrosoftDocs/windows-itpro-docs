---
title: Pull detections to your SIEM tools from Microsoft Defender Advanced Threat Protection
description: Learn how to use REST API and configure supported security information and events management tools to receive and pull detections.
keywords: configure siem, security information and events management tools, splunk, arcsight, custom indicators, rest api, alert definitions, indicators of compromise
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
ms.topic: article
---

# Pull detections to your SIEM tools

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configuresiem-abovefoldlink) 

## Pull detections using security information and events management (SIEM) tools

>[!Note]
>- [Microsoft Defender ATP Alert](alerts.md) is composed from one or more detections
>- [Microsoft Defender ATP Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Machine and its related Alert details.

Microsoft Defender ATP supports security information and event management (SIEM) tools to pull detections. Microsoft Defender ATP exposes alerts through an HTTPS endpoint hosted in Azure. The endpoint can be configured to pull detections from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for an AAD application that represents the specific SIEM connector installed in your environment.


Microsoft Defender ATP currently supports the following SIEM tools:

- Splunk
- HP ArcSight

To use either of these supported SIEM tools you'll need to:

- [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)
- Configure the supported SIEM tool:
    - [Configure Splunk to pull Microsoft Defender ATP detections](configure-splunk.md)
    - [Configure HP ArcSight to pull Microsoft Defender ATP detections](configure-arcsight.md)

For more information on the list of fields exposed in the Detection API see, [Microsoft Defender ATP Detection fields](api-portal-mapping.md).


## Pull Microsoft Defender ATP detections using REST API
Microsoft Defender ATP supports the OAuth 2.0 protocol to pull detections using REST API.

For more information, see [Pull Microsoft Defender ATP detections using REST API](pull-alerts-using-rest-api.md).


