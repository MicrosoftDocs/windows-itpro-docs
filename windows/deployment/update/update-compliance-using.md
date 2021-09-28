---
title: Using Update Compliance (Windows 10)
ms.reviewer: 
manager: laurawi
description: Learn how to use Update Compliance to monitor your device's Windows updates.
keywords: oms, operations management suite, wdav, updates, upgrades, antivirus, antimalware, signature, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Use Update Compliance

In this section you'll learn how to use Update Compliance to monitor your device's Windows updates and Microsoft Defender Antivirus status. To configure your environment for use with Update Compliance, refer to [Get started with Update Compliance](update-compliance-get-started.md).


Update Compliance: 
- Provides detailed deployment monitoring for Windows 10 Feature and Quality updates.
- Reports when devices need attention due to issues related to update deployment.
- Shows bandwidth usage and savings for devices that are configured to use [Delivery Optimization](waas-delivery-optimization.md).
- Provides all of the above data in [Log Analytics](#using-log-analytics), which affords additional querying and export capabilities.

## The Update Compliance tile
After Update Compliance has successfully been [added to your Azure subscription](update-compliance-get-started.md#add-update-compliance-to-your-azure-subscription), you'll see this tile:

![Update Compliance tile no data.](images/UC_tile_assessing.png)

When the solution is added, data is not immediately available. Data will begin to be collected after data is sent up that belongs to the Commercial ID associated with the device. This process assumes that Windows diagnostic data is enabled and data sharing is enabled as described in [Enrolling devices in Update Compliance](update-compliance-get-started.md#enroll-devices-in-update-compliance). After Microsoft has collected and processed any device data associated with your Commercial ID, the tile will be replaced with the following summary:

![Update Compliance tile with data.](images/UC_tile_filled.png)

The summary details the total number of devices that Microsoft has received data from with your Commercial ID. It also provides the number of devices that need attention if any. Finally, it details the last point at which your Update Compliance workspace was refreshed.

## The Update Compliance workspace

![Update Compliance workspace view.](images/UC_workspace_needs_attention.png)

When you select this tile, you will be redirected to the Update Compliance workspace. The workspace is organized with the Overview blade providing a hub from which to navigate to different reports of your devices' data. 

### Overview blade

![The Overview blade.](images/UC_workspace_overview_blade.png)

Update Compliance's overview blade summarizes all the data Update Compliance provides. It functions as a hub from which you can navigate to different sections. The total number of devices detected by Update Compliance is reported in the title of this blade. What follows is a distribution for all devices as to whether they are up to date on the following items:
* Security updates: A device is up to date on quality updates whenever it has the latest applicable quality update installed. Quality updates are monthly cumulative updates that are specific to a version of Windows 10.
* Feature updates: A device is up to date on feature updates whenever it has the latest applicable feature update installed. Update Compliance considers [Servicing Channel](waas-overview.md#servicing-channels) when determining update applicability. 
* AV Signature: A device is up to date on Antivirus Signature when the latest Windows Defender Signatures have been downloaded. This distribution only considers devices that are running Microsoft Defender Antivirus. 

The blade also provides the time at which your Update Compliance workspace was [refreshed](#update-compliance-data-latency). 

The following is a breakdown of the different sections available in Update Compliance:
* [Need Attention!](update-compliance-need-attention.md) - This section is the default section when arriving to your Update Compliance workspace. It provides a summary of the different issues devices are facing relative to Windows 10 updates.
* [Security Update Status](update-compliance-security-update-status.md) - This section lists the percentage of devices that are on the latest security update released for the version of Windows 10 it is running. Selecting this section provides blades that summarize the overall status of security updates across all devices and a summary of their deployment progress towards the latest two security updates. 
* [Feature Update Status](update-compliance-feature-update-status.md) - This section lists the percentage of devices that are on the latest feature update that is applicable to a given device. Selecting this section provides blades that summarize the overall feature update status across all devices and a summary of deployment status for different versions of Windows 10 in your environment.
* [Delivery Optimization Status](update-compliance-delivery-optimization.md) - This section summarizes bandwidth savings incurred by utilizing Delivery Optimization in your environment. It provides a breakdown of Delivery Optimization configuration across devices, and summarizes bandwidth savings and utilization across multiple content types.


## Update Compliance data latency
Update Compliance uses Windows 10 diagnostic data as its data source. After you add Update Compliance and appropriately configure your devices, it could take 48-72 hours before they first appear.

The data powering Update Compliance is refreshed every 24 hours, and refreshes with the latest data from all devices part of your organization that have been seen in the past 28 days. The entire set of data is refreshed in each daily snapshot, which means that the same data can be re-ingested even if no new data actually arrived from the device since the last snapshot. Snapshot time can be determined by the TimeGenerated field for each record, while LastScan can be used to roughly determine the freshness of each record's data.  

| Data Type | Data upload rate from device | Data Latency |
|--|--|--|
|WaaSUpdateStatus | Once per day |4 hours |
|WaaSInsiderStatus| Once per day |4 hours |
|WaaSDeploymentStatus|Every update event (Download, install, etc.)|24-36 hours |
|WUDOAggregatedStatus|On update event, aggregated over time|24-36 hours |
|WUDOStatus|Once per day|12 hours |

This means you should generally expect to see new data device data every 24 hours, except for WaaSDeploymentStatus and WUDOAggregatedStatus, which may take 36-48 hours.

## Using Log Analytics

Update Compliance is built on the Log Analytics platform that is integrated into Operations Management Suite. All data in the workspace is the direct result of a query. Understanding the tools and features at your disposal, all integrated within Azure Portal, can deeply enhance your experience and complement Update Compliance. 

See below for a few topics related to Log Analytics: 
* Learn how to effectively execute custom Log Searches by referring to Microsoft Azure's excellent documentation on [querying data in Log Analytics](/azure/log-analytics/log-analytics-log-searches).
* To develop your own custom data views in Operations Management Suite or [Power BI](https://powerbi.microsoft.com/); check out documentation on [analyzing data for use in Log Analytics](/azure/log-analytics/log-analytics-dashboards). 
* [Gain an overview of Log Analytics' alerts](/azure/log-analytics/log-analytics-alerts) and learn how to use it to always stay informed about the most critical issues you care about. 

## Related topics

[Get started with Update Compliance](update-compliance-get-started.md)