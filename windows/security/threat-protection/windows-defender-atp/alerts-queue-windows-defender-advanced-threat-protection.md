---
title: View and organize the Windows Defender ATP Alerts queue
description: Learn about how the Windows Defender ATP alerts queues work, and how to sort and filter lists of alerts.
keywords: alerts, queues, alerts queue, sort, order, filter, manage alerts, new, in progress, resolved, newest, time in queue, severity, time period
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 04/16/2018
---

# View and organize the Windows Defender Advanced Threat Protection Alerts queue

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-alertsq-abovefoldlink) 

The **Alerts queue** shows a list of alerts that were flagged from machines in your network. Alerts are displayed in queues according to their current status. In each queue, you'll see details such as the severity of alerts and the number of machines the alerts were raised on.

Alerts are organized in queues by their workflow status or assignment:

- **New**
- **In progress**
- **Resolved**
- **Assigned to me**
- **Suppression rules** 

To see a list of alerts, click any of the queues under the **Alerts queue** option in the navigation pane.

> [!NOTE]
> By default, alerts in the queues are sorted from newest to oldest.

![Image of alerts queue](images/atp-new-alerts-list.png)

##  Sort, filter, and group the alerts list
You can sort and filter the alerts using the available filters or clicking on a column's header that will sort the view in ascending or descending order.

### Time period
- 1 day
- 3 days
- 7 days
- 30 days
- 6 months

### OS Platform
  - Windows 10
  - Windows Server 2012 R2
  - Windows Server 2016
  - Other

### Severity

Alert severity | Description
:---|:---
High </br>(Red) | Threats often associated with advanced persistent threats (APT). These alerts indicate a high risk due to the severity of damage they can inflict on endpoints.
Medium </br>(Orange) | Threats rarely observed in the organization, such as anomalous registry change, execution of suspicious files, and observed behaviors typical of attack stages.
Low </br>(Yellow) | Threats associated with prevalent malware and hack-tools that do not necessarily indicate an advanced threat targeting the organization.
Informational </br>(Grey) | Informational alerts are those that might not be considered harmful to the network but might be good to keep track of.


#### Understanding alert severity
It is important to understand that the Windows Defender Antivirus (Windows Defender AV) and Windows Defender ATP alert severities are different because they represent different scopes.

The Windows Defender AV threat severity represents the absolute severity of the detected threat (malware), and is assigned based on the potential risk to the individual machine, if infected.

The Windows Defender ATP alert severity represents the severity of the detected behavior, the actual risk to the machine but more importantly the potential risk to the organization. 

So, for example:
-	The severity of a Windows Defender ATP alert about a Windows Defender AV detected threat that was completely prevented and did not infect the machine is categorized as "Informational" because there was no actual damage incurred.
-	An alert about a commercial malware was detected while executing, but blocked and remediated by Windows Defender AV, is categorized as  "Low" because it may have caused some damage to the individual machine but poses no organizational threat.
-	An alert about malware detected while executing which can pose a threat not only to the individual machine but to the organization, regardless if it was eventually blocked, may be ranked as "Medium" or "High".
-	Suspicious behavioral alerts which were not blocked or remediated will be ranked "Low", "Medium" or "High" following the same organizational threat considerations.


### Detection source
- Windows Defender AV
- Windows Defender ATP
- Windows Defender SmartScreen
- Others

>[!NOTE]
>The Windows Defender Antivirus filter will only appear if machines are using Windows Defender Antivirus as the default real-time protection antimalware product.


### View
- **Flat view** - Lists alerts individually with alerts having the latest activity displayed at the top.
- **Grouped view** - Groups alerts by alert ID, file hash, malware family, or other attribute to enable more efficient alert triage and management. Alert grouping reduces the number of rows in the queue by aggregating similar alerts together.

The grouped view allows for efficient alert triage and management.

## Alert queue columns
You can click on the first column to open up the **Alert management pane**. You can also select view the machine and user panes by selecting the icons beside the links.

Alerts are listed with the following columns:

- **Title** - Displays a brief description of the alert and its category.
- **Machine and user** - Displays the machine name and user associated with the alert. You view the machine or user details pane or pivot the actual details page.
- **Severity** - Displays the severity of the alert. Possible values are informational, low, medium, or high.
- **Last activity** - Date and time for when the last action was taken on the alert.
- **Time in queue** - Length of time the alert has been in the alerts queue.
- **Detection source** - Displays the detection source of the alert.
- **Status** - Current status of the alert. Possible values include new, in progress, or resolved. 
- **Investigation state** - Reflects the number of related investigations and it's current state.
- **Assigned to** - Displays who is addressing the alert.
- **Manage icon** - You can click on the icon to bring up the alert management pane where you can manage and see details about the alert.

### Use the Alert management pane
Selecting an alert brings up the **Alert management** pane where you can manage and see details about the alert.

![Image of an alert selected](images/atp-alerts-selected.png)

You can take immediate action on an alert and see details about an alert in the **Alert management** pane:

- Change the status of an alert from new, to in progress, or resolved.
- Specify the alert classification from true alert or false alert by selecting **In progress**.
  Selecting true alert displays the **Determination** drop-down list to provide additional information about the true alert:
    - APT
    - Malware
    - Security personnel
    - Security testing
    - Unwanted software
    - Other
- Assign the alert to yourself if the alert is not yet assigned.
- View related activity on the machine.
- Add and view comments about the alert.

>[!NOTE]
>You can also access the **Alert management** pane from the machine details view by selecting an alert in the **Alerts related to this machine** section.

### Use the User details pane
Selecting a user brings up the **User details** pane where you can see information such as machine details, related alerts, last IP address, when the machine was first and last seen reporting to the service, and information on the logged on users.

![Alerts queue with numbers](images/atp-alerts-queue-user.png)

### Bulk edit alerts
Select multiple alerts (Ctrl or Shift select) and manage or edit alerts together, which allows resolving multiple similar alerts in one action.

![Alerts queue bulk edit](images/alerts-q-bulk.png)

## Related topics
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate machines in the Windows Defender ATP Machines list](investigate-machines-windows-defender-advanced-threat-protection.md)
- [Investigate an IP address associated with a Windows Defender ATP alert](investigate-ip-windows-defender-advanced-threat-protection.md)
- [Investigate a domain associated with a Windows Defender ATP alert](investigate-domain-windows-defender-advanced-threat-protection.md)
- [Investigate a user account in Windows Defender ATP](investigate-user-windows-defender-advanced-threat-protection.md)

