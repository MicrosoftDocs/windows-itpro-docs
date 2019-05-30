---
title: Microsoft Defender Advanced Threat Protection portal overview
description: Use Microsoft Defender Security Center to monitor your enterprise network and assist in responding to alerts to potential advanced persistent threat (APT) activity or data breaches.
keywords: Microsoft Defender Security Center, portal, cybersecurity threat intelligence, dashboard, alerts queue, machines list, settings, machine management, advanced attacks
search.product: eADQiWindows 10XVcnh
search.appverid: met150
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

# Microsoft Defender Security Center portal overview

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-portaloverview-abovefoldlink) 

Enterprise security teams can use Microsoft Defender Security Center to monitor and assist in responding to alerts of potential advanced persistent threat (APT) activity or data breaches.

You can use [Microsoft Defender Security Center](https://securitycenter.windows.com/) to:
- View, sort, and triage alerts from your endpoints
- Search for more information on observed indicators such as files and IP Addresses
- Change Microsoft Defender ATP settings, including time zone and review licensing information.

## Microsoft Defender Security Center
When you open the portal, you’ll see the main areas of the application:

 ![Microsoft Defender Advanced Threat Protection portal](images/dashboard.png)

- (1) Navigation pane
- (2) Main portal
- (3) Search, Community center, Time settings, Help and support, Feedback

> [!NOTE]
> Malware related detections will only appear if your machines are using Windows Defender Antivirus as the default real-time protection antimalware product.

You can navigate through the portal using the menu options available in all sections. Refer to the following table for a description of each section.

Area | Description
:---|:---
(1) Navigation pane | Use the navigation pane to move between the **Dashboards**, **Alerts queue**, **Automated investigations**, **Machines list**, **Service health**, **Advanced hunting**, and **Settings**.
**Dashboards**	| Access the Security operations, the Secure Score, or Threat analytics dashboard.
**Incidents** | View alerts that have been aggregated as incidents.
**Alerts** | View alerts generated from machines in your organizations.
**Automated investigations** | Displays a list of automated investigations that's been conducted in the network, the status of each investigation and other details such as when the investigation started and the duration of the investigation.
**Advanced hunting** | Advanced hunting allows you to proactively hunt and investigate across your organization using a powerful search and query tool.
**Machines list** | Displays the list of machines that are onboarded to Microsoft Defender ATP, some information about them, and the corresponding number of alerts.
**Service health** | Provides information on the current status of the Window Defender ATP service. You'll be able to verify that the service health is healthy or if there are current issues.
**Settings** |	Shows the settings you selected during onboarding and lets you update your industry preferences and retention policy period. You can also set other configuration settings such as email notifications, activate the preview experience, enable or turn off advanced features, SIEM integration, threat intel API, build Power BI reports, and set baselines for the Secure Score dashboard.
**(2) Main portal** | Main area where you will see the different views such as the Dashboards, Alerts queue, and Machines list.
**(3) Community center, Time settings,  Help and support, Feedback** | **Community center** -Access the Community center to learn, collaborate, and share experiences about the product. </br></br>  **Time settings** - Gives you access to the configuration settings where you can set time zones and view license information. </br></br>  **Help and support** - Gives you access to the Microsoft Defender ATP guide, Microsoft support, and Premier support.</br></br> **Feedback** - Access the feedback button to provide comments about the portal. 

## Microsoft Defender ATP icons
The following table provides information on the icons used all throughout the portal:

Icon | Description
:---|:---
![ATP logo icon](images\atp-logo-icon.png)| Microsoft Defender ATP logo
![Alert icon](images\alert-icon.png)| Alert – Indication of an activity correlated with advanced attacks.
![Detection icon](images\detection-icon.png)| Detection – Indication of a malware threat detection.
![Active threat icon](images\active-threat-icon.png)| Active threat – Threats actively executing at the time of detection.
![Remediated icon](images\remediated-icon.png)| Remediated – Threat removed from the machine.
![Not remediated icon](images\not-remediated-icon.png)| Not remediated – Threat not removed from the machine.
![Thunderbolt icon](images\atp-thunderbolt-icon.png)| Indicates events that triggered an alert in the **Alert process tree**.
![Machine icon](images\atp-machine-icon.png)| Machine icon
![Windows Defender AV events icon](images\atp-windows-defender-av-events-icon.png)| Windows Defender Antivirus events
![Application Guard events icon](images\atp-Application-Guard-events-icon.png)| Windows Defender Application Guard events
![Device Guard events icon](images\atp-Device-Guard-events-icon.png)| Windows Defender Device Guard events
![Exploit Guard events icon](images\atp-Exploit-Guard-events-icon.png)| Windows Defender Exploit Guard events
![SmartScreen events icon](images\atp-Smart-Screen-events-icon.png)| Windows Defender SmartScreen events
![Firewall events icon](images\atp-Firewall-events-icon.png)| Windows Firewall events
![Response action icon](images\atp-respond-action-icon.png)| Response action
![Process events icon](images\atp-process-event-icon.png)| Process events
![Network communication events icon](images\atp-network-communications-icon.png)| Network events
![File observed events icon](images\atp-file-observed-icon.png)| File  events
![Registry events icon](images\atp-registry-event-icon.png)| Registry events
![Module load DLL events icon](images\atp-module-load-icon.png)| Load DLL events
![Other events icon](images\atp-Other-events-icon.png)| Other events
![Access token modification icon](images\atp-access-token-modification-icon.png)| Access token modification
![File creation icon](images\atp-file-creation-icon.png)| File creation
![Signer icon](images\atp-signer-icon.png)| Signer
![File path icon](images\atp-File-path-icon.png)| File path
![Command line icon](images\atp-command-line-icon.png)| Command line
![Unsigned file icon](images\atp-unsigned-file-icon.png)| Unsigned file
![Process tree icon](images\atp-process-tree.png)| Process tree
![Memory allocation icon](images\atp-memory-allocation-icon.png)| Memory allocation
![Process injection icon](images\atp-process-injection.png)| Process injection
![Powershell command run icon](images\atp-powershell-command-run-icon.png)| Powershell command run
![Community center icon](images\atp-community-center.png) | Community center 
![Notifications icon](images\atp-notifications.png) | Notifications
![No threats found](images\no-threats-found.png) | Automated investigation - no threats found
![Failed icon](images\failed.png) | Automated investigation - failed
![Partially remediated icon](images\partially-investigated.png) | Automated investigation - partially investigated
![Termindated by system](images\terminated-by-system.png) | Automated investigation - terminated by system
![Pending icon](images\pending.png) | Automated investigation - pending
![Running icon](images\running.png) | Automated investigation - running
![Remediated icon](images\remediated.png) | Automated investigation - remediated 
![Partially investigated icon](images\partially_remediated.png) | Automated investigation - partially remediated
![Threat insights icon](images\tvm_bug_icon.png) | Threat & Vulnerability Management - threat insights
![Possible active alert icon](images\tvm_alert_icon.png) | Threat & Vulnerability Management - possible active alert 
![Recommendation insights icon](images\tvm_insight_icon.png) | Threat & Vulnerability Management - recommendation insights

## Related topics
- [Understand the Microsoft Defender Advanced Threat Protection portal](use.md)
- [View the Security operations dashboard](security-operations-dashboard.md)
- [View the Secure Score dashboard and improve your secure score](secure-score-dashboard.md)
- [View the Threat analytics dashboard and take recommended mitigation actions](threat-analytics.md)
