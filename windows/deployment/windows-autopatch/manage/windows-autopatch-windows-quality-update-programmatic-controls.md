---
title: Programmatic controls for expedited Windows quality updates
titleSuffix: Windows Autopatch
description: Use programmatic controls to deploy expedited Windows quality updates to devices in your organization. 
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

# Programmatic controls for expedited Windows quality updates
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

All of the [Windows Autopatch prerequisites](../prepare/windows-autopatch-prerequisites.md) must be met, including ensuring that the *Update Health Tools* is installed on the clients.

- The *Update Health Tools* are installed starting with [KB4023057](https://support.microsoft.com/kb/4023057). To confirm the presence of the Update Health Tools on a device, use one of the following methods:
  - Run a [readiness test for expedited updates](#readiness-test-for-expediting-updates)
  - Look for the folder **C:\Program Files\Microsoft Update Health Tools** or review *Add Remove Programs* for **Microsoft Update Health Tools**.
  - Example PowerShell script to verify tools installation: `Get-CimInstance -ClassName Win32_Product \| Where-Object {$_.Name -match "Microsoft Update Health Tools"}`

### Permissions

<!--Using include for Graph Explorer permissions-->
[!INCLUDE [Windows Autopatch permissions using Graph Explorer](../includes/windows-autopatch-graph-explorer-permissions.md)]

## Open Graph Explorer

<!--Using include for Graph Explorer sign in-->
[!INCLUDE [Graph Explorer sign in](../includes/windows-autopatch-graph-explorer.md)]

## Run queries to identify devices

<!--Using include for Graph Explorer device queries-->
[!INCLUDE [Graph Explorer device queries](../includes/windows-autopatch-find-device-name-graph-explorer.md)]

## List catalog entries for expedited updates

Each update is associated with a unique [catalog entry](/graph/api/resources/windowsupdates-catalogentry). You can query the catalog to find updates that can be expedited. The `id` returned is the **Catalog ID** and is used to create a deployment. The following query lists all security and nonsecurity<!--8891502--> quality updates that can be deployed as expedited updates by Windows Autopatch. Using `$top=2` and ordering by `ReleaseDateTimeshows` displays the most recent updates that can be deployed as expedited.

```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$filter=isof('microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry') and microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/isExpeditable eq true&$orderby=releaseDateTime desc&$top=2
```

The following truncated response displays a **Catalog ID** of  `e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5` for the `08/08/2023 - 2023.08 B SecurityUpdate for Windows 10 and later` security update:

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries",
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5",
            "displayName": "08/08/2023 - 2023.08 B SecurityUpdate for Windows 10 and later",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2023-08-08T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "security",
            "catalogName": "2023-08 Cumulative Update for Windows 10 and later",
            "shortName": "2023.08 B",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": {
                "maxSeverity": "critical",
                "maxBaseScore": 9.8,
                "exploitedCves@odata.context": "https://graph.microsoft.com/$metadata#admin/windows/updates/catalog/entries('e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/cveSeverityInformation/exploitedCves",
                "exploitedCves": [
                    {
                        "number": "ADV230003",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/ADV230003"
                    },
                    {
                        "number": "CVE-2023-38180",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-38180"
                    }
                ]
            }
        }
    ]
}
```

Windows Autopatch can display more information about updates that were released on or after January 2023. Using [product revision](/graph/api/resources/windowsupdates-productrevision) gives you additional information about the updates, such as the KB numbers, and the `MajorVersion.MinorVersion.BuildNumber.UpdateBuildRevision`. Windows 10 and 11 share the same major and minor versions, but have different build numbers.
<!--8092737-->
Use the following to display the product revision information for the most recent quality update:

```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$expand=microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions&$orderby=releaseDateTime desc&$top=1
```

The following truncated response displays information about KB5029244 for Windows 10, version 22H2, and KB5029263 for Windows 11, version 22H2:

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries(microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions())",
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5",
            "displayName": "08/08/2023 - 2023.08 B SecurityUpdate for Windows 10 and later",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2023-08-08T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "security",
            "catalogName": "2023-08 Cumulative Update for Windows 10 and later",
            "shortName": "2023.08 B",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": {
                "maxSeverity": "critical",
                "maxBaseScore": 9.8,
                "exploitedCves@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/cveSeverityInformation/exploitedCves",
                "exploitedCves": [
                    {
                        "number": "ADV230003",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/ADV230003"
                    },
                    {
                        "number": "CVE-2023-38180",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-38180"
                    }
                ]
            },
            "productRevisions@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions",
            "productRevisions": [
                {
                    "id": "10.0.19045.3324",
                    "displayName": "Windows 10, version 22H2, build 19045.3324",
                    "releaseDateTime": "2023-08-08T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 3324
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19045.3324')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5029244",
                        "url": "https://support.microsoft.com/help/5029244"
                    }
                },
                {
                    "id": "10.0.22621.2134",
                    "displayName": "Windows 11, version 22H2, build 22621.2134",
                    "releaseDateTime": "2023-08-08T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 2134
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22621.2134')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5029263",
                        "url": "https://support.microsoft.com/help/5029263"
                    }
                },
```

## Create a deployment

When creating a deployment, there are [multiple options](/graph/api/resources/windowsupdates-deploymentsettings) available to define how the deployment behaves. The following example creates a deployment for the `08/08/2023 - 2023.08 B SecurityUpdate for Windows 10 and later` security update with catalog entry ID `e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5`, and defines the `expedite` and `userExperience` deployment options in the request body.

```msgraph-interactive
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments
content-type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5"
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
    "createdDateTime": "2024-01-30T19:43:37.1672634Z",
    "lastModifiedDateTime": "2024-01-30T19:43:37.1672644Z",
    "state": {
        "effectiveValue": "offering",
        "requestedValue": "none",
        "reasons": []
    },
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deployments('073fb534-5cdd-4326-8aa2-a4d29037b60f')/content/microsoft.graph.windowsUpdates.catalogContent/catalogEntry/$entity",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5",
            "displayName": null,
            "deployableUntilDateTime": null,
            "releaseDateTime": "2023-08-08T00:00:00Z",
            "isExpeditable": false,
            "qualityUpdateClassification": "security",
            "catalogName": null,
            "shortName": null,
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": null
        }
    },
    "settings": {
        "schedule": null,
        "monitoring": null,
        "contentApplicability": null,
        "userExperience": {
            "daysUntilForcedReboot": 2,
            "offerAsOptional": null
        },
        "expedite": {
            "isExpedited": true,
            "isReadinessTest": false
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

The following example adds two devices to the deployment audience using the **Microsoft Entra ID** for each device:

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

## Readiness test for expediting updates
<!--8705528-->
You can verify the readiness of clients to receive expedited updates by using [isReadinessTest](/graph/api/resources/windowsupdates-expeditesettings). Create a deployment that specifies  it's an expedite readiness test, then add members to the deployment audience. The service will check to see if the clients meet the prerequisites for expediting updates. The results of the test are displayed in the [Windows Update for Business reports workbook](/windows/deployment/update/wufb-reports-workbook#quality-updates-tab). Under the **Quality updates** tab, select the **Expedite status** tile, which opens a flyout with a **Readiness** tab with the readiness test results.

```msgraph-interactive
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments
content-type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5"
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "expedite": {
            "isExpedited": true,
            "isReadinessTest": true
        }
    }
}
```

The truncated response displays that **isReadinessTest** is set to `true` and gives you a **DeploymentID** of `de910e12-3456-7890-abcd-ef1234567890`. You can then [add members to the deployment audience](#add-members-to-the-deployment-audience) to have the service check that the devices meet the preresquites then review the results in the [Windows Update for Business reports workbook](/windows/deployment/update/wufb-reports-workbook#quality-updates-tab).

```json
        "expedite": {
            "isExpedited": true,
            "isReadinessTest": true
        }
    },
    "audience@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deployments('6a6c03b5-008e-4b4d-8acd-48144208f179_Readiness')/audience/$entity",
    "audience": {
        "id": "de910e12-3456-7890-abcd-ef1234567890",
        "applicableContent": []
    }

```

<!--Using include for Update Health Tools log location-->
[!INCLUDE [Windows Autopatch Update Health Tools](../includes/windows-autopatch-update-health-tools-logs.md)]
