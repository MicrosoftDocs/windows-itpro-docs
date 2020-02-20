---
title: Microsoft Defender ATP partner opportunities and scenarios
ms.reviewer: 
description: Learn how you can extend existing security offerings on top of the open framework and a rich set of APIs to build extensions and integrations with Microsoft Defender ATP
keywords: API, partner, extend, open framework, apis, extensions, integrations, detection, management, response, vulnerabilities, intelligence
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

# Microsoft Defender ATP partner opportunities and scenarios

**Applies to:** 
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

> Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 


Partners can easily extend their existing security offerings on top of the open framework and a rich and complete set of APIs to build extensions and integrations with Microsoft Defender ATP. 

The APIs span functional areas including detection, management, response, vulnerabilities and intelligence wide range of use cases. Based on the use case and need, partners can either stream or query data from Microsoft Defender ATP. 


## Scenario 1: External alert correlation and Automated investigation and remediation
Microsoft Defender ATP offers unique automated investigation and remediation capabilities to drive incident response at scale. 

Integrating the automated investigation and response capability with other solutions such as network security products or other endpoint security products will help to address alerts and minimize the complexities surrounding network and device signal correlation, effectively streamlining the investigation and threat remediation actions on devices.

Microsoft Defender ATP adds support for this scenario in the following forms:
- External alerts can be pushed into Microsoft Defender ATP and presented side-by-side with additional device-based alerts from Microsoft Defender ATP. This view provides the full context of the alert - with the real process and the full story of attack.

- Once an alert is generated, the signal is shared across all Microsoft Defender ATP protected endpoints in the enterprise. Microsoft Defender ATP takes immediate automated or operator-assisted response to address the alert.

## Scenario 2: Security orchestration and automation response (SOAR) integration
Orchestration solutions can help build playbooks and integrate the rich data model and actions that Microsoft Defender ATP APIs exposes to orchestrate responses, such as query for device data, trigger machine isolation, block/allow, resolve alert and others.

## Scenario 3: Indicators matching 
Indicator of compromise (IoCs) matching is an essential feature in every endpoint protection solution. This capability is available in Microsoft Defender ATP and gives the ability to set a list of indicators for prevention, detection and exclusion of entities. One can define the action to be taken as well as the duration for when to apply the action.

The above scenarios serve as examples of the extensibility of the platform. You are not limited to these and we certainly encourage you leverage the open framework to discover and explore other scenarios.

Follow the steps in [Become a Microsoft Defender ATP partner](get-started-partner-integration.md) to integrate your solution in Microsoft Defender ATP.

## Related topic
- [Overview of management and APIs](management-apis.md)