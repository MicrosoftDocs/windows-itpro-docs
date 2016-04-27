---
title: Use the Windows Defender Advanced Threat Protection portal
description: Learn about the features on Windows Defender ATP portal, including how alerts work, and suggestions on how to investigate possible breaches and attacks.
keywords: dashboard, alerts queue, manage alerts, investigation, investigate alerts, investigate machines, submit files, deep analysis, high, medium, low, severity,
search.product: eADQiWindows 10XVcnh
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Use the Windows Defender Advanced Threat Protection portal

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

A typical security breach investigation requires a member of a security operations team to:

1. View an alert on the **Dashboard** or **Alerts queue**
2. Review the indicators of compromise (IOC) or indications of attack (IOAs)
3. Review a timeline of alerts, behaviors, and events from the machine
4. Manage alerts, understand the threat or potential breach, collect information to support taking action, and resolve the alert

![Flowchart describing the four stages of investigation](images/overview.png)

Security operation teams can use Windows Defender ATP Portal to carry out this end-to-end process without having to leave the portal.
Teams can monitor the overall status of enterprise endpoints from the **Dashboard**, gain insight on the various alerts, their category, when they were observed, and how long they’ve been in the network at a glance.

### In this section

Topic | Description
:---|:---
[View the Dashboard](dashboard-windows-defender-advanced-threat-protection.md) | The Windows Defender ATP  **Dashboard** provides a snapshot of your network. You can view aggregates of alerts, the overall status of the service of the endpoints on your network, investigate machines, files, and URLs, and see snapshots of threats seen on machines.
[View and organize the Alerts queue](alerts-queue-windows-defender-advanced-threat-protection.md) | You can sort and filter alerts across your network, and drill down on individual alert queues such as new, in progress, or resolved queues.
[Investigate alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)| Investigate alerts in Windows Defender ATP which might indicate possible security breaches on endpoints in your organization.
[Investigate machines](machines-view-windows-defender-advanced-threat-protection.md) | The **Machines view** shows a list of the machines in your network, the corresponding number of active alerts for each machine categorized by alert severity levels, as well as the number of threats.
[Investigate files](investigate-files-windows-defender-advanced-threat-protection.md) | Investigate the details of a file associated with a specific alert, behavior, or event to help determine if the file exhibits malicious activities, identify the attack motivation, and understand the potential scope of the breach.
[Investigate an IP address](investigate-ip-windows-defender-advanced-threat-protection.md) | Examine possible communication between your machines and external internet protocol (IP) addresses.
[Investigate a domain](investigate-domain-windows-defender-advanced-threat-protection.md) | Investigate a domain to see if machines and servers in your enterprise network have been communicating with a known malicious domain.
[Manage alerts](manage-alerts-windows-defender-advanced-threat-protection.md) | The **Manage Alert** menu on every alert lets you change an alert's status, resolve it, suppress it, or contribute comments about the alert.
