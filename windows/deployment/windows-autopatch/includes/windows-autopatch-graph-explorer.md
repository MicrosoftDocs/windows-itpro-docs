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
<!--This file is shared by windows-autopatch-driver-and-firmware-programmatic-controls.md, windows-autopatch-windows-quality-update-programmatic-controls.md, and the windows-autopatch-windows-feature-update-programmatic-controls.md articles. Headings may be driven by article context. 7512398 -->

For this article, you'll use Graph Explorer to make requests to the [Microsoft Graph APIs](/graph/api/resources/adminwindowsupdates) to retrieve, add, delete, and update data. Graph Explorer is a developer tool that lets you learn about Microsoft Graph APIs. For more information about using Graph Explorer, see [Get started with Graph Explorer](/graph/graph-explorer/graph-explorer-overview).

> [!WARNING]
>
> - Requests listed in this article require signing in with a Microsoft 365 account. If needed, a free one month trial is available for [Microsoft 365 Business Premium](https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium).
> - Using a test tenant to learn and verify the deployment process is highly recommended. Graph Explorer is intended to be a learning tool. Ensure you understand  [granting consent](/graph/security-authorization) and the [consent type](/graph/api/resources/oauth2permissiongrant#properties) for Graph Explorer before proceeding.

1. From a browser, go to [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) and sign in using a Microsoft Entra user account.
1. You may need to enable the [`WindowsUpdates.ReadWrite.All` permission](/graph/permissions-reference#windows-updates-permissions) to use the queries in this article. To enable the permission:
    1. Select the **Modify permissions** tab in Graph Explorer.
    1. In the permissions dialog box, select the **WindowsUpdates.ReadWrite.All** permission then select **Consent**. You may need to sign in again to grant consent.
       :::image type="content" source="../media/7512398-graph-modify-permission.png" alt-text="Screenshot of the modify permissions tab in Graph Explorer" lightbox="../media/7512398-graph-modify-permission.png" :::

1. To make requests:
   1. Select either GET, POST, PUT, PATCH, or DELETE from the drop-down list for the HTTP method.
   1. Enter the request into the URL field. The version will populate automatically based on the URL.
   1. If you need to modify the request body, edit the **Request body** tab.
   1. Select the **Run query** button. The results will appear in the **Response** window.
  
   > [!TIP]
   > When reviewing [Microsoft Graph documentation](/graph/), you may notice example requests usually list `content-type: application/json`. Specifying `content-type` typically isn't required for Graph Explorer, but you can add it to the request by selecting the **Headers** tab and adding the `content-type` to the **Request headers** field as the **Key** and `application/json` as the **Value**.
