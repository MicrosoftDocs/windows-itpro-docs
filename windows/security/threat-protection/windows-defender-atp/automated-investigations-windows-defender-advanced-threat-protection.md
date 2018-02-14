---
title: View the Windows Defender ATP automated investigations list
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
ms.date: 02/23/2017
---

# Use automated investigation to address alerts OR View the Windows Defender ATP automated investigations list or any other suggestion??

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-automated-investigations-abovefoldlink)

The Windows Defender ATP service has a wide breadth of visibility on multiple endpoints. With this kind of optics, the service generates a multitude of alerts. The volume of alerts generated can be challenging for a typical security operations team to individually address.


To address this challenge, Windows Defender ATP uses automated investigations to dramatically reduce the volume of alerts that need to be investigated individually. The automated investigation feature leverages on the use of artificial intelligence, inspection algorithms, and processes used by analysts to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. 

The automated investigations list aggregates all the investigations that have been initiated automatically and shows other details such as its status, detection source, and the date for when the investigation was initiated. 


## Sort, filter, and manage automated investigations
By default, the automated investigations list displays investigations initiated in the last week. You can also choose to select other time ranges from the drop-down menu or specify a custom range. 

Use the **Customize columns** drop-down menu to select columns that you'd like to show or hide. 

This view allows you to download the entire list in CSV format using the **Export to CSV** feature, specify the number of items to show per page, and navigate between pages. You also have the flexibility to filter the list based on your preferred criteria.

 
### Filters [JOEY: ARE THESE FILTERS FINAL? WHAT IS "IMPORTANT"]
You can use the following operations to customize the list of investigations displayed during an investigation:


**ID**
A designated identification number for the investigation. You can click on the link to open the details of the investigation.


**Status**<br>
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


**Detection source**<br>
Source of the alert that initiated the investigation. 

**Automated investigation**<br>
The alert that initiated the investigation.

**Threat types**<br>
The category of threat detected during the investigation.


**Tags**<br>
Filter using manually added tags that capture the context of an investigation.

**Machines**<br>
Multiple investigations can be initiated on an endpoint. You can filter the automated investigations list to zone in a specific endpoint to see other investigations related to the endpoint.

**Status details**<br>
You can filter based on the current status of ongoing or completed investigations.

**Endpoint groups**<br>
Apply this filter to see specific machine groups that you might have created.

**Comments**<br>
Select between filtering the list between investigations that have comments and those that don't.

**Important**<br>
?????

### Columns
You can choose specific columns to display to customize the automated investigation list. 

Click on **Customize columns** and select any or all of the available fields from the drop-down list.


### List
You have the option of displaying between 15, 30, or 50 items to display on the page.

You can pivot to the Investigation page to see details on a specific investigation.

## Review / Analyze automated investigations [BARAK: SHOULD WE CREATE A STAND ALONE TOPIC FOR THIS?]
From the automated investigations page you can navigate to the investigation pane view to see the details of each investigation. 

![Image of automated investigation pane](images/atp-autoinvestigation-investigation-pane.png)

You’ll see the main areas of this view:

Area | Description
:---|:---
(1) Status and menu bar | Displays the following details:<br> **Elapsed time** - duration of time that the investigation is taking <br> **Actions** -  shows the number of actions the investigation has taken <br> **Comments** - shows the number of comments added to the investigation <br> **Tags** - shows the number of tags added to the investigation <br> **Menu** - allows you to cancel the investigation
(2) Investigation pane | Displays a graphical representation of the investigation.
(3) Details pane | Displays detailed information for a selected object in the Investigation pane. 

### Status and menu bar
The status and menu bar displays general information about the incident and enables you to do an in-depth review of the incident, as it was managed by the automated investigation.

#### Elapsed time
The **Elapsed time** is a read-only field and shows the duration of time that has elapsed since the investigation commenced.

#### Actions
Clicking the **Actions** menu opens a detailed view of all the actions taken by the investigation. It displays the action in sequential order, with the most recent action displayed at the top. This view shows a table with the following columns:
- Action type
- Status
- Endpoint name
- Description
- Comments
- Execution start time

You can apply filters to limit the actions displayed on the list. 

#### Comments 
The **Comments** pane opens when you click the menu icon. You can add and review comments that were added about the investigation.

#### Tags
The **Tags** menu allows you to add or remove tags to the investigation.

You have the option of canceling the investigation by clicking the three horizontal dots (...) and selecting **Cancel investigation**.

### Investigation pane
The investigation pane displays specific investigation information in an user-friendly graphical representation. All investigation related information is simplified and arranged in specific sections, as described in following image:


#### Alert originator
Displays the alert that triggered the investigation. You can see details such as the detection, when it was received, the rule associated with the alert, and variables. 
You can also pivot to the actual alert to navigate to the alert details page. If there are correlated alerts, you'll also see information about it.

#### Data sources
Shows the data sources that were queried during the investigation.

#### Endpoints
Shows the Endpoints involved in the investigation. 

#### Entities Analyzed 
Shows the files, processes, services, drivers and IP addresses that was analyzed during the investigation. You can open the entities details pane to view more information about each entity category. 

#### Found threat types
Shows the threat and remediation spoke. 

#### Result
Shows the result of the investigation.




