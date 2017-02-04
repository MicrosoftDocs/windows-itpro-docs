--
title: Machines view overview
description: Understand the available features that you can use from the Machines view such as sorting, filtering, and exporting the machine list which can enhance investigations.
keywords: sort, filter, export, csv, machine name, domain, last seen, internal IP, health state, active alerts, active malware detections, threat category, review alerts, network, connection, malware, type, password stealer, ransomware, exploit, threat, general malware, unwanted software
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Machines view overview

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

The **Machines view** shows a list of the machines in your network, the corresponding number of active alerts for each machine categorized by alert severity levels, and the number of active malware detections. This view allows you to identify machines with the highest risk at a glance, and keep track of all the machines that are reporting sensor data in your network.

Use the Machines view in these two main scenarios:

- **During onboarding**
  - During the onboarding process, the Machines view gradually gets populated with endpoints as they begin to report sensor data. Use this view to track your onboarded endpoints as they appear. Use the available features to sort and filer to see which endpoints have most recently reported sensor data, or download the complete endpoint list as a CSV file for offline analysis.
- **Day-to-day work**
  - The **Machines view** enables you to identify machines that are most at risk in a glance. High-risk machines are those with the greatest number and highest-severity alerts. By sorting the machines by risk, you'll be able to identify the most vulnerable machines and take action on them.

## Sort, filter, and download the list of machines from the Machines view
You can filter and sort (or “pivot”) the Machines view by clicking any column header to sort the view in ascending or descending order.

You can also download the entire list using the export feature.

![Image of machines view with list of machines](images/atp-machines-view-list.png)

### Sort the Machines view
You can sort the **Machines view** by the following columns:

- **Machine name** - Name or GUID of the machine
- **Domain** - Domain the machine belongs to
- **Last seen** - Date and time when the machine last reported sensor data
- **Internal IP** - Local internal Internet Protocol (IP) address of the machine
- **Health State** – Indicates if the machine is misconfigured or is not sending sensor data
- **Active Alerts** - Number of alerts reported by the machine by severity
- **Active malware detections** - Number of active malware detections reported by the machine

> [!NOTE]
> The **Active alerts** and **Active malware detections** filter column will only appear if your endpoints are using [Windows Defender](windows-defender-in-windows-10.md) as the default real-time protection antimalware product.

### Filter the Machines view
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
  -	**Unwanted software** – Potentially unwanted software is a category of applications that install and perform undesirable activity without adequate user consent. These applications are not necessarily malicious, but their behaviors often negatively impact the computing experience, even appearing to invade user privacy. Many of these applications display advertising, modify browser settings, and install bundled software.

**Machine health state**</br>
Filter the list to view specific machines grouped together by the following machine health states:

- **Active** – Machines that are actively reporting sensor data to the service.
-	**Misconfigured** – Machines that have impaired communication with service or are unable to send sensor data. For more information on how to address issues on misconfigured machines see,  [Fix unhealthy sensors](fix-unhealhty-sensors-windows-defender-advanced-threat-protection.md).
-	**Inactive** – Machines that have completely stopped sending signals for more than 7 days.

## Export machine list to CSV
You can  download a full list of all the machines in your organization, in CSV format. Click the **Manage Alert** menu icon ![The menu icon looks like three periods stacked on top of each other](images/menu-icon.png) to download the entire list as a CSV file.

**Note**: Exporting the list depends on the number of machines in your organization. It can take a significant amount of time to download, depending on how large your organization is.
Exporting the list in CSV format displays the data in an unfiltered manner. The CSV file will include all machines in the organization, regardless of any filtering applied in the view itself.

### Related topics
- [Understand the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
- [Alerts overview](alerts-queue-windows-defender-advanced-threat-protection.md)
- [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate an IP address associated with a Windows Defender ATP alert](investigate-ip-windows-defender-advanced-threat-protection.md)
- [Investigate a domain associated with a Windows Defender ATP alert](investigate-domain-windows-defender-advanced-threat-protection.md)
