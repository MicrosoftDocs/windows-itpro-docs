---
title: Sideload line of business apps
description: Learn how to sideload line-of-business (LOB) apps in Windows client operating systems. When you sideload an app, you deploy a signed app package to a device.
author: aczechowski
ms.author: aaroncz
manager: aaroncz
ms.date: 09/27/2024
ms.topic: how-to
ms.service: windows-client
ms.subservice: itpro-apps
ms.localizationpriority: medium
ms.collection: tier2
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Sideload line of business (LOB) apps

Sideloading apps is when you install apps that aren't from an official source, such as the Microsoft Store. Your organization can create its own apps, including line-of-business (LOB) apps. When you sideload an app, you deploy a signed app package to a device. You maintain the signing, hosting, and deployment of these apps.

To allow these apps to run on your Windows devices, you might have to enable sideloading.

> [!IMPORTANT]
> When you enable sideloading, you allow installing and running apps from outside the Microsoft Store. This action might increase security risks to the device and your data. Sideloaded apps need to be signed with a certificate that the device trusts.

## Prerequisites

- Windows devices with sideloading enabled. You can enable it with a group policy or a mobile device management (MDM) provider like Microsoft Intune. You can also use the **Settings** app to manually turn on sideloading.

- A trusted certificate that you assign to your app. Import the security certificate to the local device. This certificate allows the device to trust the app.

- An app package that you sign with the same certificate.

> [!TIP]
> Unlike in earlier versions, with Windows 10/11:
>
> - License keys aren't required.
> - Devices don't have to be joined to a domain.

## Step 1: Turn on sideloading

You can sideload apps on managed or unmanaged devices.

A *managed device* typically means your organization owns it and applies policies based on business requirements. You manage it with on-premises group policy or a mobile device management (MDM) provider like Microsoft Intune. On managed devices, you can create a policy that turns on sideloading, and then assign this policy to targeted devices.

An *unmanaged device* means your organization doesn't manage it. These devices are typically personal devices that users own. Users can manually turn on sideloading with the **Settings** app.

### User interface

If you're working on your own device, or if devices are unmanaged, use the Settings app. The experience differs between Windows 11 and Windows 10.

> [!NOTE]
> If sideloading is blocked by an organizational policy, then users can't even manually enable sideloading.

#### Windows 11 setting

1. Open the **Settings** app.

1. Go to **System** and select **For developers**.

1. Turn on the **Developer mode** setting.

1. Review the notice, and select **Yes** to continue.

> [!TIP]
> If you don't see the setting in this location on your version of Windows, use the *Find a setting* option. Search for *developer mode* to quickly jump to its location.

#### Windows 10 setting

1. Open the **Settings** app.

1. Go to **Update & Security** and select **For developers**.

1. Turn on the option to **Sideload apps**.

1. Review the notice, and select **Yes** to continue.

### Group policy

If you use group policy, use the following policies to enable or prevent sideloading apps:

Path: **Computer Configuration\Administrative Templates\Windows Components\App Package Deployment**

- **Allows development of Windows Store apps and installing them from an integrated development environment (IDE)**
- **Allow all trusted apps to install**

By default, the OS might set these policies to **Not configured**, which means app sideloading is turned off. If you set these policies to **Enabled**, then users can sideload apps.

### MDM

When you use Microsoft Intune, you can enable sideloading apps on managed devices. For more information, see the following articles:

- [Sign line-of-business apps so they can be deployed to Windows devices with Intune](/mem/intune/apps/app-sideload-windows)
- [App Store device settings to allow or restrict features using Intune](/mem/intune/configuration/device-restrictions-windows-10#app-store)

Other MDM servers can implement similar behaviors using the [ApplicationManagement](/windows/client-management/mdm/policy-csp-applicationmanagement) policy CSP.

## Step 2: Import the security certificate

This step installs the app certificate to the local device. Installing the certificate creates the trust between the app and the device.

1. Open the **Properties** for the app package.

    1. Go to the **Digital Signatures** tab.

    1. Select the certificate, and select **Details** to open the digital signature details window.

    1. Select **View Certificate** to open the certificate window.

    1. Select **Install Certificate** to launch the certificate import wizard.

1. On the **Certificate Import Wizard**, select **Local Machine**. This action might require an administrator to elevate.

1. Continue the process to import the certificate into the **Trusted Root Certification Authorities** store.

> [!NOTE]
> There are other methods to install and manage certificates on devices. For example, with group policy or a provisioning package.

## Step 3: Install the app

After you enable sideloading and import the certificate, there are multiple methods you can use to install the app on devices.

- Manually open the `.msix` or `.appx` package in Windows Explorer.

- Distribute an [MSIX app](/windows/msix/overview) over the network with a web-based app installer. For more information, see [Install Windows apps from a web page](/windows/msix/app-installer/installing-windows10-apps-web).

- Use the Windows PowerShell `Add-AppxPackage` cmdlet. For more information, see [Add-AppxPackage](/powershell/module/appx/add-appxpackage).

## Next steps

Learn about the [private app repository in Windows 11](private-app-repository-mdm-company-portal-windows-11.md) with the Company Portal and Microsoft Intune.

For more information on sideloading, see the following articles on Windows app development:

- [Enable your device for development](/windows/apps/get-started/enable-your-device-for-development)
- [Developer Mode features and debugging](/windows/apps/get-started/developer-mode-features-and-debugging)
