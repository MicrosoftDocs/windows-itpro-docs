---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Details about how the Administrator can use the Settings page to set up Groups and roles, the Enterprise Mode Site List Portal environment, and the freeze dates for production changes.
author: lomayor
ms.prod: ie11
title: Use the Settings page to finish setting up the Enterprise Mode Site List Portal (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
ms.reviewer: 
manager: dansimp
ms.author: lomayor
---

# Use the Settings page to finish setting up the Enterprise Mode Site List Portal

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

The **Settings** page lets anyone with Administrator rights set up groups and roles, set up the Enterprise Mode Site List Portal environment, and choose the freeze dates for production changes.

## Use the Environment settings area
This area lets you specify the location of your production and pre-production environments, where to store your attachments, your settings location, and the website domain for email notifications.

**To add location info**
1. Open the Enterprise Mode Site List Portal and click the **Settings** icon in the upper-right area of the page.

   The **Settings** page appears.

2. In the **Environment settings** area of the page, provide the info for your **Pre-production environment**, your **Production environment**, your **Attachments location**, your **Settings location**, and your **Website domain for email notifications**.

3. Click **Credentials** to add the appropriate domain, user name, and password for each location, and then click **OK**.

## Use the Group and role settings area
After you set up your email credentials, you'll be able to add or edit your Group info, along with picking which roles must be Approvers for the group.

**To add a new group and determine the required change request Approvers**
1. Open the Enterprise Mode Site List Portal and click the **Settings** icon in the upper-right area of the page.

   The **Settings** page appears.

2. In the **Group and role settings** area of the page, click **Group details**.

    The **Add or edit group names** box appears.

3. Click the **Add group** tab, and then add the following info:

    - **New group name.** Type name of your new group.
    
    - **Group head email.** Type the email address for the primary contact for the group.

    - **Group head name.** This box automatically fills, based on the email address.

    - **Active.** Click the check box to make the group active in the system. If you want to keep the group in the system, but you want to prevent access, clear this check box.

4. Click **Save**.


**To set a group's required Approvers**
1. In the **Group and role settings** area of the page, choose the group name you want to update with Approvers from the **Group name** box.

2. In the **Required approvers** area, choose which roles are required to approve a change request for the group. You can choose one or many roles.

    - **App Manager.** All employees in the selected group must get change request approval by someone assigned this role. 

        You can change the name of this role by clicking the pencil icon and providing a new name in the **Edit role name** box.

    - **Group Head.** All employees in the selected group must get change request approval by someone assigned this role.

        You can change the name of this role by clicking the pencil icon and providing a new name in the **Edit role name** box.

    - **Administrator.** All employees in the selected group must get change request approval by someone assigned this role.

## Use the Freeze production changes area
This optional area lets you specify a period when your employees must stop adding changes to the current Enterprise Mode Site List. This must include both a start and an end date.

**To add the start and end dates**
1. Open the Enterprise Mode Site List Portal and click the **Settings** icon in the upper-right area of the page.

   The **Settings** page appears.

2. In the **Freeze production changes** area of the page, use the calendars to provide the **Freeze start date** and the **Freeze end date**. Your employees can't add apps to the production Enterprise Mode Site List during this span of time.

3. Click **Save**.

## Related topics
- [Enterprise Mode Site List Portal source code](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal)

- [Enterprise Mode and the Enterprise Mode Site List](what-is-enterprise-mode.md)

- [Use the Enterprise Mode Site List Manager tool or page](use-the-enterprise-mode-site-list-manager.md) 
