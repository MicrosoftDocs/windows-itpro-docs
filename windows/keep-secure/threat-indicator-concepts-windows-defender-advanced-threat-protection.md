---
title: Understand threat indicators in Windows Defender ATP
description: Understand the concepts around threat indicators in Windows Defender Advanced Threat Protection so that you can effectively create custom indicators for your organization.
keywords: threat indicators, alert definitions, indicators of compromise, concepts
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Understand threat indicators

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Advanced cybersecurity attacks comprise of multiple complex malicious events, attributes, and contextual information. Identifying and deciding which of these activities qualify as suspicious can be a challenging task. Your knowledge of known attributes and abnormal activities specific to your industry is fundamental in knowing when to call an observed behavior as suspicious.

With Windows Defender ATP, you can create custom threat indicators that can help you keep track of possible attack activities in your organization. You can flag suspicious events to piece together clues and possibly stop an attack chain. These custom indicators will only appear in your organization and will flag events that you set it to track.

Before creating custom threat indicators, it's important to know the concepts behind Alert definitions and Indicators of Compromise (IOCs) and the relationship between them.

## Alert definitions
Alert definitions are contextual attributes that can be used collectively to identify early clues on a possible cybersecurity attack. These indicators are typically a combination of events, tools, and actions taken by an attacker to successfully achieve the objective of an attack. Monitoring these combinations of attributes is critical in gaining a vantage point against attacks and possibly intervening the chain of events before an attacker's objective is reached.

## Indicators of Compromise (IOC)
IOCs are individual known malicious events that indicate that a network or machine has already been breached. Unlike Alert definitions, these indicators are considered as evidence of a breach. They are often seen after an attack has already been carried out and the objective has been reached, such as exfiltration. Keeping track of IOCs is also important during forensic investigations. Although it might not provide the ability to intervene an attack chain, gathering these indicators can be useful in creating better defenses for possible future attacks.

## Relationship between Alert definitions and IOCs
In the context of Windows Defender ATP, Alert definitions are containers for IOCs and defines the alert, including the metadata that is raised in case of a specific IOC match. Various metadata is provided as part of the Alert definitions. Metadata such as Alert definition name of attack, severity, and description is provided along with other options. For more information on available metadata options, see [Custom TI API metadata](custom-ti-api-windows-defender-advanced-threat-protection.md#custom-ti-api-metadata).

IOCs define the actual concrete detection logic based on type, value and detection function and the corresponding Alert definition ID to be identified with. Each IOC has a type, value, and an action for example:
  - Type: Sha1
  - Value:  92cfceb39d57d914ed8b14d0e37643de0797ae56
  - Action: Equals

IOCs have a many-to-one relationship with Alert definitions such that an Alert definition can have many IOCs that correspond to it.

## Related topic
- [Create custom threat indicators using REST API](custom-ti-api-windows-defender-advanced-threat-protection.md)
