---
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.service: windows-client
ms.subservice: autopatch
ms.topic: include
ms.date: 09/16/2024
ms.localizationpriority: medium
---
<!--This file is shared by deployment-service-drivers.md and the deployment-service-feature-updates.md articles. Headings may be driven by article context. 7512398 -->
A deployment audience is a collection of devices that you want to deploy updates to. The audience needs to be created first, then members are added to the audience. Use the following steps to create a deployment audience, add members, and verify it:

1. To create a new audience, **POST** to the [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience) resource with a request body of `{}`.

   ```msgraph-interactive
   POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences 
   content-type: application/json  

   {}
   ```

   The POST returns an HTTP status code of `201 Created` as a response with the following body, where `id` is the **Audience ID**:

   ```json
   {
       "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deploymentAudiences/$entity",
       "id": "d39ad1ce-0123-4567-89ab-cdef01234567",
       "reportingDeviceCount": 0,
       "applicableContent": []
   }
   ```


1. Add devices, using their **Microsoft Entra ID**, to the deployment audience so they become audience members. Specify the deployment **Audience ID** in the URL field and the devices to add in the request body. The `id` property specifies the **Microsoft Entra ID** of the device.

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

1. To verify the devices were added to the audience, run the following query using the **Audience ID** of `d39ad1ce-0123-4567-89ab-cdef01234567`:

   ```msgraph-interactive
   GET https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/d39ad1ce-0123-4567-89ab-cdef01234567/members
   ```
