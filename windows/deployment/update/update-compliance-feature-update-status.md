---
title: Update Compliance - Feature Update Status report
description: an overview of the Feature Update Status report
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: Jaimeo
ms.author: jaimeo
---

# Feature Update Status

![The Feature Update Status report](images/UC_workspace_FU_status.png)

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

