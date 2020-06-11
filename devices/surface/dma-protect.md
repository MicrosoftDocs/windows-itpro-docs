---
title: Surface DMA Protection
description: This article describes DMA protection on compatible Surface devices
ms.prod: w10
ms.mktglfcycl: manage
ms.localizationpriority: medium
ms.sitesec: library
author: coveminer
ms.author: greglin
ms.topic: article
ms.date: 6/10/2020
ms.reviewer: carlol
manager: laurawi
audience: itpro
---
# DMA Protection on Surface devices

Direct Memory Access (DMA) protection is designed to mitigate potential security vulnerabilities associated with using removable SSDs or external storage devices. Newer Surface devices come with DMA Protection enabled by default. These include Surface Pro 7, Surface Laptop 3, and Surface Pro X.  To check the presence of DMA protection feature on your device, open System Information (**Start** > **msinfo32.exe**), as shown in the figure below.

![System information showing DMA Protection enabled](images/systeminfodma.png)

If a Surface removable SSD is tampered with, the device will shutoff power. The resulting reboot causes UEFI to wipe memory, to erase any residual data.
