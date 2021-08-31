---
title: Learn about the different app types in Windows 10 | Microsoft Docs
ms.reviewer: 
manager: dougeby
description: Learn more and understand the different types of apps that run on Windows 10 and Windows 11. For example, learn more about UWP, WPF, Win32, and Windows Forms apps, including the best way to install these apps.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: mandia
author: MandiOhlinger
ms.localizationpriority: medium
ms.topic: article
---

# Overview of apps on Windows client devices

> Applies to:
>
> - Windows 10

## Before you begin

As organizations become more global, and to support employees working from anywhere, it's recommended to use a Mobile Device Management (MDM) provider. MDM providers help manage your devices, and help manage apps on your devices. For Microsoft, that includes using Microsoft Endpoint Manager. Endpoint Manager includes Microsoft Intune, which is a cloud service, and Configuration Manager, which is on-premises.

In this article, we mention these services. If you're not managing your devices using an MDM provider, the following resources may help you get started:

- [Microsoft Endpoint Manager overview](/mem/endpoint-manager-overview)
- [What is Microsoft Intune](/mem/intune/fundamentals/what-is-intune) and [Microsoft Intune planning guide](/mem/intune/fundamentals/intune-planning-guide)
- [What is Configuration Manager?](/mem/configmgr/core/understand/introduction)

## App types

There are different types of apps that can run on your Windows client devices. This section lists some of the common apps used on Windows devices.

- **Microsoft 365 apps**: These apps are used for business and productivity, and include Outlook, Word, Teams, OneNote, and more. Depending on the licenses your organization has, you may already have these apps. Using an MDM provider, these apps can also be deployed to mobile devices, including smartphones.

  For more information on the Microsoft 365 license options, and what you get, see [Transform your enterprise with Microsoft 365](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans).

- **Power Apps**: These apps connect to business data available online and on-premises, and can run in a web browser, and on mobile devices. They can be created by business analysts and professional developers. For more information, see [What is Power Apps?](/powerapps/powerapps-overview).

- **.NET apps**: These apps can be desktop apps that run on the device, or web apps. Some common .NET apps include:

  - **Windows Presentation Foundation (WPF)**: Using .NET, you can create a WPF desktop app that runs on the device, or create a WPF web app. This app is commonly used by organizations that create line of business (LOB) desktop apps. For more information, see [WPF Application Development](/dotnet/desktop/wpf/app-development).
  - **Windows Forms (WinForm)**: Using .NET, you can create a Windows Forms desktop app that runs on the device, and doesn't require a web browser or internet access. Just like Win32 apps, WinForm apps can access the local hardware and file system of the computer where the app is running. For more information, see [Desktop Guide (Windows Forms .NET)](/dotnet/desktop/winforms/overview).

- **Windows apps**: 

  > [!TIP]
  > Starting with Windows 10, you can use the **Windows UI Library (WinUI 3)** to create .NET, Win32 desktop, and UWP apps. This library includes native Windows UI controls and other user interface elements familiar to Windows users. For more information, see [Windows UI Library (WinUI)](/windows/apps/winui/).

  - **Apps**: All apps installed in `C:\Program Files\WindowsApps`. There are two classes of apps:

    - **Provisioned**: Installed in user account the first time you sign in with a new user account. For a list of some common provisioned apps, see [Provisioned apps installed with the Windows client OS](provisioned-apps-windows-client-os.md).
    - **Installed**: Installed as part of the OS.

  - **Universal Windows Platform (UWP) apps**: These apps run and can be installed on many Windows platforms, including tablets, Microsoft HoloLens, Xbox, and more. All UWP apps are Windows apps. Not all Windows apps are UWP apps.

    For more information, see [What's a Universal Windows Platform (UWP) app?](/windows/uwp/get-started/universal-application-platform-guide).

  - **Win32 apps**: These apps are traditional Windows apps that run on the device, and are often called desktop apps. They require direct access to Windows and the device hardware, and typically don't require a web browser. These apps run in 32-bit mode on 64-bit devices, and don't depend on a managed runtime environment, like .NET.

    For more information, see [Get started developing apps for Windows desktop](/windows/apps/get-started) and [Make your apps great on Windows 11](/windows/apps/get-started/make-apps-great-for-windows).

  - **System apps**: Apps installed in the `C:\Windows\` directory. These apps are part of the Windows OS. For a list of some common system apps, see [System apps installed with the Windows client OS](system-apps-windows-client-os.md).

- **Web apps** and **Progressive web apps (PWA)**: These apps run on a server, and don't run on the end user device. To use these apps, users must use a web browser and have internet access. **Progressive web apps** are designed to work for all users, work with any browser, and work on any platform.

  Web apps are typically created in Visual Studio, and can be created with different languages. For more information, see [Create a Web App](https://azure.microsoft.com/get-started/web-app/). When the app is created and ready to be used, you deploy the web app to a web server. Using Azure, you can host your web apps in the cloud, instead of on-premises. For more information, see [App Service overview](/azure/app-service/overview).

  Using an MDM provider, you can create shortcuts to your web apps and progressive web apps on devices.

## Add or deploy apps to devices

When your apps are ready, you can add or deploy these apps to your Windows devices. This section lists some common options.

- **Manually install**: On your devices, users can install apps from the Microsoft Store, from the internet, and from an organization shared drive. These apps, and more, are listed in **Settings** > **Apps** > **Apps and Features**.

  If you want to prevent users from downloading apps on organization owned devices, use an MDM provider, like Microsoft Intune. For example, you can create a policy that allows or prevents users from sideloading apps, only allow the private store, and more. For more information on the features you can restrict, see [Windows 10 (and newer) device settings to allow or restrict features using Intune](/mem/intune/configuration/device-restrictions-windows-10).

  For an overview of the different types of device policies you can create, see [Apply features and settings on your devices using device profiles in Microsoft Intune](/mem/intune/configuration/device-profiles).

- **Mobile device management (MDM)**: Use an MDM provider, like Microsoft Intune (cloud) or Configuration Manager (on-premises), to deploy apps. For example, you can create app policies that deploy Microsoft 365 apps, deploy Win32 apps, create shortcuts to web apps, add Store apps, and more.

  For more information, see:

  - [Add apps to Microsoft Intune](/mem/intune/apps/apps-add)
  - [Application management in Configuration Manager](/mem/configmgr/apps/understand/introduction-to-application-management)

- **Microsoft Store**: Using the Microsoft Store app, Windows users can download apps from the public store. And, they can download apps provided by your organization, which is called the "private store". If your organization creates its own apps, you can use **[Windows Package Manager](/windows/package-manager)** to add apps to the private store.

  To help manage the Microsoft Store on your devices, you can use policies:

  - On premises, you can use Administrative Templates in Group Policy to control access to the Microsoft Store app:
    - `User Configuration\Administrative Templates\Windows Components\Store`
    - `Computer Configuration\Administrative Templates\Windows Components\Store`
  - Using Microsoft Intune, you can use [Administrative Templates](/mem/intune/configuration/administrative-templates-windows) (opens another Microsoft web site) or the [Settings Catalog](/mem/intune/configuration/settings-catalog) (opens another Microsoft web site) to control access to the Microsoft Store app.

  For more information, see:

  - [Microsoft Store for Business and Education](/microsoft-store/)
  - [Evolving the Microsoft Store for Business and Education](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/evolving-the-microsoft-store-for-business-and-education/ba-p/2569423)

- **MSIX for desktop apps**: MSIX packages your UWP, Win32, WPF, and WinForm desktop application files. MSIX reliably installs apps, helps optimize disk storage space, and reduces duplicate files. If your organization typically uses `.EXE` or `.MSI` files to install desktop apps, then you should look into MSIX.

  To deploy MSIX packages and their apps, you can:

  - Use an MDM provider, like Microsoft Intune and Configuration Manager.
  - Use an App Installer. User users double-click an installer file, or select a link on a web page.
  - And more.

  For more information, see:

  - [What is MSIX?](/windows/msix/overview)
  - [MSIX app distribution for enterprises](/windows/msix/desktop/managing-your-msix-deployment-enterprise)

- **Windows Package Manager**: Windows Package Manager is a command line tool commonly used by developers to install Windows apps. Using the command line, you can get apps from the Microsoft Store or from GitHub (and more), and install these apps on Windows devices. It's helpful if you want to bypass user interfaces for getting apps from organizations and from developers.

  If your organization uses `.EXE`, `.MSIX`, or `.MSI` files, then Windows Package Manager might be the right deployment option for your organization.

  For more information, see [Windows Package Manager](/windows/package-manager).

- **Azure Virtual desktop with MSIX app attach**: With Azure virtual desktop, you can virtualize the Windows client OS desktop, and use virtual apps on this desktop. With MSIX app attach, you dynamically deliver MSIX packaged apps to users and user groups.

  The benefit is to use the cloud to deliver virtual apps in real time, and as-needed. Users use the apps as if they're installed locally.

  If you currently use App-V, and want to reduce your on-premises footprint, then **Azure Virtual desktop with MSIX app attach** might be the right deployment for your organization.

  For more information, see:

  - [What is Azure Virtual Desktop?](/azure/virtual-desktop/overview)
  - [Set up MSIX app attach with the Azure portal](/azure/virtual-desktop/app-attach-azure-portal)

- **Application Virtualization (App-V)**: App-V allows Win32 apps to be used as virtual apps.

  > [!NOTE]
  > Application Virtualization will be [end of life in April 2026](/lifecycle/announcements/mdop-extended). We recommend looking at **Azure Virtual desktop with MSIX app attach**. For more information, see [What is Azure Virtual Desktop?](/azure/virtual-desktop/overview) and [Set up MSIX app attach with the Azure portal](/azure/virtual-desktop/app-attach-azure-portal).

  On an on-premises server, you install and configure the App-V server components, and then install your Win32 apps. On Windows Enterprise client devices, you use the App-V client components to run the virtualized apps. They allow users to open the virtual apps using the icons and file names they're familiar with. Users use the apps as if they're installed locally.

  The benefit is to deliver virtual apps in real time, and as-needed. For more information, see [Application Virtualization (App-V) for Windows overview](./app-v/appv-for-windows.md).

  To help manage App-V on your devices, you can use policies:

  - On premises, you can use Administrative Templates in Group Policy to deploy App-V policies (`Computer Configuration\Administrative Templates\System\App-V`).
  - Using Microsoft Intune, you can use [Administrative Templates](/mem/intune/configuration/administrative-templates-windows) (opens another Microsoft web site) or the [Settings Catalog](/mem/intune/configuration/settings-catalog) (opens another Microsoft web site) to deploy App-V policies.


