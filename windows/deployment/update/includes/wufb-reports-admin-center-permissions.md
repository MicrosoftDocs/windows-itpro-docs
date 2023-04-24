---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 03/15/2023
ms.localizationpriority: medium
---
<!--This file is shared by updates/wufb-reports-enable.md and the update/wufb-reports-admin-center.md articles. Headings may be driven by article context.  -->

To enroll into Windows Update for Business reports, edit configuration settings, display and edit the workbook, and view the **Windows** tab in the **Software Updates** page from the [Microsoft 365 admin center](https://admin.microsoft.com) use one of the following roles:

- [Global Administrator role](/azure/active-directory/roles/permissions-reference#global-administrator)
- [Intune Administrator](/azure/active-directory/roles/permissions-reference#intune-administrator)
- [Windows Update deployment administrator](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator)
   - This role allows enrollment through the [workbook](../wufb-reports-enable.md#bkmk_enroll-workbook) but doesn't allow any access to the Microsoft 365 admin center
- [Policy and profile manager](/mem/intune/fundamentals/role-based-access-control#built-in-roles) Intune role
   - This role allows enrollment through the [workbook](../wufb-reports-enable.md#bkmk_enroll-workbook) but doesn't allow any access to the Microsoft 365 admin center

To display the workbook and view the **Windows** tab in the **Software Updates** page [Microsoft 365 admin center](https://admin.microsoft.com) use the following role:
  - [Global Reader role](/azure/active-directory/roles/permissions-reference#global-reader)

**Log Analytics permissions**:

The data for Windows Update for Business reports is routed to a Log Analytics workspace for querying and analysis. To display or query data, users must have one of the following roles, or the equivalent permissions:
- [Log Analytics Contributor](/azure/role-based-access-control/built-in-roles#log-analytics-contributor) role can be used to edit and write queries
- [Log Analytics Reader](/azure/role-based-access-control/built-in-roles#log-analytics-reader) role can be used to read data
