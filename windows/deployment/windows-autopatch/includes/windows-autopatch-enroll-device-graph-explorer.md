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

You enroll devices based on the types of updates you want them to receive. Currently, you can enroll devices to receive feature updates (`feature`) or drivers (`driver`). You can enroll devices to receive updates from multiple update classifications.

1. To enroll devices, POST to [updatableAssets](/graph/api/resources/windowsupdates-updatableasset) using [enrollAssets](/graph/api/windowsupdates-updatableasset-enrollassets). The following example enrolls three devices to receive driver updates:
   1. In Graph Explorer, select **POST** from the drop-down list for the HTTP verb.
   1. Enter the following request into the URL field: </br>
    `https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/enrollAssets`
   1. In the **Request body** tab, enter the following JSON, supplying the following information:
      - **Microsoft Entra Device ID** as `id`
      - Either `feature` or `driver` for the updateCategory

      ```json
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

   1. Select the **Run query** button. The results will appear in the **Response** window. In this case, the HTTP status code of `202 Accepted`.

       :::image type="content" source="../media/7512398-deployment-enroll-asset-graph.png" alt-text="Screenshot of successfully enrolling assets through Graph Explorer." lightbox="../media/7512398-deployment-enroll-asset-graph.png" :::
