---
title: Update Compliance - Feature Update Status report
ms.reviewer: 
manager: laurawi
description: Learn how the Feature Update Status report provides information about the status of feature updates across all devices.
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
itproauthor: jaimeo
author: jaimeo
ms.author: jaimeo
ms.collection: M365-analytics
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Feature Update Status

[ ![The Feature Update Status report.](images/UC_workspace_FU_status.png) ](images/UC_workspace_FU_status.png#lightbox)

The Feature Update Status section provides information about the status of [feature updates](waas-quick-start.md#definitions) across all devices. This section tile in the [Overview Blade](update-compliance-using.md#overview-blade) gives a percentage of devices that are on the latest applicable feature update; [Servicing Channel](waas-overview.md#servicing-channels) is considered in determining applicability. Within this section are two blades; one providing a holistic view of feature updates, the other containing three **Deployment Status** tiles, each charged with tracking the deployment for a different [Servicing Channel](waas-overview.md#servicing-channels). 

## Overall Feature Update Status

The Overall Feature Update Status blade breaks down how many devices are up-to-date or not, with a special callout for how many devices are running a build that is not supported (for a full list of feature updates, check out the [Windows 10 Release Information](https://technet.microsoft.com/windows/release-info.aspx) page). The table beneath the visualization breaks devices down by Servicing Channel and operating system version, then defining whether this combination is *up-to-date*, *not up-to-date* or *out of support*. Finally, the table provides a count of devices that fall into this category.  

## Deployment Status by Servicing Channel

To effectively track deployment, **Deployment Status Blades** are divided into each Servicing Channel chosen for the device. This is because Deployment for each channel will happen at different periods in time and feature updates are targeted separately for each channel. Within each Deployment Status tile, devices are aggregated on their feature update distribution, and the columns list the states each device is in.

Refer to the following list for what each state means:
* **Installed** devices are devices that have completed installation for the given update.
* When a device is counted as **In Progress**, it has begun the feature update installation. 
* Devices that are **scheduled next 7 days** are all devices that were deferred from installing the Feature update using [Windows Update for Business Settings](waas-manage-updates-wufb.md) and are set to begin installation in the next 7 days.
* Devices that have failed the given feature update installation are counted as **Update failed**.
* If a device should be, in some way, progressing toward this security update, but its status cannot be inferred, it will count as **Status Unknown**. Devices not using Windows Update are the most likely devices to fall into this category.

## Safeguard holds

Microsoft uses diagnostic data to determine whether devices that use Windows Update are ready for a feature update in order to ensure a smooth experience. When Microsoft determines a device is not ready to update due to a known issue, a *safeguard hold* is generated to delay the device's upgrade and protect the end-user experience. Holds are released over time as diagnostic data is analyzed and fixes are addressed. Details are provided on some, but not all safeguard holds on the Windows 10 release information page for any given release. 

## Queries for safeguard holds

Update Compliance reporting offers two queries to help you retrieve data related to safeguard holds. The first query shows the device data for all devices that are affected by safeguard holds. The second query shows data specific to devices running the target build.

![Left pane showing Need Attention, Security update status, feature update status, and Windows Defender AV status, with Need Attention selected. Right pane shows the list of queries relevant to the Need Attention status, with "Devices with a safeguard hold" and "Target build distribution of devices with a safeguard hold" queries highlighted](images/UC_workspace_safeguard_queries.png)

Update Compliance reporting will display the Safeguard IDs for known issues affecting a device in the **DeploymentErrorCode** column. Safeguard IDs for publicly discussed known issues are also included in the Windows Release Health dashboard, where you can easily find information related to publicly available safeguards.

### Opt out of safeguard hold

You can [opt out of safeguard protections](safeguard-opt-out.md) by using the **Disable safeguards for Feature Updates** Group Policy. This policy is available to Windows Update for Business devices running Windows 10, version 1809 or later that have installed the October 2020 security update.  
