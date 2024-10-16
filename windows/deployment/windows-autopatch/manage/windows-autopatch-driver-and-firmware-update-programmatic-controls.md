---
title: Programmatic controls for drivers and firmware
titleSuffix: Windows Autopatch 
description: Use programmatic controls to deploy driver and firmware updates to devices.
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.collection:
  - tier1
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 09/24/2024
---

# Programmatic controls for drivers and firmware updates
<!--7260403, 7512398-->

Windows Autopatch programmatic controls are used to approve and schedule software updates through the [Microsoft Graph API](/graph/use-the-api). You can call the API directly, through a [Graph SDK](/graph/sdks/sdks-overview), or integrate them with a management tool such as [Microsoft Intune](/mem/intune).

This article uses [Graph Explorer](/graph/graph-explorer/graph-explorer-overview) to walk through the entire process of deploying a driver update to clients. In this article, you will:
> [!div class="checklist"]
>
> - [Open Graph Explorer](#open-graph-explorer)
> - [Run queries to identify devices](#run-queries-to-identify-devices)
> - [Enroll devices](#enroll-devices)
> - [Create a deployment audience and add audience members](#create-a-deployment-audience-and-add-audience-members)
> - [Create an update policy](#create-an-update-policy)
> - [Review applicable driver content](#review-applicable-driver-content)
> - [Approve driver content for deployment](#approve-driver-content-for-deployment)
> - [Revoke content approval](#revoke-content-approval)
> - [Unenroll devices](#unenroll-devices)

## Prerequisites

All of the [Windows Autopatch prerequisites](../prepare/windows-autopatch-fix-issues.md) must be met.

### Permissions

<!--Using include for Graph Explorer permissions-->
[!INCLUDE [Windows Autopath permissions using Graph Explorer](../includes/windows-autopatch-graph-explorer-permissions.md)]

### Required endpoints

<!--Using include for required Graph API endpoints-->
[!INCLUDE [windows-autopatch-required-graph-api-endpoints](../includes/windows-autopatch-required-graph-api-endpoints.md)]

## Open Graph Explorer

<!--Using include for Graph Explorer sign in-->
[!INCLUDE [Graph Explorer sign in](../includes/windows-autopatch-graph-explorer.md)]

## Run queries to identify devices

<!--Using include for Graph Explorer device queries-->
[!INCLUDE [Graph Explorer device queries](../includes/windows-autopatch-find-device-name-graph-explorer.md)]

## Enroll devices

When you enroll devices into driver management, Windows Autopatch becomes the authority for driver updates coming from Windows Update. Devices don't receive drivers or firmware from Windows Update until a deployment is manually created or they're added to a driver update policy with approvals.

<!--Using include for enrolling devices using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](../includes/windows-autopatch-enroll-device-graph-explorer.md)]

## Create a deployment audience and add audience members

<!--Using include for creating deployment audiences and adding audience members using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](../includes/windows-autopatch-audience-graph-explorer.md)]

Once a device has been enrolled and added to a deployment audience, Windows Autopatch will start collecting scan results from Windows Update to build a catalog of applicable drivers to be browsed, approved, and scheduled for deployment.

## Create an update policy

Update policies define how content is deployed to a deployment audience. An [update policy](/graph/api/resources/windowsupdates-updatepolicy) ensures deployments to a deployment audience behave in a consistent manner without having to create and manage multiple individual deployments. When a content approval is added to the policy, it's deployed to the devices in the associated audiences. The deployment and monitoring settings are optional.

> [!IMPORTANT]
> Any [deployment settings](/graph/api/resources/windowsupdates-deploymentsettings) configured for a [content approval](#approve-driver-content-for-deployment) will be combined with the existing update policy's deployment settings. If the content approval and update policy specify the same deployment setting, the setting from the content approval is used.

### Create a policy and define the settings later

To create a policy without any deployment settings, in the request body specify the **Audience ID** as `id`. In the following example, the **Audience ID** is `d39ad1ce-0123-4567-89ab-cdef01234567`, and the `id` given in the response is the **Policy ID**:

   ```msgraph-interactive
   POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies
   content-type: application/json
   
   {
     "audience": {
       "id": "d39ad1ce-0123-4567-89ab-cdef01234567"
     }
   }
   ```

Response returning the policy, without any additional settings specified, that has a **Policy ID** of `9011c330-1234-5678-9abc-def012345678`:

```json
HTTP/1.1 202 Accepted
content-type: application/json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/updatePolicies/$entity",
  "id": "9011c330-1234-5678-9abc-def012345678",
  "createdDateTime": "2023-01-25T05:32:21.9721459Z",
  "autoEnrollmentUpdateCategories": [],
  "complianceChangeRules": [],
  "deploymentSettings": {
      "schedule": null,
      "monitoring": null,
      "contentApplicability": null,
      "userExperience": null,
      "expedite": null
  }
}
```

### Specify settings during policy creation

To create a policy with additional settings, in the request body:

  - Specify the **Audience ID** as `id`
  - Define any [deployment settings](/graph/api/resources/windowsupdates-deploymentsettings).
  - Add the `content-length` header to the request if a status code of 411 occurs. The value should be the length of the request body in bytes. For information on error codes, see [Microsoft Graph error responses and resource types](/graph/errors).

   In the following driver update policy example, any deployments created by a content approval will start 7 days after approval for **Audience ID** `d39ad1ce-0123-4567-89ab-cdef01234567`:

   ```msgraph-interactive
   POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies
   content-type: application/json
      
   {
     "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
     "audience": {
       "id": "d39ad1ce-0123-4567-89ab-cdef01234567"
     },
     "complianceChanges": [
       {
         "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval"
       }
     ],
     "complianceChangeRules": [
       {
         "@odata.type": "#microsoft.graph.windowsUpdates.contentApprovalRule",
         "contentFilter": {
           "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateFilter"
         },
         "durationBeforeDeploymentStart": "P7D"
       }
     ]
   }
   ```

### Review and edit update policy settings

To review the policy settings, run the following query using the **Policy ID**, for example `9011c330-1234-5678-9abc-def012345678`:

   ```msgraph-interactive
   GET https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678
   ```

To edit the policy settings, **PATCH** the policy using the **Policy ID**. Run the following **PATCH** to automatically approve driver content that's recommended by `Microsoft`for deployment for **Policy ID** `9011c330-1234-5678-9abc-def012345678`:

``` msgraph-interactive
PATCH https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678
content-type: application/json

{
    "complianceChangeRules": [
     {
        "@odata.type": "#microsoft.graph.windowsUpdates.contentApprovalRule",
         "contentFilter": {
          "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateFilter"
        }
    }
  ],
    "deploymentSettings": {
       "@odata.type": "#microsoft.graph.windowsUpdates.deploymentSettings",
        "contentApplicability": {
          "@odata.type": "#microsoft.graph.windowsUpdates.contentApplicabilitySettings",
          "offerWhileRecommendedBy": ["microsoft"]
        }
      }
}
```

## Review applicable driver content

Once Windows Autopatch has scan results from devices, the applicability for driver and firmware updates can be displayed for a deployment audience. Each applicable update returns the following information:

- An `id` for its [catalog entry](/graph/api/resources/windowsupdates-catalogentry)
- The **Microsoft Entra ID** of the devices it's applicable to
- Information describing the update such as the name and version.

To display [applicable content](/graph/api/resources/windowsupdates-applicablecontent), run a query using the  **Audience ID**, for example `d39ad1ce-0123-4567-89ab-cdef01234567`:  

```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/d39ad1ce-0123-4567-89ab-cdef01234567/applicableContent
```

The following truncated response displays:

  - An **Microsoft Entra ID** of `01234567-89ab-cdef-0123-456789abcdef`
  - The **Catalog ID** of `5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c`  

      ```json
      "matchedDevices": [
          {
              "recommendedBy": [
                  "Microsoft"
              ],
              "deviceId": "01ea3c90-12f5-4093-a4c9-c1434657c976"
          }
      ],
      "catalogEntry": {
          "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
          "id": "5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c",
          "displayName": "Microsoft - Test - 1.0.0.1",
          "deployableUntilDateTime": null,
          "releaseDateTime": "0001-01-21T04:18:32Z",
          "description": "Microsoft test driver update released in January 2021",
          "driverClass": "OtherHardware",
          "provider": "Microsoft",
          "setupInformationFile": null,
          "manufacturer": "Microsoft",
          "version": "1.0.0.1",
          "versionDateTime": "2021-01-11T02:43:14Z"
      ```

## Approve driver content for deployment

Each driver update is associated with a unique [catalog entry](/graph/api/resources/windowsupdates-catalogentry). Approve content for drivers and firmware by adding a [content approval](/graph/api/resources/windowsupdates-contentapproval) for the catalog entry to an existing policy. Content approval is a [compliance change](/graph/api/resources/windowsupdates-compliancechange) for the policy.

> [!IMPORTANT]
> Any [deployment settings](/graph/api/resources/windowsupdates-deploymentsettings) configured for the content approval will be combined with the existing [update policy's](#create-an-update-policy) deployment settings. If the content approval and update policy specify the same deployment setting, the setting from the content approval is used.

Add a content approval to an existing policy, **Policy ID** `9011c330-1234-5678-9abc-def012345678` for the driver update with the **Catalog ID** `5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c`. Schedule the start date for February 14, 2023 at 1 AM UTC:

```msgraph-interactive
POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678/complianceChanges
content-type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
            "id": "5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c"
        }
    },
    "deploymentSettings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "startDateTime": "2023-02-14T01:00:00Z"
        }
    }
}
```

The response for a content approval returns content and deployment settings along with an `id`, which is the **Compliance Change ID**. The **Compliance Change ID** is `c03911a7-9876-5432-10ab-cdef98765432` in the following truncated response:

```json
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "id": "c03911a7-9876-5432-10ab-cdef98765432",
    "createdDateTime": "2023-02-02T17:54:39.173292Z",
    "isRevoked": false,
    "revokedDateTime": "0001-01-01T00:00:00Z",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
            "id": "5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c"
        }
    },
    "deploymentSettings": {
        "schedule": {
            "startDateTime": "2023-02-14T01:00:00Z",
```

Review all of the compliance changes to a policy with the most recent changes listed in the response first. The following example returns the compliance changes for a policy with the **Policy ID** `9011c330-1234-5678-9abc-def012345678` and sorts by `createdDateTime` in descending order:

   ```msgraph-interactive
   GET https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678/complianceChanges?orderby=createdDateTime desc
   ```

   > [!TIP]
   > There should only be one **Compliance Change ID** per **Catalog ID** for a policy. If there are multiple **Compliance Change IDs** for the same **Catalog ID** then, most likely, there's multiple deployments for the same piece of content targeted to the same audience but with different deployment behaviors. To remove the duplicate, [delete the compliance change](/graph/api/windowsupdates-compliancechange-delete) with the duplicate **Catalog ID**. Deleting the compliance change will mark any deployments created by the approval as `archived`.

To retrieve the deployment ID, use the [expand parameter](/graph/query-parameters#expand-parameter) to review the deployment information related the content approval. The following example displays the content approval and the deployment information for **Compliance Change ID** `c03911a7-9876-5432-10ab-cdef98765432` in update **Policy ID** `9011c330-1234-5678-9abc-def012345678`:

   ```msgraph-interactive
   GET https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678/complianceChanges/c03911a7-9876-5432-10ab-cdef98765432/$/microsoft.graph.windowsUpdates.contentApproval?$expand=deployments
   ```

### Edit deployment settings for a content approval

Since content approval is a compliance change for the policy, when you [update a content approval](/graph/api/windowsupdates-contentapproval-update), you're editing the compliance change for the policy. The following example changes the `startDateTime` for the **Compliance Change ID** of `c03911a7-9876-5432-10ab-cdef98765432` in the update **Policy ID** `9011c330-1234-5678-9abc-def012345678` to February 28, 2023 at 5 AM UTC:

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678/complianceChanges/c03911a7-9876-5432-10ab-cdef98765432
content-type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "deploymentSettings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "startDateTime": "2023-02-28T05:00:00Z"
        }
    }
}
```

## Revoke content approval

Approval for content can be revoked by setting the `isRevoked` property of the [compliance change](/graph/api/resources/windowsupdates-compliancechange) to true. This setting can be changed while a deployment is in progress. However, revoking will only prevent the content from being offered to devices if they haven't already received it. To resume offering the content, a new [approval](#approve-driver-content-for-deployment) will need to be created.

```msgraph-interactive
PATCH https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678/complianceChanges/c03911a7-9876-5432-10ab-cdef98765432
content-type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "isRevoked": true
}
```

To display all deployments with the most recently created returned first, order deployments based on the `createdDateTime`:

```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/windows/updates/deployments?orderby=createdDateTime desc
```

## Unenroll devices

<!--Using include for removing device enrollment-->
[!INCLUDE [Graph Explorer unenroll devices](../includes/windows-autopatch-graph-unenroll.md)]

## Policy considerations for drivers

<!--Using include for Policy considerations for drivers-->
[!INCLUDE [Windows Autopatch driver policy considerations](../includes/windows-autopatch-driver-policy-considerations.md)]
