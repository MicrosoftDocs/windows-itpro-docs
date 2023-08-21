---
title: Deploy expedited updates
titlesuffix: Windows Update for Business deployment service
description: Learn how to use Windows Update for Business deployment service to deploy expedited updates to devices in your organization. 
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
ms.author: mstewart
author: mestew
manager: aaroncz
ms.collection:
  - tier1
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 02/14/2023
---

# Deploy expedited updates with Windows Update for Business deployment service
<!--7512398-->

In this article, you will:
> [!div class="checklist"]
>
> * [Open Graph Explorer](#open-graph-explorer)
> * [Run queries to identify test devices](#run-queries-to-identify-devices)
> * [List catalog entries for expedited updates](#list-catalog-entries-for-expedited-updates)
> * [Create a deployment](#create-a-deployment)
> * [Add members to the deployment audience](#add-members-to-the-deployment-audience)
> * [Delete a deployment](#delete-a-deployment)

## Prerequisites

All of the [prerequisites for the Windows Update for Business deployment service](deployment-service-prerequisites.md) must be met.

### Permissions

<!--Using include for Graph Explorer permissions-->
[!INCLUDE [Windows Update for Business deployment service permissions using Graph Explorer](./includes/wufb-deployment-graph-explorer-permissions.md)]

## Open Graph Explorer

<!--Using include for Graph Explorer sign in-->
[!INCLUDE [Graph Explorer sign in](./includes/wufb-deployment-graph-explorer.md)]

## Run queries to identify devices

<!--Using include for Graph Explorer device queries-->
[!INCLUDE [Graph Explorer device queries](./includes/wufb-deployment-find-device-name-graph-explorer.md)]

## List catalog entries for expedited updates

Each update is associated with a unique [catalog entry](/graph/api/resources/windowsupdates-catalogentry). You can query the catalog to find updates that can be expedited. The `id` returned is the **Catalog ID** and is used to create a deployment. The following query lists all security updates that can be deployed as expedited updates by the deployment service. Using `$top=3` and ordering by `ReleaseDateTimeshows` displays the three most recent updates.

```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$filter=isof('microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry') and microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/isExpeditable eq true&$orderby=releaseDateTime desc&$top=3
```

The following truncated response displays a **Catalog ID** of  `693fafea03c24cca819b3a15123a8880f217b96a878b6d6a61be021d476cc432` for the `01/10/2023 - 2023.01 B Security Updates for Windows 10 and later` security update:

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries",
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "693fafea03c24cca819b3a15123a8880f217b96a878b6d6a61be021d476cc432",
            "displayName": "01/10/2023 - 2023.01 B Security Updates for Windows 10 and later",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2023-01-10T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "security"
        },
        ...
    ]
}
```

## Create a deployment

When creating a deployment, there are [multiple options](/graph/api/resources/windowsupdates-deploymentsettings) available to define how the deployment behaves. The following example creates a deployment for the `01/10/2023 - 2023.01 B Security Updates for Windows 10 and later` security update with catalog entry ID `693fafea03c24cca819b3a15123a8880f217b96a878b6d6a61be021d476cc432`, and defines the `expedite` and `userExperience` deployment options in the request body.

```msgraph-interactive
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments
content-type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "693fafea03c24cca819b3a15123a8880f217b96a878b6d6a61be021d476cc432"
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "expedite": {
            "isExpedited": true
        },
        "userExperience": {
            "daysUntilForcedReboot": 2
        }
    }
}
```

The request returns a 201 Created response code and a [deployment](/graph/api/resources/windowsupdates-deployment) object in the response body for the newly created deployment, which includes:

- The **Deployment ID** `de910e12-3456-7890-abcd-ef1234567890` of the newly created deployment.
- The **Audience ID** `d39ad1ce-0123-4567-89ab-cdef01234567` of the newly created deployment audience.

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deployments/$entity",
    "id": "de910e12-3456-7890-abcd-ef1234567890",
    "createdDateTime": "2023-02-09T22:55:04.8547517Z",
    "lastModifiedDateTime": "2023-02-09T22:55:04.8547524Z",
    "state": {
        "effectiveValue": "offering",
        "requestedValue": "none",
        "reasons": []
    },
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deployments('de910e12-3456-7890-abcd-ef1234567890')/content/microsoft.graph.windowsUpdates.catalogContent/catalogEntry/$entity",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "693fafea03c24cca819b3a15123a8880f217b96a878b6d6a61be021d476cc432",
            "displayName": null,
            "deployableUntilDateTime": null,
            "releaseDateTime": "2023-01-10T00:00:00Z",
            "isExpeditable": false,
            "qualityUpdateClassification": "security"
        }
    },
    "settings": {
        "schedule": null,
        "monitoring": null,
        "contentApplicability": null,
        "userExperience": {
            "daysUntilForcedReboot": 2
        },
        "expedite": {
            "isExpedited": true
        }
    },
    "audience@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deployments('de910e12-3456-7890-abcd-ef1234567890')/audience/$entity",
    "audience": {
        "id": "d39ad1ce-0123-4567-89ab-cdef01234567",
        "applicableContent": []
    }
}
```

## Add members to the deployment audience

The **Audience ID**, `d39ad1ce-0123-4567-89ab-cdef01234567`, was created when the deployment was created. The **Audience ID** is used to add members to the deployment audience. After the deployment audience is updated, Windows Update starts offering the update to the devices according to the deployment settings. As long as the deployment exists and the device is in the audience, the update will be expedited.

The following example adds two devices to the deployment audience using the **Azure AD ID** for each device:

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
    }
  ]
}
```

To verify the devices were added to the audience, run the following query using the **Audience ID** of `d39ad1ce-0123-4567-89ab-cdef01234567`:

   ```msgraph-interactive
   GET https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/d39ad1ce-0123-4567-89ab-cdef01234567/members
   ```

## Delete a deployment

To stop an expedited deployment, DELETE the deployment. Deleting the deployment will prevent the content from being offered to devices if they haven't already received it. To resume offering the content, a new approval will need to be created.


The following example deletes the deployment with a **Deployment ID** of `de910e12-3456-7890-abcd-ef1234567890`:

```msgraph-interactive
DELETE https://graph.microsoft.com/beta/admin/windows/updates/deployments/de910e12-3456-7890-abcd-ef1234567890
```


<!--Using include for Update Health Tools log location-->
[!INCLUDE [Windows Update for Business deployment service permissions using Graph Explorer](./includes/wufb-deployment-update-health-tools-logs.md)]