---
title: Threat and vulnerability management
description: This new capability uses a game-changing risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.
keywords: threat & vulnerability management, threat and vulnerability management, MDATP TVM, MDATP-TVM, vulnerability management, vulnerability assessment, threat and vulnerability scanning, secure configuration assessment, microsoft defender atp, microsoft defender atp, endpoint vulnerabilities, next generation
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: overview
ms.technology: mde
---

# Threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

Effectively identifying, assessing, and remediating endpoint weaknesses is pivotal in running a healthy security program and reducing organizational risk. Threat and vulnerability management serves as an infrastructure for reducing organizational exposure, hardening endpoint surface area, and increasing organizational resilience.

Discover vulnerabilities and misconfigurations in real time with sensors, and without the need of agents or periodic scans. It prioritizes vulnerabilities based on the threat landscape, detections in your organization, sensitive information on vulnerable devices, and business context.

Watch this video for a quick overview of threat and vulnerability management.

>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4mLsn]

## Bridging the workflow gaps

Threat and vulnerability management is built in, real time, and cloud powered. It's fully integrated with Microsoft endpoint security stack, the Microsoft Intelligent Security Graph, and the application analytics knowledge base.  

Vulnerability management is the first solution in the industry to bridge the gap between security administration and IT administration during remediation process. Create a security task or ticket by integrating with Microsoft Intune and Microsoft Endpoint Configuration Manager.

### Real-time discovery

To discover endpoint vulnerabilities and misconfiguration, threat and vulnerability management uses the same agentless built-in Defender for Endpoint sensors to reduce cumbersome network scans and IT overhead.

It also provides:

- **Real-time device inventory** - Devices onboarded to Defender for Endpoint automatically report and push vulnerability and security configuration data to the dashboard.
- **Visibility into software and vulnerabilities** - Optics into the organization's software inventory, and software changes like installations, uninstalls, and patches. Newly discovered vulnerabilities are reported with actionable mitigation recommendations for 1st and 3rd party applications.
- **Application runtime context** - Visibility on application usage patterns for better prioritization and decision-making.
- **Configuration posture** - Visibility into organizational security configuration or misconfigurations. Issues are reported in the dashboard with actionable security recommendations.

### Intelligence-driven prioritization

Threat and vulnerability management helps customers prioritize and focus on the weaknesses that pose the most urgent and the highest risk to the organization. It fuses security recommendations with dynamic threat and business context:

- **Exposing emerging attacks in the wild** - Dynamically aligns the prioritization of security recommendations. Threat and vulnerability management focuses on vulnerabilities currently being exploited in the wild and emerging threats that pose the highest risk.
- **Pinpointing active breaches** - Correlates threat and vulnerability management and EDR insights to prioritize vulnerabilities being exploited in an active breach within the organization.
- **Protecting high-value assets** - Identify the exposed devices with business-critical applications, confidential data, or high-value users.

### Seamless remediation

Threat and vulnerability management allows security administrators and IT administrators to collaborate seamlessly to remediate issues.

- **Remediation requests sent to IT** - Create a remediation task in Microsoft Intune from a specific security recommendation. We plan to expand this capability to other IT security management platforms.
- **Alternate mitigations** - Gain insights on additional mitigations, such as configuration changes that can reduce risk associated with software vulnerabilities.
- **Real-time remediation status** - Real-time monitoring of the status and progress of remediation activities across the organization.

## Threat and vulnerability management walk-through

Watch this video for a comprehensive walk-through of threat and vulnerability management.

>[!VIDEO https://aka.ms/MDATP-TVM-Interactive-Guide]

## Navigation pane

Area | Description
:---|:---
**Dashboard**   | Get a high-level view of the organization exposure score, Microsoft Secure Score for Devices, device exposure distribution, top security recommendations, top vulnerable software, top remediation activities, and top exposed device data.
[**Security recommendations**](tvm-security-recommendation.md) | See the list of security recommendations and related threat information. When you select an item from the list, a flyout panel opens with vulnerability details, a link to open the software page, and remediation and exception options. You can also open a ticket in Intune if your devices are joined through Azure Active Directory and you've enabled your Intune connections in Defender for Endpoint.
[**Remediation**](tvm-remediation.md) | See remediation activities you've created and recommendation exceptions.
[**Software inventory**](tvm-software-inventory.md) | See the list of vulnerable software in your organization, along with weakness and threat information.
[**Weaknesses**](tvm-weaknesses.md) | See the list of common vulnerabilities and exposures (CVEs) in your organization.
[**Event timeline**](threat-and-vuln-mgt-event-timeline.md) | View events that may impact your organization's risk.

## APIs

Run threat and vulnerability management-related API calls to automate vulnerability management workflows. Learn more from this [Microsoft Tech Community blog post](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/threat-amp-vulnerability-management-apis-are-now-generally/ba-p/1304615).

See the following articles for related APIs:

- [Supported Microsoft Defender for Endpoint APIs](exposed-apis-list.md)
- [Machine APIs](machine.md)
- [Recommendation APIs](vulnerability.md)
- [Score APIs](score.md)
- [Software APIs](software.md)
- [Vulnerability APIs](vulnerability.md)
- [List vulnerabilities by machine and software](get-all-vulnerabilities-by-machines.md)

## See also

- [Supported operating systems and platforms](tvm-supported-os.md)
- [Threat and vulnerability management dashboard](tvm-dashboard-insights.md)
- [BLOG: Microsoft's Threat & Vulnerability Management now helps thousands of customers to discover, prioritize, and remediate vulnerabilities in real time](https://www.microsoft.com/security/blog/2019/07/02/microsofts-threat-vulnerability-management-now-helps-thousands-of-customers-to-discover-prioritize-and-remediate-vulnerabilities-in-real-time/)
