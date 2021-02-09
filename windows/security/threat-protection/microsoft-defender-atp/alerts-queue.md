---
title: View and organize the Microsoft Defender ATP Alerts queue
description: Learn about how the Microsoft Defender ATP alerts queues work, and how to sort and filter lists of alerts.
keywords: alerts, queues, alerts queue, sort, order, filter, manage alerts, new, in progress, resolved, newest, time in queue, severity, time period, microsoft threat experts alerts
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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
ms.topic: article
ms.date: 03/27/2020
ms.technology: mde
---

# View and organize the Microsoft Defender for Endpoint Alerts queue

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- [Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-alertsq-abovefoldlink) 

The **Alerts queue** shows a list of alerts that were flagged from devices in your network. By default, the queue displays alerts seen in the last 30 days in a grouped view. The most recent alerts are showed at the top of the list helping you see the most recent alerts first.

>[!NOTE]
>The alerts queue is significantly reduced with automated investigation and remediation, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. When an alert contains a supported entity for automated investigation (for example, a file) in a device that has a supported operating system for it, an automated investigation and remediation can start. For more information on automated investigations, see [Overview of Automated investigations](automated-investigations.md).

There are several options you can choose from to customize the alerts queue view. 

On the top navigation you can:

- Select grouped view or list view
- Customize columns to add or remove columns 
- Select the items to show per page
- Navigate between pages
- Apply filters

![Image of alerts queue](images/alerts-queue-list.png)

## Sort, filter, and group the alerts queue

You can apply the following filters to limit the list of alerts and get a more focused view the alerts.

### Severity

Alert severity | Description
:---|:---
High </br>(Red) | Alerts commonly seen associated with advanced persistent threats (APT). These alerts indicate a high risk because of  the severity of damage they can inflict on devices. Some examples are: credential theft tools activities, ransomware activities not associated with any group, tampering with security sensors, or any malicious activities indicative of a human adversary.
Medium </br>(Orange) | Alerts from endpoint detection and response post-breach behaviors that might be a part of an advanced persistent threat (APT). This includes observed behaviors typical of attack stages, anomalous registry change, execution of suspicious files, and so forth. Although some might be part of internal security testing, it requires investigation as it might also be a part of an advanced attack.
Low </br>(Yellow) | Alerts on threats associated with prevalent malware. For example, hack-tools, non-malware hack tools, such as running exploration commands, clearing logs, etc., that often do not indicate an advanced threat targeting the organization. It could also come from an isolated security tool testing by a user in your organization.
Informational </br>(Grey) | Alerts that might not be considered harmful to the network but can drive organizational security awareness on potential security issues.

#### Understanding alert severity

Microsoft Defender Antivirus (Microsoft Defender AV) and Defender for Endpoint alert severities are different because they represent different scopes.

The Microsoft Defender AV threat severity represents the absolute severity of the detected threat (malware), and is assigned based on the potential risk to the individual device, if infected.

The Defender for Endpoint alert severity represents the severity of the detected behavior, the actual risk to the device but more importantly the potential risk to the organization.

So, for example:

- The severity of a Defender for Endpoint alert about a Microsoft Defender AV detected threat that was completely prevented and did not infect the device is categorized as "Informational" because there was no actual damage.
- An alert about a commercial malware was detected while executing, but blocked and remediated by Microsoft Defender AV, is categorized as  "Low" because it may have caused some damage to the individual device but poses no organizational threat.
- An alert about malware detected while executing which can pose a threat not only to the individual device but to the organization, regardless if it was eventually blocked, may be ranked as "Medium" or "High".
- Suspicious behavioral alerts, which weren't blocked or remediated will be ranked "Low", "Medium" or "High" following the same organizational threat considerations.

#### Understanding alert categories

We've redefined the alert categories to align to the [enterprise attack tactics](https://attack.mitre.org/tactics/enterprise/) in the [MITRE ATT&CK matrix](https://attack.mitre.org/). New category names apply to all new alerts. Existing alerts will keep the previous category names.

The table below lists the current categories and how they generally map to previous categories. 

| New category               | Previous category                                                                                | API category name        | Detected threat activity or component                                                                                               |
|----------------------------|--------------------------------------------------------------------------------------------------|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
|                            |                                                                                                  | AccessGovernance         |                                                                                                                                     |
| Backdoor                   | None                                                                                             |                          |                                                                                                                                     |
| Collection                 | None                                                                                             | Collection               | Locating and collecting data for exfiltration                                                                                       |
| Command and control        | CommandAndControl                                                                                | CommandAndControl        | Connecting to attacker-controlled network infrastructure to relay data or receive commands                                          |
| Credential access          | CredentialTheft                                                                                  | CredentialAccess         | Obtaining valid credentials to extend control over devices and other resources in the network                                       |
| Credential stealing        | CredentialTheft                                                                                  | CredentialStealing       | Obtaining valid credentials to extend control over devices and other resources in the network                                       |
| Credential theft           | None                                                                                             | CredentialTheft          |                                                                                                                                     |
|                            |                                                                                                  | DataGovernance           |                                                                                                                                     |
|                            |                                                                                                  | DataLossPrevention       |                                                                                                                                     |
| Defense evasion            | None                                                                                             | DefenseEvasion           |                                                                                                                                     |
| Delivery                   | None                                                                                             |                          |                                                                                                                                     |
| Discovery                  | Reconnaissance, WebFingerprinting                                                                | Discovery                | Gathering information about important devices and resources, such as administrator computers, domain controllers, and file servers  |
| Document exploit           | None                                                                                             | DocumentExploit          |                                                                                                                                     |
| Enterprise policy          | None                                                                                             | EnterprisePolicy         |                                                                                                                                     |
| Execution                  | Delivery, MalwareDownload                                                                        | Execution                | Launching attacker tools and malicious code, including RATs and backdoors                                                           |
| Exfiltration               | Exfiltration                                                                                     | Exfiltration             | Extracting data from the network to an external, attacker-controlled location                                                       |
| Exploit                    | Exploit                                                                                          | Exploit                  | Exploit code and possible exploitation activity                                                                                     |
| General                    | None                                                                                             | General                  |                                                                                                                                     |
| Impact                     | None                                                                                             |  Impact                        |                                                                                                                                     |
| Initial access             | SocialEngineering, WebExploit, DocumentExploit                                                   | InitialAccess            | Gaining initial entry to the target network, usually involving password-guessing, exploits, or phishing emails                      |
| Installation               | None                                                                                             | Installation             |                                                                                                                                     |
| Lateral movement           | LateralMovement, NetworkPropagation                                                              | LateralMovement          | Moving between devices in the target network to reach critical resources or gain network persistence                                |
|                            |                                                                                                  | MailFlow                 |                                                                                                                                     |
| Malware                    | Malware, Backdoor, Trojan, TrojanDownloader, CredentialStealing, Weaponization, RemoteAccessTool | Malware                  | Backdoors, trojans, and other types of malicious code                                                                               |
| Malware download           | None                                                                                             | MalwareDownload          |                                                                                                                                     |
| Network propagation        | None                                                                                             | NetworkPropagation       |                                                                                                                                     |
| Persistence                | Installation, Persistence                                                                        | Persistence              | Creating autostart extensibility points (ASEPs) to remain active and survive system restarts                                        |
| Privilege escalation       | PrivilegeEscalation                                                                              | PrivilegeEscalation      | Obtaining higher permission levels for code by running it in the context of a privileged process or account                         |
| Ransomware                 | Ransomware                                                                                       | Ransomware               | Malware that encrypts files and extorts payment to restore access                                                                   |
| Reconnaissance             | None                                                                                             | Reconnaissance           |                                                                                                                                     |
| Remote access tool         | None                                                                                             | RemoteAccessTool         |                                                                                                                                     |
| Social engineering         | None                                                                                             | SocialEngineering        |                                                                                                                                     |
| Suspicious activity        | General, None, NotApplicable, EnterprisePolicy, SuspiciousNetworkTraffic                         | SuspiciousActivity       | Atypical activity that could be malware activity or part of an attack                                                               |
| Suspicious network traffic | None                                                                                             | SuspiciousNetworkTraffic |                                                                                                                                     |
|                            |                                                                                                  | ThreatManagement         |                                                                                                                                     |
| Trojan                     | None                                                                                             | Trojan                   |                                                                                                                                     |
| Trojan downloader          | None                                                                                             | TrojanDownloader         |                                                                                                                                     |
| Unwanted software          | UnwantedSoftware                                                                                 | UnwantedSoftware         | Low-reputation apps and apps that impact productivity and the user experience; detected as potentially unwanted applications (PUAs) |
| Weaponization              | None                                                                                             | Weaponization            |                                                                                                                                     |
| Web exploit                | None                                                                                             | WebExploit               |                                                                                                                                     |
| Web fingerprinting         | None                                                                                             | WebFingerprinting        |                                                                                                                                     |



### Status

You can choose to limit the list of alerts based on their status.

### Investigation state

Corresponds to the automated investigation state.

### Category

You can choose to filter the queue to display specific types of malicious activity.

### Assigned to

You can choose between showing alerts that are assigned to you or automation.

### Detection source

Select the source that triggered the alert detection. Microsoft Threat Experts preview participants can now filter and see detections from the new threat experts-managed hunting service.

>[!NOTE]
>The Antivirus filter will only appear if devices are using Microsoft Defender Antivirus as the default real-time protection antimalware product.

| Detection source                  | API value                  |
|-----------------------------------|----------------------------|
| 3rd party sensors                 | ThirdPartySensors          |
| Antivirus                         | WindowsDefenderAv          |
| Automated investigation           | AutomatedInvestigation     |
| Custom detection                  | CustomDetection            |
| Custom TI                         | CustomerTI                 |
| EDR                               | WindowsDefenderAtp         |
| Microsoft 365 Defender            | MTP                        |
| Microsoft Defender for Office 365 | OfficeATP                  |
| Microsoft Threat Experts          | ThreatExperts              |
| SmartScreen                       | WindowsDefenderSmartScreen |





### OS platform

Limit the alerts queue view by selecting the OS platform that you're interested in investigating.

### Device group

If you have specific device groups that you're interested in checking, you can select the groups to limit the alerts queue view. 

### Associated threat

Use this filter to focus on alerts that are related to high profile threats. You can see the full list of high-profile threats in [Threat analytics](threat-analytics.md).

## Related topics

- [Manage Microsoft Defender for Endpoint alerts](manage-alerts.md)
- [Investigate Microsoft Defender for Endpoint alerts](investigate-alerts.md)
- [Investigate a file associated with a Microsoft Defender for Endpoint alert](investigate-files.md)
- [Investigate devices in the Microsoft Defender for Endpoint Devices list](investigate-machines.md)
- [Investigate an IP address associated with a Microsoft Defender for Endpoint alert](investigate-ip.md)
- [Investigate a domain associated with a Microsoft Defender for Endpoint alert](investigate-domain.md)
- [Investigate a user account in Microsoft Defender for Endpoint](investigate-user.md)

