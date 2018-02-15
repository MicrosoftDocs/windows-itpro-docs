---
title: Automated investigations in Windows Defender Advanced Threat Protection
description: View the list of automated investigations, its status, detection source and other details.
keywords: automated, investigation, detection, source, threat types, id, tags, endpoints, duration, filter export
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 03/15/2018
---

# Automated investigations list in Windows Defender ATP

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

<span style="color:#ED1C24;">[Some information relates to pre-released product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automated-investigations-abovefoldlink)

The Windows Defender ATP service has a wide breadth of visibility on multiple endpoints. With this kind of optics, the service generates a multitude of alerts. The volume of alerts generated can be challenging for a typical security operations team to individually address.


To address this challenge, Windows Defender ATP uses automated investigations to dramatically reduce the volume of alerts that need to be investigated individually. The automated investigation feature leverages on the use of artificial intelligence, inspection algorithms, and processes used by analysts to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. 

The automated investigations list aggregates all the investigations that have been initiated automatically and shows other details such as its status, detection source, and the date for when the investigation was initiated. 


## Sort, filter, and manage automated investigations
By default, the automated investigations list displays investigations initiated in the last week. You can also choose to select other time ranges from the drop-down menu or specify a custom range. 

Use the **Customize columns** drop-down menu to select columns that you'd like to show or hide. 

From this view, you can also download the entire list in CSV format using the **Export to CSV** feature, specify the number of items to show per page, and navigate between pages. You also have the flexibility to filter the list based on your preferred criteria.

 
### Filters 
You can use the following operations to customize the list of investigations displayed during an investigation:


#### ID
A designated identification number for the investigation. You can click on the link to open the details of the investigation.


#### Status
The current state of an investigation classifications are classified as:


- No threats found - No malicious entities found during the investigation.
- Partially remediated - A problem prevented the remediation of some malicious entities.
- Failed - A problem has interrupted the investigation, and preventing it from completing.
- Action required - Remediation requires review and approval.
- Waiting for machine(s) - Investigation paused. The investigation will resume as soon as the machine is available.
- Queued - Investigation has been queued and will resume as soon as other remediation activities are completed.
- Running - Investigation ongoing. Malicious entities found will be remediated.
- Remediated - Malicious entities found were successfully remediated.
- Terminated by system - Investigation was stopped. 

#### Detection source 
Source of the alert that initiated the investigation. 

#### Automated investigation
The alert that initiated the investigation.

#### Threat types
The category of threat detected during the investigation.


#### Tags
Filter using manually added tags that capture the context of an investigation.

#### Machines
Multiple investigations can be initiated on an endpoint. You can filter the automated investigations list to zone in a specific endpoint to see other investigations related to the endpoint.

#### Status details 
You can filter based on the current status of ongoing or completed investigations.

#### Endpoint groups
Apply this filter to see specific machine groups that you might have created.

#### Comments
Select between filtering the list between investigations that have comments and those that don't.

## Analyze automated investigations 
You can view the details of an automated investigation to see details of the investigation such as the investigation graph, alerts associated with the investigation, the endpoint that was investigated, and other information.

In this view, you値l see the name of the investigation, when it started and the duration of time that has passed in the status state.

The comments and tags allow you to add and review tags and comments that were added about the investigation.

### Investigation page
The investigation page gives you a quick summary on the status, alert severity, category, and detection source.

You値l also have access to the following sections that help you see details of the investigation with finer granularity:

- Investigation graph
- Alerts
- Machines
- Threats
- Entities
- Log
- Pending actions

In any of the sections, you can customize columns to further expand to limit the details you see in a section.

### Investigation graph
The investigation graph provides a graphical representation of an investigation. All investigation related information is simplified and arranged in specific sections. Clicking on any of the icons brings you the relevant section where you can view more information.

### Alerts
Shows details such as a short description of the alert that initiated the investigation, severity, category, the machine associated with the alert, user, time in queue, status, investigation state, and who the investigation is assigned to. 

Selecting an alert using the checkbox brings up the alerts details pane where you have the option of opening the alert page, manage the alert by changing its status, see alert details, automated investigation details, related machine, logged-on users, and comments and history. 

Clicking on an alert title brings you the alert page.

### Machines
Shows details the endpoint name, IP address, group, users, operating system, remediation level, investigation count, and when it was last investigated.

Selecting a machine using the checkbox brings up the machine details pane where you can see more information such as machine details and logged-on users.

Clicking on an endpoint name brings you the machine page.

### Threats
Shows details related to threats associated with this investigation.

### Entities
Shows details about entities such as files, process, services, drives, and IP addresses. The table details such as the number of entities that were analyzed. You値l gain insight into details as how many are infected, remediated, suspicious, verified, or determined to be clean.

### Log
Gives a chronological detailed view of all the investigation actions taken on the alert. You値l see the action type, action, status, machine name, description of the action, comments entered by analysts who may have worked on the investigation, execution start time, duration, pending duration.

As with other sections, you can customize columns, select the number of items to show per page, and filter the log.

Available filters include action type, action, status, machine name, and description.

You can also click on an action to bring up the details pane where you値l see information such as the summary of the action and input data. 

### Pending actions history
This tab is displayed if there are any pending actions on the investigation.



## Pending actions on investigations
The pending actions view aggregates all the files and processes that require action for an investigation to proceed / completed.

Use the Customize columns drop-down menu to select columns that you'd like to show or hide. 

From this view, you can also download the entire list in CSV format using the **Export to CSV** feature, specify the number of items to show per page, and navigate between pages.

Selecting a file opens a panel where information such as file details, investigation details, and alert details is displayed.

Selecting a process also opens a panel where information such as process details, investigation details, alert details, comments and history is displayed.

From either of these views, you can click on the Open investigation page link to see the investigation details.







