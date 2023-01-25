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

For this tutorial, you'll use Graph Explorer to make requests to the [Microsoft Graph APIs](/graph/api/resources/windowsupdates-updates?view=graph-rest-beta&preserve-view=true) to retrieve, add, delete, and update data. For more information about using Graph Explorer, see [Get started with Graph Explorer](/graph/graph-explorer/overview).

> [!WARNING]
> Using a test tenant for tutorials is recommended. If you use a production tenant, ensure you verify which client devices you're targeting with deployments.

1. From a browser, go to [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) and sign in using an Azure Active Directory (Azure AD) user account.
1. You may need to enable the [`WindowsUpdates.ReadWrite.All` permission](/graph/permissions-reference#windows-updates-permissions) to use the queries in this tutorial. To enable the permission:
    1. Select the **Modify permissions** tab in Graph Explorer.
    1. In the permissions dialog box, select the **WindowsUpdates.ReadWrite.All** permission then select **Consent**. You may need to sign in again to grant consent.
    
       :::image type="content" source="../media/7512398-wufbds-graph-modify-permission.png" alt-text="Screenshot of the modify permissions tab in Graph Explorer":::

1. To make requests:
   1. Select either GET, POST, PUT, PATCH, or DELETE from the drop-down list for the HTTP verb.
   1. Enter the request into the URL field.
   1. If you need to modify the request body, edit the **Request body** tab.
   1. Select the **Run query** button. The results will appear in the **Response** window.
