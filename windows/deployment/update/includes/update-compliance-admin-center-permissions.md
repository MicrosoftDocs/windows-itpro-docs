---
author: mestew
ms.author: mstewart
manager: dougeby
ms.prod: w10
ms.collection: M365-modern-desktop
ms.topic: include
ms.date: 08/18/2022
ms.localizationpriority: medium
---
<!--This file is shared by updates/update-compliance-v2-enable.md and the update/update-status-admin-center.md articles. Headings may be driven by article context.  -->
[Enabling Update Compliance](../update-compliance-v2-enable.md) requires access to the [Microsoft admin center software updates (preview) page](../update-status-admin-center.md) as does displaying Update Compliance data in the admin center. The following permissions are needed for access to the [Microsoft 365 admin center](https://admin.microsoft.com):


- To enable Update Compliance, edit Update Compliance configuration settings, and view the **Windows** tab in the **Software Updates** page: 
  - [Global Administrator role](/azure/active-directory/roles/permissions-reference#global-administrator)
  - [Intune Administrator](/azure/active-directory/roles/permissions-reference#intune-administrator)
- To view the **Windows** tab in the **Software Updates** page:
  - [Global Reader role](/azure/active-directory/roles/permissions-reference#global-reader)

> [!NOTE]
> These permissions for the Microsoft 365 admin center apply specifically to the **Windows** tab of the **Software Updates** page. For more information about the **Microsoft 365 Apps** tab, see [Microsoft 365 Apps updates in the admin center](/DeployOffice/updates/software-update-status).
