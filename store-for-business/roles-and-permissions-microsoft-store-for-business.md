---
title: Roles and permissions in Microsoft Store for Business and Microsoft Store for Education (Windows 10)
description: The first person to sign in to Microsoft Store for Business or Microsoft Store for Education must be a Global Admin of the Azure Active Directory (AD) tenant. Once the Global Admin has signed in, they can give permissions to others employees.
keywords: roles, permissions
ms.assetid: CB6281E1-37B1-4B8B-991D-BC5ED361F1EE
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

# Roles and permissions in Microsoft Store for Business and Microsoft Store for Education
The first person to sign in to a Microsoft Store for Business or Microsoft Store for Education tenant must be a Global Admin of the Azure Active Directory (AD) tenant that is being used to manage the work or school identities of the organization. Once the Global Admin has signed in, they can give permissions to others who will have a role in managing the Microsoft Store for Business or Microsoft Store for Education tenant that is being configured.

Microsoft Store for Business and Microsoft Store for Education service tenants present a set of user roles that help admins and employees manage access to apps and tasks managed by the service. Employees with these roles will need to use their Azure AD account to access their organization's Microsoft Store for Business or Microsoft Store for Education tenant. Global Administrators and global user accounts that are used with other Microsoft services, such as Microsoft Azure or Office 365, can sign in to that organization's Microsoft Store for Business or Microsoft Store for Education tenant. Global user accounts have some permissions in Microsoft Store for Business or Microsoft Store for Education tenants, and the service presents a set of service specific roles that help IT admins and employees manage access to apps and tasks for an organization's own service tenant.


## Global user account permissions

IT Pros with Global Administrator permissions have full access to manage the Microsoft Store for Business or Microsoft Store for Education tenant. The user who signs up for a Microsoft Store for Business or Microsoft Store for Education tenant is granted this Global Admin role. They can do everything allowed by the other roles, and would assign permissions to other employees as a part of the tenant set-up process.


## Billing account roles and permissions

There are a set of roles, referred to as "Billing Account" roles, that are assigned to admins and employees who will use the Microsoft Store for Business or Microsoft Store for Education tenant to buy and manage Microsoft Store apps, and/or administer account details and billing information, for an organization. Employees with these roles will need to use their Azure AD account to access the tenant.

This table lists the roles and their permissions.

|      Role               |  Buy from<br /> Microsoft Store | Assign<br />permissions | Edit<br /> account | Sign<br /> agreements | View<br />account |
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
There are also a set of roles, referred to as "Purchasing roles", that can be assigned to users to allow them to use the service to buy and manage apps for the organization at large, or for themselves. 

This table lists the roles and their permissions.

|      Role   |  Buy from<br /> Microsoft Store | Manage all items | Manage items<br /> I buy |
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
