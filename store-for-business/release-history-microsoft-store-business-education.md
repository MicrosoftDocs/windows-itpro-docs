---
title: Microsoft Store for Business and Education release history
description: Know the release history of Microsoft Store for Business and Microsoft Store for Education.
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.topic: conceptual
ms.date: 01/11/2024
ms.reviewer: 
---

# Microsoft Store for Business and Education release history

> [!IMPORTANT]
>
> - The retirement of Microsoft Store for Business and Microsoft Store for Education has been postponed. We will update this notice when a new retirement date is announced. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Update to Intune integration with the Microsoft Store on Windows](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/update-to-endpoint-manager-integration-with-the-microsoft-store/ba-p/3585077) and [FAQ: Supporting Microsoft Store experiences on managed devices](https://techcommunity.microsoft.com/t5/windows-management/faq-supporting-microsoft-store-experiences-on-managed-devices/m-p/3585286).

Because Microsoft Store for Business and Education will be retired, we no longer release new and improved features. Here's a summary of new or updated features in previous releases.

Looking for info on the latest release? Check out [What's new in Microsoft Store for Business and Education](whats-new-microsoft-store-business-education.md)

## January 2024

**Removal of private store capability from Microsoft Store for Business and Education**

The private store tab and associated functionality was removed from the Microsoft Store for Business and Education portal. This includes the ability to add apps to private groups and to download and install apps from the private store.  

We recommend customers use the [Private app repository, Windows Package Manager, and Company Portal app](/windows/application-management/private-app-repository-mdm-company-portal-windows-11) to provide a private app repository within their organization.

## May 2023

**Removal of Microsoft Store for Business tab from Microsoft Store app on Windows 10 PCs**

The Microsoft Store for Business tab was removed from the Microsoft Store app on Windows 10. The Microsoft Store for Business tab is still available on HoloLens devices.

Users on Windows 10 PCs can no longer do the following tasks:

- see Line of Business (LOB) products listed in the Microsoft Store for Business tab
- acquire or install [online apps](/mem/configmgr/apps/deploy-use/manage-apps-from-the-windows-store-for-business#online-and-offline-apps)
- assign licenses for existing [online apps](/mem/configmgr/apps/deploy-use/manage-apps-from-the-windows-store-for-business#online-and-offline-apps) using the Store for Business portal or Store for Business app

[Offline app](/mem/configmgr/apps/deploy-use/manage-apps-from-the-windows-store-for-business#online-and-offline-apps) distribution and licensing scenarios aren't impacted by this change.

We recommend that you add your apps through the new Microsoft Store app experience in Intune. If an app isn’t available in the Microsoft Store, you must retrieve an app package from the vendor and install it as an LOB app or Win32 app. For instructions, read the following articles:

- [Add Microsoft Store apps to Microsoft Intune](/mem/intune/apps/store-apps-microsoft)
- [Add a Windows line-of-business app to Microsoft Intune](/mem/intune/apps/lob-apps-windows)
- [Add, assign, and monitor a Win32 app in Microsoft Intune](/mem/intune/apps/apps-win32-add)

Follow the [Intune Customer Success blog](https://aka.ms/IntuneCustomerSuccess) where we will publish more information about this change.

## April 2023

- **Tab removed from Microsoft Store apps on Windows 11 PCs** – The Microsoft Store for Business tab was removed from Microsoft Store apps on Windows 11 PCs. An interaction with existing MDM and GPO policies may lead to customers seeing errors when accessing the Microsoft Store app. [Get more info](manage-access-to-private-store.md#microsoft-store-for-business-tab-removed)

## October 2018

- **Use security groups with Private store apps** - On the details page for apps in your private store, you can set Private store availability. This allows you to choose which security groups can see an app in the private store. [Get more info](app-inventory-management-microsoft-store-for-business.md)

## September 2018

- **Performance improvements** - With updates and improvements in the private store, most changes, like adding an app, will take fifteen minutes or less. [Get more info](/microsoft-store/manage-private-store-settings#private-store-performance)

## August 2018
- **App requests** - People in your organization can make requests for apps that they need. hey can also request them on behalf of other people. Admins review requests and can decide on purchases. [Get more info](./acquire-apps-microsoft-store-for-business.md#allow-app-requests)

## July 2018

- Bug fixes and performance improvements.

## June 2018

- **Change order within private store collection** - Continuing our focus on improvements for private store, now you can customize the order of products in each private store collection.
- **Performance improvements in private store** - We continue to work on performance improvements in the private store. Now, most products new to your inventory are available in your private store within 15 minutes of adding them. [Get more info](./manage-private-store-settings.md#private-store-performance)

## May 2018

- **Immersive Reader app available in Microsoft Store for Education** - This app is a free tool that uses proven techniques to improve reading and writing for people regardless of their age or ability. You can add the app to your private store, so students can easily install and use it.  

## April 2018

- **Assign apps to larger groups** - We're making it easier for admins to assign apps to groups of people. Admins can assign licenses to groups of any size, and include subgroups within those groups. We'll figure out who's in those groups, and assign licenses to people in the groups (skipping people who already have licenses). Along the way, we'll let you know how many licenses are needed, and provide an estimate on the time required to assign licenses.
- **Change collection order in private store** - Private store collections make it easy for groups of people to find the apps that they need. Now, you can customize the order of your private store collections. 
- **Office 365 subscription management** -  We know that sometimes customers need to cancel a subscription. While we don't want to lose a customer, we want the process for managing subscriptions to be easy. Now, you can delete your Office 365 subscription without calling Support. From Microsoft Store for Business and Education, you can request to delete an Office 365 subscription. We'll wait three days before permanently deleting the subscription. In case of a mistake, customers are welcome to reactivate subscriptions during the three-day period.

## March 2018

- **Performance improvements in private store** - We've made it significantly faster for you to update the private store. Many changes to the private store are available immediately after you make them. [Get more info](./manage-private-store-settings.md#private-store-performance)
- **Private store collection updates** - We've made it easier to find apps when creating private store collections – now you can search and filter results. 
 [Get more info](./manage-private-store-settings.md#private-store-collections) 
- **Manage Skype Communication credits** - Office 365 customers that own Skype Communication Credits can now see and manage them in Microsoft Store for Business. You can view your account, add funds to your account, and manage auto-recharge settings.
- **Upgrade Microsoft 365 trial subscription** - Customers with Office 365 can upgrade their subscription and automatically re-assign their user licenses over to a new target subscription. For example, you could upgrade your Office 365 for business subscription to a Microsoft 365 for business subscription.

## January and February 2018

- **One place for apps, software, and subscriptions** - The new **Products &amp; services** page in Microsoft Store for Business and Education gives customers a single place to manage all products and services.
- **Create collections of apps in your private store** - Use **collections** to customize your private store. Collections allow you to create groups of apps that are commonly used in your organization or school -- you might create a collection for a Finance department, or a 6th-grade class. [Get more info](./manage-private-store-settings.md#private-store-collections)
- **Upgrade Office 365 trial subscription** - Customers with Office 365 trials can now transition their trial to a paid subscription in Microsoft Store for Business. This works for trials you acquired from Microsoft Store for Business, or Office Admin Portal.
- **Supporting Microsoft Product and Services Agreement customers** - If you are purchasing under the Microsoft Products and Services Agreement (MPSA), you can use Microsoft Store for Business. Here you will find access to Products & Services purchased, Downloads & Keys, Software Assurance benefits, Order history, and Agreement details.
- **Microsoft Product and Services Agreement customers can invite people to take roles** - MPSA admins can invite people to take Microsoft Store for Business roles even if the person is not in their tenant. You provide an email address when you assign the role, and we'll add the account to your tenant and assign the role.

## December 2017

- Bug fixes and performance improvements.

## November 2017

- **Export list of Minecraft: Education Edition users** - Admins and teachers can now export a list of users who have Minecraft: Education Edition licenses assigned to them. Click **Export users**, and Store for Education creates an Excel spreadsheet for you, and saves it as a .csv file.

## October 2017

- Bug fixes and performance improvements.

## September 2017

- **Manage Windows device deployment with Windows Autopilot Deployment** - In Microsoft Store for Business, you can manage devices for your organization and apply an Autopilot deployment profile to your devices. When people in your organization run the out-of-box experience on the device, the profile configures Windows, based on the Autopilot deployment profile you applied to the device. [Get more info](add-profile-to-devices.md)
- **Request an app** - People in your organization can request additional licenses for apps in your private store, and then Admins or Purchasers can make the purchases. [Get more info](./acquire-apps-microsoft-store-for-business.md#acquire-apps)
- **My organization** - **My organization** shows you all Agreements that apply to your organization. You can also update profile info for you org, such as mailing address and email associated with your account.
- **Manage prepaid Office 365 subscriptions** - Office 365 prepaid subscriptions can be redeemed using a prepaid token. Tokens are available through 3rd-party businesses, outside of Microsoft Store for Business or the Office 365 Admin portal. After redeeming prepaid subscriptions, Admins can add more licenses or extend the subscription's expiration date.
- **Manage Office 365 subscriptions acquired by partners** - Office 365 subscriptions purchased for your organization by a partner or reseller can be managed in Microsoft Store for Business. Admins can assign and manage licenses for these subscriptions.
- **Edge extensions in Microsoft Store** - Edge Extensions are now available from Microsoft Store! You can acquire and distribute them from Microsoft Store for Business just like any other app.
- **Search results in Microsoft Store for Business** - Search results now have sub categories to help you refine search results.
