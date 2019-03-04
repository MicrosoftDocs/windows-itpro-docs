---
title: Diagnostic Data Viewer Overview (Windows 10)
description: Use this article to use the Diagnostic Data Viewer application to review the diagnostic data sent to Microsoft by your device.
keywords: privacy
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
audience: ITPro
author: danihalfin
ms.author: daniha
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 01/17/2018
---

# Diagnostic Data Viewer Overview

**Applies to**

-   Windows 10, version 1809
-   Windows 10, version 1803

## Introduction
The Diagnostic Data Viewer is a Windows app that lets you review the diagnostic data your device is sending to Microsoft, grouping the info into simple categories based on how it's used by Microsoft.

## Install and Use the Diagnostic Data Viewer

You must turn on data viewing and download the app before you can use the Diagnostic Data Viewer to review your device's diagnostic data.

### Turn on data viewing
Before you can use this tool, you must turn on data viewing in the **Settings** panel. Turning on data viewing lets Windows store your device's diagnostic data until you turn it off. Turning off data viewing stops Windows from collecting your diagnostic data and clears the existing diagnostic data from your device.

**To turn on data viewing**
1. Go to **Start**, select **Settings** > **Privacy** > **Diagnostics & feedback**.

2. Under **Diagnostic data**, turn on the **If data viewing is enabled, you can see your diagnostics data** option.

    ![Location to turn on data viewing](images/ddv-data-viewing.png)

### Download the Diagnostic Data Viewer
Download the app from the [Microsoft Store Diagnostic Data Viewer](https://www.microsoft.com/en-us/store/p/diagnostic-data-viewer/9n8wtrrsq8f7?rtc=1) page.

### Start the Diagnostic Data Viewer
You must start this app from the **Settings** panel.

**To start the Diagnostic Data Viewer**
1. Go to **Start**, select **Settings** > **Privacy** > **Diagnostics & feedback**.

2. Under **Diagnostic data**, select the **Diagnostic Data Viewer** button.

    ![Location to turn on the Diagnostic Data Viewer](images/ddv-settings-launch.png)<br><br>-OR-<br><br>
    
    Go to **Start** and search for _Diagnostic Data Viewer_.

3. Close the Diagnostic Data Viewer app, use your device as you normally would for a few days, and then open Diagnostic Data Viewer again to review the updated list of diagnostic data.

    >[!Important]
    >Turning on data viewing can use up to 1GB of disk space on your system drive. We strongly recommend that your turn off data viewing when you're done using the Diagnostic Data Viewer. For info about turning off data viewing, see the [Turn off data viewing](#turn-off-data-viewing) section in this article.

### Use the Diagnostic Data Viewer
The Diagnostic Data Viewer provides you with the following features to view and filter your device's diagnostic data.

- **View your diagnostic events.** In the left column, you can review your diagnostic events. These events reflect activities that occurred and were sent to Microsoft. 

    Selecting an event opens the detailed JSON view, which provides the exact details uploaded to Microsoft. Microsoft uses this info to continually improve the Windows operating system.

    >[!Important]
    >Seeing an event does not necessarily mean it has been uploaded yet. It’s possible that some events are still queued and will be uploaded at a later time.
    
     ![View your diagnostic events](images/ddv-event-view.png)

- **Search your diagnostic events.** The **Search** box at the top of the screen lets you search amongst all of the diagnostic event details. The returned search results include any diagnostic event that contains the matching text. 

    Selecting an event opens the detailed JSON view, with the matching text highlighted.

- **Filter your diagnostic event categories.** The apps Menu button opens the detailed menu. In here, you'll find a list of diagnostic event categories, which define how the events are used by Microsoft.

    Selecting a check box lets you filter between the diagnostic event categories.
    
     ![Filter your diagnostic event categories](images/ddv-event-view-filter.png)

- **Help to make your Windows experience better.** Microsoft only needs diagnostic data from a small amount of devices to make big improvements to the Windows operating system and ultimately, your experience. If you’re a part of this small device group and you experience issues, Microsoft will collect the associated event diagnostic data, allowing your info to potentially help fix the issue for others.

    To signify your contribution, you’ll see this icon (![Icon to review the device-level sampling](images/ddv-device-sample.png)) if your device is part of the group. In addition, if any of your diagnostic data events are sent from your device to Microsoft to help make improvements, you’ll see this icon (![Icon to review the event-level sampling](images/ddv-event-sample.png)). 

- **Provide diagnostic event feedback.** The **Feedback** icon in the upper right corner of the window opens the Feedback Hub app, letting you provide feedback about the Diagnostic Data Viewer and the diagnostic events.

    Selecting a specific event in the Diagnostic Data Viewer automatically fills in the field in the Feedback Hub. You can add your comments to the box labeled, **Give us more detail (optional)**.
	
    >[!Important]
    >All content in the Feedback Hub is publicly viewable. Therefore, make sure you don't put any personal info into your feedback comments.

## Turn off data viewing
When you're done reviewing your diagnostic data, you should turn of data viewing.

**To turn off data viewing**
1. Go to **Start**, select **Settings** > **Privacy** > **Diagnostics & feedback**.

2. Under **Diagnostic data**, turn off the **If data viewing is enabled, you can see your diagnostics data** option.

    ![Location to turn off data viewing](images/ddv-settings-off.png)

## View additional diagnostic data in the View problem reports tool
Available on Windows 1809 and higher, you can review additional Windows Error Reporting diagnostic data in the **View problem reports** page within the Diagnostic Data Viewer. 
This page provides you with a summary of various crash reports that are sent to Microsoft as part of Windows Error Reporting. 
We use this data to find and fix specific issues that are hard to replicate and to improve the Windows operating system. 

You can also use the Windows Error Reporting tool available in the Control Panel. 

**To view your Windows Error Reporting diagnostic data using the Diagnostic Data Viewer**

Starting with Windows 1809 and higher, you can review Windows Error Reporting diagnostic data in the Diagnostic Data Viewer.

![Starting with Windows 1809 and higher, you can review Windows Error Reporting diagnostic data in the Diagnostic Data Viewer](images/ddv-problem-reports.png)

**To view your Windows Error Reporting diagnostic data using the Control Panel**

Go to **Start**, select **Control Panel** > **All Control Panel Items** > **Security and Maintenance** > **Problem Reports**.<br><br>-OR-<br><br>
Go to **Start** and search for _Problem Reports_.
The **Review problem reports** tool opens, showing you your Windows Error Reporting reports, along with a status about whether it was sent to Microsoft.

![View problem reports tool with report statuses](images/control-panel-problem-reports-screen.png)
