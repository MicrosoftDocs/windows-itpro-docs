---
title: 'Tutorial: Deploy drivers and firmware updates with Windows Update for Business deployment service.'
description: Use Windows Update for Business deployment service to deploy driver and firmware updates. 
ms.prod: windows-client
author: mestew
ms.localizationpriority: medium
ms.author: mstewart
manager: aaroncz
ms.topic: tutorial
ms.technology: itpro-updates
ms.date: 02/14/2023
---

# Tutorial: Deploy drivers and firmware updates with Windows Update for Business deployment service
<!--7260403, 7512398-->
***(Applies to: Windows 11 & Windows 10)***

In this tutorial, you will:
> [!div class="checklist"]
> - [Open Graph Explorer](#open-graph-explorer)
> - [Run queries to identify test devices](#run-queries-to-identify-test-devices)
> - [Enroll devices](#enroll-devices)
> - [Create a deployment audience and add audience members](#create-a-deployment-audience-and-add-audience-members)
> - [Create an update policy](#create-an-update-policy)
> - Do Z
> - Do Z
> - [Remove device enrollment](#remove-device-enrollment)

## Prerequisites

All of the [prerequisites for the Windows Update for Business deployment service](deployment-service-overview.md#prerequisites) must be met.
### Permissions

<!--Using include for tutorial permissions-->
[!INCLUDE [Windows Update for Business deployment service tutorial permissions](./includes/wufb-deployment-tutorial-permissions.md)]

## Open Graph Explorer

<!--Using include for Graph Explorer sign in-->
[!INCLUDE [Graph Explorer sign in](./includes/wufb-deployment-graph-explorer.md)]

## Run queries to identify test devices

<!--Using include for Graph Explorer device queries-->
[!INCLUDE [Graph Explorer device queries](./includes/wufb-deployment-find-device-name-graph-explorer.md)]

## Enroll devices

When you enroll devices into driver management, the deployment service becomes the authority for driver updates coming from Windows Update. Devices don't receive drivers from Windows Update until a deployment is manually created or they're added to a driver update policy with approvals.

<!--Using include for enrolling devices using Graph Explorer-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-enroll-device-graph-explorer.md)]

## Create a deployment audience and add audience members

1. Create an audience for the driver deployment. The deployment audience is a collection of member devices that will receive the driver deployment. POST to the [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience) resource with a request body of `{}` to create a new audience.

   ```rest
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

   ```rest
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

<!-- check timing with PM on this blurb from dev docs: When the deployment audience is successfully updated, the Windows Update for Business deployment service will start collecting scan results from Windows Update to build a catalog of applicable drivers to be browsed, approved, and scheduled for deployment.--> 

## Create an update policy

Update policies define how content is deployed to a deployment audience. An [update policy](/graph/api/resources/windowsupdates-updatepolicy) ensures deployments to deployment audiences behave in a consistent manner without having to create and manage multiple individual deployments. When a content approval is added to the policy, it's deployed to the devices in the associated audiences. When creating an update policy, you can either:

- Create a policy and define the settings later

   To create a policy without any deployment settings, in the request body specify the **Audience ID** as `id`. In the following example, the **Audience ID** is `d39ad1ce-0123-4567-89ab-cdef01234567`:

   ```rest
   POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies
   Content-type: application/json
   {
     "audience": {
       "@odata.id": "d39ad1ce-0123-4567-89ab-cdef01234567"
     }
   }
   ```

- Specify settings during policy creation

   To create a policy with additional settings, in the request body:
    - Specify the **Audience ID** as `id`
    - Define any additional deployment or compliance [settings](beta/api/adminwindowsupdates-post-updatepolicies). /graph/api/resources/windowsupdates-updatepolicy
    
   In the following example, the **Audience ID** is `d39ad1ce-0123-4567-89ab-cdef01234567`:

   ```rest
   POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies
   Content-Type: application/json
   Content-length: 835
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

**note to add info about behavior defined by settings in example and maybe include info about autoapprove while recommended** 
```dotnetcli

  "deploymentSettings": {
    "contentApplicability": {
      "offerWhileRecommendedBy": ["Microsoft"],
```


Response, returning the **Policy ID** of `9011c330-1234-5678-9abc-def0123456`:

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

<!--[Error 411](/graph/errors) Length Required -->


## Remove device enrollment

<!--Using include for removing device enrollment-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-graph-unenroll.md)]
