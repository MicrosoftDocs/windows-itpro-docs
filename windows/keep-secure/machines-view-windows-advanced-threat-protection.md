---
title: Investigate machines in the Windows Defender ATP Machines view
description: Investigate affected machines in your network by reviewing alerts, network connection information, and service health on the Machines view.
keywords: machines, endpoints, machine, endpoint, alerts queue, alerts, machine name, domain, last seen, internal IP, active alerts, active malware detections, threat category, filter, sort, review alerts, network, connection, malware, type, password stealer, ransomware, exploit, threat, low severity
search.product: eADQiWindows 10XVcnh 
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Investigate machines in the Windows Defender ATP Machines view

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

The **Machines view** shows a list of the machines in your network, the corresponding number of active alerts for each machine categorized by alert severity levels, and the number of active malware detections. This view allows you to identify machines with the highest risk at a glance, and keep track of all the machines that are reporting telemetry in your network. 

Use the Machines view in these two main scenarios: 

- **During onboarding**
  - During the onboarding process, the Machines view gradually gets populated with endpoints as they begin to report telemetry. Use this view to track your onboarded endpoints as they appear. Use the available features to sort and filer to see which endpoints have most recently reported telemetry, or download the complete endpoint list as a CSV file for offline analysis. 
- **Day-to-day work**
  - The **Machines view** enables you to identify machines that are most at risk in a glance. High-risk machines are those with the greatest number and highest-severity alerts. By sorting the machines by risk, you'll be able to identify the most vulnerable machines and take action on them. 

The Machines view contains the following columns: 

- **Machine name** - the name or GUID of the machine 
- **Domain** - the domain the machine belongs to
- **Last seen** - when the machine last reported telemetry 
- **Internal IP** - the local internal Internet Protocol (IP) address of the machine 
- **Active Alerts** - the number of alerts reported by the machine by severity
- **Active malware detections** - the number of active malware detections reported by the machine

> **Note**&nbsp;&nbsp;The **Active alerts** and **Active malware detections** filter column will only appear if your endpoints are using [Windows Defender](https://technet.microsoft.com/en-us/library/mt622091(v=vs.85).aspx) as the default real-time protection antimalware product. 

Click any column header to sort the view in ascending or descending order. 

![Screenshot of the Machines view on the portal](images/machines-view.png)

You can sort the **Machines view** by **Machine name**, **Last seen**, **IP**, **Active Alerts**, and **Active malware detections**. Scroll down the **Machines view** to see additional machines. 

The view contains two filters: time and threat category.

You can filter the view by the following time periods: 

- 1 day 
- 3 days 
- 7 days 
- 30 days 
- 6 months 

> **Note**&nbsp;&nbsp;When you select a time period, the list will only display machines that reported within the selected time period. For example, selecting 1 day will only display a list of machines that reported telemetry within the last 24-hour period. 

The threat category filter lets you filter the view by the following categories: 

- Password stealer
- Ransomware
- Exploit
- Threat
- Low severity

See the [Investigate machines with active alerts](dashboard-windows-advanced-threat-protection.md#investigate-machines-with-active-malware-detections) topic for a description of each category.

You can also download a full list of all the machines in your organization, in CSV format. Click the **Manage Alert** menu icon ![The menu icon looks like three periods stacked on top of each other](images/menu-icon.png) to download the entire list as a CSV file. 

 **Note**: Exporting the list depends on the number of machines in your organization. It can take a significant amount of time to download, depending on how large your organization is. 
Exporting the list in CSV format displays the data in an unfiltered manner. The CSV file will include all machines in the organization, regardless of any filtering applied in the view itself. 

### Related topics
- [View the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-advanced-threat-protection.md)
- [View and organize the Windows Defender Advanced Threat Protection Alerts queue](alerts-queue-windows-advanced-threat-protection.md)
- [Submit files to the Windows Defender ATP Deep analysis feature](deep-analysis-windows-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-advanced-threat-protection.md)