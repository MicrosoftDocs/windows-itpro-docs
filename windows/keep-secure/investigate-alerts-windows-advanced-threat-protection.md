---
title: Investigate Windows Defender Advanced Threat Protection alerts
description: Use the investigation options to get details on which alerts are affecting your network, what they mean, and how to resolve them.
keywords: investigate, investigation, machines, machine, endpoints, endpoint, alerts queue, dashboard, IP address, file, submit, submissions, deep analysis, timeline, search, domain, URL, IP
search.product: eADQiWindows 10XVcnh 
ms.prod: W10
ms.mktglfcycl:
ms.sitesec: library
---

# Investigate Windows Defender Advanced Threat Protection alerts

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

Alerts in Windows Defender ATP indicate possible security breaches on endpoints in your organization. The **Dashboard** provides a quick view of active alerts, their severity levels, and information on the machines with the most active alerts. 

You can investigate alerts by clicking an alert in [any of the alert queues](alerts-queue-windows-advanced-threat-protection.md).

Reviewing the various alerts and their severity can help you take the appropriate action to protect your organization's endpoints.

## Investigate a machine
Investigate the details of an alert raised on a specific machine to identify other behaviors or events that might be related to the alert or the potential scope of breach. 

You can click on affected machines whenever you see them in the portal to open a detailed report about that machine. Affected machines are identified in the following areas:

- The [Machines view](machines-view-windows-advanced-threat-protection.md)
- The [Alerts queue](alerts-queue-windows-advanced-threat-protection.md)
- The [Dashboard](dashboard-windows-advanced-threat-protection.md)
- Any individual alert
- Any individual file details view
- Any IP address or domain details view

When you investigate a specific machine, you'll see:

- **Machine details**, **Machine IP Addresses**, and **Machine Reporting**
- **Alerts related to this machine**
- **Machine timeline**

The machine details, IP, and reporting sections display some attributes of the machine such as its name, domain, OS, IP address, and how long it's been reporting telemetry to the Windows Defender ATP service.

The **Alerts related to this machine** section provides a list of alerts that are associated with the machine. This list is a simplified version of the [Alerts queue](alerts-queue-windows-advanced-threat-protection.md), and shows the date that the alert was detected, a short description of the alert, the alert's severity, the alert's threat category, and the alert's status in the queue.

The **Machine timeline** section provides a chronological view of the events and associated alerts that have been observed on the machine.

You'll see an aggregated view of alerts, a short description of the alert, details on the action taken, and which user ran the action. This helps you see significant activities or behaviors that occurred on a machine within your network in relation to a specific time frame. Several icons are used to identify various detections and their current state. For more information, see [Windows Defender ATP icons](portal-overview-windows-defender-advanced-threat-protection.md#windows-defender-atp-icons).

This feature also enables you to selectively drill down into a behavior or event that occurred within a given time period. You can view the temporal sequence of events that occurred on a machine over a specified time period.

![The timeline shows an interactive history of the alerts seen on a machine](images/timeline.png)

Use the search bar to look for specific alerts or files associated with the machine.

You can also filter by:

- Signed or unsigned files
- Detections mode: displays Windows ATP Alerts and detections
- Behaviors mode: displays "detections" and selected events of interest
- Verbose mode: displays "behaviors" (including "detections"), and all reported events 
- Logged on users, System, Network, or Local service

Use the time-based slider to filter events from a specific date. By default, the machine timeline is set to display the events of the current day. 

Using the slider updates the listed alerts to the date that you select. Displayed events are filtered from that date and older.

The slider is helpful when you're investigating a particular alert on a machine. You can navigate from the **Alerts view** and click on the machine associated with the alert to jump to the specific date when the alert was observed, enabling you to investigate the events that took place around the alert.

From the **Machine view**, you can also navigate to the file, IP, or URL view and the timeline associated with an alert is retained, helping you view the investigation from different angles and retain the context of the event time line.

From the list of events that are displayed in the timeline, you can examine the behaviors or events in to help identify indicators of interests such as files and IP addresses to help determine the scope of a breach. You can then use the information to respond to events and keep your system secure.

Windows Defender ATP monitors and captures questionable behavior on Windows 10 machines and displays the process tree flow in the **Machine timeline**. This gives you better context of the behavior which can contribute to understanding the correlation between events, files, and IP addresses in relation to the machine. 

![The process tree shows you a hierarchical history of processes and events on the machine](images/machine-investigation.png)
 
**Investigate a machine:**

1. Select the machine that you want to investigate. You can select or search a machine from any of the following views:
  - **Dashboard** - click the machine name from the **Top machines with active alerts** section
  - **Alerts queue** - click the machine name beside the machine icon
  - **Machines view** - click the heading of the machine name 
  - **Search box** - select **Machine** from the drop-down menu and enter the machine name 
2. Information about the specific machine is displayed. 


**Use the machine timeline**

1. Use the sort and filter feature to narrow down the search results. 
2. Use the timeline search box to filter specific indicators that appear in the machine timeline.
3. Click the expand icon ![The expand icon looks like a plus symbol](images/expand.png) in the timeline row or click anywhere on the row to see additional information about the alert, behavior, or event. 

## Investigate a file
Investigate the details of a file associated with a specific alert, behavior, or event to help determine if the file exhibits malicious activities, identify the attack motivation, and understand the potential scope of the breach. 

You can get information from the following sections in the file view:

- File details
- Deep analysis
- File in organization
- Observed in organization

The file details section shows attributes of the file such as its MD5 and its prevalence worldwide.

The **Deep analysis** section provides the option of submitting a file for deep analysis to gain detailed visibility on observed suspicious behaviors, and associated artifacts. For more information on submitting files for deep analysis, see the **Deep analysis** topic.

The **File in organization** section provides details on the prevalence of the file and the name observed in the organization. 

The **Observed in organization** section provides a chronological view on the events and associated alerts that were observed on the file. 

You'll see a list of machines associated with the file and a description of the action taken by the file.

**Investigate a file**

1. Select the file you want to investigate. You can select a file from any of the following views or use the Search box:
  - Alerts - click the file links from the **Description** or **Details** in the Alert timeline
  - Machines view - click the file links in the **Description** or **Details** columns in the **Observed on machine** section 
  - Search box - select **File** from the drop-down menu and enter the file name 
2. View the file details.
3. Use the search filters to define the search criteria. You can also use the timeline search box to further filter displayed search results.

## Investigate an IP address

Examine possible communication between your machines and external internet protocol (IP) addresses.

Identifying all machines in the organization that communicated with a suspected or known malicious IP address, such as Command and Control (C2) servers, helps determine the potential scope of breach, associated files, and infected machines.

You can information from the following sections in the IP address view:

- IP address details
- IP in organization
- Communication with IP from organization

The IP address details section shows attributes of the IP address such as its ASN and its reverse IPs.

The **IP in organization** section provides details on the prevalence of the IP address in the organization. 

The **Communication with IP in organization** section provides a chronological view on the events and associated alerts that were observed on the IP address. 

**Investigate an external IP:**

1. Select **IP** from the **Search bar** drop-down menu.
2. Enter the IP address in the **Search** field. 
3. Click the search icon or press **Enter**. 

Details about the IP address are displayed, including: registration details (if available), reverse IPs (for example, domains), prevalence of machines in the organization that communicated with this IP Address (during selectable time period), and the machines in the organization that were observed communicating with this IP address. 

> **Note**&nbsp;&nbsp;Search results will only be returned for IP addresses observed in communication with machines in the organization.

Use the search filters to define the search criteria. You can also use the timeline search box to filter the displayed results of all machines in the organization observed communicating with the IP address, the file associated with the communication and the last date observed.

Clicking any of the machine names will take you to that machine's view, where you can continue investigate reported alerts, behaviors, and events. 

## Investigate a domain

Investigate a domain to see if machines and servers in your enterprise network have been communicating with a known malicious domain. 

You can see information from the following sections in the URL view:

- URL details
- URL in organization
- Prevalence in organization
- Communication with URL from organization

The URL address details section shows attributes of the URL such as its contacts and nameservers.

The **URL in organization** section provides details on the prevalence of the URL in the organization. 

The **Communication with URL in organization** section provides a chronological view on the events and associated alerts that were observed on the URL.

**Investigate a domain:**

1. Select **URL** from the **Search bar** drop-down menu. 
2. Enter the URL in the **Search** field. 
3. Click the search icon   or press **Enter**. Details about the URL are displayed. Note: search results will only be returned for URLs observed in communications from machines in the organization.
4. Use the search filters to define the search criteria. You can also use the timeline search box to filter the displayed results of all machines in the organization observed communicating with the URL, the file associated with the communication and the last date observed.
5. Clicking any of the machine names will take you to that machine's view, where you can continue investigate reported alerts, behaviors, and events.

### Related topics
- [View the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-advanced-threat-protection.md)
- [View and organize the Windows Defender Advanced Threat Protection Alerts queue](alerts-queue-windows-advanced-threat-protection.md)
- [Submit files to the Windows Defender ATP Deep analysis feature](deep-analysis-windows-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-advanced-threat-protection.md)