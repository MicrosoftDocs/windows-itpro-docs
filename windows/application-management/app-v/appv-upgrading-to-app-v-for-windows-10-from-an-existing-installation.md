---
title: Upgrading to App-V for Windows 10 from an existing installation (Windows 10)
description: Upgrading to App-V for Windows 10 from an existing installation
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: lomayor
---

# Upgrading to App-V for Windows 10 from an existing installation

**Applies to**
-   Windows 10, version 1607

If you’re already using App-V and you’re planning to upgrade user devices to Windows 10, you need to make only the following few adjustments to your existing environment to start using App-V for Windows 10. 

1. [Upgrade user devices to Windows 10](#upgrade-user-devices-to-windows-10). Performing an in-place upgrade automatically installs the App-V client and migrates users’ App-V applications and settings.

2. [Verify that App-V applications and settings were migrated correctly](#verify-that-app-v-applications-and-settings-were-migrated-correctly).

3. [Enable the in-box App-V client](#enable-the-in-box-app-v-client).

4. [Configure the in-box App-V client to point to previously installed App-V server components](#configure-the-in-box-app-v-client-to-point-to-previously-installed-app-v-server-components).

5. [Verify that the in-box App-V client can receive and launch .appv packages](#verify-that-the-in-box-app-v-client-can-receive-and-launch-appv-packages).

These steps are explained in more detail below.

## Upgrade user devices to Windows 10

Performing an in-place upgrade automatically installs the App-V client and migrates users’ App-V applications and settings. See the [Windows 10 and Windows 10 Mobile document set](https://technet.microsoft.com/itpro/windows/index) for information about upgrading user devices to Windows 10. 

## Verify that App-V applications and settings were migrated correctly

After upgrading a user device to Windows 10, it’s important to verify that App-V applications and settings were migrated correctly during the upgrade. 

To verify that the user’s App-V application packages were migrated correctly, type `Get-AppvClientPackage` in Windows PowerShell.

To verify that the user’s App-V settings were migrated correctly, type `Get-AppvClientConfiguration` in Windows PowerShell.

## Enable the in-box App-V client

With Windows 10, the App-V client is installed automatically. You need to enable the client to allow user devices to access and run virtual applications. You can enable the client with the Group Policy editor or with Windows PowerShell. 

**To enable the App-V client with Group Policy**

1. Open the device’s **Group Policy Editor**.

2. Navigate to **Computer Configuration > Administrative Templates > System > App-V**. 

3. Run **Enables App-V Client** and then select **Enabled** on the screen that appears.

4. Restart the device.

**To enable the App-V client with Windows PowerShell**

1. Open Windows PowerShell.

2. Type `Enable-Appv` and press enter.

3. Restart the device.

4. To verify that the App-V client is enabled on the device, enter `AppvClientEnabled` or `Get-AppvStatus` in Windows PowerShell.

## Configure the in-box App-V client to point to previously installed App-V server components

Once you’ve enabled the in-box App-V client, you need to configure it to point to your existing App-V server components. You can configure the App-V client with Windows PowerShell cmdlets or with the device’s local Group Policy editor.

**To modify client settings to point to an existing App-V publishing server with Windows PowerShell**

Type the following cmdlet in a Windows PowerShell window: 

`Add-AppvPublishingServer -Name AppVServer -URL https:// appvserver:2222` 

**To modify client settings to point to an existing App-V publishing server with Group Policy** 

1. Open the device’s **Local Group Policy Editor**.

2. Navigate to **Computer Configuration > Administrative Templates > System > App-V > Publishing**.  

3. Enter your existing App-V publishing server’s details in **Options** and then click or press **Apply**.

## Verify that the in-box App-V client can receive and launch .appv packages

1. Add and publish a package using the following Windows PowerShell cmdlets: 

    `Add-AppvClientPackage \\path\to\appv\package.appv | Publish-AppvClientPackage` 

2. Launch the published package. 

3. Unpublish an existing package use the following cmdlet: 

    `Unpublish-AppvClientPackage "ContosoApplication"`



<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).
