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
# Exposure score

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Your Exposure score is visible in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md) of the Microsoft Defender Security Center. It reflects how vulnerable your organization is to cybersecurity threats. Low exposure score means your machines are less vulnerable from exploitation.

The card gives you a high-level view of your exposure score trend over time. Any spikes in the chart gives you a visual indication of a high cybersecurity threat exposure that you can investigate further.

![Exposure score card](images/tvm_exp_score.png)

## How it works

Several factors affect your organization exposure score:

- Weakness discovered on the device
- Likelihood of a device getting breached
- Value of the device to the organization
- Relevant alert discovered on the device

Reduce the exposure score by addressing what needs to be remediated based on the prioritized security recommendations. See [Security recommendations](tvm-security-recommendation.md) for details.

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
