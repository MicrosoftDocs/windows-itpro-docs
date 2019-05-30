---
ms.localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how to add employees to the Enterprise Mode Site List Portal.
author: eavena
ms.prod: ie11
title: Add employees to the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---

# Add employees to the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

After you get the Enterprise Mode Site List Portal up and running, you must add your employees. During this process, you'll also assign roles and groups.

The available roles are:

- **Requester.** The primary role to assign to employees that need to access the Enterprise Mode Site List Portal. The Requester can create change requests, validate changes in the pre-production environment, rollback pre-production and production changes in case of failure, send personal approval requests, view personal change requests, and sign off and close personal change requests.

- **App Manager.** This role is considered part of the Approvers group. The App Manager can approve change requests, validate changes in the pre-production environment, rollback pre-production and production changes in case of failure, send personal approval requests, view personal requests, and sign off and close personal requests.

- **Group Head.** This role is considered part of the Approvers group. The Group Head can approve change requests, validate changes in the pre-production environment, rollback pre-production and production changes in case of failure, send personal approval requests, view personal requests, and sign off and close personal requests.

- **Administrator.** The role with the highest-level rights; we recommend limiting the number of employees you grant this role. The Administrator can perform any task that can be performed by the other roles, in addition to adding employees to the portal, assigning employee roles, approving registrations to the portal, configuring portal settings (for example, determining the freeze schedule, determining the pre-production and production XML paths, and determining the attachment upload location), and using the standalone Enterprise Mode Site List Manager page.

**To add an employee to the Enterprise Mode Site List Portal**
1. Open the Enterprise Mode Site List Portal and click the **Employee Management** icon in the upper-right area of the page.

   The **Employee management** page appears.

2.  Click **Add a new employee**.

    The **Add a new employee** page appears.

3. Fill out the fields for each employee, including:

   - **Email.** Add the employee's email address.
   
   - **Name.** This box autofills based on the email address.
   
   - **Role.** Pick a single role for the employee, based on the list above.
   
   - **Group name.** Pick the name of the employee's group. The group association also assigns a group of Approvers.
   
   - **Comments.** Add optional comments about the employee.
   
   - **Active.** Click the check box to make the employee active in the system. If you want to keep the employee in the system, but you want to prevent access, clear this check box.

4. Click **Save**.

**To export all employees to an Excel spreadsheet**
1. On the **Employee management** page, click **Export to Excel**.

2. Save the EnterpriseModeUsersList.xlsx file.

   The Excel file includes all employees with access to the Enterprise Mode Site List Portal, including user name, email address, role, and group name.
