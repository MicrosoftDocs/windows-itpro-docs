---
title: Update Compliance - Need Attention! report
manager: aaroncz
description: Learn how the Need attention! section provides a breakdown of all Windows 10 device and update issues detected by Update Compliance.
author: mestew
ms.author: mstewart
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-updates
ms.date: 04/01/2023
---

# Needs attention!

**Applies to**

- Windows 10
- Windows 11

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]

![Needs attention section.](images/UC_workspace_needs_attention.png)

The **Needs attention!** section provides a breakdown of all Windows client device and update issues detected by Update Compliance. The summary tile for this section counts the number of devices that have issues, while the blades within breakdown the issues encountered. Finally, a [list of queries](#list-of-queries) blade in this section contains queries that provide values but don't fit within any other main section. 

> [!NOTE]
> The summary tile counts the number of devices that have issues, while the blades within the section break down the issues encountered. A single device can have more than one issue, so these numbers might not add up.

The different issues are broken down by Device Issues and Update Issues:

## Device Issues

* **Missing multiple security updates:** This issue occurs when a device is behind by two or more security updates. These devices might be more vulnerable and should be investigated and updated.
* **Out of support OS Version:** This issue occurs when a device has fallen out of support due to the version of Windows client it's running. When a device has fallen out of support, it will no longer receive important security updates, and might be vulnerable. These devices should be updated to a supported version of Windows client.

## Update Issues

* **Failed:** This issue occurs when an error halts the process of downloading and applying an update on a device. Some of these errors might be transient, but should be investigated further to be sure.
* **Canceled**: This issue occurs when a user cancels the update process.
* **Rollback**: This issue occurs when a fatal error occurs during a feature update, and the device is rolled back to the previous version.
* **Uninstalled**: This issue occurs when a feature update is uninstalled from a device by a user or an administrator. This might not be a problem if the uninstallation was intentional, but is highlighted as it might need attention.
* **Progress stalled:** This issue occurs when an update is in progress, but hasn't completed over a period of 7 days.

Selecting any of the issues will take you to a [Log Analytics](/azure/log-analytics/query-language/get-started-analytics-portal) view with all devices that have the given issue.

> [!NOTE]
> This blade also has a link to the [Setup Diagnostic Tool](../upgrade/setupdiag.md), a standalone tool you can use to obtain details about why a Windows client feature update was unsuccessful. 

## List of Queries

The **List of Queries** blade is in the **Needs Attention** section of Update Compliance. This blade contains a list of queries with a description and a link to the query. These queries contain important meta-information that didn't fit within any specific section or were listed to serve as a good starting point for modification into custom queries.
