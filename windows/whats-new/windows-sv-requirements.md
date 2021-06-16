---
title: Windows Sun Valley requirements
description: Hardware requirements to deploy Windows Sun Valley
ms.reviewer: 
manager: laurawi
ms.audience: itpro
author: greg-lindsay
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: medium
audience: itpro
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Windows Sun Valley requirements

**Applies to**

-   Windows Sun Valley, version 21H2

This article lists the system requirements for Windows Sun Valley. Windows Sun Valley is also supported on a virtual machine (VM). 

## Hardware requirements

To install Windows Sun Valley, devices must meet the following specifications:
 
- Processor: 1 gigahertz (GHz) or faster processor or SoC; dual-core CPU or greater
  - Intel 8th generation, Intel Celeron N4000, Pentium N5000 
  - AMD Ryzen gen 2 (Zen+), AMD 3xxx
  - Qualcomm 7c, 8c, 8cx  

- RAM: 4 gigabyte (GB) or greater
- Hard disk space: 64GB, 64-bit architecture
- Graphics card: DirectX 12 or later with WDDM 2.x driver
- Security: Trusted Platform Module (TPM) 2.0 chip, UEFI support, Secure Boot capable
- Display: 9" monitor size or greater with HD (1366 x 768) resolution or greater
- Internet connection: Internet connectivity is necessary to perform updates and to download and take advantage of some features. It is required for the Home edition of Windows Sun Valley.

For additional guidance, see [Determine eligibility](windows-sv-plan.md#determine-eligibility) NEED LINK.

## Operating system requirements

For the best Windows Sun Valley upgrade experience, eligible devices should be running Windows 10, version 20H1 or later.

> [!NOTE]
> S mode is not supported on Windows Sun Valley.
> If you are running Windows in S mode, you will need to first [switch out of S mode](/windows/deployment/windows-10-pro-in-s-mode) prior to upgrading. Switching a device out of Windows 10 in S mode also requires internet connectivity.

## Next steps

[Plan to deploy Windows Sun Valley](windows-sv-plan.md)<br>
[Prepare for Windows Sun Valley](windows-sv-prepare.md)

## See also

[Windows Sun Valley overview](windows-sv.md)

