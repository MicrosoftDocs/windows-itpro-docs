---
title: Threat Protection (Windows 10)
description: Microsoft Defender for Endpoint is a unified platform for preventative protection, post-breach detection, automated investigation, and response.
keywords: threat protection, Microsoft Defender Advanced Threat Protection, attack surface reduction, next-generation protection, endpoint detection and response, automated investigation and response, microsoft threat experts, Microsoft Secure Score for Devices, advanced hunting, cyber threat hunting, web threat protection
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
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
ms.technology: mde
---

# Threat Protection

**Applies to:**
- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)
- [Microsoft 365 Defender](/microsoft-365/security/defender/microsoft-365-defender)

[Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint) is a unified platform for preventative protection, post-breach detection, automated investigation, and response. Defender for Endpoint protects endpoints from cyber threats, detects advanced attacks and data breaches, automates security incidents, and improves security posture.

**Applies to:**
- [Microsoft Defender for Endpoint](/microsoft-365/security/defender-endpoint/)

> [!TIP]
> Enable your users to access cloud services and on-premises applications with ease and enable modern management capabilities for all devices. For more information, see [Secure your remote workforce](/enterprise-mobility-security/remote-work/). 

<center><h2>Microsoft Defender for Endpoint</center></h2>
<table>
<tr>
<td><a href="#tvm"><center><img src="images/TVM_icon.png" alt="threat and vulnerability icon"> <br><b>Threat & vulnerability management</b></center></a></td>
<td><a href="#asr"><center><img src="images/asr-icon.png" alt="attack surface reduction icon"> <br><b>Attack surface reduction</b></center></a></td>
<td><center><a href="#ngp"><img src="images/ngp-icon.png" alt="next generation protection icon"><br> <b>Next-generation protection</b></a></center></td>
<td><center><a href="#edr"><img src="images/edr-icon.png" alt="endpoint detection and response icon"><br> <b>Endpoint detection and response</b></a></center></td>
<td><center><a href="#ai"><img src="images/air-icon.png" alt="automated investigation and remediation icon"><br> <b>Automated investigation and remediation</b></a></center></td>
<td><center><a href="#mte"><img src="images/mte-icon.png" alt="microsoft threat experts icon"><br> <b>Microsoft Threat Experts</b></a></center></td>
</tr>
<tr>
<td colspan="7">
<a href="#apis"><center><b>Centralized configuration and administration, APIs</a></b></center></td>
</tr>
<tr>
<td colspan="7"><a href="#mtp"><center><b>Microsoft 365 Defender</a></center></b></td>
</tr>
</table>
<br>

<a name="tvm"></a>


>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4obJq]

**[Threat & vulnerability management](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)**<br>
This built-in capability uses a game-changing risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.

- [Threat & vulnerability management overview](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)
- [Get started](/microsoft-365/security/defender-endpoint/tvm-prerequisites)
- [Access your security posture](/microsoft-365/security/defender-endpoint/tvm-dashboard-insights)
- [Improve your security posture and reduce risk](/microsoft-365/security/defender-endpoint/tvm-security-recommendation)
- [Understand vulnerabilities on your devices](/microsoft-365/security/defender-endpoint/tvm-software-inventory)

<a name="asr"></a>

**[Attack surface reduction](/microsoft-365/security/defender-endpoint/overview-attack-surface-reduction)**<br>
The attack surface reduction set of capabilities provide the first line of defense in the stack. By ensuring configuration settings are properly set and exploit mitigation techniques are applied, these set of capabilities resist attacks and exploitation.

- [Hardware based isolation](/microsoft-365/security/defender-endpoint/overview-hardware-based-isolation)
- [Application control](windows-defender-application-control/windows-defender-application-control.md)
- [Device control](device-guard/introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control.md)
- [Exploit protection](/microsoft-365/security/defender-endpoint/exploit-protection)
- [Network protection](/microsoft-365/security/defender-endpoint/network-protection), [web protection](/microsoft-365/security/defender-endpoint/web-protection-overview)
- [Controlled folder access](/microsoft-365/security/defender-endpoint/controlled-folders)
- [Network firewall](windows-firewall/windows-firewall-with-advanced-security.md)
- [Attack surface reduction rules](/microsoft-365/security/defender-endpoint/attack-surface-reduction)

<a name="ngp"></a>

**[Next-generation protection](microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10.md)**<br>
To further reinforce the security perimeter of your network, Microsoft Defender for Endpoint uses next-generation protection designed to catch all types of emerging threats.

- [Behavior monitoring](./microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus.md)
- [Cloud-based protection](./microsoft-defender-antivirus/configure-protection-features-microsoft-defender-antivirus.md)
- [Machine learning](./microsoft-defender-antivirus/utilize-microsoft-cloud-protection-microsoft-defender-antivirus.md)
- [URL Protection](./microsoft-defender-antivirus/configure-network-connections-microsoft-defender-antivirus.md)
- [Automated sandbox service](./microsoft-defender-antivirus/configure-block-at-first-sight-microsoft-defender-antivirus.md)

<a name="edr"></a>

**[Endpoint detection and response](/microsoft-365/security/defender-endpoint/overview-endpoint-detection-response)**<br>
Endpoint detection and response capabilities are put in place to detect, investigate, and respond to intrusion attempts and active breaches. With Advanced hunting, you have a query-based threat-hunting tool that lets your proactively find breaches and create custom detections.

- [Alerts](/microsoft-365/security/defender-endpoint/alerts-queue)
- [Historical endpoint data](/microsoft-365/security/defender-endpoint/investigate-machines#timeline)
- [Response orchestration](/microsoft-365/security/defender-endpoint/respond-machine-alerts)
- [Forensic collection](/microsoft-365/security/defender-endpoint/respond-machine-alerts#collect-investigation-package-from-devices)
- [Threat intelligence](/microsoft-365/security/defender-endpoint/threat-indicator-concepts)
- [Advanced detonation and analysis service](/microsoft-365/security/defender-endpoint/respond-file-alerts#deep-analysis)
- [Advanced hunting](/microsoft-365/security/defender-endpoint/advanced-hunting-overview)
    - [Custom detections](/microsoft-365/security/defender-endpoint/overview-custom-detections)

<a name="ai"></a>

**[Automated investigation and remediation](/microsoft-365/security/defender-endpoint/automated-investigations)**<br>
In addition to quickly responding to advanced attacks, Microsoft Defender for Endpoint offers automated investigation and remediation capabilities that help reduce the volume of alerts in minutes at scale.

- [Get an overview of automated investigation and remediation](/microsoft-365/security/defender-endpoint/automated-investigations)
- [Learn about automation levels](/microsoft-365/security/defender-endpoint/automation-levels)
- [Configure automated investigation and remediation in Defender for Endpoint](/microsoft-365/security/defender-endpoint/configure-automated-investigations-remediation)
- [Visit the Action center to see remediation actions](/microsoft-365/security/defender-endpoint/auto-investigation-action-center)
- [Review remediation actions following an automated investigation](/microsoft-365/security/defender-endpoint/manage-auto-investigation)

<a name="mte"></a>

**[Microsoft Threat Experts](/microsoft-365/security/defender-endpoint/microsoft-threat-experts)**<br>
Microsoft Defender for Endpoint's new managed threat hunting service provides proactive hunting, prioritization, and additional context and insights. Microsoft Threat Experts further empowers Security Operation Centers (SOCs) to identify and respond to threats quickly and accurately.

- [Targeted attack notification](/microsoft-365/security/defender-endpoint/microsoft-threat-experts)
- [Experts-on-demand](/microsoft-365/security/defender-endpoint/microsoft-threat-experts)
- [Configure your Microsoft 365 Defender managed hunting service](/microsoft-365/security/defender-endpoint/configure-microsoft-threat-experts)

<a name="apis"></a>

**[Centralized configuration and administration, APIs](/microsoft-365/security/defender-endpoint/management-apis)**<br>
Integrate Microsoft Defender for Endpoint into your existing workflows.
- [Onboarding](/microsoft-365/security/defender-endpoint/onboard-configure)
- [API and SIEM integration](/microsoft-365/security/defender-endpoint/configure-siem)
- [Exposed APIs](/microsoft-365/security/defender-endpoint/apis-intro)
- [Role-based access control (RBAC)](/microsoft-365/security/defender-endpoint/rbac)
- [Reporting and trends](/microsoft-365/security/defender-endpoint/threat-protection-reports)

<a name="integration"></a>
**[Integration with Microsoft solutions](/microsoft-365/security/defender-endpoint/threat-protection-integration)** <br>
 Microsoft Defender for Endpoint directly integrates with various Microsoft solutions, including:
- Intune
- Microsoft Defender for Office 365
- Microsoft Defender for Identity
- Azure Defender
- Skype for Business
- Microsoft Cloud App Security

<a name="mtp"></a>
**[Microsoft 365 Defender](/microsoft-365/security/mtp/microsoft-threat-protection)**<br>
 With Microsoft 365 Defender, Microsoft Defender for Endpoint and various Microsoft security solutions form a unified pre- and post-breach enterprise defense suite that natively integrates across endpoint, identity, email, and applications to detect, prevent, investigate, and automatically respond to sophisticated attacks.