---
title: Understand threat intelligence concepts in Microsoft Defender ATP
description: Create custom threat alerts for your organization and learn the concepts around threat intelligence in Microsoft Defender Advanced Threat Protection.
keywords: threat intelligence, alert definitions, indicators of compromise, ioc
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

# Understand threat intelligence concepts

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-threatindicator-abovefoldlink) 

Advanced cybersecurity attacks comprise of multiple complex malicious events, attributes, and contextual information. Identifying and deciding which of these activities qualify as suspicious can be a challenging task. Your knowledge of known attributes and abnormal activities specific to your industry is fundamental in knowing when to call an observed behavior as suspicious.

With Microsoft Defender ATP, you can create custom threat alerts that can help you keep track of possible attack activities in your organization. You can flag suspicious events to piece together clues and possibly stop an attack chain. These custom threat alerts will only appear in your organization and will flag events that you set it to track.

Before creating custom threat alerts, it's important to know the concepts behind alert definitions and indicators of compromise (IOCs) and the relationship between them.

## Alert definitions
Alert definitions are contextual attributes that can be used collectively to identify early clues on a possible cybersecurity attack. These indicators are typically a combination of activities, characteristics, and actions taken by an attacker to successfully achieve the objective of an attack. Monitoring these combinations of attributes is critical in gaining a vantage point against attacks and possibly interfering with the chain of events before an attacker's objective is reached.

## Indicators of compromise (IOC)
IOCs are individually-known malicious events that indicate that a network or device has already been breached. Unlike alert definitions, these indicators are considered as evidence of a breach. They are often seen after an attack has already been carried out and the objective has been reached, such as exfiltration. Keeping track of IOCs is also important during forensic investigations. Although it might not provide the ability to intervene with an attack chain, gathering these indicators can be useful in creating better defenses for possible future attacks.

## Relationship between alert definitions and IOCs
In the context of Microsoft Defender ATP, alert definitions are containers for IOCs and defines the alert, including the metadata that is raised in case of a specific IOC match. Various metadata is provided as part of the alert definitions. Metadata such as alert definition name of attack, severity, and description is provided along with other options.

Each IOC defines the concrete detection logic based on its type and value as well as its action, which determines how it is matched. It is bound to a specific alert definition that defines how a detection is displayed as an alert on the Microsoft Defender ATP console.

Here is an example of an IOC:
- Type: Sha1
- Value:  92cfceb39d57d914ed8b14d0e37643de0797ae56
- Action: Equals

IOCs have a many-to-one relationship with alert definitions such that an alert definition can have many IOCs that correspond to it.

## In this section

Topic | Description
:---|:---
[Pull detections to your SIEM tools](configure-siem.md)| Learn about different ways to pull detections.
[Enable SIEM integration in Microsoft Defender ATP](enable-siem-integration.md)| Learn about enabling the SIEM integration feature in the **Settings** page in the portal so that you can use and generate the required information to configure supported SIEM tools.
[Configure Splunk to pull Microsoft Defender ATP detections](configure-splunk.md)| Learn about installing the REST API Modular Input App and other configuration settings to enable Splunk to pull Microsoft Defender ATP detections.
[Configure HP ArcSight to pull Microsoft Defender ATP detections](configure-arcsight.md)| Learn about installing the HP ArcSight REST FlexConnector package and the files you need to configure ArcSight to pull Microsoft Defender ATP detections.
[Microsoft Defender ATP Detection fields](api-portal-mapping.md) | Understand what data fields are exposed as part of the alerts API and how they map to Microsoft Defender Security Center.
[Pull Microsoft Defender ATP detections using REST API](pull-alerts-using-rest-api.md) | Use the Client credentials OAuth 2.0 flow to pull detections from Microsoft Defender ATP using REST API.
[Troubleshoot SIEM tool integration issues](troubleshoot-siem.md) | Address issues you might encounter when using the SIEM integration feature.



## Related topics
- [Manage indicators](manage-indicators.md)
