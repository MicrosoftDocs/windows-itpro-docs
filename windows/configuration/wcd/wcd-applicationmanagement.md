---
title: ApplicationManagement (Windows 10)
description: This section describes the ApplicationManagement settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 10/17/2017
---

# ApplicationManagement (Windows Configuration Designer reference)

Use these settings to manage app installation and management.

>[!NOTE]
>ApplicationManagement settings are not available in Windows 10, version 1709.

## Applies to

| Settings | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [AllowAllTrustedApps](#allowalltrustedapps) |  |  |  |  | X |
| [AllowAppStoreAutoUpdate](#allowappstoreautoupdate) |  |   |  |   |  X |
| [RestrictAppDataToSystemVolume](#restrictappdatatosystemvolume) |  |   |  |   |  X |
| [RestrictAppToSystemVolume](#restrictapptosystemvolume) |  |  |  |  | X |

## AllowAllTrustedApps

Specifies whether non-Microsoft Store apps are allowed.

| Value | Description |
| --- | --- |
| No | Only Microsoft Store apps are allowed  |
| Yes  | Non-Microsoft Store apps are allowed  |

## AllowAppStoreAutoUpdate

Specifies whether automatic update of apps from Microsoft Store are allowed

| Value | Description |
| --- | --- |
| Disallowed  | Automatic update of apps is not allowed  |
| Allowed | Automatic update of apps is allowed |


## RestrictAppDataToSystemVolume

Specifies whether application data is restricted to the system drive.

| Value | Description |
| --- | --- |
| 0  | Not restricted  |
| 1 | Restricted |


## RestrictAppToSystemVolume

Specifies whether the installation of applications is restricted to the system drive.

| Value | Description |
| --- | --- |
| 0  | Not restricted  |
| 1 | Restricted |

## Related topics

- [Policy configuration service provider (CSP): ApplicationManagement/AllowAllTrustedApps](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-allowalltrustedapps)
- [Policy CSP: ApplicationManagement/AllowAppStoreAutoUpdate](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-allowappstoreautoupdate)
- [Policy CSP: ApplicationManagement/RestrictAppDataToSystemVolume](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-restrictappdatatosystemvolume)
- [Policy CSP: ApplicationManagement/RestrictAppToSystemVolume](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider#applicationmanagement-restrictapptosystemvolume)