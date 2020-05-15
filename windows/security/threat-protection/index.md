---
title: Threat Protection (Windows 10)
description: Learn how Microsoft Defender ATP helps protect against threats.
keywords: threat protection, Microsoft Defender Advanced Threat Protection, attack surface reduction, next generation protection, endpoint detection and response, automated investigation and response, microsoft threat experts, configuration score, advanced hunting, cyber threat hunting, web threat protection
search.product: eADQiWindows 10XVcnh
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

# Threat Protection
[Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559) is a unified platform for preventative protection, post-breach detection, automated investigation, and response. Microsoft Defender ATP protects endpoints from cyber threats; detects advanced attacks and data breaches, automates security incidents and improves security posture.

>[!TIP]
> Enable your users to access cloud services and on-premises applications with ease and enable modern management capabilities for all devices. For more information, see [Secure your remote workforce](https://docs.microsoft.com/enterprise-mobility-security/remote-work/). 

<center><h2>Microsoft Defender ATP</center></h2>
<table>
<tr>
<td><a href="#tvm"><center><img src="images/TVM_icon.png"> <br><b>Threat & Vulnerability Management</b></center></a></td>
<td><a href="#asr"><center><img src="images/asr-icon.png"> <br><b>Attack surface reduction</b></center></a></td>
<td><center><a href="#ngp"><img src="images/ngp-icon.png"><br> <b>Next generation protection</b></a></center></td>
<td><center><a href="#edr"><img src="images/edr-icon.png"><br> <b>Endpoint detection and response</b></a></center></td>
<td><center><a href="#ai"><img src="images/air-icon.png"><br> <b>Automated investigation and remediation</b></a></center></td>
<td><center><a href="#mte"><img src="images/mte-icon.png"><br> <b>Microsoft Threat Experts</b></a></center></td>
</tr>
<tr>
<td colspan="7">
<a href="#apis"><center><b>Centralized configuration and administration, APIs</a></b></center></td>
</tr>
<tr>
<td colspan="7"><a href="#mtp"><center><b>Microsoft Threat Protection</a></center></b></td>
</tr>
</table>
<br>

<a name="tvm"></a>


>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4obJq]

**[Threat & Vulnerability Management](microsoft-defender-atp/next-gen-threat-and-vuln-mgt.md)**<br>
This built-in capability uses a game-changing risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.

- [Risk-based Threat & Vulnerability Management](microsoft-defender-atp/next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](microsoft-defender-atp/tvm-supported-os.md)
- [What's in the dashboard and what it means for my organization](microsoft-defender-atp/tvm-dashboard-insights.md)
- [Exposure score](microsoft-defender-atp/tvm-exposure-score.md)
- [Configuration score](microsoft-defender-atp/configuration-score.md)
- [Security recommendations](microsoft-defender-atp/tvm-security-recommendation.md)
- [Remediation](microsoft-defender-atp/tvm-remediation.md)
- [Software inventory](microsoft-defender-atp/tvm-software-inventory.md)
- [Weaknesses](microsoft-defender-atp/tvm-weaknesses.md)
- [Scenarios](microsoft-defender-atp/threat-and-vuln-mgt-scenarios.md)

<a name="asr"></a>

**[Attack surface reduction](microsoft-defender-atp/overview-attack-surface-reduction.md)**<br>
The attack surface reduction set of capabilities provide the first line of defense in the stack. By ensuring configuration settings are properly set and exploit mitigation techniques are applied, these set of capabilities resist attacks and exploitation.

- [Hardware based isolation](microsoft-defender-atp/overview-hardware-based-isolation.md)
- [Application control](windows-defender-application-control/windows-defender-application-control.md)
- [Device control](device-guard/introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control.md)
- [Exploit protection](microsoft-defender-atp/exploit-protection.md)
- [Network protection](microsoft-defender-atp/network-protection.md), [web protection](microsoft-defender-atp/web-protection-overview.md)
- [Controlled folder access](microsoft-defender-atp/controlled-folders.md)
- [Network firewall](windows-firewall/windows-firewall-with-advanced-security.md)
- [Attack surface reduction rules](microsoft-defender-atp/attack-surface-reduction.md)

<a name="ngp"></a>

**[Next generation protection](windows-defender-antivirus/windows-defender-antivirus-in-windows-10.md)**<br>
To further reinforce the security perimeter of your network, Microsoft Defender ATP uses next generation protection designed to catch all types of emerging threats.

- [Behavior monitoring](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-real-time-protection-windows-defender-antivirus)
- [Cloud-based protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-protection-features-windows-defender-antivirus)
- [Machine learning](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus)
- [URL Protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-network-connections-windows-defender-antivirus)
- [Automated sandbox service](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/configure-block-at-first-sight-windows-defender-antivirus)

<a name="edr"></a>

**[Endpoint detection and response](microsoft-defender-atp/overview-endpoint-detection-response.md)**<br>
Endpoint detection and response capabilities are put in place to detect, investigate, and respond to intrusion attempts and active breaches. With Advanced hunting, you have a query-based threat-hunting tool that lets your proactively find breaches and create custom detections.

- [Alerts](microsoft-defender-atp/alerts-queue.md)
- [Historical endpoint data](microsoft-defender-atp/investigate-machines.md#timeline)
- [Response orchestration](microsoft-defender-atp/response-actions.md)
- [Forensic collection](microsoft-defender-atp/respond-machine-alerts.md#collect-investigation-package-from-machines)
- [Threat intelligence](microsoft-defender-atp/threat-indicator-concepts.md)
- [Advanced detonation and analysis service](microsoft-defender-atp/respond-file-alerts.md#deep-analysis)
- [Advanced hunting](microsoft-defender-atp/advanced-hunting-overview.md)
    - [Custom detections](microsoft-defender-atp/overview-custom-detections.md)

<a name="ai"></a>

**[Automated investigation and remediation](microsoft-defender-atp/automated-investigations.md)**<br>
In conjunction with being able to quickly respond to advanced attacks, Microsoft Defender ATP offers automatic investigation and remediation capabilities that help reduce the volume of alerts in minutes at scale.

- [Automated investigation and remediation](microsoft-defender-atp/automated-investigations.md)
- [View details and results of automated investigations](microsoft-defender-atp/auto-investigation-action-center.md)
- [View and approve remediation actions](microsoft-defender-atp/manage-auto-investigation.md)

<a name="ss"></a>

**[Configuration Score](microsoft-defender-atp/configuration-score.md)**<br>
>[!NOTE]
> Secure score is now part of [Threat & Vulnerability Management](microsoft-defender-atp/next-gen-threat-and-vuln-mgt.md) as [Configuration score](microsoft-defender-atp/configuration-score.md).

Microsoft Defender ATP includes a configuration score to help you dynamically assess the security state of your enterprise network, identify unprotected systems, and take recommended actions to improve the overall security of your organization.
- [Configuration score](microsoft-defender-atp/configuration-score.md)
- [Threat analytics](microsoft-defender-atp/threat-analytics.md)

<a name="mte"></a>

**[Microsoft Threat Experts](microsoft-defender-atp/microsoft-threat-experts.md)**<br>
Microsoft Defender ATP's new managed threat hunting service provides proactive hunting, prioritization and additional context and insights that further empower Security Operation Centers (SOCs) to identify and respond to threats quickly and accurately.

- [Targeted attack notification](microsoft-defender-atp/microsoft-threat-experts.md)
- [Experts-on-demand](microsoft-defender-atp/microsoft-threat-experts.md)
- [Configure your Microsoft Threat Protection managed hunting service](microsoft-defender-atp/configure-microsoft-threat-experts.md)

<a name="apis"></a>

**[Centralized configuration and administration, APIs](microsoft-defender-atp/management-apis.md)**<br>
Integrate Microsoft Defender Advanced Threat Protection into your existing workflows.
- [Onboarding](microsoft-defender-atp/onboard-configure.md)
- [API and SIEM integration](microsoft-defender-atp/configure-siem.md)
- [Exposed APIs](microsoft-defender-atp/apis-intro.md)
- [Role-based access control (RBAC)](microsoft-defender-atp/rbac.md)
- [Reporting and trends](microsoft-defender-atp/powerbi-reports.md)

<a name="integration"></a>
**[Integration with Microsoft solutions](microsoft-defender-atp/threat-protection-integration.md)** <br>
 Microsoft Defender ATP directly integrates with various Microsoft solutions, including:
- Intune
- Office 365 ATP
- Azure ATP
- Azure Security Center
- Skype for Business
- Microsoft Cloud App Security

<a name="mtp"></a>
**[Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)**<br>
 With Microsoft Threat Protection, Microsoft Defender ATP and various Microsoft security solutions form a unified pre- and post-breach enterprise defense suite that natively integrates across endpoint, identity, email, and applications to detect, prevent, investigate and automatically respond to sophisticated attacks.
