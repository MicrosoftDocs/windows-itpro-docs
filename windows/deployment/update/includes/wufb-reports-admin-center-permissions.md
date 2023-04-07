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
Accessing Windows Update for Business reports typcially requires permissions from multiple sources. 

- [Azure Active Directory (Azure AD)](/azure/active-directory/roles/custom-overview) or [Intune](/mem/intune/fundamentals/role-based-access-control): Used for managing Windows Update for Business services through Microsoft Graph API, such as enrolling into reports
- [Azure](/azure/role-based-access-control/overview): Used for controlling access to Azure resources through Azure Resource Management, such as access to the Log Analytics workspace
- [Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles): Manages access to the Microsoft 365 admin center, which allows only users with certain roles access to sign in

**Roles that allow enrollment into Windows Update for Business reports**

To enroll into Windows Update for Business reports from the [Azure portal](https://portal.azure.com) or the [Microsoft 365 admin center](https://admin.microsoft.com) requires one of the following roles:

- [Global Administrator](/azure/active-directory/roles/permissions-reference#global-administrator) Azure AD role
- [Intune Administrator](/azure/active-directory/roles/permissions-reference#intune-administrator) Azure AD role
- [Windows Update deployment administrator](/azure/active-directory/roles/permissions-reference#windows-update-deployment-administrator) Azure AD role
- [Policy and profile manager](/mem/intune/fundamentals/role-based-access-control#built-in-roles) Microsoft Intune role
  - Microsoft Intune RBAC roles don't allow access to the Microsoft 365 admin center

**Azure roles that allow access to the Log Analytics workspace Windows Update for Business reports data**

The data for Windows Update for Business reports is routed to a Log Analytics workspace for querying and analysis. To display or query any of Windows Update for Business reports data, users must have the following roles, or the equivalent permissions:

- [Log Analytics Reader](/azure/role-based-access-control/built-in-roles#log-analytics-reader) role can be used to read data
- [Log Analytics Contributor](/azure/role-based-access-control/built-in-roles#log-analytics-contributor) role can be used if creating a new workspace or write access is needed

Examples of commonly assigned roles for Windows Update for Business reports users:

| Roles | Enroll though workbook | Enroll through admin center | Read data workbook | Display admin center | Create Log Analytics workspace |
| --- | --- | --- | --- | --- | --- |
| Intune Administrator + Log Analytics Contributor | Yes | Yes | Yes | Yes | Yes |
| Windows Update deployment administrator + Log Analytics reader | Yes | Yes | Yes | Yes| No |
| Policy and profile manager + Log Analytics reader | Yes | No | Yes | No | No |
| Log Analytics reader | No | No | Yes | No | No|
| [Global reader](/azure/active-directory/roles/permissions-reference#global-reader) + Log Analytics reader | No | No | Yes | Yes | No |  
