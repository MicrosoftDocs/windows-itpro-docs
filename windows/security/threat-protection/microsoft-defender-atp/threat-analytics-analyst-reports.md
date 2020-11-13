---
title: Understand the analyst report section in threat analytics
ms.reviewer: 
description: Learn about the analyst report section of each threat analytics report. Understand how it provides information about threats, mitigations, detections, advanced hunting queries, and more.
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

Each [threat analytics report](threat-analytics.md) includes dynamic sections and a comprehensive written section called the _analyst report_.

![Image of the analyst report section of a threat analytics report](images/ta-analyst-report.png)
_Analyst report section of a threat analytics report_

## Learn about the sections of the analyst report
Most analyst reports include the following sections:

| Report section | Description |
|--|--|
| Executive summary | Overview of the threat, including when it was first seen, its motivations, notable events, major targets, and distinct tools and techniques. You can use this information to further assess how to prioritize the threat in the context of your industry, geographic location, and network state. |
| Analysis | Technical information about the threats, including the details of an attack or how a new technique or attack surface might be used. | 
| MITRE ATT&CK techniques observed | Lists the techniques and how they map to the techniques in the [MITRE ATT&CK attack framework](https://attack.mitre.org/). | 
| [Mitigations](#apply-additional-mitigations) | Lists recommendations that can stop or help reduce the impact of the threat. This section also includes mitigations that are not tracked dynamically as part of the threat analytics report. |
| [Detection details](#understand-how-each-threat-can-be-detected) | Lists specific and generic detections provided by Microsoft security solutions that can surface activity or components associated with the threat. | 
| [Advanced hunting](#find-subtle-threat-artifacts-using-advanced-hunting) | Provides sample [advanced hunting queries](advanced-hunting-overview.md) for proactively identifying possible threat activity. Most queries are provided to supplement detections, especially for locating potentially malicious components or behaviors that couldn't be dynamically assessed to be malicious. | 
| References | Lists Microsoft and third-party references reviewed by analysts during the creation of the report. Threat analytics reports are based on data validated by Microsoft researchers. Information from publicly available, third-party source are identified clearly as such. | 
| Change log | The times of publication and when significant changes were made to the report. |

## Apply additional mitigations
Threat analytics reports dynamically track the [status of security updates and secure configurations](threat-analytics.md#review-list-of-mitigations-and-the-status-of-your-devices). This information is available as charts and tables under the **Mitigations** tab.

In addition to these tracked mitigations, the analyst report also discusses mitigations that are _not_ dynamically monitored. Here are some examples of important mitigations that are not dynamically tracked:

- Block emails with _.lnk_ attachments or other suspicious file types
- Randomize local administrator passwords
- Educate end users about phishing email and other threat vectors

While you can use the **Mitigations** tab to assess your security posture against a threat, you can take additional steps towards improving your security posture. Carefully read all the mitigation guidance in the analyst report and apply them whenever possible.

## Understand how each threat can be detected
The analyst report also provides the detections from various security Microsoft 365 Defender capabilities, including:

- Antivirus
- Endpoint detection and response (EDR)
- Attack surface reduction rules

### Antivirus detections
These detections are available on devices with [Microsoft Defender Antivirus](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10) turned on. When these detections occur on devices that have been onboarded to Microsoft Defender for Endpoint, they also trigger alerts that light up the charts in the report.

#### Generic detections
The analyst report also lists generic detections that can identify a wide-range of threats, in addition to components or behaviors associated with the tracked threat. These generic detections don't reflect in the charts.

### Endpoint detection and response (EDR) alerts
Endpoint detection and response alerts constitute alerts in Microsoft Defender Security Center. They are raised on [devices onboarded to Microsoft Defender for Endpoint](onboard-configure.md). These alerts generally rely on security signals collected by the Microsoft Defender for Endpoint sensor and other endpoint capabilities: antivirus, network protection, tamper protection, among others that serve as powerful signal sources.

Like the list of antivirus detections, some EDR alerts are designed to generically flag suspicious behavior that might not be associated with the tracked threat. In such cases, the report will clearly identify the alert as generic and that it does not influence any of the charts in the report.

### Attack surface reduction rules
When turned on, [attack surface reduction rules](attack-surface-reduction.md) can be set to either detect (audit) or block various behaviors commonly associated with threats, such as:
- An Office application spawning a child process
- An email client launching an executable
- A script downloading executable content

The analyst report provides a list of attack surface reduction rules that you can use to detect or block the tracked threat.

## Find subtle threat artifacts using advanced hunting
While detections allow you to identify and stop the tracked threat automatically, many attack activities leave subtle traces that require additional inspection. Some attack activities exhibit behaviors that are also exhibited by everyday transactions, so detecting them dynamically can result in operational noise or even false positives.

[Advanced hunting](advanced-hunting-overview.md) provides a query interface, based on Kusto Query Language, that simplifies locating subtle indicators of threat activity. It also allows you to surface contextual information quickly. You can verify whether identified indicators are indeed associated with the tracked threat.

Advanced hunting queries in the analyst reports have been vetted by Microsoft analysts and are ready for you to run in the [advanced hunting query editor](https://securitycenter.windows.com/advanced-hunting). You can also use the queries to create [custom detection rules](custom-detection-rules.md) that trigger alerts for future matches.


## Related topics
- [Threat analytics overview](threat-analytics.md)
- [Proactively find threats with advanced hunting](advanced-hunting-overview.md) 
- [Custom detection rules](custom-detection-rules.md)