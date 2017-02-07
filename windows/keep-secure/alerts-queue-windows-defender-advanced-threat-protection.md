---
title: View and organize the Windows Defender ATP Alerts queue
description: Learn about how the Windows Defender ATP alerts queue work, and how to sort and filter lists of alerts.
keywords: alerts, queues, alerts queue, sort, order, filter, manage alerts, new, in progress, resolved, newest, time in queue, severity, time period
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Alerts queue overview

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

The **Alerts queue** shows a list of alerts that were flagged from endpoints in your network. Alerts appear in queues according to their current status. In any of the queues, you'll see details such as the severity of alerts and the number of machines where the alerts were seen.

Alerts are organized in three queues, by their workflow status:

- **New**
- **In progress**
- **Resolved**
- **Assigned to me**

To see a list of alerts, click any of the queues under the **Alerts queue** option in the navigation pane.

> [!NOTE]
> By default, the queues are sorted from newest to oldest.

## Sort and filter the alerts
You can sort and filter the alerts by using the available filters or clicking columns that allow you to sort the view in ascending or descending order.

![Alerts queue with numbers](images/alerts-queue-numbered.png)

Highlighted area|Area name|Description
:---|:---|:---
1 | Alert filters | Filter the list of alerts by severity, detection source, time period, or change the view from flat to grouped.
2 | Alert selected | Select an alert to bring up the **Alert management pane** to manage and see details about the alert.
3 | Alert management pane | View and manage alerts without leaving the alerts queue view.

### Filter the alerts list
You can use the following filters to limit the list of alerts displayed during an investigation:

**Severity**</br>

Alert severity | Description
:---|:---
High </br>(Red) | Threats often associated with advanced persistent threats (APT). These alerts indicate a high risk due to the severity of damage they can inflict on endpoints.
Medium </br>(Orange) | Threats rarely observed in the organization, such as anomalous registry change, execution of suspicious files, and observed behaviors typical of attack stages.
Low </br>(Yellow) | Threats associated with prevalent malware and hack-tools that do not appear to indicate an advanced threat targeting the organization.
Informational </br>(Grey) | Informational alerts are those that might not be considered harmful to the network but might be good to keep track of.

Reviewing the various alerts and their severity can help you decide on the appropriate action to protect your organization's endpoints.

**Detection source**</br>
- Windows Defender AV
- Windows Defender ATP

>[!NOTE]
>The Windows Defender AV filter will only appear if your endpoints are using Windows Defender as the default real-time protection antimalware product.

**Time period**</br>
- 1 day
- 3 days
- 7 days
- 30 days
- 6 months

**View**</br>
- **Flat view** - Lists alerts individually with alerts that has the latest activity displayed at the top surfaces.
- **Grouped view** - Groups alerts by alert ID, file hash, malware family and others to enable more efficient alert triage and management. Alert grouping reduces the number of rows in the queue by aggregating categories together.

The group view allows for efficient alert triage and management.

### Use the Alert management pane
Selecting an alert brings up the **Alert management** pane where you can manage and see details about the alert.

You can take the following management actions on an alert from the **Alert management** pane:

- Change the status of an alert from new, in progress, or resolved
- Specify the alert classification from true alert or false alert
- See related activity on the machine
- Add and view comments about the alert

>[!NOTE]
>You can also access the **Alert management** pane from the machine details view by selecting an alert in the **Alerts related to this machine** section.

### Bulk edit alerts
Select multiple alerts (Ctrl or Shift select) and manage or edit alerts together, which allows resolving multiple similar alerts in one go.

![Alerts queue bulk edit](images/alerts-q-bulk.png)

### Related topics
- [Understand the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
- [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate machines in the Windows Defender ATP Machines view](investigate-machines-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate an IP address associated with a Windows Defender ATP alert](investigate-ip-windows-defender-advanced-threat-protection.md)
- [Investigate a domain associated with a Windows Defender ATP alert](investigate-domain-windows-defender-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)
