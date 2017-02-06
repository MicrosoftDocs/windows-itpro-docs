---
title: Investigate Windows Defender Advanced Threat Protection alerts
description: Use the investigation options to get details on which alerts are affecting your network, what they mean, and how to resolve them.
keywords: investigate, investigation, machines, machine, endpoints, endpoint, alerts queue, dashboard, IP address, file, submit, submissions, deep analysis, timeline, search, domain, URL, IP
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Investigate Windows Defender Advanced Threat Protection alerts

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You can click an alert in any of the [alert queues](alerts-queue-windows-defender-advanced-threat-protection.md) to begin an investigation. Selecting an alert brings up the **Alert management pane**, while clicking an alert brings you the alert details view where general information about the alert, some recommended actions, an alert process tree, an incident graph, and an alert timeline is shown.  

Alerts attributed to an adversary or actor display a colored tile with the actor name.

![A detailed view of an alert when clicked](images/alert-details.png)

Click on the actor's name to see a threat intelligence profile of the actor, including a brief overview of the actor, their interests or targets, tools, tactics, and processes (TTPs) as well as areas where it's active worldwide. You will also see a set of recommended actions to take.

Some actor profiles include a link to download a more comprehensive threat intelligence report.

## Alert process tree
The **Alert process tree** takes alert triage and investigation to the next level by displaying the alert and its evidence with other events that occurred in the same execution context and time. This broad triage context of the alert and surrounding events is available on the alert page.

![Image of the alert process tree](images/atp-alert-process-tree.png)

The alert process tree expands to display the execution path of the alert, its evidence, and related events that occurred in proximity - before and after - the alert.

You’ll see markers ![Image of thunderbolt icon](images/atp-thunderbolt-icon.png)that indicate related events. These icons also indicate the events that triggered the alert.

>[!NOTE]
>The alert process tree might not be available in some alerts.

Selecting an indicator within the alert process tree brings up the **Alert details** pane where you can take a deeper look at the details about the alert.

You can take the following management actions on an alert from the **Alert management** pane:







## Incident graph
The incident graph provides a visual representation of where an alert was seen, events that triggered the alert, and which other machines are affected by the event. It provides an illustrated alert footprint on the original machine and expands to show the footprint of each alert event on other machines.

You can click the circles on the incident graph to expand the nodes and view the associated events or files related to the alert.

## Alert spotlight
The alert spotlight feature helps ease investigations by highlighting alerts related to a specific machine and events. You can highlight an alert and its related events in the machine timeline to increase your focus during an investigation.

You can click on the machine link from the alert view to see the alerts related to the machine.

  > [!NOTE]
  > This shortcut is not available from the Incident graph machine links.  

Alerts related to the machine are displayed under the **Alerts related to this machine** section.
Clicking on an alert row takes you the to the date in which the alert was flagged on **Machine timeline**. This eliminates the need to manually filter and drag the machine timeline marker to when the alert was seen on that machine.

You can also choose to highlight an alert from the **Alerts related to this machine** or from the  **Machine timeline** section to see the correlation between the alert and other events that occurred on the machine. Right-click on any alert from either section and select **Mark related events**. This highlights alerts and events that are related and helps differentiate between the other alerts listed in the timeline. Highlighted events are displayed in all filtering modes whether you choose to view the timeline by **Detections**, **Behaviours**, or **Verbose**.

You can also remove the highlight by right-clicking a highlighted alert and selecting **Unmark related events**.


### Related topics
- [View the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
- [View and organize the Windows Defender Advanced Threat Protection Alerts queue](alerts-queue-windows-defender-advanced-threat-protection.md)
- [Investigate machines in the Windows Defender ATP Machines view](investigate-machines-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate an IP address associated with a Windows Defender ATP alert](investigate-ip-windows-defender-advanced-threat-protection.md)
- [Investigate a domain associated with a Windows Defender ATP alert](investigate-domain-windows-defender-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)
