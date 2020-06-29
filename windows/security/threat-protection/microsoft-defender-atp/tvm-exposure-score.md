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

Your Exposure score is visible in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md) of the Microsoft Defender Security Center. It reflects how vulnerable your organization is to cybersecurity threats. Low exposure score means your devices are less vulnerable from exploitation.

The card gives you a high-level view of your exposure score trend over time. Any spikes in the chart gives you a visual indication of a high cybersecurity threat exposure that you can investigate further.

![Exposure score card](images/tvm_exp_score.png)

## How it works

Threat & Vulnerability Management introduces a new exposure score metric, which visually represents how exposed your devices are to imminent threats.

The exposure score is continuously calculated on each device in the organization and influenced by the following factors:

- Weaknesses, such as vulnerabilities discovered on the device
- External and internal threats such as public exploit code and security alerts
- Likelihood of the device to get breached given its current security posture
- Value of the device to the organization given its role and content

The exposure score is broken down into the following levels:

- 0–29: low exposure score
- 30–69: medium exposure score
- 70–100: high exposure score

You can remediate the issues based on prioritized [security recommendations](tvm-security-recommendation.md) to reduce the exposure score. Each software has weaknesses that are transformed into recommendations and prioritized based on risk to the organization.

## Reduce your threat and vulnerability exposure

Lower your threat and vulnerability exposure by remediating [security recommendations](tvm-security-recommendation.md). Make the most impact to your exposure score by remediating the top security recommendations, which can be viewed in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md).

## Related topics

- [Threat & Vulnerability Management overview](next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md)
- [Configuration score](configuration-score.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [APIs](threat-and-vuln-mgt-scenarios.md#apis)
- [Configure data access for Threat & Vulnerability Management roles](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
