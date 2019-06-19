---
title: Remediation
description: Expand your visibility into the overall security configuration posture of your organization
keywords: configuration score, mdatp configuration score, secure score, security controls, improvement opportunities, security configuration score over time, security posture, baseline
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
ms.date: 04/11/2019
---
# Configuration score
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease�information](prerelease.md)]

>[!NOTE]
>  Secure score is now part of Threat & Vulnerability Management as Configuration score. We’ll keep the secure score page available for a few weeks. View the [Secure score](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/overview-secure-score-windows-defender-advanced-threat-protection) page.

The Microsoft Defender Advanced Threat Protection Configuration score gives you visibility and control over your organization's security posture based on security best practices.

Your configuration score widget shows the collective security configuration state of your machines across the following categories:
- Application
- Operating system
- Network
- Accounts
- Security controls

## How it works

What you'll see in the configuration score widget is the product of meticulous and ongoing vulnerability discovery process aggregated with configuration discovery assessments that continuously:
- Compare collected configurations to the collected benchmarks to discover misconfigured assets
- Map configurations to vulnerabilities that can be remediated or partially remediated (risk reduction) by remediating the misconfiguration
- Collect and maintain best practice configuration benchmarks (vendors, security feeds, internal research teams)
- Collect and monitor changes of security control configuration state from all assets

From the widget, you'd be able to see which security aspect require attention. You can click the configuration score categories and it will take you to the **Security recommendations** page to see more details and understand the context of the issue. From there, you can take action based on security benchmarks. 

## Improve your configuration score
The goal is to improve your configuration score by remediating the issues in the security recommendations list. You can filter the view based on:
- **Related component** - **Accounts**, **Application**, **Network**, **OS**, or **Security controls** 
- **Remediation type** - **Configuration change** or **Software update**

## Related topics
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) 
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
