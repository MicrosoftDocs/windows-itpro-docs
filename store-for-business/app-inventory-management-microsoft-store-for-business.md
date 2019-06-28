---
title: App inventory management for Microsoft Store for Business and Microsoft Store for Education (Windows 10)
description: You can manage all apps that you've acquired on your Apps & Software page.
ms.assetid: 44211937-801B-4B85-8810-9CA055CDB1B2
ms.reviewer: 
manager: dansimp
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
ms.author: TrudyHa
ms.topic: conceptual
ms.date: 10/23/2018
---

# App inventory management for Microsoft Store for Business and Education

**Applies to**

-   Windows 10
-   Windows 10 Mobile

You can manage all apps that you've acquired on your **Apps & software** page. This page shows all of the content you've acquired, including apps that from Microsoft Store, and line-of-business (LOB) apps that you've accepted into your inventory. After LOB apps are submitted to your organization, you'll see a notification on your **Apps & software** page. On the **New LOB apps** tab, you can accept, or reject the LOB apps. For more information on LOB apps, see [Working with line-of-business apps](working-with-line-of-business-apps.md). The inventory page includes apps acquired by all people in your organization with the Store for Business Admin role. 

All of these apps are treated the same once they are in your inventory and you can perform app lifecycle tasks for them: distribute apps, add apps to private store, review license details, and reclaim app licenses.

<!--- ![Image shows Inventory page in Microsoft Store for Business with status status options for an app.](images/wsfb-inventoryaddprivatestore.png) -->

Microsoft Store for Business and Education shows this info for each app in your inventory:
- Name
- Last modified
- Private store status
- Available licenses
- Supported devices
- Access to actions for the app

The last modified date tracks changes about the app as an item in your inventory. The last modified date changes when one of the following happens:
- First purchase (the date you acquire the app from Microsoft Store for Business)
- Purchase additional licenses
- Assign license
- Reclaim license
- Refund order (applies to purchased apps, not free apps)

The last modified date does not correspond to when an app was last updated in Microsoft Store. It tracks activity for that app, as an item in your inventory.

## Find apps in your inventory

There are a couple of ways to find specific apps, or groups of apps in your inventory.

**Search** - Use the Search box to search for an app.<br>
**Refine results** - Use **Refine results** to scope your list of apps by one or more of these app attributes:
- **License type** - Online or offline licenses. For more info, see [Apps in Microsoft Store for Business](apps-in-microsoft-store-for-business.md#licensing-model).
- **Supported devices** - Lists the devices that apps in your inventory were originally written to support. This list is cumulative for all apps in your inventory.
- **Source** - **Store**, for apps acquired from Store for Business, or LOB, for line-of-business apps.
- **Product type** - Product categories, such as app, or game.
- **Private store** - Whether or not the app is in the private store, or status if the app is being added or removed from private store.

## Manage apps in your inventory
Each app in the Store for Business has an online, or an offline license. For more information on Store for Business licensing model, see [Apps in the Microsoft Store for Business](apps-in-microsoft-store-for-business.md#licensing-model). There are different actions you can take depending on the app license type. They're summarized in this table.

| Action | Online-licensed app | Offline-licensed app |
| ------ | ------------------- | -------------------- |
| Assign to employees | X |  |
| Add to private store | X |  |
| Remove from private store | X |  |
| View license details | X |  |
| View product details | X | X |
| Download for offline use | | X |

The actions in the table are how you distribute apps, and manage app licenses. We'll cover those in the next sections. Working with offline-licensed apps has different steps. For more information on distributing offline-licensed apps, see [Distribute offline apps](distribute-offline-apps.md).

## Assign apps
For online-licensed apps, you can assign apps directly to people in your organization.  

**To assign an app to an employee**

1.	Sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com) or [Microsoft Store for Education](https://businessstore.microsoft.com).
2.	Click **Manage**, and then choose **Inventory**.
3.	Find an app, click the ellipses, and then choose **Assign to people**.
4.	Type the email address for the employee that you're assigning the app to, and click **Confirm**.

Employees will receive an email with a link that will install the app on their device. Click the link to start the Microsoft Store app, and then click **Install**. Also, in the Microsoft Store app, they can find the app under **My Library**.

There are other options for distributing apps:
- **Use a management tool** - If you use a management tool that supports Microsoft Store, you can distribute apps with your management tool. Once it is configured to work with Store for Business, your management tool will have access to all apps in your inventory. For more information, see [Distribute apps with a management tool](distribute-apps-with-management-tool.md).
- **Distribute from private store** - You can also add apps to your private store, and let people get them on their own. For more information, see [Distribute apps from private store](#distribute-apps-from-private-store)

## Distribute apps from private store
Once an app is in your private store, people in your org can install the app on their devices. For more information, see [Distribute apps using your private store](distribute-apps-from-your-private-store.md).

### Add apps to your private store
**To make an app in Apps & software available in your private store**

1.  Sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com) or [Microsoft Store for Education](https://businessstore.microsoft.com).
2.  Click **Manage**, and then choose **Apps & software**.
3.  Use **Refine results** to search for online-licensed apps under **License type**.
4.  From the list of online-licensed apps, click the ellipses for the app you want, and then choose **Add to private store**.

The value under **Private store** for the app will change to pending. It will take approximately thirty-six hours before the app is available in the private store.
Employees can claim apps that admins added to the private store by doing the following.

### Get and remove private store apps
**To claim an app from the private store**

1.	Sign in to your computer with your Azure Active Directory (AD) credentials, and start the Microsoft Store app.
2.	Click the private store tab.
3.	Click the app you want to install, and then click **Install**.

Another way to distribute apps is by assigning them to people in your organization.

If you decide that you don't want an app available for employees to install on their own, you can remove it from your private store.

**To remove an app from the private store**

1. Sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com) or [Microsoft Store for Education](https://businessstore.microsoft.com).
2. Click **Manage**, and then choose **Products & services**.
3. Find an app, click the ellipses, choose **Remove from private store**, and then click **Remove**.
4. Choose the private store collection, and then under **In collection**, switch to **Off**.

The app will still be in your inventory, but your employees will not have access to the app from your private store.

### Private store availability
On the details page for each app, you can directly assign an app to a user, or for apps in your private store, you can set **Private store availability**.

**Private store availability** allows you to choose which groups of people can see an app in the private store:
- No one - The app isn't in your private store
- Everyone - The app is available to anyone in your organization
- Specific groups - The app is available to all users in assigned security groups

**To assign security groups to an app** 
1. Sign in to the [Microsoft Store for Business](https://businessstore.microsoft.com) or [Microsoft Store for Education](https://businessstore.microsoft.com).
2. Click **Manage**, and then choose **Products & services**.
3. Find an app, choose the ellipses, and then choose **View license details**.
4. Click **Private store availability**, select **Specific groups**, and then click **Assign groups**. 
5. Enter a name or email address for the security group you want to use, and then click **Add groups**.

## Manage app licenses

For each app in your inventory, you can view and manage license details. This give you another way to assign apps to people in your organization. It also allows you to reclaim app licenses after they've been assigned to people, or claimed by people in your organization.

**To view license details**

1. Sign in to [Microsoft Store for Business](https://go.microsoft.com/fwlink/p/?LinkId=691845) or [Microsoft Store for Education](https://businessstore.microsoft.com).
2. Click **Manage**, and then choose **Products & services**.
3. Click an app you want to manage.
4. On the app details page, you'll see the names of people in your organization who have installed the app and are using one of the licenses. From here, you can:

    - Assign the app to other people in your organization.
    - Reclaim app licenses.
    - View app details.
    - Add the app to your private store, if it is not in the private store.

You can assign the app to more people in your organization, or reclaim licenses.

**To assign an app to more people**

- On the app page, click **Assign users**, type the email address for the person that you're assigning the app to, and click **Assign**.

Microsoft Store updates the list of assigned licenses.

**To reclaim licenses**

- On the app page, choose the person you want to reclaim the license from, click the ellipses, and then click **Reclaim licenses**.

Microsoft Store updates the list of assigned licenses.

## Purchase additional licenses
You can purchase additional licenses for apps in your Inventory.

**To purchase additional app licenses**

1. Sign in to [Microsoft Store for Business](https://go.microsoft.com/fwlink/p/?LinkId=691845) or [Microsoft Store for Education](https://businessstore.microsoft.com)
2. Click **Manage**, and then choose **Apps & software**.
3. From **Apps & software**, click an app.
4. On the app page, click **Buy more** for additional licenses, or click **Assign users** to manage your current licenses.

You'll have a summary of current license availability.

## <a href="" id="download-offline-licensed-apps"></a>Download offline-licensed app
Offline licensing is a new feature in Windows 10 and allows apps to be deployed to devices that are not connected to the Internet. This means organizations can deploy apps when users or devices do not have connectivity to the Store.

You can download offline-licensed apps from your inventory. You'll need to download these items:
- App metadata
- App package
- App license
- App framework

For more information about online and offline licenses, see [Apps in the Microsoft Store for Business](apps-in-microsoft-store-for-business.md#licensing-model).

For more information about downloading offline-licensed apps, see [Download offline apps](distribute-offline-apps.md).

## Manage products programmatically

Microsoft Store for Business and Education provides a set of Admin management APIs. If you organization develops scripts or tools, these APIs allow Admins to programmatically manage items in **Apps & software**. For more information, see [REST API reference for Microsoft Store for Business](https://docs.microsoft.com/windows/client-management/mdm/rest-api-reference-windows-store-for-business).

You can download a preview PowerShell script that uses REST APIs. The script is available from PowerShell Gallery. You can use to the script to:
- View items in inventory (**Apps & software**)
- Manage licenses - assigning and removing
- Perform bulk options using .csv files - this automates license management for customers with large numbers of licenses

> [!NOTE]
> The Microsoft Store for Business and Education Admin role is required to manage products and to use the MSStore module. This requires advanced knowledge of PowerShell.
