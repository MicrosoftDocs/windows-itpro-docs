---
title: Deploy feature updates with Windows Update for Business deployment service.
description: Use Windows Update for Business deployment service to deploy feature updates. 
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: article
ms.technology: itpro-updates
ms.date: 02/14/2023
---

# Deploy feature updates with Windows Update for Business deployment service
<!--7512398-->
***(Applies to: Windows 11 & Windows 10)***

The Windows Update for Business deployment service is used to approve and schedule software updates. The deployment service exposes its capabilities through the [Microsoft Graph API](/graph/use-the-api). You can call the API directly, through a [Graph SDK](/graph/sdks/sdks-overview), or integrate them with a management tool such as [Microsoft Intune](/mem/intune). This article uses Graph Explorer to walk through the entire process of deploying a feature update to clients. In this article, you will:

In this article, you will:
> [!div class="checklist"]
> * [Open Graph Explorer](#open-graph-explorer)
> * [Run queries to identify devices](#run-queries-to-identify-devices)
> * [Enroll devices](#enroll-devices)
> * [Create a deployment audience and add audience members](#create-a-deployment-audience-and-add-audience-members)
> * [List catalog entries for feature updates](#list-catalog-entries-for-feature-updates)
> * Do Z
> * Do Z
> - [Unenroll devices](#unenroll-devices)


## Prerequisites

All of the [prerequisites for the Windows Update for Business deployment service](deployment-service-overview.md#prerequisites) must be met.

### Permissions

<!--Using include for Graph Explorer permissions-->
[!INCLUDE [Windows Update for Business deployment service permissions using Graph Explorer](./includes/wufb-deployment-graph-explorer-permissions.md)]

## Open Graph Explorer

<!--Using include for Graph Explorer sign in-->
[!INCLUDE [Graph Explorer sign in](./includes/wufb-deployment-graph-explorer.md)]

## Run queries to identify devices

<!--Using include for Graph Explorer device queries-->
[!INCLUDE [Graph Explorer device queries](./includes/wufb-deployment-find-device-name-graph-explorer.md)]

## Enroll devices

When you enroll devices into feature update management, the deployment service becomes the authority for feature updates coming from Windows Update.
As long as a device remains enrolled in feature update management through the deployment service, the device doesn't receive any other feature updates from Windows Update unless explicitly deployed using the deployment service. A device is offered the specified feature update if it hasn't already received the update. For example, if you deploy Windows 11 feature update version 22H2 to a device that's enrolled into feature update management and is currently on an older version of Windows 11, the device updates to version 22H2. If the device is already running version 22H2 or a later version, it stays on its current version.

> [!TIP]
> Windows Update for Business reports has a [workbook](wufb-reports-workbook.md#feature-updates-tab) that displays the current operating system version for devices. In the workbook, go to the **Feature updates** tab and in the **In Service feature update** tile, select the **View details** link to open the details flyout. The OS version and Azure AD ID of devices can easily be exported into a .csv file or opened in [Azure Monitor Logs](/azure/azure-monitor/logs/log-query-overview) to help when creating a deployment audience.

<!--Using include for enrolling devices using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-enroll-device-graph-explorer.md)]

## Create a deployment audience and add audience members

<!--Using include for creating deployment audiences and adding audience members using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-audience-graph-explorer.md)]

## List catalog entries for feature updates



```http
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$filter=isof('microsoft.graph.windowsUpdates.featureUpdateCatalogEntry')
```

Truncated response:

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries",
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "f341705b-0b15-4ce3-aaf2-6a1681d78606",
            "displayName": "Windows 10, version 22H2",
            "deployableUntilDateTime": "2024-10-08T00:00:00Z",
            "releaseDateTime": "2022-10-18T00:00:00Z",
            "version": "Windows 10, version 22H2"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "d9049ddb-0ca8-4bc1-bd3c-41a456ef300f",
            "displayName": "Windows 11, version 22H2",
            "deployableUntilDateTime": "2025-10-14T00:00:00Z",
            "releaseDateTime": "2022-09-20T00:00:00Z",
            "version": "Windows 11, version 22H2"
        }
    ]
}
```

## Create a deployment




## Unenroll devices

<!--Using include for removing device enrollment-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-graph-unenroll.md)]
