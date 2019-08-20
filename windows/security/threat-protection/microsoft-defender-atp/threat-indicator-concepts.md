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

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-threatindicator-abovefoldlink) 

Advanced cybersecurity attacks comprise of multiple complex malicious events, attributes, and contextual information. Identifying and deciding which of these activities qualify as suspicious can be a challenging task. Your knowledge of known attributes and abnormal activities specific to your industry is fundamental in knowing when to call an observed behavior as suspicious.

With Microsoft Defender ATP, you can create custom threat alerts that can help you keep track of possible attack activities in your organization. You can flag suspicious events to piece together clues and possibly stop an attack chain. These custom threat alerts will only appear in your organization and will flag events that you set it to track.

Before creating custom threat alerts, it's important to know the concepts behind alert definitions and indicators of compromise (IOCs) and the relationship between them.

## Alert definitions
Alert definitions are contextual attributes that can be used collectively to identify early clues on a possible cybersecurity attack. These indicators are typically a combination of activities, characteristics, and actions taken by an attacker to successfully achieve the objective of an attack. Monitoring these combinations of attributes is critical in gaining a vantage point against attacks and possibly interfering with the chain of events before an attacker's objective is reached.

## Indicators of compromise (IOC)
IOCs are individually-known malicious events that indicate that a network or machine has already been breached. Unlike alert definitions, these indicators are considered as evidence of a breach. They are often seen after an attack has already been carried out and the objective has been reached, such as exfiltration. Keeping track of IOCs is also important during forensic investigations. Although it might not provide the ability to intervene with an attack chain, gathering these indicators can be useful in creating better defenses for possible future attacks.

## Relationship between alert definitions and IOCs
In the context of Microsoft Defender ATP, alert definitions are containers for IOCs and defines the alert, including the metadata that is raised in case of a specific IOC match. Various metadata is provided as part of the alert definitions. Metadata such as alert definition name of attack, severity, and description is provided along with other options. For more information on available metadata options, see [Threat Intelligence API metadata](custom-ti-api.md#threat-intelligence-api-metadata).

Each IOC defines the concrete detection logic based on its type and value as well as its action, which determines how it is matched. It is bound to a specific alert definition that defines how a detection is displayed as an alert on the Microsoft Defender ATP console.

Here is an example of an IOC:
- Type: Sha1
- Value:  92cfceb39d57d914ed8b14d0e37643de0797ae56
- Action: Equals

IOCs have a many-to-one relationship with alert definitions such that an alert definition can have many IOCs that correspond to it.

## Related topics
- [Enable the custom threat intelligence API in Microsoft Defender ATP](enable-custom-ti.md)
- [Create custom alerts using the threat intelligence API](custom-ti-api.md)
- [PowerShell code examples for the custom threat intelligence API](powershell-example-code.md)
- [Python code examples for the custom threat intelligence API](python-example-code.md)
- [Experiment with custom threat intelligence alerts](experiment-custom-ti.md)
- [Troubleshoot custom threat intelligence issues](troubleshoot-custom-ti.md)
