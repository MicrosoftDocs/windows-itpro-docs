---
title: Update Compliance - Need Attention! report
description: an overview of the Update Compliance Need Attention! report
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: DaniHalfin
ms.author: daniha
ms.date: 10/17/2017
---

# Need Attention!

![Need Attention! report](images/uc-needattentionoverview.png)

The “Need Attention!” section provides a breakdown of all device issues detected by Update Compliance. The summary tile for this section counts the number of devices that have issues, while the blades within break down the issues encountered. Finally, a [list of queries](#list-of-queries) blade is shown within this section that contains queries that provide values but do not fit within any other main section. 

>[!NOTE]
>The summary tile counts the number of devices that have issues, while the blades within the section break down the issues encountered. A single device can have more than one issue, so these numbers may not add up.

The different issues are broken down by Device Issues and Update Issues, which are iterated below:

## Device Issues

* **Missing multiple security updates:** This issue occurs when a device is behind by two or more security updates. These devices may be more vulnerable and should be investigated and updated.
* **Out of support OS Version:** This issue occurs when a device has fallen out of support due to the version of Windows 10 it is running. When a device has fallen out of support, it will no longer be serviced, and may be vulnerable. These devices should be updated to a supported version of Windows 10.

## Update Issues

* **Failed:** This issue occurs when an error halts the process of downloading and applying an update on a device. Some of these errors may be transient, but should be investigated further to be sure.
* **Progress stalled:** This issue occurs when an update is in progress, but has not completed over a period of 10 days.

Clicking on any of the issues will navigate you to the Log Search view with all devices that have the given issue.

## List of Queries

The List of Queries blade resides within the “Need Attention!” section of Update Compliance. This blade contains a list of queries with a description and a link to the query. These queries contain important meta-information that did not fit within any specific section or were listed to serve as a good starting point for modification into custom queries. 