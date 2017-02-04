---
title: Investigate machines in the Windows Defender ATP Machines view
description: Investigate affected machines in your network by reviewing alerts, network connection information, and service health on the Machines view.
keywords: machines, endpoints, machine, endpoint, alerts queue, alerts, machine name, domain, last seen, internal IP, active alerts, active malware detections, threat category, filter, sort, review alerts, network, connection, malware, type, password stealer, ransomware, exploit, threat, low severity
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Investigate machines in the Windows Defender ATP Machines view

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

## Investigate machines
Investigate the details of an alert raised on a specific machine to identify other behaviors or events that might be related to the alert or the potential scope of breach.

You can click on affected machines whenever you see them in the portal to open a detailed report about that machine. Affected machines are identified in the following areas:

- The [Machines view](investigate-machines-windows-defender-advanced-threat-protection.md)
- The [Alerts queue](alerts-queue-windows-defender-advanced-threat-protection.md)
- The [Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
- Any individual alert
- Any individual file details view
- Any IP address or domain details view

When you investigate a specific machine, you'll see:
-	Machine details, Logged on user, and Machine Reporting
- Alerts related to this machine
- Machine timeline

![Image of machine details page](images/atp-machine-details-view.png)

The machine details, total logged on users and machine reporting sections display various attributes about the machine. You’ll see details such as machine name, health status, actions you can take on the machine, domain, operating system (OS), total logged on users and who frequently and less frequently logged on, IP address, and how long it's been reporting sensor data to the Windows Defender ATP service.

Clicking on the number of total logged on users in the Logged on user tile opens the **Users Details** pane that displays the following information for logged on users in the past 30 days:

-	User account domain\\user account name
-	Date and time they were last observed on the machine
-	Date and time they were first observed on the machine

![Image of user details pane](images/atp-user-details-pane.png)

The **Alerts related to this machine** section provides a list of alerts that are associated with the machine. This list is a simplified version of the [Alerts queue](alerts-queue-windows-defender-advanced-threat-protection.md), and shows the date when the last activity was detected, a short description of the alert, the user associated with the alert, the alert's severity, the alert's status in the queue, and who is addressing the alert.

## Machine timeline

The **Machine timeline** section provides a chronological view of the events and associated alerts that have been observed on the machine.

This feature also enables you to selectively drill down into events that occurred within a given time period. You can view the temporal sequence of events that occurred on a machine over a specified time period.

![Image of machine timeline with events](images/atp-machine-timeline.png)

Windows Defender ATP monitors and captures questionable behavior on Windows 10 machines and displays the process tree flow in the **Machine timeline**. This gives you better context of the behavior which can contribute to understanding the correlation between events, files, and IP addresses in relation to the machine.

### Search for specific alerts
Use the search bar to look for specific alerts or files associated with the machine:

-	**Value** – Type in any search keyword to filter the timeline with the attribute you’re searching for.
-	**Informational level** – Click the drop-down button to filter by the following levels:
  - **Detections mode**: displays Windows ATP Alerts and detections
  -	**Behaviors mode**: displays "detections" and selected events of interest
  -	**Verbose mode**: displays "behaviors" (including "detections"), and all reported events
-	**User** – Click the drop-down button to filter the machine timeline by the following users associated to an action taken that triggered an alert:
  -	Logon users
  -	System
  -	Network
  -	Local service

### Filter events from a specific date
Use the time-based slider to filter events from a specific date. By default, the machine timeline is set to display the events of the current day.

Using the slider updates the listed alerts to the date that you select. Displayed events are filtered from that date and older.

The slider is helpful when you're investigating a particular alert on a machine. You can navigate from the **Alerts view** and click on the machine associated with the alert to jump to the specific date when the alert was observed, enabling you to investigate the events that took place around the alert.

### Export machine timeline events
You can also export detailed event data from the machine timeline to conduct offline analysis. You can choose to export the machine timeline for the current date or specify a date range. You can export up to 7 days of data and specify the specific time between the two dates.

![Image of export machine timeline events](images/atp-export-machine-timeline-events.png)

### Navigate between pages
Use the events per page drop-down to choose the number of alerts you’d like to see on the page. You can choose to display 20, 50, or 100 events per page. You can also move between pages by clicking **Older** or **Newer**.

From the **Machines view**, you can also navigate to the file, IP, or URL view and the timeline associated with an alert is retained, helping you view the investigation from different angles and retain the context of the event time line.

From the list of events that are displayed in the timeline, you can examine the behaviors or events in to help identify indicators of interests such as files and IP addresses to help determine the scope of a breach. You can then use the information to respond to events and keep your system secure.

![Image of machine timeline details pane](images/atp-machine-timeline-details-panel.png)

You can also use the [Alerts spotlight](investigate-alerts-windows-defender-advanced-threat-protection.md#alert-spotlight) feature to see the correlation between alerts and events on a specific machine.

Expand an event to view associated processes related to the event. Click on the circle next to any process or IP address in the process tree to investigating further into the identified processes. This action brings up the **Details pane** which includes execution context of processes, network communications and a summary of metadata on the file or IP address.

This enhances the ‘in-context’ information across investigation and exploration activities, reducing the need to switch between contexts. It lets you focus on the task of tracing associations between attributes without leaving the current context.

## Isolate machines from the network
Depending on the severity of the attack and the sensitivity of the machine, you might want to isolate the machine from the network. This action can help prevent the attacker from controlling the compromised machine and performing further activities such as data exfiltration and lateral movement.

This machine isolation feature disconnects the compromised machine from the network while retaining connectivity to the Windows Defender ATP service, which continues to monitor the machine.

>[!NOTE]
>You’ll be able to reconnect the machine back to the network at any time.

## Isolate machine
1.	Select the machine that you want to isolate. You can select or search for a machine from any of the following views:

  -	**Dashboard** – Select the machine name from the Top machines with active alerts section.
  -	**Alerts queue** - Select the machine name beside the machine icon from the alerts queue.
  -	**Machines view** - Select the machine name from the list of machines.
  -	**Search box** - Select Machine from the drop-down menu and enter the machine name.

2.	Open the **Actions** menu and select **Isolate machine**.

  ![Image of isolate machine](images/atp-isolate-machine.png)

3. Type a comment (optional) and select **Yes** to take action on the machine.
  >[!NOTE]
  >The machine will remain connected to the Windows Defender ATP service even if it is isolated from the network.

  The Action center shows the submission information:
  ![Image of machine isolation](images/atp-machine-isolation.png)

  -	**Submission time** – Shows when the isolation action was submitted.
  -	**Submitting user** – Shows who submitted the action on the machine. You can view the comments provided by the user by selecting the information icon.
  -	**Status** – Indicates any pending actions or the results of completed actions.

When the isolation configuration is applied, there will be a new event in the machine timeline.

**Notification on machine user**:</br>
When a machine is being isolated, the following notification is displayed to inform the user that the machine is being isolated from the network:

![Image of no network connection](images/atp-no-network-connection.png)

## Undo machine isolation
Depending on the severity of the attack and the state of the machine you can choose to release the machine isolation after you have verified that the compromised machine has been remediated.

1.	Select a machine that was previously isolated.

2.	Open the **Actions** menu and select **Undo machine isolation**.

  ![Image of undo isolation](images/atp-undo-isolation.png)

3.	Type a comment (optional) and select **Yes** to take action on the file. The machine will be reconnected to the network.

## Collect investigation package from machines
As part of the investigation or response process, you can collect an investigation package from a machine. By collecting the investigation package, you can identify the current state of the machine and further understand the tools and techniques used by the attacker.

You can download the package (Zip file) and investigate the events that occurred on a machine.

The package contains the following folders:

Folder | Description
:---|:---
Autoruns | Contains a set of files that each represent the content of the registry of a known auto start entry point (ASEP) to help identify attacker’s persistency on the machine. </br></br> NOTE: If the registry key is not found, the file will contain the following message: “ERROR: The system was unable to find the specified registry key or value.”
Installed program | This CSV file contains the list of installed program that can help identify what is currently installed on the machine. For more information, see [Win32_Product class](https://go.microsoft.com/fwlink/?linkid=841509).
Network connections | This folder contains a set of data points related to the connectivity information which can help in identifying connectivity to suspicious URLs/attacker’s command & control or any lateral movement/remote connections.</br></br> -	ActiveNetworkConnections.txt – Displays protocol statistics and current TCP/IP network connections. Provides the ability to look for suspicious connectivity made by a process. </br></br> - Arp.txt – Displays the current address resolution protocol (ARP) cache tables for all interfaces. </br> ARP cache can reveal additional hosts on a network that have been compromised or suspicious systems on the network that night have been used to run an internal attack.</br></br> -	Dnscache.txt - Displays the contents of the DNS client resolver cache, which includes both entries preloaded from the local Hosts file and any recently obtained resource records for name queries resolved by the computer. This can help in identifying suspicious connections. </br></br> - Ipconfig.txt – Displays the full TCP/IP configuration for all adapters. Adapters can represent physical interfaces, such as installed network adapters, or logical interfaces, such as dial-up connections.
Prefetch files | Windows Prefetch files are designed to speed up the application startup process. It can be used to track all the files recently used in the system and find traces for applications that might have been deleted but can still be found in the prefetch file list. </br></br> - Prefetch folder –  Contains a copy of the prefetch files from `%SystemRoot%\Prefetch`. NOTE: It is suggested to download a prefetch file viewer to view the prefetch files. </br></br> - PrefetchFilesList.txt – Contains the list of all the copied files which can be used to track if there were any copy failures to the prefetch folder.
Processes | Contains a CSV file listing the running processes which provides the ability to identify current processes running on the machine. This can be useful when identify if there is a suspicious process and its state.
Scheduled tasks | Contains a CSV file listing the scheduled tasks which can be used to identify routines performed automatically on a chosen machine to look for a suspicious code set to run automatically.
Security event log | Contains the security event log which contains records of login/logout activity or other security-related events specified by the system's audit policy. NOTE: Open the event log file using Event viewer.
Services | Contains the services.txt file which lists services and their states.
SMB sessions | Lists shared access to files, printers, and serial ports and miscellaneous communications between nodes on a network. This can help identify data exfiltration or lateral movement. </br></br> Contains files for SMBInboundSessions and SMBOutboundSession. </br></br> NOTE: If the file contains the following message: “ERROR: The system was unable to find the specified registry key or value.”, it means that there were no SMB sessions of this type (inbound or outbound).
Temp Directories | Contains a set of text files that lists the files located in %Temp% for every user in the system. </br></br> This can help to track suspicious files that an attacker may dropped on the system. </br></br> NOTE: If the file contains the following message: “The system cannot find the path specified”, it means that there is no temp directory for this user, and might be because the user didn’t log in to the system.
Users and Groups | Provides a list of files that each represent a group and its members.
CollectionSummaryReport.xls | This file is a summary of the investigation package collection, it contains the list of data points, the command used to extract the data, the execution status, and the error code in case of failure. You can use this report to track if the package includes all the expected data and identify if there were any errors.

## Collect investigation package
1.	Select the machine that you want to investigate. You can select or search for a machine from any of the following views:

  -	**Dashboard** – Select the machine name from the Top machines with active alerts section.
  -	**Alerts queue** – Select the machine name beside the machine icon from the alerts queue.
  -	**Machines view** – Select the heading of the machine name from the machines view.
  -	**Search box** – Select Machine from the drop-down menu and enter the machine name.

2.	Open the **Actions** menu and select **Collect investigation package**.

    The Action center shows the submission information:
    ![Image of investigation package in action center](images/atp-investigation-package-action-center.png)

    - **Submission time** – Shows when the action was submitted.
    -	**Submitting user** - Shows who submitted the action on the file. You can view the comments provided by the user by selecting the information icon.
    -	**Status** - Indicates if the package was successfully collected from the network. When the collection is complete, you can download the package.

3.	Select **Package available** to download the package. </br>
    When the package is available a new event will be added to the machine timeline.</br>
    You can download the package from the machine page, or the Action center.

    ![Image of investigation package from machine view](images/atp-machine-investigation-package.png)

    You can also search for historical packages in the machine timeline.

## Check activity details in Action center
The Action center provides information on actions that were taken on a machine or file. You’ll be able to view the details on the last action that were taken on a file such as stopped and quarantined files or blocked files.

You’ll also be able to view if a machine was isolated and if an investigation package is available from a machine. All related details are also shown, for example, submission time, submitting user, and if the action succeeded or failed.

![Image of action center with information](images/atp-action-center-with-info.png)


### Related topics
- [View the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
- [View and organize the Windows Defender Advanced Threat Protection Alerts queue](alerts-queue-windows-defender-advanced-threat-protection.md)
- [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate an IP address associated with a Windows Defender ATP alert](investigate-ip-windows-defender-advanced-threat-protection.md)
- [Investigate a domain associated with a Windows Defender ATP alert](investigate-domain-windows-defender-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)
