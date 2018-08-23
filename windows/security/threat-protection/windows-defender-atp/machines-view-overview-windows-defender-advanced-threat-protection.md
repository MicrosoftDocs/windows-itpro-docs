---
title: View and organize the Windows Defender ATP machines list
description: Learn about the available features that you can use from the Machines list such as sorting, filtering, and exporting the list to enhance investigations.
keywords: sort, filter, export, csv, machine name, domain, last seen, internal IP, health state, active alerts, active malware detections, threat category, review alerts, network, connection, malware, type, password stealer, ransomware, exploit, threat, general malware, unwanted software
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
ms.date: 09/03/2018
---

# View and organize the Windows Defender ATP Machines list

**Applies to:**


- Windows Defender Advanced Threat Protection (Windows Defender ATP)

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-machinesview-abovefoldlink)

The **Machines list** shows a list of the machines in your network where alerts were generated. By default, the queue displays machines with alerts seen in the last 30 days.  

At a glance you'll see information such as domain, risk level, OS platform, and other details. 


There are several options you can choose from to customize the machines list view. 
On the top navigation you can:
- Customize columns to add or remove columns 
- Export the entire list in CSV format
- Select the items to show per page
- Navigate between pages
- Apply filters


Use the machine list in these main scenarios:

- **During onboarding**<br>
  During the onboarding process, the **Machines list** is gradually populated with machines as they begin to report sensor data. Use this view to track your onboarded endpoints as they come online. Sort and filter by time of last report, **Active malware category**, or **Sensor health state**, or download the complete endpoint list as a CSV file for offline analysis.
    
    >[NOTE]
    > Exporting the list depends on the number of machines in your organization. It might take a significant amount of time to download, depending on how large your organization is.
Exporting the list in CSV format displays the data in an unfiltered manner. The CSV file will include all machines in the organization, regardless of any filtering applied in the view itself.

- **Day-to-day work** <br>
  The list enables easy identification of machines most at risk in a glance. High-risk machines have the greatest number and highest-severity alerts. Sorting machines by **Active alerts**, helps identify the most vulnerable machines and take action on them.


![Image of machines list with list of machines](images/machines-list.png)

## Sort and filter the machine list
You can apply the following filters to limit the list of alerts and get a more focused view. 


### Risk level
Machine risk levels are indicators of the active threats that machines could be exposed to. A machine's risk level is determined using the number of active alerts and their severity levels. You can influence a machine's risk level by resolving associated alerts manually or automatically and also by suppressing an alert.

### OS Platform
- Windows 10
- Windows Server 2012 R2
- Windows Server 2016
- Other



### Health state
Filter the list to view specific machines grouped together by the following machine health states:

- **Active** – Machines that are actively reporting sensor data to the service.
-	**Misconfigured** – Machines that have impaired communications with service or are unable to send sensor data. Misconfigured machines can further be classified to:
  - No sensor data
  - Impaired communications

  For more information on how to address issues on misconfigured machines see,  [Fix unhealthy sensors](fix-unhealhty-sensors-windows-defender-advanced-threat-protection.md).
-	**Inactive** – Machines that have completely stopped sending signals for more than 7 days.


### Security state
Filter the list to view specific machines that are well configured or require attention based on the Windows Defender security controls that are enabled in your organization. 


- **Well configured** - Machines have the Windows Defender security controls well configured. 
- **Requires attention** - Machines where improvements can be made to increase the overall security posture of your organization.

For more information, see [View the Secure Score dashboard](secure-score-dashboard-windows-defender-advanced-threat-protection.md).

**Malware category alerts**</br>
Filter the list to view specific machines grouped together by the following malware categories:
  -	**Ransomware** – Ransomware use common methods to encrypt files using keys that are known only to attackers. As a result, victims are unable to access the contents of the encrypted files. Most ransomware display or drop a ransom note—an image or an HTML file that contains information about how to obtain the attacker-supplied decryption tool for a fee.
  -	**Credential theft** – Spying tools, whether commercially available or solely used for unauthorized purposes, include general purpose spyware, monitoring software, hacking programs, and password stealers.
  These tools collect credentials and other information from browser records, key presses, email and instant messages, voice and video conversations, and screenshots. They are used in cyberattacks to establish control and steal information.
  -	**Exploit** – Exploits take advantage of unsecure code in operating system components and applications. Exploits allow attackers to run arbitrary code, elevate privileges, and perform other actions that increase their ability to compromise a targeted machine. Exploits are found in both commodity malware and malware used in targeted attacks.
  - **Backdoor** - Backdoors are malicious remote access tools that allow attackers to access and control infected machines. Backdoors can also be used to exfiltrate data.
  -	**General malware** – Malware are malicious programs that perform unwanted actions, including actions that can disrupt, cause direct damage, and facilitate intrusion and data theft. Some malware can replicate and spread from one machine to another. Others are able to receive commands from remote attackers and perform activities associated with cyberattacks.
  -	**PUA** – Unwanted software is a category of applications that install and perform undesirable activity without adequate user consent. These applications are not necessarily malicious, but their behaviors often negatively impact the computing experience, even appearing to invade user privacy. Many of these applications display advertising, modify browser settings, and install bundled software.

### Tags
You can filter the list based on the grouping and tagging that you've added to individual machines. 

## Export machine list to CSV
You can  download a full list of all the machines in your organization, in CSV format. Click the **Export to CSV** button to download the entire list as a CSV file.



## Sort the Machines list
You can sort the **Machines list** by the following columns:

- **Machine name** - Name or GUID of the machine
- **Health State** – Indicates if the machine is misconfigured or is not sending sensor data
- **Last seen** - Date and time when the machine last reported sensor data
- **Internal IP** - Local internal Internet Protocol (IP) address of the machine
- **Active Alerts** - Number of alerts reported by the machine by severity
- **Active malware alerts** - Number of active malware detections reported by the machine

> [!NOTE]
> The **Active malware detections** filter column will only appear if your machines are using [Windows Defender Antivirus](../windows-defender-antivirus/windows-defender-antivirus-in-windows-10.md) as the active real-time protection antimalware product.


## Related topics
- [Investigate machines in the Windows Defender ATP Machines list](investigate-machines-windows-defender-advanced-threat-protection.md)


