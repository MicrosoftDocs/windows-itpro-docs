---
title: Investigate machines in the Microsoft Defender ATP Machines list
description: Investigate affected machines by reviewing alerts, network connection information, adding machine tags and groups, and checking the service health.
keywords: machines, tags, groups, endpoint, alerts queue, alerts, machine name, domain, last seen, internal IP, active alerts, threat category, filter, sort, review alerts, network, connection, type, password stealer, ransomware, exploit, threat, low severity, service heatlh
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
ms.topic: article
ms.date: 09/18/2018
---

# Investigate machines in the Microsoft Defender ATP Machines list

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-investigatemachines-abovefoldlink) 

## Investigate machines
Investigate the details of an alert raised on a specific machine to identify other behaviors or events that might be related to the alert or the potential scope of breach.

You can click on affected machines whenever you see them in the portal to open a detailed report about that machine. Affected machines are identified in the following areas:

- The [Machines list](investigate-machines.md)
- The [Alerts queue](alerts-queue.md)
- The [Security operations dashboard](security-operations-dashboard.md)
- Any individual alert
- Any individual file details view
- Any IP address or domain details view

When you investigate a specific machine, you'll see:
- Machine details, Logged on users, Machine risk, and Machine Reporting
- Alerts related to this machine
- Machine timeline

![Image of machine view](images/atp-azure-atp-machine.png)

The machine details, logged on users, machine risk, and machine reporting sections display various attributes about the machine.

**Machine details**</br>
The machine details tile provides information such as the domain and OS of the machine. If there's an investigation package available on the machine, you'll see a link that allows you to download the package.

For more information on how to take action on a machine, see [Take response action on a machine](respond-machine-alerts.md).


**Logged on users**</br>
Clicking on the logged on users in the Logged on users tile opens the Users Details pane that displays the following information for logged on users in the past 30 days:

-	Interactive and remote interactive logins
-	Network, batch, and system logins

![Image of user details pane](images/atp-azure-atp-machine-user.png)

You'll also see details such as logon types for each user account, the user group, and when the account logon occurred.

 For more information, see [Investigate user entities](investigate-user.md).

**Machine risk**</br>
The Machine risk tile shows the overall risk assessment of a machine. A machine's risk level can be determined using the number of active alerts or by a combination of multiple risks that may increase the risk assessment and their severity levels. You can influence a machine's risk level by resolving associated alerts manually or automatically and also by suppressing an alert. It's also indicators of the active threats that machines could be exposed to.

**Azure Advanced Threat Protection**</br> 
If you have enabled the Azure ATP feature and there are alerts related to the machine, you can click on the link that will take you to the Azure ATP page where more information about the alerts are provided. 

>[!NOTE]
>You'll need to enable the integration on both Azure ATP and Microsoft Defender ATP to use this feature. In Microsoft Defender ATP, you can enable this feature in advanced features. For more information on how to enable advanced features, see [Turn on advanced features](advanced-features.md).

**Machine reporting**</br>
Provides the last internal IP and external IP of the machine. It also shows when the machine was first and last seen reporting to the service. 

## Alerts related to this machine
The **Alerts related to this machine** section provides a list of alerts that are associated with the machine. You can also manage alerts from this section by clicking the circle icons to the left of the alert (or using Ctrl or Shift + click to select multiple alerts).

![Image of alerts related to machine](images/atp-alerts-related-to-machine.png)

This list is a filtered version of the [Alerts queue](alerts-queue.md), and shows the date when the alert's last activity was detected, a short description of the alert, the user account associated with the alert, the alert's severity, the alert's status in the queue, and who is addressing the alert.

You can also choose to highlight an alert from the **Alerts related to this machine** or from the  **Machine timeline** section to see the correlation between the alert and its related events on the machine by right-clicking on the alert and selecting **Select and mark events**. This highlights the alert and its related events and helps distinguish them from other alerts and events appearing in the timeline. Highlighted events are displayed in all information levels whether you choose to view the timeline by **Detections**, **Behaviors**, or **Verbose**.

## Machine timeline
The **Machine timeline** section provides a chronological view of the events and associated alerts that have been observed on the machine.

This feature also enables you to selectively drill down into events that occurred within a given time period. You can view the temporal sequence of events that occurred on a machine over a selected time period.  

![Image of machine timeline with events](images/atp-machines-timeline.png)

Microsoft Defender ATP monitors and captures suspicious or anomalous behavior on Windows 10 machines and displays the process tree flow in the **Machine timeline**. This gives you better context of the behavior which can contribute to understanding the correlation between events, files, and IP addresses in relation to the machine.


### Search for specific events
Use the search bar to look for specific timeline events. Harness the power of using the following defined search queries based on type:value pairs and event filter types to sift through the search results:

-	**Value** - Type in any search keyword to filter the timeline with the attribute you’re searching for. This search supports defined search queries based on type:value pairs.<br>
  You can use any of the following values:<br>
    - Hash: Sha1 or MD5
    - File name
    - File extension
    - Path
    - Command line
    - User
    - IP
    - URL

-	**Informational level** – Click the drop-down button to filter by the following levels:
    - Detections mode: displays Windows ATP Alerts and detections
    -	Behaviors mode: displays "detections" and selected events of interest
    -	Verbose mode: displays all raw events without aggregation or filtering

- **Event type** - Click the drop-down button to filter by events such as Windows     - Microsoft Defender ATP alerts, Windows Defender Application Guard events, registry events, file events, and others. 
    
    Filtering by event type allows you to define precise queries so that you see events with a specific focus. For example, you can search for a file name, then filter the results to only see Process events matching the search criteria or to only view file events, or even better: to view only network events over a period of time to make sure no suspicious outbound communications go unnoticed.


>[!NOTE]
> For firewall events to be displayed, you'll need to enable the audit policy, see [Audit Filtering Platform connection](https://docs.microsoft.com/windows/security/threat-protection/auditing/audit-filtering-platform-connection).
>Firewall covers the following events:
>- [5025](https://docs.microsoft.com/windows/security/threat-protection/auditing/event-5025) - firewall service stopped
>- [5031](https://docs.microsoft.com/windows/security/threat-protection/auditing/event-5031) - application blocked from accepting incoming connections on the network 
>-  [5157](https://docs.microsoft.com/windows/security/threat-protection/auditing/event-5157) - blocked connection




-	**User account** – Click the drop-down button to filter the machine timeline by the following user associated events:
    -	Logon users
    -	System
    -	Network
    -	Local service

The following example illustrates the use of type:value pair. The events were filtered by searching for the user jonathan.wolcott and network events as the event type:

![Image of events filtered by user and event type](images/atp-machine-timeline-filter.png)

The results in the timeline only show network communication events run in the defined user context.

### Filter events from a specific date
Use the time-based slider to filter events from a specific date. By default, the machine timeline is set to display the events of the current day.

Using the slider updates the listed alerts to the date that you select. Displayed events are filtered from that date and older.

The slider is helpful when you're investigating a particular alert on a machine. You can navigate from the **Alerts view** and click on the machine associated with the alert to jump to the specific date when the alert was observed, enabling you to investigate the events that took place around the alert.

### Export machine timeline events
You can also export detailed event data from the machine timeline to conduct offline analysis. You can choose to export the machine timeline for the current date or specify a date range. You can export up to seven days of data and specify the specific time between the two dates.

![Image of export machine timeline events](images/atp-machine-timeline-export.png)

### Navigate between pages
Use the events per page drop-down to choose the number of alerts you’d like to see on the page. You can choose to display 20, 50, or 100 events per page. You can also move between pages by clicking **Older** or **Newer**.

From the **Machines list**, you can also navigate to the file, IP, or URL view and the timeline associated with an alert is retained, helping you view the investigation from different angles and retain the context of the event time line.

From the list of events that are displayed in the timeline, you can examine the behaviors or events in to help identify indicators of interests such as files and IP addresses to help determine the scope of a breach. You can then use the information to respond to events and keep your system secure.

![Image of machine timeline details pane](images/atp-machine-timeline-details-panel.png)


You can also use the [Artifact timeline](investigate-alerts.md#artifact-timeline) feature to see the correlation between alerts and events on a specific machine.

Expand an event to view associated processes related to the event. Click on the circle next to any process or IP address in the process tree to investigate additional details of the identified processes. This action brings up the **Details pane** which includes execution context of processes, network communications and a summary of meta data on the file or IP address.

The details pane enriches the ‘in-context’ information across investigation and exploration activities, reducing the need to switch between contexts. It lets you focus on the task of tracing associations between attributes without leaving the current context.




## Related topics
- [View and organize the Microsoft Defender Advanced Threat Protection Alerts queue ](alerts-queue.md)
- [Manage Microsoft Defender Advanced Threat Protection alerts](manage-alerts.md)
- [Investigate Microsoft Defender Advanced Threat Protection alerts](investigate-alerts.md)
- [Investigate a file associated with a Microsoft Defender ATP alert](investigate-files.md)
- [Investigate an IP address associated with a Microsoft Defender ATP alert](investigate-ip.md)
- [Investigate a domain associated with a Microsoft Defender ATP alert](investigate-domain.md)
- [Investigate a user account in Microsoft Defender ATP](investigate-user.md)
