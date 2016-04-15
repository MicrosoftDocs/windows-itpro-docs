---
title: Use the Windows Defender Advanced Threat Protection portal
description: Learn about the features on Windows Defender ATP portal, including how alerts work, and suggestions on how to investigate possible breaches and attacks.
keywords: dashboard, alerts queue, manage alerts, investigation, investigate alerts, investigate machines, submit files, deep analysis, high, medium, low, severity, 
search.product: eADQiWindows 10XVcnh 
ms.prod: W10
ms.mktglfcycl:
ms.sitesec: library
---

# Use the Windows Defender Advanced Threat Protection portal

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

A typical security breach investigation requires a member of a security operations team to:

1. View an alert on the **Dashboard** or **Alerts queue**
2. Review the indicators of compromise (IOC) or indications of attack (IOAs)
3. Review a timeline of alerts, behaviors, and events from the machine
4. Manage alerts, understand the threat/potential breach, collect information to support taking action, and resolve the alert

![Flowchart describing the four stages of investigation](images/overview.png)
 
Security operation teams can use Windows Defender ATP Portal to carry out this end-to-end process without having to leave the portal.
Teams can monitor the overall status of enterprise endpoints from the **Dashboard**, gain insight on the various alerts, their category, when they were observed, and how long they’ve been in the network at a glance.

## Windows Defender ATP alerts
Alerts in the portal help to notify you of detected threat behaviors or activities on your endpoints.
The **Dashboard** and **Alerts queue** provide important information about your endpoints that can help you address alerts.
The **Dashboard** groups active alerts into **New** or **In progress** queues, and supports filtering by severity levels. It also has clickable tiles that give visual cues on the overall health status of your organization. Each tile opens a detailed view of the corresponding overview.
Alerts are organized in three queues, by their workflow status: 

- **New**
- **In progress**
- **Resolved**

There are three alert severity levels, described in the following table.

Alert severity | Description
:---|:---
High (Red) | Threats often associated with APT. These alerts pose a high risk due to the severity of the damage they might inflict on endpoints.
Medium (Orange) | Threats considered to be abnormal or suspicious in nature such as anomalous registry modifications and loading of executable files.
Low (Yellow) | Threats associated with prevalent malware and hack-tools that pose a lower risk to endpoints.


### In this section

Topic | Description 
:---|:---
[View the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-advanced-threat-protection.md) | The **Dashboard** provides a snapshot of your network. You can view aggregates of alerts, the overall status of the service of the endpoints on your network, investigate machines, files, and URLs, and see snapshots of threats seen on machines.
[View and organize the Windows Defender Advanced Threat Protection Alerts queue](alerts-queue-windows-advanced-threat-protection.md) | You can sort and filter alerts across your network, and drill down on individual alert queues.
[Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-advanced-threat-protection.md) | The Manage Alert menu on every alert lets you change an alert's status, resolve it, suppress it, or contribute comments about the alert.
[Investigate machines in the Windows Defender ATP Machines view](machines-view-windows-advanced-threat-protection.md) | The **Machines view** shows a list of the machines in your network, the corresponding number of active alerts for each machine categorized by alert severity levels, as well as the number of threats.
[Submit files to the Windows Defender ATP Deep analysis feature](deep-analysis-windows-advanced-threat-protection.md) | You can submit files for deep analysis to see detailed information about the file’s activities, observed behaviors, and associated artifacts (such as dropped files, registry modifications, and communications with IPs). 

