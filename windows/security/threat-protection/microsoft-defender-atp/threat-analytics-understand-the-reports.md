---
title: Understand the analyst report
ms.reviewer: 
description: Learn about common sections in analyst report section of each threat analytics report and how it provides information about threats, mitigations, detections, advanced hunting queries, and more.
keywords: analyst report, threat analytics, detections, advanced hunting queries, mitigations, 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Understand the analyst report in threat analytics

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

The analyst report is the written section provided by Microsoft security researchers. Most analyst reports include the following sections:

| Report section | Description of contents |
|--|--|
| Executive summary | Overview of the threat, including when the threat was first observed, its motivations, notable events, major targets (industries and regions), and distinct tools and techniques. |
| Analysis | Provides available technical information, including the details of an attack or how a new technique or attack surface might be utilized. | 
| MITRE ATT&CK techniques observed | Lists the techniques observed using their MITRE ATT&CK technique category and IDs. | 
| Mitigations | Lists all known methods that might reduce the impact or stop the threat. This section also includes mitigations that are not tracked dynamically as part of the threat analytics report. |
| Detection details | Lists specific and generic detections provided by Microsoft security solutions that can surface activity or components associated with the threat. | 
| Advanced hunting | Provides sample advanced hunting queries for proactively identifying possible threat activity. Most queries are provided to supplement detections, especially for locating potentially malicious components or behaviors that could not dynamically assessed to be malicious. | 
| References | Lists Microsoft and third-party references reviewed by analysts during the creation of the report. Threat analytics reports are based on data validated Microsoft researchers. Information from publicly-available, third-party source are identified clearly as such. | 
| Change log | Describes significant changes made to the report since the time of publication. |

## Track mitigations
Threat analytics reports dynamically track the status of security updates and secure configurations. These are available as charts and tables under the **Mitigations** tab.

The analyst report, however, also includes mitigations that are not dynamically tracked. Here are some examples of mitigation guidance that are not tracked dynamically:

- Block emails with .lnk attachments or other suspicious file types
- Randomize local administrator passwords
- Educate end-users about phishing email and other threat vectors

While you can utilize the **Mitigations** tab to assess your security posture against a threat, carefully read through all the mitigation guidance in the analyst report for more tips on how to improve your security posture.

## Check detections
The analyst report also provides a list of detections for various security capabilities available with Microsoft Defender for Endpoint, including:

- Antivirus
- Endpoint detection and response (EDR)
- Attack surface reduction rules

### Antivirus detections
These detections are available on devices with Microsoft Defender Antivirus. On devices that are onboarded to Microsoft Defender for Endpoint, these detections automatically fire alerts and will be reflected in the charts provided with the report.

>[!NOTE]
>There are cases when the report lists some generic detection names that detect a wide-range of threats in addition to the threat components or behaviors associated with the report. These generic detections do NOT reflect in the charts.

 

| Detection type | Description |
|--|--|
| Antivirus | These detections are raised on devices running [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10) to identify malware components using various anti-malware technologies. |
| Endpoint detection and response | These detections constitute alerts on Microsoft Defender Security Center and are raised on [devices onboarded to Microsoft Defender for Endpoint](onboard-configure.md). These detections generally rely of security signals collected by the Microsoft Defender for Endpoint sensor, but also incorporates antivirus, network protection, and all other signals available on each device. |
| Attack surface reduction rules| |





 









With more sophisticated adversaries and new threats emerging frequently and prevalently, it's critical to be able to quickly:

- Assess the impact of new threats
- Review your resilience against or exposure to the threats
- Identify the actions you can take to stop or contain the threats

Threat analytics is a set of reports from expert Microsoft security researchers covering the most relevant threats, including:

- Active threat actors and their campaigns
- Popular and new attack techniques
- Critical vulnerabilities
- Common attack surfaces
- Prevalent malware

Each report provides a detailed analysis of a threat and extensive guidance on how to defend against the threat. It also incorporates data from your network, indicating whether the threat is active and if you have applicable security updates and recommended settings in place.

Watch this short video to learn more about how threat analytics can help you track the latest threats and stop them.

## View the threat analytics dashboard

The threat analytics dashboard is a great jump off point for getting to the reports that are most relevant to your organization. It summarizes the threats in the following sections:

- **Latest threats**—lists the most recently published threat reports, along with the number of devices with active and resolved alerts.
- **High-impact threats**—lists the threats that have had the highest impact to the organization. This section ranks threats by the number of devices that have active alerts.
- **Threat summary**—shows the overall impact of all the threats reported in threat analytics by showing the number of threats with active and resolved alerts.

Select a threat from the dashboard to view the report for that threat.

![Image of a threat analytics dashboard](images/ta_dashboard.png)

## View a threat analytics report

Each threat analytics report provides information in three sections: **Overview**, **Analyst report**, and **Mitigations**.

### Quickly understand a threat and assess its impact to your network in the overview

The **Overview** section provides a preview of the detailed analyst report. It also provides charts that highlight the impact of the threat to your organization and your exposure through misconfigured and unpatched devices.

![Image of the overview section of a threat analytics report](images/ta-overview.png)
_Overview section of a threat analytics report_

#### Organizational impact
Each report includes charts designed to provide information about the organizational impact of a threat:
- **Devices with alerts**—shows the current number of distinct devices that have been impacted by the threat. A device is categorized as **Active** if there is at least one alert associated with that threat and **Resolved** if *all* alerts associated with the threat on the device have been resolved.
- **Devices with alerts over time**—shows the number of distinct devices with **Active** and **Resolved** alerts over time. The number of resolved alerts indicates how quickly your organization responds to alerts associated with a threat. Ideally, the chart should be showing alerts resolved within a few days.

#### Organizational resilience and exposure
Each report includes charts that provide an overview of how resilient your organization is against a given threat:
- **Security configuration status**—shows the number of devices that have applied the recommended security settings that can help mitigate the threat. Devices are considered **Secure** if they have applied _all_ the tracked settings.
- **Vulnerability patching status**—shows the number of devices that have applied security updates or patches that address vulnerabilities exploited by the threat.

### Get expert insight from the analyst report
Go to the **Analyst report** section to read through the detailed expert write-up. Most reports provide detailed descriptions of attack chains, including tactics and techniques mapped to the MITRE ATT&CK framework, exhaustive lists of recommendations, and powerful [threat hunting](advanced-hunting-overview.md) guidance.

![Image of the analyst report section of a threat analytics report](images/ta-analyst-report.png)
_Analyst report section of a threat analytics report_

### Review list of mitigations and the status of your devices
In the **Mitigations** section, review the list of specific actionable recommendations that can help you increase your organizational resilience against the threat. The list of tracked mitigations includes recommended settings and vulnerability patches. It also shows the number of devices that don't have these mitigations in place.

Mitigation information in this section incorporates data from [threat and vulnerability management](next-gen-threat-and-vuln-mgt.md), which also provides detailed drill-down information from various links in the report.

![Image of the mitigations section of a threat analytics report](images/ta-mitigations.png)
_Mitigations section of a threat analytics report_


## Additional report details and limitations
When using the reports, keep the following in mind: 

- Data is scoped based on your role-based access control (RBAC) scope. You will see the status of devices in [groups that you can access](machine-groups.md).
- Charts reflect only mitigations that are tracked. Check the report overview for additional mitigations that are not shown in the charts.
- Mitigations don't guarantee complete resilience. The provided mitigations reflect the best possible actions needed to improve resiliency.
- Devices are counted as "unavailable" if they have not transmitted data to the service.
- Antivirus-related statistics are based on Microsoft Defender Antivirus settings. Devices with third-party antivirus solutions can appear as "exposed".

## Related topics
- [Proactively find threats with advanced hunting](advanced-hunting-overview.md) 
- [Assess and resolve security weaknesses and exposures](next-gen-threat-and-vuln-mgt.md)
