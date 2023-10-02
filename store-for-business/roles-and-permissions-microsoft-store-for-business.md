---
title: Roles and permissions in Microsoft Store for Business and Education (Windows 10)
description: The first person to sign in to Microsoft Store for Business or Microsoft Store for Education must be a Global Admin of the Azure Active Directory (AD) tenant. Once the Global Admin has signed in, they can give permissions to others employees.
keywords: roles, permissions
ms.assetid: CB6281E1-37B1-4B8B-991D-BC5ED361F1EE
ms.reviewer: 
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 05/24/2023
---

# Roles and permissions in Microsoft Store for Business and Education

**Applies to:**

- Windows 10

> [!IMPORTANT]
>
> - The retirement of Microsoft Store for Business and Microsoft Store for Education has been postponed. We will update this notice when a new retirement date is announced. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Update to Intune integration with the Microsoft Store on Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/update-to-endpoint-manager-integration-with-the-microsoft-store/ba-p/3585077) and [FAQ: Supporting Microsoft Store experiences on managed devices](https://techcommunity.microsoft.com/t5/windows-management/faq-supporting-microsoft-store-experiences-on-managed-devices/m-p/3585286).
> - In April 2023 the Microsoft Store for Business tab was removed from Microsoft Store apps on Windows 10 and Windows 11 PCs. An interaction with existing MDM and GPO policies may lead to customers seeing errors when accessing the Microsoft Store app. For more information see [Microsoft Store for Business tab removed](manage-access-to-private-store.md#microsoft-store-for-business-tab-removed).

> [!NOTE]
> As of April 14th, 2021, only free apps are available in Microsoft Store for Business and Education. For more information, see [Microsoft Store for Business and Education](index.md).

The first person to sign in to Microsoft Store for Business or Microsoft Store for Education must be a Global Admin of the Azure Active Directory (AD) tenant. Once the Global Admin has signed in, they can give permissions to others employees.

Microsoft Store for Business and Education has a set of roles that help admins and employees manage access to apps and tasks for Microsoft Store. Employees with these roles will need to use their Azure AD account to access the Store. Global Administrators and global user accounts that are used with other Microsoft services, such as Azure, or Office 365 can sign in to Microsoft Store. Global user accounts have some permissions in Microsoft Store, and Microsoft Store has a set of roles that help IT admins and employees manage access to apps and tasks for Microsoft Store.

## Global user account permissions in Microsoft Store

This table lists the global user accounts and the permissions they have in Microsoft Store.

|| Global Administrator | Billing Administrator |
| ------------------------------ | --------------------- | --------------------- |
| **Sign up for Microsoft Store for Business and Education** |  ✔️       | ✔️             |
| **Modify company profile settings** | ✔️                    | ✔️                     |
| **Purchase apps**                  |  ✔️                    | ✔️                     |
| **Distribute apps**                |  ✔️                    | ✔️                     |
| **Purchase subscription-based software**  |  ✔️             | ✔️                     |

- **Global Administrator** and **Billing Administrator** - IT Pros with these accounts have full access to Microsoft Store. They can do everything allowed in the Microsoft Store Admin role, plus they can sign up for Microsoft Store.

## Microsoft Store roles and permissions

Microsoft Store for Business has a set of roles that help IT admins and employees manage access to apps and tasks for Microsoft Store. Employees with these roles will need to use their Azure AD account to access Microsoft Store.

This table lists the roles and their permissions.

|| Admin | Purchaser | Device Guard signer |
| ------------------------------ | ------ | --------  | ------------------- |
| **Assign roles**                   | ✔️      |           |                     |
| **Manage Microsoft Store for Business and Education settings** |  ✔️ |           |                     |
| **Acquire apps**                   | ✔️      | ✔️         |                     |
| **Distribute apps**                | ✔️      | ✔️         |                     |
| **Sign policies and catalogs**     | ✔️      |           |                     |
| **Sign Device Guard changes**      | ✔️      |           |  ✔️                   |

These permissions allow people to:

- **Manage Microsoft Store settings**:
    - Account information (view only)
    - Device Guard signing
    - LOB publishers
    - Management tools
    - Offline licensing
    - Permissions
    - Private store

- **Acquire apps** - Acquire apps from Microsoft Store and add them to your inventory.

- **Distribute apps** - Distribute apps that are in your inventory.
    - Admins can assign apps to people, add apps to the private store, or use a management tool.
    - Purchasers can assign apps to people.

**To assign roles to people**

1. Sign in to Microsoft Store for Business or Microsoft Store for Education.

    >[!Note]
    >You need to be a Global Administrator, or have the Microsoft Store Admin role to access the **Permissions** page.

    To assign roles, you need to be a Global Administrator or a Store Administrator.

2. Click **Settings**, and then choose **Permissions**.

    OR

    Click **Manage**, and then click **Permissions** on the left-hand menu.

    <!--- ![Image showing Permissions page in Microsoft Store for Business.](images/wsfb-settings-permissions.png) -->

3. Click **Add people**, type a name, choose the role you want to assign, and click **Save**.

    <!--- ![Image showing Assign roles to people box in Microsoft Store for Business.](images/wsfb-permissions-assignrole.png) -->

4. If you don't find the name you want, you might need to add people to your Azure AD directory. For more information, see [Manage user accounts in Microsoft Store for Business and Education](manage-users-and-groups-microsoft-store-for-business.md).