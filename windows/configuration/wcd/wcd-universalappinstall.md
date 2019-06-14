---
title: UniversalAppInstall (Windows 10)
description: This section describes the UniversalAppInstall settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# UniversalAppInstall (reference)


Use UniversalAppInstall settings to install Windows apps from the Microsoft Store or a hosted location. 

>[!NOTE]
>You can only use the Windows provisioning settings and provisioning packages for apps where you have the available installation files, namely with sideloaded apps that have an offline license. [Learn more about offline app distribution.](https://docs.microsoft.com/microsoft-store/distribute-offline-apps)

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [DeviceContextApp](#devicecontextapp) | X |  | X |  |   |
| [DeviceContextAppLicense](#devicecontextapplicense) | X |  | X |  |   |
| [StoreInstall](#storeinstall) | X | X | X |  | X  |
| [UserContextApp](#usercontextapp) | X | X | X |  | X  |
| [UserContextAppLicense](#usercontextapplicense) | X | X | X |  | X  |

## DeviceContextApp

Enter an app package family name to install an app for all users of the device. You can use the [Get-AppxPackage cmdlet](https://technet.microsoft.com/itpro/powershell/windows/appx/get-appxpackage) to get the package family name for an installed app.

>[!NOTE]
>For XAP files, enter the product ID.

For each app that you add to the package, configure the settings in the following table.

| Setting | Value | Description |
| --- | --- | --- |
| ApplicationFile | .appx or .appxbundle  | Set the value to the app file that you want to install on the device. In addition, you must also enable the [AllowAllTrustedApps setting](wcd-policies.md#applicationmanagement) and add a root certificate or license file.  |
| DependencyAppxFiles  | any required frameworks  | In Microsoft Store for Business, any dependencies for the app are listed in the **Required frameworks** section of the download page.   |
| DeploymentOptions | - None</br>-Force application shutdown: If this package, or any package that depends on this package, is currently in use, the processes associated with the package are shut down forcibly so that registration can continue</br>- Development mode: do not use</br>- Install all resources: When you set ths option, the app is instructed to skip resource applicability checks.</br>- Force target application shutdown: If this package is currently in use, the processes associated with the package are shut down forcibly so that registration can continue  |  Select a deployment option.  |
| LaunchAppAtLogin | - Do not launch app</br>- Launch app  | Set the value for app behavior when a user signs in.  |
| OptionalPackageFiles | additional files required by the package  | Browse to, select, and add the optional package files.  |

For more information on deployment options, see [DeploymentOptions Enum](https://docs.microsoft.com/uwp/api/windows.management.deployment.deploymentoptions).

## DeviceContextAppLicense

Use to specify the license file for the provisioned app. 

1. Specify a **LicenseProductId** for the app. You can find the license ID in the root header of the license file. Here is an example, `LicenseID="aaaaaaaa-dddd-8848-f8d0-7d6a93dfcccc"`. Enter it in the LicenseProductId field, and click **Add**.

2. Select the LicenseProductId in the Available Customizations pane, and then browse to and select the app license file.


## StoreInstall

Use to install an app from the Microsoft Store for Business.

1. Enter a package family name, and then click **Add**.
2. Configure the following required settings for the app package.

Setting | Description
--- | ---
Flags | Description not available at this time. 
ProductID | Enter the product ID. [Learn how to find the product ID.](https://docs.microsoft.com/microsoft-store/microsoft-store-for-business-education-powershell-module#view-items-in-products-and-services)
SkuID | Enter the SKU ID. [Learn how to find the SKU ID.](https://docs.microsoft.com/microsoft-store/microsoft-store-for-business-education-powershell-module#view-items-in-products-and-services)

## UserContextApp

Use to add a new user context app.

1. Specify a **PackageFamilyName** for the app, and then click **Add**.
2. Select the PackageFamilyName in the Available Customizations pane, and then configure the following settings.

Setting | Value | Description
--- | --- | ---
ApplicationFile | app file  | Browse to, select, and add the application file,
DependencyAppxFiles | additional files required by the app  | Browse to, select, and add dependency files.
DeploymentOptions | - None</br></br>- Force application shutdown</br></br>- Development mode</br></br>- Install all resources</br></br>- Force target application shutdown  | Select a deployment option.
LaunchAppAtLogin | - Do not launch app</br></br>- Launch app  | Select whether the app should be started when a user signs in.


## UserContextAppLicense

Use to specify the license file for the user context app. 

1. Specify a **LicenseProductId** for the app. You can find the license ID in the root header of the license file. Here is an example, `LicenseID="aaaaaaaa-dddd-8848-f8d0-7d6a93dfcccc"`. Enter it in the LicenseProductId field, and click **Add**.

2. Select the LicenseProductId in the Available Customizations pane, and then browse to and select the app license file.
