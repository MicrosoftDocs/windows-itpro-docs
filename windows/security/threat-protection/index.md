---
title: Threat Protection (Windows 10)
description: Learn how Windows Defender ATP helps protect against threats.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
ms.date: 02/05/2018
---

# Threat Protection
Windows Defender Advanced Threat Protection (ATP) is a unified platform for preventative protection, post-breach detection, automated investigation, and response. Windows Defender ATP protects endpoints from cyber threats; detects advanced attacks and data breaches, automates security incidents and improves security posture.

![Windows Defender ATP components](images/wdatp-pillars2.png)

The following capabilities are available across multiple products that make up the Windows Defender ATP platform. 

<table>
<tr style="text-align:left;">
<td><a href="#asr"><b>Attack surface reduction</b></a></td>
<td><a href="#ngp"><b>Next generation protection</b></a></td>
<td><a href="#edr"><b>Endpoint detection and response</b></a></td>
<td><a href="#ai"><b>Auto investigation</b></a></td>
<td><a href="#sp"><b>Security posture</b></a></td>
<td><a href="#ah"><b>Advanced hunting</b></a></td>
</tr>
<tr style="text-align:center;">
<td align="center" style="width:25%; border:1;" colspan="6">
<a href="#apis"><b>Management and APIs</a></b></td>
</tr>
<tr style="text-align:center;">
<td align="center" style="width:25%; border:1;" colspan="6"><a href="mtp"><b>Microsoft threat protection</a></b></td>
</tr>
</table>
<br>


![Windows Defender ATP platform](images/WDATP_pillars3.jpg)


<a name="asr"></a>

**Attack surface reduction**<br>
The attack surface reduction set of capabilities provide the first line of defense in the stack. By ensuring configuration settings are properly set and exploit mitigation techniques are applied, these set of capabilities resist attacks and exploitations. 

- [Hardware based isolation](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-guard/wd-app-guard-overview) 
- [Application control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control)
- [Exploit protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/windows-defender-exploit-guard)
- [Network protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/network-protection-exploit-guard)
- [Controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard)
- [Network firewall](https://docs.microsoft.com/en-us/windows/security/identity-protection/windows-firewall/windows-firewall-with-advanced-security)
- [Attack surface reducation controls](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard)

<a name="ngp"></a>

**Next generation protection**<br>
To further reinforce the security perimeter of your network, Windows Defender ATP uses next generation protection designed to catch all types of emerging threats.

- [Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) 
- [Machine learning](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus) 
- [Automated sandbox service](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/configure-block-at-first-sight-windows-defender-antivirus)


<a name="edr"></a>

**Endpoint protection and response**<br>

Endpoint protection and response capabilities are put in place to detect, investigate, and respond to advanced threats that may have made it past the first two security pillars. 

- [Alerts queue](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/alerts-queue-windows-defender-advanced-threat-protection)
- [Historical endpoint data](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/investigate-machines-windows-defender-advanced-threat-protection#machine-timeline)
- [Realtime and historical threat hunting](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection)
- [API and SIEM integration](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection)
- [Response orchestration](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/response-actions-windows-defender-advanced-threat-protection)
- [Forensic collection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/respond-machine-alerts-windows-defender-advanced-threat-protection#collect-investigation-package-from-machines)
- [Threat intelligence](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/threat-indicator-concepts-windows-defender-advanced-threat-protection)
- [Advanced detonation and analysis service](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/respond-file-alerts-windows-defender-advanced-threat-protection#deep-analysis)

<a name="ai"></a>

**Auto investigation and remediation**<br>
In conjunction with being able to quickly respond to advanced attacks, Windows Defender ATP offers automatic investigation and remediation capabilities that help reduce the volume of alerts in minutes at scale. 

- [Automated investigation and remediation](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection)
- [Threat remediation](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection#how-threats-are-remediated)
- [Manage automated investigations](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection#manage-automated-investigations)
- [Analyze automated investigation](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection#analyze-automated-investigations)

<a name="sp"></a>

**Security posture**<br>

Windows Defender ATP provides a security posture capability to help you dynamically assess the security state of your enterprise network, identify unprotected systems, and take recommended actions to improve the overall security state of your network.
- [Asset inventory](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection)
- [Recommended improvement actions](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection)
- [Secure score](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection)
- [Threat analytics](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/threat-analytics-dashboard-windows-defender-advanced-threat-protection)

<a name="apis"></a>

**Management and APIs**<br>
Integrate Windows Defender Advanced Threat Protection into your existing workflows.
- [Onboarding](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/onboard-configure-windows-defender-advanced-threat-protection)
- [Configuration](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/preferences-setup-windows-defender-advanced-threat-protection)
- [Operating system baseline compliance](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection)
- [SIEM connectors](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection) 
- [Exposed APIs](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/exposed-apis-windows-defender-advanced-threat-protection)
- [RBAC](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/rbac-windows-defender-advanced-threat-protection)
- [Reporting and trends](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/powerbi-reports-windows-defender-advanced-threat-protection)

<a name="mtp"></a>

**Microsoft threat protection** <br>
Bring the power of Microsoft threat protection to your organization.
- [Conditional access](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/conditional-access-windows-defender-advanced-threat-protection)
- [O365 ATP](/windows-defender-atp/threat-protection-/windows-defender-atp/threat-protection-integration.md)
- [Azure ATP](/windows-defender-atp/threat-protection-/windows-defender-atp/threat-protection-integration.md)
- [Azure Security Center](/windows-defender-atp/threat-protection-/windows-defender-atp/threat-protection-integration.md)
- [Skype for Business](/windows-defender-atp/threat-protection-/windows-defender-atp/threat-protection-integration.md) 
- [Microsoft Cloud App Security](/windows-defender-atp/threat-protection-/windows-defender-atp/threat-protection-integration.md)

Attack surface reduction | Next generation protection | Endpoint detection and response | Auto investigation | Security posture | Advanced hunting | Management and APIs | Microsoft threat protection
:---|:---|:---|:---|:---|:---|:---|:---
[Hardware based isolation](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-application-guard/wd-app-guard-overview)<br><br> [Application control](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/windows-defender-application-control)<br><br> [Exploit protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/windows-defender-exploit-guard)<br><br> [Network protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/network-protection-exploit-guard)<br> <br>[Controlled folder access](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-exploit-guard/controlled-folders-exploit-guard)<br><br>[Network firewall](https://docs.microsoft.com/en-us/windows/security/identity-protection/windows-firewall/windows-firewall-with-advanced-security)<br><br>[Attack surface reducation controls](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-exploit-guard/attack-surface-reduction-exploit-guard)| [Antivirus](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10)<br><br> [Machine learning](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/utilize-microsoft-cloud-protection-windows-defender-antivirus) [Automated sandbox service](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-antivirus/configure-block-at-first-sight-windows-defender-antivirus)| [Alerts queue](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/alerts-queue-windows-defender-advanced-threat-protection)<br><br> [Historical endpoint data](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/investigate-machines-windows-defender-advanced-threat-protection#machine-timeline)<br><br>[Realtime and historical threat hunting](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection)<br><br>[API and SIEM integration](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection)<br><br>[Response orchestration](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/response-actions-windows-defender-advanced-threat-protection)<br><br>[Forensic collection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/respond-machine-alerts-windows-defender-advanced-threat-protection#collect-investigation-package-from-machines)<br><br>[Threat intelligence](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/threat-indicator-concepts-windows-defender-advanced-threat-protection)<br><br>[Advanced detonation and analysis service](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/respond-file-alerts-windows-defender-advanced-threat-protection#deep-analysis)<br><br>| [Automated investigation and remediation](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection)<br><br>[Threat remediation](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection#how-threats-are-remediated)<br><br>[Manage automated investigations](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection#manage-automated-investigations)<br><br>[Analyze automated investigation](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection#analyze-automated-investigations)|[Asset inventory](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection)<br><br>[Recommended improvement actions](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection)<br><br>[Secure score](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection)<br><br>[Threat analytics](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/threat-analytics-dashboard-windows-defender-advanced-threat-protection)| [Realtime and historical threat hunting](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/advanced-hunting-windows-defender-advanced-threat-protection)<br><br>Scheduled queries <br><br> Scheduled queries (Github) <br><br> [Custom TI](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/use-custom-ti-windows-defender-advanced-threat-protection) | [Onboarding](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/onboard-configure-windows-defender-advanced-threat-protection)<br><br> [Configuration](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/preferences-setup-windows-defender-advanced-threat-protection)<br><br> [Operating system baseline compliance](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection)<br><br>[SIEM connectors](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection)<br><br>[Exposed APIs](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/exposed-apis-windows-defender-advanced-threat-protection)<br><br>[RBAC](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/rbac-windows-defender-advanced-threat-protection)<br><br>[Reportin and trends](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/powerbi-reports-windows-defender-advanced-threat-protection)| [Conditional access](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/conditional-access-windows-defender-advanced-threat-protection)<br><br>[O365 ATP](/windows-defender-atp/threat-protection-integration.md)<br><br>[Azure ATP](/windows-defender-atp/threat-protection-integration.md)<br><br>[Azure Security Center](/windows-defender-atp/threat-protection-integration.md)<br><br>[Skype for Business](/windows-defender-atp/threat-protection-integration.md)<br><br>[Microsoft Cloud App Security](/windows-defender-atp/threat-protection-integration.md)








