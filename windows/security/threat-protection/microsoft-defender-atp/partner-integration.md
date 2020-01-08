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

## Scenario 3 - Indicators matching 
Indicator of compromise (IoCs) matching is an essential feature in every endpoint protection solution. This capability is available in Microsoft Defender ATP and gives the ability to set a list of indicators for prevention, detection and exclusion of entities. One can define the action to be taken as well as the duration for when to apply the action.

## Scenario 4: Decision making based on device security score & vulnerabilities
 Microsoft Defender ATP Threat & Vulnerability Management is built-in, real-time, cloud-powered, and is fully integrated with Microsoft endpoint security stack. It uses vulnerability and security configuration assessment data as discovery tools that are used to calculate the exposure score. Using secure score and endpoint vulnerabilities data with other solutions will help to expand the customer's visibility into the overall security posture of their endpoints and help them make better decisions.

## Scenario 5: Managed security service provider support 
support Security is recognized as a key component in running an enterprise, however some organizations might not have the capacity or expertise to have a dedicated security operations team to manage the security of their endpoints and network, others may want to have a second set of eyes to review alerts in their network. To address this demand, managed security service providers (MSSP) offer to deliver managed detection and response (MDR) services on top of Microsoft Defender ATP.

Microsoft Defender ATP adds support for this scenario and to allow MSSPs to take the following actions: 
- Get access to MSSP customer's Microsoft Defender Security Center portal
- Get email notifications • Fetch alerts through security information and event management (SIEM) tools and the rich set of programmatic APIs and 
- Use the streaming API to receive real-time event and alerts from instances as they occur within a single data stream, providing a low latency, high throughput delivery mechanism


Follow the steps in [Become a Microsoft Defender ATP integration partner](get-started-partner-integration.md) to become a Microsoft Defender ATP partner.