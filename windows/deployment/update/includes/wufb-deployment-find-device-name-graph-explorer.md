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

You will need at least [Device.Read.All](/graph/permissions-reference#device-permissions) permission to display [device](/graph/api/resources/device) information.

> [!Tip]
> Requests using the [device](/graph/api/resources/device) resource type typically have both an `id` and a `deviceid`:
> - The `deviceid` is the **Azure AD Device ID** and will be used in this tutorial.
>    - Later in this tutorial, this `deviceid` will be used as an `id` when you make certain requests such as adding a device to a deployment audience.
> - The `id` from the [device](/graph/api/resources/device) resource type is usually the Azure AD Object ID and it won't be used in this tutorial.

Displays the **AzureAD Device ID** and **Name** of all devices:

```rest
GET https://graph.microsoft.com/v1.0/devices?$select=deviceid,displayName
```

Displays the **AzureAD Device ID** and **Name** for device names that starts with `Test`:

```rest
GET https://graph.microsoft.com/v1.0/devices?$filter=startswith(displayName,'Test')&$select=deviceid,displayName
```

### Add a request header

For the next requests, set the **ConsistencyLevel** header to `eventual`. For more information about advanced query parameters, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

1. In Graph Explorer, select the **Request headers** tab.
1. For **Key** type in `ConsistencyLevel` and for **Value**, type `eventual`. 
1. Select the **Add** button. When you're finished, remove the request header by selecting the trash can icon.

    :::image type="content" source="../media/7512398-deployment-service-graph-modify-header.png" alt-text="Screenshot of the request headers tab in Graph Explorer" lightbox="../media/7512398-deployment-service-graph-modify-header.png":::

Displays the **Name** and **Operating system version** for the device that has the **AzureAD Device ID** of `01234567-89ab-cdef-0123-456789abcdef`:

```rest
GET https://graph.microsoft.com/v1.0/devices?$search="deviceid:01234567-89ab-cdef-0123-456789abcdef"?$select=displayName,operatingSystemVersion
```

Find devices that don't have virtual machine listed as the model and that have a manufacturer listed. Display the **AzureAD Device ID**, **Name**, and **Operating system version** for each device:

```rest
GET https://graph.microsoft.com/v1.0/devices?$filter=model ne 'virtual machine' and NOT(manufacturer eq null)&$count=true&$select=deviceid,displayName,operatingSystemVersion
```

