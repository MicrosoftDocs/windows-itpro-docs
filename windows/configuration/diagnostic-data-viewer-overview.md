---
description: Use this article to make informed decisions about how you can configure telemetry in your organization.
title: Diagnostic Data Viewer Overview (Windows 10)
keywords: privacy
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
author: eross-msft
ms.author: lizross
ms.date: 01/09/2018
---

# Diagnostic Data Viewer Overview

**Applies to**

-   Windows 10, version 1709
-   Windows Server

<!--does this apply to server? What build?-->

The Diagnostic Data Viewer is a Windows app that lets you review the diagnostic data your device is sending to Microsoft, grouping the info into simple categories based on how it's used by Microsoft.

## Diagnostic Data Viewer features
The Diagnostic Data Viewer provides you with the following features to view and filter your device's diagnostic data.

### View Events
The Diagnostic Data Viewer shows diagnostic events in the left column. An event signifies that an some activity occurred and some information was packaged together to sent to Microsoft. 
Clicking on an event opens up a detailed JSON view which is the exact details uploaded to Microsoft. The information helps Microsoft to continually improve the Windows platform.

### Search 
There is a search box above the list of diagnostics events. You can enter text you want to search among all the diagnostic event details. The result below will be all the diagnostic events 
which contain the matching text. Clicking on a resulting event will open the detailed JSON view with the matching text highlighted.

### Filter Categories
Clicking the 3-line menu icon in the top left of the applicaiton will open the detailed menu. Here you can find a list of categories which signify what these events are used for at Microsoft. You can use
the check-boxes to filter between the categories.

## Install and Use the Diagnostic Data Viewer
You must turn on data viewing and download the app before you can use the Diagnostic Data Viewer to review your device's diagnostic data.

### Turn on data viewing
Before you can use this tool, you must turn on data viewing in the **Settings** panel.

**To turn on data viewing**
1. Go to **Start**, select **Settings** > **Privacy** > **Feedback & diagnostics**.

2. Under **Diagnostic data**, turn on the **If data viewing is enabled, you can syour diagnostics data** option.

    ![Location to turn on data viewing](images/ddv-data-viewing.png)

    By turning on data viewing, Windows can temporarily keep a copy of your diagnostic data after it's sent to Microsoft.  <!--We need to clarify what we mean by temporarily. Is this only until they turn data viewing off? Does the file get deleted at that point? People aren't going to like how vague this is.-->

### Download the Diagnostic Data Viewer
Download the app from the [Windows Store Diagnostic Data Viewer](https://www.microsoft.com/en-us/store/p/diagnostic-data-viewer/9n8wtrrsq8f7?rtc=1) page.

### Start the Diagnostic Data Viewer
You must start this app from the **Settings** panel.

**To start the Diagnostic Data Viewer**
1. Go to **Start**, select **Settings** > **Privacy** > **Feedback & diagnostics**.

2. Under **Diagnostic data**, select the **Diagnostic Data Viewer** button.

    ![Turn on the Diagnostic Data Viewer](images/ddv-settings-launch.png)

    -OR-
3. Go to **Start** and search for the Diagnostic Data Viewer app.

 
	
## Event Feedback
At the top right of the Diagnostic Data Viewer, there is an icon to provide feedback via the Feedback Hub application. If you selected a certain event in the Diagnostic Data Viewer, the event name will be pre-filled
in the Feedback Hub template. Please add specific details in the next field labeled "Give us more detail (optional)". 

> **Please be Careful When Submitting Feedback!**
> **Your feedback in the Feedback Hub application is publicly viewable**
> **Do not put any personal information in your feedback response**



## Windows Sampling
Microsoft collects Diagnostic Data from a sample population of Windows devices. This sampling behavior is seen in the application in 2 ways:
1. Device level sampling
2. Event level sampling

### Device level sampling
If windows device has a chance to be part of group which sends additional diagnostic data to Microsoft. Devices are chosen using a random number. If your device is part of this group, you will see the icon 
below in the 3-line menu in the Diagnostic Data Viewer. 

![alt text](device_sample.jpg "Device Sampling")


### Event level sampling
If you're device is part of this group sending additional diagnostic data, you will see the icon below next to each event that is up-sampled. This icon indicates that the event is sent to Microsoft
as part of the additional diagnostic data to help improve the Windows platform.

![alt text](event_sample.jpg "Event Sampling")
