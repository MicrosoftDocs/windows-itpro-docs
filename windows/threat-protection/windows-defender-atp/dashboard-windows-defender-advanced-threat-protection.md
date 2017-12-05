---
title: Windows Defender Advanced Threat Protection Security operations dashboard
description: Use the Dashboard to identify machines at risk, keep track of the status of the service, and see statistics and information about machines and alerts.
keywords: dashboard, alerts, new, in progress, resolved, risk, machines at risk, infections, reporting, statistics, charts, graphs, health, active malware detections, threat category, categories, password stealer, ransomware, exploit, threat, low severity, active malware
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 10/17/2017
---

# View the Windows Defender Advanced Threat Protection Security operations dashboard

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-secopsdashboard-abovefoldlink) 

The **Security operations dashboard** displays a snapshot of:

- The latest active alerts on your network
- Daily machines reporting
- Machines at risk
- Users at risk
- Machines with active malware alerts
- Sensor health
- Service health

You can explore and investigate alerts and machines to quickly determine if, where, and when suspicious activities occurred in your network to help you understand the context they appeared in.

From the **Security operations dashboard** you will see aggregated events to facilitate the identification of significant events or behaviors on a machine. You can also drill down into granular events and low-level indicators.

It also has clickable tiles that give visual cues on the overall health state of your organization. Each tile opens a detailed view of the corresponding overview.

## Active alerts
You can view the overall number of active ATP alerts from the last 30 days in your network from the **ATP alerts** tile. Alerts are grouped into **New** and **In progress**.

![Click on each slice or severity to see a list of alerts from the past 30 days](images/atp-alerts-tile.png)

Each group is further sub-categorized into their corresponding alert severity levels. Click the number of alerts inside each alert ring to see a sorted view of that category's queue (**New** or **In progress**).

For more information see, [Alerts overview](alerts-queue-windows-defender-advanced-threat-protection.md).

The **Latest active alerts** section includes the latest active alerts in your network. Each row includes an alert severity category and a short description of the alert. Click an alert to see its detailed view, or **Alerts queue** at the top of the list to go directly to the Alerts queue. For more information see,  [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md) and [Alerts overview](alerts-queue-windows-defender-advanced-threat-protection.md).

## Daily machines reporting
The **Daily machines reporting** tile shows a bar graph that represents the number of machines reporting daily in the last 30 days. Hover over individual bars on the graph to see the exact number of machines reporting in each day.

![Image of daily machines reporting tile](images/atp-daily-machines-reporting.png)

## Machines at risk
This tile shows you a list of machines with the highest number of active alerts. The total number of alerts for each machine is shown in a circle next to the machine name, and then further categorized by severity levels at the far end of the tile (hover over each severity bar to see its label).

![The Machines at risk tile shows a list of machines with the highest number of alerts, and a breakdown of the severity of the alerts](images/atp-machines-at-risk.png)

Click the name of the machine to see details about that machine. For more information see, [Investigate machines in the Windows Defender Advanced Threat Protection Machines list](investigate-machines-windows-defender-advanced-threat-protection.md).

You can also click **Machines list** at the top of the tile to go directly to the **Machines list**, sorted by the number of active alerts. For more information see, [Investigate machines in the Windows Defender Advanced Threat Protection Machines list](investigate-machines-windows-defender-advanced-threat-protection.md).

## Users at risk
The tile shows you a list of user accounts with the most active alerts. 

![User accounts at risk tile shows a list of user accounts with the highest number of alerts and a breakdown of the severity of the alerts](images/atp-users-at-risk.png)

Click the user account to see details about the user account. For more information see [Investigate a user account](investigate-user-windows-defender-advanced-threat-protection.md).

## Machines with active malware detections
The **Machines with active malware detections** tile will only appear if your endpoints are using Windows Defender Antivirus.

Active malware is defined as threats that were actively executing at the time of detection.

Hover over each bar to see the number of active malware detections (as **Malware detections**) and the number of endpoints with at least one active detection (as **Machines**) over the past 30 days.

![The Machines with active malware detections tile shows the number of threats and machines for each threat category](images/atp-machines-active-threats-tile.png)

The chart is sorted into five categories:

- **Ransomware** - threats that prevent user access to a machine or its files and demand payment to restore access.
- **Credential theft** - threats that attempt to steal credentials.
- **Exploit** - threats that use software vulnerabilities to infect machines.
- **Backdoor** - threats that gives a malicious hacker access to and control of machines.
- **General** - threats that perform unwanted actions, including actions that can disrupt, cause direct damage, and facilitate intrusion and data theft.
- **PUA** - applications that install and perform undesirable activity without adequate user consent.

Threats are considered "active" if there is a very high probability that the malware was executing on your network, as opposed to statically located on-disk.

Clicking on any of these categories will navigate to the [Machines list](investigate-machines-windows-defender-advanced-threat-protection.md), filtered by the appropriate category. This lets you see a detailed breakdown of which machines have active malware detections, and how many threats were detected per machine.

> [!NOTE]
> The **Machines with active malware detections** tile will only appear if your endpoints are using [Windows Defender Antivirus](https://technet.microsoft.com/library/mt622091(v=vs.85).aspx) as the default real-time protection antimalware product.



## Sensor health
The **Sensor health** tile provides information on the individual endpoint’s ability to provide sensor data to the Windows Defender ATP service. It reports how many machines require attention and helps you identify problematic machines.

![Sensor health tile](images/atp-tile-sensor-health.png)

There are two status indicators that provide information on the number of machines that are not reporting properly to the service:
- **Inactive** - Machines that have stopped reporting to the Windows Defender ATP service for more than seven days in the past month.
-	**Misconfigured** – These machines might partially be reporting sensor data to the Windows Defender ATP service and might have configuration errors that need to be corrected.

When you click any of the groups, you’ll be directed to machines list, filtered according to your choice. For more information, see [Check sensor state](check-sensor-status-windows-defender-advanced-threat-protection.md) and [Investigate machines](investigate-machines-windows-defender-advanced-threat-protection.md).

## Service health
The **Service health** tile informs you if the service is active or if there are issues.

![The Service health tile shows an overall indicator of the service](images/status-tile.png)

For more information on the service health, see [Check the Windows Defender ATP service health](service-status-windows-defender-advanced-threat-protection.md).




>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-secopsdashboard-belowfoldlink)

## Related topics
- [View and organize the Windows Defender Advanced Threat Protection Alerts queue ](alerts-queue-windows-defender-advanced-threat-protection.md)
- [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate an IP address associated with a Windows Defender ATP alert](investigate-ip-windows-defender-advanced-threat-protection.md)
- [Investigate a domain associated with a Windows Defender ATP alert](investigate-domain-windows-defender-advanced-threat-protection.md)
- [View and organize the Windows Defender ATP Machines list](machines-view-overview-windows-defender-advanced-threat-protection.md)
- [Investigate machines in the Windows Defender ATP Machines list](investigate-machines-windows-defender-advanced-threat-protection.md)
- [Investigate a user account in Windows Defender ATP ](investigate-user-windows-defender-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)
- [Take response actions in Windows Defender ATP](response-actions-windows-defender-advanced-threat-protection.md)
