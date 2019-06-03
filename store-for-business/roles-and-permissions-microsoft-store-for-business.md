---
title: Roles and permissions in Microsoft Store for Business and Education (Windows 10)
description: The first person to sign in to Microsoft Store for Business or Microsoft Store for Education must be a Global Admin of the Azure Active Directory (AD) tenant. Once the Global Admin has signed in, they can give permissions to others employees.
keywords: roles, permissions
ms.assetid: CB6281E1-37B1-4B8B-991D-BC5ED361F1EE
ms.reviewer: 
manager: dansimp
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
ms.author: TrudyHa
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 03/01/2019
---

# Roles and permissions in Microsoft Store for Business and Education
The first person to sign in to Microsoft Store for Business or Microsoft Store for Education must be a Global Admin of the Azure Active Directory (AD) tenant. Once the Global Admin has signed in, they can give permissions to others employees.

Microsoft Store for Business and Education has a set of roles that help admins and employees manage access to apps and tasks for Microsoft Store. Employees with these roles will need to use their Azure AD account to access the Store. Global Administrators and global user accounts that are used with other Microsoft services, such as Azure, or Office 365 can sign in to Microsoft Store. Global user accounts have some permissions in Microsoft Store, and Microsoft Store has a set of roles that help IT admins and employees manage access to apps and tasks for Microsoft Store.

## Global user account permissions in Microsoft Store

This table lists the global user accounts and the permissions they have in Microsoft Store.

|                                |  Global Administrator | Billing Administrator |
| ------------------------------ | --------------------- | --------------------- |
| Sign up for Microsoft Store for Business and Education |  X                    |
| Modify company profile settings | X                    |                       |
| Purchase apps                   |  X                    | X                     |
| Distribute apps                |  X                    | X                     |
| Purchase subscription-based software  |  X             | X                     |
 

**Global Administrator** - IT Pros with this account have full access to Microsoft Store. They can do everything allowed in the Microsoft Store Admin role, plus they can sign up for Microsoft Store.

**Billing Administrator** - IT Pros with this account have the same permissions as Microsoft Store Purchaser role.

## Billing account roles and permissions
There are a set of roles, managed at your billing account level, that help IT admins and employees manage access to and tasks for Microsoft Store. Employees with these roles will need to use their Azure AD account to access Microsoft Store for Business.

This table lists the roles and their permissions.

|      Role               |  Buy from<br /><br /> Microsoft Store | Assign<br /><br /> roles | Edit<br /><br /> account | Sign<br /><br /> agreements | View<br /><br /> account |
| ------------------------| ------ | --------  | ------ | -------| -------- |
| Billing account owner   | X      |   X       | X      | X      | X        |
| Billing account contributor |       |          | X      | X      | X    |
| Billing account reader  |       |          |       |       | X        |
| Signatory              |       |         |      | X      | X        |

<!---
These permissions allow people to:
-   **Edit account**:
    -   Account information (view only)
    -   LOB publishers
    -   Management tools
    -   Offline licensing
    -   Permissions
    -   Private store
-   **Acquire apps** - Acquire apps from Microsoft Store and add them to your inventory.
-   **Distribute apps** - Distribute apps that are in your inventory. 
    - Admins can assign apps to people, add apps to the private store, or use a management tool.
    - Purchasers can assign apps to people.
    --> 
## Purchasing roles and permissions
There are also a set of roles for purchasing and managing items bought. 

This table lists the roles and their permissions.

|      Role   |  Buy from<br /><br /> Microsoft Store | Manage all items | Manage items<br /><br /> I buy |
| ------------| ------ | --------  | ------ |
| Purchaser   | X      |   X       |      |
| Basic purchaser |  X     |          | X      |

## Assign roles
**To assign roles to people**

1.  Sign in to [Microsoft Store for Business](https://businessstore.microsoft.com).

    >[!Note]
    >You need to be a Global Administrator, or have the Billing account owner role to access **Permissions**. 
    
2.  Select **Manage**, and then select **Permissions**.
3.  On **Roles**, or **Purchasing roles**, select **Assign roles**. 
4.  Enter a name, choose the role you want to assign, and select **Save**.
    If you don't find the name you want, you might need to add people to your Azure AD directory. For more information, see [Manage user accounts](manage-users-and-groups-microsoft-store-for-business.md).
