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
<!--This file is shared by deployment-service-drivers.md, deployment-service-expedited-updates.md, and the deployment-service-feature-updates.md articles. Headings may be driven by article context. 7512398 -->

Use the [device](/graph/api/resources/device) resource type to find clients to enroll into Windows Autopatch. Change the query parameters to fit your specific needs. For more information, see [Use query parameters](/graph/query-parameters).

- Displays the **AzureAD Device ID** and **Name** of all devices:

   ```msgraph-interactive
  GET https://graph.microsoft.com/v1.0/devices?$select=deviceid,displayName
   ```

- Displays the **AzureAD Device ID** and **Name** for devices that have a name starting with `Test`:

   ```msgraph-interactive
  GET https://graph.microsoft.com/v1.0/devices?$filter=startswith(displayName,'Test')&$select=deviceid,displayName
   ```


### Add a request header for advanced queries

For the next requests, set the **ConsistencyLevel** header to `eventual`. For more information about advanced query parameters, see [Advanced query capabilities on Microsoft Entra directory objects](/graph/aad-advanced-queries).

1. In Graph Explorer, select the **Request headers** tab.
1. For **Key** type in `ConsistencyLevel` and for **Value**, type `eventual`.
1. Select the **Add** button. When you're finished, remove the request header by selecting the trash can icon.

    :::image type="content" source="../media/7512398-deployment-service-graph-modify-header.png" alt-text="Screenshot of the request headers tab in Graph Explorer" lightbox="../media/7512398-deployment-service-graph-modify-header.png":::

- Display the **Name** and **Operating system version** for the device that has `01234567-89ab-cdef-0123-456789abcdef` as the **AzureAD Device ID**:

   ```msgraph-interactive
   GET https://graph.microsoft.com/v1.0/devices?$search="deviceid:01234567-89ab-cdef-0123-456789abcdef"&$select=displayName,operatingSystemVersion
   ```

- To find devices that likely aren't virtual machines, filter for devices that don't have virtual machine listed as the model but do have a manufacturer listed. Display the **AzureAD Device ID**, **Name**, and **Operating system version** for each device:

   ```msgraph-interactive
   GET https://graph.microsoft.com/v1.0/devices?$filter=model ne 'virtual machine' and NOT(manufacturer eq null)&$count=true&$select=deviceid,displayName,operatingSystemVersion
   ```

> [!Tip]
> Requests using the [device](/graph/api/resources/device) resource type typically have both an `id` and a `deviceid`:
> - The `deviceid` is the **Microsoft Entra Device ID** and will be used in this article.
>    - Later in this article, this `deviceid` will be used as an `id` when you make certain requests such as adding a device to a deployment audience.
> - The `id` from the [device](/graph/api/resources/device) resource type is usually the Microsoft Entra Object ID, which won't be used in this article.
