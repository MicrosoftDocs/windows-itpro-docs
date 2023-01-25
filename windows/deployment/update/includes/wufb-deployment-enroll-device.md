---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 02/14/2023
ms.localizationpriority: medium
---
<!--This file is shared by deployment-service-drivers.md, deployment-service-expedited-updates.md, and the deployment-service-feature-updates.md articles. Headings may be driven by article context. 7512398 -->

You enroll devices based on the types of updates you want them to recieve.Currently, you can enroll devices to receive feature updates (`feature`) or drivers (`drivers`). You can enroll devices to receive updates from multiple update classifications.

- As long as a device remains enrolled in feature update management, the device doesn't receive any other feature updates from Windows Update unless explicitly deployed using the deployment service.
- When you enroll devices into driver management, the deployment service becomes the authority for driver updates coming from Windows Update. Devices don't receive drivers from Windows Update until a deployment is manually created or they're added to a driver update policy with approvals.


```rest

POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/enrollAssets
Content-Type: application/json
{
  "updateCategory": "driver",
  "assets": [
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
