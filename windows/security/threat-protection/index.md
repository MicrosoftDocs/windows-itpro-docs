---
title: Threat Protection (Windows 10)
description: Learn how Windows Defender ATP helps protect against threats.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: dansimp
ms.date: 08/16/2018
---

# Threat Protection
Windows Defender Advanced Threat Protection (ATP) is a unified platform for preventative protection, post-breach detection, automated investigation, and response. Windows Defender ATP protects endpoints from cyber threats; detects advanced attacks and data breaches, automates security incidents and improves security posture.

<table>
<tr>
<td><a href="#asr"><center><img src="images/ASR_icon.png"> <br><b>Attack surface reduction</b></center></a></td>
<td><center><a href="#ngp"><img src="images/ngp_icon.png"><br> <b>Next generation protection</b></a></center></td>
<td><center><a href="#edr"><img src="images/edr_icon.png"><br> <b>Endpoint detection and response</b></a></center></td>
<td><center><a href="#ai"><img src="images/AR_icon.png"><br> <b>Auto investigation and remediation</b></a></center></td>
<td><center><a href="#ss"><img src="images/SS_icon.png"><br><b>Secure score</b></a></center></td>
<td><center><img src="images/AH_icon.png"><a href="#ah"><br><b>Advanced hunting</b></a></center></td>
</tr>
<tr>
<td colspan="6">
<a href="#apis"><center><b>Management and APIs</a></b></center></td>
</tr>
<tr>
<td colspan="6"><a href="#mtp"><center><b>Microsoft threat protection</a></center></b></td>
</tr>
</table>
<br>


<a name="asr"></a>

**Attack surface reduction**<br>
The attack surface reduction set of capabilities provide the first line of defense in the stack. By ensuring configuration settings are properly set and exploit mitigation techniques are applied, these set of capabilities resist attacks and exploitations. 

- [Hardware based isolation](/windows-defender-atp/overview-hardware-based-isolation.md) 
- [Application control](/windows-defender-application-control/windows-defender-application-control.md)
- [Exploit protection](/windows-defender-exploit-guard/windows-defender-exploit-guard.md)
- [Network protection](/windows-defender-exploit-guard/network-protection-exploit-guard.md)
- [Controlled folder access](/windows-defender-exploit-guard/controlled-folders-exploit-guard.md)
- [Network firewall](/windows-firewall/windows-firewall-with-advanced-security.md)
- [Attack surface reducation controls](/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard.md)

<a name="ngp"></a>

**Next generation protection**<br>
To further reinforce the security perimeter of your network, Windows Defender ATP uses next generation protection designed to catch all types of emerging threats.

- [Antivirus](/windows-defender-antivirus/windows-defender-antivirus-in-windows-10.md) 
- [Machine learning](/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus.md) 
- [Automated sandbox service](/windows-defender-antivirus/configure-block-at-first-sight-windows-defender-antivirus.md)


<a name="edr"></a>

**Endpoint protection and response**<br>

Endpoint protection and response capabilities are put in place to detect, investigate, and respond to advanced threats that may have made it past the first two security pillars. 

- [Alerts](/windows-defender-atp/alerts-queue-windows-defender-advanced-threat-protection.md)
- [Historical endpoint data](/windows-defender-atp/investigate-machines-windows-defender-advanced-threat-protection.md#machine-timeline)
- [Realtime and historical threat hunting](/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection.md)
- [API and SIEM integration](/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection.md)
- [Response orchestration](/windows-defender-atp/response-actions-windows-defender-advanced-threat-protection.md)
- [Forensic collection](/windows-defender-atp/respond-machine-alerts-windows-defender-advanced-threat-protection.md#collect-investigation-package-from-machines)
- [Threat intelligence](/windows-defender-atp/threat-indicator-concepts-windows-defender-advanced-threat-protection.md)
- [Advanced detonation and analysis service](/windows-defender-atp/respond-file-alerts-windows-defender-advanced-threat-protection#deep-analysis.md)

<a name="ai"></a>

**Auto investigation and remediation**<br>
In conjunction with being able to quickly respond to advanced attacks, Windows Defender ATP offers automatic investigation and remediation capabilities that help reduce the volume of alerts in minutes at scale. 

- [Automated investigation and remediation](/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection.md)
- [Threat remediation](/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection.md#how-threats-are-remediated)
- [Manage automated investigations](/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection.md#manage-automated-investigations)
- [Analyze automated investigation](/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection.md#analyze-automated-investigations)

<a name="sp"></a>

**Secure score**<br>

Windows Defender ATP includes a secure score to help you dynamically assess the security state of your enterprise network, identify unprotected systems, and take recommended actions to improve the overall security of your organization.
- [Asset inventory](/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection.md)
- [Recommended improvement actions](/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection.md)
- [Secure score](/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection.md)
- [Threat analytics](/windows-defender-atp/threat-analytics-dashboard-windows-defender-advanced-threat-protection.md)

<a name="hunt"></a>

**Advanced hunting**<br>
Create custom threat intelligence and use a powerful search and query tool to hunt for possible threats in your organization.

- [Custom TI](windows-defender-atp/use-custom-ti-windows-defender-advanced-threat-protection.md) 
- [Realtime and historical hunting](windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection.md)

<a name="apis"></a>

**Management and APIs**<br>
Integrate Windows Defender Advanced Threat Protection into your existing workflows.
- [Onboarding](/windows-defender-atp/onboard-configure-windows-defender-advanced-threat-protection.md)
- [Configuration](/windows-defender-atp/preferences-setup-windows-defender-advanced-threat-protection.md)
- [Operating system baseline compliance](/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection.md)
- [SIEM connectors](/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection.md) 
- [Exposed APIs](/windows-defender-atp/exposed-apis-windows-defender-advanced-threat-protection.md)
- [RBAC](/windows-defender-atp/rbac-windows-defender-advanced-threat-protection.md)
- [Reporting and trends](/windows-defender-atp/powerbi-reports-windows-defender-advanced-threat-protection.md)

<a name="mtp"></a>

**Microsoft threat protection** <br>
Bring the power of Microsoft threat protection to your organization.
- [Conditional access](/windows-defender-atp/conditional-access-windows-defender-advanced-threat-protection.md)
- [O365 ATP](/windows-defender-atp/threat-protection-integration.md)
- [Azure ATP](/windows-defender-atp/threat-protection-integration.md)
- [Azure Security Center](/windows-defender-atp/threat-protection-integration.md)
- [Skype for Business](/windows-defender-atp/threat-protection-integration.md) 
- [Microsoft Cloud App Security](/windows-defender-atp/threat-protection-integration.md)





![Windows Defender ATP components](images/wdatp-pillars2.png)

Windows Defender ATP is a unified endpoint security platform using built-in, unified security technologies powered by the cloud. 




Attack surface reduction | Next generation protection | Endpoint detection and response | Auto investigation | Security posture | Advanced hunting | Management and APIs | Microsoft threat protection
:---|:---|:---|:---|:---|:---|:---|:---
[Hardware based isolation](/windows-defender-application-guard/wd-app-guard-overview.md)<br><br> [Application control](/windows-defender-application-control/windows-defender-application-control.md)<br><br> [Exploit protection](/windows-defender-exploit-guard/windows-defender-exploit-guard.md)<br><br> [Network protection](/windows-defender-exploit-guard/network-protection-exploit-guard.md)<br> <br>[Controlled folder access](/windows-defender-exploit-guard/controlled-folders-exploit-guard.md)<br><br>[Network firewall](/windows-firewall/windows-firewall-with-advanced-security.md)<br><br>[Attack surface reducation controls](/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard.md)| [Antivirus](/windows-defender-antivirus/windows-defender-antivirus-in-windows-10.md)<br><br> [Machine learning](/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus.md) [Automated sandbox service](/windows-defender-antivirus/configure-block-at-first-sight-windows-defender-antivirus.md)| [Alerts queue](/windows-defender-atp/alerts-queue-windows-defender-advanced-threat-protection.md)<br><br> [Historical endpoint data](/windows-defender-atp/investigate-machines-windows-defender-advanced-threat-protection.md#machine-timeline)<br><br>[Realtime and historical threat hunting](/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection.md)<br><br>[API and SIEM integration](/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection.md)<br><br>[Response orchestration](/windows-defender-atp/response-actions-windows-defender-advanced-threat-protection.md)<br><br>[Forensic collection](/windows-defender-atp/respond-machine-alerts-windows-defender-advanced-threat-protection.md#collect-investigation-package-from-machines)<br><br>[Threat intelligence](/windows-defender-atp/threat-indicator-concepts-windows-defender-advanced-threat-protection.md)<br><br>[Advanced detonation and analysis service](/windows-defender-atp/respond-file-alerts-windows-defender-advanced-threat-protection.md#deep-analysis)<br><br>| [Automated investigation and remediation](/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection.md)<br><br>[Threat remediation](/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection.md#how-threats-are-remediated)<br><br>[Manage automated investigations](/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection.md#manage-automated-investigations)<br><br>[Analyze automated investigation](/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection.md#analyze-automated-investigations)|[Asset inventory](/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection.md)<br><br>[Recommended improvement actions](/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection.md)<br><br>[Secure score](/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection.md)<br><br>[Threat analytics](/windows-defender-atp/threat-analytics-dashboard-windows-defender-advanced-threat-protection.md)| [Realtime and historical threat hunting](/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection.md)<br><br>Scheduled queries <br><br> Scheduled queries (Github) <br><br> [Custom TI](/windows-defender-atp/use-custom-ti-windows-defender-advanced-threat-protection.md) | [Onboarding](/windows-defender-atp/onboard-configure-windows-defender-advanced-threat-protection.md)<br><br> [Configuration](/windows-defender-atp/preferences-setup-windows-defender-advanced-threat-protection.md)<br><br> [Operating system baseline compliance](/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection.md)<br><br>[SIEM connectors](/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection.md)<br><br>[Exposed APIs](/windows-defender-atp/exposed-apis-windows-defender-advanced-threat-protection.md)<br><br>[RBAC](/windows-defender-atp/rbac-windows-defender-advanced-threat-protection.md)<br><br>[Reportin and trends](/windows-defender-atp/powerbi-reports-windows-defender-advanced-threat-protection.md)| [Conditional access](/windows-defender-atp/conditional-access-windows-defender-advanced-threat-protection.md)<br><br>[O365 ATP](/windows-defender-atp/threat-protection-integration.md)<br><br>[Azure ATP](/windows-defender-atp/threat-protection-integration.md)<br><br>[Azure Security Center](/windows-defender-atp/threat-protection-integration.md)<br><br>[Skype for Business](/windows-defender-atp/threat-protection-integration.md)<br><br>[Microsoft Cloud App Security](/windows-defender-atp/threat-protection-integration.md)








