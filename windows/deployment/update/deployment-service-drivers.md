---
title: Deploy drivers and firmware updates with Windows Update for Business deployment service.
description: Use Windows Update for Business deployment service to deploy driver and firmware updates. 
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: article
ms.technology: itpro-updates
ms.date: 02/14/2023
---

# Deploy drivers and firmware updates with Windows Update for Business deployment service
<!--7260403, 7512398-->
***(Applies to: Windows 11 & Windows 10)***

In this article, you will:
> [!div class="checklist"]
>
> - [Open Graph Explorer](#open-graph-explorer)
> - [Run queries to identify test devices](#run-queries-to-identify-devices)
> - [Enroll devices](#enroll-devices)
> - [Create a deployment audience and add audience members](#create-a-deployment-audience-and-add-audience-members)
> - [Create an update policy](#create-an-update-policy)
> - [Review applicable driver content](#review-applicable-driver-content)
> - [Approve driver content for deployment](#approve-driver-content-for-deployment)
> - [Revoke content approval](#revoke-content-approval)
> - [Remove device enrollment](#remove-device-enrollment)

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

When you enroll devices into driver management, the deployment service becomes the authority for driver updates coming from Windows Update. Devices don't receive drivers or firmware from Windows Update until a deployment is manually created or they're added to a driver update policy with approvals.

<!--Using include for enrolling devices using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-enroll-device-graph-explorer.md)]

## Create a deployment audience and add audience members

1. Create an audience for the driver deployment. The deployment audience is a collection of member devices that will receive the driver deployment. **POST** to the [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience) resource with a request body of `{}` to create a new audience.

   ```http
   POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences
   content-type: application/json

   {}
   ```

   The POST returns a [201 Created](/troubleshoot/developer/webapps/iis/www-administration-management/http-status-code#2xx---success) response with the following body, where `id` is the **Audience ID**:

   ```json
   {
       "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deploymentAudiences/$entity",
       "id": "d39ad1ce-0123-4567-89ab-cdef01234567",
       "reportingDeviceCount": 0,
       "applicableContent": []
   }
   ```


1. Add devices, using their **Azure AD ID**, to the deployment audience so they become audience members. Specify the deployment **Audience ID** in the URL field and the devices to add in the request body. The `id` property specifies the **Azure AD ID** of the device.

   ```http
   POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/d39ad1ce-0123-4567-89ab-cdef01234567/updateAudience
   Content-type: application/json

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

1. To verify the devices were added to the audience, run the following query using the **Audience ID**:

   `GET https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/d39ad1ce-0123-4567-89ab-cdef01234567/members`

Once a device has been enrolled and added to a deployment audience, the Windows Update for Business deployment service will start collecting scan results from Windows Update to build a catalog of applicable drivers to be browsed, approved, and scheduled for deployment.

## Create an update policy

Update policies define how content is deployed to a deployment audience. An [update policy](/graph/api/resources/windowsupdates-updatepolicy) ensures deployments to a deployment audience behaves in a consistent manner without having to create and manage multiple individual deployments. When a content approval is added to the policy, it's deployed to the devices in the associated audiences.

> [!IMPORTANT]
> Any [deployment settings](/graph/api/resources/windowsupdates-deploymentsettings) configured for a [content approval](#approve-driver-content-for-deployment) will be combined with the existing update policy's deployment settings. If the content approval and update policy specify the same deployment setting, the setting from the content approval is used.


### Create a policy and define the settings later

   To create a policy without any deployment settings, in the request body specify the **Audience ID** as `id`. In the following example, the **Audience ID** is `d39ad1ce-0123-4567-89ab-cdef01234567`, and the `id` given in the response is the **Policy ID**:

   ```http
   POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies
   Content-type: application/json
   {
     "audience": {
       "@odata.id": "d39ad1ce-0123-4567-89ab-cdef01234567"
     }
   }
   ```

Response returning the policy, without any additional settings specified, that has a **Policy ID** of `9011c330-1234-5678-9abc-def012345678`:

```json
HTTP/1.1 202 Accepted
Content-type: application/json
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
  - Define any additional [deployment settings](/graph/api/resources/windowsupdates-deploymentsettings).
  - You may need to add the `content-length` header to the request. The value should be the length of the request body in bytes.

   In the following driver update policy example, any deployments created by a content approval will start in 7 days after approval and will gradually roll out to 1000 devices per day for  **Audience ID** `d39ad1ce-0123-4567-89ab-cdef01234567`:

   ```http
   POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies
   Content-Type: application/json
   Content-length: 967
   {
     "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
     "audience": {
       "@odata.id": "d39ad1ce-0123-4567-89ab-cdef01234567"
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
     ],
     "deploymentSettings": {
       "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
       "schedule": {
         "gradualRollout": {
           "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
           "durationBetweenOffers": "P1D",
           "devicePerOffer": 1000
         }
       }
     }
   }
   ```


### Review and edit update policy settings

To review the policy settings, run the following query using the **Policy ID**, for example `9011c330-1234-5678-9abc-def012345678`:

   `GET https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678`

To edit the policy settings, **PATCH** the policy using the **Policy ID**. Run the following **PATCH** to automatically approve driver content that's recommended by `Microsoft`for deployment for **Policy ID** `9011c330-1234-5678-9abc-def012345678`:

``` http
   PATCH https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678
   Content-Type: application/json

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

Once Windows Update for Business deployment service has scan results from devices, the applicability for driver and firmware updates can be displayed for a deployment audience. Each applicable update returns the following information:

- An `id` for its [catalog entry](/graph/api/resources/windowsupdates-catalogentry)
- The **Azure AD ID** of the devices it's applicable to
- Information describing the update such as the name and version.

To display [applicable content](/graph/api/resources/windowsupdates-applicablecontent), run a query using the  **Audience ID**, for example `d39ad1ce-0123-4567-89ab-cdef01234567`:  

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/d39ad1ce-0123-4567-89ab-cdef01234567/applicableContent
```

The following truncated response displays:
  - An **Azure AD ID** of `01234567-89ab-cdef-0123-456789abcdef`
  - The **Catalog ID** of `1d082682ff38a3a885cefd68ec6ab3782be3dc31d156c9e5c6fd3dc55cbd839d`

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
          "id": "1d082682ff38a3a885cefd68ec6ab3782be3dc31d156c9e5c6fd3dc55cbd839d",
      ```

## Approve driver content for deployment

Each driver update is associated with a unique [catalog entry](/graph/api/resources/windowsupdates-catalogentry). Approve content for drivers and firmware by adding a [content approval](/graph/api/resources/windowsupdates-contentapproval) for the catalog entry to an existing policy. Content approval is a [compliance change](/graph/api/resources/windowsupdates-compliance) for the policy.

> [!IMPORTANT]
> Any [deployment settings](/graph/api/resources/windowsupdates-deploymentsettings) configured for the content approval will be combined with the existing [update policy's](#create-an-update-policy) deployment settings. If the content approval and update policy specify the same deployment setting, the setting from the content approval is used.

Add a content approval to an existing policy, **Policy ID** `9011c330-1234-5678-9abc-def012345678` for the driver update with the **Catalog ID** `1d082682ff38a3a885cefd68ec6ab3782be3dc31d156c9e5c6fd3dc55cbd839d`. Schedule the start date for January, 20 2023 at 1 AM UTC:

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678/complianceChanges
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
            "id": "1d082682ff38a3a885cefd68ec6ab3782be3dc31d156c9e5c6fd3dc55cbd839d"
        }
    },
    "deploymentSettings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "startDateTime": "2023-01-20T01:00:00Z"
        }
    }
}
```

Review the compliance changes to a policy with the most recent changes listed in the response first. The following example returns the compliance changes for a policy with the **Policy ID** `9011c330-1234-5678-9abc-def012345678` and sorts by `createdDateTime` in descending order:

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/9011c330-1234-5678-9abc-def012345678/complianceChanges?orderby=createdDateTime desc

```

## Revoke content approval

Approval for content can be revoked by setting the `isRevoked` property of the [compliance change](/graph/api/resources/windowsupdates-compliance) to true. This setting can be changed while a deployment is in progress. However, revoking will only prevent the content from being offered to devices if they haven't already received it. To resume offering the content, a new [approval](#approve-driver-content-for-deployment) will need to be created.

### Request

```http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/d7a89208-17c5-4daf-a164-ce176b00e4ef/complianceChanges/dbf29574-ffd9-49cf-87f2-f03629e596ba
Content-type: application/json
{
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "isRevoked": true
}
```

## Remove device enrollment

<!--Using include for removing device enrollment-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-graph-unenroll.md)]
