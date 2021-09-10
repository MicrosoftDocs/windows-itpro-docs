---
title: Use the Company Portal app for your private store on Windows 11 devices | Microsoft Docs
description: Use the Company Portal app in Windows 11 devices to access the private store. Add apps to an MDM/MAM provider, and deploy the apps to Windows devices using policies. The Company Portal app replaces Microsoft Store private store on Windows 11 devices.
ms.assetid: 
ms.reviewer: 
manager: dougeby
ms.author: mandia
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
author: MandiOhlinger
ms.date: 09/09/2021
ms.localizationpriority: medium
---

# Private app store in Windows 11

**Applies to**:

- Windows 11

Starting with Windows 11, how administrators deploy apps to devices is updated. The Microsoft Store app is available on Windows 11, and allows users to install public and retail apps. The Microsoft Store app on Windows 11 doesn't have a private store for organization-specific apps.

Instead of a private store in the Microsoft Store app, you install the Company Portal app on devices. The Company Portal app replaces the private store in Microsoft Store for Business. When the Company Portal app is installed, users open it, and see the apps your organization makes available. They select an app, and install it.

The Company Portal app has many benefits, including:

- On existing devices, users can enroll their devices, and be managed by your organization. When they enroll, they get access to organization resources, including apps.
- Users can browse and install approved organization apps that you add.
- You can personalize the Company Portal app by adding help desk details, and other information from your IT department.
- Users can see all their enrolled devices, and see the device information.
- Users can reset their devices, which is helpful if their device is lost or stolen.

This article discusses the Company Portal app installation options, adding organization apps, and more.

## Before you begin

As organizations become more global, and to support employees working from anywhere, it's recommended to use a Mobile Device Management (MDM) provider. MDM providers help manage your devices, and help manage apps on your devices. For Microsoft, that includes using Microsoft Endpoint Manager. Endpoint Manager includes Microsoft Intune, which is a cloud service, and Configuration Manager, which is on-premises.

In this article, we mention these services. If you're not managing your devices using an MDM provider, the following resources may help you get started:

- [Microsoft Endpoint Manager overview](/mem/endpoint-manager-overview)
- [What is Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Microsoft Intune planning guide](/mem/intune/fundamentals/intune-planning-guide)
- [What is Configuration Manager?](/mem/configmgr/core/understand/introduction)

## Prerequisites

To use the Company Portal app:

- Users must have a work account that's already set up. For more information, see [Manage users and groups in Microsoft 365](/microsoft-365/admin/add-users).
- Your organization must have an Intune subscription. For more information, see [Microsoft Intune licensing](/mem/intune/fundamentals/licenses).

## Install the Company Portal app

To install the Company Portal app, you have some options:

- **Use Microsoft Endpoint Manager**: Endpoint Manager includes Microsoft Intune (cloud) and Configuration Manager (on-premises). With both services, you can add Microsoft Store apps, like the Company Portal app. Once added, you create an app policy that deploys and installs the Company Portal app to your devices.

  - On co-managed devices, which are managed by Microsoft Intune + Configuration Manager together, the Company Portal app shows your Intune apps and your Configuration Manager apps. So, all apps are shown in one place.

  - When apps are installed from the Microsoft Store app, by default, they're automatically updated. Users can also open the Microsoft Store app, go to the **Library**, and check for updates.

  - Using Endpoint Manager is the most scalable option. When you create the app policy, the policy can be deployed to many users and many devices simultaneously.

  For more information, see:
  
  - [What is Microsoft Endpoint Manager](/mem/endpoint-manager-overview)
  - [Add Microsoft Store apps to Microsoft Intune](/mem/intune/apps/store-apps-windows)
  - [What is co-management?](/mem/configmgr/comanage/overview)
  - [Use the Company Portal app on co-managed devices](/mem/configmgr/comanage/company-portal)

- **Use Windows Autopilot**: Windows Autopilot automatically provisions devices, and gets them ready for production. If you're purchasing new devices, then we recommend using Windows Autopilot to preconfigure the devices, and get them ready for use.

  - In the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), you add the Company Portal app from the Microsoft Store. Once it's added, the app can be included in your Windows Autopilot deployment. When the device turns on and is getting ready, the Company Portal app is also installed, before users sign in.

  - When apps are installed from the Microsoft Store app, by default, they're automatically updated. Users can also open the Microsoft Store app, go to the **Library**, and check for updates.

  For more information, see:
  
  - [What is Windows Autopilot](/mem/autopilot/windows-autopilot)
  - [Add and assign the Company Portal app for Autopilot provisioned devices](/mem/intune/apps/store-apps-company-portal-autopilot)

- **Use the Microsoft Store**: The Company Portal app is available in the Microsoft Store, and can be downloaded by your users. Users open the Microsoft Store app on their device, search for **Company Portal**, and install it. When it's installed, users might be prompted to sign in with their organization account (`user@contoso.com`). When the app opens, they see a list of approved organization apps that can be installed.

  - When apps are installed from the Microsoft Store app, by default, they're automatically updated. Users can also open the Microsoft Store, go to the **Library**, and check for updates. Within the Company Portal app, they can use the update feature to get app fixes and feature updates on the organization apps you added.

  - This option requires users to install the app themselves. If you have many users, the recommended approach is to deploy the Company Portal app using Endpoint Manager or using Windows Autopilot.

## Customize the Company Portal app

Many organizations customize the Company Portal app to include their specific information. In the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), you can customize the Company Portal app. For example, you can add a brand logo, include support information, add self-service device actions, and more.

For more information, see [Configure the Intune Company Portal app](/mem/intune/apps/company-portal-app).

## Add your organization apps to the Company Portal app

**??What are the non-MDM ways to add apps to CP app? Windows Package Manager? ??**

When you add an app in the [Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), there is a **Show this as a featured app in the Company Portal** setting. Be sure you use this setting.

On co-managed devices (Microsoft Intune + Configuration Manager together), your Configuration Manager apps can also be shown in the Company Portal app. For more information, see [Use the Company Portal app on co-managed devices](/mem/configmgr/comanage/company-portal).

When the apps are shown, users can select and download the apps on their devices. You can add Microsoft Store apps, web apps, Microsoft 365 apps, LOB apps, Win32 apps, and sideload apps. For more information on adding apps to the Endpoint Manager admin center, see:

- [Add Microsoft 365 apps using Intune](/mem/intune/apps/apps-add-office365)
- [Add web apps using Intune](/mem/intune/apps/web-app)
- [Add LOB apps using Intune](/mem/intune/apps/lob-apps-windows)
- [Win32 app management in Intune](/mem/intune/apps/apps-win32-app-management)
- [Create and deploy an application with Configuration Manager](/mem/configmgr/apps/get-started/create-and-deploy-an-application)

If you use a third party or partner MDM provider, be sure to configure the settings that list your apps in the Company Portal app.

## Use Group Policy or MDM to block the Microsoft Store

By default, the OS shows the Microsoft Store, and allows users to install the public and retail apps. If you want, you can hide the Microsoft Store on your user devices using Group Policy (on-premises), or using an MDM provider, such as Microsoft Intune (cloud).

### Group Policy

If you use Group Policy, you can use the following policies:

- `Computer configuration\Administrative templates\Windows Components\Store\Turn off the Store application`
- `User configuration\Administrative templates\Windows Components\Store\Turn off the Store application`

If you currently use the `Only display the private store within Microsoft Store app` and `To show private store only in Microsoft Store app` policies, then you should now use `Disable all apps from Microsoft Store` policy.

### MDM

Using an MDM provider, you can deploy a policy that turns off or blocks the Microsoft Store.

Using Microsoft Intune, you can use [Administrative Templates](/mem/intune/configuration/administrative-templates-windows) (opens another Microsoft web site) or the [Settings Catalog](/mem/intune/configuration/settings-catalog) (opens another Microsoft web site) to turn off the Microsoft Store app.

**--> Need to add more specific info. <--**

## Use Microsoft Defender Application Control or AppLocker

The Microsoft Store app uses the `WinStore.App.exe` file. You can block access to this file using AppLocker or Microsoft Defender Application Control. For more information on these options, see:

- [Windows Defender Application Control and AppLocker Overview](/windows/security/threat-protection/windows-defender-application-control/wdac-and-applocker-overview)
- [Block Microsoft Store using AppLocker](/windows/configuration/stop-employees-from-using-microsoft-store#block-microsoft-store-using-applocker)

## Microsoft Store for Business

> [!IMPORTANT]
> Microsoft Store for Business and Microsoft Store for Education will be retired in the first quarter of 2023. You can continue to use the current capabilities of free apps until that time. For more information about this change, see [Evolving the Microsoft Store for Business and Education](https://aka.ms/windows/msfb_evolution).

In the Microsoft Store app, the private store includes apps used by our organization. On Windows 10 devices, users open the Microsoft Store app, go to your organization's tab, select an app, and install it.
