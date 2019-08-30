---
title: Pull Detections to your SIEM tools from Microsoft Defender Advanced Threat Protection
description: Learn how to use REST API and configure supported security information and events management tools to receive and pull Detections.
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
ms.date: 10/16/2017
---

# Pull Detections to your SIEM tools

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configuresiem-abovefoldlink) 

## Pull Detections using security information and events management (SIEM) tools

>[!Note]
>- [Microsoft Defender ATP Alert](alerts.md) is composed from one or more Detections
>- [Microsoft Defender ATP Detection](api-portal-mapping.md) is composed from the suspicious event occurred on the Machine and its related Alert details.

Microsoft Defender ATP supports (SIEM) tools to pull Detections. Microsoft Defender ATP exposes alerts through an HTTPS endpoint hosted in Azure. The endpoint can be configured to pull Detections from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for an AAD application that represents the specific SIEM connector installed in your environment.


Microsoft Defender ATP currently supports the following SIEM tools:

- Splunk
- HP ArcSight

To use either of these supported SIEM tools you'll need to:

- [Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)
- Configure the supported SIEM tool:
    - [Configure Splunk to pull Microsoft Defender ATP Detections](configure-splunk.md)
    - [Configure HP ArcSight to pull Microsoft Defender ATP Detections](configure-arcsight.md)

For more information on the list of fields exposed in the Detection API see, [Microsoft Defender ATP Detection fields](api-portal-mapping.md).


## Pull Microsoft Defender ATP Detections using REST API
Microsoft Defender ATP supports the OAuth 2.0 protocol to pull Detections using REST API.

For more information, see [Pull Microsoft Defender ATP Detections using REST API](pull-alerts-using-rest-api.md).


## In this section

Topic | Description
:---|:---
[Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)| Learn about enabling the SIEM integration feature in the **Settings** page in the portal so that you can use and generate the required information to configure supported SIEM tools.
[Configure Splunk to pull Microsoft Defender ATP Detections](configure-splunk.md)| Learn about installing the REST API Modular Input App and other configuration settings to enable Splunk to pull Microsoft Defender ATP Detections.
[Configure HP ArcSight to pull Microsoft Defender ATP Detections](configure-arcsight.md)| Learn about installing the HP ArcSight REST FlexConnector package and the files you need to configure ArcSight to pull Microsoft Defender ATP Detections.
[Microsoft Defender ATP Detection fields](api-portal-mapping.md) | Understand what data fields are exposed as part of the alerts API and how they map to Microsoft Defender Security Center.
[Pull Microsoft Defender ATP Detections using REST API](pull-alerts-using-rest-api.md) | Use the Client credentials OAuth 2.0 flow to pull Detections from Microsoft Defender ATP using REST API.
[Troubleshoot SIEM tool integration issues](troubleshoot-siem.md) | Address issues you might encounter when using the SIEM integration feature.
