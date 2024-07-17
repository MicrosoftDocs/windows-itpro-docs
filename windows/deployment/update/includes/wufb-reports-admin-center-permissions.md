---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.subservice: itpro-updates
ms.service: windows-client
ms.topic: include
ms.date: 04/26/2023
ms.localizationpriority: medium
---
<!--This file is shared by updates/wufb-reports-enable.md and the update/wufb-reports-admin-center.md articles. Headings may be driven by article context.  -->
Accessing Windows Update for Business reports typcially requires permissions from multiple sources including:

- [Microsoft Entra ID](/azure/active-directory/roles/custom-overview) or [Intune](/mem/intune/fundamentals/role-based-access-control): Used for managing Windows Update for Business services through Microsoft Graph API, such as enrolling into reports
- [Azure](/azure/role-based-access-control/overview): Used for controlling access to Azure resources through Azure Resource Management, such as access to the Log Analytics workspace
- [Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles): Manages access to the Microsoft 365 admin center, which allows only users with certain Microsoft Entra roles access to sign in

**Roles that can enroll into Windows Update for Business reports**

To [enroll](../wufb-reports-enable.md#bkmk_enroll) into Windows Update for Business reports from the [Azure portal](https://portal.azure.com) or the [Microsoft 365 admin center](https://admin.microsoft.com) requires one of the following roles:

- [Intune Administrator](/azure/active-directory/roles/permissions-reference#intune-administrator) Microsoft Entra role
- [Windows Update deployment administrator](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator) Microsoft Entra role
- [Policy and profile manager](/mem/intune/fundamentals/role-based-access-control#built-in-roles) Microsoft Intune role
  - Microsoft Intune RBAC roles don't allow access to the Microsoft 365 admin center

**Azure roles that allow access to the Log Analytics workspace**

The data for Windows Update for Business reports is routed to a Log Analytics workspace for querying and analysis. To display or query any of Windows Update for Business reports data, users must have the following roles, or the equivalent permissions for the workspace:

- [Log Analytics Reader](/azure/role-based-access-control/built-in-roles#log-analytics-reader) role can be used to read data
- [Log Analytics Contributor](/azure/role-based-access-control/built-in-roles#log-analytics-contributor) role can be used if creating a new workspace or write access is needed

Examples of commonly assigned roles for Windows Update for Business reports users:

| Roles | Enroll though the workbook | Enroll through Microsoft 365 admin center | Display the workbook | Microsoft 365 admin center access | Create Log Analytics workspace |
| --- | --- | --- | --- | --- | --- |
| Intune Administrator + Log Analytics Contributor | Yes | Yes | Yes | Yes | Yes |
| Windows Update deployment administrator + Log Analytics reader | Yes | Yes | Yes | Yes| No |
| Policy and profile manager (Intune role)+ Log Analytics reader | Yes | No | Yes | No | No |
| Log Analytics reader | No | No | Yes | No | No|
| [Global reader](/azure/active-directory/roles/permissions-reference#global-reader) + Log Analytics reader | No | No | Yes | Yes | No |  

> [!NOTE]
> The Microsoft Entra roles discussed in this article for the Microsoft 365 admin center access apply specifically to the **Windows** tab of the **Software Updates** page. For more information about the **Microsoft 365 Apps** tab, see [Microsoft 365 Apps updates in the admin center](/DeployOffice/updates/software-update-status).
