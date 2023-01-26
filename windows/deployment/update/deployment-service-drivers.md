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
> * [Open Graph Explorer](#open-graph-explorer)
> * [Run queries to identify test devices](#run-queries-to-identify-test-devices)
> * [Enroll devices](#enroll-devices)
> * [Create a deployment audience and add audience members](#create-a-deployment-audience-and-add-audience-members)
> * Do Z
> * Do Z
> * Do Z
> * [Remove device enrollment](#remove-device-enrollment)

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
       "id": "d39ad1ce-01234-5678-9abc-def012345678",
       "reportingDeviceCount": 0,
       "applicableContent": []
   }
   ```

1. Add devices, using their **Azure AD ID**, to the deployment audience so they become audience members. Specify the deployment **Audience ID** in the URL field and the devices to add in the request body. The `id` property specifies the **Azure AD ID** of the device.

   ```rest
   POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/d39ad1ce-01234-5678-9abc-def012345678/updateAudience
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


## Remove device enrollment

<!--Using include for removing device enrollment-->
[!INCLUDE [Graph Explorer enroll devices](./includes/wufb-deployment-graph-unenroll.md)]
