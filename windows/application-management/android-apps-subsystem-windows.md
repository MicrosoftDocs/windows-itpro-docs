---
title: Use Android apps and the Windows Subsystem for Android on Windows 11 devices
description: Learn more information about the Windows Subsystem for Android, including prerequisites on Windows 11 devices. Get more information administrators want to know about downloading, installing, and using Android apps. Also see what gets installed with the Windows Subsystem for Android.
ms.reviewer: mousma
manager: dougeby
ms.audience: itpro
author: MandiOhlinger
ms.author: mandia
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
audience: itpro
ms.topic: article
ms.custom: 
---

# Android apps on Windows 11

**Applies to**:

- Windows 11

On Windows 11 devices, users can open the Microsoft Store app, and install and use Android apps. This feature is called the **Windows Subsystem for Android**. After the Android apps are installed, they're shown on the Start menu and in the All Apps list, just like Windows apps.

The Windows Subsystem for Android includes some apps and a service that are installed on the Windows device. The subsystem connects to the Amazon Appstore for Android using the user's Amazon account. When they sign in, users can search, download, install, and use Android apps.

??Why would someone want Android apps on Windows devices??

If your organization creates Android apps, then the app developers can develop and test their Android apps on a Windows device. They can also optimize the Android apps for Windows devices. For more information, see [Windows Subsystem for Android developer information](/windows/android/wsa).

This article describes the Windows Subsystem for Android, lists any prerequisites, and includes information admins want to know.

For more specific end-user information, see [Windows Subsystem for Android consumer information](https://support.microsoft.com/windows/abed2335-81bf-490a-92e5-fe01b66e5c48).

## Before you begin

- To use the Windows Subsystem for Android, the following features should be enabled. The  Windows Subsystem for Android installation checks for these prerequisites:

  - The device should be VM-capable.
  - The device should have virtualization enabled in the BIOS.  
  - The Virtual Machine Platform Windows feature should be installed: **Turn Windows Features on or off** > **Virtual Machine Platform**
  - The device must have at least 8 GB available.

- S-mode can't be enabled. For more information, see [Switch to Windows Pro or Enterprise from S mode](/windows/deployment/windows-10-pro-in-s-mode) and [Switching out of S mode in Windows](/windows/switching-out-of-s-mode-in-windows-4f56d9be-99ec-6983-119f-031bfb28a307#WindowsVersion=Windows_11).
- To download and install Android apps, users need to sign in with their Amazon account.

- What is "10X v1 does not support Centennial apps at all."??
- Mention sideloading not being supported??

## Install the Windows Subsystem for Android

1. Open the Microsoft Store app. There are two options to install the Windows Subsystem for Android:

    - Search for and install the **Amazon Appstore** app. This app installs the Windows Subsystem for Android.
    - Search for and install any Amazon Appstore app. When any Amazon Appstore app is installed the first time, the Windows Subsystem for Android is automatically installed.

    When the Windows Subsystem for Android installs, it also checks for the prerequisites. If a prerequisite isn't met, such as virtualization not being enabled in the BIOS, then the install tries to enable these features. So, it's normal if the installation requires a reboot.

2. Once installed, the Amazon Appstore app is shown on the Start menu, and in the All Apps list.
3. Open the Amazon Appstore app. Users sign in with their Amazon account, and can install & use Android apps on their Windows device. Typically, users only need to sign in the first time.

After the Android apps are installed, users can:

- Pin and unpin the apps to the taskbar and Start menu.
- Snap the apps and use the snaps in a snap group.
- Copy & paste text, files, and images between Android and Windows apps.

## What's in the installation

The Windows Subsystem for Android is a [MSIX package](/windows/msix/overview), and includes the following items:

- **A virtual machine**: This VM hosts the Windows Subsystem for Android, and runs the apps. Users can't tell they're using a VM. When the Windows Subsystem for Android installs, it starts the VM, and connects the Amazon Appstore to the Windows device. If the VM stops, then the first Android app the user opens starts the VM. This VM is installed per user.
- **Amazon Appstore App**: This app is the Windows Subsystem for Android. ??Not shown in Apps List.?? Users can see this app in **Settings** > **Apps** > **Apps & features**. They can also uninstall it.
- **Amazon Appstore App settings**: This app includes settings that users can change. This app isn't shown in the All Apps list, and isn't shown in **Settings** > **Apps** > **Apps & features**. It can't be uninstalled separately.
- **A Windows service** ??Need the service name**: This service ??does something??

## Update or repair the subsystem

The Windows Subsystem for Android is an app in the Microsoft Store. Users can update or repair the apps just like any other app in the Microsoft Store. So, users can see available updates, and search for updates at any time.

The **Amazon Appstore App** is listed in **Settings** > **Apps** > **Apps & features**. They can use the Repair and Uninstall features, just like any other app. When users select **Repair**, they also get the latest version of the app.

### Repair prerequisites

If the prerequisites need repaired, users can:

1. Open the Microsoft Store app.
2. Search for and select the Amazon Appstore > **Install**.

    The installation automatically checks for the prerequisites. Users can choose to reinstall the app, which tries enabling any missing prerequisites.

## Block Android apps

If you want to prevent users from installing Android apps, you have the following options:

- **Option 1: Use Windows Defender Application Control (WDAC) PowerShell cmdlets**. For more information, see [Manage Packaged Apps with Windows Defender Application Control](/windows/security/threat-protection/windows-defender-application-control/manage-packaged-apps-with-windows-defender-application-control).

- **Option 2: Block the Microsoft Store app**. This option uses group policy or an MDM provider to block access to the Microsoft Store app. It prevents users from using the entire Microsoft Store app, not just Android apps.

  - **Group policy**:

    - `Computer configuration\Administrative templates\Windows Components\Store`
    - `User configuration\Administrative templates\Windows Components\Store`

  - **Microsoft Endpoint Manager, which is an MDM provider**: Use [Administrative Templates](/mem/intune/configuration/administrative-templates-windows) or the [Settings Catalog](/mem/intune/configuration/settings-catalog) to turn off the Microsoft Store app.

  For more possible options, see [Configure access to Microsoft Store](/windows/configuration/stop-employees-from-using-microsoft-store).

## Uninstall the subsystem

Users can uninstall Android apps the same way as other Microsoft Store apps:

- Right-click the **Amazon Appstore** app icon > **Uninstall**.
- Go to **Settings** > **Apps** > **Apps & features**. Select the **Amazon Appstore** app > **Uninstall**.

When the **Amazon Appstore** app is uninstalled, it removes the entire Windows Subsystem for Android, including the VM and any installed Android apps.

## Next steps

- [Windows Subsystem for Android consumer information](https://support.microsoft.com/windows/abed2335-81bf-490a-92e5-fe01b66e5c48)
- [Windows Subsystem for Android developer information](/windows/android/wsa)
