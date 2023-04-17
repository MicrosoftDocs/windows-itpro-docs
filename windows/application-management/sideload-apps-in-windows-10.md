---
title: Sideload LOB apps in Windows client OS | Microsoft Docs
description: Learn how to sideload line-of-business (LOB) apps in Windows client operating systems, including Windows 10/11. When you sideload an app, you deploy a signed app package to a device.
author: nicholasswhite
ms.author: nwhite
manager: aaroncz
ms.date: 12/07/2017
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-apps
ms.localizationpriority: medium
ms.collection: tier2
ms.reviewer:
---

# Sideload line of business (LOB) apps in Windows client devices

**Applies to**:

- Windows 10
- Windows 11

> [!NOTE]
> Starting with Windows 10 2004, sideloading is enabled by default. You can deploy a signed package onto a device without a special configuration.

Sideloading apps is when you install apps that aren't from an official source, such as the Microsoft store. Your organization may create its own apps, including line-of-business (LOB) apps. Many organizations create their own apps to solve problems unique to their business.

When you sideload an app, you deploy a signed app package to a device. You maintain the signing, hosting, and deployment of these apps. Sideloading was also available with Windows 8 and Windows 8.1

Starting with Windows 10, sideloading is different than earlier versions of Windows:

- You can unlock a device for sideloading using an enterprise policy, or through the **Settings** app.
- License keys aren't required.
- Devices don't have to be joined to a domain.

To allow these apps to run on your Windows devices, you might have to enable sideloading on your devices.

This article shows you how to:

- **Turn on sideloading**: You can deploy using Group Policy or a mobile device management (MDM) provider. Or, you can use the **Settings** app to turn on sideloading.
- **Install the app certificate**: Import the security certificate to the local device. This certificate tells the local device to trust the app.
- **Install the app**: Use Windows PowerShell to install the app package.

## Prerequisites

- Windows devices that are unlocked for sideloading (unlock policy enabled). Meaning, sideloading isn't blocked by a policy.
- A trusted certificate that's assigned to your app.
- An app package that's signed with your certificate.

## Step 1: Turn on sideloading

You can sideload apps on managed or unmanaged devices.

Managed devices are typically owned by your organization. They're managed by Group Policy (on-premises), or a Mobile Device Management (MDM) provider, such as Microsoft Intune (cloud). Bring your own devices (BYOD) and personal devices can also be managed by your organization. On managed devices, you can create a policy that turns on sideloading, and then deploy this policy to your Windows devices.

Unmanaged devices are devices that aren't managed by your organization. These devices are typically personal devices owned by users. Users can turn on sideloading using the Settings app.

> [!IMPORTANT]
> To install an app on Windows client, you can:
>
> - [Install Windows apps from a web page](/windows/msix/app-installer/installing-windows10-apps-web).
> - Users can double-click any `.msix` or `.appx` package.

### User interface

If you're working on your own device, or if devices are unmanaged, use the Settings app:

1. Open the **Settings** app > **Update & Security** > **For developers**.
2. Select **Sideload apps**.

For more information, see [Enable your device for development](/windows/apps/get-started/enable-your-device-for-development) and [Developer Mode features and debugging](/windows/apps/get-started/developer-mode-features-and-debugging).

### Group Policy

If you use Group Policy, use the `Computer Configuration\Administrative Templates\Windows Components\App Package Deployment` policies to enable or prevent sideloading apps:

- `Allows development of Windows Store apps and installing them from an integrated development environment (IDE)`
- `Allow all trusted apps to install`

By default, the OS might set these policies to **Not configured**, which means app sideloading is turned off. If you set these policies to **Enabled**, then users can sideload apps.

### MDM

Using Microsoft Intune, you can also enable sideloading apps on managed devices. For more information, see:

- [Sign line-of-business apps so they can be deployed to Windows devices with Intune](/mem/intune/apps/app-sideload-windows)
- [App Store device settings to allow or restrict features using Intune](/mem/intune/configuration/device-restrictions-windows-10#app-store)

## Step 2: Import the security certificate

This step installs the app certificate to the local device. Installing the certificate creates the trust between the app and the device.

1. Open the security certificate for the `.msix` package, and select **Install Certificate**.

2. On the **Certificate Import Wizard**, select **Local Machine**.

3. Import the certificate to the **Trusted Root Certification Authorities** folder.

    -OR-

    You can use a runtime provisioning package to import a security certificate. For information about applying a provisioning package, see runtime instructions on [Create a provisioning package](/windows/configuration/provisioning-packages/provisioning-create-package).

## Step 3: Install the app

From the folder with the `.msix` package, run the Windows PowerShell `Add-AppxPackage` command to install the `.msix` package.

For more information on this command, see [Add-AppxPackage](/powershell/module/appx/add-appxpackage).
