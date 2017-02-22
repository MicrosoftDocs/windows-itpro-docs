---
title: Investigate machines in the Windows Defender ATP Machines view
description: Investigate affected machines in your network by reviewing alerts, network connection information, and service health on the Machines view.
keywords: machines, endpoints, machine, endpoint, alerts queue, alerts, machine name, domain, last seen, internal IP, active alerts, active malware detections, threat category, filter, sort, review alerts, network, connection, malware, type, password stealer, ransomware, exploit, threat, low severity
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Investigate machines in the Windows Defender ATP Machines view

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

## Investigate machines
Investigate the details of an alert raised on a specific machine to identify other behaviors or events that might be related to the alert or the potential scope of breach.

You can click on affected machines whenever you see them in the portal to open a detailed report about that machine. Affected machines are identified in the following areas:

- The [Machines view](investigate-machines-windows-defender-advanced-threat-protection.md)
- The [Alerts queue](alerts-queue-windows-defender-advanced-threat-protection.md)
- The [Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
- Any individual alert
- Any individual file details view
- Any IP address or domain details view

When you investigate a specific machine, you'll see:
-	Machine details, Logged on user, and Machine Reporting
- Alerts related to this machine
- Machine timeline

![Image of machine details page](images/atp-machine-details-view.png)

The machine details, total logged on users and machine reporting sections display various attributes about the machine. You’ll see details such as machine name, health status, actions you can take on the machine. For more information on how to take action on a machine, see [Take response action on a machine](respond-machine-alerts-windows-defender-advanced-threat-protection.md).

You'll also see other information such as domain, operating system (OS), total logged on users and who frequently and less frequently logged on, IP address, and how long it's been reporting sensor data to the Windows Defender ATP service.

Clicking on the number of total logged on users in the Logged on user tile opens the Users Details pane that displays the following information for logged on users in the past 30 days:

-	Interactive and remote interactive logins
-	Network, batch, and system logins

![Image of user details pane](images/atp-user-details-pane.png)

You'll also see details such as logon types for each user account, the user group, and when the account was logged in.

 For more information, see [Investigate user entities](investigate-user-windows-defender-advanced-threat-protection.md).

The **Alerts related to this machine** section provides a list of alerts that are associated with the machine. This list is a simplified version of the [Alerts queue](alerts-queue-windows-defender-advanced-threat-protection.md), and shows the date when the last activity was detected, a short description of the alert, the user associated with the alert, the alert's severity, the alert's status in the queue, and who is addressing the alert.

You can also choose to highlight an alert from the **Alerts related to this machine** or from the  **Machine timeline** section to see the correlation between the alert and other events that occurred on the machine by right-clicking on the alert and selecting **Select and mark events**. This highlights alerts and related events and helps distinguish from other alerts and events appearing in the timeline. Highlighted events are displayed in all filtering modes whether you choose to view the timeline by **Detections**, **Behaviors**, or **Verbose**.

The **Machine timeline** section provides a chronological view of the events and associated alerts that have been observed on the machine.

This feature also enables you to selectively drill down into events that occurred within a given time period. You can view the temporal sequence of events that occurred on a machine over a specified time period.

![Image of machine timeline with events](images/atp-machine-timeline.png)

Windows Defender ATP monitors and captures questionable behavior on Windows 10 machines and displays the process tree flow in the **Machine timeline**. This gives you better context of the behavior which can contribute to understanding the correlation between events, files, and IP addresses in relation to the machine.

### Search for specific alerts
Use the search bar to look for specific alerts or files associated with the machine:

-	**Value** – Type in any search keyword to filter the timeline with the attribute you’re searching for.
-	**Informational level** – Click the drop-down button to filter by the following levels:
  - **Detections mode**: displays Windows ATP Alerts and detections
  -	**Behaviors mode**: displays "detections" and selected events of interest
  -	**Verbose mode**: displays "behaviors" (including "detections"), and all reported events
-	**User** – Click the drop-down button to filter the machine timeline by the following user associated events:
  -	Logon users
  -	System
  -	Network
  -	Local service


### Filter events from a specific date
Use the time-based slider to filter events from a specific date. By default, the machine timeline is set to display the events of the current day.

Using the slider updates the listed alerts to the date that you select. Displayed events are filtered from that date and older.

The slider is helpful when you're investigating a particular alert on a machine. You can navigate from the **Alerts view** and click on the machine associated with the alert to jump to the specific date when the alert was observed, enabling you to investigate the events that took place around the alert.

### Export machine timeline events
You can also export detailed event data from the machine timeline to conduct offline analysis. You can choose to export the machine timeline for the current date or specify a date range. You can export up to seven days of data and specify the specific time between the two dates.

![Image of export machine timeline events](images/atp-export-machine-timeline-events.png)

### Navigate between pages
Use the events per page drop-down to choose the number of alerts you’d like to see on the page. You can choose to display 20, 50, or 100 events per page. You can also move between pages by clicking **Older** or **Newer**.

From the **Machines view**, you can also navigate to the file, IP, or URL view and the timeline associated with an alert is retained, helping you view the investigation from different angles and retain the context of the event time line.

From the list of events that are displayed in the timeline, you can examine the behaviors or events in to help identify indicators of interests such as files and IP addresses to help determine the scope of a breach. You can then use the information to respond to events and keep your system secure.

![Image of machine timeline details pane](images/atp-machine-timeline-details-panel.png)


You can also use the [Alerts spotlight](investigate-alerts-windows-defender-advanced-threat-protection.md#alert-timeline) feature to see the correlation between alerts and events on a specific machine.

Expand an event to view associated processes related to the event. Click on the circle next to any process or IP address in the process tree to investigating further into the identified processes. This action brings up the **Details pane** which includes execution context of processes, network communications and a summary of metadata on the file or IP address.

This enhances the ‘in-context’ information across investigation and exploration activities, reducing the need to switch between contexts. It lets you focus on the task of tracing associations between attributes without leaving the current context.

## Related topics
- [View the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
- [View and organize the Windows Defender Advanced Threat Protection Alerts queue ](alerts-queue-windows-defender-advanced-threat-protection.md)
- [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate an IP address associated with a Windows Defender ATP alert](investigate-ip-windows-defender-advanced-threat-protection.md)
- [Investigate a domain associated with a Windows Defender ATP alert](investigate-domain-windows-defender-advanced-threat-protection.md)
- [View and organize the Windows Defender ATP Machines view](machines-view-overview-windows-defender-advanced-threat-protection.md)
- [Investigate a user account in Windows Defender ATP](investigate-user-windows-defender-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)
- [Take response actions in Windows Defender ATP](response-actions-windows-defender-advanced-threat-protection.md)
