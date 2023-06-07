---
title: Distribute apps using your private store (Windows 10)
description: The private store is a feature in Microsoft Store for Business and Microsoft Store for Education that organizations receive during the signup process.
ms.assetid: C4644035-845C-4C84-87F0-D87EA8F5BA19
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

# Distribute apps using your private store

**Applies to:**

- Windows 10

> [!IMPORTANT]
>
> - The retirement of Microsoft Store for Business and Microsoft Store for Education has been postponed. We will update this notice when a new retirement date is announced. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Update to Intune integration with the Microsoft Store on Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/update-to-endpoint-manager-integration-with-the-microsoft-store/ba-p/3585077) and [FAQ: Supporting Microsoft Store experiences on managed devices](https://techcommunity.microsoft.com/t5/windows-management/faq-supporting-microsoft-store-experiences-on-managed-devices/m-p/3585286).
> - In April 2023 the Microsoft Store for Business tab was removed from Microsoft Store apps on Windows 10 and Windows 11 PCs. An interaction with existing MDM and GPO policies may lead to customers seeing errors when accessing the Microsoft Store app. For more information see [Microsoft Store for Business tab removed](manage-access-to-private-store.md#microsoft-store-for-business-tab-removed).

The private store is a feature in Microsoft Store for Business and Education that organizations receive during the signup process. When admins add apps to the private store, all employees in the organization can view and download the apps. Your private store is available as a tab in Microsoft Store app, and is usually named for your company or organization. Only apps with online licenses can be added to the private store.

You can make an app available in your private store when you acquire the app, or you can do it later from your inventory. Once the app is in your private store, employees can claim and install the app.

**To acquire an app and make it available in your private store**

1.  Sign in to [Microsoft Store for Business](https://businessstore.microsoft.com) or [Microsoft Store for Education](https://educationstore.microsoft.com).

2.  Click an app, choose the license type, and then click **Get the app** to acquire the app for your organization.

    <!--- ![Image showing Distribute options for app in the Microsoft Store for Business.](images/wsfb-distribute.png) -->

Microsoft Store adds the app to **Products and services**. Click **Manage**, **Apps & software** for app distribution options. 

**To make an app in Apps & software available in your private store**

1.  Sign in to [Microsoft Store for Business](https://businessstore.microsoft.com) or [Microsoft Store for Education](https://educationstore.microsoft.com).
2.  Click **Manage**, and then choose **Products and services**.

    <!--- ![Image showing Manage menu in Microsoft Store for Business.](images/wsfb-manageinventory.png) -->

3.  Click on the application to open the application settings, then select **Private store availability**.
4.  Select **Everyone** to make application available for all people in your organization.

    <!--- ![Image showing options from Action for each app in Inventory.](images/wsfb-inventoryaddprivatestore.png) -->

>[!Note]
 > If you are working with a new Line-of-Business (LOB) app, you have to wait for the app to be available in **Products & services** before adding it to your private store. For more information, see [Working with line-of-business apps](working-with-line-of-business-apps.md). 

## Private store availability
You can use security groups to scope which users can install an app from your private store. For more information, see [Private store availability](app-inventory-management-microsoft-store-for-business.md#private-store-availability).

Employees can claim apps that admins added to the private store by doing the following.

**To claim an app from the private store**

1. Sign in to your computer with your Azure Active Directory (AD) credentials, and start Microsoft Store app.
2. Click the **private store** tab.
3. Click the app you want to install, and then click **Install**.


## Related topics
- [Manage access to private store](manage-access-to-private-store.md)
- [Manage private store settings](manage-private-store-settings.md)
- [Configure access to Microsoft Store](/windows/configuration/stop-employees-from-using-microsoft-store)
