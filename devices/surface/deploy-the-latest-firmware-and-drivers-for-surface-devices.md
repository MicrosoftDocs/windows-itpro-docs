---
title: Deploy the latest firmware and drivers for Surface devices (Surface)
description: This article provides a list of the available downloads for Surface devices and links to download the drivers and firmware for your device.
ms.assetid: 7662BF68-8BF7-43F7-81F5-3580A770294A
ms.reviewer: dansimp
manager: kaushika
keywords: update Surface, newest, latest, download, firmware, driver, tablet, hardware, device
ms.localizationpriority: medium
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: surface, devices
ms.sitesec: library
author: dansimp
ms.audience: itpro
ms.date: 11/25/2019
ms.author: dansimp
ms.topic: article
---

# Deploy the latest firmware and drivers for Surface devices

> [!IMPORTANT]  
> This article is intended for use by IT professionals and technical support agents, and applies only to Surface devices.  
>  
> **Home users:** If you're looking for help installing Surface updates or firmware on a home device, please see [Update Surface firmware and Windows 10](https://support.microsoft.com/help/4023505).

Under typical conditions, Windows Update automatically keeps Surface devices up-to-date with the latest device drivers and firmware. However, sometimes you may have to manually download and install updates manually. For example, you may have to manually manage updates while deploying a new version of Windows.

## Downloading MSI files

To download MSI files, see [Download drivers and firmware for Surface](https://support.microsoft.com/help/4023482/surface-download-drivers-and-firmware-for-surface). This article also includes installation files for administrative tools, drivers for accessories, and for some devices, updates for Windows.

## Deploying MSI files

Specific versions of Windows 10 have separate MSI files. Each MSI file contains all required cumulative driver and firmware updates for Surface devices.

The MSI file names contain useful information, including the minimum supported Windows build number required to install the drivers and firmware. For example, to install the drivers contained in SurfaceBook_Win10_17763_19.080.2031.0.msi on a Surface Book, the Surface Book must be running Windows 10 Fall Creators Update version 1709 or later.

For information about build numbers for each version, see [Windows 10 release information](https://docs.microsoft.com/windows/windows-10/release-information).

### Surface MSI naming convention

Beginning in August, 2019, MSI files use the following naming formula:

> *Product*\_*Windows release*\_*Windows build number*\_*Version number*\_*Revision of version number (typically zero)*.

**Example:**

Consider the following MSI file:

> SurfacePro6_Win10_18362_19.073.44195_0.msi

This file name provides the following information:

- **Product:** SurfacePro6
- **Windows release:** Win10
- **Build:** 18362
- **Version:** 19.073.44195 (date and time that the file was created)
  - **Year:** 19 (2019)
  - **Month and week:** 073 (third week of July)
  - **Minute of the month:** 44195
- **Revision of version:** 0 (first release of this version)

### Legacy Surface MSI naming convention

Legacy MSI files (files build before August, 2019) followed the same overall naming formula, but used a different method to derive the version number.  

**Example:**

Consider the following MSI file:

> SurfacePro6_Win10_16299_1900307_0.msi

This file name provides the following information:

- **Product:** SurfacePro6
- **Windows release:** Win10
- **Build:** 16299
- **Version:** 1900307
  - **Year:** 19 (2019)
  - **Number of release:** 003 (third release of the year)
  - **Product version number:** 07 (Surface Pro 6 is officially the seventh version of Surface Pro)
- **Revision of version:** 0 (first release of this version)

Use the **version** number to determine the latest files that contain the most recent security updates. For example, consider the following list:

- SurfacePro6_Win10_16299_1900307_0.msi
- SurfacePro6_Win10_17134_1808507_3.msi
- SurfacePro6_Win10_17763_1808707_3.msi

In this list, the newest file is the first file (SurfacePro6_Win10_16299_1900307_0.msi). Its **Version** field has the newest date (2019). The other files are from 2018.

## Supported devices

[Download drivers and firmware for Surface](https://support.microsoft.com/help/4023482/surface-download-drivers-and-firmware-for-surface) provides downloadable MSI files for devices that run Surface Pro 2 and later versions. This article will contain information about MSI files for the newest Surface devices such as Surface Pro 7, Surface Pro X, and Surface Laptop 3 as they are released.  

> [!NOTE]  
> There are no downloadable firmware or driver updates available for Surface devices that run Windows RT, including Surface RT and Surface 2. To update these devices, you have to use Windows Update.

For more information about deploying Surface drivers and firmware, see the following articles.

- [Manage Surface driver and firmware updates](https://docs.microsoft.com/surface/manage-surface-pro-3-firmware-updates)

- [Microsoft Surface support for business](https://www.microsoft.com/surface/support/business)
