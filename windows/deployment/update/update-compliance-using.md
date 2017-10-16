---
title: Using Update Compliance (Windows 10)
description: Explains how to begin usihg Update Compliance.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: DaniHalfin
ms.author: daniha
ms.date: 10/17/2017
---

# Use Update Compliance

In this section you'll learn how to use Update Compliance to monitor your device's Windows updates and Windows Defender Antivirus status. To configure your environment for use with Update Compliance, refer to [Get started with Update Compliance](update-compliance-get-started.md).


Update Compliance: 
- Uses telemetry gathered from user devices to form an all-up view of Windows 10 devices in your organization. 
- Enables you to maintain a high-level perspective on the progress and status of updates across all devices.
- Provides a workflow that can be used to quickly identify which devices require attention. 
- Enables you to track deployment compliance targets for updates.
- Summarizes Windows Defender Antivirus status for devices that use it.

>[!NOTE]
>Information is refreshed daily so that update progress can be monitored. Changes will be displayed about 24 hours after their occurrence, so you always have a recent snapshot of your devices.

In Update Compliance, data is separated into vertically-sliced sections. Each section is referred to as a blade. Within a blade, there may or may not be multiple tiles, which serve to represent the data in different ways. Blades are summarized by their title in the upper-left corner above it. Every number displayed in OMS is the direct result of one or more queries. Clicking on data in blades will often navigate you to the query view, with the query used to produce that data. Some of these queries have perspectives attached to them; when a perspective is present, an additional tab will load in the query view. These additional tabs provide blades containing more information relevant to the results of the query.

## The Update Compliance Tile

After Update Compliance has successfully been added from the solution gallery, you’ll see this tile:
![Empty Update Compliance Tile](images/uc-emptyworkspacetile.png)

When the solution is added, data is not immediately available. Data will begin to be collected after data is sent up that is associated with the Commercial ID associated with the device. If you haven’t read about assigning your Commercial ID to your devices, refer to [this topic](update-compliance-get-started.md#deploy-your-commercial-id-to-your-windows-10-devices). After Microsoft has collected and processed any device data associated with your Commercial ID, the tile will be replaced with the following summary:

![Filled Update Compliance Tile](images/uc-filledworkspacetile.png)

The summary details the total number of devices that Microsoft has received data from with your Commercial ID. It also provides the number of devices that need attention if any. Finally, it details the last point at which your Update Compliance workspace was updated. 

## The Update Compliance Workspace

![Update Compliance workspace view](images/uc-filledworkspaceview.png)

Upon clicking the tile, you will be redirected to the Update Compliance workspace. The workspace is organized with the Overview Blade providing a hub from which to navigate to different reports of your device’s data. 

### Overview Blade

![The Overview Blade](images/uc-overviewblade.png)

Update Compliance’s overview blade provides a summarization of all the data Update Compliance focuses on. It functions as a hub from which different sections can be navigated to. The total number of devices detected by Update Compliance are counted within the title of this blade. What follows is a distribution for all devices as to whether they are up to date on:
* Quality updates: A device is up to date on quality updates whenever it has the latest applicable quality update installed. Quality updates are monthly cumulative updates that are specific to a version of Windows 10.
* Feature updates: A device is up to date on feature updates whenever it has the latest applicable feature update installed. Update Compliance considers [Servicing Channel](waas-overview.md#servicing-channels) when determining update applicability. 
* AV Signature: A device is up to date on Antivirus Signature when the latest Windows Defender Signatures have been downloaded. This distribution only considers devices that are running Windows Defender Antivirus. 

The blade also provides the time at which your Update Compliance workspace was refreshed. 

Below the “Last Updated” time, a list of the different sections follows that can be clicked on to view more information, they are:
* [Need Attention!](update-compliance-need-attention.md) - This section is the default section when arriving to your Update Compliance workspace. It counts the number of devices encountering issues and need attention; clicking into this provides blades that summarize the different issues that devices are encountering, and provides a List of Queries that Microsoft finds useful.
* [Security Update Status](update-compliance-security-update-status.md) - This section lists the percentage of devices that are on the latest security update released for the version of Windows 10 it is running. Clicking into this section provides blades that summarize the overall status of Quality updates across all devices; including deployment. 
* [Feature Update Status](update-compliance-feature-update-status.md) - This section lists the percentage of devices that are on the latest feature update that is applicable to a given device. Clicking into this section provides blades that summarize the overall feature update status across all devices, with an emphasis on deployment progress. 
* [Windows Defender AV Status](update-compliance-wd-av-status.md) - This section lists the percentage of devices running Windows Defender Antivirus that are not sufficiently protected. Clicking into this section provides a summary of signature and threat status across all devices that are running Windows Defender Antivirus. This section is not applicable to devices not running Windows Defender Antivirus.  

Use [Perspectives](update-compliance-perspectives.md) for data views that provide deeper insight into your data.

## Utilizing Log Analytics

Update Compliance is built upon the Log Analytics platform that is integrated into Operations Management Suite. All data within the workspace is the direct result of a query. Understanding the tools and features at your disposal, all integrated within OMS, can deeply enhance your experience and complement Update Compliance. 

See below for a few topics related to Log Analytics: 
* Learn how to effectively execute custom Log Searches by referring to Microsoft Azure’s excellent documentation on [querying data in Log Analytics](https://docs.microsoft.com/azure/log-analytics/log-analytics-log-searches).
* To develop your own custom data views in Operations Management Suite or [Power BI](https://powerbi.microsoft.com/); check out documentation on [analyzing data for use in Log Analytics](https://docs.microsoft.com/azure/log-analytics/log-analytics-dashboards). 
* [Gain an overview of Log Analytics’ alerts](https://docs.microsoft.com/azure/log-analytics/log-analytics-alerts) and learn how to utilize it to always stay informed about the most critical issues you care about. 

>[!NOTE]
>You can use the Feedback Hub App on Windows 10 devices to [provide feedback about Update Compliance](feedback-hub://?referrer=itProDocs&tabid=2&contextid=797) and other Windows Analytics solutions. 

## Related topics

[Get started with Update Compliance](update-compliance-get-started.md)