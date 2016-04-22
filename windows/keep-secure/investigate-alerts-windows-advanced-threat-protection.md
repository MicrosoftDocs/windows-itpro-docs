---
title: Investigate Windows Defender Advanced Threat Protection alerts
description: Use the investigation options to get details on which alerts are affecting your network, what they mean, and how to resolve them.
keywords: investigate, investigation, machines, machine, endpoints, endpoint, alerts queue, dashboard, IP address, file, submit, submissions, deep analysis, timeline, search, domain, URL, IP
search.product: eADQiWindows 10XVcnh 
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Investigate Windows Defender Advanced Threat Protection alerts

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

Alerts in Windows Defender ATP indicate possible security breaches on endpoints in your organization. 

There are three alert severity levels, described in the following table.

Alert severity | Description
:---|:---
High (Red) | Threats often associated with APT. These alerts pose a high risk due to the severity of the damage they might inflict on endpoints.
Medium (Orange) | Threats considered to be abnormal or suspicious in nature such as anomalous registry modifications and loading of executable files.
Low (Yellow) | Threats associated with prevalent malware and hack-tools that pose a lower risk to endpoints.

Reviewing the various alerts and their severity can help you take the appropriate action to protect your organization's endpoints.

Alerts are organized in three queues, by their workflow status: 

- **New**
- **In progress**
- **Resolved**

You can investigate alerts by clicking an alert in [any of the alert queues](alerts-queue-windows-advanced-threat-protection.md).

Details about the alert is displayed such as:
- Alert information such as when it was last observed
- Alert description
- Recommended actions
- The scope of the breach
- The alert timeline

[A detailed view of an alert when clicked](alert-details.png)

## Investigate a file
Investigate the details of a file associated with a specific alert, behavior, or event to help determine if the file exhibits malicious activities, identify the attack motivation, and understand the potential scope of the breach. 

You can get information from the following sections in the file view:

- File details
- Deep analysis
- File in organization
- Observed in organization

The file details section shows attributes of the file such as its MD5 hash or number and its prevalence worldwide.

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
