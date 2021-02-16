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
[Microsoft Defender for Endpoint](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/microsoft-defender-endpoint) is a unified platform for preventative protection, post-breach detection, automated investigation, and response. Defender for Endpoint protects endpoints from cyber threats, detects advanced attacks and data breaches, automates security incidents, and improves security posture.

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

> [!TIP]
> Enable your users to access cloud services and on-premises applications with ease and enable modern management capabilities for all devices. For more information, see [Secure your remote workforce](https://docs.microsoft.com/enterprise-mobility-security/remote-work/). 

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

**[Threat & vulnerability management](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)**<br>
This built-in capability uses a game-changing risk-based approach to the discovery, prioritization, and remediation of endpoint vulnerabilities and misconfigurations.

- [Threat & vulnerability management overview](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)
- [Get started](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/tvm-prerequisites)
- [Access your security posture](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/tvm-dashboard-insights)
- [Improve your security posture and reduce risk](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/tvm-security-recommendation)
- [Understand vulnerabilities on your devices](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/tvm-software-inventory)

<a name="asr"></a>

**[Attack surface reduction](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/overview-attack-surface-reduction)**<br>
The attack surface reduction set of capabilities provide the first line of defense in the stack. By ensuring configuration settings are properly set and exploit mitigation techniques are applied, these set of capabilities resist attacks and exploitation.

- [Hardware based isolation](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/overview-hardware-based-isolation)
- [Application control](windows-defender-application-control/windows-defender-application-control.md)
- [Device control](device-guard/introduction-to-device-guard-virtualization-based-security-and-windows-defender-application-control.md)
- [Exploit protection](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/exploit-protection)
- [Network protection](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/network-protection), [web protection](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/web-protection-overview)
- [Controlled folder access](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/controlled-folders)
- [Network firewall](windows-firewall/windows-firewall-with-advanced-security.md)
- [Attack surface reduction rules](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/attack-surface-reduction)

<a name="ngp"></a>

**[Next-generation protection](microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10.md)**<br>
To further reinforce the security perimeter of your network, Microsoft Defender for Endpoint uses next-generation protection designed to catch all types of emerging threats.

- [Behavior monitoring](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-real-time-protection-microsoft-defender-antivirus)
- [Cloud-based protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-protection-features-microsoft-defender-antivirus)
- [Machine learning](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/utilize-microsoft-cloud-protection-microsoft-defender-antivirus)
- [URL Protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-network-connections-microsoft-defender-antivirus)
- [Automated sandbox service](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/configure-block-at-first-sight-microsoft-defender-antivirus)

<a name="edr"></a>

**[Endpoint detection and response](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/overview-endpoint-detection-response)**<br>
Endpoint detection and response capabilities are put in place to detect, investigate, and respond to intrusion attempts and active breaches. With Advanced hunting, you have a query-based threat-hunting tool that lets your proactively find breaches and create custom detections.

- [Alerts](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/alerts-queue)
- [Historical endpoint data](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/investigate-machines#timeline)
- [Response orchestration](microsoft-defender-atp/response-actions.md)
- [Forensic collection](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/respond-machine-alerts#collect-investigation-package-from-devices)
- [Threat intelligence](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/threat-indicator-concepts)
- [Advanced detonation and analysis service](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/respond-file-alerts#deep-analysis)
- [Advanced hunting](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/advanced-hunting-overview)
    - [Custom detections](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/overview-custom-detections)

<a name="ai"></a>

**[Automated investigation and remediation](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/automated-investigations)**<br>
In addition to quickly responding to advanced attacks, Microsoft Defender for Endpoint offers automated investigation and remediation capabilities that help reduce the volume of alerts in minutes at scale.

- [Get an overview of automated investigation and remediation](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/automated-investigations)
- [Learn about automation levels](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/automation-levels)
- [Configure automated investigation and remediation in Defender for Endpoint](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/configure-automated-investigations-remediation)
- [Visit the Action center to see remediation actions](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/auto-investigation-action-center)
- [Review remediation actions following an automated investigation](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/manage-auto-investigation)
- [View the details and results of an automated investigation](microsoft-defender-atp/autoir-investigation-results.md)

<a name="mte"></a>

**[Microsoft Threat Experts](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/microsoft-threat-experts)**<br>
Microsoft Defender for Endpoint's new managed threat hunting service provides proactive hunting, prioritization, and additional context and insights. Microsoft Threat Experts further empowers Security Operation Centers (SOCs) to identify and respond to threats quickly and accurately.

- [Targeted attack notification](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/microsoft-threat-experts)
- [Experts-on-demand](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/microsoft-threat-experts)
- [Configure your Microsoft 365 Defender managed hunting service](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/configure-microsoft-threat-experts)

<a name="apis"></a>

**[Centralized configuration and administration, APIs](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/management-apis)**<br>
Integrate Microsoft Defender for Endpoint into your existing workflows.
- [Onboarding](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/onboard-configure)
- [API and SIEM integration](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/configure-siem)
- [Exposed APIs](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/apis-intro)
- [Role-based access control (RBAC)](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/rbac)
- [Reporting and trends](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/threat-protection-reports)

<a name="integration"></a>
**[Integration with Microsoft solutions](https://docs.microsoft.com/microsoft-365/security/defender-endpoint/threat-protection-integration)** <br>
 Microsoft Defender for Endpoint directly integrates with various Microsoft solutions, including:
- Intune
- Microsoft Defender for Office 365
- Microsoft Defender for Identity
- Azure Defender
- Skype for Business
- Microsoft Cloud App Security

<a name="mtp"></a>
**[Microsoft 365 Defender](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection)**<br>
 With Microsoft 365 Defender, Microsoft Defender for Endpoint and various Microsoft security solutions form a unified pre- and post-breach enterprise defense suite that natively integrates across endpoint, identity, email, and applications to detect, prevent, investigate, and automatically respond to sophisticated attacks.
