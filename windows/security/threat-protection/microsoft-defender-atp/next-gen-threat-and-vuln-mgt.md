---
title: Next-generation Threat & Vulnerability Management
description: This new capability uses a game-changing risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.
keywords: threat and vulnerability management, MDATP-TVM, vulnerability management, threat and vulnerability scanning 
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
---

# Threat & Vulnerability Management
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](prerelease.md)]

Effectively identifying, assessing, and remediating endpoint weaknesses is pivotal in running a healthy security program and reducing organizational risk. Threat & Vulnerability Management serves as an infrastructure for reducing organizational exposure, hardening endpoint surface area, and increasing organizational resilience. 

It helps organizations discover vulnerabilities and misconfigurations in real-time, based on sensors, without the need of agents or periodic scans. It prioritizes vulnerabilities based on the threat landscape, detections in your organization, sensitive information on vulnerable devices, and business context.

## Next-generation capabilities 
Threat & Vulnerability Management is built-in, real-time, cloud-powered, fully integrated with Microsoft endpoint security stack, the Microsoft Intelligent Security Graph, and the application analytics knowledgebase.  

It is the first solution in the industry to bridge the gap between Security Administion and IT Administration during remediation process. It does so by creating a security task or ticket through integration with Microsoft Intune and Microsoft System Center Configuration Manager (SCCM).

It provides the following solutions to frequently-cited gaps across security operations, security administration, and IT administration workflows and communication. 
- Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities
- Linked machine vulnerability and security configuration assessment data in the context of exposure discovery
- Built-in remediation processes through Microsoft Intune and Microsoft System Center Configuration Manager 

### Real-time discovery
 
To discover endpoint vulnerabilities and misconfiguration, Threat & Vulnerability Management uses the same agentless built-in Microsoft Defender ATP sensors to reduce cumbersome network scans and IT overhead, and provides:
- Real-time device inventory. Devices onboarded to Microsoft Defender ATP automatically report and push vulnerability and security configuration data to the dashboard.
- Visibility into software and vulnerabilities. Optics into the organization’s software inventory, and software changes like installations, uninstallations, and patches. Newly discovered vulnerabilities are reported with actionable mitigation recommendations for 1st and 3rd party applications.
- Application runtime context. Visibility on application usage patterns for better prioritization and decision-making.
- Configuration posture. Visibility into organizational security configuration or misconfigurations. Issues are reported in the dashboard with actionable security recommendations.
 
### Intelligence-driven prioritization
 
Threat & Vulnerability Management helps customers prioritize and focus on those weaknesses that pose the most urgent and the highest risk to the organization. Rather than using static prioritization by severity scores, Threat & Vulnerability Management in Microsoft Defender ATP highlights the most critical weaknesses that need attention by fusing its security recommendations with dynamic threat and business context:
- Exposing emerging attacks in the wild. Through its advanced cyber data and threat analytics platform, Threat & Vulnerability Management dynamically aligns the prioritization of its security recommendations to focus on vulnerabilities that are currently being exploited in the wild and emerging threats that pose the highest risk.
- Pinpointing active breaches. Microsoft Defender ATP correlates Threat & Vulnerability Management and EDR insights to provide the unique ability to prioritize vulnerabilities that are currently being exploited in an active breach within the organization.
- Protecting high-value assets. Microsoft Defender ATP’s integration with Azure Information Protection allows Threat & Vulnerability Management to identify the exposed machines with business-critical applications, confidential data, or high-value users.
 
### Seamless remediation
 
Microsoft Defender ATP’s Threat & Vulnerability Management allows security administrators and IT administrators to collaborate seamlessly to remediate issues.
- Remediation requests to IT. Through Microsoft Defender ATP’s integration with Microsoft Intune and System Center Configuration Manager (SCCM), security administrators can create a remediation task in Microsoft Intune from the Security recommendation pages. We plan to expand this capability to other IT security management platforms. 
- Alternate mitigations. Threat & Vulnerability Management provides insights on additional mitigations, such as configuration changes that can reduce risk associated with software vulnerabilities.
- Real-time remediation status. Microsoft Defender ATP provides real-time monitoring of the status and progress of remediation activities across the organization.

## Related topics
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Configuration score](configuration-score.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
