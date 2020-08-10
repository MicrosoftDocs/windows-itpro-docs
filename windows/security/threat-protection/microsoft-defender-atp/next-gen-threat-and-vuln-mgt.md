---
title: Threat and vulnerability management
description: This new capability uses a game-changing risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.
keywords: threat & vulnerability management, threat and vulnerability management, MDATP TVM, MDATP-TVM, vulnerability management, vulnerability assessment, threat and vulnerability scanning, secure configuration assessment, microsoft defender atp, microsoft defender atp, endpoint vulnerabilities, next generation
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

# Threat and vulnerability management

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

Effectively identifying, assessing, and remediating endpoint weaknesses is pivotal in running a healthy security program and reducing organizational risk. Threat and vulnerability management serves as an infrastructure for reducing organizational exposure, hardening endpoint surface area, and increasing organizational resilience.

Discover vulnerabilities and misconfigurations in real time with sensors, and without the need of agents or periodic scans. It prioritizes vulnerabilities based on the threat landscape, detections in your organization, sensitive information on vulnerable devices, and business context.

Watch this video for a quick overview of threat and vulnerability management.

>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4mLsn]

## Bridging the workflow gaps

Threat and vulnerability management is built in, real time, and cloud powered. It is fully integrated with Microsoft endpoint security stack, the Microsoft Intelligent Security Graph, and the application analytics knowledge base.  

Vulnerability management is the first solution in the industry to bridge the gap between security administration and IT administration during remediation process. It does so by creating a security task or ticket through integration with Microsoft Intune and Microsoft Endpoint Configuration Manager.

It provides the following solutions to frequently cited gaps across security operations, security administration, and IT administration workflows and communication.

- Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities
- Linked device vulnerability and security configuration assessment data in the context of exposure discovery
- Built-in remediation processes through Microsoft Intune and Configuration Manager

### Real-time discovery

To discover endpoint vulnerabilities and misconfiguration, threat and vulnerability management uses the same agentless built-in Microsoft Defender ATP sensors to reduce cumbersome network scans and IT overhead, and provides:

- Real-time device inventory. Devices onboarded to Microsoft Defender ATP automatically report and push vulnerability and security configuration data to the dashboard.
- Visibility into software and vulnerabilities. Optics into the organization's software inventory, and software changes like installations, uninstalls, and patches. Newly discovered vulnerabilities are reported with actionable mitigation recommendations for 1st and 3rd party applications.
- Application runtime context. Visibility on application usage patterns for better prioritization and decision-making.
- Configuration posture. Visibility into organizational security configuration or misconfigurations. Issues are reported in the dashboard with actionable security recommendations.

### Intelligence-driven prioritization

Threat and vulnerability management helps customers prioritize and focus on those weaknesses that pose the most urgent and the highest risk to the organization. Rather than using static prioritization by severity scores, threat and vulnerability management in Microsoft Defender ATP highlights the most critical weaknesses that need attention by fusing its security recommendations with dynamic threat and business context:

- Exposing emerging attacks in the wild. Through its advanced cyber data and threat analytics platform, threat and vulnerability management dynamically aligns the prioritization of its security recommendations to focus on vulnerabilities that are currently being exploited in the wild and emerging threats that pose the highest risk.
- Pinpointing active breaches. Microsoft Defender ATP correlates threat and vulnerability management and EDR insights to provide the unique ability to prioritize vulnerabilities that are currently being exploited in an active breach within the organization.
- Protecting high-value assets. Microsoft Defender ATP's integration with Azure Information Protection allows threat and vulnerability management to identify the exposed devices with business-critical applications, confidential data, or high-value users.

### Seamless remediation

Microsoft Defender ATP's threat and vulnerability management capability allows security administrators and IT administrators to collaborate seamlessly to remediate issues.

- Remediation requests to IT. Through Microsoft Defender ATP's integration with Microsoft Intune and Microsoft Endpoint Configuration Manager, security administrators can create a remediation task in Microsoft Intune from the Security recommendation pages. We plan to expand this capability to other IT security management platforms.
- Alternate mitigations. Threat and vulnerability management provides insights on additional mitigations, such as configuration changes that can reduce risk associated with software vulnerabilities.
- Real-time remediation status. Microsoft Defender ATP provides real-time monitoring of the status and progress of remediation activities across the organization.

## Reduce organizational risk with threat and vulnerability management

Watch this video for a comprehensive walk-through of threat and vulnerability management.

>[!VIDEO https://aka.ms/MDATP-TVM-Interactive-Guide]

## Before you begin

Ensure that your devices:

- Are onboarded to Microsoft Defender Advanced Threat Protection
- Run with Windows 10 1709 (Fall Creators Update) or later

>[!NOTE]
>Threat and vulnerability management can also scan devices that run on Windows 7 and Windows Server 2019 operating systems and detects vulnerabilities addressed in patch Tuesday.

- Have the following mandatory updates installed and deployed in your network to boost your vulnerability assessment detection rates:

> Release | Security update KB number and link
> :---|:---
> Windows 10 Version 1709 | [KB4493441](https://support.microsoft.com/help/4493441/windows-10-update-kb4493441) and [KB 4516071](https://support.microsoft.com/help/4516071/windows-10-update-kb4516071)
> Windows 10 Version 1803 | [KB4493464](https://support.microsoft.com/help/4493464) and [KB 4516045](https://support.microsoft.com/help/4516045/windows-10-update-kb4516045)
> Windows 10 Version 1809 | [KB 4516077](https://support.microsoft.com/help/4516077/windows-10-update-kb4516077)
> Windows 10 Version 1903 | [KB 4512941](https://support.microsoft.com/help/4512941/windows-10-update-kb4512941)

- Are onboarded to [Microsoft Intune](https://docs.microsoft.com/mem/intune/fundamentals/what-is-intune) and  [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/mem/configmgr/protect/deploy-use/endpoint-protection-configure). If you are using Configuration Manager, update your console to the latest version.
- Have at least one security recommendation that can be viewed in the device page
- Are tagged or marked as co-managed

## APIs

Run threat and vulnerability management-related API calls such as get your organization's threat exposure score or device secure score, software and device vulnerability inventory, software version distribution, device vulnerability information, security recommendation information. Learn more from this [Microsoft Tech Community blog post](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/threat-amp-vulnerability-management-apis-are-now-generally/ba-p/1304615).
See the following topics for related APIs:

- [Supported Microsoft Defender ATP APIs](exposed-apis-list.md)
- [Machine APIs](machine.md)
- [Recommendation APIs](vulnerability.md)
- [Score APIs](score.md)
- [Software APIs](software.md)
- [Vulnerability APIs](vulnerability.md)
- [List vulnerabilities by machine and software](get-all-vulnerabilities-by-machines.md)

## Related topics

- [Supported operating systems and platforms](tvm-supported-os.md)
- [Threat and vulnerability management dashboard](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Event timeline](threat-and-vuln-mgt-event-timeline.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [APIs](next-gen-threat-and-vuln-mgt.md#apis)
- [Configure data access for threat and vulnerability management roles](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
- [BLOG: Microsoft's Threat & Vulnerability Management now helps thousands of customers to discover, prioritize, and remediate vulnerabilities in real time](https://www.microsoft.com/security/blog/2019/07/02/microsofts-threat-vulnerability-management-now-helps-thousands-of-customers-to-discover-prioritize-and-remediate-vulnerabilities-in-real-time/)
