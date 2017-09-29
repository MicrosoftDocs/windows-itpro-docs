---
title: System requirements for Windows Defender Application Guard (Windows 10)
description: Learn about the system requirements for installing and running Windows Defender Application Guard.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: eross-msft
ms.author: lizross
ms.date: 08/11/2017
---

# System requirements for Windows Defender Application Guard

**Applies to:**
- Windows 10, Windows Insider Program (Enterprise edition, Build 16188 or later)

The threat landscape is continually evolving. While hackers are busy developing new techniques to breach enterprise networks by compromising workstations, phishing schemes remain one of the top ways to lure employees into social engineering attacks. Windows Defender Application Guard (Application Guard) is designed to help prevent old, and newly emerging attacks, to help keep employees productive.

## Hardware requirements
Your environment needs the following hardware to run Application Guard.

|Hardware|Description|
|--------|-----------|
|64-bit CPU|A 64-bit computer is required for hypervisor and virtualization-based security (VBS). For more info about Hyper-V, see [Hyper-V on Windows Server 2016](https://docs.microsoft.com/en-us/windows-server/virtualization/hyper-v/hyper-v-on-windows-server) or [Introduction to Hyper-V on Windows 10](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/about/). For more info about hypervisor, see [Hypervisor Specifications](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/reference/tlfs).|
|CPU virtualization extensions|Extended page tables, also called _Second Level Address Translation (SLAT)_<br><br>**-AND-**<br><br>One of the following virtualization extensions for VBS:<br><br>VT-x (Intel)<br><br>**-OR-**<br><br>AMD-V|
|Hardware memory|Microsoft recommends 8GB RAM for optimal performance|
|Hard disk|5 GB free space, solid state disk (SSD) recommended|
|Input/Output Memory Management Unit (IOMMU) support|Not required, but strongly recommended|

## Software requirements
Your environment needs the following hardware to run Application Guard.

|Software|Description|
|--------|-----------|
|Operating system|Windows 10, Windows Insider Program (Enterprise edition, Build 16188 or later)|
|Browser|Microsoft Edge and Internet Explorer|
|Management system|[Microsoft Intune](https://docs.microsoft.com/en-us/intune/)<br><br>**-OR-**<br><br>[System Center Configuration Manager](https://docs.microsoft.com/en-us/sccm/)<br><br>**-OR-**<br><br>[Group Policy](https://technet.microsoft.com/en-us/library/cc753298(v=ws.11).aspx)<br><br>**-OR-**<br><br>Your current company-wide 3rd party mobile device management (MDM) solution. For info about 3rd party MDM solutions, see the documentation that came with your product.|
