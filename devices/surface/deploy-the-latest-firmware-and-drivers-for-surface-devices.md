---
title: Download the latest firmware and drivers for Surface devices (Surface)
description: This article provides a list of the available downloads for Surface devices and links to download the drivers and firmware for your device.
ms.assetid: 7662BF68-8BF7-43F7-81F5-3580A770294A
ms.reviewer: 
manager: dansimp
keywords: update Surface, newest, latest, download, firmware, driver, tablet, hardware, device
ms.localizationpriority: medium
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.date: 11/15/2018
ms.author: dansimp
ms.topic: article
---

# Deploying the latest firmware and drivers for Surface devices
Although Surface devices are typically automatically updated with the latest device drivers and firmware via Windows Update, sometimes it's necessary to download and install updates manually, such as during a Windows deployment. 

## Downloading MSI files
To download MSI files, refer to the following Microsoft Support page:
 
- [Download drivers and firmware for Surface](https://support.microsoft.com/help/4023482/surface-download-drivers-and-firmware-for-surface)<br>
Installation files for administrative tools, drivers for accessories, and updates for Windows are also available for some devices.

## Deploying MSI files
Driver and firmware updates for Surface devices containing all required cumulative updates are packaged in separate MSI files for specific versions of Windows 10. 
In the name of each of these files you will find a Windows build number, this number indicates the minimum supported build required to install the drivers and firmware contained within. Refer to [Windows 10 release information](https://docs.microsoft.com/windows/windows-10/release-information) for a list of the build numbers for each version. For example, to install the drivers contained in SurfacePro6_Win10_16299_1900307_0.msi file you must have Windows 10 Fall Creators Update version 1709, or newer installed on your Surface Pro 6.


### Surface MSI naming convention
Each .MSI file is named in accordance with a formula that begins with the product and Windows release information, followed by the Windows build  number and version number, and ending with the revision of version number.  SurfacePro6_Win10_16299_1900307_0.msi is classified as follows:

**Example:**
SurfacePro6_Win10_16299_1900307_0.msi :

| Product     | Windows release | Build | Version |  Revision of version |
| --- | --- | --- | --- | --- |
| SurfacePro6 | Win10  | 16299  | 1900307 | 0  |
|       |      |       | Indicates key date and sequence information  | Indicates release history of the MSI file   |
|      |        |     | **19:** Signifies the year (2019)<br>**003**: Signifies that it’s the third release of 2019<br>**07**: Signifies the product version number. (Surface Pro 6 is officially the seventh version of Surface Pro.) | **0:** Signifies it's the first release of version 1900307 and has not been re-released for any reason. |

Look to the **version** number to determine the latest files that contain the most recent security updates.  For example, you might need to install the newest file from the following list:


- SurfacePro6_Win10_16299_1900307_0.msi
- SurfacePro6_Win10_17134_1808507_3.msi
- SurfacePro6_Win10_17763_1808707_3.msi

The first file —  SurfacePro6_Win10_16299_1900307_0.msi  —  is the newest because its VERSION field has the newest build in 2019; the other files are from 2018.

## Supported devices
Downloadable MSI files are available for Surface devices from Surface Pro 2 and later. 


[!NOTE]
There are no downloadable firmware or driver updates available for Surface devices with Windows RT, including Surface RT and Surface 2. Updates can only be applied using Windows Update.

For more information about deploying Surface drivers and firmware, refer to:

- [Manage Surface driver and firmware updates](https://docs.microsoft.com/surface/manage-surface-pro-3-firmware-updates).

- [Microsoft Surface support for business](https://www.microsoft.com/surface/support/business).


 





