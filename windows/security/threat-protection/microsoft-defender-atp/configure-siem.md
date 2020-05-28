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

>[!NOTE]
>- [Microsoft Defender ATP Alert](alerts.md) is composed from one or more detections.
>- [Microsoft Defender ATP Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Machine and its related Alert details.
>- The Microsoft Defender ATP Alert API is the latest API for alert consumption and contain a detailed list of related evidence for each alert. For more information, see [Alert methods and properties](alerts.md) and [List alerts](get-alerts.md).

Microsoft Defender ATP supports security information and event management (SIEM) tools to pull detections. Microsoft Defender ATP exposes alerts through an HTTPS endpoint hosted in Azure. The endpoint can be configured to pull detections from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for an AAD application that represents the specific SIEM connector installed in your environment.


Microsoft Defender ATP currently supports the following specific SIEM solution tools through a dedicated SIEM integration model:

- IBM QRadar
- Micro Focus ArcSight

Other SIEM solutions (such as Splunk, RSA NetWitness) are supported through a different integration model based on the new Alert API. For more information, view the [Partner application](https://df.securitycenter.microsoft.com/interoperability/partners) page and select the Security Information and Analytics section for full details.

To use either of these supported SIEM tools you'll need to:

- [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)
- Configure the supported SIEM tool:
     - [Configure HP ArcSight to pull Microsoft Defender ATP detections](configure-arcsight.md)
     - Configure IBM QRadar to pull Microsoft Defender ATP detections For more information, see [IBM Knowledge Center](https://www.ibm.com/support/knowledgecenter/SS42VS_DSM/com.ibm.dsm.doc/c_dsm_guide_MS_Win_Defender_ATP_overview.html?cp=SS42VS_7.3.1).

For more information on the list of fields exposed in the Detection API see, [Microsoft Defender ATP Detection fields](api-portal-mapping.md).



