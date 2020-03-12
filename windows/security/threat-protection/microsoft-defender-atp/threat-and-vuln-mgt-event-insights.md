---
title: Exposure score
description: The Microsoft Defender ATP exposure score reflects how vulnerable your organization is to cybersecurity threats.
keywords: exposure score, mdatp exposure score, mdatp tvm exposure score, organization exposure score, tvm organization exposure score, threat and vulnerability management, Microsoft Defender Advanced Threat Protection
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---
# Event Insights

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Event insights is visible in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md) of the Microsoft Defender Security Center.

The goal of event insights is to tell the story of the exposure score.

- Quickly understand and identify high-level takeaways about the state of security in your organization.
- Detect and respond to areas that require investigation or action to improve the current state.
- Communicate with peers and management about the impact of security efforts.

Reduce the exposure score by addressing what needs to be remediated based on the prioritized security recommendations. See [Security recommendations](tvm-security-recommendation.md) for details.

![Exposure score card](images/event-insights-page.png)

## Event types

The following event types reflect time-stamped events that impact the score:

- Exploit added to an exploit kit
- Exploit was verified
- New public exploit
- New vulnerability

## Icons

- A vulnerability was published
- A vulnerability became exploitable
- Verified exploit
- Exploit added to an exploit kit

## From figma

- Weaknesses (weakness discovered, weakness updated, weakness resolved)
- New recommendation created
- New threat
- Exploitation attempt

### Weakness discovered

New weakness was discovered (score reduced) on a software. This event is triggered if one of the following occur:

- In the last 24 hours "X vulnerabilities" affected "Y machines"
- New vulnerabilities were discovered (CVE) on a specific product
- A (dynamic) configuration has been broken (e.g. AV stopped updating)
- A (static) configuration has changed from configured to misconfigured state
- New vulnerable software was installed
- New vulnerable software was discovered
- New machines were onboarded to ATP and introduced new vulnerabilities

### Weakness updated

Existing weakness was updated with new information (score reduced). This event is triggered if one of the following occur:

- In the last 24 hours "X vulnerabilities" became exploitable
- A vulnerability was updated with an exploit
- An exploit is now part of an exploit kit  
- A vulnerability has become a threat  

### Weakness resolved

Existing weakness was remediated or mitigated (score increase). This event is triggered if one of the following occur:

- A remediation task was completed (or was marked as completed)
- A remediation task was marked as dismissed (business justification)
- A remediation or mitigation took place
- A vulnerable application was removed/uninstalled (as part of a remediation request or manually by the user)

## Related topics

- [Supported operating systems and platforms](tvm-supported-os.md)
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) 
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Configuration score](configuration-score.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [Configure data access for Threat & Vulnerability Management roles](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
- [Score APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/score)
- [Software APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/software)
- [Vulnerability APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/vulnerability)
- [Recommendation APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/vulnerability)
