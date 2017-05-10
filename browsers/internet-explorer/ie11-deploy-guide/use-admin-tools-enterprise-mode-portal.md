---
localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Use the topics in this section to learn how to use the Administrator tools with the Enterprise Mode Site List Portal.
author: eross-msft
ms.prod: ie11
title: Use the Administrator tools with the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
---

# Use the Administrator tools with the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Use the topics in this section to learn how to perform the available Enterprise Mode Site List Portal processes, based on workflow.

## In this section
|Topic                                                          |Description                                                                        |
|---------------------------------------------------------------|-----------------------------------------------------------------------------------|
|[Add employees to the Enterprise Mode Site List Portal](add-employees-enterprise-mode-portal.md)|Details about how the Administrator can add employees to the Enterprise Mode Site List Portal.|
|[Use the Settings page to set up the Enterprise Mode Site List Portal](configure-settings-enterprise-mode-portal.md)|Details about how the Administrator can use the **Settings** page to set up Groups and roles, the Enterprise Mode Site List Portal environment, and the freeze dates for production changes. |

## Related topics
- [Set up the Enterprise Mode Site List Portal](set-up-enterprise-mode-portal.md)

- [Workflow-based processes for employees using the Enterprise Mode Site List Portal](workflow-processes-enterprise-mode-portal.md)

- [Enterprise Mode Site List Portal source code](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal)

- [Enterprise Mode and the Enterprise Mode Site List](what-is-enterprise-mode.md)


Grant access to the portal
When a request to gain access to the portal is submitted, an e-mail will be sent to the administrators.
In the Employee management page, select the individual employee and click Edit.
Approve the request by checking Active, then click Save.
An administrator can also add the employee to the portal by clicking Add a new employee .
An administrator can deactivate an account by un-checking Active on the Edit employee page.
Configure the settings
Navigate to the Settings page.
The employee can update the pre-production and production XMLs, as well as the attachments location, by providing the appropriate credentials to access the file paths.
The freeze dates define a window of time in which no changes can be made to the production site list.
A new group can be created by clicking Group details and filling out the fields in the Add group tab. An existing group can be edited by filling out the fields in the Edit group tab on that same screen.
The role names for App Manager and Group Head can be renamed by clicking the edit icon next to their name. You can also toggle whether that role is required for approvals on that same screen by checking/un-checking Mandatory.
Enterprise Mode Site List Manager
This page provides the same functionality you would receive from the Enterprise Mode Site List Manager tool. With it, you can perform the following operations.
Add a site to the site list
Convert the v.1 schema to the v.2 schema, and vice versa
Bulk add sites from an existing XML file
Merge multiple XML files and save as one XML file
Export the site list
Import the site list
Bulk add the sites to the portal production list
