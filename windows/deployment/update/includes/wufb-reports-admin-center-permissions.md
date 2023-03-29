---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 03/29/2023
ms.localizationpriority: medium
---
<!--This file is shared by updates/wufb-reports-enable.md and the update/wufb-reports-admin-center.md articles. Headings may be driven by article context.  -->

**Roles for enrolling into Windows Update for Business reports**

To enroll into Windows Update for Business reports, edit configuration settings, display and edit the workbook, and view the **Windows** tab in the **Software Updates** page from the [Microsoft 365 admin center](https://admin.microsoft.com) use one of the following roles:

- [Global Administrator role](/azure/active-directory/roles/permissions-reference#global-administrator)
- [Intune Administrator](/azure/active-directory/roles/permissions-reference#intune-administrator)
- [Windows Update deployment administrator](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator)
- [Policy and profile manager](/mem/intune/fundamentals/role-based-access-control#built-in-roles) Intune role

**Roles for reading Windows Update for Business reports**:

The data for Windows Update for Business reports is routed to a Log Analytics workspace for querying and analysis. To display or query any of Windows Update for Business reports data, users must have the following roles, or the equivalent permissions:

- [Log Analytics Reader](/azure/role-based-access-control/built-in-roles#log-analytics-reader) role can be used to read data
- [Log Analytics Contributor](/azure/role-based-access-control/built-in-roles#log-analytics-contributor) role can be used if write access to the Log Analytics workspace is needed

> [!IMPORTANT]
> - At minimum, the Log Analytics Reader role (or equivalent permissions) need to be assigned to all of the above enrollment roles because they don't have the permissions by default.
> - Assigning either of the Log Analytics roles alone allows access to the [workbook](../wufb-reports-use.md), but doesn't allow access to the Microsoft 365 admin center.
