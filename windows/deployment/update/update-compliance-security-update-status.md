---
title: Update Compliance - Security Update Status report
ms.reviewer: 
manager: laurawi
description: an overview of the Security Update Status report
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: jaimeo
ms.author: jaimeo
ms.collection: M365-analytics
ms.topic: article
---

# Security Update Status

![The Security Update Status report](images/UC_workspace_SU_status.png)

The Security Update Status section provides information about [security updates](waas-quick-start.md#definitions) across all devices. The section tile within the [Overview Blade](update-compliance-using.md#overview-blade) lists the percentage of devices on the latest security update available. Meanwhile, the blades within show the percentage of devices on the latest security update for each Windows 10 version and the deployment progress toward the latest two security updates.  

The **Overall Security Update Status** blade provides a visualization of devices that are and do not have the latest security updates. Below the visualization are all devices further broken down by operating system version and a count of devices that are up to date and not up to date. The **Not up to date** column also provides a count of update failures.
 
The **Latest Security Update Status** and **Previous Security Update Status** tiles are stacked to form one blade. The **Latest Security Update Status** provides a visualization of the different deployment states devices are in regarding the latest update for each build (or version) of Windows 10, along with the revision of that update. The **Previous Security Update Status** blade provides the same information without the accompanying visualization. 

The various deployment states reported by devices are as follows:

## Deployment status
Deployment status summarizes detailed status into higher-level states to get a quick sense of the status the given device was last reported to be in relative to this specific update. Note that with the latency of deployment data, devices might have since moved on from the reported deployment status.  

|Deployment status    |Description  |
|---------|---------|
|Failed     |  The device encountered a failure during the update process. Note that due to latency, devices reporting this status may have since retried the update.        |
|Progress stalled     | he device started the update process, but no progress has been reported in the last 7 days.        |
|Deferred     |   The device is currently deferring the update process due to Windows Update for Business policies.      |
|In progress     | The device has begun the updating process for this update. This status appears if the device is in any stage of the update process including and after download, but before completing the update. If no progress has been reported in the last 7 days, devices will move to **Progress stalled**.**         |
|Update completed     |  The device has completed the update process.        |
|Update paused     |  The device is prevented from being offered the update due to updates being paused on the device.       |
|Unknown     | No record is available for this device relative to this update. This is a normal status if an update has recently been released or if the device does not use Windows Update.  |


## Detailed status
Detailed status provides a detailed stage-level representation of where in the update process the device was last reported to be in relative to this specific update. Note that with the latency of deployment data, devices might have since moved on from the reported detailed status.


|Detaild status  |Description  |
|---------|---------|
|Scheduled in next X days     |  The device is currently deferring the update with Windows Update for Business policies but will be offered the update within the next X days.       |
|Compatibility hold     |  The device has been placed under a *compatibility hold* to ensure a smooth feature update experience and will not resume the update until the hold has been cleared. For more information see [Feature Update Status report](update-compliance-feature-update-status.md#compatibility-holds)        |
|Update deferred     |  The device is currently deferring the update with Windows Update for Business policies.       |
|Update paused     |  The device is prevented from being offered the update due to updates being paused on the device.        |
|Update offered     |  The device has been offered the update by Windows Update but has not yet begun to download it.       |
|Download started     | The device has begun downloading the update.        |
|Download succeeded     | The device has finished downloading the update but has not yet begun installing the update.         |
|Install started     |  The device has begun installing the update.       |
|PreInstall task passed     |  The device has passed checks prior to beginning the rest of the installation process after a restart.       |
|Reboot required     |  The device requires a restart to install the update, but one has not yet been scheduled.       |
|Reboot pending     |  The device is pending a restart to install the update.       |
|Reboot initiated     |  The device reports "Reboot initiated" just before actually restarting specifically to apply the update.       |
|Commit     | The device, after a restart, is committing changes relevant to the update.        |
|Finalize succeeded     | The device has finished final tasks after a restart to apply the update.        |
|Update successful     | The device has successfully applied the update.        |
|Cancelled     | The update was cancelled at some point in the update process.        |
|Uninstalled     | The update was successfully uninstalled from the device.        |
|Rollback     |  The update failed to apply during the update process, causing the device to roll back changes and revert to the previous update.       |





The rows of each tile in this section are interactive; selecting them will navigate you to the query that is representative of that row and section. 
