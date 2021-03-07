---
title: Overview of management and APIs
ms.reviewer: 
description: Learn about the management tools and API categories in Microsoft Defender ATP
keywords: onboarding, api, siem, rbac, access, portal, integration, investigation, response, entities, entity, user context, application context, streaming
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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

# Overview of management and APIs 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-mgt-apis-abovefoldlink)


Defender for Endpoint supports a wide variety of options to ensure that customers can easily adopt the platform. 

Acknowledging that customer environments and structures can vary, Defender for Endpoint was created with flexibility and granular control to fit varying customer requirements. 

## Endpoint onboarding and portal access 

Device onboarding is fully integrated into Microsoft Endpoint Manager and Microsoft Intune for client devices and Azure Security Center for server devices, providing complete end-to-end experience of configuration, deployment, and monitoring. In addition, Microsoft Defender for Endpoint supports Group Policy and other third-party tools used for devices management.

Defender for Endpoint provides fine-grained control over what users with access to the portal can see and do through the flexibility of role-based access control (RBAC). The RBAC model supports all flavors of security teams structure:
- Globally distributed organizations and security teams
- Tiered model security operations teams
- Fully segregated divisions with single centralized global security operations teams 

## Available APIs
The Microsoft Defender for Endpoint solution is built on top of an integration-ready platform.

Defender for Endpoint exposes much of its data and actions through a set of programmatic APIs. Those APIs will enable you to automate workflows and innovate based on Defender for Endpoint capabilities.

![Image of available API and integration in Microsoft Defender for Endpoint](images/mdatp-apis.png)  

The Defender for Endpoint APIs can be grouped into three:
- Microsoft Defender for Endpoint APIs 
- Raw data streaming API
- SIEM integration

## Microsoft Defender for Endpoint APIs

Defender for Endpoint offers a layered API model exposing data and capabilities in a structured, clear, and easy to use model, exposed through a standard Azure  AD-based authentication and authorization model allowing access in context of users or SaaS applications. The API model was designed to expose entities and capabilities in a consistent form. 

Watch this video for a quick overview of Defender for Endpoint's APIs. 
>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4d73M]

The **Investigation API** exposes the richness of Defender for Endpoint - exposing calculated or 'profiled' entities (for example, device, user, and file) and discrete events (for example, process creation and file creation) which typically describes a behavior related to an entity, enabling access to data via investigation interfaces allowing a query-based access to data. For more information, see [Supported APIs](exposed-apis-list.md).

The **Response API** exposes the ability to take actions in the service and on devices, enabling customers to ingest indicators, manage settings, alert status, as well as take response actions on devices programmatically such as isolate devices from the network, quarantine files, and others. 

## Raw data streaming API 
Defender for Endpoint raw data streaming API provides the ability for customers to ship real-time events and alerts from their instances as they occur within a single data stream, providing a low latency, high throughput delivery mechanism.

The Defender for Endpoint event information is pushed directly to Azure storage for long-term data retention, or to Azure Event Hubs for consumption by visualization services or additional data processing engines. 

For more information, see [Raw data streaming API](raw-data-export.md).


## SIEM API
When you enable security information and event management (SIEM) integration, it allows you to pull detections from Microsoft Defender Security Center using your SIEM solution or by connecting directly to the detections REST API. This activates the SIEM connector access details section with pre-populated values and an application is created under your Azure Active Directory (Azure AD) tenant. For more information, see [SIEM integration](enable-siem-integration.md).

## Related topics
- [Access the Microsoft Defender for Endpoint APIs ](apis-intro.md)
- [Supported APIs](exposed-apis-list.md)
- [Technical partner opportunities](partner-integration.md)

