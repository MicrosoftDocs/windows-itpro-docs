---
title: Download the latest firmware and drivers for Surface devices (Surface)
description: This article provides a list of the available downloads for Surface devices and links to download the drivers and firmware for your device.
ms.assetid: 7662BF68-8BF7-43F7-81F5-3580A770294A
keywords: update Surface, newest, latest, download, firmware, driver, tablet, hardware, device
ms.localizationpriority: medium
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: brecords
ms.date: 11/15/2018
ms.author: jdecker
ms.topic: article
---

# Deploying the latest firmware and drivers for Surface devices
Although Surface devices are typically automatically updated with the latest device drivers and firmware via Windows Update, sometimes it's necessary to download and install updates manually, such as during a Windows deployment. If you need to install drivers and firmware separately from Windows Update, you can find the requisite files on the Microsoft Download Center. Installation files for administrative tools, drivers for accessories, and updates for Windows are also available for some devices.

## Deploying MSI files
Driver and firmware updates for Surface devices containing all required cumulative updates are available as separate MSI files packaged for specific versions of Windows 10. For example, for Surface Pro 6, there are separate MSI files for Windows 10 versions 16299, 17134, and 17763.
When deploying updates to Surface devices in your organization, you need to first determine the appropriate .MSI file for the Windows version running on your target devices.

### Naming convention for Surface MSI files
Each .MSI file is named in accordance with a formula that begins with the product and Windows release  information, followed by the Windows OS floor number and version number, and ending with the revision of version number:

#### Example:
SurfacePro6_Win10_16299_1900307_0.msi :

| Product     | Windows release | OS floor | Version                                                                                     | Revision of version |
| ----------- | --------------- | -------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| SurfacePro6 | Win10           | 16299    | 1900307                                                                                                                                                                                                        | 0                                                                                                       |
|             |                 |          | Indicates key date and sequence information                                                                                                                                                                    | Indicates release history of the MSI file                                                               |
|             |                 |          | **19:** Signifies the year (2019)<br>**003**: Signifies that it’s the third release of 2019<br>**07**: Signifies the product version number. (Surface Pro 6 is officially the seventh version of Surface Pro.) | **0:** Signifies it's the first release of version 1900307 and has not been re-released for any reason. |

Look to the **VERSION** number to determine the latest files that contain the most recent security updates.  For example, you might need to install the newest file from the following list:


- SurfacePro6_Win10_16299_1900307_0.msi
- SurfacePro6_Win10_17134_1808507_3.msi
- SurfacePro6_Win10_17763_1808707_3.msi

The first file —  SurfacePro6_Win10_16299_1900307_0.msi  —  is the newest because its VERSION field has the newest build in 2019; the other files are from 2018.

### Downloading MSI files
To download MSI files, refer to the following Microsoft Support page:
 
- [Download drivers and firmware for Surface](https://support.microsoft.com/en-us/help/4023482/surface-download-drivers-and-firmware-for-surface)

 
The following MSI files are available:

- Surface Laptop 2
- Surface Pro 6
- Surface Go
- Surface Go with LTE Advanced
- Surface Book 2
- Surface Laptop
- Surface Pro
- Surface Pro with LTE Advanced
- Surface Pro 6
- Surface Studio
- Surface Studio 2
- Surface Book
- Surface Pro 4
- Surface Pro 3
- Surface 3
- Surface 3 LTE
- Surface Pro 2

[!NOTE]
There are no downloadable firmware or driver updates available for Surface devices with Windows RT, including Surface RT and Surface 2. Updates can only be applied using Windows Update.

For more information about deploying Surface drivers and firmware, refer to:

- [Manage Surface driver and firmware updates](https://docs.microsoft.com/en-us/surface/manage-surface-pro-3-firmware-updates).

- [Microsoft Surface support for business](https://www.microsoft.com/surface/support/business).


 





