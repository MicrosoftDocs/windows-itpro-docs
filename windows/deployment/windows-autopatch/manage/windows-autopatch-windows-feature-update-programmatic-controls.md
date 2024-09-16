---
title: Programmatic controls for feature updates 
titleSuffix: Windows Autopatch
description: Use programmatic controls to deploy feature updates to devices in your organization. 
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.author: tiaraquan
author: tiaraquan
manager: aaroncz
ms.collection:
  - tier1
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 09/16/2024
---

# Programmatic controls for Windows feature updates

[!INCLUDE [windows-autopatch-applies-to-all-licenses](../includes/windows-autopatch-applies-to-all-licenses.md)]

<!--7512398-->
Windows Autopatch programmatic controls are used to approve and schedule software updates through [Microsoft Graph API](/graph/use-the-api). You can call the API directly, through a [Graph SDK](/graph/sdks/sdks-overview), or integrate them with a management tool such as [Microsoft Intune](/mem/intune).

This article uses [Graph Explorer](/graph/graph-explorer/graph-explorer-overview) to walk through the entire process of deploying a feature update to clients. In this article, you will:

In this article, you will:
> [!div class="checklist"]
>
> * [Open Graph Explorer](#open-graph-explorer)
> * [Run queries to identify devices](#run-queries-to-identify-devices)
> * [Enroll devices](#enroll-devices)
> * [List catalog entries for feature updates](#list-catalog-entries-for-feature-updates)
> * [Create a deployment](#create-a-deployment)
> * [Add members to the deployment audience](#add-members-to-the-deployment-audience)
> * [Pause a deployment](#pause-a-deployment)
> * [Delete a deployment](#delete-a-deployment)
> * [Unenroll devices](#unenroll-devices)

## Prerequisites

All of the [Windows Autopatch prerequisites](../prepare/windows-autopatch-prerequisites.md) must be met.

### Permissions

<!--Using include for Graph Explorer permissions-->
[!INCLUDE [Windows Autopatch permissions using Graph Explorer](../includes/windows-autopatch-graph-explorer-permissions.md)]

## Open Graph Explorer

<!--Using include for Graph Explorer sign in-->
[!INCLUDE [Graph Explorer sign in](../includes/windows-autopatch-graph-explorer.md)]

## Run queries to identify devices

<!--Using include for Graph Explorer device queries-->
[!INCLUDE [Graph Explorer device queries](../includes/windows-autopatch-find-device-name-graph-explorer.md)]

## Enroll devices

When you enroll devices into feature update management, Windows Autopatch becomes the authority for feature updates coming from Windows Update.
As long as a device remains enrolled in feature update management through Windows Autopatch, the device doesn't receive any other feature updates from Windows Update unless explicitly deployed using Windows Autopatch. A device is offered the specified feature update if it hasn't already received the update. For example, if you deploy Windows 11 feature update version 22H2 to a device that's enrolled into feature update management and is currently on an older version of Windows 11, the device updates to version 22H2. If the device is already running version 22H2 or a later version, it stays on its current version.

> [!TIP]
> Windows Update for Business reports has a [workbook](/windows/deployment/update/wufb-reports-workbook#feature-updates-tab) that displays the current operating system version for devices. In the workbook, go to the **Feature updates** tab and in the **In Service feature update** tile, select the **View details** link to open the details flyout. The OS version and Microsoft Entra ID of devices can easily be exported into a .csv file or opened in [Azure Monitor Logs](/azure/azure-monitor/logs/log-query-overview) to help when creating a deployment audience.

<!--Using include for enrolling devices using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](../includes/windows-autopatch-enroll-device-graph-explorer.md)]

## List catalog entries for feature updates

Each feature update is associated with a unique [catalog entry](/graph/api/resources/windowsupdates-catalogentry). The `id` returned is the **Catalog ID** and is used to create a deployment. Feature updates are deployable until they reach their support retirement dates. For more information, see the support lifecycle dates for [Windows 10](/lifecycle/products/windows-10-enterprise-and-education) and [Windows 11](/lifecycle/products/windows-11-enterprise-and-education) Enterprise and Education editions. The following query lists all deployable feature update catalog entries:

```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$filter=isof('microsoft.graph.windowsUpdates.featureUpdateCatalogEntry')
```

The following truncated response displays a **Catalog ID** of  `d9049ddb-0ca8-4bc1-bd3c-41a456ef300f` for the Windows 11, version 22H2 feature update:

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries",
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "d9049ddb-0ca8-4bc1-bd3c-41a456ef300f",
            "displayName": "Windows 11, version 22H2",
            "deployableUntilDateTime": "2025-10-14T00:00:00Z",
            "releaseDateTime": "2022-09-20T00:00:00Z",
            "version": "Windows 11, version 22H2",
            "buildNumber": "22621"
        }
    ]
}
```

## Create a deployment

When creating a deployment for a feature update, there are multiple options available to define how the deployment behaves. The deployment and monitoring settings are optional. The following [deployment settings](/graph/api/resources/windowsupdates-deploymentsettings) are defined in the example request body for deploying the Windows 11, version 22H2 feature update (**Catalog ID** of  `d9049ddb-0ca8-4bc1-bd3c-41a456ef300f`):  

- Deployment [start date](/graph/api/resources/windowsupdates-schedulesettings) of February 14, 2023 at 5 AM UTC
- [Gradual rollout](/graph/api/resources/windowsupdates-gradualrolloutsettings) at a rate of 100 devices every three days
- [Monitoring rule](/graph/api/resources/windowsupdates-monitoringrule) that pauses the deployment if five devices rollback the feature update
- Default [safeguard hold](/graph/api/resources/windowsupdates-safeguardprofile) behavior of applying all applicable safeguards to devices in a deployment
  - When safeguard holds aren't explicitly defined, the default safeguard hold behavior is applied automatically

```msgraph-interactive
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments
content-type: application/json

{
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "d9049ddb-0ca8-4bc1-bd3c-41a456ef300f"
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "startDateTime": "2023-02-14T05:00:00Z",
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                "durationBetweenOffers": "P3D",
                "devicesPerOffer": "100"
            }
        },
        "monitoring": {
            "monitoringRules": [
                {
                    "signal": "rollback",
                    "threshold": 5,
                    "action": "pauseDeployment"
                }
            ]
        }
    }
}
```

The response body contains:

- The new **Deployment ID**, `de910e12-3456-7890-abcd-ef1234567890` in the example
- The new **Audience ID**, `d39ad1ce-0123-4567-89ab-cdef01234567` in the example
- Any settings defined in the deployment request body

   ```json
   {
       "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deployments/$entity",
       "id": "de910e12-3456-7890-abcd-ef1234567890",
       "createdDateTime": "2023-02-07T19:21:15.425905Z",
       "lastModifiedDateTime": "2023-02-07T19:21:15Z",
       "state": {
           "effectiveValue": "scheduled",
           "requestedValue": "none",
           "reasons": []
       },
       "content": {
           "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
           "catalogEntry@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deployments('de910e12-3456-7890-abcd-ef1234567890')/content/microsoft.graph.windowsUpdates.catalogContent/catalogEntry/$entity",
           "catalogEntry": {
               "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
               "id": "d9049ddb-0ca8-4bc1-bd3c-41a456ef300f",
               "displayName": "Windows 11, version 22H2",
               "deployableUntilDateTime": "2025-10-14T00:00:00Z",
               "releaseDateTime": "0001-01-01T00:00:00Z",
               "version": "Windows 11, version 22H2"
           }
       },
       "settings": {
           "contentApplicability": null,
           "userExperience": null,
           "expedite": null,
           "schedule": {
               "startDateTime": "2023-02-14T05:00:00Z",
               "gradualRollout": {
                   "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                   "durationBetweenOffers": "P3D",
                   "devicesPerOffer": 100
               }
           },
           "monitoring": {
               "monitoringRules": [
                   {
                       "signal": "rollback",
                       "threshold": 5,
                       "action": "pauseDeployment"
                   }
               ]
           }
       },
       "audience@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deployments('de910e12-3456-7890-abcd-ef1234567890')/audience/$entity",
       "audience": {
           "id": "d39ad1ce-0123-4567-89ab-cdef01234567",
           "applicableContent": []
       }
   }
   ```

### Edit a deployment

To [update deployment](/graph/api/windowsupdates-deployment-update), PATCH the deployment resource by its **Deployment ID** and supply the updated settings in the request body. The following example keeps the existing gradual rollout settings that were defined when creating the deployment but changes the deployment start date to February 28, 2023 at 5 AM UTC:

```msgraph-interactive  
PATCH https://graph.microsoft.com/beta/admin/windows/updates/deployments/de910e12-3456-7890-abcd-ef1234567890
content-type: application/json

{
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "startDateTime": "2023-02-28T05:00:00Z",
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                "durationBetweenOffers": "P3D",
                "devicesPerOffer": "100"
            }
        }
    }
}

```

Verify the deployment settings for the deployment with a **Deployment ID** of `de910e12-3456-7890-abcd-ef1234567890`:

```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/windows/updates/deployments/de910e12-3456-7890-abcd-ef1234567890
```

## Add members to the deployment audience

The **Audience ID**, `d39ad1ce-0123-4567-89ab-cdef01234567`, was created when the deployment was created. The **Audience ID** is used to add members to the deployment audience. After the deployment audience is updated, Windows Update starts offering the update to the devices according to the deployment settings. As long as the deployment exists and the device is in the audience, the update is offered. 

The following example adds three devices to the deployment audience using the **Microsoft Entra ID** for each device:

   ```msgraph-interactive
   POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/d39ad1ce-0123-4567-89ab-cdef01234567/updateAudience
   content-type: application/json

   {
     "addMembers": [
       {
         "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
         "id": "01234567-89ab-cdef-0123-456789abcdef"
       },
       {
         "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
         "id": "01234567-89ab-cdef-0123-456789abcde0"
       },
       {
         "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
        "id": "01234567-89ab-cdef-0123-456789abcde1"
       }
     ]
   }
   ```

To verify the devices were added to the audience, run the following query using the **Audience ID** of `d39ad1ce-0123-4567-89ab-cdef01234567`:

   ```msgraph-interactive
   GET https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/d39ad1ce-0123-4567-89ab-cdef01234567/members
   ```

## Pause a deployment

To pause a deployment, PATCH the deployment to have a `requestedValue` of `paused` for the [deploymentState](/graph/api/resources/windowsupdates-deploymentstate). To resume the deployment, use the value `none` and the state will either update to `offering` or `scheduled` if the deployment hasn't reached the start date yet.

The following example pauses the deployment with a **Deployment ID** of `de910e12-3456-7890-abcd-ef1234567890`:

```msgraph-interactive

PATCH https://graph.microsoft.com/beta/admin/windows/updates/deployments/de910e12-3456-7890-abcd-ef1234567890
content-type: application/json

{
  "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
  "state": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentState",
    "requestedValue": "paused"
  }
}
```

## Delete a deployment

To remove the deployment completely, DELETE the deployment. Deleting the deployment prevents the content from being offered to devices if they haven't already received it. To resume offering the content, a new approval needs to be created.


The following example deletes the deployment with a **Deployment ID** of `de910e12-3456-7890-abcd-ef1234567890`:

```msgraph-interactive
DELETE https://graph.microsoft.com/beta/admin/windows/updates/deployments/de910e12-3456-7890-abcd-ef1234567890
```

## Unenroll devices

<!--Using include for removing device enrollment-->
[!INCLUDE [Graph Explorer unenroll devices](../includes/windows-autopatch-graph-unenroll.md)]
