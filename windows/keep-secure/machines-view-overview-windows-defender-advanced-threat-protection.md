---
title: View and organize the Windows Defender ATP machines view
description: Learn about the available features that you can use from the Machines view such as sorting, filtering, and exporting the machine list which can enhance investigations.
keywords: sort, filter, export, csv, machine name, domain, last seen, internal IP, health state, active alerts, active malware detections, threat category, review alerts, network, connection, malware, type, password stealer, ransomware, exploit, threat, general malware, unwanted software
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# View and organize the Windows Defender ATP Machines view

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>


The **Machines view** shows a list of the machines in your network, the domain of each machine, when it last reported and the local IP Address it reported on, its **Health state**, the number of active alerts on each machine categorized by alert severity level, and the number of active malware detections. This view allows viewing machines ranked by risk or sensor health state, and keeping track of all machines that are reporting sensor data in your network.

Use the Machines view in these main scenarios:

- **During onboarding**</br>
  During the onboarding process, the **Machines view** is gradually populated with endpoints as they begin to report sensor data. Use this view to track your onboarded endpoints as they come online. Sort and filter by time of last report, **Active malware category**, or **Sensor health state**, or download the complete endpoint list as a CSV file for offline analysis.
- **Day-to-day work**
  The **Machines view** enables easy identification of machines most at risk in a glance. High-risk machines have the greatest number and highest-severity alerts; **Sensor health state** provides another dimension to rank machines. Sorting machines by **Active alerts**, and then by **Sensor health state** helps identify the most vulnerable machines and take action on them.

## Sort, filter, and download the list of machines from the Machines view
You can sort the **Machines view** by clicking on any column header to sort the view in ascending or descending order.  

Filter the **Machines view** by time period, **Active malware categories**, or **Sensor health state** to focus on certain sets of machines, according to the desired criteria.  

You can also download the entire list in CSV format using the **Export to CSV** feature.

![Image of machines view with list of machines](images/atp-machines-view-list.png)

You can use the following filters to limit the list of machines displayed during an investigation:

**Time period**</br>
- 1 day
- 3 days
- 7 days
- 30 days
- 6 months

**Malware category**</br>
Filter the list to view specific machines grouped together by the following malware categories:
  -	**Ransomware** – Ransomware use common methods to encrypt files using keys that are known only to attackers. As a result, victims are unable to access the contents of the encrypted files. Most ransomware display or drop a ransom note—an image or an HTML file that contains information about how to obtain the attacker-supplied decryption tool for a fee.
  -	**Credential theft** – Spying tools, whether commercially available or solely used for unauthorized purposes, include general purpose spyware, monitoring software, hacking programs, and password stealers.
  These tools collect credentials and other information from browser records, key presses, email and instant messages, voice and video conversations, and screenshots. They are used in cyberattacks to establish control and steal information.
  -	**Exploit** – Exploits take advantage of unsecure code in operating system components and applications. Exploits allow attackers to run arbitrary code, elevate privileges, and perform other actions that increase their ability to compromise a targeted machine. Exploits are found in both commodity malware and malware used in targeted attacks.
  -	**General malware** – Malware are malicious programs that perform unwanted actions, including actions that can disrupt, cause direct damage, and facilitate intrusion and data theft. Some malware can replicate and spread from one machine to another. Others are able to receive commands from remote attackers and perform activities associated with cyberattacks.
  -	**Unwanted software** – Unwanted software is a category of applications that install and perform undesirable activity without adequate user consent. These applications are not necessarily malicious, but their behaviors often negatively impact the computing experience, even appearing to invade user privacy. Many of these applications display advertising, modify browser settings, and install bundled software.

**Sensor health state**</br>
Filter the list to view specific machines grouped together by the following machine health states:

- **Active** – Machines that are actively reporting sensor data to the service.
-	**Misconfigured** – Machines that have impaired communication with service or are unable to send sensor data. For more information on how to address issues on misconfigured machines see,  [Fix unhealthy sensors](fix-unhealhty-sensors-windows-defender-advanced-threat-protection.md).
-	**Inactive** – Machines that have completely stopped sending signals for more than 7 days.

## Export machine list to CSV
You can  download a full list of all the machines in your organization, in CSV format. Click the **Manage** menu icon ![The menu icon looks like three periods stacked on top of each other](images/menu-icon.png) to download the entire list as a CSV file.

**Note**: Exporting the list depends on the number of machines in your organization. It might take a significant amount of time to download, depending on how large your organization is.
Exporting the list in CSV format displays the data in an unfiltered manner. The CSV file will include all machines in the organization, regardless of any filtering applied in the view itself.

## Sort the Machines view
You can sort the **Machines view** by the following columns:

- **Machine name** - Name or GUID of the machine
- **Last seen** - Date and time when the machine last reported sensor data
- **Internal IP** - Local internal Internet Protocol (IP) address of the machine
- **Health State** – Indicates if the machine is misconfigured or is not sending sensor data
- **Active Alerts** - Number of alerts reported by the machine by severity
- **Active malware detections** - Number of active malware detections reported by the machine

> [!NOTE]
> The **Active malware detections** filter column will only appear if your endpoints are using [Windows Defender](windows-defender-in-windows-10.md) as the active real-time protection antimalware product.


## Related topics
- [View the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
- [View and organize the Windows Defender Advanced Threat Protection Alerts queue ](alerts-queue-windows-defender-advanced-threat-protection.md)
- [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate an IP address associated with a Windows Defender ATP alert](investigate-ip-windows-defender-advanced-threat-protection.md)
- [Investigate a domain associated with a Windows Defender ATP alert](investigate-domain-windows-defender-advanced-threat-protection.md)
- [Investigate machines in the Windows Defender ATP Machines view](investigate-machines-windows-defender-advanced-threat-protection.md)
- [Investigate a user account in Windows Defender ATP](investigate-user-windows-defender-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)
- [Take response actions in Windows Defender ATP](response-actions-windows-defender-advanced-threat-protection.md)
