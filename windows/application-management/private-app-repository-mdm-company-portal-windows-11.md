---
title: Use the Company Portal app for your private app repo on Windows 11 devices | Microsoft Docs
description: Use the Company Portal app in Windows 11 devices to access the private app repository for your organization or company apps. Add apps to an MDM/MAM provider, and deploy the apps to Windows devices using policies. The Company Portal app replaces Microsoft Store for Business private store on Windows 11 devices.
author: aczechowski
ms.author: aaroncz
manager: aaroncz
ms.date: 09/03/2023
ms.topic: conceptual
ms.service: windows-client
ms.subservice: itpro-apps
ms.localizationpriority: medium
ms.collection: tier2
ms.reviewer: amanh
---

# Private app repository in Windows 11

**Applies to**:

- Windows 11

Starting in Windows 11, administrators have new options to deploy apps to devices. The Microsoft Store will continue to allow users to install public and retail apps.

The Company Portal app is the private app repository for organizations and enterprises. It supports more app types and scenarios.

When the Company Portal app is installed, users open it, and see the apps your organization makes available. Users select an app, and install it.

This article discusses the Company Portal app installation options, adding organization apps, and more.

## Before you begin

The Company Portal app is included with Microsoft Intune. Intune is a Mobile Device Management (MDM) and Mobile Application manager (MAM) provider. It helps manage your devices, your identities, and app data on your devices.

If you're not managing your devices using an MDM provider, the following resources may help you get started:

- [Endpoint Management at Microsoft](/mem/endpoint-manager-overview)
- [What is Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Microsoft Intune planning guide](/mem/intune/fundamentals/intune-planning-guide)
- [What is Configuration Manager?](/mem/configmgr/core/understand/introduction)

## Prerequisites

To use the Company Portal app:

- Users must have a work account that's already set up. For more information, see [Manage users and groups in Microsoft 365](/microsoft-365/admin/add-users).
- Your organization must have an Intune subscription. For more information, see [Microsoft Intune licensing](/mem/intune/fundamentals/licenses).

## Install the Company Portal app

To install the Company Portal app, you have some options:

- **Use Microsoft Intune**: Microsoft Intune is a family or products that include Microsoft Intune (cloud) and Configuration Manager (on-premises). With both services, you can add Microsoft Store apps, like the Company Portal app. Once added, you create an app policy that deploys and installs the Company Portal app to your devices.

  - This option is preferred, and is the most scalable, especially if you have many devices. When you create the app policy, the policy can be deployed to many users and many devices simultaneously. Admins can also use reporting to make sure the app is installed on organization-managed devices.

  - On co-managed devices, which are managed by Microsoft Intune + Configuration Manager together, the Company Portal app shows your Intune apps and your Configuration Manager apps. So, all apps are shown in one place.

  - When the Company Portal app is installed from the Microsoft Store app, by default, it's automatically updated. Users can also open the Microsoft Store app, go to the **Library**, and check for updates.

  For more information, see:
  
  - [Endpoint Management at Microsoft](/mem/endpoint-manager-overview)
  - [Add Microsoft Store apps to Microsoft Intune](/mem/intune/apps/store-apps-microsoft)
  - [What is co-management?](/mem/configmgr/comanage/overview)
  - [Use the Company Portal app on co-managed devices](/mem/configmgr/comanage/company-portal)

- **Use Windows Autopilot**: Windows Autopilot automatically provisions devices, registers them in your Microsoft Entra organization (tenant), and gets them ready for production. If you're purchasing new devices, then we recommend using Windows Autopilot to preconfigure the devices, and get them ready for use.

  - In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), you add the Company Portal app from the Microsoft Store. Once it's added, the app can be included in your Windows Autopilot deployment. When the device turns on and is getting ready, the Company Portal app is also installed, before users sign in.

  - When the Company Portal app is installed from the Microsoft Store app, by default, it's automatically updated. Users can also open the Microsoft Store app, go to the **Library**, and check for updates.

  For more information, see:
  
  - [What is Windows Autopilot](/mem/autopilot/windows-autopilot)
  - [Add and assign the Company Portal app for Autopilot provisioned devices](/mem/intune/apps/store-apps-company-portal-autopilot)

- **Use the Microsoft Store**: The Company Portal app is available in the Microsoft Store, and can be downloaded by your users. Users open the Microsoft Store app on their device, search for **Company Portal**, and install it. When it's installed, users might be prompted to sign in with their organization account (`user@contoso.com`). When the app opens, they see a list of approved organization apps that can be installed.

  - This option requires users to install the Company Portal app themselves. If you have many users, the recommended approach is to deploy the Company Portal app using Intune or using Windows Autopilot.

  - When the Company Portal app is installed from the Microsoft Store app, by default, it's automatically updated. Users can also open the Microsoft Store, go to the **Library**, and check for updates. Within the Company Portal app, they can use the update feature to get app fixes and feature updates on the organization apps you added.

## Customize the Company Portal app

Many organizations customize the Company Portal app to include their specific information. In the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), you can customize the Company Portal app. For example, you can add a brand logo, include support information, add self-service device actions, and more.

For more information, see [Configure the Intune Company Portal app](/mem/intune/apps/company-portal-app).

## Add your organization apps to the Company Portal app

When you add an app in the [Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431), there's a **Show this as a featured app in the Company Portal** setting. Be sure you use this setting.

On co-managed devices (Microsoft Intune + Configuration Manager together), your Configuration Manager apps can also be shown in the Company Portal app. For more information, see [Use the Company Portal app on co-managed devices](/mem/configmgr/comanage/company-portal).

When the apps are shown, users can select and download the apps on their devices. You can add Microsoft Store apps, web apps, Microsoft 365 apps, LOB apps, Win32 apps, and sideload apps. For more information on adding apps to the Intune admin center, see:

- [Add Microsoft 365 apps using Intune](/mem/intune/apps/apps-add-office365)
- [Add web apps using Intune](/mem/intune/apps/web-app)
- [Add LOB apps using Intune](/mem/intune/apps/lob-apps-windows)
- [Win32 app management in Intune](/mem/intune/apps/apps-win32-app-management)
- [Create and deploy an application with Configuration Manager](/mem/configmgr/apps/get-started/create-and-deploy-an-application)

If you use a third party or partner MDM provider, be sure to configure the settings that list your apps in the Company Portal app.

## Windows Package Manager

If your organization creates its own apps, your app developers can use [Windows Package Manager](/windows/package-manager/) to deploy apps. For more information on Intune and Windows Package Manager, see [Evolving the Microsoft Store for Business and Education](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/evolving-the-microsoft-store-for-business-and-education/ba-p/2569423) and [Microsoft Store for Business and Education retiring March 31, 2023](/lifecycle/announcements/microsoft-store-for-business-education-retiring).
