---
title: Overview of apps on Windows client devices
description: Learn about the different types of apps that run on Windows. For example, Universal Windows Platform (UWP), Windows Presentation Foundation (WPF), Win32, and Windows Forms apps. This article also includes the best way to install these apps.
author: aczechowski
ms.author: aaroncz
manager: aaroncz
ms.date: 09/03/2024
ms.topic: overview
ms.service: windows-client
ms.subservice: itpro-apps
ms.localizationpriority: medium
ms.collection: tier2
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Overview of apps on Windows client devices

There are different types of apps that can run on your Windows client devices. This article provides an overview of some of the common apps used on Windows devices. It also explains the basics of how to install these apps.

## Windows app types

### Microsoft 365 apps

These apps are used for business and productivity, and include Outlook, Word, Teams, OneNote, and more. Depending on the licenses your organization has, you may already have these apps. When you use an MDM provider, these apps can also be deployed to mobile devices, including smartphones.

For more information on the Microsoft 365 license options, and what you get, see [Find the right Microsoft 365 enterprise plan for your organization](https://www.microsoft.com/microsoft-365/enterprise/microsoft365-plans-and-pricing).

For more information on deploying Microsoft 365 apps, see the [Deployment guide for Microsoft 365 Apps](/DeployOffice/deployment-guide-microsoft-365-apps).

### Power Apps

These apps are custom, low-code apps to connect to business data, modernize processes, and solve unique challenges. Power Apps are available online and on-premises, can run in a web browser, and on mobile devices. They can be created by business analysts and professional developers.

For more information, see [What is Power Apps?](/power-apps/powerapps-overview).

### .NET apps

These apps can be desktop apps that run on the device, or web apps. Some common .NET apps include:

- **Windows Presentation Foundation (WPF)**: Using .NET, you can create a WPF desktop app that runs on the device, or create a WPF web app. This app is commonly used by organizations that create line of business (LOB) desktop apps. For more information, see [WPF application development](/dotnet/desktop/wpf/app-development).

- **Windows Forms (WinForm)**: Using .NET, you can create a Windows Forms desktop app that runs on the device, and doesn't require a web browser or internet access. Just like Win32 apps, WinForm apps can access the local hardware and file system of the computer where the app is running. For more information, see [Desktop Guide (Windows Forms .NET)](/dotnet/desktop/winforms/overview).

### Windows apps

> [!TIP]
> Starting with Windows 10, you can use the **Windows UI Library (WinUI 3)** to create .NET, Win32 desktop, and UWP apps. This library includes native Windows UI controls and other user interface elements familiar to Windows users. For more information, see [Windows UI Library (WinUI)](/windows/apps/winui/).

- **Apps**: All apps installed in the protected directory `C:\Program Files\WindowsApps`. There are two classes of these apps:

  - **Installed**: Installed as part of the OS.

  - **Provisioned**: Installed the first time you sign in with a new user account.

    > [!TIP]
    > To get a list of all provisioned apps, use Windows PowerShell:
    >
    > ```powershell
    > Get-AppxProvisionedPackage -Online | Format-Table DisplayName, PackageName
    > ```
    >
    > The output lists all the provisioned apps, and their package names. For more information, see [Get-AppxProvisionedPackage](/powershell/module/dism/get-appxprovisionedpackage).

- **Universal Windows Platform (UWP) apps**: These apps run and can be installed on many Windows platforms, including tablets, Microsoft HoloLens, Xbox, and more. All UWP apps are Windows apps. Not all Windows apps are UWP apps.

    For more information, see [What's a Universal Windows Platform (UWP) app?](/windows/uwp/get-started/universal-application-platform-guide).

- **Win32 apps**: These apps are traditional Windows apps that run on the device, and are often called desktop apps. They require direct access to Windows and the device hardware, and typically don't require a web browser. These apps run in 32-bit mode on 64-bit devices, and don't depend on a managed runtime environment, like .NET.

    For more information, see [Get started developing apps for Windows desktop](/windows/apps/get-started) and [Top 11 things you can do to make your app great on Windows 11](/windows/apps/get-started/make-apps-great-for-windows).

- **System apps**: Apps installed in the system root directory `C:\Windows\`. These apps are part of the Windows OS.

    > [!TIP]
    > To get a list of all the system apps, use Windows PowerShell:
    >
    > ```powershell
    > `Get-AppxPackage -PackageTypeFilter Main | ? { $_.SignatureKind -eq "System" } | Sort Name | Format-Table Name, InstallLocation
    > ```
    >
    > The output lists all the system apps, and their installation location. For more information, see [Get-AppxPackage](/powershell/module/appx/get-appxpackage).

### Web apps

Web apps and progressive web apps (PWA) run on a server, and don't run on the end user device. To use these apps, users must use a web browser and have network access. **Progressive web apps** are designed to work for all users, work with any browser, and work on any platform.

Web apps are typically created in Visual Studio, and can be created with different languages. For more information, see [Create a web app](/visualstudio/get-started/csharp/tutorial-aspnet-core). When the app is created and ready to be used, you deploy the web app to a web server. Using Azure, you can host your web apps in the cloud, instead of on-premises. For more information, see [App Service overview](/azure/app-service/overview).

When you use an MDM provider like Microsoft Intune, you can create shortcuts to your web apps and progressive web apps on devices. For more information, see [Add web apps to Microsoft Intune](/mem/intune/apps/web-app).

## Android&trade;️ apps

Starting with Windows 11, you can install Android&trade;️ apps. This feature uses the Windows Subsystem for Android, and allows users to interact with mobile apps just like other apps.

For more information, see the following articles:

- [Apps from the Amazon Appstore](https://support.microsoft.com/windows/apps-from-the-amazon-appstore-abed2335-81bf-490a-92e5-fe01b66e5c48)

- [Windows Subsystem for Android developer information](/windows/android/wsa)

## Add or deploy apps to devices

When your apps are ready, you can add or deploy these apps to your Windows devices. This section lists some common options.

### Manually install

On your devices, users can install apps from the Microsoft Store, from the internet, and from an organization shared drive. These apps, and more, are listed in **Settings** > **Apps** > **Apps and Features**.

If you want to prevent users from downloading apps on organization owned devices, use an MDM provider, like Microsoft Intune. For example, you can create a policy that allows or prevents users from sideloading apps, only allow the private store, and more. For more information on the features you can restrict, see [Windows client device settings to allow or restrict features using Intune](/mem/intune/configuration/device-restrictions-windows-10).

For an overview of the different types of device policies you can create, see [Apply features and settings on your devices using device profiles in Microsoft Intune](/mem/intune/configuration/device-profiles).

### Management service

Use an MDM provider like Microsoft Intune, or an on-premises solution like Configuration Manager. For example, you can create app policies that deploy Microsoft 365 apps, deploy Win32 apps, create shortcuts to web apps, or add Store apps.

For more information, see:

- [Add apps to Microsoft Intune](/mem/intune/apps/apps-add)
- [Application management in Configuration Manager](/mem/configmgr/apps/understand/introduction-to-application-management)

### Microsoft Store

When you use the Microsoft Store app, Windows users can download apps from the public store. They can also download apps provided by your organization, which is called the *private store*. If your organization creates its own apps, you can use [Windows Package Manager](/windows/package-manager) to add apps to the private store.

> [!NOTE]
> The Microsoft Store for Business and Microsoft Store for Education are retired. For more information, see [Microsoft Store for Business and Education retiring March 31, 2023](/lifecycle/announcements/microsoft-store-for-business-education-retiring). There will be no support for Microsoft Store for Business and Education for Windows 11.

To help manage the Microsoft Store on your devices, you can use policies:

- On premises, you can use administrative templates in group policy to control access to the Microsoft Store app:
  - `User Configuration\Administrative Templates\Windows Components\Store`
  - `Computer Configuration\Administrative Templates\Windows Components\Store`

- Using Microsoft Intune, you can use [administrative templates](/mem/intune/configuration/administrative-templates-windows) or the [Settings Catalog](/mem/intune/configuration/settings-catalog) to control access to the Microsoft Store app.

### MSIX for desktop apps

MSIX packages your UWP, Win32, WPF, and WinForm desktop application files. MSIX reliably installs apps, helps optimize disk storage space, and reduces duplicate files. If your organization typically uses `.EXE` or `.MSI` files to install desktop apps, then you should look into MSIX.

To deploy MSIX packages and their apps, you can:

- Use a management service, like Microsoft Intune and Configuration Manager.
- Use an App Installer. User users double-click an installer file, or select a link on a web page.

For more information, see the following articles:

- [What is MSIX?](/windows/msix/overview)
- [MSIX app distribution for enterprises](/windows/msix/desktop/managing-your-msix-deployment-enterprise)

### Windows Package Manager

Windows Package Manager is a command line tool commonly used by developers to install Windows apps. Using the command line, you can get apps from services like the Microsoft Store or GitHub, and install these apps on Windows devices. It's helpful if you want to bypass user interfaces for getting apps from organizations and from developers.

If your organization uses `.EXE`, `.MSIX`, or `.MSI` files, then Windows Package Manager might be the right deployment option.

For more information, see [Windows Package Manager](/windows/package-manager).

### Azure Virtual desktop with MSIX app attach

With Azure virtual desktop, you can virtualize the Windows client OS desktop, and use virtual apps on this desktop. With MSIX app attach, you dynamically deliver MSIX packaged apps to users and user groups.

The benefit is to use the cloud to deliver virtual apps in real time, and as-needed. Users use the apps as if they're installed locally.

If you currently use App-V, and want to reduce your on-premises footprint, then **Azure Virtual desktop with MSIX app attach** might be the right deployment for your organization.

For more information, see the following articles:

- [What is Azure Virtual Desktop?](/azure/virtual-desktop/overview)
- [Set up MSIX app attach with the Azure portal](/azure/virtual-desktop/app-attach-azure-portal)

### Application Virtualization (App-V)

App-V allows Win32 apps to be used as virtual apps.

> [!NOTE]
> [!INCLUDE [Application Virtualization will be end of life in April 2026](./includes/app-v-end-life-statement.md)]

On an on-premises server, you install and configure the App-V server components, and then install your Win32 apps. On Windows Enterprise client devices, you use the App-V client components to run the virtualized apps. They allow users to open the virtual apps using the icons and file names they're familiar with. Users use the apps as if they're installed locally.

The benefit is to deliver virtual apps in real time, and as-needed. For more information, see [Application Virtualization (App-V) for Windows overview](/microsoft-desktop-optimization-pack/app-v/appv-for-windows).

## Manage apps

To help manage your devices, and help manage apps on your devices, use a management service like Microsoft Intune and Configuration Manager. For more information, see the following articles:

- [Overview of endpoint management](/mem/endpoint-manager-overview)
- [Manage your apps and app data in Microsoft Intune](/mem/intune/fundamentals/manage-apps)
- [Introduction to application management in Configuration Manager](/mem/configmgr/apps/understand/introduction-to-application-management)

## Application compatibility

Microsoft is committed to making sure your business-critical apps work on the latest versions of Windows. For more information, see the following articles:

- [Compatibility for Windows 11](/windows/compatibility/windows-11/)
- [FastTrack App Assure program](/windows/compatibility/app-assure)
