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
<!--This file is shared by updates/wufb-reports-enable.md and the update/wufb-reports-admin-center.md articles. Headings may be driven by article context.  -->

To enroll into Windows Update for Business reports, edit configuration settings, display and edit the workbook, and view the **Windows** tab in the **Software Updates** page from the [Microsoft 365 admin center](https://admin.microsoft.com) use one of the following roles:

- [Global Administrator role](/azure/active-directory/roles/permissions-reference#global-administrator)
- [Intune Administrator](/azure/active-directory/roles/permissions-reference#intune-administrator)
- [Windows Update deployment administrator](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator)
   - This role allows enrollment through the [workbook](../wufb-reports-enable.md#bkmk_enroll-workbook) but not the Microsoft 365 admin center

To display the workbook and view the **Windows** tab in the **Software Updates** page [Microsoft 365 admin center](https://admin.microsoft.com) use the following role:
  - [Global Reader role](/azure/active-directory/roles/permissions-reference#global-reader)
  - [Policy and Profile Manager](/mem/intune/fundamentals/role-based-access-control#built-in-roles)
  - Windows Update Deployment Administrator
    
    We recommend using the Intune Policy and Profile Manager or Windows Update Deployment Administrator roles to access the Windows Update for Business reports because they are much more scoped than the Global Reader role.
