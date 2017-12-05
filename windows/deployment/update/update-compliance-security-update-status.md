---
title: Update Compliance - Security Update Status report
description: an overview of the Security Update Status report
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: DaniHalfin
ms.author: daniha
ms.date: 10/17/2017
---

# Security Update Status

![The Security Update Status report](images/uc-securityupdatestatus.png)

The Security Update Status section provides information about [quality updates](waas-quick-start.md#definitions) across all devices. The section tile within the O[verview Blade](update-compliance-using.md#overview-blade) lists the percentage of devices on the latest security update to provide the most essential data without needing to navigate into the section. However, within the section the Overall Quality Update Status blade also considers whether devices are up-to-date on non-security updates. 

>[!NOTE]
>It is possible for the percentage of devices on the latest security update to differ from devices that are up-to-date on all quality updates. This is because some devices may have non-security updates that are applicable to them. 

The **Overall Quality Update Status** blade provides a visualization of devices that are and are not up-to-date on the latest quality updates (not just security updates). Below the visualization are all devices further broken down by OS Version and a count of how many are up-to-date and not up-to-date. Within the “Not up-to-date” column, the count of update failures is also given.
 
The **Latest Security Update Status** and **Previous Security Update Status** tiles are stacked to form one blade. The **Latest Security Update Status** provides a visualization of the different deployment states devices are in regarding the latest update for each build (or version) of Windows 10, along with the revision of that update. The **Previous Security Update Status** blade provides the same information without the accompanying visualization. 

What follows is a breakdown of the different deployment states reported by devices:
* **Installed** devices are devices that have completed installation for the given update.
* When a device is counted as **In Progress or Deferred**, it has either begun the installation process for the given update or has been intentionally deferred or paused using WU for Business Settings.
* Devices that have **Update Failed**, failed updating at some point during the installation process of the given security update.
* If a device should be, in some way, progressing toward this security update, but its status cannot be inferred, it will count as **Status Unknown**. Devices not using Windows Update are the most likely devices to fall into this category.

The rows of each tile in this section are interactive; clicking on them will navigate you to the query that is representative of that row and section. These queries are also attached to [Perspectives](update-compliance-perspectives.md) with detailed deployment data for that update.