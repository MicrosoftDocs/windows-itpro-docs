---
title: Update Compliance - Security Update Status report
ms.reviewer: 
manager: aczechowski
description: Learn how the Security Update Status section provides information about security updates across all devices.
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
ms.custom: seo-marvel-apr2020
ms.technology: itpro-updates
---

# Security Update Status

**Applies to**

- Windows 10
- Windows 11

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]

![The Security Update Status report.](images/UC_workspace_SU_status.png)

The Security Update Status section provides information about [security updates](waas-quick-start.md#definitions) across all devices. The section tile within the [Overview Blade](update-compliance-using.md#overview-blade) lists the percentage of devices on the latest security update available. Meanwhile, the blades within show the percentage of devices on the latest security update for each Windows client version and the deployment progress toward the latest two security updates.  

The **Overall Security Update Status** blade provides a visualization of devices that are and do not have the latest security updates. Below the visualization are all devices further broken down by operating system version and a count of devices that are up to date and not up to date. The **Not up to date** column also provides a count of update failures.
 
The **Latest Security Update Status** and **Previous Security Update Status** tiles are stacked to form one blade. The **Latest Security Update Status** provides a visualization of the different deployment states devices are in regarding the latest update for each build (or version) of Windows client, along with the revision of that update. The **Previous Security Update Status** blade provides the same information without the accompanying visualization. 

The rows of each tile in this section are interactive; selecting them will navigate you to the query that is representative of that row and section. 
