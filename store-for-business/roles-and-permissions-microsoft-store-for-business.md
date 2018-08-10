---
title: Roles and permissions in Microsoft Store for Business and Education (Windows 10)
description: The first person to sign in to Microsoft Store for Business or Microsoft Store for Education must be a Global Admin of the Azure Active Directory (AD) tenant. Once the Global Admin has signed in, they can give permissions to others employees.
ms.assetid: CB6281E1-37B1-4B8B-991D-BC5ED361F1EE
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
ms.author: TrudyHa
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 8/7/2018
---

# Roles and permissions in Microsoft Store for Business and Education


**Applies to**

-   Windows 10
-   Windows 10 Mobile

The first person to sign in to Microsoft Store for Business or Microsoft Store for Education must be a Global Admin of the Azure Active Directory (AD) tenant. Once the Global Admin has signed in, they can give permissions to others employees.

Microsoft Store for Business and Education has a set of roles that help admins and employees manage access to apps and tasks for Microsoft Store. Employees with these roles will need to use their Azure AD account to access the Store. Global Administrators and global user accounts that are used with other Microsoft services, such as Azure, or Office 365 can sign in to Microsoft Store. Global user accounts have some permissions in Microsoft Store, and Microsoft Store has a set of roles that help IT admins and employees manage access to apps and tasks for Microsoft Store.

## Global user account permissions in Microsoft Store

This table lists the global user accounts and the permissions they have in Microsoft Store.

|                                |  Global Administrator | Billing Administrator |
| ------------------------------ | --------------------- | --------------------- |
| Sign up for Microsoft Store for Business and Education |  X                    |
| Modify company profile settings | X                    |                       |
| Acquire apps                   |  X                    | X                     |
| Distribute apps                |  X                    | X                     |
| Purchase subscription-based software  |  X             | X                     |
 

-   **Global Administrator** - IT Pros with this account have full access to Microsoft Store. They can do everything allowed in the Microsoft Store Admin role, plus they can sign up for Microsoft Store.

-   **Billing Administrator** - IT Pros with this account have the same permissions as Microsoft Store Purchaser role.

## Microsoft Store roles and permissions

Microsoft Store for Business has a set of roles that help IT admins and employees manage access to apps and tasks for Microsoft Store. Employees with these roles will need to use their Azure AD account to access Microsoft Store.

This table lists the roles and their permissions.

|                                |  Admin | Purchaser | Device Guard signer |
| ------------------------------ | ------ | --------  | ------------------- |
| Assign roles                   | X      |           |                     |
| Manage Microsoft Store for Business and Education settings |  X |           |                     |
| Acquire apps                   | X      | X         |                     |
| Distribute apps                | X      | X         |                     |
| Sign policies and catalogs     | X      |           |                     |
| Sign Device Guard changes      | X      |           |  X                   |


These permissions allow people to:

-   **Manage Microsoft Store settings**:

    -   Account information (view only)
    -   Device Guard signing
    -   LOB publishers
    -   Management tools
    -   Offline licensing
    -   Permissions
    -   Private store

-   **Acquire apps** - Acquire apps from Microsoft Store and add them to your inventory.

-   **Distribute apps** - Distribute apps that are in your inventory. 
    - Admins can assign apps to people, add apps to the private store, or use a management tool.
    - Purchasers can assign apps to people. 

**To assign roles to people**

1.  Sign in to Microsoft Store for Business or Microsoft Store for Education.

    >[!Note]
    >You need to be a Global Administrator, or have the Microsoft Store Admin role to access the **Permissions** page. 
    
    To assign roles, you need to be a Global Administrator or a Store Administrator.

2.  Click **Settings**, and then choose **Permissions**.

    OR
    
    Click **Manage**, and then click **Permissions** on the left-hand menu.

    <!--- ![Image showing Permissions page in Microsoft Store for Business.](images/wsfb-settings-permissions.png) -->

3.  Click **Add people**, type a name, choose the role you want to assign, and click **Save** .

    <!--- ![Image showing Assign roles to people box in Microsoft Store for Business.](images/wsfb-permissions-assignrole.png) -->

4.  If you don't find the name you want, you might need to add people to your Azure AD directory. For more information, see [Manage user accounts in Microsoft Store for Business and Education](manage-users-and-groups-microsoft-store-for-business.md).

