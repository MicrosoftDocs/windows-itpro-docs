---
title: Learn about the different app types in Windows 10 | Microsoft Docs
ms.reviewer: 
manager: dansimp
description: Use this article to understand the different types of apps that run on Windows 10, such as UWP and Win32 apps.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
ms.author: greglin
author: greg-lindsay
ms.localizationpriority: medium
ms.topic: article
---

# Overview of apps on Windows client devices

> Applies to:
>
> - Windows 10

## App types

There are different types of apps that can run on your Windows client devices. This section lists some of the common apps used on Windows devices.

- **Microsoft 365 apps**: These apps are used for business and productivity, and include Outlook, Word, Teams, OneNote, and more.

  [Transform your enterprise with Microsoft 365](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans)

- **Power Apps**: These apps connect to business data available online and on-premises, and can run in a web browser, and on mobile devices. They can be created by business analysts and professional developers. For more information, see [What is Power Apps?](/powerapps/powerapps-overview).

- **.NET apps**: These apps can be desktop apps that run on the device, or web apps. Some common .NET apps include:

  - **Windows Presentation Foundation (WPF)**: Using .NET, you can create a WPF desktop app that runs on the device, or create a WPF web app. This app is commonly used by organizations that create line of business (LOB) desktop apps. For more information, see [WPF Application Development](/dotnet/desktop/wpf/app-development).
  - **Windows Forms (WinForm)**: Using .NET, you can create a Windows Forms desktop app that runs on the device, and doesn't require a web browser or internet access. Just like Win32 apps, WinForm apps can access the local hardware and file system of the computer where the app is running. For more information, see [Desktop Guide (Windows Forms .NET)](/dotnet/desktop/winforms/overview).

- **Windows apps**: These apps are included with the Windows OS, and can also installed from the Microsoft Store. There are two categories:

  - **Apps**: All apps installed in `C:\Program Files\WindowsApps`. There are two classes of apps:

    - **Provisioned**: Installed in user account the first time you sign in with a new user account.
    - **Installed**: Installed as part of the OS.

  - **System apps**: Apps installed in the `C:\Windows\` directory. These apps are part of the Windows OS.

- **Universal Windows Platform (UWP) apps**: These apps run and can be installed on many Windows platforms, including tablets, Microsoft HoloLens, Xbox, and more. All UWP apps are Windows apps. But, not all Windows apps are UWP apps.

  For more information, see [What's a Universal Windows Platform (UWP) app?](/windows/uwp/get-started/universal-application-platform-guide).

- **Web apps** and **Progressive web apps (PWA)**: These apps run on a server, and don't run on the end user device. To use these apps, users must use a web browser and have internet access. **Progressive web apps** are designed to work for all users, work with any browser, and work on any platform.

  Web apps are typically created in Visual Studio, and can be created with different languages. For more information, see [Create a Web App](https://azure.microsoft.com/get-started/web-app/). When the app is created and ready to be used, you deploy the web app to a web server. Using Azure, you can host your web apps in the cloud, instead of on-premises. For more information, see [App Service overview](/azure/app-service/overview).

  Use MDM to create shortcut on devices

- **Win32 apps**: These apps are traditional Windows apps that run on the device, and are often called desktop apps. They require direct access to Windows and the device hardware, and typically don't require a web browser. These apps run in 32-bit mode on 64-bit devices, and don't depend on a managed runtime environment, like .NET.

  For more information, see [Get started developing apps for Windows desktop](/windows/apps/get-started) and [Make your apps great on Windows 11](/windows/apps/get-started/make-apps-great-for-windows).

> [!TIP]
> Starting with Windows 10, you can use the **Windows UI Library (WinUI 3)** to create .NET, Win32 desktop, and UWP apps. This library includes native Windows UI controls and other user interface elements familiar to Windows users. For more information, see [Windows UI Library (WinUI)](/windows/apps/winui/).

## Add or deploy apps to devices

When your apps are ready, you can add or deploy these apps to your Windows devices.

- **Manually install**: On your devices, users can install apps from the Microsoft Store and from the internet. These apps, and more, are listed in **Settings** > **Apps and Features**.

- **Mobile device management (MDM)**: Use a MDM provider, such as Microsoft Intune (cloud) or Configuration Manager (on-premises), to deploy and configure apps. For example, you can create app policies that deploy Microsoft 365 apps, deploy Win32 apps, create shortcuts to web apps, add store apps, and more.

  For more information, see:

  - [Add apps to Microsoft Intune](/mem/intune/apps/apps-add)
  - [Application management in Configuration Manager](/mem/configmgr/apps/understand/introduction-to-application-management)

- Settings > Apps & features: Provisioned apps, apps installed by users, and apps installed by MDM providers are listed in **Settings** > **Apps and Features**.
- Use Store
- Windows Package Manager: https://docs.microsoft.com/en-us/windows/package-manager 
  - Can install apps from store, or from package. It's a developer tool. 
  - Only for Windows

- App-V: 
  - app-v server: might not support Win11. It's a separate download.
  - app-v client: does support Win11. The OS ships with client installs.

  Goal: Stop using app-v, and get on Azure Virtual desktop with msix app attach


## Remove apps

