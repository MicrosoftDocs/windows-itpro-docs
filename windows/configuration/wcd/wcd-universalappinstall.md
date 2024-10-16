---
title: UniversalAppInstall
description: This section describes the UniversalAppInstall settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.topic: reference
ms.date: 01/25/2024
---

# UniversalAppInstall (reference)

Use UniversalAppInstall settings to install Windows apps from the Microsoft Store or a hosted location.

>[!NOTE]
>You can only use the Windows provisioning settings and provisioning packages for apps where you have the available installation files, namely with sideloaded apps that have an offline license. [Learn more about offline app distribution.](/microsoft-store/distribute-offline-apps)

## Applies to

| Setting | Windows client | Surface Hub | HoloLens | IoT Core |
|--|:-:|:-:|:-:|:-:|
| [DeviceContextApp](#devicecontextapp) | ✅ | ✅ |  |  |
| [DeviceContextAppLicense](#devicecontextapplicense) | ✅ | ✅ |  |  |
| [StoreInstall](#storeinstall) | ✅ | ✅ |  | ✅ |
| [UserContextApp](#usercontextapp) | ✅ | ✅ |  | ✅ |
| [UserContextAppLicense](#usercontextapplicense) | ✅ | ✅ |  | ✅ |

## DeviceContextApp

Enter an app package family name to install an app for all device users. You can use the [Get-AppxPackage cmdlet](/powershell/module/appx/get-appxpackage) to get the package family name for an installed app.

>[!NOTE]
>For XAP files, enter the product ID.

For each app that you add to the package, configure the settings in the following table.

| Setting | Value | Description |
|--|--|--|
| ApplicationFile | `.appx` or `.appxbundle` | Set the value to the app file that you want to install on the device. Also enable the [AllowAllTrustedApps setting](wcd-policies.md#applicationmanagement) and add a root certificate or license file. |
| DependencyAppxFiles | Any required frameworks | Typically, dependencies for the app are listed undere **Required frameworks**. |
| DeploymentOptions | - None</br>-Force application shutdown: If this package, or any package that depends on this package is currently in use, then the processes associated with the package are forcibly shut down. The registration can continue. </br>- Development mode: Don't use. </br>- Install all resources: When you set this option, the app is instructed to skip resource applicability checks.</br>- Force target application shutdown: If this package is currently in use, the processes associated with the package are shut down forcibly so that registration can continue | Select a deployment option. |
| LaunchAppAtLogin | - Don't launch app</br>- Launch app | Set the value for app behavior when a user signs in. |
| OptionalPackageFiles | Additional files required by the package | Browse to, select, and add the optional package files. |

For more information on deployment options, see [DeploymentOptions Enum](/uwp/api/windows.management.deployment.deploymentoptions).

## DeviceContextAppLicense

Use to specify the license file for the provisioned app.

1. Specify a **LicenseProductId** for the app. You can find the license ID in the root header of the license file. For example, enter `LicenseID="aaaaaaaa-dddd-8848-f8d0-7d6a93dfcccc"`. Enter it in the LicenseProductId field, and select **Add**.
1. Select the LicenseProductId in the Available Customizations pane, and then browse to and select the app license file.

## StoreInstall

Use to install an app from the Microsoft Store for Business.

1. Enter a package family name, and then select **Add**.
1. Configure the following required settings for the app package.

| Setting | Description |
|--|--|
| Flags | Description not available at this time. |
| ProductID | Enter the product ID. [Learn how to find the product ID.](/microsoft-store/microsoft-store-for-business-education-powershell-module#view-items-in-products-and-services) |
| SkuID | Enter the SKU ID. [Learn how to find the SKU ID.](/microsoft-store/microsoft-store-for-business-education-powershell-module#view-items-in-products-and-services) |

## UserContextApp

Use to add a new user context app.

1. Specify a **PackageFamilyName** for the app, and then select **Add**.
1. Select the PackageFamilyName in the Available Customizations pane, and then configure the following settings.

| Setting | Value | Description |
|--|--|--|
| ApplicationFile | App file | Browse to, select, and add the application file, |
| DependencyAppxFiles | Additional files required by the app | Browse to, select, and add dependency files. |
| DeploymentOptions | - None</br></br>- Force application shutdown</br></br>- Development mode</br></br>- Install all resources</br></br>- Force target application shutdown | Select a deployment option. |
| LaunchAppAtLogin | - Don't launch app</br></br>- Launch app | Select whether the app should be started when a user signs in. |

## UserContextAppLicense

Use to specify the license file for the user context app.

1. Specify a **LicenseProductId** for the app. You can find the license ID in the root header of the license file. For example, enter `LicenseID="aaaaaaaa-dddd-8848-f8d0-7d6a93dfcccc"`. Enter it in the LicenseProductId field, and select **Add**.
1. Select the LicenseProductId in the Available Customizations pane, and then browse to and select the app license file.
